PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ModelQuality"]
        6 GETTABLEKS                       R2 R2 K2 ["High"]
        8 CALL                             R1 1 2
        9 SETUPVAL                         R1 2
       10 SETUPVAL                         R2 3
       11 GETUPVAL                         R3 4
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K3 ["Provider"]
       15 DUPTABLE                         R5 K6 [{"modelQuality", "setModelQuality"}]
       16 SETTABLEKS                       R1 R5 K4 ["modelQuality"]
       18 SETTABLEKS                       R2 R5 K5 ["setModelQuality"]
       20 GETTABLEKS                       R6 R0 K7 ["children"]
       22 CALL                             R3 3 -1
       23 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["lastModelQuality is not initialized yet"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["lastSetModelQuality is not initialized yet"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          REF R0
        6 CAPTURE                          REF R1
        7 CAPTURE                          UPVAL U2
        8 MOVE                             R3 R2
        9 DUPTABLE                         R4 K2 [{"getModelQuality", "setModelQuality"}]
       10 NEWCLOSURE                       R5 P1
       11 CAPTURE                          REF R0
       12 SETTABLEKS                       R5 R4 K0 ["getModelQuality"]
       14 NEWCLOSURE                       R5 P2
       15 CAPTURE                          REF R1
       16 SETTABLEKS                       R5 R4 K1 ["setModelQuality"]
       18 CLOSEUPVALS                      R0
       19 RETURN                           R3 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["ModelQualityContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Types"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K12 ["createElement"]
       30 DUPCLOSURE                       R5 K13 [PROTO_3]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R4
       34 RETURN                           R5 1
