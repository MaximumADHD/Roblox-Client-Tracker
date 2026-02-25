PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["root"]
        3 LOADK                            R3 K1 ["stage"]
        4 LOADK                            R4 K2 ["CheckBody"]
        5 CALL                             R1 3 2
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R4 R0 K0 ["root"]
        9 LOADK                            R5 K3 ["textured"]
       10 LOADB                            R6 1
       11 CALL                             R3 3 2
       12 DUPTABLE                         R5 K7 [{"stage", "setStage", "isTextured", "setIsTextured"}]
       13 SETTABLEKS                       R1 R5 K1 ["stage"]
       15 SETTABLEKS                       R2 R5 K4 ["setStage"]
       17 SETTABLEKS                       R3 R5 K5 ["isTextured"]
       19 SETTABLEKS                       R4 R5 K6 ["setIsTextured"]
       21 GETUPVAL                         R7 1
       22 GETTABLEKS                       R6 R7 K8 ["createElement"]
       24 GETUPVAL                         R8 2
       25 GETTABLEKS                       R7 R8 K9 ["Provider"]
       27 DUPTABLE                         R8 K11 [{"value"}]
       28 SETTABLEKS                       R5 R8 K10 ["value"]
       30 GETTABLEKS                       R9 R0 K12 ["children"]
       32 CALL                             R6 3 -1
       33 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R5 R0 K7 ["Src"]
       20 GETTABLEKS                       R4 R5 K8 ["Util"]
       22 GETTABLEKS                       R3 R4 K9 ["SimpleSerializedStateContext"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R5 R0 K7 ["Src"]
       29 GETTABLEKS                       R4 R5 K10 ["Types"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R7 R0 K7 ["Src"]
       36 GETTABLEKS                       R6 R7 K11 ["Hooks"]
       38 GETTABLEKS                       R5 R6 K12 ["useSerializedState"]
       40 CALL                             R4 1 1
       41 DUPCLOSURE                       R5 K13 [PROTO_0]
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R2
       45 RETURN                           R5 1
