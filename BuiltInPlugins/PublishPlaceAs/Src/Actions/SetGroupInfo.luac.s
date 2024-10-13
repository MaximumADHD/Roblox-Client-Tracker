PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["assertNullableType"]
  MOVE R2 R0
  LOADK R3 K1 ["table"]
  LOADK R4 K2 ["SetGroupInfo arg"]
  CALL R1 3 0
  MOVE R1 R0
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  GETTABLEKS R2 R1 K3 ["groups"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["assertNullableType"]
  MOVE R4 R2
  LOADK R5 K1 ["table"]
  LOADK R6 K4 ["SetGroupInfo.groups"]
  CALL R3 3 0
  GETTABLEKS R3 R1 K5 ["ownedGroups"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["assertNullableType"]
  MOVE R5 R3
  LOADK R6 K1 ["table"]
  LOADK R7 K6 ["SetGroupInfo.ownedGroups"]
  CALL R4 3 0
  DUPTABLE R4 K8 [{"groupInfo"}]
  DUPTABLE R5 K9 [{"groups", "ownedGroups"}]
  SETTABLEKS R2 R5 K3 ["groups"]
  SETTABLEKS R3 R5 K5 ["ownedGroups"]
  SETTABLEKS R5 R4 K7 ["groupInfo"]
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["AssertType"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K2 ["Parent"]
  GETTABLEKS R4 R5 K10 ["Action"]
  CALL R3 1 1
  MOVE R4 R3
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K11 ["Name"]
  DUPCLOSURE R6 K12 [PROTO_0]
  CAPTURE VAL R2
  CALL R4 2 -1
  RETURN R4 -1
