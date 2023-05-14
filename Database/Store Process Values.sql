CREATE PROCEDURE LogData
@ProcessValue FLOAT,
@TimeStamp DATETIME,
@EnvironmentValue FLOAT,
@ControlValue FLOAT,
@Setpoint FLOAT
AS

INSERT INTO PROCESS_VALUES (ProcessValue, ProcessTimeStamp,EnvironmentValue,ControlValue,Setpoint)
VALUES (@ProcessValue, @TimeStamp, @EnvironmentValue, @ControlValue, @Setpoint)

GO