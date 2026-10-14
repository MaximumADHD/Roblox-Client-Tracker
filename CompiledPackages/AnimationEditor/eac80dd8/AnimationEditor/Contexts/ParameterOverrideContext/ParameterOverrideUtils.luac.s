PROTO_0:
        0 GETIMPORT                        R3 K2 [table.clone]
        2 MOVE                             R4 R0
        3 CALL                             R3 1 1
        4 SETTABLE                         R2 R3 R1
        5 GETIMPORT                        R4 K4 [table.freeze]
        7 MOVE                             R5 R3
        8 CALL                             R4 1 -1
        9 RETURN                           R4 -1

PROTO_1:
        0 GETTABLE                         R2 R0 R1
        1 JUMPIFNOTEQKNIL                  R2 ; [+4]
        3 LOADB                            R2 0
        4 MOVE                             R3 R0
        5 RETURN                           R2 2
        6 GETIMPORT                        R2 K2 [table.clone]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 LOADNIL                          R3
       11 SETTABLE                         R3 R2 R1
       12 LOADB                            R3 1
       13 GETIMPORT                        R4 K4 [table.freeze]
       15 MOVE                             R5 R2
       16 CALL                             R4 1 -1
       17 RETURN                           R3 -1

PROTO_2:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 JUMPIF                           R3 ; [+2]
        4 NEWTABLE                         R3 0 0
        6 CALL                             R2 1 1
        7 GETTABLE                         R3 R2 R1
        8 JUMPIF                           R3 ; [+3]
        9 LOADN                            R3 1
       10 SETTABLE                         R3 R2 R1
       11 JUMP                             ; [+3]
       12 GETTABLE                         R4 R2 R1
       13 ADDK                             R3 R4 K3 [1]
       14 SETTABLE                         R3 R2 R1
       15 GETIMPORT                        R3 K5 [table.freeze]
       17 MOVE                             R4 R2
       18 CALL                             R3 1 -1
       19 RETURN                           R3 -1

PROTO_3:
        0 GETTABLE                         R2 R0 R1
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 1
        3 GETIMPORT                        R2 K2 [table.clone]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 GETTABLE                         R4 R2 R1
        8 SUBK                             R3 R4 K3 [1]
        9 SETTABLE                         R3 R2 R1
       10 GETTABLE                         R3 R2 R1
       11 LOADN                            R4 0
       12 JUMPIFNOTLE                      R3 R4 ; [+3]
       14 LOADNIL                          R3
       15 SETTABLE                         R3 R2 R1
       16 GETIMPORT                        R3 K5 [table.freeze]
       18 MOVE                             R4 R2
       19 CALL                             R3 1 -1
       20 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["setParameterValue"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["removeParameter"]
        9 DUPCLOSURE                       R1 K4 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K5 ["incrementParameterCount"]
       12 DUPCLOSURE                       R1 K6 [PROTO_3]
       13 SETTABLEKS                       R1 R0 K7 ["decrementParameterCount"]
       15 RETURN                           R0 1
