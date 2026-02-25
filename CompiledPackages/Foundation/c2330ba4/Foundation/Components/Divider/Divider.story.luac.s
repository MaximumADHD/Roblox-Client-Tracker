PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["values"]
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
       18 GETUPVAL                         R9 2
       19 GETTABLEKS                       R8 R9 K4 ["createElement"]
       21 GETUPVAL                         R9 3
       22 DUPTABLE                         R10 K8 [{"variant", "orientation", "LayoutOrder"}]
       23 SETTABLEKS                       R6 R10 K5 ["variant"]
       25 GETUPVAL                         R12 4
       26 GETTABLEKS                       R11 R12 K9 ["Horizontal"]
       28 SETTABLEKS                       R11 R10 K6 ["orientation"]
       30 SETTABLEKS                       R5 R10 K7 ["LayoutOrder"]
       32 CALL                             R8 2 1
       33 SETTABLE                         R8 R0 R7
       34 FORGLOOP                         R2 2 ; [-24]
       36 GETUPVAL                         R3 2
       37 GETTABLEKS                       R2 R3 K4 ["createElement"]
       39 GETUPVAL                         R3 5
       40 DUPTABLE                         R4 K11 [{"tag"}]
       41 LOADK                            R5 K12 ["size-full-2000 col gap-xxlarge align-y-center bg-surface-0 padding-large"]
       42 SETTABLEKS                       R5 R4 K10 ["tag"]
       44 MOVE                             R5 R0
       45 CALL                             R2 3 -1
       46 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"tag"}]
        5 LOADK                            R3 K3 ["size-full-2000 row align-x-center align-y-center bg-surface-0 padding-large gap-large"]
        6 SETTABLEKS                       R3 R2 K1 ["tag"]
        8 DUPTABLE                         R3 K5 [{"Divider"}]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K0 ["createElement"]
       12 GETUPVAL                         R5 2
       13 DUPTABLE                         R6 K7 [{"orientation"}]
       14 GETUPVAL                         R8 3
       15 GETTABLEKS                       R7 R8 K8 ["Vertical"]
       17 SETTABLEKS                       R7 R6 K6 ["orientation"]
       19 CALL                             R4 2 1
       20 SETTABLEKS                       R4 R3 K4 ["Divider"]
       22 CALL                             R0 3 -1
       23 RETURN                           R0 -1

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
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["View"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R7 K11 ["Divider"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K12 ["Enums"]
       37 GETTABLEKS                       R7 R8 K13 ["DividerVariant"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K12 ["Enums"]
       44 GETTABLEKS                       R8 R9 K14 ["Orientation"]
       46 CALL                             R7 1 1
       47 DUPCLOSURE                       R8 K15 [PROTO_0]
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R4
       54 DUPCLOSURE                       R9 K16 [PROTO_1]
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R7
       59 DUPTABLE                         R10 K19 [{"summary", "stories"}]
       60 LOADK                            R11 K11 ["Divider"]
       61 SETTABLEKS                       R11 R10 K17 ["summary"]
       63 NEWTABLE                         R11 0 2
       65 DUPTABLE                         R12 K22 [{"name", "summary", "story"}]
       66 LOADK                            R13 K23 ["Horizontal"]
       67 SETTABLEKS                       R13 R12 K20 ["name"]
       69 LOADK                            R13 K24 ["All variants (Default, Heavy, Inset, InsetLeft, InsetRight)"]
       70 SETTABLEKS                       R13 R12 K17 ["summary"]
       72 SETTABLEKS                       R8 R12 K21 ["story"]
       74 DUPTABLE                         R13 K22 [{"name", "summary", "story"}]
       75 LOADK                            R14 K25 ["Vertical"]
       76 SETTABLEKS                       R14 R13 K20 ["name"]
       78 LOADK                            R14 K26 ["Vertical divider (variant not applicable)"]
       79 SETTABLEKS                       R14 R13 K17 ["summary"]
       81 SETTABLEKS                       R9 R13 K21 ["story"]
       83 SETLIST                          R11 R12 2 [1]
       85 SETTABLEKS                       R11 R10 K18 ["stories"]
       87 RETURN                           R10 1
