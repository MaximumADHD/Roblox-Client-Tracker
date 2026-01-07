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
  GETTABLEKS R3 R0 K6 ["Components"]
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
  GETTABLEKS R7 R0 K6 ["Components"]
  GETTABLEKS R6 R7 K12 ["ShimmerGradient"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R0 K13 ["Types"]
  CALL R6 1 1
  GETTABLEKS R7 R2 K14 ["Text"]
  GETTABLEKS R8 R2 K15 ["View"]
  GETTABLEKS R9 R2 K16 ["Image"]
  GETTABLEKS R10 R4 K17 ["createNextOrder"]
  GETTABLEKS R11 R3 K18 ["createElement"]
  DUPTABLE R12 K20 [{"Search"}]
  LOADK R13 K21 ["search"]
  SETTABLEKS R13 R12 K19 ["Search"]
  DUPTABLE R13 K22 [{"search"}]
  LOADK R14 K23 ["icons/common/search_small"]
  SETTABLEKS R14 R13 K21 ["search"]
  DUPCLOSURE R14 K24 [PROTO_0]
  CAPTURE VAL R10
  CAPTURE VAL R13
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R5
  DUPTABLE R15 K28 [{"Type", "ContentWidget", "Icons"}]
  LOADK R16 K29 ["Summarized"]
  SETTABLEKS R16 R15 K25 ["Type"]
  GETTABLEKS R16 R3 K30 ["memo"]
  MOVE R17 R14
  CALL R16 1 1
  SETTABLEKS R16 R15 K26 ["ContentWidget"]
  SETTABLEKS R12 R15 K27 ["Icons"]
  GETTABLEKS R16 R1 K31 ["registerWidget"]
  GETTABLEKS R17 R15 K25 ["Type"]
  GETTABLEKS R18 R15 K26 ["ContentWidget"]
  CALL R16 2 0
  RETURN R15 1
