PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 NAMECALL                         R2 R2 K0 ["use"]
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R4 R0 K1 ["partyId"]
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R5 R5 K2 ["UNASSIGNED_PARTY_ID"]
       11 JUMPIFEQ                         R4 R5 ; [+25]
       13 LOADK                            R5 K3 ["Label"]
       14 LOADK                            R6 K4 ["PartyPlayersCount"]
       15 DUPTABLE                         R7 K7 [{"current", "max"}]
       16 GETTABLEKS                       R9 R0 K8 ["playerCount"]
       18 FASTCALL1                        TOSTRING R9 ; [+2]
       19 GETIMPORT                        R8 K10 [tostring]
       21 CALL                             R8 1 1
       22 SETTABLEKS                       R8 R7 K5 ["current"]
       24 GETUPVAL                         R9 2
       25 GETTABLEKS                       R9 R9 K11 ["MAX_PARTY_SIZE"]
       27 FASTCALL1                        TOSTRING R9 ; [+2]
       28 GETIMPORT                        R8 K10 [tostring]
       30 CALL                             R8 1 1
       31 SETTABLEKS                       R8 R7 K6 ["max"]
       33 NAMECALL                         R3 R2 K12 ["getText"]
       35 CALL                             R3 4 1
       36 JUMP                             ; [+14]
       37 LOADK                            R5 K3 ["Label"]
       38 LOADK                            R6 K13 ["UnassignedPlayersCount"]
       39 DUPTABLE                         R7 K15 [{"count"}]
       40 GETTABLEKS                       R9 R0 K8 ["playerCount"]
       42 FASTCALL1                        TOSTRING R9 ; [+2]
       43 GETIMPORT                        R8 K10 [tostring]
       45 CALL                             R8 1 1
       46 SETTABLEKS                       R8 R7 K14 ["count"]
       48 NAMECALL                         R3 R2 K12 ["getText"]
       50 CALL                             R3 4 1
       51 GETUPVAL                         R4 3
       52 GETTABLEKS                       R4 R4 K16 ["createElement"]
       54 GETUPVAL                         R5 4
       55 GETTABLEKS                       R5 R5 K17 ["View"]
       57 DUPTABLE                         R6 K22 [{["tag"] = "row align-y-center gap-medium size-full-0 auto-y padding-medium radius-small", ["Size"], ["LayoutOrder"]}]
       58 GETIMPORT                        R7 K25 [UDim2.new]
       60 LOADN                            R8 1
       61 LOADN                            R9 0
       62 LOADN                            R10 0
       63 LOADN                            R11 50
       64 CALL                             R7 4 1
       65 SETTABLEKS                       R7 R6 K20 ["Size"]
       67 GETTABLEKS                       R7 R0 K21 ["LayoutOrder"]
       69 SETTABLEKS                       R7 R6 K21 ["LayoutOrder"]
       71 DUPTABLE                         R7 K30 [{"Title", "Spacer", "UserCount", "DeleteButton"}]
       72 GETUPVAL                         R8 3
       73 GETTABLEKS                       R8 R8 K16 ["createElement"]
       75 GETUPVAL                         R9 4
       76 GETTABLEKS                       R9 R9 K31 ["Text"]
       78 DUPTABLE                         R10 K34 [{["Text"], ["tag"] = "text-label-large", ["LayoutOrder"], ["TextXAlignment"]}]
       79 GETTABLEKS                       R11 R0 K35 ["partyName"]
       81 SETTABLEKS                       R11 R10 K31 ["Text"]
       83 MOVE                             R11 R1
       84 CALL                             R11 0 1
       85 SETTABLEKS                       R11 R10 K21 ["LayoutOrder"]
       87 GETIMPORT                        R11 K38 [Enum.TextXAlignment.Left]
       89 SETTABLEKS                       R11 R10 K33 ["TextXAlignment"]
       91 CALL                             R8 2 1
       92 SETTABLEKS                       R8 R7 K26 ["Title"]
       94 GETUPVAL                         R8 3
       95 GETTABLEKS                       R8 R8 K16 ["createElement"]
       97 GETUPVAL                         R9 4
       98 GETTABLEKS                       R9 R9 K17 ["View"]
      100 DUPTABLE                         R10 K40 [{["tag"] = "fill", ["LayoutOrder"]}]
      101 MOVE                             R11 R1
      102 CALL                             R11 0 1
      103 SETTABLEKS                       R11 R10 K21 ["LayoutOrder"]
      105 CALL                             R8 2 1
      106 SETTABLEKS                       R8 R7 K27 ["Spacer"]
      108 GETUPVAL                         R8 3
      109 GETTABLEKS                       R8 R8 K16 ["createElement"]
      111 GETUPVAL                         R9 4
      112 GETTABLEKS                       R9 R9 K31 ["Text"]
      114 DUPTABLE                         R10 K42 [{["Text"], ["tag"] = "text-color-secondary auto-x text-label-large text-align-x-right", ["LayoutOrder"]}]
      115 SETTABLEKS                       R3 R10 K31 ["Text"]
      117 MOVE                             R11 R1
      118 CALL                             R11 0 1
      119 SETTABLEKS                       R11 R10 K21 ["LayoutOrder"]
      121 CALL                             R8 2 1
      122 SETTABLEKS                       R8 R7 K28 ["UserCount"]
      124 GETTABLEKS                       R9 R0 K43 ["showDeleteButton"]
      126 JUMPIFNOT                        R9 ; [+15]
      127 GETUPVAL                         R8 3
      128 GETTABLEKS                       R8 R8 K16 ["createElement"]
      130 GETUPVAL                         R9 5
      131 DUPTABLE                         R10 K44 [{"partyId", "LayoutOrder"}]
      132 GETTABLEKS                       R11 R0 K1 ["partyId"]
      134 SETTABLEKS                       R11 R10 K1 ["partyId"]
      136 MOVE                             R11 R1
      137 CALL                             R11 0 1
      138 SETTABLEKS                       R11 R10 K21 ["LayoutOrder"]
      140 CALL                             R8 2 1
      141 JUMPIF                           R8 ; [+1]
      142 LOADNIL                          R8
      143 SETTABLEKS                       R8 R7 K29 ["DeleteButton"]
      145 CALL                             R4 3 -1
      146 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PartyEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETTABLEKS                       R6 R0 K12 ["Src"]
       34 GETTABLEKS                       R6 R6 K13 ["Components"]
       36 GETTABLEKS                       R7 R3 K14 ["Util"]
       38 GETTABLEKS                       R7 R7 K15 ["counter"]
       40 GETIMPORT                        R8 K5 [require]
       42 GETTABLEKS                       R9 R6 K16 ["DeletePartyButton"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K5 [require]
       47 GETTABLEKS                       R10 R0 K12 ["Src"]
       49 GETTABLEKS                       R10 R10 K14 ["Util"]
       51 GETTABLEKS                       R10 R10 K17 ["Constants"]
       53 CALL                             R9 1 1
       54 DUPCLOSURE                       R10 K18 [PROTO_0]
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R9
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R8
       61 RETURN                           R10 1
