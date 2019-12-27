CREATE VIEW [dbo].[CisView_PlanningShipmentsVGM]
AS
SELECT      dbo.TblData_Shipment.iShipment_id, 
				fid_FilePlanning,
				cFilePlanningNr,
				dbo.TblData_Shipment.cBnumber, dbo.TblData_Shipment.fVGM, 
                dbo.TblData_Shipment.cVGMContact, dbo.TblData_Shipment.cVGMtype
FROM        dbo.TblData_Shipment 
                left outer join TblData_FilePlanning on fid_FilePlanning = iFilePlanningId
			LEFT OUTER JOIN dbo.TblBase_GenCodes ON dbo.TblData_Shipment.cVGMtype = dbo.TblBase_GenCodes.cGenCode