CREATE VIEW GetActiveAlarms
AS
SELECT
    ALARMS.AlarmId,
    ALARMS.ActivationTime,
    ALARM_TYPES.AlarmType,
    ALARM_TYPES.Information,
    ALARMS.AcknowledgeTime,
    CASE WHEN ALARMS.UserId IS NULL THEN NULL ELSE [USERS].Name END AS Name,
    ALARM_PRIORITIES.Description

FROM 
    ALARMS

    INNER JOIN ALARM_TYPES ON ALARMS.AlarmTypeId = ALARM_TYPES.AlarmTypeId
    LEFT JOIN [USERS] ON ALARMS.UserId = [USERS].UserId
    INNER JOIN ALARM_PRIORITIES ON ALARM_TYPES.AlarmPriorityId = ALARM_PRIORITIES.AlarmPriorityId
	WHERE
    ALARMS.AlarmState = 'Active'
GO
