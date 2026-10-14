PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Gen3dTypes"]
        3 GETTABLEKS                       R1 R1 K1 ["getUniqueTag"]
        5 LOADK                            R2 K2 ["TexturedMesh"]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["DMNetworking"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Gen3dCore"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Types"]
       25 CALL                             R3 1 1
       26 DUPTABLE                         R4 K12 [{["Fast"] = "Fast", ["Quality"] = "Quality"}]
       27 NEWTABLE                         R5 2 0
       29 GETTABLEKS                       R6 R4 K10 ["Fast"]
       31 LOADK                            R7 K13 ["rbx-texture-1"]
       32 SETTABLE                         R7 R5 R6
       33 GETTABLEKS                       R6 R4 K11 ["Quality"]
       35 LOADK                            R7 K14 ["rbx-texture-2"]
       36 SETTABLE                         R7 R5 R6
       37 NEWTABLE                         R6 2 0
       39 GETTABLEKS                       R8 R4 K10 ["Fast"]
       41 GETTABLE                         R7 R5 R8
       42 GETTABLEKS                       R8 R4 K10 ["Fast"]
       44 SETTABLE                         R8 R6 R7
       45 GETTABLEKS                       R8 R4 K11 ["Quality"]
       47 GETTABLE                         R7 R5 R8
       48 GETTABLEKS                       R8 R4 K11 ["Quality"]
       50 SETTABLE                         R8 R6 R7
       51 DUPCLOSURE                       R7 K15 [PROTO_0]
       52 CAPTURE                          VAL R2
       53 DUPTABLE                         R8 K20 [{"getLinkTag", "MODE", "MODEL_BY_MODE", "MODE_BY_MODEL"}]
       54 SETTABLEKS                       R7 R8 K16 ["getLinkTag"]
       56 SETTABLEKS                       R4 R8 K17 ["MODE"]
       58 SETTABLEKS                       R5 R8 K18 ["MODEL_BY_MODE"]
       60 SETTABLEKS                       R6 R8 K19 ["MODE_BY_MODEL"]
       62 RETURN                           R8 1
