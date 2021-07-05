SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8979555562, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2020-08-20 07:01:36');

CREATE TABLE `tblclient` (
  `ID` int(10) NOT NULL,
  `AccountID` int(10) DEFAULT NULL,
  `AccountType` varchar(50) DEFAULT NULL,
  `ContactName` varchar(120) DEFAULT NULL,
  `CompanyName` varchar(120) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `City` varchar(120) DEFAULT NULL,
  `State` varchar(120) DEFAULT NULL,
  `ZipCode` int(10) DEFAULT NULL,
  `Workphnumber` bigint(10) DEFAULT NULL,
  `Cellphnumber` bigint(10) DEFAULT NULL,
  `Otherphnumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `WebsiteAddress` varchar(200) DEFAULT NULL,
  `Notes` mediumtext DEFAULT NULL,
  `Password` varchar(200) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `tblinvoice` (
  `ID` int(10) NOT NULL,
  `Userid` varchar(120) DEFAULT NULL,
  `ServiceId` varchar(120) DEFAULT NULL,
  `BillingId` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(120) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `tblservices` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `ServicePrice` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `tblclient`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `tblclient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `tblinvoice`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `tblservices`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;