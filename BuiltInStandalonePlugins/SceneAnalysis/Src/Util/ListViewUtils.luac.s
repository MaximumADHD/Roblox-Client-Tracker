PROTO_0:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R0 R3 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 GETUPVAL                         R3 1
        8 JUMPIFNOT                        R3 ; [+15]
        9 GETUPVAL                         R3 1
       10 MOVE                             R4 R0
       11 MOVE                             R5 R1
       12 MOVE                             R6 R2
       13 CALL                             R3 3 1
       14 JUMPIFNOT                        R3 ; [+18]
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R5 R0 K0 ["Id"]
       18 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       20 GETIMPORT                        R3 K3 [table.insert]
       22 CALL                             R3 2 0
       23 JUMP                             ; [+9]
       24 JUMPIF                           R2 ; [+8]
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R5 R0 K0 ["Id"]
       28 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       30 GETIMPORT                        R3 K3 [table.insert]
       32 CALL                             R3 2 0
       33 GETUPVAL                         R3 3
       34 GETTABLEKS                       R4 R0 K0 ["Id"]
       36 SETTABLE                         R0 R3 R4
       37 JUMPIFNOT                        R1 ; [+4]
       38 GETUPVAL                         R3 4
       39 GETTABLEKS                       R4 R0 K0 ["Id"]
       41 SETTABLE                         R1 R3 R4
       42 GETTABLEKS                       R4 R0 K4 ["Children"]
       44 FASTCALL1                        TYPE R4 ; [+2]
       45 GETIMPORT                        R3 K6 [type]
       47 CALL                             R3 1 1
       48 JUMPIFNOTEQKS                    R3 K1 ["table"] ; [+14]
       50 GETIMPORT                        R3 K8 [pairs]
       52 GETTABLEKS                       R4 R0 K4 ["Children"]
       54 CALL                             R3 1 3
       55 FORGPREP_NEXT                    R3
       56 GETUPVAL                         R8 5
       57 MOVE                             R9 R7
       58 GETTABLEKS                       R10 R0 K0 ["Id"]
       60 CALL                             R8 2 0
       61 FORGLOOP                         R3 2 ; [-6]
       63 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 NEWTABLE                         R4 0 0
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R3
       11 CAPTURE                          VAL R4
       12 CAPTURE                          VAL R5
       13 MOVE                             R6 R5
       14 MOVE                             R7 R0
       15 LOADNIL                          R8
       16 CALL                             R6 2 0
       17 RETURN                           R2 3

PROTO_2:
        0 JUMPIFNOT                        R2 ; [+2]
        1 LOADB                            R3 0
        2 RETURN                           R3 1
        3 LOADB                            R3 0
        4 GETTABLEKS                       R5 R0 K0 ["Children"]
        6 FASTCALL1                        TYPE R5 ; [+2]
        7 GETIMPORT                        R4 K2 [type]
        9 CALL                             R4 1 1
       10 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+10]
       12 GETIMPORT                        R4 K5 [next]
       14 GETTABLEKS                       R5 R0 K0 ["Children"]
       16 CALL                             R4 1 1
       17 JUMPIFNOTEQKNIL                  R4 ; [+2]
       19 LOADB                            R3 0 +1
       20 LOADB                            R3 1
       21 NOT                              R4 R3
       22 RETURN                           R4 1

PROTO_3:
        0 JUMPIFNOT                        R2 ; [+2]
        1 LOADB                            R4 0
        2 RETURN                           R4 1
        3 JUMPIFEQ                         R1 R3 ; [+2]
        5 LOADB                            R4 0 +1
        6 LOADB                            R4 1
        7 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPCLOSURE                       R1 K0 [PROTO_1]
        4 SETTABLEKS                       R1 R0 K1 ["buildNodeMaps"]
        6 DUPCLOSURE                       R1 K2 [PROTO_2]
        7 SETTABLEKS                       R1 R0 K3 ["isLeafNode"]
        9 DUPCLOSURE                       R1 K4 [PROTO_3]
       10 SETTABLEKS                       R1 R0 K5 ["isTopLevelNode"]
       12 RETURN                           R0 1
