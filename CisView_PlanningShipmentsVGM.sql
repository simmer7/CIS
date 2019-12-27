CREATE VIEW [dbo].[CisView_PlanningShipmentsVGM]
AS
/* Admin: Jan Veenstra		Date: 10-12-2019		Change: Export 15 Coload */
SELECT      TblData_Shipment.iShipment_id, 
			TblData_Shipment.fid_FileId,
			fid_FilePlanning,
			cFilePlanningNr,
			TblData_Shipment.cBnumber,
			TblData_Shipment.fVGM, 
			TblData_Shipment.cVGMContact,
			TblData_Shipment.cVGMtype,
			TblData_ShipmentWhsHeader.iShipmentWhsHdr,
			TblData_ShipmentWhsHeader.fid_ColoadAddressId,
			TblData_ShipmentWhsHeader.cColoadRemark,
			TblData_ShipmentWhsHeader.dWhsInDate,
			TblData_ShipmentWhsHeader.cLastModifiedBy,
			TblData_ShipmentWhsHeader.dLastModified
FROM        dbo.TblData_Shipment 
            left join TblData_FilePlanning on fid_FilePlanning = iFilePlanningId
			LEFT JOIN TblBase_GenCodes ON TblData_Shipment.cVGMtype = dbo.TblBase_GenCodes.cGenCode
			LEFT JOIN TblData_ShipmentWhsHeader ON TblData_Shipment.iShipment_id = dbo.TblData_ShipmentWhsHeader.fid_ShipmentId
