PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 NEWTABLE                         R2 0 0
        4 GETIMPORT                        R3 K1 [ipairs]
        6 GETTABLEKS                       R4 R0 K2 ["players"]
        8 CALL                             R3 1 3
        9 FORGPREP_INEXT                   R3
       10 GETTABLEKS                       R8 R7 K3 ["userId"]
       12 GETUPVAL                         R9 1
       13 GETTABLEKS                       R9 R9 K4 ["createElement"]
       15 GETUPVAL                         R10 2
       16 DUPTABLE                         R11 K8 [{"userId", "playerName", "currentPartyId", "LayoutOrder"}]
       17 GETTABLEKS                       R12 R7 K3 ["userId"]
       19 SETTABLEKS                       R12 R11 K3 ["userId"]
       21 GETTABLEKS                       R12 R7 K5 ["playerName"]
       23 SETTABLEKS                       R12 R11 K5 ["playerName"]
       25 GETTABLEKS                       R12 R7 K6 ["currentPartyId"]
       27 SETTABLEKS                       R12 R11 K6 ["currentPartyId"]
       29 SETTABLEKS                       R6 R11 K7 ["LayoutOrder"]
       31 CALL                             R9 2 1
       32 SETTABLE                         R9 R2 R8
       33 FORGLOOP                         R3 2 [inext] ; [-24]
       35 GETUPVAL                         R3 1
       36 GETTABLEKS                       R3 R3 K4 ["createElement"]
       38 GETUPVAL                         R4 3
       39 GETTABLEKS                       R4 R4 K9 ["View"]
       41 DUPTABLE                         R5 K12 [{["tag"] = "col gap-small size-full-0 auto-y radius-medium bg-surface-100", ["LayoutOrder"]}]
       42 GETTABLEKS                       R6 R0 K7 ["LayoutOrder"]
       44 SETTABLEKS                       R6 R5 K7 ["LayoutOrder"]
       46 DUPTABLE                         R6 K15 [{"Header", "PlayersContainer"}]
       47 GETUPVAL                         R7 1
       48 GETTABLEKS                       R7 R7 K4 ["createElement"]
       50 GETUPVAL                         R8 4
       51 DUPTABLE                         R9 K20 [{"partyName", "playerCount", "showDeleteButton", "partyId", "LayoutOrder"}]
       52 GETTABLEKS                       R10 R0 K16 ["partyName"]
       54 SETTABLEKS                       R10 R9 K16 ["partyName"]
       56 GETTABLEKS                       R11 R0 K2 ["players"]
       58 LENGTH                           R10 R11
       59 SETTABLEKS                       R10 R9 K17 ["playerCount"]
       61 GETTABLEKS                       R11 R0 K19 ["partyId"]
       63 GETUPVAL                         R12 5
       64 GETTABLEKS                       R12 R12 K21 ["UNASSIGNED_PARTY_ID"]
       66 JUMPIFNOTEQ                      R11 R12 ; [+2]
       68 LOADB                            R10 0 +1
       69 LOADB                            R10 1
       70 SETTABLEKS                       R10 R9 K18 ["showDeleteButton"]
       72 GETTABLEKS                       R10 R0 K19 ["partyId"]
       74 SETTABLEKS                       R10 R9 K19 ["partyId"]
       76 MOVE                             R10 R1
       77 CALL                             R10 0 1
       78 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
       80 CALL                             R7 2 1
       81 SETTABLEKS                       R7 R6 K13 ["Header"]
       83 GETUPVAL                         R7 1
       84 GETTABLEKS                       R7 R7 K4 ["createElement"]
       86 GETUPVAL                         R8 3
       87 GETTABLEKS                       R8 R8 K9 ["View"]
       89 DUPTABLE                         R9 K23 [{["tag"] = "col gap-small size-full-0 auto-y padding-small", ["LayoutOrder"]}]
       90 MOVE                             R10 R1
       91 CALL                             R10 0 1
       92 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
       94 MOVE                             R10 R2
       95 CALL                             R7 3 1
       96 SETTABLEKS                       R7 R6 K14 ["PlayersContainer"]
       98 CALL                             R3 3 -1
       99 RETURN                           R3 -1

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
       28 GETTABLEKS                       R4 R0 K10 ["Src"]
       30 GETTABLEKS                       R4 R4 K11 ["Components"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K10 ["Src"]
       36 GETTABLEKS                       R6 R6 K12 ["Util"]
       38 GETTABLEKS                       R6 R6 K13 ["Constants"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R3 K12 ["Util"]
       43 GETTABLEKS                       R6 R6 K14 ["counter"]
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R4 K15 ["PartyHeader"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R9 R4 K16 ["PlayerRow"]
       54 CALL                             R8 1 1
       55 DUPCLOSURE                       R9 K17 [PROTO_0]
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R5
       62 RETURN                           R9 1
