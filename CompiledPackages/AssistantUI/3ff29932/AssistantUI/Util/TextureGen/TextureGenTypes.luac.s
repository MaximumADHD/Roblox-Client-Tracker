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
       11 GETTABLEKS                       R2 R2 K7 ["Gen3dCore"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 DUPTABLE                         R3 K11 [{["Fast"] = "Fast", ["Quality"] = "Quality"}]
       20 NEWTABLE                         R4 2 0
       22 GETTABLEKS                       R5 R3 K9 ["Fast"]
       24 LOADK                            R6 K12 ["rbx-texture-1"]
       25 SETTABLE                         R6 R4 R5
       26 GETTABLEKS                       R5 R3 K10 ["Quality"]
       28 LOADK                            R6 K13 ["rbx-texture-2"]
       29 SETTABLE                         R6 R4 R5
       30 DUPCLOSURE                       R5 K14 [PROTO_0]
       31 CAPTURE                          VAL R1
       32 DUPTABLE                         R6 K18 [{"getLinkTag", "MODE", "MODEL_BY_MODE"}]
       33 SETTABLEKS                       R5 R6 K15 ["getLinkTag"]
       35 SETTABLEKS                       R3 R6 K16 ["MODE"]
       37 SETTABLEKS                       R4 R6 K17 ["MODEL_BY_MODE"]
       39 RETURN                           R6 1
