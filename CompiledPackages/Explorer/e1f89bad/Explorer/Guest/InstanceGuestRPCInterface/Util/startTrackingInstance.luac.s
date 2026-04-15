PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Parent"]
        2 GETUPVAL                         R2 0
        3 JUMPIFEQ                         R1 R2 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 1
        7 LOADB                            R2 1
        8 SETUPVAL                         R2 1
        9 GETUPVAL                         R2 0
       10 LOADK                            R4 K1 ["DataModel"]
       11 NAMECALL                         R2 R2 K2 ["IsA"]
       13 CALL                             R2 2 1
       14 JUMPIFNOT                        R2 ; [+9]
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R3 R4 K3 ["isServiceVisible"]
       18 JUMPIFNOT                        R3 ; [+5]
       19 MOVE                             R4 R3
       20 MOVE                             R5 R0
       21 CALL                             R4 1 1
       22 JUMPIF                           R4 ; [+1]
       23 RETURN                           R0 0
       24 JUMPIF                           R1 ; [+10]
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R4 R5 K4 ["hostRpcInterface"]
       28 GETTABLEKS                       R3 R4 K5 ["instanceReplaced"]
       30 GETUPVAL                         R4 3
       31 GETUPVAL                         R5 2
       32 GETUPVAL                         R6 0
       33 CALL                             R4 2 -1
       34 CALL                             R3 -1 0
       35 GETUPVAL                         R5 2
       36 GETTABLEKS                       R4 R5 K6 ["expandedInstances"]
       38 GETUPVAL                         R5 0
       39 GETTABLE                         R3 R4 R5
       40 JUMPIFNOT                        R3 ; [+5]
       41 GETUPVAL                         R5 2
       42 GETTABLEKS                       R4 R5 K7 ["watchingInstanceConnections"]
       44 GETTABLE                         R3 R4 R0
       45 JUMPIFNOT                        R3 ; [+1]
       46 RETURN                           R0 0
       47 GETUPVAL                         R3 4
       48 LOADK                            R4 K8 ["Child added to %*: %*"]
       49 GETUPVAL                         R5 0
       50 MOVE                             R6 R0
       51 CALL                             R3 3 0
       52 GETUPVAL                         R3 5
       53 GETUPVAL                         R4 2
       54 MOVE                             R5 R0
       55 CALL                             R3 2 0
       56 GETUPVAL                         R3 3
       57 GETUPVAL                         R4 2
       58 MOVE                             R5 R0
       59 CALL                             R3 2 1
       60 GETUPVAL                         R6 2
       61 GETTABLEKS                       R5 R6 K4 ["hostRpcInterface"]
       63 GETTABLEKS                       R4 R5 K9 ["instanceAdded"]
       65 MOVE                             R5 R3
       66 CALL                             R4 1 0
       67 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+14]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["streamingInterface"]
        6 JUMPIFEQKNIL                     R1 ; [+10]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K0 ["streamingInterface"]
       11 GETTABLEKS                       R1 R2 K1 ["isInstanceStreamedOut"]
       13 MOVE                             R2 R0
       14 CALL                             R1 1 1
       15 JUMPIFNOT                        R1 ; [+1]
       16 RETURN                           R0 0
       17 GETUPVAL                         R2 3
       18 GETUPVAL                         R4 4
       19 NAMECALL                         R2 R2 K2 ["CountChildren"]
       21 CALL                             R2 2 1
       22 LOADN                            R3 0
       23 JUMPIFLT                         R3 R2 ; [+2]
       25 LOADB                            R1 0 +1
       26 LOADB                            R1 1
       27 SETUPVAL                         R1 2
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R2 R3 K3 ["expandedInstances"]
       31 GETUPVAL                         R3 4
       32 GETTABLE                         R1 R2 R3
       33 JUMPIFNOT                        R1 ; [+13]
       34 GETTABLEKS                       R1 R0 K4 ["Parent"]
       36 JUMPIFEQKNIL                     R1 ; [+10]
       38 GETUPVAL                         R3 1
       39 GETTABLEKS                       R2 R3 K5 ["watchingInstanceConnections"]
       41 GETTABLEKS                       R3 R0 K4 ["Parent"]
       43 GETTABLE                         R1 R2 R3
       44 JUMPIFEQKNIL                     R1 ; [+2]
       46 RETURN                           R0 0
       47 GETUPVAL                         R1 2
       48 JUMPIF                           R1 ; [+10]
       49 GETUPVAL                         R3 1
       50 GETTABLEKS                       R2 R3 K6 ["hostRpcInterface"]
       52 GETTABLEKS                       R1 R2 K7 ["instanceReplaced"]
       54 GETUPVAL                         R2 5
       55 GETUPVAL                         R3 1
       56 GETUPVAL                         R4 4
       57 CALL                             R2 2 -1
       58 CALL                             R1 -1 0
       59 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["hostRpcInterface"]
        3 GETTABLEKS                       R0 R1 K1 ["instanceReplaced"]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 0
        7 GETUPVAL                         R3 2
        8 CALL                             R1 2 -1
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R1 K0 ["Parent of %* changed to be at %*"]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K1 ["getInstanceId"]
        4 GETUPVAL                         R4 1
        5 CALL                             R3 1 1
        6 GETUPVAL                         R4 1
        7 NAMECALL                         R4 R4 K2 ["GetFullName"]
        9 CALL                             R4 1 1
       10 NAMECALL                         R1 R1 K3 ["format"]
       12 CALL                             R1 3 1
       13 MOVE                             R0 R1
       14 RETURN                           R0 1

