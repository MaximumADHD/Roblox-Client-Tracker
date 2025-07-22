PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["searchBar"]
  GETTABLEKS R2 R3 K1 ["calculatedQuery"]
  GETTABLEKS R1 R2 K2 ["search"]
  JUMPIFEQ R0 R1 [+8]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["searchBar"]
  GETTABLEKS R1 R2 K3 ["setSearchQuery"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["searchBar"]
  GETTABLEKS R2 R3 K1 ["calculatedQuery"]
  GETTABLEKS R1 R2 K2 ["search"]
  JUMPIFEQ R0 R1 [+8]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["searchBar"]
  GETTABLEKS R1 R2 K3 ["setSearchQuery"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 2
  DUPTABLE R4 K4 [{"tag", "LayoutOrder"}]
  LOADK R5 K5 ["row size-full-0 auto-y padding-y-medium align-y-center flex-x-fill"]
  SETTABLEKS R5 R4 K2 ["tag"]
  GETTABLEKS R5 R0 K3 ["LayoutOrder"]
  SETTABLEKS R5 R4 K3 ["LayoutOrder"]
  DUPTABLE R5 K9 [{"Title", "SearchBar", "TrailingGroupStub"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K11 [{"LayoutOrder", "Text", "tag"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K3 ["LayoutOrder"]
  GETTABLEKS R9 R0 K12 ["title"]
  SETTABLEKS R9 R8 K10 ["Text"]
  LOADK R9 K13 ["size-full-0 auto-y text-align-x-left text-align-y-center text-heading-large content-emphasis"]
  SETTABLEKS R9 R8 K2 ["tag"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K6 ["Title"]
  GETTABLEKS R7 R0 K14 ["searchBar"]
  JUMPIFNOT R7 [+85]
  GETUPVAL R7 4
  JUMPIFNOT R7 [+38]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 5
  DUPTABLE R8 K15 [{"LayoutOrder", "tag"}]
  LOADN R9 2
  SETTABLEKS R9 R8 K3 ["LayoutOrder"]
  LOADK R9 K16 ["size-full-0 auto-y align-x-center"]
  SETTABLEKS R9 R8 K2 ["tag"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K1 ["createElement"]
  GETUPVAL R10 6
  DUPTABLE R11 K21 [{"OnSearchRequested", "ShowSearchIcon", "ResultComponent", "BaseQuery"}]
  NEWCLOSURE R12 P0
  CAPTURE VAL R0
  SETTABLEKS R12 R11 K17 ["OnSearchRequested"]
  LOADB R12 1
  SETTABLEKS R12 R11 K18 ["ShowSearchIcon"]
  GETTABLEKS R13 R0 K14 ["searchBar"]
  GETTABLEKS R12 R13 K22 ["resultComponent"]
  SETTABLEKS R12 R11 K19 ["ResultComponent"]
  GETTABLEKS R13 R0 K14 ["searchBar"]
  GETTABLEKS R12 R13 K23 ["calculatedQuery"]
  SETTABLEKS R12 R11 K20 ["BaseQuery"]
  CALL R9 2 -1
  CALL R6 -1 1
  JUMP [+46]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 7
  DUPTABLE R8 K27 [{"Size", "LayoutOrder", "PlaceholderText", "OnSearchRequested", "ShowSearchIcon", "ResultComponent", "Type", "BaseQuery"}]
  GETUPVAL R9 8
  SETTABLEKS R9 R8 K24 ["Size"]
  LOADN R9 2
  SETTABLEKS R9 R8 K3 ["LayoutOrder"]
  LOADK R11 K28 ["Plugin"]
  LOADK R12 K29 ["SearchPlaceholder"]
  NAMECALL R9 R1 K30 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K25 ["PlaceholderText"]
  NEWCLOSURE R9 P1
  CAPTURE VAL R0
  SETTABLEKS R9 R8 K17 ["OnSearchRequested"]
  LOADB R9 1
  SETTABLEKS R9 R8 K18 ["ShowSearchIcon"]
  GETTABLEKS R10 R0 K14 ["searchBar"]
  GETTABLEKS R9 R10 K22 ["resultComponent"]
  SETTABLEKS R9 R8 K19 ["ResultComponent"]
  GETTABLEKS R10 R0 K14 ["searchBar"]
  GETTABLEKS R9 R10 K31 ["type"]
  SETTABLEKS R9 R8 K26 ["Type"]
  GETTABLEKS R10 R0 K14 ["searchBar"]
  GETTABLEKS R9 R10 K23 ["calculatedQuery"]
  SETTABLEKS R9 R8 K20 ["BaseQuery"]
  CALL R6 2 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K7 ["SearchBar"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K15 [{"LayoutOrder", "tag"}]
  LOADN R9 3
  SETTABLEKS R9 R8 K3 ["LayoutOrder"]
  LOADK R9 K32 ["size-full-0"]
  SETTABLEKS R9 R8 K2 ["tag"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K8 ["TrailingGroupStub"]
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
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["Foundation"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K11 ["View"]
  GETTABLEKS R4 R2 K12 ["Text"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R9 R0 K8 ["Src"]
  GETTABLEKS R8 R9 K10 ["Foundation"]
  GETTABLEKS R7 R8 K13 ["Components"]
  GETTABLEKS R6 R7 K14 ["SearchBar"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R10 R0 K8 ["Src"]
  GETTABLEKS R9 R10 K10 ["Foundation"]
  GETTABLEKS R8 R9 K13 ["Components"]
  GETTABLEKS R7 R8 K15 ["SearchBarWithPills"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R11 R0 K8 ["Src"]
  GETTABLEKS R10 R11 K10 ["Foundation"]
  GETTABLEKS R9 R10 K13 ["Components"]
  GETTABLEKS R8 R9 K16 ["Frame"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K8 ["Src"]
  GETTABLEKS R10 R11 K17 ["SharedFlags"]
  GETTABLEKS R9 R10 K18 ["getFFlagLuaStartPageNewSearchbar"]
  CALL R8 1 1
  CALL R8 0 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R0 K6 ["Packages"]
  GETTABLEKS R10 R11 K19 ["Framework"]
  CALL R9 1 1
  GETTABLEKS R11 R9 K20 ["ContextServices"]
  GETTABLEKS R10 R11 K21 ["Localization"]
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R0 K8 ["Src"]
  GETTABLEKS R12 R13 K22 ["Types"]
  CALL R11 1 1
  GETIMPORT R12 K25 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 36
  CALL R12 4 1
  DUPCLOSURE R13 K26 [PROTO_2]
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R12
  RETURN R13 1
