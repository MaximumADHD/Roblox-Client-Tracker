PROTO_0:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K1 ["pageInfo"]
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["shouldDebugWarnings"]
  CALL R3 0 1
  JUMPIFNOT R3 [+7]
  GETTABLEKS R3 R2 K3 ["searchId"]
  JUMPIF R3 [+4]
  GETIMPORT R3 K5 [warn]
  LOADK R4 K6 ["no searchId in pageInfo, analytics won't be tracked for asset"]
  CALL R3 1 0
  DUPTABLE R3 K14 [{"category", "currentCategory", "page", "sort", "searchId", "searchKeyword", "toolboxTab", "isTopKeyword"}]
  LOADK R4 K15 ["Studio"]
  SETTABLEKS R4 R3 K7 ["category"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K16 ["getCategoryForPageInfo"]
  MOVE R5 R2
  CALL R4 1 1
  SETTABLEKS R4 R3 K8 ["currentCategory"]
  GETTABLEKS R4 R2 K17 ["targetPage"]
  SETTABLEKS R4 R3 K9 ["page"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K18 ["getSortTypeForPageInfo"]
  MOVE R5 R2
  CALL R4 1 1
  SETTABLEKS R4 R3 K10 ["sort"]
  GETTABLEKS R4 R2 K3 ["searchId"]
  SETTABLEKS R4 R3 K3 ["searchId"]
  GETTABLEKS R4 R2 K19 ["searchTerm"]
  SETTABLEKS R4 R3 K11 ["searchKeyword"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K20 ["getCurrentTab"]
  MOVE R5 R2
  CALL R4 1 1
  SETTABLEKS R4 R3 K12 ["toolboxTab"]
  GETTABLEKS R4 R2 K13 ["isTopKeyword"]
  SETTABLEKS R4 R3 K13 ["isTopKeyword"]
  RETURN R3 1

PROTO_1:
  DUPCLOSURE R0 K0 [PROTO_0]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Core"]
  GETTABLEKS R3 R4 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["PageInfoHelper"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K5 ["Core"]
  GETTABLEKS R4 R5 K6 ["Util"]
  GETTABLEKS R3 R4 K8 ["DebugFlags"]
  CALL R2 1 1
  DUPCLOSURE R3 K9 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R1
  RETURN R3 1
