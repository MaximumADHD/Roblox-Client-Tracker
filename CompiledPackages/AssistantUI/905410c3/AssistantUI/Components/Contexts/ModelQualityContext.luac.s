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
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K4 ["useState"]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R2 R3 K5 ["High"]
       18 CALL                             R1 1 2
       19 LOADNIL                          R3
       20 GETUPVAL                         R4 2
       21 CALL                             R4 0 1
       22 JUMPIFNOT                        R4 ; [+21]
       23 GETTABLEKS                       R5 R0 K6 ["modelQuality"]
       25 OR                               R4 R5 R1
       26 GETTABLEKS                       R6 R0 K7 ["setModelQuality"]
       28 OR                               R5 R6 R2
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R6 R7 K8 ["useMemo"]
       32 NEWCLOSURE                       R7 P0
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R5
       35 NEWTABLE                         R8 0 2
       37 MOVE                             R9 R4
       38 MOVE                             R10 R5
       39 SETLIST                          R8 R9 2 [1]
       41 CALL                             R6 2 1
       42 MOVE                             R3 R6
       43 JUMP                             ; [+12]
       44 DUPTABLE                         R4 K9 [{"modelQuality", "setModelQuality"}]
       45 GETTABLEKS                       R6 R0 K6 ["modelQuality"]
       47 OR                               R5 R6 R1
       48 SETTABLEKS                       R5 R4 K6 ["modelQuality"]
       50 GETTABLEKS                       R6 R0 K7 ["setModelQuality"]
       52 OR                               R5 R6 R2
       53 SETTABLEKS                       R5 R4 K7 ["setModelQuality"]
       55 MOVE                             R3 R4
       56 GETUPVAL                         R4 3
       57 GETUPVAL                         R6 4
       58 GETTABLEKS                       R5 R6 K10 ["Provider"]
       60 DUPTABLE                         R6 K12 [{"value"}]
       61 SETTABLEKS                       R3 R6 K11 ["value"]
       63 GETTABLEKS                       R7 R0 K13 ["children"]
       65 CALL                             R4 3 -1
       66 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Flags"]
       23 GETTABLEKS                       R4 R5 K10 ["FFlagAssistantUseMemoizedContextValues"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R1 K11 ["createElement"]
       28 DUPTABLE                         R5 K14 [{"High", "Low"}]
       29 LOADK                            R6 K12 ["High"]
       30 SETTABLEKS                       R6 R5 K12 ["High"]
       32 LOADK                            R6 K13 ["Low"]
       33 SETTABLEKS                       R6 R5 K13 ["Low"]
       35 DUPTABLE                         R6 K18 [{"default", "modelQuality", "setModelQuality"}]
       36 LOADB                            R7 1
       37 SETTABLEKS                       R7 R6 K15 ["default"]
       39 GETTABLEKS                       R7 R5 K12 ["High"]
       41 SETTABLEKS                       R7 R6 K16 ["modelQuality"]
       43 DUPCLOSURE                       R7 K19 [PROTO_0]
       44 SETTABLEKS                       R7 R6 K17 ["setModelQuality"]
       46 GETTABLEKS                       R7 R1 K20 ["createContext"]
       48 MOVE                             R8 R6
       49 CALL                             R7 1 1
       50 DUPCLOSURE                       R8 K21 [PROTO_2]
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R7
       56 DUPTABLE                         R9 K25 [{"Context", "Provider", "ModelQuality"}]
       57 SETTABLEKS                       R7 R9 K22 ["Context"]
       59 SETTABLEKS                       R8 R9 K23 ["Provider"]
       61 SETTABLEKS                       R5 R9 K24 ["ModelQuality"]
       63 RETURN                           R9 1
