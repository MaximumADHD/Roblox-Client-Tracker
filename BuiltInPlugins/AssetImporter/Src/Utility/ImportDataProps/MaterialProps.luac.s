PROTO_0:
  GETTABLEKS R2 R0 K0 ["IsPbr"]
  NOT R1 R2
  RETURN R1 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["IsPbr"]
  NOT R1 R2
  JUMPIF R1 [+3]
  GETUPVAL R2 0
  CALL R2 0 1
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
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K11 ["Flags"]
  GETTABLEKS R3 R4 K12 ["getEFEnableEmissiveMask"]
  CALL R2 1 1
  DUPCLOSURE R3 K13 [PROTO_0]
  DUPCLOSURE R4 K14 [PROTO_1]
  CAPTURE VAL R2
  NEWTABLE R5 0 1
  DUPTABLE R6 K16 [{"Section", "Properties"}]
  LOADK R7 K17 ["ObjectGeneral"]
  SETTABLEKS R7 R6 K15 ["Section"]
  NEWTABLE R7 0 6
  DUPTABLE R8 K20 [{"Name", "Editable"}]
  LOADK R9 K21 ["ImportName"]
  SETTABLEKS R9 R8 K18 ["Name"]
  LOADB R9 1
  SETTABLEKS R9 R8 K19 ["Editable"]
  DUPTABLE R9 K24 [{"Name", "Editable", "AllowPickFile", "ComponentFactory"}]
  LOADK R10 K25 ["DiffuseFilePath"]
  SETTABLEKS R10 R9 K18 ["Name"]
  LOADB R10 0
  SETTABLEKS R10 R9 K19 ["Editable"]
  LOADB R10 1
  SETTABLEKS R10 R9 K22 ["AllowPickFile"]
  SETTABLEKS R1 R9 K23 ["ComponentFactory"]
  DUPTABLE R10 K27 [{"Name", "Editable", "AllowPickFile", "ComponentFactory", "ShouldHide"}]
  LOADK R11 K28 ["NormalFilePath"]
  SETTABLEKS R11 R10 K18 ["Name"]
  LOADB R11 0
  SETTABLEKS R11 R10 K19 ["Editable"]
  LOADB R11 1
  SETTABLEKS R11 R10 K22 ["AllowPickFile"]
  SETTABLEKS R1 R10 K23 ["ComponentFactory"]
  SETTABLEKS R3 R10 K26 ["ShouldHide"]
  DUPTABLE R11 K27 [{"Name", "Editable", "AllowPickFile", "ComponentFactory", "ShouldHide"}]
  LOADK R12 K29 ["MetalnessFilePath"]
  SETTABLEKS R12 R11 K18 ["Name"]
  LOADB R12 0
  SETTABLEKS R12 R11 K19 ["Editable"]
  LOADB R12 1
  SETTABLEKS R12 R11 K22 ["AllowPickFile"]
  SETTABLEKS R1 R11 K23 ["ComponentFactory"]
  SETTABLEKS R3 R11 K26 ["ShouldHide"]
  DUPTABLE R12 K27 [{"Name", "Editable", "AllowPickFile", "ComponentFactory", "ShouldHide"}]
  LOADK R13 K30 ["RoughnessFilePath"]
  SETTABLEKS R13 R12 K18 ["Name"]
  LOADB R13 0
  SETTABLEKS R13 R12 K19 ["Editable"]
  LOADB R13 1
  SETTABLEKS R13 R12 K22 ["AllowPickFile"]
  SETTABLEKS R1 R12 K23 ["ComponentFactory"]
  SETTABLEKS R3 R12 K26 ["ShouldHide"]
  DUPTABLE R13 K27 [{"Name", "Editable", "AllowPickFile", "ComponentFactory", "ShouldHide"}]
  LOADK R14 K31 ["EmissiveFilePath"]
  SETTABLEKS R14 R13 K18 ["Name"]
  LOADB R14 0
  SETTABLEKS R14 R13 K19 ["Editable"]
  LOADB R14 1
  SETTABLEKS R14 R13 K22 ["AllowPickFile"]
  SETTABLEKS R1 R13 K23 ["ComponentFactory"]
  SETTABLEKS R4 R13 K26 ["ShouldHide"]
  SETLIST R7 R8 6 [1]
  SETTABLEKS R7 R6 K8 ["Properties"]
  SETLIST R5 R6 1 [1]
  RETURN R5 1
