
CREATE TABLE ALARM_PRIORITIES
( 
	AlarmPriorityId      integer  IDENTITY  NOT NULL ,
	Description          varchar(20)  NULL ,
	Deviation            float  NULL ,
	PRIMARY KEY  CLUSTERED (AlarmPriorityId ASC)
)
go

CREATE TABLE ALARM_TYPES
( 
	AlarmTypeId          integer  IDENTITY  NOT NULL ,
	AlarmType            varchar(20)  NULL ,
	AlarmPriorityId      integer  NULL ,
	Information          varchar(100)  NULL ,
	PRIMARY KEY  CLUSTERED (AlarmTypeId ASC),
	 FOREIGN KEY (AlarmPriorityId) REFERENCES ALARM_PRIORITIES(AlarmPriorityId)
)
go

CREATE TABLE ROLES
( 
	RoleId               integer  IDENTITY  NOT NULL ,
	RoleName             varchar(20)  NULL ,
	PRIMARY KEY  CLUSTERED (RoleId ASC)
)
go

CREATE TABLE USERS
( 
	UserId               integer  IDENTITY  NOT NULL ,
	Name                 varchar(20)  NULL ,
	Username             varchar(20)  NULL ,
	Password             varchar(20)  NULL ,
	RoleId               integer  NULL ,
	PRIMARY KEY  CLUSTERED (UserId ASC),
	UNIQUE (Username  ASC),
	 FOREIGN KEY (RoleId) REFERENCES ROLES(RoleId)
)
go

CREATE TABLE PROCESS_VALUES
( 
	ProcessValueId       integer  IDENTITY  NOT NULL ,
	ProcessValue         float  NULL ,
	ProcessTimeStamp     datetime  NULL ,
	EnvironmentValue     float  NULL ,
	ControlValue         float  NULL ,
	Setpoint             float  NULL ,
	PRIMARY KEY  CLUSTERED (ProcessValueId ASC)
)
go

CREATE TABLE ALARMS
( 
	AlarmId              integer  IDENTITY  NOT NULL ,
	AlarmTypeId          integer  NULL ,
	ActivationTime       datetime  NULL ,
	AlarmState           varchar(20)  NULL ,
	AcknowledgeTime      datetime  NULL ,
	UserId               integer  NULL ,
	ProcessValueId       integer  NULL ,
	PRIMARY KEY  CLUSTERED (AlarmId ASC),
	 FOREIGN KEY (UserId) REFERENCES USERS(UserId),
	 FOREIGN KEY (ProcessValueId) REFERENCES PROCESS_VALUES(ProcessValueId),
	 FOREIGN KEY (AlarmTypeId) REFERENCES ALARM_TYPES(AlarmTypeId)
)
go
