PROTO_0:
  LOADB R2 0
  JUMPIFNOTEQKS R0 K0 [""] [+6]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["categoryIsFreeAsset"]
  MOVE R3 R1
  CALL R2 1 1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Core"]
  GETTABLEKS R3 R4 K6 ["Types"]
  GETTABLEKS R2 R3 K7 ["Category"]
  CALL R1 1 1
  NEWTABLE R2 2 0
  NEWTABLE R3 0 5
  DUPTABLE R4 K10 [{"name", "search"}]
  LOADK R5 K11 ["NPC"]
  SETTABLEKS R5 R4 K8 ["name"]
  LOADK R5 K11 ["NPC"]
  SETTABLEKS R5 R4 K9 ["search"]
  DUPTABLE R5 K10 [{"name", "search"}]
  LOADK R6 K12 ["Vehicle"]
  SETTABLEKS R6 R5 K8 ["name"]
  LOADK R6 K12 ["Vehicle"]
  SETTABLEKS R6 R5 K9 ["search"]
  DUPTABLE R6 K10 [{"name", "search"}]
  LOADK R7 K13 ["Weapon"]
  SETTABLEKS R7 R6 K8 ["name"]
  LOADK R7 K13 ["Weapon"]
  SETTABLEKS R7 R6 K9 ["search"]
  DUPTABLE R7 K10 [{"name", "search"}]
  LOADK R8 K14 ["Building"]
  SETTABLEKS R8 R7 K8 ["name"]
  LOADK R8 K14 ["Building"]
  SETTABLEKS R8 R7 K9 ["search"]
  DUPTABLE R8 K10 [{"name", "search"}]
  LOADK R9 K15 ["Light"]
  SETTABLEKS R9 R8 K8 ["name"]
  LOADK R9 K15 ["Light"]
  SETTABLEKS R9 R8 K9 ["search"]
  SETLIST R3 R4 5 [1]
  SETTABLEKS R3 R2 K16 ["SUGGESTIONS"]
  DUPCLOSURE R4 K17 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R4 R2 K18 ["canHaveSuggestions"]
  RETURN R2 1
