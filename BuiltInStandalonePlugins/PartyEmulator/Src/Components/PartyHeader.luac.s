PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R2 1
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K1 ["maxPlayers"]
  JUMPIFEQKNIL R4 [+24]
  LOADK R5 K2 ["Label"]
  LOADK R6 K3 ["PartyPlayersCount"]
  DUPTABLE R7 K6 [{"current", "max"}]
  GETTABLEKS R9 R0 K7 ["playerCount"]
  FASTCALL1 TOSTRING R9 [+2]
  GETIMPORT R8 K9 [tostring]
  CALL R8 1 1
  SETTABLEKS R8 R7 K4 ["current"]
  GETTABLEKS R9 R0 K1 ["maxPlayers"]
  FASTCALL1 TOSTRING R9 [+2]
  GETIMPORT R8 K9 [tostring]
  CALL R8 1 1
  SETTABLEKS R8 R7 K5 ["max"]
  NAMECALL R3 R2 K10 ["getText"]
  CALL R3 4 1
  JUMP [+14]
  LOADK R5 K2 ["Label"]
  LOADK R6 K11 ["UnassignedPlayersCount"]
  DUPTABLE R7 K13 [{"count"}]
  GETTABLEKS R9 R0 K7 ["playerCount"]
  FASTCALL1 TOSTRING R9 [+2]
  GETIMPORT R8 K9 [tostring]
  CALL R8 1 1
  SETTABLEKS R8 R7 K12 ["count"]
  NAMECALL R3 R2 K10 ["getText"]
  CALL R3 4 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K14 ["createElement"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K15 ["View"]
  DUPTABLE R6 K19 [{"tag", "Size", "LayoutOrder"}]
  LOADK R7 K20 ["size-full-0 auto-y row align-y-center gap-medium padding-medium radius-small"]
  SETTABLEKS R7 R6 K16 ["tag"]
  GETIMPORT R7 K23 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  LOADN R11 50
  CALL R7 4 1
  SETTABLEKS R7 R6 K17 ["Size"]
  GETTABLEKS R7 R0 K18 ["LayoutOrder"]
  SETTABLEKS R7 R6 K18 ["LayoutOrder"]
  DUPTABLE R7 K28 [{"Title", "Spacer", "UserCount", "DeleteButton"}]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K14 ["createElement"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K29 ["Text"]
  DUPTABLE R10 K31 [{"Text", "tag", "LayoutOrder", "TextXAlignment"}]
  GETTABLEKS R11 R0 K32 ["partyName"]
  SETTABLEKS R11 R10 K29 ["Text"]
  LOADK R11 K33 ["text-label-large"]
  SETTABLEKS R11 R10 K16 ["tag"]
  MOVE R11 R1
  CALL R11 0 1
  SETTABLEKS R11 R10 K18 ["LayoutOrder"]
  GETIMPORT R11 K36 [Enum.TextXAlignment.Left]
  SETTABLEKS R11 R10 K30 ["TextXAlignment"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K24 ["Title"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K14 ["createElement"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K15 ["View"]
  DUPTABLE R10 K37 [{"tag", "LayoutOrder"}]
  LOADK R11 K38 ["fill"]
  SETTABLEKS R11 R10 K16 ["tag"]
  MOVE R11 R1
  CALL R11 0 1
  SETTABLEKS R11 R10 K18 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K25 ["Spacer"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K14 ["createElement"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K29 ["Text"]
  DUPTABLE R10 K39 [{"Text", "tag", "LayoutOrder"}]
  SETTABLEKS R3 R10 K29 ["Text"]
  LOADK R11 K40 ["text-label-large text-color-secondary text-align-x-right auto-x"]
  SETTABLEKS R11 R10 K16 ["tag"]
  MOVE R11 R1
  CALL R11 0 1
  SETTABLEKS R11 R10 K18 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K26 ["UserCount"]
  GETTABLEKS R9 R0 K41 ["showDeleteButton"]
  JUMPIFNOT R9 [+15]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K14 ["createElement"]
  GETUPVAL R9 4
  DUPTABLE R10 K43 [{"partyId", "LayoutOrder"}]
  GETTABLEKS R11 R0 K42 ["partyId"]
  SETTABLEKS R11 R10 K42 ["partyId"]
  MOVE R11 R1
  CALL R11 0 1
  SETTABLEKS R11 R10 K18 ["LayoutOrder"]
  CALL R8 2 1
  JUMPIF R8 [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K27 ["DeleteButton"]
  CALL R4 3 -1
  RETURN R4 -1

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
  GETTABLEKS R4 R3 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["Localization"]
  GETTABLEKS R7 R0 K12 ["Src"]
  GETTABLEKS R6 R7 K13 ["Components"]
  GETTABLEKS R8 R3 K14 ["Util"]
  GETTABLEKS R7 R8 K15 ["counter"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R6 K16 ["DeletePartyButton"]
  CALL R8 1 1
  DUPCLOSURE R9 K17 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R8
  RETURN R9 1
