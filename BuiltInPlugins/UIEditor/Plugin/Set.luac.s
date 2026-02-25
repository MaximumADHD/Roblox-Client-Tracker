PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JSONEncode"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 MOVE                             R1 R0
        1 FASTCALL1                        TYPE R1 ; [+3]
        2 MOVE                             R3 R1
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+8]
        8 MOVE                             R2 R1
        9 GETUPVAL                         R3 0
       10 MOVE                             R5 R2
       11 NAMECALL                         R3 R3 K3 ["JSONEncode"]
       13 CALL                             R3 2 1
       14 MOVE                             R1 R3
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R3 R4 K4 ["map"]
       18 GETTABLE                         R2 R3 R1
       19 JUMPIF                           R2 ; [+13]
       20 GETUPVAL                         R3 1
       21 FASTCALL2                        TABLE_INSERT R3 R0 ; [+4]
       23 MOVE                             R4 R0
       24 GETIMPORT                        R2 K6 [table.insert]
       26 CALL                             R2 2 0
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R2 R3 K4 ["map"]
       30 GETUPVAL                         R4 1
       31 LENGTH                           R3 R4
       32 SETTABLE                         R3 R2 R1
       33 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R1 R0
        1 FASTCALL1                        TYPE R1 ; [+3]
        2 MOVE                             R3 R1
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+8]
        8 MOVE                             R2 R1
        9 GETUPVAL                         R3 0
       10 MOVE                             R5 R2
       11 NAMECALL                         R3 R3 K3 ["JSONEncode"]
       13 CALL                             R3 2 1
       14 MOVE                             R1 R3
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R3 R4 K4 ["map"]
       18 GETTABLE                         R2 R3 R1
       19 JUMPIFNOT                        R2 ; [+35]
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R3 R4 K4 ["map"]
       23 GETTABLE                         R2 R3 R1
       24 GETIMPORT                        R3 K6 [table.remove]
       26 GETUPVAL                         R4 2
       27 MOVE                             R5 R2
       28 CALL                             R3 2 0
       29 MOVE                             R5 R2
       30 GETUPVAL                         R6 1
       31 LENGTH                           R3 R6
       32 LOADN                            R4 1
       33 FORNPREP                         R3
       34 GETUPVAL                         R6 1
       35 GETTABLE                         R1 R6 R5
       36 FASTCALL1                        TYPE R1 ; [+3]
       37 MOVE                             R7 R1
       38 GETIMPORT                        R6 K1 [type]
       40 CALL                             R6 1 1
       41 JUMPIFNOTEQKS                    R6 K2 ["table"] ; [+8]
       43 MOVE                             R6 R1
       44 GETUPVAL                         R7 0
       45 MOVE                             R9 R6
       46 NAMECALL                         R7 R7 K3 ["JSONEncode"]
       48 CALL                             R7 2 1
       49 MOVE                             R1 R7
       50 GETUPVAL                         R7 1
       51 GETTABLEKS                       R6 R7 K4 ["map"]
       53 SETTABLE                         R5 R6 R1
       54 FORNLOOP                         R3
       55 RETURN                           R0 0

PROTO_3:
        0 MOVE                             R1 R0
        1 FASTCALL1                        TYPE R1 ; [+3]
        2 MOVE                             R3 R1
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+8]
        8 MOVE                             R2 R1
        9 GETUPVAL                         R3 0
       10 MOVE                             R5 R2
       11 NAMECALL                         R3 R3 K3 ["JSONEncode"]
       13 CALL                             R3 2 1
       14 MOVE                             R1 R3
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R4 R5 K4 ["map"]
       18 GETTABLE                         R3 R4 R1
       19 JUMPIFNOTEQKNIL                  R3 ; [+2]
       21 LOADB                            R2 0 +1
       22 LOADB                            R2 1
       23 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R0 R1
        2 LOADN                            R1 0
        3 JUMPIFNOTLT                      R1 R0 ; [+28]
        5 GETUPVAL                         R1 0
        6 GETTABLEN                        R0 R1 1
        7 FASTCALL1                        TYPE R0 ; [+3]
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K1 [type]
       11 CALL                             R1 1 1
       12 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+8]
       14 MOVE                             R1 R0
       15 GETUPVAL                         R2 1
       16 MOVE                             R4 R1
       17 NAMECALL                         R2 R2 K3 ["JSONEncode"]
       19 CALL                             R2 2 1
       20 MOVE                             R0 R2
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R1 R2 K4 ["map"]
       24 LOADNIL                          R2
       25 SETTABLE                         R2 R1 R0
       26 GETIMPORT                        R1 K6 [table.remove]
       28 GETUPVAL                         R2 0
       29 LOADN                            R3 1
       30 CALL                             R1 2 0
       31 JUMPBACK                         ; [-32]
       32 RETURN                           R0 0

PROTO_5:
        0 JUMPIFNOTEQKS                    R1 K0 ["insert"] ; [+5]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 RETURN                           R2 1
        6 JUMPIFNOTEQKS                    R1 K1 ["remove"] ; [+6]
        8 NEWCLOSURE                       R2 P1
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U1
       12 RETURN                           R2 1
       13 JUMPIFNOTEQKS                    R1 K2 ["exists"] ; [+5]
       15 NEWCLOSURE                       R2 P2
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          VAL R0
       18 RETURN                           R2 1
       19 JUMPIFNOTEQKS                    R1 K3 ["clear"] ; [+5]
       21 NEWCLOSURE                       R2 P3
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U0
       24 RETURN                           R2 1
       25 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R0 2 0
        2 NEWTABLE                         R1 0 0
        4 SETTABLEKS                       R1 R0 K0 ["map"]
        6 NEWTABLE                         R1 0 0
        8 SETTABLEKS                       R1 R0 K1 ["mt"]
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          VAL R0
       13 GETTABLEKS                       R2 R0 K1 ["mt"]
       15 SETTABLEKS                       R1 R2 K2 ["__index"]
       17 GETTABLEKS                       R3 R0 K1 ["mt"]
       19 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
       21 MOVE                             R2 R0
       22 GETIMPORT                        R1 K4 [setmetatable]
       24 CALL                             R1 2 0
       25 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 NEWTABLE                         R2 1 0
       11 DUPCLOSURE                       R3 K5 [PROTO_6]
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R3 R2 K6 ["new"]
       15 RETURN                           R2 1
