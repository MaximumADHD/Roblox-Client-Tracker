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
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K3 [{"tag", "LayoutOrder"}]
  LOADK R4 K4 ["row size-full-0 auto-y padding-y-medium align-y-center flex-x-fill"]
  SETTABLEKS R4 R3 K1 ["tag"]
  GETTABLEKS R4 R0 K2 ["LayoutOrder"]
  SETTABLEKS R4 R3 K2 ["LayoutOrder"]
  DUPTABLE R4 K8 [{"Title", "SearchBar", "TrailingGroupStub"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K10 [{"LayoutOrder", "Text", "tag"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K2 ["LayoutOrder"]
  GETTABLEKS R8 R0 K11 ["title"]
  SETTABLEKS R8 R7 K9 ["Text"]
  LOADK R8 K12 ["size-full-0 auto-y text-align-x-left text-align-y-center text-heading-large content-emphasis"]
  SETTABLEKS R8 R7 K1 ["tag"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K5 ["Title"]
  GETTABLEKS R6 R0 K13 ["searchBar"]
  JUMPIFNOT R6 [+38]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K14 [{"LayoutOrder", "tag"}]
  LOADN R8 2
  SETTABLEKS R8 R7 K2 ["LayoutOrder"]
  LOADK R8 K15 ["size-full-0 auto-y align-x-center"]
  SETTABLEKS R8 R7 K1 ["tag"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  GETUPVAL R9 4
  DUPTABLE R10 K20 [{"OnSearchRequested", "ShowSearchIcon", "ResultComponent", "BaseQuery"}]
  NEWCLOSURE R11 P0
  CAPTURE VAL R0
  SETTABLEKS R11 R10 K16 ["OnSearchRequested"]
  LOADB R11 1
  SETTABLEKS R11 R10 K17 ["ShowSearchIcon"]
  GETTABLEKS R12 R0 K13 ["searchBar"]
  GETTABLEKS R11 R12 K21 ["resultComponent"]
  SETTABLEKS R11 R10 K18 ["ResultComponent"]
  GETTABLEKS R12 R0 K13 ["searchBar"]
  GETTABLEKS R11 R12 K22 ["calculatedQuery"]
  SETTABLEKS R11 R10 K19 ["BaseQuery"]
  CALL R8 2 -1
  CALL R5 -1 1
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K6 ["SearchBar"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K14 [{"LayoutOrder", "tag"}]
  LOADN R8 3
  SETTABLEKS R8 R7 K2 ["LayoutOrder"]
  LOADK R8 K23 ["size-full-0"]
  SETTABLEKS R8 R7 K1 ["tag"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K7 ["TrailingGroupStub"]
  CALL R1 3 -1
  RETURN R1 -1

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
  GETTABLEKS R7 R8 K15 ["Frame"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K8 ["Src"]
  GETTABLEKS R8 R9 K16 ["Types"]
  CALL R7 1 1
  DUPCLOSURE R8 K17 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R5
  RETURN R8 1
