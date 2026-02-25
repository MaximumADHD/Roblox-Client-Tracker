PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["Parent"]
        2 JUMPIFEQ                         R2 R1 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 0
        6 LOADK                            R3 K1 ["Sending childAdded"]
        7 GETTABLEKS                       R4 R0 K2 ["Name"]
        9 CALL                             R2 2 0
       10 GETUPVAL                         R2 1
       11 LOADK                            R4 K3 ["childAdded"]
       12 DUPTABLE                         R5 K8 [{"parentId", "id", "className", "name"}]
       13 GETUPVAL                         R6 2
       14 MOVE                             R8 R1
       15 NAMECALL                         R6 R6 K9 ["GetOrCreateUniqueIdRemoteCommand"]
       17 CALL                             R6 2 1
       18 SETTABLEKS                       R6 R5 K4 ["parentId"]
       20 GETUPVAL                         R6 2
       21 MOVE                             R8 R0
       22 NAMECALL                         R6 R6 K9 ["GetOrCreateUniqueIdRemoteCommand"]
       24 CALL                             R6 2 1
       25 SETTABLEKS                       R6 R5 K5 ["id"]
       27 GETTABLEKS                       R6 R0 K10 ["ClassName"]
       29 SETTABLEKS                       R6 R5 K6 ["className"]
       31 GETTABLEKS                       R6 R0 K2 ["Name"]
       33 SETTABLEKS                       R6 R5 K7 ["name"]
       35 NAMECALL                         R2 R2 K11 ["SendUpdate"]
       37 CALL                             R2 3 0
       38 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R3 K0 ["Camera"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_3:
        0 LOADK                            R3 K0 ["Camera"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 MOVE                             R2 R0
        8 GETUPVAL                         R3 1
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_4:
        0 LOADK                            R3 K0 ["Camera"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 LOADK                            R2 K2 ["Child removed:"]
        8 GETTABLEKS                       R3 R0 K3 ["Name"]
       10 CALL                             R1 2 0
       11 GETTABLEKS                       R1 R0 K4 ["Parent"]
       13 JUMPIFEQKNIL                     R1 ; [+6]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R3 R0 K4 ["Parent"]
       18 GETTABLE                         R1 R2 R3
       19 JUMPIF                           R1 ; [+16]
       20 GETUPVAL                         R1 0
       21 LOADK                            R2 K5 ["Sending childRemoved"]
       22 CALL                             R1 1 0
       23 GETUPVAL                         R1 2
       24 LOADK                            R3 K6 ["childRemoved"]
       25 DUPTABLE                         R4 K8 [{"id"}]
       26 GETUPVAL                         R5 3
       27 MOVE                             R7 R0
       28 NAMECALL                         R5 R5 K9 ["GetOrCreateUniqueIdRemoteCommand"]
       30 CALL                             R5 2 1
       31 SETTABLEKS                       R5 R4 K7 ["id"]
       33 NAMECALL                         R1 R1 K10 ["SendUpdate"]
       35 CALL                             R1 3 0
       36 RETURN                           R0 0

PROTO_5:
        0 LOADB                            R2 1
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [typeof]
        5 CALL                             R3 1 1
        6 JUMPIFEQKS                       R3 K2 ["Instance"] ; [+5]
        8 JUMPIFEQKNIL                     R0 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       14 LOADK                            R3 K3 ["Unexpected type provided to startTrackingInstance"]
       15 GETIMPORT                        R1 K5 [assert]
       17 CALL                             R1 2 0
       18 JUMPIFNOTEQKNIL                  R0 ; [+2]
       20 RETURN                           R0 0
       21 GETUPVAL                         R1 0
       22 LOADB                            R2 1
       23 SETTABLE                         R2 R1 R0
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R3 R0 K6 ["ChildAdded"]
       27 NEWCLOSURE                       R5 P0
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          VAL R0
       30 NAMECALL                         R3 R3 K7 ["Connect"]
       32 CALL                             R3 2 -1
       33 FASTCALL                         TABLE_INSERT ; [+2]
       34 GETIMPORT                        R1 K10 [table.insert]
       36 CALL                             R1 -1 0
       37 GETUPVAL                         R2 1
       38 GETTABLEKS                       R3 R0 K11 ["ChildRemoved"]
       40 DUPCLOSURE                       R5 K12 [PROTO_4]
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          UPVAL U0
       43 CAPTURE                          UPVAL U4
       44 CAPTURE                          UPVAL U5
       45 NAMECALL                         R3 R3 K7 ["Connect"]
       47 CALL                             R3 2 -1
       48 FASTCALL                         TABLE_INSERT ; [+2]
       49 GETIMPORT                        R1 K10 [table.insert]
       51 CALL                             R1 -1 0
       52 NAMECALL                         R1 R0 K13 ["GetChildren"]
       54 CALL                             R1 1 3
       55 FORGPREP                         R1
       56 LOADK                            R8 K14 ["Camera"]
       57 NAMECALL                         R6 R5 K15 ["IsA"]
       59 CALL                             R6 2 1
       60 JUMPIF                           R6 ; [+4]
       61 GETUPVAL                         R6 2
       62 MOVE                             R7 R5
       63 MOVE                             R8 R0
       64 CALL                             R6 2 0
       65 FORGLOOP                         R1 2 ; [-10]
       67 RETURN                           R0 0

PROTO_6:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 LOADK                            R2 K0 ["Received update from Studio"]
        3 MOVE                             R3 R0
        4 GETVARARGS                       R4 -1
        5 CALL                             R1 -1 0
        6 JUMPIFNOTEQKS                    R0 K1 ["startTrackingInstance"] ; [+5]
        8 GETUPVAL                         R1 1
        9 GETVARARGS                       R2 -1
       10 CALL                             R1 -1 0
       11 RETURN                           R0 0
       12 GETIMPORT                        R1 K3 [error]
       14 LOADK                            R3 K4 ["Unexpected update type: %*"]
       15 MOVE                             R5 R0
       16 NAMECALL                         R3 R3 K5 ["format"]
       18 CALL                             R3 2 1
       19 MOVE                             R2 R3
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RemoteCommandService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["UniqueIdLookupService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 NEWTABLE                         R2 0 0
       15 NEWTABLE                         R3 0 0
       17 DUPCLOSURE                       R4 K5 [PROTO_0]
       18 MOVE                             R5 R4
       19 LOADK                            R6 K6 ["ExplorerRemoteCommand"]
       20 CALL                             R5 1 0
       21 DUPCLOSURE                       R5 K7 [PROTO_1]
       22 CAPTURE                          VAL R4
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R1
       25 DUPCLOSURE                       R6 K8 [PROTO_2]
       26 DUPCLOSURE                       R7 K9 [PROTO_5]
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R5
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R1
       33 NAMECALL                         R8 R0 K10 ["GetReceivedUpdateSignal"]
       35 CALL                             R8 1 1
       36 DUPCLOSURE                       R10 K11 [PROTO_6]
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R7
       39 NAMECALL                         R8 R8 K12 ["Connect"]
       41 CALL                             R8 2 0
       42 NAMECALL                         R8 R0 K13 ["GetStoppingSignal"]
       44 CALL                             R8 1 1
       45 DUPCLOSURE                       R10 K14 [PROTO_7]
       46 CAPTURE                          VAL R2
       47 NAMECALL                         R8 R8 K12 ["Connect"]
       49 CALL                             R8 2 0
       50 RETURN                           R0 0
