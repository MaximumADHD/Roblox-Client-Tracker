PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  NEWTABLE R3 2 0
  GETTABLEKS R4 R0 K1 ["LayoutOrder"]
  SETTABLEKS R4 R3 K1 ["LayoutOrder"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["Tag"]
  GETUPVAL R5 2
  LOADK R6 K3 ["HeaderTitle X-Row X-Pad X-Left X-Middle"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["Tag"]
  GETTABLE R7 R0 R8
  CALL R5 2 1
  SETTABLE R5 R3 R4
  DUPTABLE R4 K6 [{"ScopeThumbnail", "ScopeTitle"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 3
  NEWTABLE R7 4 0
  LOADN R8 1
  SETTABLEKS R8 R7 K1 ["LayoutOrder"]
  GETTABLEKS R8 R0 K7 ["Thumbnail"]
  SETTABLEKS R8 R7 K8 ["Image"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["Tag"]
  LOADK R9 K9 ["ScopeThumbnail X-Pad"]
  SETTABLE R9 R7 R8
  CALL R5 2 1
  SETTABLEKS R5 R4 K4 ["ScopeThumbnail"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 4
  NEWTABLE R7 4 0
  LOADN R8 2
  SETTABLEKS R8 R7 K1 ["LayoutOrder"]
  GETTABLEKS R8 R0 K10 ["Text"]
  SETTABLEKS R8 R7 K10 ["Text"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["Tag"]
  LOADK R9 K11 ["Title X-Fit X-Pad"]
  SETTABLE R9 R7 R8
  CALL R5 2 1
  SETTABLEKS R5 R4 K5 ["ScopeTitle"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_1:
  GETUPVAL R1 0
  JUMPIFEQ R1 R0 [+4]
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["use"]
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["new"]
  CALL R2 0 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K0 ["use"]
  CALL R3 0 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K0 ["use"]
  CALL R4 0 1
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K0 ["use"]
  CALL R5 0 1
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K0 ["use"]
  CALL R6 0 1
  GETUPVAL R7 6
  LOADK R8 K2 [""]
  CALL R7 1 2
  GETUPVAL R9 7
  MOVE R10 R4
  MOVE R11 R5
  CALL R9 2 1
  GETTABLEKS R10 R9 K3 ["Selection"]
  GETUPVAL R11 8
  MOVE R12 R6
  CALL R11 1 1
  NEWCLOSURE R12 P0
  CAPTURE VAL R7
  CAPTURE VAL R8
  JUMPIFEQKS R7 K2 [""] [+7]
  MOVE R15 R10
  NAMECALL R13 R3 K4 ["getThumbnailUriForScope"]
  CALL R13 2 1
  JUMPIFEQ R7 R13 [+6]
  MOVE R15 R10
  MOVE R16 R12
  NAMECALL R13 R3 K5 ["getThumbnailForScopeAsync"]
  CALL R13 3 0
  GETTABLEKS R14 R11 K6 ["ShowSearchOptions"]
  JUMPIFNOT R14 [+6]
  LOADK R15 K7 ["SearchOptions"]
  LOADK R16 K8 ["SearchResults"]
  NAMECALL R13 R1 K9 ["getText"]
  CALL R13 3 1
  JUMP [+2]
  GETTABLEKS R13 R10 K10 ["Name"]
  GETUPVAL R15 9
  GETTABLEKS R14 R15 K11 ["createElement"]
  GETUPVAL R15 10
  NEWTABLE R16 2 0
  GETTABLEKS R17 R0 K12 ["LayoutOrder"]
  SETTABLEKS R17 R16 K12 ["LayoutOrder"]
  GETUPVAL R18 9
  GETTABLEKS R17 R18 K13 ["Tag"]
  LOADK R18 K14 ["TopBar HeaderBar X-Left X-Row X-Stroke"]
  SETTABLE R18 R16 R17
  DUPTABLE R17 K17 [{"ScopeTitleContainer", "Options"}]
  GETUPVAL R19 9
  GETTABLEKS R18 R19 K11 ["createElement"]
  GETUPVAL R19 11
  NEWTABLE R20 4 0
  NAMECALL R21 R2 K18 ["getNextOrder"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K12 ["LayoutOrder"]
  SETTABLEKS R13 R20 K19 ["Text"]
  JUMPIFEQKS R7 K2 [""] [+3]
  MOVE R21 R7
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K20 ["Thumbnail"]
  GETUPVAL R22 9
  GETTABLEKS R21 R22 K13 ["Tag"]
  LOADK R23 K21 ["%*"]
  GETTABLEKS R26 R11 K6 ["ShowSearchOptions"]
  JUMPIFNOT R26 [+2]
  LOADK R25 K8 ["SearchResults"]
  JUMP [+2]
  GETTABLEKS R25 R10 K22 ["Scope"]
  NAMECALL R23 R23 K23 ["format"]
  CALL R23 2 1
  MOVE R22 R23
  SETTABLE R22 R20 R21
  CALL R18 2 1
  SETTABLEKS R18 R17 K15 ["ScopeTitleContainer"]
  GETUPVAL R19 9
  GETTABLEKS R18 R19 K11 ["createElement"]
  GETUPVAL R19 12
  DUPTABLE R20 K24 [{"LayoutOrder"}]
  NAMECALL R21 R2 K18 ["getNextOrder"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K12 ["LayoutOrder"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K16 ["Options"]
  CALL R14 3 -1
  RETURN R14 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
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
  GETTABLEKS R4 R2 K9 ["Styling"]
  GETTABLEKS R3 R4 K10 ["joinTags"]
  GETTABLEKS R4 R2 K11 ["ContextServices"]
  GETTABLEKS R5 R4 K12 ["Localization"]
  GETTABLEKS R7 R2 K13 ["Util"]
  GETTABLEKS R6 R7 K14 ["LayoutOrderIterator"]
  GETTABLEKS R7 R2 K15 ["UI"]
  GETTABLEKS R8 R7 K16 ["Image"]
  GETTABLEKS R9 R7 K17 ["Pane"]
  GETTABLEKS R10 R7 K18 ["TextLabel"]
  GETIMPORT R11 K5 [require]
  GETIMPORT R13 K1 [script]
  GETTABLEKS R12 R13 K19 ["HeaderOptions"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K20 ["Src"]
  GETTABLEKS R14 R15 K21 ["Controllers"]
  GETTABLEKS R13 R14 K22 ["ExplorerController"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K20 ["Src"]
  GETTABLEKS R15 R16 K21 ["Controllers"]
  GETTABLEKS R14 R15 K23 ["PluginController"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K20 ["Src"]
  GETTABLEKS R16 R17 K21 ["Controllers"]
  GETTABLEKS R15 R16 K24 ["SearchController"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R17 R0 K20 ["Src"]
  GETTABLEKS R16 R17 K25 ["Networking"]
  CALL R15 1 1
  GETTABLEKS R16 R1 K26 ["useState"]
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K20 ["Src"]
  GETTABLEKS R19 R20 K27 ["Hooks"]
  GETTABLEKS R18 R19 K28 ["useExplorerInfo"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K20 ["Src"]
  GETTABLEKS R20 R21 K27 ["Hooks"]
  GETTABLEKS R19 R20 K29 ["useSearchInfo"]
  CALL R18 1 1
  DUPCLOSURE R19 K30 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R10
  DUPCLOSURE R20 K31 [PROTO_2]
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R15
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R14
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R18
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R19
  CAPTURE VAL R11
  RETURN R20 1
