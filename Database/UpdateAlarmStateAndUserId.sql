CREATE PROCEDURE AcknowledgeAlarm
    @AlarmId INT,
    @Name NVARCHAR(50)
AS
BEGIN
    DECLARE @UserId INT

    -- Get UserId from USERS table based on Name
    SELECT @UserId = UserId
    FROM USERS
    WHERE Name = @Name

    -- Update the ALARM table
    UPDATE ALARMS
    SET AlarmState = 'Acknowledged',
        AcknowledgeTime = CONVERT(varchar, GETDATE(), 120),
        UserId = @UserId
    WHERE AlarmId = @AlarmId
END
