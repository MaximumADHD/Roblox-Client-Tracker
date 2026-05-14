PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K6 [{"Text", "size", "isRequired", "RichText", "LayoutOrder"}]
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R5 R5 K1 ["Text"]
        8 SETTABLEKS                       R5 R4 K1 ["Text"]
       10 SETTABLEKS                       R0 R4 K2 ["size"]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R5 R5 K3 ["isRequired"]
       15 SETTABLEKS                       R5 R4 K3 ["isRequired"]
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K4 ["RichText"]
       20 SETTABLEKS                       R5 R4 K4 ["RichText"]
       22 SETTABLEKS                       R1 R4 K5 ["LayoutOrder"]
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 NEWTABLE                         R2 0 3
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["Large"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["Medium"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K3 ["Small"]
       13 SETLIST                          R2 R3 3 [1]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K4 ["createElement"]
       18 GETUPVAL                         R4 2
       19 DUPTABLE                         R5 K6 [{"tag"}]
       20 LOADK                            R6 K7 ["row align-y-center gap-xxlarge auto-xy"]
       21 SETTABLEKS                       R6 R5 K5 ["tag"]
       23 GETUPVAL                         R6 3
       24 GETTABLEKS                       R6 R6 K8 ["map"]
       26 MOVE                             R7 R2
       27 NEWCLOSURE                       R8 P0
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          VAL R1
       31 CALL                             R6 2 -1
       32 CALL                             R3 -1 -1
       33 RETURN                           R3 -1

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
       23 GETTABLEKS                       R5 R5 K10 ["InputLabel"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R6 K11 ["View"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K12 ["Enums"]
       37 GETTABLEKS                       R7 R7 K13 ["InputLabelSize"]
       39 CALL                             R6 1 1
       40 DUPCLOSURE                       R7 K14 [PROTO_1]
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R4
       46 DUPTABLE                         R8 K18 [{"summary", "story", "controls"}]
       47 LOADK                            R9 K19 ["Label put above inputs"]
       48 SETTABLEKS                       R9 R8 K15 ["summary"]
       50 SETTABLEKS                       R7 R8 K16 ["story"]
       52 DUPTABLE                         R9 K23 [{"Text", "isRequired", "RichText"}]
       53 LOADK                            R10 K24 ["Input label"]
       54 SETTABLEKS                       R10 R9 K20 ["Text"]
       56 NEWTABLE                         R10 0 3
       58 GETTABLEKS                       R11 R3 K25 ["None"]
       60 LOADB                            R12 0
       61 LOADB                            R13 1
       62 SETLIST                          R10 R11 3 [1]
       64 SETTABLEKS                       R10 R9 K21 ["isRequired"]
       66 LOADB                            R10 0
       67 SETTABLEKS                       R10 R9 K22 ["RichText"]
       69 SETTABLEKS                       R9 R8 K17 ["controls"]
       71 RETURN                           R8 1
