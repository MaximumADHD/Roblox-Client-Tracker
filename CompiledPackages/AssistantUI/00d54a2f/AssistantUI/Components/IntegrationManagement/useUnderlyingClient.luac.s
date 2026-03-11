PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["clientConfig"]
        2 GETTABLEKS                       R1 R2 K1 ["identifier"]
        4 GETUPVAL                         R2 0
        5 JUMPIFNOTEQ                      R1 R2 ; [+5]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R2 R0 K2 ["client"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["clientConfig"]
        2 GETTABLEKS                       R1 R2 K1 ["identifier"]
        4 GETUPVAL                         R2 0
        5 JUMPIFNOTEQ                      R1 R2 ; [+4]
        7 GETUPVAL                         R1 1
        8 LOADNIL                          R2
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 NAMECALL                         R2 R0 K0 ["getClient"]
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 GETTABLEKS                       R1 R0 K1 ["onClientAdded"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U0
       11 NAMECALL                         R1 R1 K2 ["Connect"]
       13 CALL                             R1 2 1
       14 SETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R0 K3 ["onClientClosed"]
       17 NEWCLOSURE                       R3 P1
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U0
       20 NAMECALL                         R1 R1 K2 ["Connect"]
       22 CALL                             R1 2 1
       23 SETUPVAL                         R1 3
       24 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 JUMPIFNOT                        R0 ; [+4]
        8 GETUPVAL                         R0 1
        9 NAMECALL                         R0 R0 K0 ["Disconnect"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 GETUPVAL                         R2 0
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          REF R0
        7 CAPTURE                          REF R1
        8 CALL                             R2 1 0
        9 NEWCLOSURE                       R2 P1
       10 CAPTURE                          REF R0
       11 CAPTURE                          REF R1
       12 CLOSEUPVALS                      R0
       13 RETURN                           R2 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["integration"]
        2 GETTABLEKS                       R2 R1 K1 ["label"]
        4 GETTABLEKS                       R3 R0 K2 ["withClient"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K3 ["useState"]
        9 LOADNIL                          R5
       10 CALL                             R4 1 2
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R6 R7 K4 ["useEffect"]
       14 NEWCLOSURE                       R7 P0
       15 CAPTURE                          VAL R3
       16 CAPTURE                          VAL R5
       17 CAPTURE                          VAL R2
       18 NEWTABLE                         R8 0 2
       20 MOVE                             R9 R1
       21 MOVE                             R10 R3
       22 SETLIST                          R8 R9 2 [1]
       24 CALL                             R6 2 0
       25 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R4 K1 [script]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["IntegrationTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Parent"]
       20 GETTABLEKS                       R3 R4 K8 ["ModelContextProtocol"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Parent"]
       27 GETTABLEKS                       R4 R5 K9 ["React"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K10 [PROTO_5]
       31 CAPTURE                          VAL R3
       32 RETURN                           R4 1
