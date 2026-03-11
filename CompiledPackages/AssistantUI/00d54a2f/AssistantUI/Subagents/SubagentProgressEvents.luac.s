PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+6]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["new"]
        7 CALL                             R2 0 1
        8 SETTABLE                         R2 R1 R0
        9 GETUPVAL                         R2 0
       10 GETTABLE                         R1 R2 R0
       11 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOT                        R2 ; [+5]
        3 LOADK                            R5 K0 ["toolStart"]
        4 MOVE                             R6 R1
        5 NAMECALL                         R3 R2 K1 ["Fire"]
        7 CALL                             R3 3 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOT                        R2 ; [+5]
        3 LOADK                            R5 K0 ["toolComplete"]
        4 MOVE                             R6 R1
        5 NAMECALL                         R3 R2 K1 ["Fire"]
        7 CALL                             R3 3 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLE                         R2 R1 R0
        3 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Signal"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 NEWTABLE                         R3 0 0
       21 NEWTABLE                         R4 4 0
       23 DUPCLOSURE                       R5 K9 [PROTO_0]
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R1
       26 SETTABLEKS                       R5 R4 K10 ["getSignal"]
       28 DUPCLOSURE                       R5 K11 [PROTO_1]
       29 CAPTURE                          VAL R3
       30 SETTABLEKS                       R5 R4 K12 ["fireToolStart"]
       32 DUPCLOSURE                       R5 K13 [PROTO_2]
       33 CAPTURE                          VAL R3
       34 SETTABLEKS                       R5 R4 K14 ["fireToolComplete"]
       36 DUPCLOSURE                       R5 K15 [PROTO_3]
       37 CAPTURE                          VAL R3
       38 SETTABLEKS                       R5 R4 K16 ["cleanup"]
       40 RETURN                           R4 1
