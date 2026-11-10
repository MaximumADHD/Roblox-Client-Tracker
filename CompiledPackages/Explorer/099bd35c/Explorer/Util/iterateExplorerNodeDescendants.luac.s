PROTO_0:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 0
        2 LENGTH                           R2 R3
        3 GETTABLE                         R0 R1 R2
        4 JUMPIFNOTEQKNIL                  R0 ; [+3]
        6 LOADNIL                          R1
        7 RETURN                           R1 1
        8 MOVE                             R1 R0
        9 CALL                             R1 0 1
       10 JUMPIFEQKNIL                     R1 ; [+17]
       12 GETTABLEKS                       R2 R1 K0 ["children"]
       14 JUMPIFEQKNIL                     R2 ; [+12]
       16 GETUPVAL                         R3 0
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K1 ["iterate"]
       20 GETTABLEKS                       R5 R1 K0 ["children"]
       22 CALL                             R4 1 -1
       23 FASTCALL                         TABLE_INSERT ; [+2]
       24 GETIMPORT                        R2 K4 [table.insert]
       26 CALL                             R2 -1 0
       27 RETURN                           R1 1
       28 GETUPVAL                         R2 0
       29 GETUPVAL                         R4 0
       30 LENGTH                           R3 R4
       31 LOADNIL                          R4
       32 SETTABLE                         R4 R2 R3
       33 GETUPVAL                         R2 2
       34 CALL                             R2 0 -1
       35 RETURN                           R2 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["children"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+3]
        4 DUPCLOSURE                       R1 K1 [PROTO_0]
        5 RETURN                           R1 1
        6 NEWTABLE                         R1 0 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["iterate"]
       11 GETTABLEKS                       R3 R0 K0 ["children"]
       13 CALL                             R2 1 -1
       14 SETLIST                          R1 R2 -1 [1]
       16 NEWCLOSURE                       R2 P1
       17 CAPTURE                          VAL R1
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          VAL R2
       20 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["ExplorerNodeChildrenMutable"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["RpcTypes"]
       18 CALL                             R2 1 1
       19 DUPCLOSURE                       R3 K9 [PROTO_2]
       20 CAPTURE                          VAL R1
       21 RETURN                           R3 1
