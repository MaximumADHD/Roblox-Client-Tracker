PROTO_0:
  ADDK R1 R0 K0 [1]
  RETURN R1 1

PROTO_1:
  GETUPVAL R0 0
  DUPCLOSURE R1 K0 [PROTO_0]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useContext"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["Context"]
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["useState"]
  LOADN R3 0
  CALL R2 1 2
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["useCallback"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R3
  NEWTABLE R6 0 1
  MOVE R7 R3
  SETLIST R6 R7 1 [1]
  CALL R4 2 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K6 [{"tag"}]
  LOADK R8 K7 ["auto-xy col gap-medium bg-surface-0 radius-medium"]
  SETTABLEKS R8 R7 K5 ["tag"]
  DUPTABLE R8 K10 [{"Label", "Button"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K4 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K13 [{"Text", "tag", "testId"}]
  LOADK R14 K14 ["CounterExample"]
  LOADK R15 K15 ["CounterLabel"]
  DUPTABLE R16 K17 [{"counter"}]
  SETTABLEKS R2 R16 K16 ["counter"]
  NAMECALL R12 R1 K18 ["getText"]
  CALL R12 4 1
  SETTABLEKS R12 R11 K11 ["Text"]
  LOADK R12 K19 ["auto-xy content-emphasis"]
  SETTABLEKS R12 R11 K5 ["tag"]
  LOADK R12 K20 ["--counter-example-text"]
  SETTABLEKS R12 R11 K12 ["testId"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K8 ["Label"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K4 ["createElement"]
  GETUPVAL R10 4
  DUPTABLE R11 K24 [{"text", "onActivated", "variant", "testId"}]
  LOADK R14 K14 ["CounterExample"]
  LOADK R15 K9 ["Button"]
  NAMECALL R12 R1 K18 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K21 ["text"]
  SETTABLEKS R4 R11 K22 ["onActivated"]
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K25 ["Emphasis"]
  SETTABLEKS R12 R11 K23 ["variant"]
  LOADK R12 K26 ["--counter-example-button"]
  SETTABLEKS R12 R11 K12 ["testId"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K9 ["Button"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["SuperTemplate"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Foundation"]
  CALL R2 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K6 ["Packages"]
  GETTABLEKS R6 R7 K9 ["StudioFoundation"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K10 ["Contexts"]
  GETTABLEKS R3 R4 K11 ["Localization"]
  GETTABLEKS R4 R2 K12 ["View"]
  GETTABLEKS R5 R2 K13 ["Text"]
  GETTABLEKS R6 R2 K14 ["Button"]
  GETTABLEKS R8 R2 K15 ["Enums"]
  GETTABLEKS R7 R8 K16 ["ButtonVariant"]
  DUPCLOSURE R8 K17 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  RETURN R8 1
