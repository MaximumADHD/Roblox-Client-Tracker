PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLE                         R2 R1 R0
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R1 R2 R0
        5 JUMPIFNOT                        R1 ; [+6]
        6 NAMECALL                         R2 R1 K0 ["Disconnect"]
        8 CALL                             R2 1 0
        9 GETUPVAL                         R2 1
       10 LOADNIL                          R3
       11 SETTABLE                         R3 R2 R0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 SETTABLE                         R2 R1 R0
        4 GETUPVAL                         R2 2
        5 GETTABLE                         R1 R2 R0
        6 JUMPIFNOT                        R1 ; [+6]
        7 NAMECALL                         R2 R1 K0 ["Disconnect"]
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 2
       11 LOADNIL                          R3
       12 SETTABLE                         R3 R2 R0
       13 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["GetDebugId"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R3 0
        4 GETTABLE                         R2 R3 R1
        5 JUMPIFNOT                        R2 ; [+1]
        6 RETURN                           R1 1
        7 GETUPVAL                         R2 0
        8 SETTABLE                         R0 R2 R1
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R3 R0 K1 ["Destroying"]
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U1
       16 NAMECALL                         R3 R3 K2 ["Connect"]
       18 CALL                             R3 2 1
       19 SETTABLE                         R3 R2 R1
       20 RETURN                           R1 1

PROTO_3:
        0 NAMECALL                         R2 R0 K0 ["GetDebugId"]
        2 CALL                             R2 1 1
        3 GETUPVAL                         R4 0
        4 GETTABLE                         R3 R4 R2
        5 JUMPIFNOT                        R3 ; [+2]
        6 MOVE                             R1 R2
        7 RETURN                           R1 1
        8 GETUPVAL                         R3 0
        9 SETTABLE                         R0 R3 R2
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R4 R0 K1 ["Destroying"]
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U1
       17 NAMECALL                         R4 R4 K2 ["Connect"]
       19 CALL                             R4 2 1
       20 SETTABLE                         R4 R3 R2
       21 MOVE                             R1 R2
       22 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+24]
        3 GETTABLEKS                       R2 R1 K0 ["Parent"]
        5 JUMPIFNOTEQKNIL                  R2 ; [+21]
        7 LOADK                            R4 K1 ["Instance"]
        8 NAMECALL                         R2 R1 K2 ["IsA"]
       10 CALL                             R2 2 1
       11 JUMPIFNOTEQKB                    R2 FALSE ; [+15]
       13 GETUPVAL                         R2 0
       14 LOADNIL                          R3
       15 SETTABLE                         R3 R2 R0
       16 GETUPVAL                         R3 1
       17 GETTABLE                         R2 R3 R0
       18 JUMPIFNOT                        R2 ; [+6]
       19 NAMECALL                         R3 R2 K3 ["Disconnect"]
       21 CALL                             R3 1 0
       22 GETUPVAL                         R3 1
       23 LOADNIL                          R4
       24 SETTABLE                         R4 R3 R0
       25 LOADNIL                          R2
       26 RETURN                           R2 1
       27 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R5 1
        5 LOADNIL                          R6
        6 SETTABLE                         R6 R5 R3
        7 GETUPVAL                         R6 0
        8 GETTABLE                         R5 R6 R3
        9 JUMPIFNOT                        R5 ; [+6]
       10 NAMECALL                         R6 R5 K0 ["Disconnect"]
       12 CALL                             R6 1 0
       13 GETUPVAL                         R6 0
       14 LOADNIL                          R7
       15 SETTABLE                         R7 R6 R3
       16 FORGLOOP                         R0 1 ; [-13]
       18 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 0 0
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 DUPTABLE                         R4 K2 [{"getUniqueId", "getInstanceFromUniqueId"}]
       11 NEWCLOSURE                       R5 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R1
       14 SETTABLEKS                       R5 R4 K0 ["getUniqueId"]
       16 NEWCLOSURE                       R5 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R1
       19 SETTABLEKS                       R5 R4 K1 ["getInstanceFromUniqueId"]
       21 NEWCLOSURE                       R5 P4
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R0
       24 MOVE                             R6 R4
       25 DUPTABLE                         R7 K5 [{"register", "destroy"}]
       26 SETTABLEKS                       R3 R7 K3 ["register"]
       28 SETTABLEKS                       R5 R7 K4 ["destroy"]
       30 RETURN                           R6 2

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_6]
        2 RETURN                           R0 1
