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
       57 DUPTABLE                         R6 K21 [{"tag", "Size", "LayoutOrder"}]
       58 LOADK                            R7 K22 ["size-full-0 auto-y row align-y-center gap-medium padding-medium radius-small"]
       59 SETTABLEKS                       R7 R6 K18 ["tag"]
       61 GETIMPORT                        R7 K25 [UDim2.new]
       63 LOADN                            R8 1
       64 LOADN                            R9 0
       65 LOADN                            R10 0
       66 LOADN                            R11 50
       67 CALL                             R7 4 1
       68 SETTABLEKS                       R7 R6 K19 ["Size"]
       70 GETTABLEKS                       R7 R0 K20 ["LayoutOrder"]
       72 SETTABLEKS                       R7 R6 K20 ["LayoutOrder"]
       74 DUPTABLE                         R7 K30 [{"Title", "Spacer", "UserCount", "DeleteButton"}]
       75 GETUPVAL                         R8 3
       76 GETTABLEKS                       R8 R8 K16 ["createElement"]
       78 GETUPVAL                         R9 4
       79 GETTABLEKS                       R9 R9 K31 ["Text"]
       81 DUPTABLE                         R10 K33 [{"Text", "tag", "LayoutOrder", "TextXAlignment"}]
       82 GETTABLEKS                       R11 R0 K34 ["partyName"]
       84 SETTABLEKS                       R11 R10 K31 ["Text"]
       86 LOADK                            R11 K35 ["text-label-large"]
       87 SETTABLEKS                       R11 R10 K18 ["tag"]
       89 MOVE                             R11 R1
       90 CALL                             R11 0 1
       91 SETTABLEKS                       R11 R10 K20 ["LayoutOrder"]
       93 GETIMPORT                        R11 K38 [Enum.TextXAlignment.Left]
       95 SETTABLEKS                       R11 R10 K32 ["TextXAlignment"]
       97 CALL                             R8 2 1
       98 SETTABLEKS                       R8 R7 K26 ["Title"]
      100 GETUPVAL                         R8 3
      101 GETTABLEKS                       R8 R8 K16 ["createElement"]
      103 GETUPVAL                         R9 4
      104 GETTABLEKS                       R9 R9 K17 ["View"]
      106 DUPTABLE                         R10 K39 [{"tag", "LayoutOrder"}]
      107 LOADK                            R11 K40 ["fill"]
      108 SETTABLEKS                       R11 R10 K18 ["tag"]
      110 MOVE                             R11 R1
      111 CALL                             R11 0 1
      112 SETTABLEKS                       R11 R10 K20 ["LayoutOrder"]
      114 CALL                             R8 2 1
      115 SETTABLEKS                       R8 R7 K27 ["Spacer"]
      117 GETUPVAL                         R8 3
      118 GETTABLEKS                       R8 R8 K16 ["createElement"]
      120 GETUPVAL                         R9 4
      121 GETTABLEKS                       R9 R9 K31 ["Text"]
      123 DUPTABLE                         R10 K41 [{"Text", "tag", "LayoutOrder"}]
      124 SETTABLEKS                       R3 R10 K31 ["Text"]
      126 LOADK                            R11 K42 ["text-label-large text-color-secondary text-align-x-right auto-x"]
      127 SETTABLEKS                       R11 R10 K18 ["tag"]
      129 MOVE                             R11 R1
      130 CALL                             R11 0 1
      131 SETTABLEKS                       R11 R10 K20 ["LayoutOrder"]
      133 CALL                             R8 2 1
      134 SETTABLEKS                       R8 R7 K28 ["UserCount"]
      136 GETTABLEKS                       R9 R0 K43 ["showDeleteButton"]
      138 JUMPIFNOT                        R9 ; [+15]
      139 GETUPVAL                         R8 3
      140 GETTABLEKS                       R8 R8 K16 ["createElement"]
      142 GETUPVAL                         R9 5
      143 DUPTABLE                         R10 K44 [{"partyId", "LayoutOrder"}]
      144 GETTABLEKS                       R11 R0 K1 ["partyId"]
      146 SETTABLEKS                       R11 R10 K1 ["partyId"]
      148 MOVE                             R11 R1
      149 CALL                             R11 0 1
      150 SETTABLEKS                       R11 R10 K20 ["LayoutOrder"]
      152 CALL                             R8 2 1
      153 JUMPIF                           R8 ; [+1]
      154 LOADNIL                          R8
      155 SETTABLEKS                       R8 R7 K29 ["DeleteButton"]
      157 CALL                             R4 3 -1
      158 RETURN                           R4 -1

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
