PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  GETTABLEKS R2 R0 K0 ["icon"]
  JUMPIFNOT R2 [+4]
  GETUPVAL R3 1
  GETTABLEKS R4 R0 K0 ["icon"]
  GETTABLE R2 R3 R4
  GETUPVAL R3 2
  GETUPVAL R4 3
  DUPTABLE R5 K3 [{"tag", "LayoutOrder"}]
  LOADK R6 K4 ["col size-full-0 auto-xy gap-small"]
  SETTABLEKS R6 R5 K1 ["tag"]
  GETTABLEKS R6 R0 K2 ["LayoutOrder"]
  SETTABLEKS R6 R5 K2 ["LayoutOrder"]
  DUPTABLE R6 K6 [{"Title"}]
  GETUPVAL R7 2
  GETUPVAL R8 3
  DUPTABLE R9 K3 [{"tag", "LayoutOrder"}]
  LOADK R10 K7 ["row gap-xsmall size-full-600 radius-medium align-y-center"]
  SETTABLEKS R10 R9 K1 ["tag"]
  MOVE R10 R1
  CALL R10 0 1
  SETTABLEKS R10 R9 K2 ["LayoutOrder"]
  DUPTABLE R10 K10 [{"Icon", "Text"}]
  MOVE R11 R2
  JUMPIFNOT R11 [+13]
  GETUPVAL R11 2
  GETUPVAL R12 4
  DUPTABLE R13 K12 [{"Image", "tag", "LayoutOrder"}]
  SETTABLEKS R2 R13 K11 ["Image"]
  LOADK R14 K13 ["size-300-300 anchor-center-center position-center-center content-emphasis"]
  SETTABLEKS R14 R13 K1 ["tag"]
  MOVE R14 R1
  CALL R14 0 1
  SETTABLEKS R14 R13 K2 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K8 ["Icon"]
  GETUPVAL R11 2
  GETUPVAL R12 5
  DUPTABLE R13 K14 [{"tag", "Text", "LayoutOrder"}]
  LOADK R14 K15 ["size-0-full auto-x text-label-small text-truncate-end content-emphasis"]
  SETTABLEKS R14 R13 K1 ["tag"]
  GETTABLEKS R14 R0 K16 ["summary"]
  SETTABLEKS R14 R13 K9 ["Text"]
  MOVE R14 R1
  CALL R14 0 1
  SETTABLEKS R14 R13 K2 ["LayoutOrder"]
  DUPTABLE R14 K18 [{"Shimmer"}]
  GETTABLEKS R15 R0 K19 ["generating"]
  JUMPIFNOT R15 [+3]
  GETUPVAL R15 2
  GETUPVAL R16 6
  CALL R15 1 1
  SETTABLEKS R15 R14 K17 ["Shimmer"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K9 ["Text"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K5 ["Title"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["ContentWidgetRegistry"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Parent"]
  GETTABLEKS R3 R4 K9 ["Foundation"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K8 ["Parent"]
  GETTABLEKS R4 R5 K10 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K8 ["Parent"]
  GETTABLEKS R5 R6 K11 ["ReactUtils"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K12 ["Components"]
  GETTABLEKS R6 R7 K13 ["ShimmerGradient"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R0 K14 ["Types"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K15 ["Flags"]
  GETTABLEKS R8 R9 K16 ["FFlagAssistantRegisterWidgetsThroughTools"]
  CALL R7 1 1
  GETTABLEKS R8 R2 K17 ["Text"]
  GETTABLEKS R9 R2 K18 ["View"]
  GETTABLEKS R10 R2 K19 ["Image"]
  GETTABLEKS R11 R4 K20 ["createNextOrder"]
  GETTABLEKS R12 R3 K21 ["createElement"]
  DUPTABLE R13 K23 [{"Search"}]
  LOADK R14 K24 ["search"]
  SETTABLEKS R14 R13 K22 ["Search"]
  DUPTABLE R14 K25 [{"search"}]
  LOADK R15 K26 ["icons/common/search_small"]
  SETTABLEKS R15 R14 K24 ["search"]
  DUPCLOSURE R15 K27 [PROTO_0]
  CAPTURE VAL R11
  CAPTURE VAL R14
  CAPTURE VAL R12
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE VAL R5
  DUPTABLE R16 K31 [{"Type", "ContentWidget", "Icons"}]
  LOADK R17 K32 ["Summarized"]
  SETTABLEKS R17 R16 K28 ["Type"]
  GETTABLEKS R17 R3 K33 ["memo"]
  MOVE R18 R15
  CALL R17 1 1
  SETTABLEKS R17 R16 K29 ["ContentWidget"]
  SETTABLEKS R13 R16 K30 ["Icons"]
  MOVE R17 R7
  CALL R17 0 1
  JUMPIF R17 [+7]
  GETTABLEKS R17 R1 K34 ["registerWidget"]
  GETTABLEKS R18 R16 K28 ["Type"]
  GETTABLEKS R19 R16 K29 ["ContentWidget"]
  CALL R17 2 0
  RETURN R16 1
