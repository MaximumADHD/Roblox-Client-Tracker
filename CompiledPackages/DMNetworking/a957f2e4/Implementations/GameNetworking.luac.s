PROTO_0:
        0 NEWTABLE                         R1 16 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["new"]
        5 LOADK                            R3 K1 ["[DMNetworking] [Game]"]
        6 JUMPIFNOT                        R0 ; [+3]
        7 GETTABLEKS                       R4 R0 K2 ["logLevel"]
        9 JUMP                             ; [+1]
       10 LOADNIL                          R4
       11 CALL                             R2 2 1
       12 SETTABLEKS                       R2 R1 K3 ["_logger"]
       14 JUMPIFNOT                        R0 ; [+3]
       15 GETTABLEKS                       R2 R0 K4 ["isServer"]
       17 JUMP                             ; [+1]
       18 LOADNIL                          R2
       19 JUMPIFNOTEQKNIL                  R2 ; [+6]
       21 GETUPVAL                         R3 1
       22 NAMECALL                         R3 R3 K5 ["IsServer"]
       24 CALL                             R3 1 1
       25 JUMP                             ; [+1]
       26 MOVE                             R3 R2
       27 SETTABLEKS                       R3 R1 K6 ["_isServer"]
       29 JUMPIFNOT                        R0 ; [+3]
       30 GETTABLEKS                       R3 R0 K7 ["identity"]
       32 JUMP                             ; [+1]
       33 LOADNIL                          R3
       34 MOVE                             R4 R3
       35 JUMPIF                           R4 ; [+14]
       36 GETTABLEKS                       R5 R1 K6 ["_isServer"]
       38 JUMPIFNOT                        R5 ; [+6]
       39 GETUPVAL                         R4 2
       40 GETTABLEKS                       R4 R4 K8 ["Identity"]
       42 GETTABLEKS                       R4 R4 K9 ["PlayServer"]
       44 JUMP                             ; [+5]
       45 GETUPVAL                         R4 2
       46 GETTABLEKS                       R4 R4 K8 ["Identity"]
       48 GETTABLEKS                       R4 R4 K10 ["PlayClient"]
       50 SETTABLEKS                       R4 R1 K11 ["_identity"]
       52 JUMPIFNOT                        R0 ; [+3]
       53 GETTABLEKS                       R4 R0 K12 ["unreachableTimeout"]
       55 JUMP                             ; [+1]
       56 LOADNIL                          R4
       57 ORK                              R5 R4 K13 [10]
       58 SETTABLEKS                       R5 R1 K14 ["_unreachableTimeout"]
       60 LOADNIL                          R5
       61 SETTABLEKS                       R5 R1 K15 ["_networkFolder"]
       63 NEWTABLE                         R5 0 0
       65 SETTABLEKS                       R5 R1 K16 ["_connections"]
       67 NEWTABLE                         R5 0 0
       69 SETTABLEKS                       R5 R1 K17 ["_localEventCallbacks"]
       71 NEWTABLE                         R5 0 0
       73 SETTABLEKS                       R5 R1 K18 ["_localInvokeCallbacks"]
       75 NEWTABLE                         R5 0 0
       77 SETTABLEKS                       R5 R1 K19 ["_invokeHandlers"]
       79 NEWTABLE                         R5 0 0
       81 SETTABLEKS                       R5 R1 K20 ["_boundRemoteFunctions"]
       83 GETUPVAL                         R7 3
       84 FASTCALL2                        SETMETATABLE R1 R7 ; [+4]
       86 MOVE                             R6 R1
       87 GETIMPORT                        R5 K22 [setmetatable]
       89 CALL                             R5 2 0
       90 RETURN                           R1 1

