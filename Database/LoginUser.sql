CREATE PROCEDURE LoginUser
    @Username VARCHAR(20),
    @Password VARCHAR(20)
AS
BEGIN
    SELECT USERS.UserId, USERS.Name, ROLES.RoleName
    FROM USERS
	INNER JOIN ROLES ON USERS.UserId = ROLES.RoleId
    WHERE USERS.Username = @Username AND USERS.Password = @Password;
END;