PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onButtonClick"]
  JUMPIFNOT R0 [+4]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onButtonClick"]
  CALL R0 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 2
  DUPTABLE R4 K3 [{"tag", "LayoutOrder"}]
  LOADK R5 K4 ["size-full-0 auto-y"]
  SETTABLEKS R5 R4 K1 ["tag"]
  GETTABLEKS R5 R0 K2 ["LayoutOrder"]
  SETTABLEKS R5 R4 K2 ["LayoutOrder"]
  DUPTABLE R5 K7 [{"TitleDesc", "Button"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K8 [{"LayoutOrder", "tag"}]
  MOVE R9 R1
  CALL R9 0 1
  SETTABLEKS R9 R8 K2 ["LayoutOrder"]
  LOADK R9 K9 ["auto-xy col gap-xsmall"]
  SETTABLEKS R9 R8 K1 ["tag"]
  DUPTABLE R9 K12 [{"Title", "Description"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K0 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K14 [{"Text", "tag"}]
  GETTABLEKS R13 R0 K15 ["title"]
  SETTABLEKS R13 R12 K13 ["Text"]
  LOADK R13 K16 ["auto-xy content-emphasis text-heading-small text-align-x-left"]
  SETTABLEKS R13 R12 K1 ["tag"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K10 ["Title"]
  GETTABLEKS R11 R0 K17 ["description"]
  JUMPIFNOT R11 [+14]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K0 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K14 [{"Text", "tag"}]
  GETTABLEKS R13 R0 K17 ["description"]
  SETTABLEKS R13 R12 K13 ["Text"]
  LOADK R13 K18 ["auto-xy content-default text-body-medium text-wrap text-align-x-left"]
  SETTABLEKS R13 R12 K1 ["tag"]
  CALL R10 2 1
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K11 ["Description"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K5 ["TitleDesc"]
  GETTABLEKS R7 R0 K19 ["buttonText"]
  JUMPIFNOT R7 [+36]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K8 [{"LayoutOrder", "tag"}]
  MOVE R9 R1
  CALL R9 0 1
  SETTABLEKS R9 R8 K2 ["LayoutOrder"]
  LOADK R9 K20 ["size-full align-x-right"]
  SETTABLEKS R9 R8 K1 ["tag"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K0 ["createElement"]
  GETUPVAL R10 4
  DUPTABLE R11 K25 [{"variant", "onActivated", "text", "testId"}]
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K13 ["Text"]
  SETTABLEKS R12 R11 K21 ["variant"]
  NEWCLOSURE R12 P0
  CAPTURE VAL R0
  SETTABLEKS R12 R11 K22 ["onActivated"]
  GETTABLEKS R12 R0 K19 ["buttonText"]
  SETTABLEKS R12 R11 K23 ["text"]
  LOADK R12 K26 ["--start-page-HomeSectionHeader-button"]
  SETTABLEKS R12 R11 K24 ["testId"]
  CALL R9 2 -1
  CALL R6 -1 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K6 ["Button"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["counter"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K11 ["Foundation"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K12 ["Text"]
  GETTABLEKS R6 R4 K13 ["Button"]
  GETTABLEKS R8 R4 K14 ["Enums"]
  GETTABLEKS R7 R8 K15 ["ButtonVariant"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R12 R0 K16 ["Src"]
  GETTABLEKS R11 R12 K11 ["Foundation"]
  GETTABLEKS R10 R11 K17 ["Components"]
  GETTABLEKS R9 R10 K18 ["Frame"]
  CALL R8 1 1
  DUPCLOSURE R9 K19 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  RETURN R9 1
