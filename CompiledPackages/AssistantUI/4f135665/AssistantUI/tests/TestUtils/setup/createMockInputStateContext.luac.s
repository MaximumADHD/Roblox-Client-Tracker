PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 SETUPVAL                         R1 1
        6 SETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 GETUPVAL                         R5 4
        9 GETTABLEKS                       R4 R5 K1 ["Provider"]
       11 DUPTABLE                         R5 K3 [{"override"}]
       12 SETTABLEKS                       R1 R5 K2 ["override"]
       14 GETTABLEKS                       R6 R0 K4 ["children"]
       16 CALL                             R3 3 -1
       17 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["lastSetOverride is not initialized yet"]
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
        4 CAPTURE                          REF R0
        5 CAPTURE                          REF R1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 MOVE                             R3 R2
        9 DUPTABLE                         R4 K2 [{"getInputOverride", "setInputOverride"}]
       10 NEWCLOSURE                       R5 P1
       11 CAPTURE                          REF R0
       12 SETTABLEKS                       R5 R4 K0 ["getInputOverride"]
       14 NEWCLOSURE                       R5 P2
       15 CAPTURE                          REF R1
       16 SETTABLEKS                       R5 R4 K1 ["setInputOverride"]
       18 CLOSEUPVALS                      R0
       19 RETURN                           R3 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Components"]
       11 GETTABLEKS                       R3 R4 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R3 K8 ["InputStateContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R4 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Types"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K12 ["createElement"]
       30 DUPCLOSURE                       R5 K13 [PROTO_3]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R1
       34 RETURN                           R5 1
