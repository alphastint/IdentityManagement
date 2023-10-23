PRAGMA foreign_keys = ON;

drop table if EXISTS `User`;
CREATE TABLE `User` (
    `UserID` integer NOT NULL PRIMARY KEY,
    `Email` text not NULL,
    `PasswordHash` text not NULL,
    `PasswordSalt` text not NULL
);

drop table if exists `Session`;
CREATE TABLE `Session` (
    `SessionID` integer NOT NULL PRIMARY KEY,
    `SessionCookie` text not null UNIQUE,
    `UserID` integer not null,
    `ValidUntil` integer not null,
    `LoginTime` integer not null,
    FOREIGN KEY (`UserID`) REFERENCES `User`(`UserID`)
);

drop table if EXISTS `Role`;
CREATE TABLE `Role` (
    `RoleID` integer not null PRIMARY KEY,
    `RoleName` text not null
);
insert into `Role` (`RoleID`, `RoleName`) values (0, 'admin');
insert into `Role` (`RoleID`, `RoleName`) values (1, 'user');

drop TABLE if EXISTS `Role2User`;
CREATE TABLE `Role2User` (
    `UserID` integer not null,
    `RoleID` integer not null,
    PRIMARY key (`UserID`, `RoleID`),
    FOREIGN KEY (`UserID`) REFERENCES `User`(`UserID`),
    FOREIGN KEY (`RoleID`) REFERENCES `Role`(`RoleID`)
);