PROTO_1:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["Instance"] ; [+5]
        8 LOADK                            R3 K3 ["Player"]
        9 NAMECALL                         R1 R0 K4 ["IsA"]
       11 CALL                             R1 2 1
       12 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_identity"]
        2 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 LOADB                            R3 1
        5 SETTABLEKS                       R3 R2 K3 ["_isDerived"]
        7 GETTABLEKS                       R3 R1 K4 ["unreachableTimeout"]
        9 JUMPIFEQKNIL                     R3 ; [+5]
       11 GETTABLEKS                       R3 R1 K4 ["unreachableTimeout"]
       13 SETTABLEKS                       R3 R2 K5 ["_unreachableTimeout"]
       15 GETTABLEKS                       R3 R1 K6 ["logLevel"]
       17 JUMPIFEQKNIL                     R3 ; [+15]
       19 GETIMPORT                        R3 K2 [table.clone]
       21 GETTABLEKS                       R4 R0 K7 ["_logger"]
       23 CALL                             R3 1 1
       24 SETTABLEKS                       R3 R2 K7 ["_logger"]
       26 GETTABLEKS                       R3 R2 K7 ["_logger"]
       28 GETTABLEKS                       R5 R1 K6 ["logLevel"]
       30 NAMECALL                         R3 R3 K8 ["setMinLevel"]
       32 CALL                             R3 2 0
       33 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Identity"]
        3 GETTABLEKS                       R2 R2 K1 ["ALL"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+3]
        7 LOADB                            R2 1
        8 RETURN                           R2 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["Identity"]
       12 GETTABLEKS                       R2 R2 K2 ["FOCUSED"]
       14 JUMPIFNOTEQ                      R1 R2 ; [+4]
       16 GETTABLEKS                       R2 R0 K3 ["_isServer"]
       18 RETURN                           R2 1
       19 GETTABLEKS                       R3 R0 K4 ["_identity"]
       21 JUMPIFEQ                         R1 R3 ; [+2]
       23 LOADB                            R2 0 +1
       24 LOADB                            R2 1
       25 RETURN                           R2 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_networkFolder"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R1 R0 K0 ["_networkFolder"]
        5 RETURN                           R1 1
        6 GETUPVAL                         R1 0
        7 LOADK                            R3 K1 ["DM_NETWORKING_REMOTES"]
        8 NAMECALL                         R1 R1 K2 ["FindFirstChild"]
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+3]
       12 SETTABLEKS                       R1 R0 K0 ["_networkFolder"]
       14 RETURN                           R1 1
       15 LOADNIL                          R2
       16 GETTABLEKS                       R3 R0 K3 ["_isServer"]
       18 JUMPIFNOT                        R3 ; [+12]
       19 GETIMPORT                        R3 K6 [Instance.new]
       21 LOADK                            R4 K7 ["Folder"]
       22 CALL                             R3 1 1
       23 LOADK                            R4 K1 ["DM_NETWORKING_REMOTES"]
       24 SETTABLEKS                       R4 R3 K8 ["Name"]
       26 GETUPVAL                         R4 0
       27 SETTABLEKS                       R4 R3 K9 ["Parent"]
       29 MOVE                             R2 R3
       30 JUMP                             ; [+7]
       31 GETUPVAL                         R3 0
       32 LOADK                            R5 K1 ["DM_NETWORKING_REMOTES"]
       33 LOADN                            R6 10
       34 NAMECALL                         R3 R3 K10 ["WaitForChild"]
       36 CALL                             R3 3 1
       37 MOVE                             R2 R3
       38 FASTCALL2K                       ASSERT R2 K11 ; [+5]
       40 MOVE                             R4 R2
       41 LOADK                            R5 K11 ["DM_NETWORKING_REMOTES not found in ReplicatedStorage"]
       42 GETIMPORT                        R3 K13 [assert]
       44 CALL                             R3 2 0
       45 SETTABLEKS                       R2 R0 K0 ["_networkFolder"]
       47 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 NEWTABLE                         R3 0 2
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["TAG_EVENT"]
        6 MOVE                             R5 R1
        7 SETLIST                          R3 R4 2 [1]
        9 CALL                             R2 1 1
       10 NAMECALL                         R3 R0 K1 ["_getNetworkFolder"]
       12 CALL                             R3 1 1
       13 LOADNIL                          R4
       14 GETTABLEKS                       R5 R0 K2 ["_isServer"]
       16 JUMPIFNOT                        R5 ; [+16]
       17 MOVE                             R7 R2
       18 NAMECALL                         R5 R3 K3 ["FindFirstChild"]
       20 CALL                             R5 2 1
       21 MOVE                             R4 R5
       22 JUMPIF                           R4 ; [+16]
       23 GETIMPORT                        R5 K6 [Instance.new]
       25 LOADK                            R6 K7 ["RemoteEvent"]
       26 CALL                             R5 1 1
       27 SETTABLEKS                       R2 R5 K8 ["Name"]
       29 SETTABLEKS                       R3 R5 K9 ["Parent"]
       31 MOVE                             R4 R5
       32 JUMP                             ; [+6]
       33 MOVE                             R7 R2
       34 LOADN                            R8 10
       35 NAMECALL                         R5 R3 K10 ["WaitForChild"]
       37 CALL                             R5 3 1
       38 MOVE                             R4 R5
       39 LOADK                            R7 K11 ["RemoteEvent %* not found in DM_NETWORKING_REMOTES"]
       40 MOVE                             R9 R2
       41 NAMECALL                         R7 R7 K12 ["format"]
       43 CALL                             R7 2 1
       44 FASTCALL2                        ASSERT R4 R7 ; [+4]
       46 MOVE                             R6 R4
       47 GETIMPORT                        R5 K14 [assert]
       49 CALL                             R5 2 0
       50 LOADK                            R8 K7 ["RemoteEvent"]
       51 NAMECALL                         R6 R4 K15 ["IsA"]
       53 CALL                             R6 2 1
       54 LOADK                            R7 K16 ["Expected RemoteEvent, got %*"]
       55 GETTABLEKS                       R9 R4 K17 ["ClassName"]
       57 NAMECALL                         R7 R7 K12 ["format"]
       59 CALL                             R7 2 1
       60 FASTCALL2                        ASSERT R6 R7 ; [+3]
       62 GETIMPORT                        R5 K14 [assert]
       64 CALL                             R5 2 0
       65 RETURN                           R4 1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["_networkFolder"]
        2 JUMPIF                           R2 ; [+5]
        3 GETUPVAL                         R2 0
        4 LOADK                            R4 K1 ["DM_NETWORKING_REMOTES"]
        5 NAMECALL                         R2 R2 K2 ["FindFirstChild"]
        7 CALL                             R2 2 1
        8 JUMPIF                           R2 ; [+2]
        9 LOADNIL                          R3
       10 RETURN                           R3 1
       11 SETTABLEKS                       R2 R0 K0 ["_networkFolder"]
       13 GETUPVAL                         R3 1
       14 NEWTABLE                         R4 0 2
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K3 ["TAG_EVENT"]
       19 MOVE                             R6 R1
       20 SETLIST                          R4 R5 2 [1]
       22 CALL                             R3 1 1
       23 MOVE                             R6 R3
       24 NAMECALL                         R4 R2 K2 ["FindFirstChild"]
       26 CALL                             R4 2 1
       27 JUMPIFNOT                        R4 ; [+6]
       28 LOADK                            R7 K4 ["RemoteEvent"]
       29 NAMECALL                         R5 R4 K5 ["IsA"]
       31 CALL                             R5 2 1
       32 JUMPIFNOT                        R5 ; [+1]
       33 RETURN                           R4 1
       34 LOADNIL                          R5
       35 RETURN                           R5 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 NEWTABLE                         R3 0 2
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["TAG_INVOKE"]
        6 MOVE                             R5 R1
        7 SETLIST                          R3 R4 2 [1]
        9 CALL                             R2 1 1
       10 NAMECALL                         R3 R0 K1 ["_getNetworkFolder"]
       12 CALL                             R3 1 1
       13 LOADNIL                          R4
       14 GETTABLEKS                       R5 R0 K2 ["_isServer"]
       16 JUMPIFNOT                        R5 ; [+16]
       17 MOVE                             R7 R2
       18 NAMECALL                         R5 R3 K3 ["FindFirstChild"]
       20 CALL                             R5 2 1
       21 MOVE                             R4 R5
       22 JUMPIF                           R4 ; [+16]
       23 GETIMPORT                        R5 K6 [Instance.new]
       25 LOADK                            R6 K7 ["RemoteFunction"]
       26 CALL                             R5 1 1
       27 SETTABLEKS                       R2 R5 K8 ["Name"]
       29 SETTABLEKS                       R3 R5 K9 ["Parent"]
       31 MOVE                             R4 R5
       32 JUMP                             ; [+6]
       33 MOVE                             R7 R2
       34 LOADN                            R8 10
       35 NAMECALL                         R5 R3 K10 ["WaitForChild"]
       37 CALL                             R5 3 1
       38 MOVE                             R4 R5
       39 LOADK                            R7 K11 ["RemoteFunction %* not found in DM_NETWORKING_REMOTES"]
       40 MOVE                             R9 R2
       41 NAMECALL                         R7 R7 K12 ["format"]
       43 CALL                             R7 2 1
       44 FASTCALL2                        ASSERT R4 R7 ; [+4]
       46 MOVE                             R6 R4
       47 GETIMPORT                        R5 K14 [assert]
       49 CALL                             R5 2 0
       50 LOADK                            R8 K7 ["RemoteFunction"]
       51 NAMECALL                         R6 R4 K15 ["IsA"]
       53 CALL                             R6 2 1
       54 LOADK                            R7 K16 ["Expected RemoteFunction, got %*"]
       55 GETTABLEKS                       R9 R4 K17 ["ClassName"]
       57 NAMECALL                         R7 R7 K12 ["format"]
       59 CALL                             R7 2 1
       60 FASTCALL2                        ASSERT R6 R7 ; [+3]
       62 GETIMPORT                        R5 K14 [assert]
       64 CALL                             R5 2 0
       65 RETURN                           R4 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["fromId"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["args"]
        7 LOADN                            R4 1
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K2 ["argCount"]
       11 FASTCALL                         TABLE_UNPACK ; [+2]
       12 GETIMPORT                        R2 K5 [table.unpack]
       14 CALL                             R2 3 -1
       15 CALL                             R0 -1 0
       16 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R4 R0 K0 ["_localEventCallbacks"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIF                           R3 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R6 R2 K1 ["toId"]
        7 NAMECALL                         R4 R0 K2 ["_shouldHandle"]
        9 CALL                             R4 2 1
       10 JUMPIF                           R4 ; [+18]
       11 GETTABLEKS                       R4 R0 K3 ["_logger"]
       13 LOADK                            R6 K4 ["[{key}] skipping local event [expected: {expected}, got: {got}]"]
       14 DUPTABLE                         R7 K8 [{"key", "expected", "got"}]
       15 SETTABLEKS                       R1 R7 K5 ["key"]
       17 GETTABLEKS                       R8 R0 K9 ["_identity"]
       19 SETTABLEKS                       R8 R7 K6 ["expected"]
       21 GETTABLEKS                       R8 R2 K1 ["toId"]
       23 SETTABLEKS                       R8 R7 K7 ["got"]
       25 NAMECALL                         R4 R4 K10 ["debug"]
       27 CALL                             R4 3 0
       28 RETURN                           R0 0
       29 GETTABLEKS                       R4 R0 K3 ["_logger"]
       31 LOADK                            R6 K11 ["[{key}] received local event"]
       32 DUPTABLE                         R7 K12 [{"key"}]
       33 SETTABLEKS                       R1 R7 K5 ["key"]
       35 NAMECALL                         R4 R4 K10 ["debug"]
       37 CALL                             R4 3 0
       38 GETIMPORT                        R4 K15 [table.clone]
       40 MOVE                             R5 R3
       41 CALL                             R4 1 3
       42 FORGPREP                         R4
       43 GETIMPORT                        R9 K18 [task.spawn]
       45 NEWCLOSURE                       R10 P0
       46 CAPTURE                          VAL R8
       47 CAPTURE                          VAL R2
       48 CALL                             R9 1 0
       49 FORGLOOP                         R4 2 ; [-7]
       51 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R4 R1 K0 ["toId"]
        3 NAMECALL                         R2 R2 K1 ["_shouldHandle"]
        5 CALL                             R2 2 1
        6 JUMPIF                           R2 ; [+21]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["_logger"]
       10 LOADK                            R4 K3 ["[{key}] skipping event [expected: {expected}, got: {got}]"]
       11 DUPTABLE                         R5 K7 [{"key", "expected", "got"}]
       12 GETUPVAL                         R6 1
       13 SETTABLEKS                       R6 R5 K4 ["key"]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K8 ["_identity"]
       18 SETTABLEKS                       R6 R5 K5 ["expected"]
       20 GETTABLEKS                       R6 R1 K0 ["toId"]
       22 SETTABLEKS                       R6 R5 K6 ["got"]
       24 NAMECALL                         R2 R2 K9 ["debug"]
       26 CALL                             R2 3 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K2 ["_logger"]
       31 LOADK                            R4 K10 ["[{key}] received event"]
       32 DUPTABLE                         R5 K11 [{"key"}]
       33 GETUPVAL                         R6 1
       34 SETTABLEKS                       R6 R5 K4 ["key"]
       36 NAMECALL                         R2 R2 K12 ["info"]
       38 CALL                             R2 3 0
       39 MOVE                             R2 R0
       40 JUMPIF                           R2 ; [+2]
       41 GETTABLEKS                       R2 R1 K13 ["fromId"]
       43 GETUPVAL                         R3 2
       44 MOVE                             R4 R2
       45 GETTABLEKS                       R6 R1 K14 ["args"]
       47 LOADN                            R7 1
       48 GETTABLEKS                       R8 R1 K15 ["argCount"]
       50 FASTCALL                         TABLE_UNPACK ; [+2]
       51 GETIMPORT                        R5 K18 [table.unpack]
       53 CALL                             R5 3 -1
       54 CALL                             R3 -1 0
       55 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_logger"]
        3 LOADK                            R3 K1 ["[{key}] received event"]
        4 DUPTABLE                         R4 K3 [{"key"}]
        5 GETUPVAL                         R5 1
        6 SETTABLEKS                       R5 R4 K2 ["key"]
        8 NAMECALL                         R1 R1 K4 ["info"]
       10 CALL                             R1 3 0
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R2 R0 K5 ["fromId"]
       14 GETTABLEKS                       R4 R0 K6 ["args"]
       16 LOADN                            R5 1
       17 GETTABLEKS                       R6 R0 K7 ["argCount"]
       19 FASTCALL                         TABLE_UNPACK ; [+2]
       20 GETIMPORT                        R3 K10 [table.unpack]
       22 CALL                             R3 3 -1
       23 CALL                             R1 -1 0
       24 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETIMPORT                        R0 K3 [table.find]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K4 ["_connections"]
        9 GETUPVAL                         R2 0
       10 CALL                             R0 2 1
       11 JUMPIFNOT                        R0 ; [+21]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K4 ["_connections"]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K4 ["_connections"]
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R5 R5 K4 ["_connections"]
       21 LENGTH                           R4 R5
       22 GETTABLE                         R2 R3 R4
       23 SETTABLE                         R2 R1 R0
       24 GETUPVAL                         R1 1
       25 GETTABLEKS                       R1 R1 K4 ["_connections"]
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R3 R3 K4 ["_connections"]
       30 LENGTH                           R2 R3
       31 LOADNIL                          R3
       32 SETTABLE                         R3 R1 R2
       33 GETUPVAL                         R2 1
       34 GETTABLEKS                       R2 R2 K5 ["_localEventCallbacks"]
       36 GETUPVAL                         R3 2
       37 GETTABLE                         R1 R2 R3
       38 JUMPIFNOT                        R1 ; [+21]
       39 GETIMPORT                        R2 K3 [table.find]
       41 MOVE                             R3 R1
       42 GETUPVAL                         R4 3
       43 CALL                             R2 2 1
       44 JUMPIFNOT                        R2 ; [+6]
       45 LENGTH                           R4 R1
       46 GETTABLE                         R3 R1 R4
       47 SETTABLE                         R3 R1 R2
       48 LENGTH                           R3 R1
       49 LOADNIL                          R4
       50 SETTABLE                         R4 R1 R3
       51 LENGTH                           R3 R1
       52 JUMPIFNOTEQKN                    R3 K6 [0] ; [+7]
       54 GETUPVAL                         R3 1
       55 GETTABLEKS                       R3 R3 K5 ["_localEventCallbacks"]
       57 GETUPVAL                         R4 2
       58 LOADNIL                          R5
       59 SETTABLE                         R5 R3 R4
       60 RETURN                           R0 0

PROTO_14:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R0 K0 ["_getRemoteEvent"]
        3 CALL                             R3 2 1
        4 LOADNIL                          R4
        5 GETTABLEKS                       R5 R0 K1 ["_isServer"]
        7 JUMPIFNOT                        R5 ; [+11]
        8 GETTABLEKS                       R5 R3 K2 ["OnServerEvent"]
       10 NEWCLOSURE                       R7 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R2
       14 NAMECALL                         R5 R5 K3 ["Connect"]
       16 CALL                             R5 2 1
       17 MOVE                             R4 R5
       18 JUMP                             ; [+10]
       19 GETTABLEKS                       R5 R3 K4 ["OnClientEvent"]
       21 NEWCLOSURE                       R7 P1
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R2
       25 NAMECALL                         R5 R5 K3 ["Connect"]
       27 CALL                             R5 2 1
       28 MOVE                             R4 R5
       29 GETTABLEKS                       R6 R0 K5 ["_connections"]
       31 FASTCALL2                        TABLE_INSERT R6 R4 ; [+4]
       33 MOVE                             R7 R4
       34 GETIMPORT                        R5 K8 [table.insert]
       36 CALL                             R5 2 0
       37 GETTABLEKS                       R6 R0 K9 ["_localEventCallbacks"]
       39 GETTABLE                         R5 R6 R1
       40 JUMPIF                           R5 ; [+5]
       41 NEWTABLE                         R5 0 0
       43 GETTABLEKS                       R6 R0 K9 ["_localEventCallbacks"]
       45 SETTABLE                         R5 R6 R1
       46 FASTCALL2                        TABLE_INSERT R5 R2 ; [+5]
       48 MOVE                             R7 R5
       49 MOVE                             R8 R2
       50 GETIMPORT                        R6 K8 [table.insert]
       52 CALL                             R6 2 0
       53 NEWCLOSURE                       R6 P2
       54 CAPTURE                          REF R4
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R2
       58 CLOSEUPVALS                      R4
       59 RETURN                           R6 1

PROTO_15:
        0 PREPVARARGS                      3
        1 JUMPIFNOTEQKNIL                  R2 ; [+2]
        3 LOADB                            R4 0 +1
        4 LOADB                            R4 1
        5 LOADK                            R5 K0 ["Fire requires a target id for %*"]
        6 MOVE                             R7 R1
        7 NAMECALL                         R5 R5 K1 ["format"]
        9 CALL                             R5 2 1
       10 FASTCALL2                        ASSERT R4 R5 ; [+3]
       12 GETIMPORT                        R3 K3 [assert]
       14 CALL                             R3 2 0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K4 ["Identity"]
       18 GETTABLEKS                       R3 R3 K5 ["FOCUSED"]
       20 JUMPIFNOTEQ                      R2 R3 ; [+15]
       22 GETTABLEKS                       R3 R0 K6 ["_isServer"]
       24 JUMPIFNOT                        R3 ; [+11]
       25 GETTABLEKS                       R3 R0 K7 ["_logger"]
       27 LOADK                            R5 K8 ["[{key}] FOCUSED is not supported from the server; message not delivered"]
       28 DUPTABLE                         R6 K10 [{"key"}]
       29 SETTABLEKS                       R1 R6 K9 ["key"]
       31 DUPTABLE                         R7 K13 [{["force"] = True}]
       32 NAMECALL                         R3 R3 K14 ["warning"]
       34 CALL                             R3 4 0
       35 RETURN                           R0 0
       36 DUPTABLE                         R3 K19 [{"fromId", "toId", "args", "argCount"}]
       37 GETTABLEKS                       R4 R0 K20 ["_identity"]
       39 SETTABLEKS                       R4 R3 K15 ["fromId"]
       41 SETTABLEKS                       R2 R3 K16 ["toId"]
       43 NEWTABLE                         R4 0 0
       45 GETVARARGS                       R5 -1
       46 SETLIST                          R4 R5 -1 [1]
       48 SETTABLEKS                       R4 R3 K17 ["args"]
       50 LOADK                            R5 K21 ["#"]
       51 FASTCALL1                        SELECT_VARARG R5 ; [+3]
       52 GETIMPORT                        R4 K23 [select]
       54 GETVARARGS                       R6 -1
       55 CALL                             R4 -1 1
       56 SETTABLEKS                       R4 R3 K18 ["argCount"]
       58 GETTABLEKS                       R4 R0 K7 ["_logger"]
       60 LOADK                            R6 K24 ["[{key}] sending event [packet: {packet}]"]
       61 DUPTABLE                         R7 K26 [{"key", "packet"}]
       62 SETTABLEKS                       R1 R7 K9 ["key"]
       64 SETTABLEKS                       R3 R7 K25 ["packet"]
       66 NAMECALL                         R4 R4 K27 ["info"]
       68 CALL                             R4 3 0
       69 GETTABLEKS                       R4 R0 K6 ["_isServer"]
       71 JUMPIFNOT                        R4 ; [+61]
       72 GETUPVAL                         R4 0
       73 GETTABLEKS                       R4 R4 K4 ["Identity"]
       75 GETTABLEKS                       R4 R4 K28 ["ALL"]
       77 JUMPIFNOTEQ                      R2 R4 ; [+10]
       79 MOVE                             R6 R1
       80 NAMECALL                         R4 R0 K29 ["_getRemoteEvent"]
       82 CALL                             R4 2 1
       83 MOVE                             R6 R3
       84 NAMECALL                         R4 R4 K30 ["FireAllClients"]
       86 CALL                             R4 2 0
       87 JUMP                             ; [+68]
       88 GETTABLEKS                       R4 R0 K20 ["_identity"]
       90 JUMPIFEQ                         R2 R4 ; [+65]
       92 LOADB                            R4 0
       93 FASTCALL1                        TYPEOF R2 ; [+3]
       94 MOVE                             R6 R2
       95 GETIMPORT                        R5 K32 [typeof]
       97 CALL                             R5 1 1
       98 JUMPIFNOTEQKS                    R5 K33 ["Instance"] ; [+5]
      100 LOADK                            R6 K34 ["Player"]
      101 NAMECALL                         R4 R2 K35 ["IsA"]
      103 CALL                             R4 2 1
      104 JUMPIFNOT                        R4 ; [+10]
      105 MOVE                             R6 R1
      106 NAMECALL                         R4 R0 K29 ["_getRemoteEvent"]
      108 CALL                             R4 2 1
      109 MOVE                             R6 R2
      110 MOVE                             R7 R3
      111 NAMECALL                         R4 R4 K36 ["FireClient"]
      113 CALL                             R4 3 0
      114 JUMP                             ; [+41]
      115 GETTABLEKS                       R4 R0 K7 ["_logger"]
      117 LOADK                            R6 K37 ["[{key}] cannot Fire to a non-Player identity from the server; remote delivery dropped [got: {got}]"]
      118 DUPTABLE                         R7 K39 [{"key", "got"}]
      119 SETTABLEKS                       R1 R7 K9 ["key"]
      121 FASTCALL1                        TOSTRING R2 ; [+3]
      122 MOVE                             R9 R2
      123 GETIMPORT                        R8 K41 [tostring]
      125 CALL                             R8 1 1
      126 SETTABLEKS                       R8 R7 K38 ["got"]
      128 DUPTABLE                         R8 K13 [{["force"] = True}]
      129 NAMECALL                         R4 R4 K14 ["warning"]
      131 CALL                             R4 4 0
      132 JUMP                             ; [+23]
      133 GETTABLEKS                       R4 R0 K20 ["_identity"]
      135 JUMPIFEQ                         R2 R4 ; [+20]
      137 MOVE                             R6 R1
      138 NAMECALL                         R4 R0 K42 ["_findRemoteEvent"]
      140 CALL                             R4 2 1
      141 JUMPIFNOT                        R4 ; [+5]
      142 MOVE                             R7 R3
      143 NAMECALL                         R5 R4 K43 ["FireServer"]
      145 CALL                             R5 2 0
      146 JUMP                             ; [+9]
      147 GETTABLEKS                       R5 R0 K7 ["_logger"]
      149 LOADK                            R7 K44 ["[{key}] no server remote yet; remote delivery dropped"]
      150 DUPTABLE                         R8 K10 [{"key"}]
      151 SETTABLEKS                       R1 R8 K9 ["key"]
      153 NAMECALL                         R5 R5 K45 ["debug"]
      155 CALL                             R5 3 0
      156 MOVE                             R6 R1
      157 MOVE                             R7 R3
      158 NAMECALL                         R4 R0 K46 ["_dispatchLocalEvent"]
      160 CALL                             R4 3 0
      161 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R4 R1 K0 ["toId"]
        3 NAMECALL                         R2 R2 K1 ["_shouldHandle"]
        5 CALL                             R2 2 1
        6 JUMPIF                           R2 ; [+26]
        7 GETIMPORT                        R2 K3 [error]
        9 LOADK                            R4 K4 ["Network action %* sent to %* failed - the server is not the target "]
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R8 R1 K0 ["toId"]
       13 FASTCALL1                        TOSTRING R8 ; [+2]
       14 GETIMPORT                        R7 K6 [tostring]
       16 CALL                             R7 1 1
       17 NAMECALL                         R4 R4 K7 ["format"]
       19 CALL                             R4 3 1
       20 LOADK                            R5 K8 ["and cannot answer for another peer. Sender: %*."]
       21 GETTABLEKS                       R8 R1 K9 ["fromId"]
       23 FASTCALL1                        TOSTRING R8 ; [+2]
       24 GETIMPORT                        R7 K6 [tostring]
       26 CALL                             R7 1 1
       27 NAMECALL                         R5 R5 K7 ["format"]
       29 CALL                             R5 2 1
       30 CONCAT                           R3 R4 R5
       31 LOADN                            R4 0
       32 CALL                             R2 2 0
       33 GETUPVAL                         R2 0
       34 GETTABLEKS                       R2 R2 K10 ["_logger"]
       36 LOADK                            R4 K11 ["[{key}] received invoke"]
       37 DUPTABLE                         R5 K13 [{"key"}]
       38 GETUPVAL                         R6 1
       39 SETTABLEKS                       R6 R5 K12 ["key"]
       41 NAMECALL                         R2 R2 K14 ["info"]
       43 CALL                             R2 3 0
       44 MOVE                             R2 R0
       45 JUMPIF                           R2 ; [+2]
       46 GETTABLEKS                       R2 R1 K9 ["fromId"]
       48 GETUPVAL                         R3 2
       49 MOVE                             R4 R2
       50 GETTABLEKS                       R6 R1 K15 ["args"]
       52 LOADN                            R7 1
       53 GETTABLEKS                       R8 R1 K16 ["argCount"]
       55 FASTCALL                         TABLE_UNPACK ; [+2]
       56 GETIMPORT                        R5 K19 [table.unpack]
       58 CALL                             R5 3 -1
       59 CALL                             R3 -1 -1
       60 RETURN                           R3 -1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_logger"]
        3 LOADK                            R3 K1 ["[{key}] received invoke"]
        4 DUPTABLE                         R4 K3 [{"key"}]
        5 GETUPVAL                         R5 1
        6 SETTABLEKS                       R5 R4 K2 ["key"]
        8 NAMECALL                         R1 R1 K4 ["info"]
       10 CALL                             R1 3 0
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R2 R0 K5 ["fromId"]
       14 GETTABLEKS                       R4 R0 K6 ["args"]
       16 LOADN                            R5 1
       17 GETTABLEKS                       R6 R0 K7 ["argCount"]
       19 FASTCALL                         TABLE_UNPACK ; [+2]
       20 GETIMPORT                        R3 K10 [table.unpack]
       22 CALL                             R3 3 -1
       23 CALL                             R1 -1 -1
       24 RETURN                           R1 -1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_localInvokeCallbacks"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 GETUPVAL                         R1 2
        6 JUMPIFEQ                         R0 R1 ; [+2]
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K1 ["_isServer"]
       12 JUMPIFNOT                        R0 ; [+5]
       13 GETUPVAL                         R0 3
       14 LOADNIL                          R1
       15 SETTABLEKS                       R1 R0 K2 ["OnServerInvoke"]
       17 JUMP                             ; [+4]
       18 GETUPVAL                         R0 3
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K3 ["OnClientInvoke"]
       22 GETUPVAL                         R0 0
       23 GETTABLEKS                       R0 R0 K0 ["_localInvokeCallbacks"]
       25 GETUPVAL                         R1 1
       26 LOADNIL                          R2
       27 SETTABLE                         R2 R0 R1
       28 GETUPVAL                         R0 0
       29 GETTABLEKS                       R0 R0 K4 ["_invokeHandlers"]
       31 GETUPVAL                         R1 1
       32 LOADNIL                          R2
       33 SETTABLE                         R2 R0 R1
       34 GETUPVAL                         R0 0
       35 GETTABLEKS                       R0 R0 K5 ["_boundRemoteFunctions"]
       37 GETUPVAL                         R1 1
       38 LOADNIL                          R2
       39 SETTABLE                         R2 R0 R1
       40 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R6 R0 K0 ["_invokeHandlers"]
        2 GETTABLE                         R5 R6 R1
        3 NOT                              R4 R5
        4 LOADK                            R5 K1 ["Invoke handler for key %* already exists"]
        5 MOVE                             R7 R1
        6 NAMECALL                         R5 R5 K2 ["format"]
        8 CALL                             R5 2 1
        9 FASTCALL2                        ASSERT R4 R5 ; [+3]
       11 GETIMPORT                        R3 K4 [assert]
       13 CALL                             R3 2 0
       14 MOVE                             R5 R1
       15 NAMECALL                         R3 R0 K5 ["_getRemoteFunction"]
       17 CALL                             R3 2 1
       18 GETTABLEKS                       R4 R0 K6 ["_isServer"]
       20 JUMPIFNOT                        R4 ; [+7]
       21 NEWCLOSURE                       R4 P0
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R2
       25 SETTABLEKS                       R4 R3 K7 ["OnServerInvoke"]
       27 JUMP                             ; [+6]
       28 NEWCLOSURE                       R4 P1
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R2
       32 SETTABLEKS                       R4 R3 K8 ["OnClientInvoke"]
       34 GETTABLEKS                       R4 R0 K9 ["_localInvokeCallbacks"]
       36 SETTABLE                         R2 R4 R1
       37 GETTABLEKS                       R4 R0 K0 ["_invokeHandlers"]
       39 LOADB                            R5 1
       40 SETTABLE                         R5 R4 R1
       41 GETTABLEKS                       R4 R0 K10 ["_boundRemoteFunctions"]
       43 SETTABLE                         R3 R4 R1
       44 NEWCLOSURE                       R4 P2
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R3
       49 RETURN                           R4 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Local invoke handler for %* missing"]
        2 GETUPVAL                         R4 1
        3 NAMECALL                         R2 R2 K1 ["format"]
        5 CALL                             R2 2 1
        6 FASTCALL2                        ASSERT R1 R2 ; [+3]
        8 GETIMPORT                        R0 K3 [assert]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 0
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K4 ["fromId"]
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K5 ["args"]
       18 LOADN                            R4 1
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R5 R5 K6 ["argCount"]
       22 FASTCALL                         TABLE_UNPACK ; [+2]
       23 GETIMPORT                        R2 K9 [table.unpack]
       25 CALL                             R2 3 -1
       26 CALL                             R0 -1 -1
       27 RETURN                           R0 -1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["_getRemoteFunction"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["_isServer"]
        8 JUMPIFNOT                        R1 ; [+6]
        9 GETUPVAL                         R3 2
       10 GETUPVAL                         R4 3
       11 NAMECALL                         R1 R0 K2 ["InvokeClient"]
       13 CALL                             R1 3 -1
       14 RETURN                           R1 -1
       15 GETUPVAL                         R3 3
       16 NAMECALL                         R1 R0 K3 ["InvokeServer"]
       18 CALL                             R1 2 -1
       19 RETURN                           R1 -1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 JUMPIFEQKNIL                     R0 ; [+2]
        5 RETURN                           R0 0
        6 LOADB                            R0 1
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 2
        9 JUMPIFNOT                        R0 ; [+3]
       10 GETUPVAL                         R0 2
       11 SETUPVAL                         R0 1
       12 JUMP                             ; [+30]
       13 GETIMPORT                        R0 K2 [table.pack]
       15 LOADB                            R1 0
       16 LOADK                            R3 K3 ["Network action %* sent to %* failed - Target is not reachable. "]
       17 GETUPVAL                         R5 3
       18 GETUPVAL                         R7 4
       19 FASTCALL1                        TOSTRING R7 ; [+2]
       20 GETIMPORT                        R6 K5 [tostring]
       22 CALL                             R6 1 1
       23 NAMECALL                         R3 R3 K6 ["format"]
       25 CALL                             R3 3 1
       26 LOADK                            R4 K7 ["No OnInvoke handler responded within %*s. Sender: %*."]
       27 GETUPVAL                         R6 5
       28 GETTABLEKS                       R6 R6 K8 ["_unreachableTimeout"]
       30 GETUPVAL                         R8 5
       31 GETTABLEKS                       R8 R8 K9 ["_identity"]
       33 FASTCALL1                        TOSTRING R8 ; [+2]
       34 GETIMPORT                        R7 K5 [tostring]
       36 CALL                             R7 1 1
       37 NAMECALL                         R4 R4 K6 ["format"]
       39 CALL                             R4 3 1
       40 CONCAT                           R2 R3 R4
       41 CALL                             R0 2 1
       42 SETUPVAL                         R0 1
       43 GETIMPORT                        R0 K12 [coroutine.status]
       45 GETUPVAL                         R1 6
       46 CALL                             R0 1 1
       47 JUMPIFNOTEQKS                    R0 K13 ["suspended"] ; [+5]
       49 GETIMPORT                        R0 K16 [task.spawn]
       51 GETUPVAL                         R1 6
       52 CALL                             R0 1 0
       53 RETURN                           R0 0

PROTO_23:
        0 GETIMPORT                        R0 K2 [table.pack]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K3 ["invoke"]
        5 FASTPCALL                        pcall 1 ; [+2]
        6 GETIMPORT                        R1 K5 [pcall]
        8 CALL                             R1 1 -1
        9 CALL                             R0 -1 1
       10 GETUPVAL                         R1 1
       11 SUBK                             R1 R1 K6 [1]
       12 SETUPVAL                         R1 1
       13 GETUPVAL                         R1 2
       14 JUMPIFNOT                        R1 ; [+19]
       15 GETTABLEN                        R1 R0 1
       16 JUMPIFNOT                        R1 ; [+16]
       17 GETUPVAL                         R1 3
       18 GETTABLEKS                       R1 R1 K7 ["_logger"]
       20 LOADK                            R3 K8 ["[{key}] invoke channel [{channel}] returned after another channel already resolved; result discarded"]
       21 DUPTABLE                         R4 K11 [{"key", "channel"}]
       22 GETUPVAL                         R5 4
       23 SETTABLEKS                       R5 R4 K9 ["key"]
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K12 ["name"]
       28 SETTABLEKS                       R5 R4 K10 ["channel"]
       30 NAMECALL                         R1 R1 K13 ["debug"]
       32 CALL                             R1 3 0
       33 RETURN                           R0 0
       34 GETTABLEN                        R1 R0 1
       35 JUMPIFNOT                        R1 ; [+4]
       36 LOADB                            R1 1
       37 SETUPVAL                         R1 2
       38 SETUPVAL                         R0 5
       39 JUMP                             ; [+10]
       40 GETUPVAL                         R1 6
       41 JUMPIF                           R1 ; [+1]
       42 SETUPVAL                         R0 6
       43 GETUPVAL                         R1 1
       44 LOADN                            R2 0
       45 JUMPIFNOTLT                      R2 R1 ; [+2]
       47 RETURN                           R0 0
       48 GETUPVAL                         R1 6
       49 SETUPVAL                         R1 5
       50 GETIMPORT                        R1 K16 [task.cancel]
       52 GETUPVAL                         R2 7
       53 CALL                             R1 1 0
       54 GETIMPORT                        R1 K19 [coroutine.status]
       56 GETUPVAL                         R2 8
       57 CALL                             R1 1 1
       58 JUMPIFNOTEQKS                    R1 K20 ["suspended"] ; [+5]
       60 GETIMPORT                        R1 K22 [task.spawn]
       62 GETUPVAL                         R2 8
       63 CALL                             R1 1 0
       64 RETURN                           R0 0

PROTO_24:
        0 PREPVARARGS                      3
        1 JUMPIFNOTEQKNIL                  R2 ; [+2]
        3 LOADB                            R4 0 +1
        4 LOADB                            R4 1
        5 LOADK                            R5 K0 ["InvokeAsync requires a target id for %*"]
        6 MOVE                             R7 R1
        7 NAMECALL                         R5 R5 K1 ["format"]
        9 CALL                             R5 2 1
       10 FASTCALL2                        ASSERT R4 R5 ; [+3]
       12 GETIMPORT                        R3 K3 [assert]
       14 CALL                             R3 2 0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K4 ["Identity"]
       18 GETTABLEKS                       R3 R3 K5 ["FOCUSED"]
       20 JUMPIFNOTEQ                      R2 R3 ; [+24]
       22 GETTABLEKS                       R3 R0 K6 ["_isServer"]
       24 JUMPIFNOT                        R3 ; [+20]
       25 GETIMPORT                        R3 K8 [error]
       27 LOADK                            R5 K9 ["Network action %* invoked with FOCUSED from the server failed - the server has no focused peer to reach. "]
       28 MOVE                             R7 R1
       29 NAMECALL                         R5 R5 K1 ["format"]
       31 CALL                             R5 2 1
       32 LOADK                            R6 K10 ["Sender: %*."]
       33 GETTABLEKS                       R9 R0 K11 ["_identity"]
       35 FASTCALL1                        TOSTRING R9 ; [+2]
       36 GETIMPORT                        R8 K13 [tostring]
       38 CALL                             R8 1 1
       39 NAMECALL                         R6 R6 K1 ["format"]
       41 CALL                             R6 2 1
       42 CONCAT                           R4 R5 R6
       43 LOADN                            R5 0
       44 CALL                             R3 2 0
       45 DUPTABLE                         R3 K18 [{"fromId", "toId", "args", "argCount"}]
       46 GETTABLEKS                       R4 R0 K11 ["_identity"]
       48 SETTABLEKS                       R4 R3 K14 ["fromId"]
       50 SETTABLEKS                       R2 R3 K15 ["toId"]
       52 NEWTABLE                         R4 0 0
       54 GETVARARGS                       R5 -1
       55 SETLIST                          R4 R5 -1 [1]
       57 SETTABLEKS                       R4 R3 K16 ["args"]
       59 LOADK                            R5 K19 ["#"]
       60 FASTCALL1                        SELECT_VARARG R5 ; [+3]
       61 GETIMPORT                        R4 K21 [select]
       63 GETVARARGS                       R6 -1
       64 CALL                             R4 -1 1
       65 SETTABLEKS                       R4 R3 K17 ["argCount"]
       67 GETTABLEKS                       R4 R0 K22 ["_logger"]
       69 LOADK                            R6 K23 ["[{key}] sending invoke [packet: {packet}]"]
       70 DUPTABLE                         R7 K26 [{"key", "packet"}]
       71 SETTABLEKS                       R1 R7 K24 ["key"]
       73 SETTABLEKS                       R3 R7 K25 ["packet"]
       75 NAMECALL                         R4 R4 K27 ["info"]
       77 CALL                             R4 3 0
       78 NEWTABLE                         R4 0 0
       80 GETTABLEKS                       R6 R0 K28 ["_invokeHandlers"]
       82 GETTABLE                         R5 R6 R1
       83 JUMPIFNOT                        R5 ; [+21]
       84 MOVE                             R7 R2
       85 NAMECALL                         R5 R0 K29 ["_shouldHandle"]
       87 CALL                             R5 2 1
       88 JUMPIFNOT                        R5 ; [+16]
       89 GETTABLEKS                       R6 R0 K30 ["_localInvokeCallbacks"]
       91 GETTABLE                         R5 R6 R1
       92 DUPTABLE                         R8 K34 [{["name"] = "local", ["invoke"]}]
       93 NEWCLOSURE                       R9 P0
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R3
       97 SETTABLEKS                       R9 R8 K33 ["invoke"]
       99 FASTCALL2                        TABLE_INSERT R4 R8 ; [+4]
      101 MOVE                             R7 R4
      102 GETIMPORT                        R6 K37 [table.insert]
      104 CALL                             R6 2 0
      105 LOADNIL                          R5
      106 GETTABLEKS                       R6 R0 K6 ["_isServer"]
      108 JUMPIFNOT                        R6 ; [+27]
      109 LOADB                            R6 0
      110 GETUPVAL                         R7 0
      111 GETTABLEKS                       R7 R7 K4 ["Identity"]
      113 GETTABLEKS                       R7 R7 K38 ["ALL"]
      115 JUMPIFEQ                         R2 R7 ; [+18]
      117 LOADB                            R6 0
      118 GETTABLEKS                       R7 R0 K11 ["_identity"]
      120 JUMPIFEQ                         R2 R7 ; [+13]
      122 LOADB                            R6 0
      123 FASTCALL1                        TYPEOF R2 ; [+3]
      124 MOVE                             R8 R2
      125 GETIMPORT                        R7 K40 [typeof]
      127 CALL                             R7 1 1
      128 JUMPIFNOTEQKS                    R7 K41 ["Instance"] ; [+5]
      130 LOADK                            R8 K42 ["Player"]
      131 NAMECALL                         R6 R2 K43 ["IsA"]
      133 CALL                             R6 2 1
      134 MOVE                             R5 R6
      135 JUMP                             ; [+6]
      136 GETTABLEKS                       R6 R0 K11 ["_identity"]
      138 JUMPIFNOTEQ                      R2 R6 ; [+2]
      140 LOADB                            R5 0 +1
      141 LOADB                            R5 1
      142 JUMPIFNOT                        R5 ; [+14]
      143 DUPTABLE                         R8 K45 [{["name"] = "remote", ["invoke"]}]
      144 NEWCLOSURE                       R9 P1
      145 CAPTURE                          VAL R0
      146 CAPTURE                          VAL R1
      147 CAPTURE                          VAL R2
      148 CAPTURE                          VAL R3
      149 SETTABLEKS                       R9 R8 K33 ["invoke"]
      151 FASTCALL2                        TABLE_INSERT R4 R8 ; [+4]
      153 MOVE                             R7 R4
      154 GETIMPORT                        R6 K37 [table.insert]
      156 CALL                             R6 2 0
      157 LENGTH                           R6 R4
      158 JUMPIFNOTEQKN                    R6 K46 [0] ; [+26]
      160 GETIMPORT                        R6 K8 [error]
      162 LOADK                            R8 K47 ["Network action %* sent to %* failed - Target is not reachable. "]
      163 MOVE                             R10 R1
      164 FASTCALL1                        TOSTRING R2 ; [+3]
      165 MOVE                             R12 R2
      166 GETIMPORT                        R11 K13 [tostring]
      168 CALL                             R11 1 1
      169 NAMECALL                         R8 R8 K1 ["format"]
      171 CALL                             R8 3 1
      172 LOADK                            R9 K48 ["No OnInvoke handler responded for this action. Sender: %*."]
      173 GETTABLEKS                       R12 R0 K11 ["_identity"]
      175 FASTCALL1                        TOSTRING R12 ; [+2]
      176 GETIMPORT                        R11 K13 [tostring]
      178 CALL                             R11 1 1
      179 NAMECALL                         R9 R9 K1 ["format"]
      181 CALL                             R9 2 1
      182 CONCAT                           R7 R8 R9
      183 LOADN                            R8 0
      184 CALL                             R6 2 0
      185 GETIMPORT                        R6 K51 [coroutine.running]
      187 CALL                             R6 0 1
      188 LOADB                            R7 0
      189 LOADNIL                          R8
      190 LOADNIL                          R9
      191 LENGTH                           R10 R4
      192 GETIMPORT                        R11 K54 [task.delay]
      194 GETTABLEKS                       R12 R0 K55 ["_unreachableTimeout"]
      196 NEWCLOSURE                       R13 P2
      197 CAPTURE                          REF R7
      198 CAPTURE                          REF R8
      199 CAPTURE                          REF R9
      200 CAPTURE                          VAL R1
      201 CAPTURE                          VAL R2
      202 CAPTURE                          VAL R0
      203 CAPTURE                          VAL R6
      204 CALL                             R11 2 1
      205 MOVE                             R12 R4
      206 LOADNIL                          R13
      207 LOADNIL                          R14
      208 FORGPREP                         R12
      209 GETIMPORT                        R17 K57 [task.spawn]
      211 NEWCLOSURE                       R18 P3
      212 CAPTURE                          VAL R16
      213 CAPTURE                          REF R10
      214 CAPTURE                          REF R7
      215 CAPTURE                          VAL R0
      216 CAPTURE                          VAL R1
      217 CAPTURE                          REF R8
      218 CAPTURE                          REF R9
      219 CAPTURE                          VAL R11
      220 CAPTURE                          VAL R6
      221 CALL                             R17 1 0
      222 FORGLOOP                         R12 2 ; [-14]
      224 JUMPIF                           R7 ; [+4]
      225 JUMPIF                           R8 ; [+3]
      226 GETIMPORT                        R12 K59 [coroutine.yield]
      228 CALL                             R12 0 0
      229 GETTABLEKS                       R12 R0 K22 ["_logger"]
      231 LOADK                            R14 K60 ["[{key}] received invoke response"]
      232 DUPTABLE                         R15 K61 [{"key"}]
      233 SETTABLEKS                       R1 R15 K24 ["key"]
      235 NAMECALL                         R12 R12 K27 ["info"]
      237 CALL                             R12 3 0
      238 MOVE                             R12 R8
      239 GETTABLEN                        R13 R12 1
      240 JUMPIF                           R13 ; [+5]
      241 GETIMPORT                        R13 K8 [error]
      243 GETTABLEN                        R14 R12 2
      244 LOADN                            R15 0
      245 CALL                             R13 2 0
      246 LOADN                            R15 2
      247 GETTABLEKS                       R16 R12 K62 ["n"]
      249 FASTCALL3                        TABLE_UNPACK R12 R15 R16
      251 MOVE                             R14 R12
      252 GETIMPORT                        R13 K64 [table.unpack]
      254 CALL                             R13 3 -1
      255 CLOSEUPVALS                      R7
      256 RETURN                           R13 -1

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["_isDerived"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R1 R0 K1 ["_connections"]
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 FORGPREP                         R1
        9 NAMECALL                         R6 R5 K2 ["Disconnect"]
       11 CALL                             R6 1 0
       12 FORGLOOP                         R1 2 ; [-4]
       14 GETIMPORT                        R1 K5 [table.clear]
       16 GETTABLEKS                       R2 R0 K1 ["_connections"]
       18 CALL                             R1 1 0
       19 GETIMPORT                        R1 K5 [table.clear]
       21 GETTABLEKS                       R2 R0 K6 ["_localEventCallbacks"]
       23 CALL                             R1 1 0
       24 GETIMPORT                        R1 K5 [table.clear]
       26 GETTABLEKS                       R2 R0 K7 ["_localInvokeCallbacks"]
       28 CALL                             R1 1 0
       29 GETTABLEKS                       R1 R0 K8 ["_boundRemoteFunctions"]
       31 LOADNIL                          R2
       32 LOADNIL                          R3
       33 FORGPREP                         R1
       34 GETTABLEKS                       R6 R0 K9 ["_isServer"]
       36 JUMPIFNOT                        R6 ; [+4]
       37 LOADNIL                          R6
       38 SETTABLEKS                       R6 R5 K10 ["OnServerInvoke"]
       40 JUMP                             ; [+3]
       41 LOADNIL                          R6
       42 SETTABLEKS                       R6 R5 K11 ["OnClientInvoke"]
       44 FORGLOOP                         R1 2 ; [-11]
       46 GETIMPORT                        R1 K5 [table.clear]
       48 GETTABLEKS                       R2 R0 K8 ["_boundRemoteFunctions"]
       50 CALL                             R1 1 0
       51 GETIMPORT                        R1 K5 [table.clear]
       53 GETTABLEKS                       R2 R0 K12 ["_invokeHandlers"]
       55 CALL                             R1 1 0
       56 LOADNIL                          R1
       57 SETTABLEKS                       R1 R0 K13 ["_networkFolder"]
       59 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DMNetworking"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["ReplicatedStorage"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["RunService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R0 K11 ["Utils"]
       23 GETTABLEKS                       R4 R4 K12 ["Logger"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R0 K13 ["Types"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K10 [require]
       33 GETTABLEKS                       R6 R0 K11 ["Utils"]
       35 GETTABLEKS                       R6 R6 K14 ["makeKey"]
       37 CALL                             R5 1 1
       38 NEWTABLE                         R6 16 0
       40 SETTABLEKS                       R6 R6 K15 ["__index"]
       42 DUPCLOSURE                       R7 K16 [PROTO_0]
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R6
       47 SETTABLEKS                       R7 R6 K17 ["new"]
       49 DUPCLOSURE                       R7 K18 [PROTO_1]
       50 DUPCLOSURE                       R8 K19 [PROTO_2]
       51 SETTABLEKS                       R8 R6 K20 ["GetIdentity"]
       53 DUPCLOSURE                       R8 K21 [PROTO_3]
       54 SETTABLEKS                       R8 R6 K22 ["WithConfig"]
       56 DUPCLOSURE                       R8 K23 [PROTO_4]
       57 CAPTURE                          VAL R4
       58 SETTABLEKS                       R8 R6 K24 ["_shouldHandle"]
       60 DUPCLOSURE                       R8 K25 [PROTO_5]
       61 CAPTURE                          VAL R1
       62 SETTABLEKS                       R8 R6 K26 ["_getNetworkFolder"]
       64 DUPCLOSURE                       R8 K27 [PROTO_6]
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R4
       67 SETTABLEKS                       R8 R6 K28 ["_getRemoteEvent"]
       69 DUPCLOSURE                       R8 K29 [PROTO_7]
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R4
       73 SETTABLEKS                       R8 R6 K30 ["_findRemoteEvent"]
       75 DUPCLOSURE                       R8 K31 [PROTO_8]
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R4
       78 SETTABLEKS                       R8 R6 K32 ["_getRemoteFunction"]
       80 DUPCLOSURE                       R8 K33 [PROTO_10]
       81 SETTABLEKS                       R8 R6 K34 ["_dispatchLocalEvent"]
       83 DUPCLOSURE                       R8 K35 [PROTO_14]
       84 SETTABLEKS                       R8 R6 K36 ["OnFire"]
       86 DUPCLOSURE                       R8 K37 [PROTO_15]
       87 CAPTURE                          VAL R4
       88 SETTABLEKS                       R8 R6 K38 ["Fire"]
       90 DUPCLOSURE                       R8 K39 [PROTO_19]
       91 SETTABLEKS                       R8 R6 K40 ["OnInvoke"]
       93 DUPCLOSURE                       R8 K41 [PROTO_24]
       94 CAPTURE                          VAL R4
       95 SETTABLEKS                       R8 R6 K42 ["InvokeAsync"]
       97 DUPCLOSURE                       R8 K43 [PROTO_25]
       98 SETTABLEKS                       R8 R6 K44 ["Destroy"]
      100 RETURN                           R6 1
