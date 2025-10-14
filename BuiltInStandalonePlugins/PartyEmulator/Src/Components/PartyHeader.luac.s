PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R2 1
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K1 ["partyId"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K2 ["UNASSIGNED_PARTY_ID"]
  JUMPIFEQ R4 R5 [+25]
  LOADK R5 K3 ["Label"]
  LOADK R6 K4 ["PartyPlayersCount"]
  DUPTABLE R7 K7 [{"current", "max"}]
  GETTABLEKS R9 R0 K8 ["playerCount"]
  FASTCALL1 TOSTRING R9 [+2]
  GETIMPORT R8 K10 [tostring]
  CALL R8 1 1
  SETTABLEKS R8 R7 K5 ["current"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K11 ["MAX_PARTY_SIZE"]
  FASTCALL1 TOSTRING R9 [+2]
  GETIMPORT R8 K10 [tostring]
  CALL R8 1 1
  SETTABLEKS R8 R7 K6 ["max"]
  NAMECALL R3 R2 K12 ["getText"]
  CALL R3 4 1
  JUMP [+14]
  LOADK R5 K3 ["Label"]
  LOADK R6 K13 ["UnassignedPlayersCount"]
  DUPTABLE R7 K15 [{"count"}]
  GETTABLEKS R9 R0 K8 ["playerCount"]
  FASTCALL1 TOSTRING R9 [+2]
  GETIMPORT R8 K10 [tostring]
  CALL R8 1 1
  SETTABLEKS R8 R7 K14 ["count"]
  NAMECALL R3 R2 K12 ["getText"]
  CALL R3 4 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K16 ["createElement"]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K17 ["View"]
  DUPTABLE R6 K21 [{"tag", "Size", "LayoutOrder"}]
  LOADK R7 K22 ["size-full-0 auto-y row align-y-center gap-medium padding-medium radius-small"]
  SETTABLEKS R7 R6 K18 ["tag"]
  GETIMPORT R7 K25 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  LOADN R11 50
  CALL R7 4 1
  SETTABLEKS R7 R6 K19 ["Size"]
  GETTABLEKS R7 R0 K20 ["LayoutOrder"]
  SETTABLEKS R7 R6 K20 ["LayoutOrder"]
  DUPTABLE R7 K30 [{"Title", "Spacer", "UserCount", "DeleteButton"}]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K16 ["createElement"]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K31 ["Text"]
  DUPTABLE R10 K33 [{"Text", "tag", "LayoutOrder", "TextXAlignment"}]
  GETTABLEKS R11 R0 K34 ["partyName"]
  SETTABLEKS R11 R10 K31 ["Text"]
  LOADK R11 K35 ["text-label-large"]
  SETTABLEKS R11 R10 K18 ["tag"]
  MOVE R11 R1
  CALL R11 0 1
  SETTABLEKS R11 R10 K20 ["LayoutOrder"]
  GETIMPORT R11 K38 [Enum.TextXAlignment.Left]
  SETTABLEKS R11 R10 K32 ["TextXAlignment"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K26 ["Title"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K16 ["createElement"]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K17 ["View"]
  DUPTABLE R10 K39 [{"tag", "LayoutOrder"}]
  LOADK R11 K40 ["fill"]
  SETTABLEKS R11 R10 K18 ["tag"]
  MOVE R11 R1
  CALL R11 0 1
  SETTABLEKS R11 R10 K20 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K27 ["Spacer"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K16 ["createElement"]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K31 ["Text"]
  DUPTABLE R10 K41 [{"Text", "tag", "LayoutOrder"}]
  SETTABLEKS R3 R10 K31 ["Text"]
  LOADK R11 K42 ["text-label-large text-color-secondary text-align-x-right auto-x"]
  SETTABLEKS R11 R10 K18 ["tag"]
  MOVE R11 R1
  CALL R11 0 1
  SETTABLEKS R11 R10 K20 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K28 ["UserCount"]
  GETTABLEKS R9 R0 K43 ["showDeleteButton"]
  JUMPIFNOT R9 [+15]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K16 ["createElement"]
  GETUPVAL R9 5
  DUPTABLE R10 K44 [{"partyId", "LayoutOrder"}]
  GETTABLEKS R11 R0 K1 ["partyId"]
  SETTABLEKS R11 R10 K1 ["partyId"]
  MOVE R11 R1
  CALL R11 0 1
  SETTABLEKS R11 R10 K20 ["LayoutOrder"]
  CALL R8 2 1
  JUMPIF R8 [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K29 ["DeleteButton"]
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
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K12 ["Src"]
  GETTABLEKS R11 R12 K14 ["Util"]
  GETTABLEKS R10 R11 K17 ["Constants"]
  CALL R9 1 1
  DUPCLOSURE R10 K18 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R8
  RETURN R10 1
