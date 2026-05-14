PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K7 [{"Text", "size", "isRequired", "isDisabled", "RichText", "LayoutOrder"}]
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R5 R5 K1 ["Text"]
        8 SETTABLEKS                       R5 R4 K1 ["Text"]
       10 SETTABLEKS                       R0 R4 K2 ["size"]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R5 R5 K3 ["isRequired"]
       15 SETTABLEKS                       R5 R4 K3 ["isRequired"]
       17 GETUPVAL                         R6 3
       18 GETTABLEKS                       R6 R6 K8 ["FoundationInputFieldFixDisabled"]
       20 JUMPIFNOT                        R6 ; [+4]
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R5 R5 K4 ["isDisabled"]
       24 JUMP                             ; [+1]
       25 LOADNIL                          R5
       26 SETTABLEKS                       R5 R4 K4 ["isDisabled"]
       28 GETUPVAL                         R5 2
       29 GETTABLEKS                       R5 R5 K5 ["RichText"]
       31 SETTABLEKS                       R5 R4 K5 ["RichText"]
       33 SETTABLEKS                       R1 R4 K6 ["LayoutOrder"]
       35 CALL                             R2 2 -1
       36 RETURN                           R2 -1

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
       31 CAPTURE                          UPVAL U5
       32 CALL                             R6 2 -1
       33 CALL                             R3 -1 -1
       34 RETURN                           R3 -1

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
       21 GETTABLEKS                       R5 R0 K9 ["Utility"]
       23 GETTABLEKS                       R5 R5 K10 ["Flags"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Components"]
       30 GETTABLEKS                       R6 R6 K12 ["InputLabel"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K11 ["Components"]
       37 GETTABLEKS                       R7 R7 K13 ["View"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K14 ["Enums"]
       44 GETTABLEKS                       R8 R8 K15 ["InputLabelSize"]
       46 CALL                             R7 1 1
       47 DUPCLOSURE                       R8 K16 [PROTO_1]
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R4
       54 DUPTABLE                         R9 K20 [{"summary", "story", "controls"}]
       55 LOADK                            R10 K21 ["Label put above inputs"]
       56 SETTABLEKS                       R10 R9 K17 ["summary"]
       58 SETTABLEKS                       R8 R9 K18 ["story"]
       60 DUPTABLE                         R10 K26 [{"Text", "isRequired", "isDisabled", "RichText"}]
       61 LOADK                            R11 K27 ["Input label"]
       62 SETTABLEKS                       R11 R10 K22 ["Text"]
       64 NEWTABLE                         R11 0 3
       66 GETTABLEKS                       R12 R3 K28 ["None"]
       68 LOADB                            R13 0
       69 LOADB                            R14 1
       70 SETLIST                          R11 R12 3 [1]
       72 SETTABLEKS                       R11 R10 K23 ["isRequired"]
       74 GETTABLEKS                       R12 R4 K29 ["FoundationInputFieldFixDisabled"]
       76 JUMPIFNOT                        R12 ; [+2]
       77 LOADB                            R11 0
       78 JUMP                             ; [+1]
       79 LOADNIL                          R11
       80 SETTABLEKS                       R11 R10 K24 ["isDisabled"]
       82 LOADB                            R11 0
       83 SETTABLEKS                       R11 R10 K25 ["RichText"]
       85 SETTABLEKS                       R10 R9 K19 ["controls"]
       87 RETURN                           R9 1
