PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R0 K2 [{"modelQuality", "setModelQuality"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["modelQuality"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["setModelQuality"]
        7 RETURN                           R0 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["default"]
        2 JUMPIFEQKNIL                     R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        8 LOADK                            R3 K1 ["default is not supported in this context"]
        9 GETIMPORT                        R1 K3 [assert]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K4 ["useState"]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K5 ["High"]
       18 CALL                             R1 1 2
       19 GETTABLEKS                       R4 R0 K6 ["modelQuality"]
       21 OR                               R3 R4 R1
       22 GETTABLEKS                       R5 R0 K7 ["setModelQuality"]
       24 OR                               R4 R5 R2
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K8 ["useMemo"]
       28 NEWCLOSURE                       R6 P0
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R4
       31 NEWTABLE                         R7 0 2
       33 MOVE                             R8 R3
       34 MOVE                             R9 R4
       35 SETLIST                          R7 R8 2 [1]
       37 CALL                             R5 2 1
       38 GETUPVAL                         R6 2
       39 GETUPVAL                         R7 3
       40 GETTABLEKS                       R7 R7 K9 ["Provider"]
       42 DUPTABLE                         R8 K11 [{"value"}]
       43 SETTABLEKS                       R5 R8 K10 ["value"]
       45 GETTABLEKS                       R9 R0 K12 ["children"]
       47 CALL                             R6 3 -1
       48 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R3 R1 K9 ["createElement"]
       21 DUPTABLE                         R4 K12 [{"High", "Low"}]
       22 LOADK                            R5 K10 ["High"]
       23 SETTABLEKS                       R5 R4 K10 ["High"]
       25 LOADK                            R5 K11 ["Low"]
       26 SETTABLEKS                       R5 R4 K11 ["Low"]
       28 DUPTABLE                         R5 K16 [{"default", "modelQuality", "setModelQuality"}]
       29 LOADB                            R6 1
       30 SETTABLEKS                       R6 R5 K13 ["default"]
       32 GETTABLEKS                       R6 R4 K10 ["High"]
       34 SETTABLEKS                       R6 R5 K14 ["modelQuality"]
       36 DUPCLOSURE                       R6 K17 [PROTO_0]
       37 SETTABLEKS                       R6 R5 K15 ["setModelQuality"]
       39 GETTABLEKS                       R6 R1 K18 ["createContext"]
       41 MOVE                             R7 R5
       42 CALL                             R6 1 1
       43 DUPCLOSURE                       R7 K19 [PROTO_2]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R6
       48 DUPTABLE                         R8 K23 [{"Context", "Provider", "ModelQuality"}]
       49 SETTABLEKS                       R6 R8 K20 ["Context"]
       51 SETTABLEKS                       R7 R8 K21 ["Provider"]
       53 SETTABLEKS                       R4 R8 K22 ["ModelQuality"]
       55 RETURN                           R8 1
