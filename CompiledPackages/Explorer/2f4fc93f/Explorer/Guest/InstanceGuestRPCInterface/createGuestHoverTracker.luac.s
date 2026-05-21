PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["watchingInstanceConnections"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+11]
        5 GETTABLEKS                       R1 R0 K1 ["Parent"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["root"]
       10 JUMPIFNOTEQ                      R1 R2 ; [+5]
       12 LOADB                            R1 1
       13 NEWTABLE                         R2 0 0
       15 RETURN                           R1 2
       16 NEWTABLE                         R1 0 0
       18 NEWTABLE                         R2 0 0
       20 GETTABLEKS                       R3 R0 K1 ["Parent"]
       22 JUMPIFEQKNIL                     R3 ; [+45]
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K2 ["root"]
       27 JUMPIFEQ                         R3 R4 ; [+40]
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K0 ["watchingInstanceConnections"]
       32 GETTABLE                         R4 R5 R3
       33 JUMPIFNOT                        R4 ; [+13]
       34 MOVE                             R5 R2
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R6 R6 K3 ["getInstanceId"]
       38 MOVE                             R7 R3
       39 CALL                             R6 1 -1
       40 FASTCALL                         TABLE_INSERT ; [+2]
       41 GETIMPORT                        R4 K6 [table.insert]
       43 CALL                             R4 -1 0
       44 GETTABLEKS                       R3 R3 K1 ["Parent"]
       46 JUMP                             ; [+20]
       47 GETUPVAL                         R4 1
       48 MOVE                             R5 R1
       49 MOVE                             R6 R2
       50 CALL                             R4 2 0
       51 GETIMPORT                        R4 K8 [table.clear]
       53 MOVE                             R5 R2
       54 CALL                             R4 1 0
       55 MOVE                             R5 R1
       56 GETUPVAL                         R6 0
       57 GETTABLEKS                       R6 R6 K3 ["getInstanceId"]
       59 MOVE                             R7 R3
       60 CALL                             R6 1 -1
       61 FASTCALL                         TABLE_INSERT ; [+2]
       62 GETIMPORT                        R4 K6 [table.insert]
       64 CALL                             R4 -1 0
       65 GETTABLEKS                       R3 R3 K1 ["Parent"]
       67 JUMPBACK                         ; [-46]
       68 LENGTH                           R4 R2
       69 JUMPIFNOTEQKN                    R4 K9 [0] ; [+4]
       71 LOADB                            R4 0
       72 LOADNIL                          R5
       73 RETURN                           R4 2
       74 GETTABLEN                        R6 R2 1
       75 FASTCALL2                        TABLE_INSERT R1 R6 ; [+4]
       77 MOVE                             R5 R1
       78 GETIMPORT                        R4 K6 [table.insert]
       80 CALL                             R4 2 0
       81 LOADB                            R4 1
       82 LENGTH                           R6 R1
       83 LOADN                            R7 0
       84 JUMPIFNOTLT                      R7 R6 ; [+3]
       86 MOVE                             R5 R1
       87 RETURN                           R4 2
       88 LOADNIL                          R5
       89 RETURN                           R4 2

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["HoverInstance"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+8]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["hostRpcInterface"]
        8 GETTABLEKS                       R1 R1 K2 ["guestUnhovered"]
       10 CALL                             R1 0 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K3 ["getInstanceId"]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 1
       17 GETUPVAL                         R2 2
       18 MOVE                             R3 R0
       19 CALL                             R2 1 2
       20 JUMPIFNOT                        R2 ; [+9]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K1 ["hostRpcInterface"]
       24 GETTABLEKS                       R4 R4 K4 ["guestHovered"]
       26 MOVE                             R5 R1
       27 MOVE                             R6 R3
       28 CALL                             R4 2 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R4 R4 K1 ["hostRpcInterface"]
       33 GETTABLEKS                       R4 R4 K2 ["guestUnhovered"]
       35 CALL                             R4 0 0
       36 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["instanceIdsToInstance"]
        5 GETTABLE                         R1 R2 R0
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R1 R2 K1 ["HoverInstance"]
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 GETUPVAL                         R2 1
        4 LOADK                            R4 K0 ["HoverInstance"]
        5 NAMECALL                         R2 R2 K1 ["GetPropertyChangedSignal"]
        7 CALL                             R2 2 1
        8 NEWCLOSURE                       R4 P1
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
       12 NAMECALL                         R2 R2 K2 ["Connect"]
       14 CALL                             R2 2 1
       15 NEWCLOSURE                       R3 P2
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U1
       18 NEWCLOSURE                       R4 P3
       19 CAPTURE                          VAL R2
       20 DUPTABLE                         R5 K5 [{"hostHovered", "destroy"}]
       21 SETTABLEKS                       R3 R5 K3 ["hostHovered"]
       23 SETTABLEKS                       R4 R5 K4 ["destroy"]
       25 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Explorer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Guest"]
       17 GETTABLEKS                       R3 R3 K11 ["InstanceGuestRPCInterface"]
       19 GETTABLEKS                       R3 R3 K12 ["InstanceGuestRPCInterfaceTypes"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R1 K13 ["RpcTypes"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K14 ["Util"]
       31 GETTABLEKS                       R5 R5 K15 ["concatList"]
       33 CALL                             R4 1 1
       34 DUPCLOSURE                       R5 K16 [PROTO_4]
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R0
       37 RETURN                           R5 1
