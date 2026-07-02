PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["text"]
        2 GETTABLEKS                       R4 R1 K0 ["text"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 LENGTH                           R6 R5
        7 LOADN                            R7 6
        8 JUMPIFNOTLE                      R7 R6 ; [+6]
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R6 R6 K0 ["currentPartyId"]
       13 JUMPIFNOTEQ                      R4 R6 ; [+15]
       15 DUPTABLE                         R8 K3 [{"id", "text"}]
       16 SETTABLEKS                       R4 R8 K1 ["id"]
       18 GETUPVAL                         R9 2
       19 MOVE                             R10 R4
       20 CALL                             R9 1 1
       21 SETTABLEKS                       R9 R8 K2 ["text"]
       23 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       25 MOVE                             R7 R0
       26 GETIMPORT                        R6 K6 [table.insert]
       28 CALL                             R6 2 0
       29 FORGLOOP                         R1 2 ; [-24]
       31 GETIMPORT                        R1 K8 [table.sort]
       33 MOVE                             R2 R0
       34 DUPCLOSURE                       R3 K9 [PROTO_0]
       35 CALL                             R1 2 0
       36 DUPTABLE                         R3 K3 [{"id", "text"}]
       37 GETUPVAL                         R4 3
       38 GETTABLEKS                       R4 R4 K10 ["UNASSIGNED_PARTY_ID"]
       40 SETTABLEKS                       R4 R3 K1 ["id"]
       42 GETUPVAL                         R4 2
       43 GETUPVAL                         R5 3
       44 GETTABLEKS                       R5 R5 K10 ["UNASSIGNED_PARTY_ID"]
       46 CALL                             R4 1 1
       47 SETTABLEKS                       R4 R3 K2 ["text"]
       49 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       51 MOVE                             R2 R0
       52 GETIMPORT                        R1 K6 [table.insert]
       54 CALL                             R1 2 0
       55 RETURN                           R0 1

PROTO_2:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tostring]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["UNASSIGNED_PARTY_ID"]
        8 JUMPIFNOTEQ                      R1 R2 ; [+19]
       10 GETUPVAL                         R1 1
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K3 ["userId"]
       14 LOADK                            R4 K4 [""]
       15 NAMECALL                         R1 R1 K5 ["SetPlayerPartyId"]
       17 CALL                             R1 3 0
       18 GETUPVAL                         R1 3
       19 LOADK                            R3 K5 ["SetPlayerPartyId"]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K3 ["userId"]
       23 LOADK                            R5 K4 [""]
       24 NAMECALL                         R1 R1 K6 ["Invoke"]
       26 CALL                             R1 4 0
       27 JUMP                             ; [+25]
       28 GETUPVAL                         R1 1
       29 GETUPVAL                         R3 2
       30 GETTABLEKS                       R3 R3 K3 ["userId"]
       32 FASTCALL1                        TOSTRING R0 ; [+3]
       33 MOVE                             R5 R0
       34 GETIMPORT                        R4 K1 [tostring]
       36 CALL                             R4 1 1
       37 NAMECALL                         R1 R1 K5 ["SetPlayerPartyId"]
       39 CALL                             R1 3 0
       40 GETUPVAL                         R1 3
       41 LOADK                            R3 K5 ["SetPlayerPartyId"]
       42 GETUPVAL                         R4 2
       43 GETTABLEKS                       R4 R4 K3 ["userId"]
       45 FASTCALL1                        TOSTRING R0 ; [+3]
       46 MOVE                             R6 R0
       47 GETIMPORT                        R5 K1 [tostring]
       49 CALL                             R5 1 1
       50 NAMECALL                         R1 R1 K6 ["Invoke"]
       52 CALL                             R1 4 0
       53 GETUPVAL                         R1 2
       54 GETTABLEKS                       R1 R1 K7 ["onDropdownItemChanged"]
       56 JUMPIFNOT                        R1 ; [+4]
       57 GETUPVAL                         R1 2
       58 GETTABLEKS                       R1 R1 K7 ["onDropdownItemChanged"]
       60 CALL                             R1 0 0
       61 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 NAMECALL                         R2 R2 K0 ["use"]
        5 CALL                             R2 1 1
        6 NAMECALL                         R2 R2 K1 ["get"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["useParties"]
       12 CALL                             R3 0 1
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R4 R4 K3 ["useMemo"]
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          VAL R3
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U5
       21 NEWTABLE                         R6 0 2
       23 MOVE                             R7 R3
       24 GETTABLEKS                       R8 R0 K4 ["currentPartyId"]
       26 SETLIST                          R6 R7 2 [1]
       28 CALL                             R4 2 1
       29 GETUPVAL                         R5 3
       30 GETTABLEKS                       R5 R5 K5 ["useCallback"]
       32 NEWCLOSURE                       R6 P1
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          UPVAL U6
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R2
       37 NEWTABLE                         R7 0 0
       39 CALL                             R5 2 1
       40 GETUPVAL                         R6 3
       41 GETTABLEKS                       R6 R6 K6 ["createElement"]
       43 GETUPVAL                         R7 7
       44 GETTABLEKS                       R7 R7 K7 ["View"]
       46 DUPTABLE                         R8 K11 [{["tag"] = "row flex-x-between align-y-center gap-small size-full-0 auto-y padding-small radius-small bg-surface-200", ["LayoutOrder"]}]
       47 GETTABLEKS                       R9 R0 K10 ["LayoutOrder"]
       49 SETTABLEKS                       R9 R8 K10 ["LayoutOrder"]
       51 DUPTABLE                         R9 K14 [{"PlayerDetailsContainer", "PartyDropdown"}]
       52 GETUPVAL                         R10 3
       53 GETTABLEKS                       R10 R10 K6 ["createElement"]
       55 GETUPVAL                         R11 7
       56 GETTABLEKS                       R11 R11 K7 ["View"]
       58 DUPTABLE                         R12 K16 [{["tag"] = "row align-y-center gap-small auto-xy", ["LayoutOrder"]}]
       59 MOVE                             R13 R1
       60 CALL                             R13 0 1
       61 SETTABLEKS                       R13 R12 K10 ["LayoutOrder"]
       63 DUPTABLE                         R13 K19 [{"PlayerIcon", "PlayerName"}]
       64 GETUPVAL                         R14 3
       65 GETTABLEKS                       R14 R14 K6 ["createElement"]
       67 GETUPVAL                         R15 7
       68 GETTABLEKS                       R15 R15 K20 ["Icon"]
       70 DUPTABLE                         R16 K25 [{["tag"] = "align-y-center auto-xy", ["size"], ["name"] = "icons/common/user", ["LayoutOrder"]}]
       71 GETUPVAL                         R17 7
       72 GETTABLEKS                       R17 R17 K26 ["Enums"]
       74 GETTABLEKS                       R17 R17 K27 ["IconSize"]
       76 GETTABLEKS                       R17 R17 K28 ["Small"]
       78 SETTABLEKS                       R17 R16 K22 ["size"]
       80 MOVE                             R17 R1
       81 CALL                             R17 0 1
       82 SETTABLEKS                       R17 R16 K10 ["LayoutOrder"]
       84 CALL                             R14 2 1
       85 SETTABLEKS                       R14 R13 K17 ["PlayerIcon"]
       87 GETUPVAL                         R14 3
       88 GETTABLEKS                       R14 R14 K6 ["createElement"]
       90 GETUPVAL                         R15 7
       91 GETTABLEKS                       R15 R15 K29 ["Text"]
       93 DUPTABLE                         R16 K31 [{["Text"], ["tag"] = "auto-xy text-label-large", ["LayoutOrder"]}]
       94 GETTABLEKS                       R17 R0 K32 ["playerName"]
       96 SETTABLEKS                       R17 R16 K29 ["Text"]
       98 MOVE                             R17 R1
       99 CALL                             R17 0 1
      100 SETTABLEKS                       R17 R16 K10 ["LayoutOrder"]
      102 CALL                             R14 2 1
      103 SETTABLEKS                       R14 R13 K18 ["PlayerName"]
      105 CALL                             R10 3 1
      106 SETTABLEKS                       R10 R9 K12 ["PlayerDetailsContainer"]
      108 GETUPVAL                         R10 3
      109 GETTABLEKS                       R10 R10 K6 ["createElement"]
      111 GETUPVAL                         R11 7
      112 GETTABLEKS                       R11 R11 K33 ["Dropdown"]
      114 GETTABLEKS                       R11 R11 K34 ["Root"]
      116 DUPTABLE                         R12 K41 [{["label"] = "", ["TextXAlignment"], ["value"], ["onItemChanged"], ["items"], ["LayoutOrder"]}]
      117 GETIMPORT                        R13 K44 [Enum.TextXAlignment.Right]
      119 SETTABLEKS                       R13 R12 K37 ["TextXAlignment"]
      121 GETTABLEKS                       R13 R0 K4 ["currentPartyId"]
      123 SETTABLEKS                       R13 R12 K38 ["value"]
      125 SETTABLEKS                       R5 R12 K39 ["onItemChanged"]
      127 SETTABLEKS                       R4 R12 K40 ["items"]
      129 MOVE                             R13 R1
      130 CALL                             R13 0 1
      131 SETTABLEKS                       R13 R12 K10 ["LayoutOrder"]
      133 CALL                             R10 2 1
      134 SETTABLEKS                       R10 R9 K13 ["PartyDropdown"]
      136 CALL                             R6 3 -1
      137 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["PartyEmulatorService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["PartyEmulator"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R1 K8 ["Src"]
       15 GETTABLEKS                       R2 R2 K9 ["Contexts"]
       17 GETIMPORT                        R3 K11 [require]
       19 GETTABLEKS                       R4 R1 K12 ["Packages"]
       21 GETTABLEKS                       R4 R4 K13 ["React"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K11 [require]
       26 GETTABLEKS                       R5 R1 K12 ["Packages"]
       28 GETTABLEKS                       R5 R5 K14 ["Foundation"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K11 [require]
       33 GETTABLEKS                       R6 R1 K12 ["Packages"]
       35 GETTABLEKS                       R6 R6 K15 ["Framework"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K11 [require]
       40 GETTABLEKS                       R7 R2 K16 ["PartyContext"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K11 [require]
       45 GETTABLEKS                       R8 R1 K8 ["Src"]
       47 GETTABLEKS                       R8 R8 K17 ["Util"]
       49 GETTABLEKS                       R8 R8 K18 ["Constants"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K11 [require]
       54 GETTABLEKS                       R9 R1 K8 ["Src"]
       56 GETTABLEKS                       R9 R9 K17 ["Util"]
       58 GETTABLEKS                       R9 R9 K19 ["getPartyName"]
       60 CALL                             R8 1 1
       61 GETTABLEKS                       R9 R5 K17 ["Util"]
       63 GETTABLEKS                       R9 R9 K20 ["counter"]
       65 GETTABLEKS                       R10 R5 K21 ["ContextServices"]
       67 GETTABLEKS                       R11 R10 K22 ["Plugin"]
       69 DUPCLOSURE                       R12 K23 [PROTO_3]
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R11
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R0
       77 CAPTURE                          VAL R4
       78 RETURN                           R12 1
