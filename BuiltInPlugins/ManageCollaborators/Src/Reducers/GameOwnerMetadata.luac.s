PROTO_0:
  NEWTABLE R2 0 0
  RETURN R2 1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"creatorType"}]
  GETTABLEKS R5 R1 K2 ["creatorType"]
  SETTABLEKS R5 R4 K2 ["creatorType"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"creatorId"}]
  GETTABLEKS R5 R1 K2 ["creatorId"]
  SETTABLEKS R5 R4 K2 ["creatorId"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"creatorName"}]
  GETTABLEKS R5 R1 K2 ["creatorName"]
  SETTABLEKS R5 R4 K2 ["creatorName"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  GETTABLEKS R4 R0 K0 ["creatorType"]
  GETIMPORT R5 K4 [Enum.CreatorType.User]
  JUMPIFEQ R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K5 [+4]
  LOADK R4 K5 ["Setting friends in non-user owned game"]
  GETIMPORT R2 K7 [assert]
  CALL R2 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["Dictionary"]
  GETTABLEKS R2 R3 K9 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K11 [{"creatorFriends"}]
  GETTABLEKS R5 R1 K10 ["creatorFriends"]
  SETTABLEKS R5 R4 K10 ["creatorFriends"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_5:
  GETTABLEKS R4 R0 K0 ["creatorType"]
  GETIMPORT R5 K4 [Enum.CreatorType.Group]
  JUMPIFEQ R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K5 [+4]
  LOADK R4 K5 ["Setting group owner id in non-group owned game"]
  GETIMPORT R2 K7 [assert]
  CALL R2 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["Dictionary"]
  GETTABLEKS R2 R3 K9 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K11 [{"groupOwnerId"}]
  GETTABLEKS R5 R1 K10 ["groupOwnerId"]
  SETTABLEKS R5 R4 K10 ["groupOwnerId"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Cryo"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K8 ["createReducer"]
  DUPTABLE R4 K15 [{"creatorType", "creatorId", "creatorName", "creatorFriends", "groupOwnerId", "groupOwnerName"}]
  LOADNIL R5
  SETTABLEKS R5 R4 K9 ["creatorType"]
  LOADNIL R5
  SETTABLEKS R5 R4 K10 ["creatorId"]
  LOADNIL R5
  SETTABLEKS R5 R4 K11 ["creatorName"]
  LOADNIL R5
  SETTABLEKS R5 R4 K12 ["creatorFriends"]
  LOADNIL R5
  SETTABLEKS R5 R4 K13 ["groupOwnerId"]
  LOADNIL R5
  SETTABLEKS R5 R4 K14 ["groupOwnerName"]
  DUPTABLE R5 K22 [{"ResetStore", "SetCreatorType", "SetCreatorId", "SetCreatorName", "SetCreatorFriends", "SetGroupOwnerId"}]
  DUPCLOSURE R6 K23 [PROTO_0]
  SETTABLEKS R6 R5 K16 ["ResetStore"]
  DUPCLOSURE R6 K24 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K17 ["SetCreatorType"]
  DUPCLOSURE R6 K25 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K18 ["SetCreatorId"]
  DUPCLOSURE R6 K26 [PROTO_3]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K19 ["SetCreatorName"]
  DUPCLOSURE R6 K27 [PROTO_4]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K20 ["SetCreatorFriends"]
  DUPCLOSURE R6 K28 [PROTO_5]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K21 ["SetGroupOwnerId"]
  CALL R3 2 -1
  RETURN R3 -1
