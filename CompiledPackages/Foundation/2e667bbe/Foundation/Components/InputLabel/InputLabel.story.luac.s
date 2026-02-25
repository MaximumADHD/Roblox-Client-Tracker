PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K6 [{"Text", "size", "isRequired", "RichText"}]
        7 GETTABLEKS                       R5 R1 K2 ["Text"]
        9 SETTABLEKS                       R5 R4 K2 ["Text"]
       11 GETTABLEKS                       R5 R1 K3 ["size"]
       13 SETTABLEKS                       R5 R4 K3 ["size"]
       15 GETTABLEKS                       R5 R1 K4 ["isRequired"]
       17 SETTABLEKS                       R5 R4 K4 ["isRequired"]
       19 GETTABLEKS                       R5 R1 K5 ["RichText"]
       21 SETTABLEKS                       R5 R4 K5 ["RichText"]
       23 CALL                             R2 2 -1
       24 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["InputLabel"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Enums"]
       30 GETTABLEKS                       R6 R7 K12 ["InputLabelSize"]
       32 CALL                             R5 1 1
       33 DUPCLOSURE                       R6 K13 [PROTO_0]
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R4
       36 DUPTABLE                         R7 K17 [{"summary", "story", "controls"}]
       37 LOADK                            R8 K18 ["Label put above inputs"]
       38 SETTABLEKS                       R8 R7 K14 ["summary"]
       40 SETTABLEKS                       R6 R7 K15 ["story"]
       42 DUPTABLE                         R8 K23 [{"Text", "size", "isRequired", "RichText"}]
       43 LOADK                            R9 K24 ["Input Label"]
       44 SETTABLEKS                       R9 R8 K19 ["Text"]
       46 GETTABLEKS                       R9 R3 K25 ["values"]
       48 MOVE                             R10 R5
       49 CALL                             R9 1 1
       50 SETTABLEKS                       R9 R8 K20 ["size"]
       52 NEWTABLE                         R9 0 3
       54 GETTABLEKS                       R10 R2 K26 ["None"]
       56 LOADB                            R11 0
       57 LOADB                            R12 1
       58 SETLIST                          R9 R10 3 [1]
       60 SETTABLEKS                       R9 R8 K21 ["isRequired"]
       62 LOADB                            R9 0
       63 SETTABLEKS                       R9 R8 K22 ["RichText"]
       65 SETTABLEKS                       R8 R7 K16 ["controls"]
       67 RETURN                           R7 1
