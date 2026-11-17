PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Provider"]
        4 DUPTABLE                         R3 K2 [{"net"}]
        5 GETUPVAL                         R4 2
        6 SETTABLEKS                       R4 R3 K1 ["net"]
        8 GETUPVAL                         R4 0
        9 GETUPVAL                         R5 3
       10 GETTABLEKS                       R5 R5 K0 ["Provider"]
       12 LOADNIL                          R6
       13 GETTABLEKS                       R7 R0 K3 ["children"]
       15 CALL                             R4 3 -1
       16 CALL                             R1 -1 -1
       17 RETURN                           R1 -1

PROTO_1:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R2
        4 CAPTURE                          VAL R0
        5 GETUPVAL                         R5 0
        6 MOVE                             R6 R4
        7 LOADNIL                          R7
        8 MOVE                             R8 R3
        9 CALL                             R5 3 -1
       10 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Contexts"]
       20 GETTABLEKS                       R4 R4 K10 ["NetworkingContext"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R2 K11 ["createElement"]
       25 DUPCLOSURE                       R5 K12 [PROTO_1]
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R3
       28 RETURN                           R5 1
