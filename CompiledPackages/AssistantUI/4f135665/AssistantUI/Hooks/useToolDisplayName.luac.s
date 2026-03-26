PROTO_0:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R1 R0 K0 ["getToolInfoByAlias"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R2 R1 K1 ["actualToolName"]
        7 SETUPVAL                         R2 1
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["DEPRECATED_unpackToolIdentifier"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 2
        5 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADK                            R0 K0 [""]
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 1
        6 JUMPIFNOT                        R0 ; [+11]
        7 GETUPVAL                         R0 0
        8 GETIMPORT                        R1 K2 [pcall]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          REF R0
       14 CALL                             R1 1 0
       15 CLOSEUPVALS                      R0
       16 RETURN                           R0 1
       17 CLOSEUPVALS                      R0
       18 GETIMPORT                        R0 K2 [pcall]
       20 NEWCLOSURE                       R1 P1
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U0
       23 CALL                             R0 1 2
       24 JUMPIF                           R0 ; [+2]
       25 GETUPVAL                         R2 0
       26 RETURN                           R2 1
       27 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useMemo"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U3
       10 NEWTABLE                         R4 0 2
       12 MOVE                             R5 R0
       13 MOVE                             R6 R1
       14 SETLIST                          R4 R5 2 [1]
       16 CALL                             R2 2 1
       17 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["ModelContextProtocol"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Hooks"]
       25 GETTABLEKS                       R4 R5 K10 ["useWithClient"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Flags"]
       32 GETTABLEKS                       R5 R6 K12 ["FFlagAssistantToolNameAlias"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R6 R1 K13 ["Util"]
       37 GETTABLEKS                       R5 R6 K14 ["MultiplexUtils"]
       39 DUPCLOSURE                       R6 K15 [PROTO_4]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R5
       44 RETURN                           R6 1
