PROTO_0:
  GETTABLEKS R2 R0 K0 ["IsPbr"]
  NOT R1 R2
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R6 R0 K5 ["Src"]
  GETTABLEKS R5 R6 K6 ["Components"]
  GETTABLEKS R4 R5 K7 ["Properties"]
  GETTABLEKS R3 R4 K8 ["Types"]
  GETTABLEKS R2 R3 K9 ["PathProperty"]
  CALL R1 1 1
  DUPCLOSURE R2 K10 [PROTO_0]
  NEWTABLE R3 0 1
  DUPTABLE R4 K12 [{"Section", "Properties"}]
  LOADK R5 K13 ["ObjectGeneral"]
  SETTABLEKS R5 R4 K11 ["Section"]
  NEWTABLE R5 0 5
  DUPTABLE R6 K16 [{"Name", "Editable"}]
  LOADK R7 K17 ["ImportName"]
  SETTABLEKS R7 R6 K14 ["Name"]
  LOADB R7 1
  SETTABLEKS R7 R6 K15 ["Editable"]
  DUPTABLE R7 K20 [{"Name", "Editable", "AllowPickFile", "ComponentFactory"}]
  LOADK R8 K21 ["DiffuseFilePath"]
  SETTABLEKS R8 R7 K14 ["Name"]
  LOADB R8 0
  SETTABLEKS R8 R7 K15 ["Editable"]
  LOADB R8 1
  SETTABLEKS R8 R7 K18 ["AllowPickFile"]
  SETTABLEKS R1 R7 K19 ["ComponentFactory"]
  DUPTABLE R8 K23 [{"Name", "Editable", "AllowPickFile", "ComponentFactory", "ShouldHide"}]
  LOADK R9 K24 ["NormalFilePath"]
  SETTABLEKS R9 R8 K14 ["Name"]
  LOADB R9 0
  SETTABLEKS R9 R8 K15 ["Editable"]
  LOADB R9 1
  SETTABLEKS R9 R8 K18 ["AllowPickFile"]
  SETTABLEKS R1 R8 K19 ["ComponentFactory"]
  SETTABLEKS R2 R8 K22 ["ShouldHide"]
  DUPTABLE R9 K23 [{"Name", "Editable", "AllowPickFile", "ComponentFactory", "ShouldHide"}]
  LOADK R10 K25 ["MetalnessFilePath"]
  SETTABLEKS R10 R9 K14 ["Name"]
  LOADB R10 0
  SETTABLEKS R10 R9 K15 ["Editable"]
  LOADB R10 1
  SETTABLEKS R10 R9 K18 ["AllowPickFile"]
  SETTABLEKS R1 R9 K19 ["ComponentFactory"]
  SETTABLEKS R2 R9 K22 ["ShouldHide"]
  DUPTABLE R10 K23 [{"Name", "Editable", "AllowPickFile", "ComponentFactory", "ShouldHide"}]
  LOADK R11 K26 ["RoughnessFilePath"]
  SETTABLEKS R11 R10 K14 ["Name"]
  LOADB R11 0
  SETTABLEKS R11 R10 K15 ["Editable"]
  LOADB R11 1
  SETTABLEKS R11 R10 K18 ["AllowPickFile"]
  SETTABLEKS R1 R10 K19 ["ComponentFactory"]
  SETTABLEKS R2 R10 K22 ["ShouldHide"]
  SETLIST R5 R6 5 [1]
  SETTABLEKS R5 R4 K7 ["Properties"]
  SETLIST R3 R4 1 [1]
  RETURN R3 1
