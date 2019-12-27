
set identity_insert TblBase_Wind_JV on

delete from	TblBase_Wind_JV where	iWindId = 3

insert [dbo].[TblBase_Wind_JV] ([iWindId], [cWindDirection], [fWindSpeed], [dDatum]) VALUES (3, N'South', 2, NULL)

set identity_insert TblBase_Wind_JV off
