PROTO_0:
  NEWTABLE R0 0 0
  RETURN R0 1

PROTO_1:
  NEWTABLE R0 0 0
  RETURN R0 1

PROTO_2:
  DUPTABLE R1 K1 [{"searchTerm"}]
  SETTABLEKS R0 R1 K0 ["searchTerm"]
  RETURN R1 1

PROTO_3:
  DUPTABLE R2 K2 [{"success", "friends"}]
  SETTABLEKS R0 R2 K0 ["success"]
  SETTABLEKS R1 R2 K1 ["friends"]
  RETURN R2 1

PROTO_4:
  DUPTABLE R2 K2 [{"success", "groups"}]
  SETTABLEKS R0 R2 K0 ["success"]
  SETTABLEKS R1 R2 K1 ["groups"]
  RETURN R2 1

PROTO_5:
  DUPTABLE R3 K3 [{"success", "key", "results"}]
  SETTABLEKS R0 R3 K0 ["success"]
  SETTABLEKS R1 R3 K1 ["key"]
  SETTABLEKS R2 R3 K2 ["results"]
  RETURN R3 1

PROTO_6:
  DUPTABLE R1 K1 [{"text"}]
  SETTABLEKS R0 R1 K0 ["text"]
  RETURN R1 1

PROTO_7:
  DUPTABLE R3 K3 [{"collaboratorType", "collaboratorId", "action"}]
  SETTABLEKS R0 R3 K0 ["collaboratorType"]
  SETTABLEKS R1 R3 K1 ["collaboratorId"]
  SETTABLEKS R2 R3 K2 ["action"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K6 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K7 ["Util"]
  GETTABLEKS R3 R2 K8 ["Action"]
  DUPTABLE R4 K17 [{"LoadingLocalUserFriends", "LoadingLocalUserGroups", "LoadingWebResults", "LoadedLocalUserFriends", "LoadedLocalUserGroups", "LoadedWebResults", "SearchTextChanged", "CollaboratorAdded"}]
  MOVE R5 R3
  LOADK R6 K9 ["LoadingLocalUserFriends"]
  DUPCLOSURE R7 K18 [PROTO_0]
  CALL R5 2 1
  SETTABLEKS R5 R4 K9 ["LoadingLocalUserFriends"]
  MOVE R5 R3
  LOADK R6 K10 ["LoadingLocalUserGroups"]
  DUPCLOSURE R7 K19 [PROTO_1]
  CALL R5 2 1
  SETTABLEKS R5 R4 K10 ["LoadingLocalUserGroups"]
  MOVE R5 R3
  LOADK R6 K11 ["LoadingWebResults"]
  DUPCLOSURE R7 K20 [PROTO_2]
  CALL R5 2 1
  SETTABLEKS R5 R4 K11 ["LoadingWebResults"]
  MOVE R5 R3
  LOADK R6 K12 ["LoadedLocalUserFriends"]
  DUPCLOSURE R7 K21 [PROTO_3]
  CALL R5 2 1
  SETTABLEKS R5 R4 K12 ["LoadedLocalUserFriends"]
  MOVE R5 R3
  LOADK R6 K13 ["LoadedLocalUserGroups"]
  DUPCLOSURE R7 K22 [PROTO_4]
  CALL R5 2 1
  SETTABLEKS R5 R4 K13 ["LoadedLocalUserGroups"]
  MOVE R5 R3
  LOADK R6 K14 ["LoadedWebResults"]
  DUPCLOSURE R7 K23 [PROTO_5]
  CALL R5 2 1
  SETTABLEKS R5 R4 K14 ["LoadedWebResults"]
  MOVE R5 R3
  LOADK R6 K15 ["SearchTextChanged"]
  DUPCLOSURE R7 K24 [PROTO_6]
  CALL R5 2 1
  SETTABLEKS R5 R4 K15 ["SearchTextChanged"]
  MOVE R5 R3
  LOADK R6 K16 ["CollaboratorAdded"]
  DUPCLOSURE R7 K25 [PROTO_7]
  CALL R5 2 1
  SETTABLEKS R5 R4 K16 ["CollaboratorAdded"]
  RETURN R4 1
