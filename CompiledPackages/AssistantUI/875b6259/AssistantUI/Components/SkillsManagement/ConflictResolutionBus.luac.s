PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 GETUPVAL                         R6 1
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_1:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 MOVE                             R6 R5
        6 GETUPVAL                         R7 0
        7 CALL                             R6 1 0
        8 FORGLOOP                         R1 2 ; [-4]
       10 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 MOVE                             R5 R4
        7 GETUPVAL                         R6 0
        8 CALL                             R5 1 0
        9 FORGLOOP                         R0 2 ; [-4]
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R5 1
        5 JUMPIFNOTEQ                      R4 R5 ; [+7]
        7 GETIMPORT                        R5 K2 [table.remove]
        9 GETUPVAL                         R6 0
       10 MOVE                             R7 R3
       11 CALL                             R5 2 0
       12 RETURN                           R0 0
       13 FORGLOOP                         R0 2 ; [-10]
       15 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 GETUPVAL                         R2 1
        3 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R1 K2 [table.insert]
        8 CALL                             R1 2 0
        9 NEWCLOSURE                       R1 P1
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useEffect"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U2
       11 NEWTABLE                         R4 0 0
       13 CALL                             R2 2 0
       14 RETURN                           R0 1

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
       14 LOADNIL                          R2
       15 NEWTABLE                         R3 0 0
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R3
       19 CAPTURE                          REF R2
       20 NEWTABLE                         R5 4 0
       22 NEWCLOSURE                       R6 P1
       23 CAPTURE                          REF R2
       24 CAPTURE                          VAL R3
       25 SETTABLEKS                       R6 R5 K8 ["present"]
       27 NEWCLOSURE                       R6 P2
       28 CAPTURE                          REF R2
       29 CAPTURE                          VAL R3
       30 SETTABLEKS                       R6 R5 K9 ["dismiss"]
       32 NEWCLOSURE                       R6 P3
       33 CAPTURE                          VAL R1
       34 CAPTURE                          REF R2
       35 CAPTURE                          VAL R3
       36 SETTABLEKS                       R6 R5 K10 ["usePending"]
       38 CLOSEUPVALS                      R2
       39 RETURN                           R5 1
