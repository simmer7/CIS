/****** Object:  Table [dbo].[TblData_ShipmentWhsHeader]    Script Date: 27-12-2019 13:36:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TblData_ShipmentWhsHeader](
	[iShipmentWhsHdr] [int] IDENTITY(1,1) NOT NULL,
	[fid_ShipmentId] [int] NULL,
	[fid_ShipmentIdSplitted] [int] NULL,
	[cSplittedCommodityWhs] [varchar](1) NULL,
	[fid_WhsId] [int] NULL,
	[cWhsInNumber] [varchar](20) NULL,
	[dWhsInDate] [datetime] NULL,
	[fWhsColIn] [float] NULL,
	[fWhsWeightIn] [float] NULL,
	[fWhsCbmIn] [float] NULL,
	[bImoIn] [bit] NULL,
	[cImoRemarksIn] [varchar](500) NULL,
	[cEmailCleanBl] [varchar](500) NULL,
	[dWhsDriverRegistrationDate] [datetime] NULL,
	[dWhsDateInProcess] [datetime] NULL,
	[dWhsOutDate] [datetime] NULL,
	[cWhsOutNumber] [varchar](20) NULL,
	[fWhsColOut] [float] NULL,
	[fWhsWeightOut] [float] NULL,
	[fWhsCbmOut] [float] NULL,
	[bImoOut] [bit] NULL,
	[cImoRemarksOut] [varchar](500) NULL,
	[dWhsDateCreatedInWhs] [datetime] NULL,
	[cRecordCreatedBy] [varchar](50) NULL,
	[bSendConfirmation] [bit] NULL,
	[fid_ColoadAddressId] [int] NULL,
	[cColoadRemark] [varchar](500) NULL,
	[cLastModifiedBy] [nvarchar](50) NULL,
	[dLastModified] [datetime] NULL,
 CONSTRAINT [PK_Shipments_Whs_Header] PRIMARY KEY CLUSTERED 
(
	[iShipmentWhsHdr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


