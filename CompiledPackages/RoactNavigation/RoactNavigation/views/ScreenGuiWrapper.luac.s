PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["component"]
  GETTABLEKS R3 R1 K2 ["visible"]
  GETTABLEKS R4 R1 K3 ["DisplayOrder"]
  GETTABLEKS R5 R1 K4 ["OnTopOfCoreBlur"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K5 ["Dictionary"]
  GETTABLEKS R6 R7 K6 ["join"]
  MOVE R7 R1
  DUPTABLE R8 K7 [{"component", "DisplayOrder", "OnTopOfCoreBlur"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K8 ["None"]
  SETTABLEKS R9 R8 K1 ["component"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K8 ["None"]
  SETTABLEKS R9 R8 K3 ["DisplayOrder"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K8 ["None"]
  SETTABLEKS R9 R8 K4 ["OnTopOfCoreBlur"]
  CALL R6 2 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K9 ["createElement"]
  LOADK R8 K10 ["ScreenGui"]
  DUPTABLE R9 K13 [{"Enabled", "ZIndexBehavior", "DisplayOrder", "OnTopOfCoreBlur"}]
  SETTABLEKS R3 R9 K11 ["Enabled"]
  GETIMPORT R10 K16 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R10 R9 K12 ["ZIndexBehavior"]
  SETTABLEKS R4 R9 K3 ["DisplayOrder"]
  SETTABLEKS R5 R9 K4 ["OnTopOfCoreBlur"]
  DUPTABLE R10 K18 [{"InnerComponent"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K9 ["createElement"]
  MOVE R12 R2
  MOVE R13 R6
  CALL R11 2 1
  SETTABLEKS R11 R10 K17 ["InnerComponent"]
  CALL R7 3 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["Cryo"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K7 ["PureComponent"]
  LOADK R4 K8 ["ScreenGuiWrapper"]
  NAMECALL R2 R2 K9 ["extend"]
  CALL R2 2 1
  DUPTABLE R3 K13 [{"DisplayOrder", "OnTopOfCoreBlur", "visible"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K10 ["DisplayOrder"]
  LOADB R4 0
  SETTABLEKS R4 R3 K11 ["OnTopOfCoreBlur"]
  LOADB R4 1
  SETTABLEKS R4 R3 K12 ["visible"]
  SETTABLEKS R3 R2 K14 ["defaultProps"]
  DUPCLOSURE R3 K15 [PROTO_0]
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K16 ["render"]
  RETURN R2 1
