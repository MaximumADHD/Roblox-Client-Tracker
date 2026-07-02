PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K5 [{"avatars", "type", "max", "size"}]
        5 NEWTABLE                         R4 0 9
        7 DUPTABLE                         R5 K9 [{["userId"] = 24813339, ["userPresence"]}]
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R6 R6 K10 ["InExperience"]
       11 SETTABLEKS                       R6 R5 K8 ["userPresence"]
       13 LOADK                            R6 K11 [24813338]
       14 DUPTABLE                         R7 K13 [{["userId"] = 24813333, ["userPresence"]}]
       15 GETUPVAL                         R8 2
       16 GETTABLEKS                       R8 R8 K10 ["InExperience"]
       18 SETTABLEKS                       R8 R7 K8 ["userPresence"]
       20 LOADK                            R8 K14 [24813337]
       21 LOADK                            R9 K15 [24813336]
       22 LOADK                            R10 K16 [24813335]
       23 LOADK                            R11 K17 [24813334]
       24 LOADK                            R12 K18 [24813332]
       25 LOADK                            R13 K19 [24813331]
       26 SETLIST                          R4 R5 9 [1]
       28 SETTABLEKS                       R4 R3 K1 ["avatars"]
       30 GETTABLEKS                       R4 R0 K20 ["controls"]
       32 GETTABLEKS                       R4 R4 K2 ["type"]
       34 SETTABLEKS                       R4 R3 K2 ["type"]
       36 GETTABLEKS                       R4 R0 K20 ["controls"]
       38 GETTABLEKS                       R4 R4 K3 ["max"]
       40 SETTABLEKS                       R4 R3 K3 ["max"]
       42 GETTABLEKS                       R4 R0 K20 ["controls"]
       44 GETTABLEKS                       R4 R4 K4 ["size"]
       46 SETTABLEKS                       R4 R3 K4 ["size"]
       48 CALL                             R1 2 -1
       49 RETURN                           R1 -1

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
       23 GETTABLEKS                       R5 R5 K10 ["AvatarGroup"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Enums"]
       30 GETTABLEKS                       R6 R6 K12 ["AvatarGroupType"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K11 ["Enums"]
       37 GETTABLEKS                       R7 R7 K13 ["InputSize"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K11 ["Enums"]
       44 GETTABLEKS                       R8 R8 K14 ["UserPresence"]
       46 CALL                             R7 1 1
       47 DUPTABLE                         R8 K18 [{["summary"] = "AvatarGroup", ["stories"], ["controls"]}]
       48 NEWTABLE                         R9 0 1
       50 DUPTABLE                         R10 K22 [{["name"] = "Base", ["story"]}]
       51 DUPCLOSURE                       R11 K23 [PROTO_0]
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R7
       55 SETTABLEKS                       R11 R10 K21 ["story"]
       57 SETLIST                          R9 R10 1 [1]
       59 SETTABLEKS                       R9 R8 K16 ["stories"]
       61 DUPTABLE                         R9 K28 [{["type"], ["max"] = 5, ["size"]}]
       62 GETTABLEKS                       R10 R2 K29 ["values"]
       64 MOVE                             R11 R5
       65 CALL                             R10 1 1
       66 SETTABLEKS                       R10 R9 K24 ["type"]
       68 GETTABLEKS                       R10 R2 K29 ["values"]
       70 MOVE                             R11 R6
       71 CALL                             R10 1 1
       72 SETTABLEKS                       R10 R9 K27 ["size"]
       74 SETTABLEKS                       R9 R8 K17 ["controls"]
       76 RETURN                           R8 1
