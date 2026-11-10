PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["View"]
        6 DUPTABLE                         R3 K5 [{["LayoutOrder"], ["tag"] = "row align-y-center gap-xsmall auto-xy"}]
        7 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
        9 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       11 DUPTABLE                         R4 K8 [{"MenuButton", "ImportButton"}]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K0 ["createElement"]
       15 GETUPVAL                         R7 2
       16 CALL                             R7 0 1
       17 JUMPIFNOT                        R7 ; [+2]
       18 GETUPVAL                         R6 3
       19 JUMP                             ; [+1]
       20 GETUPVAL                         R6 4
       21 DUPTABLE                         R7 K10 [{["LayoutOrder"] = 1}]
       22 CALL                             R5 2 1
       23 SETTABLEKS                       R5 R4 K6 ["MenuButton"]
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K0 ["createElement"]
       28 GETUPVAL                         R6 5
       29 DUPTABLE                         R7 K12 [{["LayoutOrder"] = 2}]
       30 CALL                             R5 2 1
       31 SETTABLEKS                       R5 R4 K7 ["ImportButton"]
       33 CALL                             R1 3 -1
       34 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
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
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Flags"]
       27 GETTABLEKS                       R4 R4 K11 ["getFFlagAmrEnableSearchableMenu"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETIMPORT                        R5 K1 [script]
       34 GETTABLEKS                       R5 R5 K12 ["OptionsMenu"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETIMPORT                        R6 K1 [script]
       41 GETTABLEKS                       R6 R6 K13 ["SearchableOptionsMenu"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K9 ["Src"]
       48 GETTABLEKS                       R7 R7 K14 ["Components"]
       50 GETTABLEKS                       R7 R7 K15 ["App"]
       52 GETTABLEKS                       R7 R7 K16 ["MainView"]
       54 GETTABLEKS                       R7 R7 K17 ["BulkImportButton"]
       56 CALL                             R6 1 1
       57 DUPCLOSURE                       R7 K18 [PROTO_0]
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R6
       64 RETURN                           R7 1
