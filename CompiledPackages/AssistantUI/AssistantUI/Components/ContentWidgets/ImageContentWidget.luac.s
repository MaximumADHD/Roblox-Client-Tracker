PROTO_0:
  DUPTABLE R0 K1 [{"ViewImage"}]
  GETUPVAL R1 0
  LOADK R3 K2 ["Image"]
  LOADK R4 K0 ["ViewImage"]
  NAMECALL R1 R1 K3 ["getText"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K0 ["ViewImage"]
  RETURN R0 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useMemo"]
  DUPCLOSURE R2 K1 [PROTO_0]
  CAPTURE UPVAL U1
  NEWTABLE R3 0 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["locale"]
  SETLIST R3 R4 1 [1]
  CALL R1 2 1
  GETUPVAL R2 2
  CALL R2 0 1
  DUPTABLE R3 K4 [{"Image"}]
  GETUPVAL R4 3
  GETUPVAL R5 4
  DUPTABLE R6 K7 [{"imageContent", "LayoutOrder"}]
  GETTABLEKS R7 R0 K5 ["imageContent"]
  SETTABLEKS R7 R6 K5 ["imageContent"]
  MOVE R7 R2
  CALL R7 0 1
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K3 ["Image"]
  GETUPVAL R4 3
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K8 ["Root"]
  DUPTABLE R6 K12 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
  GETTABLEKS R7 R0 K6 ["LayoutOrder"]
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  GETTABLEKS R7 R0 K9 ["expanded"]
  SETTABLEKS R7 R6 K9 ["expanded"]
  GETTABLEKS R7 R0 K10 ["contentId"]
  SETTABLEKS R7 R6 K10 ["contentId"]
  GETTABLEKS R7 R0 K11 ["editThisContent"]
  SETTABLEKS R7 R6 K11 ["editThisContent"]
  DUPTABLE R7 K15 [{"Header", "Content"}]
  GETUPVAL R8 3
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K13 ["Header"]
  DUPTABLE R10 K17 [{"LayoutOrder", "testId"}]
  MOVE R11 R2
  CALL R11 0 1
  SETTABLEKS R11 R10 K6 ["LayoutOrder"]
  LOADK R11 K18 ["Assistant-ImageContentWidget-Expand"]
  SETTABLEKS R11 R10 K16 ["testId"]
  DUPTABLE R11 K20 [{"Text"}]
  GETUPVAL R12 3
  GETUPVAL R13 6
  DUPTABLE R14 K22 [{"tag", "Text", "LayoutOrder"}]
  LOADK R15 K23 ["size-0-full auto-x text-label-small content-default text-truncate-end"]
  SETTABLEKS R15 R14 K21 ["tag"]
  GETTABLEKS R15 R1 K24 ["ViewImage"]
  SETTABLEKS R15 R14 K19 ["Text"]
  MOVE R15 R2
  CALL R15 0 1
  SETTABLEKS R15 R14 K6 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K19 ["Text"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K13 ["Header"]
  GETUPVAL R8 3
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K14 ["Content"]
  DUPTABLE R10 K26 [{"tag", "LayoutOrder", "UseVisible"}]
  GETUPVAL R12 7
  CALL R12 0 1
  JUMPIFNOT R12 [+2]
  LOADK R11 K27 ["col size-0-0 fill auto-y radius-small"]
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K21 ["tag"]
  MOVE R11 R2
  CALL R11 0 1
  SETTABLEKS R11 R10 K6 ["LayoutOrder"]
  LOADB R11 1
  SETTABLEKS R11 R10 K25 ["UseVisible"]
  GETUPVAL R12 7
  CALL R12 0 1
  JUMPIFNOT R12 [+2]
  MOVE R11 R3
  JUMP [+15]
  DUPTABLE R11 K29 [{"ImageContainer"}]
  GETUPVAL R12 3
  GETUPVAL R13 8
  DUPTABLE R14 K30 [{"tag", "LayoutOrder"}]
  LOADK R15 K27 ["col size-0-0 fill auto-y radius-small"]
  SETTABLEKS R15 R14 K21 ["tag"]
  MOVE R15 R2
  CALL R15 0 1
  SETTABLEKS R15 R14 K6 ["LayoutOrder"]
  MOVE R15 R3
  CALL R12 3 1
  SETTABLEKS R12 R11 K28 ["ImageContainer"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K14 ["Content"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Components"]
  GETTABLEKS R2 R3 K7 ["Accordion"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Components"]
  GETTABLEKS R3 R4 K8 ["ContentWidgetRegistry"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K9 ["Parent"]
  GETTABLEKS R4 R5 K10 ["Foundation"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Components"]
  GETTABLEKS R5 R6 K11 ["ImageContent"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K9 ["Parent"]
  GETTABLEKS R6 R7 K12 ["React"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K9 ["Parent"]
  GETTABLEKS R7 R8 K13 ["ReactUtils"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K14 ["Resources"]
  GETTABLEKS R9 R10 K15 ["Localization"]
  GETTABLEKS R8 R9 K16 ["Translator"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R0 K17 ["Types"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R0 K18 ["Flags"]
  GETTABLEKS R10 R11 K19 ["FFlagMCPAssistantRunCodeMaxHeight"]
  CALL R9 1 1
  GETTABLEKS R10 R3 K20 ["Text"]
  GETTABLEKS R11 R3 K21 ["View"]
  GETTABLEKS R12 R6 K22 ["createNextOrder"]
  GETTABLEKS R13 R5 K23 ["createElement"]
  DUPCLOSURE R14 K24 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R11
  DUPTABLE R15 K27 [{"Type", "ContentWidget"}]
  LOADK R16 K28 ["Image"]
  SETTABLEKS R16 R15 K25 ["Type"]
  GETTABLEKS R16 R5 K29 ["memo"]
  MOVE R17 R14
  CALL R16 1 1
  SETTABLEKS R16 R15 K26 ["ContentWidget"]
  GETTABLEKS R16 R2 K30 ["registerWidget"]
  GETTABLEKS R17 R15 K25 ["Type"]
  GETTABLEKS R18 R15 K26 ["ContentWidget"]
  CALL R16 2 0
  RETURN R15 1
