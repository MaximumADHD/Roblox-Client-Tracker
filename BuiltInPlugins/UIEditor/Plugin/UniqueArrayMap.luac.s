PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["map"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIF                           R2 ; [+18]
        5 GETUPVAL                         R3 0
        6 NEWTABLE                         R4 0 2
        8 MOVE                             R5 R0
        9 MOVE                             R6 R1
       10 SETLIST                          R4 R5 2 [1]
       12 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       14 GETIMPORT                        R2 K3 [table.insert]
       16 CALL                             R2 2 0
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K0 ["map"]
       20 GETUPVAL                         R4 0
       21 LENGTH                           R3 R4
       22 SETTABLE                         R3 R2 R0
       23 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["map"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFNOT                        R2 ; [+22]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["map"]
        8 GETTABLE                         R2 R3 R0
        9 GETIMPORT                        R3 K3 [table.remove]
       11 GETUPVAL                         R4 1
       12 MOVE                             R5 R2
       13 CALL                             R3 2 0
       14 MOVE                             R5 R2
       15 GETUPVAL                         R6 0
       16 LENGTH                           R3 R6
       17 LOADN                            R4 1
       18 FORNPREP                         R3
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R6 R6 K0 ["map"]
       22 GETUPVAL                         R9 0
       23 GETTABLE                         R8 R9 R5
       24 GETTABLEN                        R7 R8 1
       25 SETTABLE                         R5 R6 R7
       26 FORNLOOP                         R3
       27 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["map"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R0 R1
        2 LOADN                            R1 0
        3 JUMPIFNOTLT                      R1 R0 ; [+15]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["map"]
        8 GETUPVAL                         R3 0
        9 GETTABLEN                        R2 R3 1
       10 GETTABLEN                        R1 R2 1
       11 LOADNIL                          R2
       12 SETTABLE                         R2 R0 R1
       13 GETIMPORT                        R0 K3 [table.remove]
       15 GETUPVAL                         R1 0
       16 LOADN                            R2 1
       17 CALL                             R0 2 0
       18 JUMPBACK                         ; [-19]
       19 RETURN                           R0 0

PROTO_4:
        0 JUMPIFNOTEQKS                    R1 K0 ["insert"] ; [+4]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 RETURN                           R2 1
        5 JUMPIFNOTEQKS                    R1 K1 ["remove"] ; [+5]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U0
       10 RETURN                           R2 1
       11 JUMPIFNOTEQKS                    R1 K2 ["exists"] ; [+4]
       13 NEWCLOSURE                       R2 P2
       14 CAPTURE                          VAL R0
       15 RETURN                           R2 1
       16 JUMPIFNOTEQKS                    R1 K3 ["clear"] ; [+4]
       18 NEWCLOSURE                       R2 P3
       19 CAPTURE                          VAL R0
       20 RETURN                           R2 1
       21 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R0 2 0
        2 NEWTABLE                         R1 0 0
        4 SETTABLEKS                       R1 R0 K0 ["map"]
        6 NEWTABLE                         R1 0 0
        8 SETTABLEKS                       R1 R0 K1 ["mt"]
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          VAL R0
       12 GETTABLEKS                       R2 R0 K1 ["mt"]
       14 SETTABLEKS                       R1 R2 K2 ["__index"]
       16 GETTABLEKS                       R3 R0 K1 ["mt"]
       18 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
       20 MOVE                             R2 R0
       21 GETIMPORT                        R1 K4 [setmetatable]
       23 CALL                             R1 2 0
       24 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_5]
        4 SETTABLEKS                       R1 R0 K1 ["new"]
        6 RETURN                           R0 1
