CREATE TABLE `EMPLOYEE` (
	`EMPLOYEE_PK_ID`	VARCHAR(20)	NOT NULL,
	`DEPT_FK_ID`	VARCHAR(20)	NOT NULL,
	`MEMBER`	VARCHAR(20)	NULL
);

CREATE TABLE `EMPLOYEE_ATTENDANCE` (
	`WORK_ATT_PK_ID`	VARCHAR(20)	NOT NULL,
	`EMPLOYEE_FK_ID`	VARCHAR(20)	NOT NULL,
	`WORK_STAT_FK_ID`	VARCHAR(20)	NOT NULL,
	`DATE`	VARCHAR(20)	NULL
);

CREATE TABLE `DEPT` (
	`DEPT_PK_ID`	VARCHAR(20)	NOT NULL,
	`DEPT_NAME`	VARCHAR(20)	NULL
);

CREATE TABLE `WORK_STATUS` (
	`WORK_STAT_PK_ID`	VARCHAR(20)	NOT NULL,
	`STATUS`	VARCHAR(20)	NULL
);

ALTER TABLE `EMPLOYEE` ADD CONSTRAINT `PK_EMPLOYEE` PRIMARY KEY (
	`EMPLOYEE_PK_ID`,
	`DEPT_FK_ID`
);

ALTER TABLE `EMPLOYEE_ATTENDANCE` ADD CONSTRAINT `PK_EMPLOYEE_ATTENDANCE` PRIMARY KEY (
	`WORK_ATT_PK_ID`,
	`EMPLOYEE_FK_ID`,
	`WORK_STAT_FK_ID`
);

ALTER TABLE `DEPT` ADD CONSTRAINT `PK_DEPT` PRIMARY KEY (
	`DEPT_PK_ID`
);

ALTER TABLE `WORK_STATUS` ADD CONSTRAINT `PK_WORK_STATUS` PRIMARY KEY (
	`WORK_STAT_PK_ID`
);

ALTER TABLE `EMPLOYEE` ADD CONSTRAINT `FK_DEPT_TO_EMPLOYEE_1` FOREIGN KEY (
	`DEPT_FK_ID`
)
REFERENCES `DEPT` (
	`DEPT_PK_ID`
);

ALTER TABLE `EMPLOYEE_ATTENDANCE` ADD CONSTRAINT `FK_EMPLOYEE_TO_EMPLOYEE_ATTENDANCE_1` FOREIGN KEY (
	`EMPLOYEE_FK_ID`
)
REFERENCES `EMPLOYEE` (
	`EMPLOYEE_PK_ID`
);

ALTER TABLE `EMPLOYEE_ATTENDANCE` ADD CONSTRAINT `FK_WORK_STATUS_TO_EMPLOYEE_ATTENDANCE_1` FOREIGN KEY (
	`WORK_STAT_FK_ID`
)
REFERENCES `WORK_STATUS` (
	`WORK_STAT_PK_ID`
);
