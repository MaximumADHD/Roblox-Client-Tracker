PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["View"]
  DUPTABLE R4 K4 [{"tag", "LayoutOrder"}]
  LOADK R5 K5 ["size-full-0 auto-y row align-y-center gap-medium padding-medium radius-small"]
  SETTABLEKS R5 R4 K2 ["tag"]
  GETTABLEKS R5 R0 K3 ["LayoutOrder"]
  SETTABLEKS R5 R4 K3 ["LayoutOrder"]
  DUPTABLE R5 K9 [{"PlayerCount", "Spacer", "AddPartyButton"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K11 [{"count", "LayoutOrder"}]
  GETTABLEKS R9 R0 K12 ["playerCount"]
  SETTABLEKS R9 R8 K10 ["count"]
  MOVE R9 R1
  CALL R9 0 1
  SETTABLEKS R9 R8 K3 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K6 ["PlayerCount"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K1 ["View"]
  DUPTABLE R8 K4 [{"tag", "LayoutOrder"}]
  LOADK R9 K13 ["fill"]
  SETTABLEKS R9 R8 K2 ["tag"]
  MOVE R9 R1
  CALL R9 0 1
  SETTABLEKS R9 R8 K3 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K7 ["Spacer"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K14 [{"LayoutOrder"}]
  MOVE R9 R1
  CALL R9 0 1
  SETTABLEKS R9 R8 K3 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K8 ["AddPartyButton"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PartyEmulator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Foundation"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K10 ["Src"]
  GETTABLEKS R4 R5 K11 ["Components"]
  GETTABLEKS R6 R3 K12 ["Util"]
  GETTABLEKS R5 R6 K13 ["counter"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R4 K14 ["PlayerCount"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R4 K15 ["AddPartyButton"]
  CALL R7 1 1
  DUPCLOSURE R8 K16 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R7
  RETURN R8 1
