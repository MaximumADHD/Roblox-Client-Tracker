PROTO_0:
  DUPTABLE R1 K1 [{"searchTerm"}]
  SETTABLEKS R0 R1 K0 ["searchTerm"]
  RETURN R1 1

PROTO_1:
  DUPTABLE R3 K3 [{"success", "key", "results"}]
  SETTABLEKS R0 R3 K0 ["success"]
  SETTABLEKS R1 R3 K1 ["key"]
  SETTABLEKS R2 R3 K2 ["results"]
  RETURN R3 1

PROTO_2:
  DUPTABLE R1 K1 [{"text"}]
  SETTABLEKS R0 R1 K0 ["text"]
  RETURN R1 1

PROTO_3:
  DUPTABLE R1 K1 [{"likelyCollaborators"}]
  SETTABLEKS R0 R1 K0 ["likelyCollaborators"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["Action"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K7 ["Util"]
  GETTABLEKS R4 R5 K10 ["IsLikelyCollaboratorPrefetchEnabled"]
  CALL R3 1 1
  DUPTABLE R4 K15 [{"LoadWebResults", "LoadedWebResults", "SearchTextChanged", "PrefetchLikelyCollaborators"}]
  MOVE R5 R2
  LOADK R6 K11 ["LoadWebResults"]
  DUPCLOSURE R7 K16 [PROTO_0]
  CALL R5 2 1
  SETTABLEKS R5 R4 K11 ["LoadWebResults"]
  MOVE R5 R2
  LOADK R6 K12 ["LoadedWebResults"]
  DUPCLOSURE R7 K17 [PROTO_1]
  CALL R5 2 1
  SETTABLEKS R5 R4 K12 ["LoadedWebResults"]
  MOVE R5 R2
  LOADK R6 K13 ["SearchTextChanged"]
  DUPCLOSURE R7 K18 [PROTO_2]
  CALL R5 2 1
  SETTABLEKS R5 R4 K13 ["SearchTextChanged"]
  MOVE R6 R3
  CALL R6 0 1
  JUMPIFNOT R6 [+5]
  MOVE R5 R2
  LOADK R6 K14 ["PrefetchLikelyCollaborators"]
  DUPCLOSURE R7 K19 [PROTO_3]
  CALL R5 2 1
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K14 ["PrefetchLikelyCollaborators"]
  RETURN R4 1
