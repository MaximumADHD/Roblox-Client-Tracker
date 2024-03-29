PROTO_0:
  GETUPVAL R0 0
  LOADK R2 K0 ["buttonClicked"]
  LOADK R3 K1 [""]
  NAMECALL R0 R0 K2 ["Invoke"]
  CALL R0 3 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  JUMPIFEQKS R0 K0 ["true"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  NAMECALL R1 R1 K1 ["SetActive"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["DraggerSolveConstraints"]
  JUMPIFNOT R0 [+5]
  GETUPVAL R0 1
  LOADK R2 K1 ["Disable"]
  NAMECALL R0 R0 K2 ["Invoke"]
  CALL R0 2 0
  GETUPVAL R0 2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["DraggerSolveConstraints"]
  NOT R1 R2
  SETTABLEKS R1 R0 K3 ["Enabled"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [plugin]
  GETIMPORT R2 K7 [settings]
  LOADK R5 K8 ["Transform"]
  NAMECALL R3 R1 K9 ["CreateToolbar"]
  CALL R3 2 1
  LOADK R6 K8 ["Transform"]
  LOADK R7 K10 ["Precision Dragger"]
  LOADK R8 K11 [""]
  NAMECALL R4 R3 K12 ["CreateButton"]
  CALL R4 4 1
  GETTABLEKS R5 R4 K13 ["Click"]
  DUPCLOSURE R7 K14 [PROTO_0]
  CAPTURE VAL R1
  NAMECALL R5 R5 K15 ["connect"]
  CALL R5 2 0
  LOADK R7 K16 ["setActive"]
  DUPCLOSURE R8 K17 [PROTO_1]
  CAPTURE VAL R4
  NAMECALL R5 R1 K18 ["OnInvoke"]
  CALL R5 3 0
  GETTABLEKS R6 R0 K19 ["DraggerSolveConstraints"]
  NOT R5 R6
  SETTABLEKS R5 R4 K20 ["Enabled"]
  GETTABLEKS R5 R0 K21 ["PromptTransformPluginCheckEnable"]
  DUPCLOSURE R7 K22 [PROTO_2]
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R4
  NAMECALL R5 R5 K23 ["Connect"]
  CALL R5 2 0
  RETURN R0 0
