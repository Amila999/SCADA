CREATE TRIGGER MakeAlarms ON PROCESS_VALUES
AFTER INSERT
AS

DECLARE
  @AlarmTypeId INT,
  @ActivationTime DATETIME,
  @AlarmState VARCHAR(20),
  @AcknowledgeTime DATETIME,
  @UserId INT,
  @ProcessValue FLOAT,
  @Setpoint FLOAT,
  @Difference FLOAT,
  @AlarmPriorityId INT,
  @ProcessValueId INT,
  @ControlValue FLOAT;

SET @ProcessValueId = (SELECT TOP 1 ProcessValueId FROM PROCESS_VALUES ORDER BY ProcessValueId DESC);
SET @ProcessValue = (SELECT TOP 1 ProcessValue FROM PROCESS_VALUES WHERE ProcessValueId = @ProcessValueId);
SET @ControlValue = (SELECT TOP 1 ControlValue FROM PROCESS_VALUES WHERE ProcessValueId = @ProcessValueId);
SET @Setpoint = (SELECT TOP 1 Setpoint FROM PROCESS_VALUES WHERE ProcessValueId = @ProcessValueId);

SET @Difference = (@ProcessValue - @Setpoint)/ @Setpoint;

set @AlarmPriorityId = (SELECT TOP 1 AlarmPriorityId FROM ALARM_PRIORITIES WHERE Deviation < ABS(@Difference) ORDER BY Deviation DESC);

PRINT @Difference
If @AlarmPriorityId is null
BEGIN
	print 'No alarm'
end

else
begin
	IF @Difference > 0
	BEGIN
		SELECT @AlarmTypeId = AlarmTypeId FROM ALARM_TYPES WHERE AlarmPriorityId = @AlarmPriorityId AND Information LIKE '%High%';
		SET @AlarmState = 'ACTIVE';
	END

	ELSE
	BEGIN
		SELECT @AlarmTypeId = AlarmTypeId FROM ALARM_TYPES WHERE AlarmPriorityId = @AlarmPriorityId AND Information LIKE '%Low%';
		SET @AlarmState = 'ACTIVE';
	END;

	INSERT INTO ALARMS (AlarmTypeId,ActivationTime,AlarmState,ProcessValueId)
	VALUES (@AlarmTypeId, CONVERT(varchar, GETDATE(),120), @AlarmState, @ProcessValueId)
end