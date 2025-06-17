PROTO_0:
  GETIMPORT R1 K1 [plugin]
  LOADK R3 K2 ["DmAboutToChange"]
  MOVE R4 R0
  NAMECALL R1 R1 K3 ["Invoke"]
  CALL R1 3 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R0 K1 [plugin]
  LOADK R2 K2 ["DmChanged"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["CurrentDataModelType"]
  NAMECALL R0 R0 K4 ["Invoke"]
  CALL R0 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [plugin]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R0 K3 [script]
  LOADK R2 K4 ["ControlsEmulator"]
  NAMECALL R0 R0 K5 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K7 [require]
  GETTABLEKS R3 R0 K8 ["Packages"]
  GETTABLEKS R2 R3 K9 ["TestLoader"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K10 ["launch"]
  LOADK R3 K4 ["ControlsEmulator"]
  GETTABLEKS R4 R0 K11 ["Src"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K12 ["isCli"]
  CALL R2 0 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETIMPORT R3 K1 [plugin]
  GETTABLEKS R2 R3 K13 ["MultipleDocumentInterfaceInstance"]
  GETTABLEKS R3 R2 K14 ["FocusedDataModelSession"]
  GETTABLEKS R4 R3 K15 ["CurrentDataModelTypeAboutToChange"]
  DUPCLOSURE R6 K16 [PROTO_0]
  NAMECALL R4 R4 K17 ["Connect"]
  CALL R4 2 0
  GETTABLEKS R4 R3 K18 ["CurrentDataModelTypeChanged"]
  DUPCLOSURE R6 K19 [PROTO_1]
  CAPTURE VAL R3
  NAMECALL R4 R4 K17 ["Connect"]
  CALL R4 2 0
  RETURN R0 0
