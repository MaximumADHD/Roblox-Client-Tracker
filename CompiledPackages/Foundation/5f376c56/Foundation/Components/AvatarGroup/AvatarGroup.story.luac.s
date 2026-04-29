PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K5 [{"avatars", "type", "max", "size"}]
        5 NEWTABLE                         R4 0 9
        7 DUPTABLE                         R5 K8 [{"userId", "userPresence"}]
        8 LOADK                            R6 K9 [24813339]
        9 SETTABLEKS                       R6 R5 K6 ["userId"]
       11 GETUPVAL                         R7 2
       12 GETTABLEKS                       R6 R7 K10 ["InExperience"]
       14 SETTABLEKS                       R6 R5 K7 ["userPresence"]
       16 LOADK                            R6 K11 [24813338]
       17 DUPTABLE                         R7 K8 [{"userId", "userPresence"}]
       18 LOADK                            R8 K12 [24813333]
       19 SETTABLEKS                       R8 R7 K6 ["userId"]
       21 GETUPVAL                         R9 2
       22 GETTABLEKS                       R8 R9 K10 ["InExperience"]
       24 SETTABLEKS                       R8 R7 K7 ["userPresence"]
       26 LOADK                            R8 K13 [24813337]
       27 LOADK                            R9 K14 [24813336]
       28 LOADK                            R10 K15 [24813335]
       29 LOADK                            R11 K16 [24813334]
       30 LOADK                            R12 K17 [24813332]
       31 LOADK                            R13 K18 [24813331]
       32 SETLIST                          R4 R5 9 [1]
       34 SETTABLEKS                       R4 R3 K1 ["avatars"]
       36 GETTABLEKS                       R5 R0 K19 ["controls"]
       38 GETTABLEKS                       R4 R5 K2 ["type"]
       40 SETTABLEKS                       R4 R3 K2 ["type"]
       42 GETTABLEKS                       R5 R0 K19 ["controls"]
       44 GETTABLEKS                       R4 R5 K3 ["max"]
       46 SETTABLEKS                       R4 R3 K3 ["max"]
       48 GETTABLEKS                       R5 R0 K19 ["controls"]
       50 GETTABLEKS                       R4 R5 K4 ["size"]
       52 SETTABLEKS                       R4 R3 K4 ["size"]
       54 CALL                             R1 2 -1
       55 RETURN                           R1 -1

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
       23 GETTABLEKS                       R5 R6 K10 ["AvatarGroup"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Enums"]
       30 GETTABLEKS                       R6 R7 K12 ["AvatarGroupType"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K11 ["Enums"]
       37 GETTABLEKS                       R7 R8 K13 ["InputSize"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K11 ["Enums"]
       44 GETTABLEKS                       R8 R9 K14 ["UserPresence"]
       46 CALL                             R7 1 1
       47 DUPTABLE                         R8 K18 [{"summary", "stories", "controls"}]
       48 LOADK                            R9 K10 ["AvatarGroup"]
       49 SETTABLEKS                       R9 R8 K15 ["summary"]
       51 NEWTABLE                         R9 0 1
       53 DUPTABLE                         R10 K21 [{"name", "story"}]
       54 LOADK                            R11 K22 ["Base"]
       55 SETTABLEKS                       R11 R10 K19 ["name"]
       57 DUPCLOSURE                       R11 K23 [PROTO_0]
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R7
       61 SETTABLEKS                       R11 R10 K20 ["story"]
       63 SETLIST                          R9 R10 1 [1]
       65 SETTABLEKS                       R9 R8 K16 ["stories"]
       67 DUPTABLE                         R9 K27 [{"type", "max", "size"}]
       68 GETTABLEKS                       R10 R2 K28 ["values"]
       70 MOVE                             R11 R5
       71 CALL                             R10 1 1
       72 SETTABLEKS                       R10 R9 K24 ["type"]
       74 LOADN                            R10 5
       75 SETTABLEKS                       R10 R9 K25 ["max"]
       77 GETTABLEKS                       R10 R2 K28 ["values"]
       79 MOVE                             R11 R6
       80 CALL                             R10 1 1
       81 SETTABLEKS                       R10 R9 K26 ["size"]
       83 SETTABLEKS                       R9 R8 K17 ["controls"]
       85 RETURN                           R8 1
