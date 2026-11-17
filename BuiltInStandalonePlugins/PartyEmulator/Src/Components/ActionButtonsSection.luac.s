PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["View"]
        8 DUPTABLE                         R4 K5 [{["tag"] = "row align-y-center gap-medium size-full-0 auto-y padding-medium radius-small", ["LayoutOrder"]}]
        9 GETTABLEKS                       R5 R0 K4 ["LayoutOrder"]
       11 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       13 DUPTABLE                         R5 K9 [{"PlayerCount", "Spacer", "AddPartyButton"}]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K0 ["createElement"]
       17 GETUPVAL                         R7 3
       18 DUPTABLE                         R8 K11 [{"count", "LayoutOrder"}]
       19 GETTABLEKS                       R9 R0 K12 ["playerCount"]
       21 SETTABLEKS                       R9 R8 K10 ["count"]
       23 MOVE                             R9 R1
       24 CALL                             R9 0 1
       25 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       27 CALL                             R6 2 1
       28 SETTABLEKS                       R6 R5 K6 ["PlayerCount"]
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K0 ["createElement"]
       33 GETUPVAL                         R7 2
       34 GETTABLEKS                       R7 R7 K1 ["View"]
       36 DUPTABLE                         R8 K14 [{["tag"] = "fill", ["LayoutOrder"]}]
       37 MOVE                             R9 R1
       38 CALL                             R9 0 1
       39 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       41 CALL                             R6 2 1
       42 SETTABLEKS                       R6 R5 K7 ["Spacer"]
       44 GETUPVAL                         R6 1
       45 GETTABLEKS                       R6 R6 K0 ["createElement"]
       47 GETUPVAL                         R7 4
       48 DUPTABLE                         R8 K15 [{"LayoutOrder"}]
       49 MOVE                             R9 R1
       50 CALL                             R9 0 1
       51 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       53 CALL                             R6 2 1
       54 SETTABLEKS                       R6 R5 K8 ["AddPartyButton"]
       56 CALL                             R2 3 -1
       57 RETURN                           R2 -1

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
       32 GETTABLEKS                       R5 R3 K12 ["Util"]
       34 GETTABLEKS                       R5 R5 K13 ["counter"]
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R7 R4 K14 ["PlayerCount"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R4 K15 ["AddPartyButton"]
       45 CALL                             R7 1 1
       46 DUPCLOSURE                       R8 K16 [PROTO_0]
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R7
       52 RETURN                           R8 1
