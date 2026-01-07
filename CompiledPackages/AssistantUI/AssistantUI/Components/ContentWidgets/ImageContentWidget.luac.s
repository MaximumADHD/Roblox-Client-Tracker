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
  GETUPVAL R3 3
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K3 ["Root"]
  DUPTABLE R5 K8 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
  GETTABLEKS R6 R0 K4 ["LayoutOrder"]
  SETTABLEKS R6 R5 K4 ["LayoutOrder"]
  GETTABLEKS R6 R0 K5 ["expanded"]
  SETTABLEKS R6 R5 K5 ["expanded"]
  GETTABLEKS R6 R0 K6 ["contentId"]
  SETTABLEKS R6 R5 K6 ["contentId"]
  GETTABLEKS R6 R0 K7 ["editThisContent"]
  SETTABLEKS R6 R5 K7 ["editThisContent"]
  DUPTABLE R6 K11 [{"Header", "Content"}]
  GETUPVAL R7 3
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K9 ["Header"]
  DUPTABLE R9 K13 [{"LayoutOrder", "testId"}]
  MOVE R10 R2
  CALL R10 0 1
  SETTABLEKS R10 R9 K4 ["LayoutOrder"]
  LOADK R10 K14 ["Assistant-ImageContentWidget-Expand"]
  SETTABLEKS R10 R9 K12 ["testId"]
  DUPTABLE R10 K16 [{"Text"}]
  GETUPVAL R11 3
  GETUPVAL R12 5
  DUPTABLE R13 K18 [{"tag", "Text", "LayoutOrder"}]
  LOADK R14 K19 ["size-0-full auto-x text-label-small content-default text-truncate-end"]
  SETTABLEKS R14 R13 K17 ["tag"]
  GETTABLEKS R14 R1 K20 ["ViewImage"]
  SETTABLEKS R14 R13 K15 ["Text"]
  MOVE R14 R2
  CALL R14 0 1
  SETTABLEKS R14 R13 K4 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K15 ["Text"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K9 ["Header"]
  GETUPVAL R7 3
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K10 ["Content"]
  DUPTABLE R9 K22 [{"tag", "LayoutOrder", "UseVisible"}]
  LOADK R10 K23 ["col size-0-0 fill auto-y radius-small"]
  SETTABLEKS R10 R9 K17 ["tag"]
  MOVE R10 R2
  CALL R10 0 1
  SETTABLEKS R10 R9 K4 ["LayoutOrder"]
  LOADB R10 1
  SETTABLEKS R10 R9 K21 ["UseVisible"]
  DUPTABLE R10 K25 [{"Image"}]
  GETUPVAL R11 3
  GETUPVAL R12 6
  DUPTABLE R13 K27 [{"imageContent", "LayoutOrder"}]
  GETTABLEKS R14 R0 K26 ["imageContent"]
  SETTABLEKS R14 R13 K26 ["imageContent"]
  MOVE R14 R2
  CALL R14 0 1
  SETTABLEKS R14 R13 K4 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K24 ["Image"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K10 ["Content"]
  CALL R3 3 -1
  RETURN R3 -1

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
  GETTABLEKS R9 R3 K18 ["Text"]
  GETTABLEKS R10 R6 K19 ["createNextOrder"]
  GETTABLEKS R11 R5 K20 ["createElement"]
  DUPCLOSURE R12 K21 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R4
  DUPTABLE R13 K24 [{"Type", "ContentWidget"}]
  LOADK R14 K25 ["Image"]
  SETTABLEKS R14 R13 K22 ["Type"]
  GETTABLEKS R14 R5 K26 ["memo"]
  MOVE R15 R12
  CALL R14 1 1
  SETTABLEKS R14 R13 K23 ["ContentWidget"]
  GETTABLEKS R14 R2 K27 ["registerWidget"]
  GETTABLEKS R15 R13 K22 ["Type"]
  GETTABLEKS R16 R13 K23 ["ContentWidget"]
  CALL R14 2 0
  RETURN R13 1
