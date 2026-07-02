PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["values"]
        5 GETUPVAL                         R2 1
        6 CALL                             R1 1 1
        7 MOVE                             R2 R1
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 LOADK                            R8 K1 ["Divider-"]
       12 FASTCALL1                        TOSTRING R6 ; [+3]
       13 MOVE                             R10 R6
       14 GETIMPORT                        R9 K3 [tostring]
       16 CALL                             R9 1 1
       17 CONCAT                           R7 R8 R9
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R8 R8 K4 ["createElement"]
       21 GETUPVAL                         R9 3
       22 DUPTABLE                         R10 K8 [{"variant", "orientation", "LayoutOrder"}]
       23 SETTABLEKS                       R6 R10 K5 ["variant"]
       25 GETUPVAL                         R11 4
       26 GETTABLEKS                       R11 R11 K9 ["Horizontal"]
       28 SETTABLEKS                       R11 R10 K6 ["orientation"]
       30 SETTABLEKS                       R5 R10 K7 ["LayoutOrder"]
       32 CALL                             R8 2 1
       33 SETTABLE                         R8 R0 R7
       34 FORGLOOP                         R2 2 ; [-24]
       36 GETUPVAL                         R2 2
       37 GETTABLEKS                       R2 R2 K4 ["createElement"]
       39 GETUPVAL                         R3 5
       40 DUPTABLE                         R4 K12 [{["tag"] = "size-full-2000 col gap-xxlarge align-y-center bg-surface-0 padding-large"}]
       41 MOVE                             R5 R0
       42 CALL                             R2 3 -1
       43 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{["tag"] = "size-full-2000 row align-x-center align-y-center bg-surface-0 padding-large gap-large"}]
        5 DUPTABLE                         R3 K5 [{"Divider"}]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["createElement"]
        9 GETUPVAL                         R5 2
       10 DUPTABLE                         R6 K7 [{"orientation"}]
       11 GETUPVAL                         R7 3
       12 GETTABLEKS                       R7 R7 K8 ["Vertical"]
       14 SETTABLEKS                       R7 R6 K6 ["orientation"]
       16 CALL                             R4 2 1
       17 SETTABLEKS                       R4 R3 K4 ["Divider"]
       19 CALL                             R0 3 -1
       20 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Divider"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Enums"]
       30 GETTABLEKS                       R6 R6 K12 ["DividerVariant"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K11 ["Enums"]
       37 GETTABLEKS                       R7 R7 K13 ["Orientation"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K9 ["Components"]
       44 GETTABLEKS                       R8 R8 K14 ["View"]
       46 CALL                             R7 1 1
       47 DUPCLOSURE                       R8 K15 [PROTO_0]
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R7
       54 DUPCLOSURE                       R9 K16 [PROTO_1]
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R6
       59 DUPTABLE                         R10 K19 [{["summary"] = "Divider", ["stories"]}]
       60 NEWTABLE                         R11 0 2
       62 DUPTABLE                         R12 K24 [{["name"] = "Horizontal", ["summary"] = "All variants (Default, Heavy, Inset, InsetLeft, InsetRight)", ["story"]}]
       63 SETTABLEKS                       R8 R12 K23 ["story"]
       65 DUPTABLE                         R13 K27 [{["name"] = "Vertical", ["summary"] = "Vertical divider (variant not applicable)", ["story"]}]
       66 SETTABLEKS                       R9 R13 K23 ["story"]
       68 SETLIST                          R11 R12 2 [1]
       70 SETTABLEKS                       R11 R10 K18 ["stories"]
       72 RETURN                           R10 1