PROTO_4:
        0 LOADK                            R1 K0 ["Parent changed to be at %*"]
        1 GETUPVAL                         R3 0
        2 NAMECALL                         R3 R3 K1 ["GetFullName"]
        4 CALL                             R3 1 1
        5 NAMECALL                         R1 R1 K2 ["format"]
        7 CALL                             R1 2 1
        8 MOVE                             R0 R1
        9 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+63]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R2 R3 K0 ["root"]
        7 NAMECALL                         R0 R0 K1 ["IsDescendantOf"]
        9 CALL                             R0 2 1
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K2 ["Parent"]
       13 GETUPVAL                         R2 3
       14 JUMPIFNOTEQ                      R1 R2 ; [+5]
       16 GETUPVAL                         R1 4
       17 JUMPIFNOTEQ                      R1 R0 ; [+2]
       19 RETURN                           R0 0
       20 GETUPVAL                         R1 5
       21 NEWCLOSURE                       R2 P0
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U1
       24 CALL                             R1 1 0
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R1 R2 K2 ["Parent"]
       28 SETUPVAL                         R1 3
       29 SETUPVAL                         R0 4
       30 GETUPVAL                         R2 2
       31 GETTABLEKS                       R1 R2 K3 ["streamingInterface"]
       33 JUMPIFEQKNIL                     R1 ; [+21]
       35 GETUPVAL                         R3 2
       36 GETTABLEKS                       R2 R3 K3 ["streamingInterface"]
       38 GETTABLEKS                       R1 R2 K4 ["isInstanceStreamedOut"]
       40 GETUPVAL                         R2 1
       41 CALL                             R1 1 1
       42 JUMPIFNOT                        R1 ; [+12]
       43 GETUPVAL                         R3 2
       44 GETTABLEKS                       R2 R3 K5 ["hostRpcInterface"]
       46 GETTABLEKS                       R1 R2 K6 ["instanceStreamedOut"]
       48 GETUPVAL                         R3 2
       49 GETTABLEKS                       R2 R3 K7 ["getInstanceId"]
       51 GETUPVAL                         R3 1
       52 CALL                             R2 1 -1
       53 CALL                             R1 -1 0
       54 RETURN                           R0 0
       55 GETUPVAL                         R3 2
       56 GETTABLEKS                       R2 R3 K5 ["hostRpcInterface"]
       58 GETTABLEKS                       R1 R2 K8 ["instanceReplaced"]
       60 GETUPVAL                         R2 6
       61 GETUPVAL                         R3 2
       62 GETUPVAL                         R4 1
       63 CALL                             R2 2 -1
       64 CALL                             R1 -1 0
       65 RETURN                           R0 0
       66 GETUPVAL                         R0 5
       67 NEWCLOSURE                       R1 P1
       68 CAPTURE                          UPVAL U1
       69 CALL                             R0 1 0
       70 GETUPVAL                         R1 1
       71 GETTABLEKS                       R0 R1 K2 ["Parent"]
       73 SETUPVAL                         R0 3
       74 GETUPVAL                         R2 2
       75 GETTABLEKS                       R1 R2 K5 ["hostRpcInterface"]
       77 GETTABLEKS                       R0 R1 K8 ["instanceReplaced"]
       79 GETUPVAL                         R1 6
       80 GETUPVAL                         R2 2
       81 GETUPVAL                         R3 1
       82 CALL                             R1 2 -1
       83 CALL                             R0 -1 0
       84 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["watchingInstanceConnections"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFEQKNIL                     R2 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 0
        7 MOVE                             R5 R1
        8 NAMECALL                         R3 R3 K1 ["CountChildren"]
       10 CALL                             R3 2 1
       11 LOADN                            R4 0
       12 JUMPIFLT                         R4 R3 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 GETTABLEKS                       R3 R1 K2 ["Parent"]
       18 GETTABLEKS                       R6 R0 K3 ["root"]
       20 NAMECALL                         R4 R1 K4 ["IsDescendantOf"]
       22 CALL                             R4 2 1
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          VAL R1
       25 CAPTURE                          REF R2
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          UPVAL U3
       30 NEWCLOSURE                       R6 P1
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          VAL R0
       33 CAPTURE                          REF R2
       34 CAPTURE                          UPVAL U0
       35 CAPTURE                          VAL R1
       36 CAPTURE                          UPVAL U1
       37 NEWCLOSURE                       R7 P2
       38 CAPTURE                          VAL R0
       39 CAPTURE                          UPVAL U1
       40 CAPTURE                          VAL R1
       41 NEWTABLE                         R8 0 0
       43 MOVE                             R10 R8
       44 GETTABLEKS                       R11 R1 K5 ["ChildAdded"]
       46 MOVE                             R13 R5
       47 NAMECALL                         R11 R11 K6 ["Connect"]
       49 CALL                             R11 2 -1
       50 FASTCALL                         TABLE_INSERT ; [+2]
       51 GETIMPORT                        R9 K9 [table.insert]
       53 CALL                             R9 -1 0
       54 MOVE                             R10 R8
       55 GETTABLEKS                       R11 R1 K10 ["ChildRemoved"]
       57 MOVE                             R13 R6
       58 NAMECALL                         R11 R11 K6 ["Connect"]
       60 CALL                             R11 2 -1
       61 FASTCALL                         TABLE_INSERT ; [+2]
       62 GETIMPORT                        R9 K9 [table.insert]
       64 CALL                             R9 -1 0
       65 MOVE                             R10 R8
       66 LOADK                            R13 K11 ["Name"]
       67 NAMECALL                         R11 R1 K12 ["GetPropertyChangedSignal"]
       69 CALL                             R11 2 1
       70 MOVE                             R13 R7
       71 NAMECALL                         R11 R11 K6 ["Connect"]
       73 CALL                             R11 2 -1
       74 FASTCALL                         TABLE_INSERT ; [+2]
       75 GETIMPORT                        R9 K9 [table.insert]
       77 CALL                             R9 -1 0
       78 MOVE                             R10 R8
       79 GETTABLEKS                       R11 R1 K13 ["AncestryChanged"]
       81 NEWCLOSURE                       R13 P3
       82 CAPTURE                          UPVAL U4
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R0
       85 CAPTURE                          REF R3
       86 CAPTURE                          REF R4
       87 CAPTURE                          UPVAL U2
       88 CAPTURE                          UPVAL U1
       89 NAMECALL                         R11 R11 K6 ["Connect"]
       91 CALL                             R11 2 -1
       92 FASTCALL                         TABLE_INSERT ; [+2]
       93 GETIMPORT                        R9 K9 [table.insert]
       95 CALL                             R9 -1 0
       96 GETTABLEKS                       R9 R0 K0 ["watchingInstanceConnections"]
       98 SETTABLE                         R8 R9 R1
       99 CLOSEUPVALS                      R2
      100 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["InstanceExtensionsService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Explorer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R5 R1 K10 ["Guest"]
       17 GETTABLEKS                       R4 R5 K11 ["InstanceGuestRPCInterface"]
       19 GETTABLEKS                       R3 R4 K12 ["InstanceGuestRPCInterfaceTypes"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R7 R1 K10 ["Guest"]
       26 GETTABLEKS                       R6 R7 K11 ["InstanceGuestRPCInterface"]
       28 GETTABLEKS                       R5 R6 K13 ["Util"]
       30 GETTABLEKS                       R4 R5 K14 ["createDatumFromInstance"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K9 [require]
       35 GETTABLEKS                       R6 R1 K13 ["Util"]
       37 GETTABLEKS                       R5 R6 K15 ["createDebugLogger"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K9 [require]
       42 GETTABLEKS                       R7 R1 K16 ["Flags"]
       44 GETTABLEKS                       R6 R7 K17 ["getFFlagExplorerStreaming"]
       46 CALL                             R5 1 1
       47 MOVE                             R6 R4
       48 LOADK                            R7 K18 ["startTrackingInstance"]
       49 CALL                             R6 1 1
       50 DUPCLOSURE                       R7 K19 [PROTO_6]
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R5
       56 RETURN                           R7 1
