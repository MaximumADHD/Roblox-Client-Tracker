PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  NEWTABLE R2 0 0
  GETIMPORT R3 K1 [ipairs]
  GETTABLEKS R4 R0 K2 ["players"]
  CALL R3 1 3
  FORGPREP_INEXT R3
  GETTABLEKS R8 R7 K3 ["userId"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K4 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K9 [{"userId", "playerName", "currentPartyId", "availableParties", "LayoutOrder"}]
  GETTABLEKS R12 R7 K3 ["userId"]
  SETTABLEKS R12 R11 K3 ["userId"]
  GETTABLEKS R12 R7 K5 ["playerName"]
  SETTABLEKS R12 R11 K5 ["playerName"]
  GETTABLEKS R12 R7 K6 ["currentPartyId"]
  SETTABLEKS R12 R11 K6 ["currentPartyId"]
  GETTABLEKS R12 R0 K7 ["availableParties"]
  SETTABLEKS R12 R11 K7 ["availableParties"]
  SETTABLEKS R6 R11 K8 ["LayoutOrder"]
  CALL R9 2 1
  SETTABLE R9 R2 R8
  FORGLOOP R3 2 [inext] [-28]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["createElement"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K10 ["View"]
  DUPTABLE R5 K12 [{"tag", "LayoutOrder"}]
  LOADK R6 K13 ["size-full-0 auto-y col gap-small bg-surface-100 radius-medium"]
  SETTABLEKS R6 R5 K11 ["tag"]
  GETTABLEKS R6 R0 K8 ["LayoutOrder"]
  SETTABLEKS R6 R5 K8 ["LayoutOrder"]
  DUPTABLE R6 K16 [{"Header", "PlayersContainer"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K4 ["createElement"]
  GETUPVAL R8 4
  DUPTABLE R9 K22 [{"partyName", "playerCount", "maxPlayers", "showDeleteButton", "partyId", "LayoutOrder"}]
  GETTABLEKS R10 R0 K17 ["partyName"]
  SETTABLEKS R10 R9 K17 ["partyName"]
  GETTABLEKS R11 R0 K2 ["players"]
  LENGTH R10 R11
  SETTABLEKS R10 R9 K18 ["playerCount"]
  GETTABLEKS R10 R0 K19 ["maxPlayers"]
  SETTABLEKS R10 R9 K19 ["maxPlayers"]
  GETTABLEKS R11 R0 K21 ["partyId"]
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K23 ["UNASSIGNED_PARTY_ID"]
  JUMPIFNOTEQ R11 R12 [+2]
  LOADB R10 0 +1
  LOADB R10 1
  SETTABLEKS R10 R9 K20 ["showDeleteButton"]
  GETTABLEKS R10 R0 K21 ["partyId"]
  SETTABLEKS R10 R9 K21 ["partyId"]
  MOVE R10 R1
  CALL R10 0 1
  SETTABLEKS R10 R9 K8 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K14 ["Header"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K4 ["createElement"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K10 ["View"]
  DUPTABLE R9 K12 [{"tag", "LayoutOrder"}]
  LOADK R10 K24 ["size-full-0 auto-y col gap-small padding-small"]
  SETTABLEKS R10 R9 K11 ["tag"]
  MOVE R10 R1
  CALL R10 0 1
  SETTABLEKS R10 R9 K8 ["LayoutOrder"]
  MOVE R10 R2
  CALL R7 3 1
  SETTABLEKS R7 R6 K15 ["PlayersContainer"]
  CALL R3 3 -1
  RETURN R3 -1

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
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K12 ["Util"]
  GETTABLEKS R6 R7 K13 ["Constants"]
  CALL R5 1 1
  GETTABLEKS R7 R3 K12 ["Util"]
  GETTABLEKS R6 R7 K14 ["counter"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R4 K15 ["PartyHeader"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R4 K16 ["PlayerRow"]
  CALL R8 1 1
  DUPCLOSURE R9 K17 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R5
  RETURN R9 1
