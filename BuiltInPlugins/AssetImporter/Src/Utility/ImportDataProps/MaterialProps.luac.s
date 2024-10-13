PROTO_0:
  GETTABLEKS R2 R0 K0 ["IsPbr"]
  NOT R1 R2
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K7 ["Components"]
  GETTABLEKS R4 R5 K8 ["Properties"]
  GETTABLEKS R3 R4 K9 ["Types"]
  GETTABLEKS R2 R3 K10 ["PathProperty"]
  CALL R1 1 1
  DUPCLOSURE R2 K11 [PROTO_0]
  NEWTABLE R3 0 1
  DUPTABLE R4 K13 [{"Section", "Properties"}]
  LOADK R5 K14 ["ObjectGeneral"]
  SETTABLEKS R5 R4 K12 ["Section"]
  NEWTABLE R5 0 5
  DUPTABLE R6 K17 [{"Name", "Editable"}]
  LOADK R7 K18 ["ImportName"]
  SETTABLEKS R7 R6 K15 ["Name"]
  LOADB R7 1
  SETTABLEKS R7 R6 K16 ["Editable"]
  DUPTABLE R7 K21 [{"Name", "Editable", "AllowPickFile", "ComponentFactory"}]
  LOADK R8 K22 ["DiffuseFilePath"]
  SETTABLEKS R8 R7 K15 ["Name"]
  LOADB R8 0
  SETTABLEKS R8 R7 K16 ["Editable"]
  LOADB R8 1
  SETTABLEKS R8 R7 K19 ["AllowPickFile"]
  SETTABLEKS R1 R7 K20 ["ComponentFactory"]
  DUPTABLE R8 K24 [{"Name", "Editable", "AllowPickFile", "ComponentFactory", "ShouldHide"}]
  LOADK R9 K25 ["NormalFilePath"]
  SETTABLEKS R9 R8 K15 ["Name"]
  LOADB R9 0
  SETTABLEKS R9 R8 K16 ["Editable"]
  LOADB R9 1
  SETTABLEKS R9 R8 K19 ["AllowPickFile"]
  SETTABLEKS R1 R8 K20 ["ComponentFactory"]
  SETTABLEKS R2 R8 K23 ["ShouldHide"]
  DUPTABLE R9 K24 [{"Name", "Editable", "AllowPickFile", "ComponentFactory", "ShouldHide"}]
  LOADK R10 K26 ["MetalnessFilePath"]
  SETTABLEKS R10 R9 K15 ["Name"]
  LOADB R10 0
  SETTABLEKS R10 R9 K16 ["Editable"]
  LOADB R10 1
  SETTABLEKS R10 R9 K19 ["AllowPickFile"]
  SETTABLEKS R1 R9 K20 ["ComponentFactory"]
  SETTABLEKS R2 R9 K23 ["ShouldHide"]
  DUPTABLE R10 K24 [{"Name", "Editable", "AllowPickFile", "ComponentFactory", "ShouldHide"}]
  LOADK R11 K27 ["RoughnessFilePath"]
  SETTABLEKS R11 R10 K15 ["Name"]
  LOADB R11 0
  SETTABLEKS R11 R10 K16 ["Editable"]
  LOADB R11 1
  SETTABLEKS R11 R10 K19 ["AllowPickFile"]
  SETTABLEKS R1 R10 K20 ["ComponentFactory"]
  SETTABLEKS R2 R10 K23 ["ShouldHide"]
  SETLIST R5 R6 5 [1]
  SETTABLEKS R5 R4 K8 ["Properties"]
  SETLIST R3 R4 1 [1]
  RETURN R3 1
