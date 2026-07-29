PROTO_0:
        0 JUMPIFNOTEQKNIL                  R1 ; [+5]
        2 NAMECALL                         R2 R0 K0 ["_isFocusedDM"]
        4 CALL                             R2 1 -1
        5 RETURN                           R2 -1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["ALL"]
        9 JUMPIFNOTEQ                      R1 R2 ; [+3]
       11 LOADB                            R2 1
       12 RETURN                           R2 1
       13 GETTABLEKS                       R3 R0 K2 ["_identity"]
       15 JUMPIFEQ                         R1 R3 ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R1 16 0
        2 LOADK                            R2 K0 ["Studio"]
        3 SETTABLEKS                       R2 R1 K1 ["_type"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["Logger"]
        8 GETTABLEKS                       R2 R2 K3 ["new"]
       10 LOADK                            R4 K4 ["[Networking] [%*]"]
       11 GETTABLEKS                       R6 R1 K1 ["_type"]
       13 NAMECALL                         R4 R4 K5 ["format"]
       15 CALL                             R4 2 1
       16 MOVE                             R3 R4
       17 CALL                             R2 1 1
       18 SETTABLEKS                       R2 R1 K6 ["_logger"]
       20 GETTABLEKS                       R2 R0 K7 ["plugin"]
       22 SETTABLEKS                       R2 R1 K8 ["_plugin"]
       24 GETTABLEKS                       R2 R0 K9 ["identity"]
       26 SETTABLEKS                       R2 R1 K10 ["_identity"]
       28 GETTABLEKS                       R2 R0 K11 ["isGuest"]
       30 SETTABLEKS                       R2 R1 K12 ["_isGuest"]
       32 GETTABLEKS                       R2 R0 K13 ["isHost"]
       34 SETTABLEKS                       R2 R1 K14 ["_isHost"]
       36 GETTABLEKS                       R3 R0 K16 ["unreachableTimeout"]
       38 ORK                              R2 R3 K15 [2]
       39 SETTABLEKS                       R2 R1 K17 ["_unreachableTimeout"]
       41 GETTABLEKS                       R3 R0 K18 ["useSuspendOverride"]
       43 JUMPIFEQKB                       R3 TRUE ; [+2]
       45 LOADB                            R2 0 +1
       46 LOADB                            R2 1
       47 SETTABLEKS                       R2 R1 K19 ["_useSuspendOverride"]
       49 NEWTABLE                         R2 0 0
       51 SETTABLEKS                       R2 R1 K20 ["_connections"]
       53 NEWTABLE                         R2 0 0
       55 SETTABLEKS                       R2 R1 K21 ["_invokeThreads"]
       57 NEWTABLE                         R2 0 0
       59 SETTABLEKS                       R2 R1 K22 ["_infiniteYieldThreads"]
       61 NEWTABLE                         R2 0 0
       63 SETTABLEKS                       R2 R1 K23 ["_pendingResponses"]
       65 LOADN                            R2 0
       66 SETTABLEKS                       R2 R1 K24 ["_invokeCounter"]
       68 GETUPVAL                         R4 1
       69 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       71 MOVE                             R3 R1
       72 GETIMPORT                        R2 K26 [setmetatable]
       74 CALL                             R2 2 0
       75 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_isGuest"]
        2 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_isHost"]
        2 RETURN                           R1 1

PROTO_4:
        0 GETIMPORT                        R2 K2 [table.concat]
        2 MOVE                             R3 R1
        3 LOADK                            R4 K3 ["_"]
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_5:
        0 NAMECALL                         R1 R0 K0 ["IsGuest"]
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+8]
        4 NAMECALL                         R1 R0 K1 ["IsHost"]
        6 CALL                             R1 1 1
        7 JUMPIFNOT                        R1 ; [+4]
        8 GETTABLEKS                       R1 R0 K2 ["_plugin"]
       10 GETTABLEKS                       R1 R1 K3 ["HostDataModelTypeIsCurrent"]
       12 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["_useSuspendOverride"]
        2 JUMPIFNOT                        R3 ; [+8]
        3 GETTABLEKS                       R3 R0 K1 ["_plugin"]
        5 MOVE                             R5 R1
        6 MOVE                             R6 R2
        7 NAMECALL                         R3 R3 K2 ["OnInvokeSuspendOverride"]
        9 CALL                             R3 3 1
       10 RETURN                           R3 1
       11 GETTABLEKS                       R3 R0 K1 ["_plugin"]
       13 MOVE                             R5 R1
       14 MOVE                             R6 R2
       15 NAMECALL                         R3 R3 K3 ["OnInvoke"]
       17 CALL                             R3 3 1
       18 RETURN                           R3 1

PROTO_7:
        0 LOADK                            R1 K0 ["skipping event %* in unfocused or untargeted DM: expected %*, got %*"]
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["_identity"]
        5 GETUPVAL                         R5 2
        6 NAMECALL                         R1 R1 K2 ["format"]
        8 CALL                             R1 4 1
        9 MOVE                             R0 R1
       10 RETURN                           R0 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["toIdentifier"]
        2 GETUPVAL                         R3 0
        3 JUMPIFNOTEQKNIL                  R1 ; [+6]
        5 NAMECALL                         R4 R3 K1 ["_isFocusedDM"]
        7 CALL                             R4 1 1
        8 MOVE                             R2 R4
        9 JUMP                             ; [+13]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K2 ["ALL"]
       13 JUMPIFNOTEQ                      R1 R4 ; [+3]
       15 LOADB                            R2 1
       16 JUMP                             ; [+6]
       17 GETTABLEKS                       R4 R3 K3 ["_identity"]
       19 JUMPIFEQ                         R1 R4 ; [+2]
       21 LOADB                            R2 0 +1
       22 LOADB                            R2 1
       23 JUMPIF                           R2 ; [+11]
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K4 ["_logger"]
       27 NEWCLOSURE                       R5 P0
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          VAL R1
       31 NAMECALL                         R3 R3 K5 ["log"]
       33 CALL                             R3 2 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R3 R3 K4 ["_logger"]
       38 LOADK                            R6 K6 ["received event %*"]
       39 GETUPVAL                         R8 2
       40 NAMECALL                         R6 R6 K7 ["format"]
       42 CALL                             R6 2 1
       43 MOVE                             R5 R6
       44 NAMECALL                         R3 R3 K5 ["log"]
       46 CALL                             R3 2 0
       47 GETUPVAL                         R3 3
       48 GETTABLEKS                       R4 R0 K8 ["fromIdentifier"]
       50 GETTABLEKS                       R6 R0 K9 ["args"]
       52 FASTCALL1                        TABLE_UNPACK R6 ; [+2]
       53 GETIMPORT                        R5 K12 [table.unpack]
       55 CALL                             R5 1 -1
       56 CALL                             R3 -1 0
       57 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["_connections"]
        7 GETUPVAL                         R2 2
        8 GETTABLE                         R0 R1 R2
        9 GETUPVAL                         R1 0
       10 JUMPIFNOTEQ                      R0 R1 ; [+7]
       12 GETUPVAL                         R0 1
       13 GETTABLEKS                       R0 R0 K1 ["_connections"]
       15 GETUPVAL                         R1 2
       16 LOADNIL                          R2
       17 SETTABLE                         R2 R0 R1
       18 RETURN                           R0 0

PROTO_10:
        0 NEWTABLE                         R6 0 2
        2 MOVE                             R7 R1
        3 MOVE                             R8 R2
        4 SETLIST                          R6 R7 2 [1]
        6 NAMECALL                         R4 R0 K0 ["_makeKey"]
        8 CALL                             R4 2 1
        9 MOVE                             R7 R4
       10 NEWCLOSURE                       R8 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          VAL R2
       14 CAPTURE                          VAL R3
       15 NAMECALL                         R5 R0 K1 ["_onInvoke"]
       17 CALL                             R5 3 1
       18 GETTABLEKS                       R6 R0 K2 ["_connections"]
       20 SETTABLE                         R5 R6 R4
       21 NEWCLOSURE                       R6 P1
       22 CAPTURE                          VAL R5
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R4
       25 RETURN                           R6 1

PROTO_11:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 GETVARARGS                       R5 -1
        5 NAMECALL                         R1 R1 K0 ["FireGuest"]
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1

PROTO_12:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 NAMECALL                         R4 R0 K0 ["IsGuest"]
        5 CALL                             R4 1 1
        6 JUMPIF                           R4 ; [+3]
        7 MOVE                             R4 R3
        8 LOADNIL                          R5
        9 RETURN                           R4 2
       10 MOVE                             R4 R3
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R7 R7 K1 ["TAG_GUEST_EVENT"]
       14 MOVE                             R8 R1
       15 MOVE                             R9 R2
       16 NAMECALL                         R5 R0 K2 ["_connectEvent"]
       18 CALL                             R5 4 -1
       19 RETURN                           R4 -1

PROTO_13:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 GETVARARGS                       R5 -1
        5 NAMECALL                         R1 R1 K0 ["FireHost"]
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1

PROTO_14:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 NAMECALL                         R4 R0 K0 ["IsHost"]
        5 CALL                             R4 1 1
        6 JUMPIF                           R4 ; [+3]
        7 MOVE                             R4 R3
        8 LOADNIL                          R5
        9 RETURN                           R4 2
       10 MOVE                             R4 R3
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R7 R7 K1 ["TAG_HOST_EVENT"]
       14 MOVE                             R8 R1
       15 MOVE                             R9 R2
       16 NAMECALL                         R5 R0 K2 ["_connectEvent"]
       18 CALL                             R5 4 -1
       19 RETURN                           R4 -1

PROTO_15:
        0 LOADK                            R1 K0 ["sending event %* with args: %* to identifier: %*"]
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R6 2
        4 GETTABLEKS                       R6 R6 K1 ["args"]
        6 NAMECALL                         R4 R4 K2 ["JSONEncode"]
        8 CALL                             R4 2 1
        9 GETUPVAL                         R5 3
       10 NAMECALL                         R1 R1 K3 ["format"]
       12 CALL                             R1 4 1
       13 MOVE                             R0 R1
       14 RETURN                           R0 1

PROTO_16:
        0 PREPVARARGS                      4
        1 NEWTABLE                         R6 0 2
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 SETLIST                          R6 R7 2 [1]
        7 NAMECALL                         R4 R0 K0 ["_makeKey"]
        9 CALL                             R4 2 1
       10 DUPTABLE                         R5 K4 [{"toIdentifier", "fromIdentifier", "args"}]
       11 SETTABLEKS                       R3 R5 K1 ["toIdentifier"]
       13 GETTABLEKS                       R6 R0 K5 ["_identity"]
       15 SETTABLEKS                       R6 R5 K2 ["fromIdentifier"]
       17 NEWTABLE                         R6 0 0
       19 GETVARARGS                       R7 -1
       20 SETLIST                          R6 R7 -1 [1]
       22 SETTABLEKS                       R6 R5 K3 ["args"]
       24 GETTABLEKS                       R6 R0 K6 ["_logger"]
       26 NEWCLOSURE                       R8 P0
       27 CAPTURE                          VAL R2
       28 CAPTURE                          UPVAL U0
       29 CAPTURE                          VAL R5
       30 CAPTURE                          VAL R3
       31 NAMECALL                         R6 R6 K7 ["log"]
       33 CALL                             R6 2 0
       34 GETTABLEKS                       R6 R0 K8 ["_plugin"]
       36 MOVE                             R8 R4
       37 MOVE                             R9 R5
       38 NAMECALL                         R6 R6 K9 ["Invoke"]
       40 CALL                             R6 3 0
       41 RETURN                           R0 0

PROTO_17:
        0 PREPVARARGS                      3
        1 NAMECALL                         R4 R0 K0 ["IsHost"]
        3 CALL                             R4 1 1
        4 GETIMPORT                        R5 K3 [debug.traceback]
        6 LOADK                            R6 K4 ["FireGuest can only be called from the host DM"]
        7 CALL                             R5 1 -1
        8 FASTCALL                         ASSERT ; [+2]
        9 GETIMPORT                        R3 K6 [assert]
       11 CALL                             R3 -1 0
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K7 ["TAG_GUEST_EVENT"]
       15 MOVE                             R6 R1
       16 MOVE                             R7 R2
       17 GETVARARGS                       R8 -1
       18 NAMECALL                         R3 R0 K8 ["_doFire"]
       20 CALL                             R3 -1 0
       21 RETURN                           R0 0

PROTO_18:
        0 PREPVARARGS                      3
        1 NAMECALL                         R4 R0 K0 ["IsGuest"]
        3 CALL                             R4 1 1
        4 GETIMPORT                        R5 K3 [debug.traceback]
        6 LOADK                            R6 K4 ["FireHost can only be called from the guest DM"]
        7 CALL                             R5 1 -1
        8 FASTCALL                         ASSERT ; [+2]
        9 GETIMPORT                        R3 K6 [assert]
       11 CALL                             R3 -1 0
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K7 ["TAG_HOST_EVENT"]
       15 MOVE                             R6 R1
       16 MOVE                             R7 R2
       17 GETVARARGS                       R8 -1
       18 NAMECALL                         R3 R0 K8 ["_doFire"]
       20 CALL                             R3 -1 0
       21 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["_connections"]
        7 GETUPVAL                         R2 2
        8 GETTABLE                         R0 R1 R2
        9 GETUPVAL                         R1 0
       10 JUMPIFNOTEQ                      R0 R1 ; [+7]
       12 GETUPVAL                         R0 1
       13 GETTABLEKS                       R0 R0 K1 ["_connections"]
       15 GETUPVAL                         R1 2
       16 LOADNIL                          R2
       17 SETTABLE                         R2 R0 R1
       18 RETURN                           R0 0

PROTO_20:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

PROTO_21:
        0 LOADK                            R1 K0 ["skipping invoke success packet for %* in unfocused or untargeted DM: expected %*, got %*"]
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["_identity"]
        5 GETUPVAL                         R5 2
        6 NAMECALL                         R1 R1 K2 ["format"]
        8 CALL                             R1 4 1
        9 MOVE                             R0 R1
       10 RETURN                           R0 1

PROTO_22:
        0 LOADK                            R1 K0 ["skipping invoke Requester %* in unfocused or untargeted DM: expected %*, got %*"]
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["_identity"]
        5 GETUPVAL                         R5 2
        6 NAMECALL                         R1 R1 K2 ["format"]
        8 CALL                             R1 4 1
        9 MOVE                             R0 R1
       10 RETURN                           R0 1

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["toIdentifier"]
        2 GETUPVAL                         R3 0
        3 JUMPIFNOTEQKNIL                  R1 ; [+6]
        5 NAMECALL                         R4 R3 K1 ["_isFocusedDM"]
        7 CALL                             R4 1 1
        8 MOVE                             R2 R4
        9 JUMP                             ; [+13]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K2 ["ALL"]
       13 JUMPIFNOTEQ                      R1 R4 ; [+3]
       15 LOADB                            R2 1
       16 JUMP                             ; [+6]
       17 GETTABLEKS                       R4 R3 K3 ["_identity"]
       19 JUMPIFEQ                         R1 R4 ; [+2]
       21 LOADB                            R2 0 +1
       22 LOADB                            R2 1
       23 GETTABLEKS                       R3 R0 K4 ["kind"]
       25 JUMPIFNOTEQKS                    R3 K5 ["SUCCESS"] ; [+44]
       27 JUMPIF                           R2 ; [+11]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K6 ["_logger"]
       31 NEWCLOSURE                       R5 P0
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          UPVAL U0
       34 CAPTURE                          VAL R1
       35 NAMECALL                         R3 R3 K7 ["log"]
       37 CALL                             R3 2 0
       38 RETURN                           R0 0
       39 GETUPVAL                         R3 0
       40 GETTABLEKS                       R3 R3 K6 ["_logger"]
       42 LOADK                            R6 K8 ["received invoke success packet for %*"]
       43 GETUPVAL                         R8 2
       44 NAMECALL                         R6 R6 K9 ["format"]
       46 CALL                             R6 2 1
       47 MOVE                             R5 R6
       48 NAMECALL                         R3 R3 K7 ["log"]
       50 CALL                             R3 2 0
       51 GETUPVAL                         R4 0
       52 GETTABLEKS                       R4 R4 K10 ["_infiniteYieldThreads"]
       54 GETTABLEKS                       R5 R0 K11 ["requestId"]
       56 GETTABLE                         R3 R4 R5
       57 JUMPIFNOT                        R3 ; [+11]
       58 GETUPVAL                         R4 0
       59 GETTABLEKS                       R4 R4 K10 ["_infiniteYieldThreads"]
       61 GETTABLEKS                       R5 R0 K11 ["requestId"]
       63 LOADNIL                          R6
       64 SETTABLE                         R6 R4 R5
       65 GETIMPORT                        R4 K14 [task.cancel]
       67 MOVE                             R5 R3
       68 CALL                             R4 1 0
       69 RETURN                           R0 0
       70 JUMPIF                           R2 ; [+11]
       71 GETUPVAL                         R3 0
       72 GETTABLEKS                       R3 R3 K6 ["_logger"]
       74 NEWCLOSURE                       R5 P1
       75 CAPTURE                          UPVAL U2
       76 CAPTURE                          UPVAL U0
       77 CAPTURE                          VAL R1
       78 NAMECALL                         R3 R3 K7 ["log"]
       80 CALL                             R3 2 0
       81 RETURN                           R0 0
       82 GETUPVAL                         R4 0
       83 GETTABLEKS                       R4 R4 K15 ["_invokeThreads"]
       85 GETTABLEKS                       R5 R0 K11 ["requestId"]
       87 GETTABLE                         R3 R4 R5
       88 JUMPIFNOT                        R3 ; [+10]
       89 GETUPVAL                         R4 0
       90 GETTABLEKS                       R4 R4 K15 ["_invokeThreads"]
       92 GETTABLEKS                       R5 R0 K11 ["requestId"]
       94 LOADNIL                          R6
       95 SETTABLE                         R6 R4 R5
       96 MOVE                             R4 R3
       97 MOVE                             R5 R0
       98 CALL                             R4 1 0
       99 RETURN                           R0 0

PROTO_24:
        0 NEWTABLE                         R5 0 3
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 LOADK                            R8 K0 ["ToRequester"]
        5 SETLIST                          R5 R6 3 [1]
        7 NAMECALL                         R3 R0 K1 ["_makeKey"]
        9 CALL                             R3 2 1
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R3
       13 GETTABLEKS                       R6 R0 K2 ["_connections"]
       15 GETTABLE                         R5 R6 R3
       16 JUMPIFNOT                        R5 ; [+8]
       17 GETTABLEKS                       R7 R0 K2 ["_connections"]
       19 GETTABLE                         R6 R7 R3
       20 NEWCLOSURE                       R5 P1
       21 CAPTURE                          VAL R6
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R3
       24 RETURN                           R5 1
       25 MOVE                             R7 R3
       26 NEWCLOSURE                       R8 P2
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U0
       29 CAPTURE                          VAL R2
       30 NAMECALL                         R5 R0 K3 ["_onInvoke"]
       32 CALL                             R5 3 1
       33 GETTABLEKS                       R6 R0 K2 ["_connections"]
       35 SETTABLE                         R5 R6 R3
       36 NEWCLOSURE                       R6 P1
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R3
       40 RETURN                           R6 1

PROTO_25:
        0 LOADK                            R1 K0 ["skipping invoke Executer %* in unfocused or untargeted DM: expected %*, got %*"]
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["_identity"]
        5 GETUPVAL                         R5 2
        6 NAMECALL                         R1 R1 K2 ["format"]
        8 CALL                             R1 4 1
        9 MOVE                             R0 R1
       10 RETURN                           R0 1

PROTO_26:
        0 LOADK                            R1 K0 ["sending invoke Requester %* with args: %* to identifier: %*"]
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R6 2
        4 NAMECALL                         R4 R4 K1 ["JSONEncode"]
        6 CALL                             R4 2 1
        7 GETUPVAL                         R5 3
        8 NAMECALL                         R1 R1 K2 ["format"]
       10 CALL                             R1 4 1
       11 MOVE                             R0 R1
       12 RETURN                           R0 1

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["requestId"]
        2 GETTABLEKS                       R2 R0 K1 ["toIdentifier"]
        4 GETTABLEKS                       R3 R0 K2 ["fromIdentifier"]
        6 GETUPVAL                         R5 0
        7 JUMPIFNOTEQKNIL                  R2 ; [+6]
        9 NAMECALL                         R6 R5 K3 ["_isFocusedDM"]
       11 CALL                             R6 1 1
       12 MOVE                             R4 R6
       13 JUMP                             ; [+13]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K4 ["ALL"]
       17 JUMPIFNOTEQ                      R2 R6 ; [+3]
       19 LOADB                            R4 1
       20 JUMP                             ; [+6]
       21 GETTABLEKS                       R6 R5 K5 ["_identity"]
       23 JUMPIFEQ                         R2 R6 ; [+2]
       25 LOADB                            R4 0 +1
       26 LOADB                            R4 1
       27 JUMPIF                           R4 ; [+11]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K6 ["_logger"]
       31 NEWCLOSURE                       R7 P0
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          UPVAL U0
       34 CAPTURE                          VAL R2
       35 NAMECALL                         R5 R5 K7 ["log"]
       37 CALL                             R5 2 0
       38 RETURN                           R0 0
       39 GETUPVAL                         R5 0
       40 GETTABLEKS                       R5 R5 K6 ["_logger"]
       42 LOADK                            R8 K8 ["received invoke Executer %*"]
       43 GETUPVAL                         R10 2
       44 NAMECALL                         R8 R8 K9 ["format"]
       46 CALL                             R8 2 1
       47 MOVE                             R7 R8
       48 NAMECALL                         R5 R5 K7 ["log"]
       50 CALL                             R5 2 0
       51 GETUPVAL                         R5 0
       52 NEWTABLE                         R7 0 3
       54 GETUPVAL                         R8 3
       55 GETUPVAL                         R9 2
       56 LOADK                            R10 K10 ["ToRequester"]
       57 SETLIST                          R7 R8 3 [1]
       59 NAMECALL                         R5 R5 K11 ["_makeKey"]
       61 CALL                             R5 2 1
       62 ORK                              R6 R3 K12 [""]
       63 GETUPVAL                         R7 0
       64 NEWTABLE                         R9 0 5
       66 GETUPVAL                         R10 3
       67 GETUPVAL                         R11 2
       68 LOADK                            R12 K10 ["ToRequester"]
       69 MOVE                             R13 R6
       70 MOVE                             R14 R1
       71 SETLIST                          R9 R10 5 [1]
       73 NAMECALL                         R7 R7 K11 ["_makeKey"]
       75 CALL                             R7 2 1
       76 GETUPVAL                         R8 0
       77 GETTABLEKS                       R8 R8 K13 ["_pendingResponses"]
       79 DUPTABLE                         R9 K15 [{"toRequesterKey", "toIdentifier", "requestId"}]
       80 SETTABLEKS                       R5 R9 K14 ["toRequesterKey"]
       82 SETTABLEKS                       R3 R9 K1 ["toIdentifier"]
       84 SETTABLEKS                       R1 R9 K0 ["requestId"]
       86 SETTABLE                         R9 R8 R7
       87 DUPTABLE                         R8 K18 [{["kind"] = "SUCCESS", [2], ["toIdentifier"], ["fromIdentifier"]}]
       88 SETTABLEKS                       R1 R8 K0 ["requestId"]
       90 SETTABLEKS                       R3 R8 K1 ["toIdentifier"]
       92 GETUPVAL                         R9 0
       93 GETTABLEKS                       R9 R9 K5 ["_identity"]
       95 SETTABLEKS                       R9 R8 K2 ["fromIdentifier"]
       97 GETUPVAL                         R9 0
       98 GETTABLEKS                       R9 R9 K19 ["_plugin"]
      100 MOVE                             R11 R5
      101 MOVE                             R12 R8
      102 NAMECALL                         R9 R9 K20 ["Invoke"]
      104 CALL                             R9 3 0
      105 NEWTABLE                         R9 0 1
      107 GETIMPORT                        R10 K22 [pcall]
      109 GETUPVAL                         R11 4
      110 MOVE                             R12 R3
      111 GETTABLEKS                       R14 R0 K23 ["args"]
      113 FASTCALL1                        TABLE_UNPACK R14 ; [+2]
      114 GETIMPORT                        R13 K26 [table.unpack]
      116 CALL                             R13 1 -1
      117 CALL                             R10 -1 -1
      118 SETLIST                          R9 R10 -1 [1]
      120 GETUPVAL                         R10 0
      121 GETTABLEKS                       R10 R10 K13 ["_pendingResponses"]
      123 LOADNIL                          R11
      124 SETTABLE                         R11 R10 R7
      125 GETUPVAL                         R10 0
      126 GETTABLEKS                       R10 R10 K6 ["_logger"]
      128 NEWCLOSURE                       R12 P1
      129 CAPTURE                          UPVAL U2
      130 CAPTURE                          UPVAL U5
      131 CAPTURE                          VAL R9
      132 CAPTURE                          VAL R3
      133 NAMECALL                         R10 R10 K7 ["log"]
      135 CALL                             R10 2 0
      136 DUPTABLE                         R10 K28 [{["kind"] = "RESULT", [2], ["toIdentifier"], ["fromIdentifier"], ["args"]}]
      137 SETTABLEKS                       R1 R10 K0 ["requestId"]
      139 SETTABLEKS                       R3 R10 K1 ["toIdentifier"]
      141 GETUPVAL                         R11 0
      142 GETTABLEKS                       R11 R11 K5 ["_identity"]
      144 SETTABLEKS                       R11 R10 K2 ["fromIdentifier"]
      146 SETTABLEKS                       R9 R10 K23 ["args"]
      148 GETUPVAL                         R11 0
      149 GETTABLEKS                       R11 R11 K19 ["_plugin"]
      151 MOVE                             R13 R5
      152 MOVE                             R14 R10
      153 NAMECALL                         R11 R11 K20 ["Invoke"]
      155 CALL                             R11 3 0
      156 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["_connections"]
        7 GETUPVAL                         R2 2
        8 GETTABLE                         R0 R1 R2
        9 GETUPVAL                         R1 0
       10 JUMPIFNOTEQ                      R0 R1 ; [+7]
       12 GETUPVAL                         R0 1
       13 GETTABLEKS                       R0 R0 K1 ["_connections"]
       15 GETUPVAL                         R1 2
       16 LOADNIL                          R2
       17 SETTABLE                         R2 R0 R1
       18 RETURN                           R0 0

PROTO_29:
        0 NEWTABLE                         R6 0 3
        2 MOVE                             R7 R1
        3 MOVE                             R8 R2
        4 LOADK                            R9 K0 ["ToExecuter"]
        5 SETLIST                          R6 R7 3 [1]
        7 NAMECALL                         R4 R0 K1 ["_makeKey"]
        9 CALL                             R4 2 1
       10 GETTABLEKS                       R8 R0 K2 ["_connections"]
       12 GETTABLE                         R7 R8 R4
       13 NOT                              R6 R7
       14 LOADK                            R8 K3 ["Invoke connection for key %* already exists"]
       15 MOVE                             R10 R2
       16 NAMECALL                         R8 R8 K4 ["format"]
       18 CALL                             R8 2 1
       19 MOVE                             R7 R8
       20 FASTCALL2                        ASSERT R6 R7 ; [+3]
       22 GETIMPORT                        R5 K6 [assert]
       24 CALL                             R5 2 0
       25 MOVE                             R7 R4
       26 NEWCLOSURE                       R8 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U0
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R3
       32 CAPTURE                          UPVAL U1
       33 NAMECALL                         R5 R0 K7 ["_onInvoke"]
       35 CALL                             R5 3 1
       36 GETTABLEKS                       R6 R0 K2 ["_connections"]
       38 SETTABLE                         R5 R6 R4
       39 NEWCLOSURE                       R6 P1
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R4
       43 RETURN                           R6 1

PROTO_30:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 GETVARARGS                       R5 -1
        5 NAMECALL                         R1 R1 K0 ["InvokeGuestAsync"]
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1

PROTO_31:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_32:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 NAMECALL                         R5 R0 K0 ["IsGuest"]
        5 CALL                             R5 1 1
        6 JUMPIFNOT                        R5 ; [+9]
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R6 R6 K1 ["TAG_GUEST_INVOKE"]
       10 MOVE                             R7 R1
       11 MOVE                             R8 R2
       12 NAMECALL                         R4 R0 K2 ["_connectInvokeExecuter"]
       14 CALL                             R4 4 1
       15 JUMP                             ; [+1]
       16 LOADNIL                          R4
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R7 R7 K1 ["TAG_GUEST_INVOKE"]
       20 MOVE                             R8 R1
       21 NAMECALL                         R5 R0 K3 ["_connectInvokeRequester"]
       23 CALL                             R5 3 1
       24 NEWCLOSURE                       R6 P1
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R5
       27 MOVE                             R7 R3
       28 MOVE                             R8 R6
       29 RETURN                           R7 2

PROTO_33:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 GETVARARGS                       R5 -1
        5 NAMECALL                         R1 R1 K0 ["InvokeHostAsync"]
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1

PROTO_34:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_35:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 NAMECALL                         R5 R0 K0 ["IsHost"]
        5 CALL                             R5 1 1
        6 JUMPIFNOT                        R5 ; [+9]
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R6 R6 K1 ["TAG_HOST_INVOKE"]
       10 MOVE                             R7 R1
       11 MOVE                             R8 R2
       12 NAMECALL                         R4 R0 K2 ["_connectInvokeExecuter"]
       14 CALL                             R4 4 1
       15 JUMP                             ; [+1]
       16 LOADNIL                          R4
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R7 R7 K1 ["TAG_HOST_INVOKE"]
       20 MOVE                             R8 R1
       21 NAMECALL                         R5 R0 K3 ["_connectInvokeRequester"]
       23 CALL                             R5 3 1
       24 NEWCLOSURE                       R6 P1
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R5
       27 MOVE                             R7 R3
       28 MOVE                             R8 R6
       29 RETURN                           R7 2

PROTO_36:
        0 NEWTABLE                         R2 0 1
        2 MOVE                             R3 R0
        3 SETLIST                          R2 R3 1 [1]
        5 JUMPIFNOT                        R1 ; [+11]
        6 FASTCALL1                        TOSTRING R1 ; [+3]
        7 MOVE                             R6 R1
        8 GETIMPORT                        R5 K1 [tostring]
       10 CALL                             R5 1 1
       11 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       13 MOVE                             R4 R2
       14 GETIMPORT                        R3 K4 [table.insert]
       16 CALL                             R3 2 0
       17 GETIMPORT                        R3 K6 [table.concat]
       19 MOVE                             R4 R2
       20 LOADK                            R5 K7 [", "]
       21 CALL                             R3 2 -1
       22 RETURN                           R3 -1

PROTO_37:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 GETTABLEKS                       R1 R0 K0 ["args"]
        5 SETUPVAL                         R1 0
        6 GETIMPORT                        R1 K3 [coroutine.status]
        8 GETUPVAL                         R2 1
        9 CALL                             R1 1 1
       10 JUMPIFNOTEQKS                    R1 K4 ["suspended"] ; [+5]
       12 GETIMPORT                        R1 K7 [task.spawn]
       14 GETUPVAL                         R2 1
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 NEWTABLE                         R0 0 2
        5 LOADB                            R1 0
        6 LOADK                            R3 K0 ["Target is not reachable (%*)"]
        7 GETUPVAL                         R6 1
        8 GETUPVAL                         R7 2
        9 NEWTABLE                         R8 0 1
       11 MOVE                             R9 R6
       12 SETLIST                          R8 R9 1 [1]
       14 JUMPIFNOT                        R7 ; [+11]
       15 FASTCALL1                        TOSTRING R7 ; [+3]
       16 MOVE                             R12 R7
       17 GETIMPORT                        R11 K2 [tostring]
       19 CALL                             R11 1 1
       20 FASTCALL2                        TABLE_INSERT R8 R11 ; [+4]
       22 MOVE                             R10 R8
       23 GETIMPORT                        R9 K5 [table.insert]
       25 CALL                             R9 2 0
       26 GETIMPORT                        R9 K7 [table.concat]
       28 MOVE                             R10 R8
       29 LOADK                            R11 K8 [", "]
       30 CALL                             R9 2 1
       31 MOVE                             R5 R9
       32 NAMECALL                         R3 R3 K9 ["format"]
       34 CALL                             R3 2 1
       35 MOVE                             R2 R3
       36 SETLIST                          R0 R1 2 [1]
       38 SETUPVAL                         R0 0
       39 GETUPVAL                         R0 3
       40 GETTABLEKS                       R0 R0 K10 ["_invokeThreads"]
       42 GETUPVAL                         R1 4
       43 LOADNIL                          R2
       44 SETTABLE                         R2 R0 R1
       45 GETUPVAL                         R0 3
       46 GETTABLEKS                       R0 R0 K11 ["_infiniteYieldThreads"]
       48 GETUPVAL                         R1 4
       49 LOADNIL                          R2
       50 SETTABLE                         R2 R0 R1
       51 GETIMPORT                        R0 K14 [coroutine.status]
       53 GETUPVAL                         R1 5
       54 CALL                             R0 1 1
       55 JUMPIFNOTEQKS                    R0 K15 ["suspended"] ; [+5]
       57 GETIMPORT                        R0 K18 [task.spawn]
       59 GETUPVAL                         R1 5
       60 CALL                             R0 1 0
       61 RETURN                           R0 0

PROTO_39:
        0 LOADK                            R1 K0 ["sending invoke Executer %* with args: %* to identifier: %*"]
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R6 2
        4 GETTABLEKS                       R6 R6 K1 ["args"]
        6 NAMECALL                         R4 R4 K2 ["JSONEncode"]
        8 CALL                             R4 2 1
        9 GETUPVAL                         R5 3
       10 NAMECALL                         R1 R1 K3 ["format"]
       12 CALL                             R1 4 1
       13 MOVE                             R0 R1
       14 RETURN                           R0 1

PROTO_40:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_logger"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 NAMECALL                         R0 R0 K1 ["log"]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 0
       12 NEWTABLE                         R2 0 3
       14 GETUPVAL                         R3 5
       15 GETUPVAL                         R4 1
       16 LOADK                            R5 K2 ["ToExecuter"]
       17 SETLIST                          R2 R3 3 [1]
       19 NAMECALL                         R0 R0 K3 ["_makeKey"]
       21 CALL                             R0 2 1
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K4 ["_plugin"]
       25 MOVE                             R3 R0
       26 GETUPVAL                         R4 3
       27 NAMECALL                         R1 R1 K5 ["Invoke"]
       29 CALL                             R1 3 0
       30 RETURN                           R0 0

PROTO_41:
        0 PREPVARARGS                      4
        1 GETTABLEKS                       R4 R0 K0 ["_invokeCounter"]
        3 ADDK                             R4 R4 K1 [1]
        4 SETTABLEKS                       R4 R0 K0 ["_invokeCounter"]
        6 GETTABLEKS                       R5 R0 K0 ["_invokeCounter"]
        8 FASTCALL1                        TOSTRING R5 ; [+2]
        9 GETIMPORT                        R4 K3 [tostring]
       11 CALL                             R4 1 1
       12 GETIMPORT                        R5 K6 [coroutine.running]
       14 CALL                             R5 0 1
       15 LOADNIL                          R6
       16 GETTABLEKS                       R7 R0 K7 ["_invokeThreads"]
       18 NEWCLOSURE                       R8 P0
       19 CAPTURE                          REF R6
       20 CAPTURE                          VAL R5
       21 SETTABLE                         R8 R7 R4
       22 GETTABLEKS                       R7 R0 K8 ["_infiniteYieldThreads"]
       24 GETIMPORT                        R8 K11 [task.delay]
       26 GETTABLEKS                       R9 R0 K12 ["_unreachableTimeout"]
       28 NEWCLOSURE                       R10 P1
       29 CAPTURE                          REF R6
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R5
       35 CALL                             R8 2 1
       36 SETTABLE                         R8 R7 R4
       37 DUPTABLE                         R7 K17 [{"requestId", "toIdentifier", "fromIdentifier", "args"}]
       38 SETTABLEKS                       R4 R7 K13 ["requestId"]
       40 SETTABLEKS                       R3 R7 K14 ["toIdentifier"]
       42 GETTABLEKS                       R8 R0 K18 ["_identity"]
       44 SETTABLEKS                       R8 R7 K15 ["fromIdentifier"]
       46 NEWTABLE                         R8 0 0
       48 GETVARARGS                       R9 -1
       49 SETLIST                          R8 R9 -1 [1]
       51 SETTABLEKS                       R8 R7 K16 ["args"]
       53 GETIMPORT                        R8 K20 [task.spawn]
       55 NEWCLOSURE                       R9 P2
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R2
       58 CAPTURE                          UPVAL U0
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R1
       62 CALL                             R8 1 0
       63 JUMPIF                           R6 ; [+3]
       64 GETIMPORT                        R8 K22 [coroutine.yield]
       66 CALL                             R8 0 0
       67 GETTABLEKS                       R8 R0 K23 ["_logger"]
       69 LOADK                            R11 K24 ["received invoke Requester %*"]
       70 MOVE                             R13 R2
       71 NAMECALL                         R11 R11 K25 ["format"]
       73 CALL                             R11 2 1
       74 MOVE                             R10 R11
       75 NAMECALL                         R8 R8 K26 ["log"]
       77 CALL                             R8 2 0
       78 GETTABLEN                        R8 R6 1
       79 JUMPIF                           R8 ; [+5]
       80 GETIMPORT                        R8 K28 [error]
       82 GETTABLEN                        R9 R6 2
       83 LOADN                            R10 0
       84 CALL                             R8 2 0
       85 FASTCALL2K                       TABLE_UNPACK R6 K29 ; [+5]
       87 MOVE                             R9 R6
       88 LOADK                            R10 K29 [2]
       89 GETIMPORT                        R8 K32 [table.unpack]
       91 CALL                             R8 2 -1
       92 CLOSEUPVALS                      R6
       93 RETURN                           R8 -1

PROTO_42:
        0 PREPVARARGS                      3
        1 NAMECALL                         R4 R0 K0 ["IsHost"]
        3 CALL                             R4 1 1
        4 GETIMPORT                        R5 K3 [debug.traceback]
        6 LOADK                            R6 K4 ["InvokeGuestAsync can only be called from the host DM"]
        7 CALL                             R5 1 -1
        8 FASTCALL                         ASSERT ; [+2]
        9 GETIMPORT                        R3 K6 [assert]
       11 CALL                             R3 -1 0
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K7 ["TAG_GUEST_INVOKE"]
       15 MOVE                             R6 R1
       16 NAMECALL                         R3 R0 K8 ["_connectInvokeRequester"]
       18 CALL                             R3 3 0
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K7 ["TAG_GUEST_INVOKE"]
       22 MOVE                             R6 R1
       23 MOVE                             R7 R2
       24 GETVARARGS                       R8 -1
       25 NAMECALL                         R3 R0 K9 ["_doInvoke"]
       27 CALL                             R3 -1 -1
       28 RETURN                           R3 -1

PROTO_43:
        0 PREPVARARGS                      3
        1 NAMECALL                         R4 R0 K0 ["IsGuest"]
        3 CALL                             R4 1 1
        4 GETIMPORT                        R5 K3 [debug.traceback]
        6 LOADK                            R6 K4 ["InvokeHostAsync can only be called from the guest DM"]
        7 CALL                             R5 1 -1
        8 FASTCALL                         ASSERT ; [+2]
        9 GETIMPORT                        R3 K6 [assert]
       11 CALL                             R3 -1 0
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K7 ["TAG_HOST_INVOKE"]
       15 MOVE                             R6 R1
       16 NAMECALL                         R3 R0 K8 ["_connectInvokeRequester"]
       18 CALL                             R3 3 0
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K7 ["TAG_HOST_INVOKE"]
       22 MOVE                             R6 R1
       23 MOVE                             R7 R2
       24 GETVARARGS                       R8 -1
       25 NAMECALL                         R3 R0 K9 ["_doInvoke"]
       27 CALL                             R3 -1 -1
       28 RETURN                           R3 -1

PROTO_44:
        0 GETTABLEKS                       R1 R0 K0 ["_pendingResponses"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 DUPTABLE                         R6 K7 [{["kind"] = "RESULT", ["requestId"], ["toIdentifier"], ["fromIdentifier"], ["args"]}]
        6 GETTABLEKS                       R7 R5 K3 ["requestId"]
        8 SETTABLEKS                       R7 R6 K3 ["requestId"]
       10 GETTABLEKS                       R7 R5 K4 ["toIdentifier"]
       12 SETTABLEKS                       R7 R6 K4 ["toIdentifier"]
       14 GETTABLEKS                       R7 R0 K8 ["_identity"]
       16 SETTABLEKS                       R7 R6 K5 ["fromIdentifier"]
       18 NEWTABLE                         R7 0 2
       20 LOADB                            R8 0
       21 LOADK                            R10 K9 ["Target is closed (%*)"]
       22 GETTABLEKS                       R13 R5 K10 ["toRequesterKey"]
       24 GETTABLEKS                       R14 R0 K8 ["_identity"]
       26 NEWTABLE                         R15 0 1
       28 MOVE                             R16 R13
       29 SETLIST                          R15 R16 1 [1]
       31 JUMPIFNOT                        R14 ; [+11]
       32 FASTCALL1                        TOSTRING R14 ; [+3]
       33 MOVE                             R19 R14
       34 GETIMPORT                        R18 K12 [tostring]
       36 CALL                             R18 1 1
       37 FASTCALL2                        TABLE_INSERT R15 R18 ; [+4]
       39 MOVE                             R17 R15
       40 GETIMPORT                        R16 K15 [table.insert]
       42 CALL                             R16 2 0
       43 GETIMPORT                        R16 K17 [table.concat]
       45 MOVE                             R17 R15
       46 LOADK                            R18 K18 [", "]
       47 CALL                             R16 2 1
       48 MOVE                             R12 R16
       49 NAMECALL                         R10 R10 K19 ["format"]
       51 CALL                             R10 2 1
       52 MOVE                             R9 R10
       53 SETLIST                          R7 R8 2 [1]
       55 SETTABLEKS                       R7 R6 K6 ["args"]
       57 GETTABLEKS                       R7 R0 K20 ["_plugin"]
       59 GETTABLEKS                       R9 R5 K10 ["toRequesterKey"]
       61 MOVE                             R10 R6
       62 NAMECALL                         R7 R7 K21 ["Invoke"]
       64 CALL                             R7 3 0
       65 FORGLOOP                         R1 2 ; [-61]
       67 GETIMPORT                        R1 K23 [table.clear]
       69 GETTABLEKS                       R2 R0 K0 ["_pendingResponses"]
       71 CALL                             R1 1 0
       72 RETURN                           R0 0

PROTO_45:
        0 GETTABLEKS                       R1 R0 K0 ["_infiniteYieldThreads"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 JUMPIFNOT                        R5 ; [+4]
        6 GETIMPORT                        R6 K3 [task.cancel]
        8 MOVE                             R7 R5
        9 CALL                             R6 1 0
       10 FORGLOOP                         R1 2 ; [-6]
       12 GETIMPORT                        R1 K6 [table.clear]
       14 GETTABLEKS                       R2 R0 K0 ["_infiniteYieldThreads"]
       16 CALL                             R1 1 0
       17 GETTABLEKS                       R1 R0 K7 ["_invokeThreads"]
       19 LOADNIL                          R2
       20 LOADNIL                          R3
       21 FORGPREP                         R1
       22 DUPTABLE                         R6 K15 [{["kind"] = "RESULT", ["requestId"], ["toIdentifier"] = , ["fromIdentifier"] = , ["args"]}]
       23 SETTABLEKS                       R4 R6 K10 ["requestId"]
       25 NEWTABLE                         R7 0 2
       27 LOADB                            R8 0
       28 LOADK                            R10 K16 ["Self is closed (%*)"]
       29 GETTABLEKS                       R13 R0 K17 ["_identity"]
       31 NEWTABLE                         R14 0 1
       33 MOVE                             R15 R4
       34 SETLIST                          R14 R15 1 [1]
       36 JUMPIFNOT                        R13 ; [+11]
       37 FASTCALL1                        TOSTRING R13 ; [+3]
       38 MOVE                             R18 R13
       39 GETIMPORT                        R17 K19 [tostring]
       41 CALL                             R17 1 1
       42 FASTCALL2                        TABLE_INSERT R14 R17 ; [+4]
       44 MOVE                             R16 R14
       45 GETIMPORT                        R15 K21 [table.insert]
       47 CALL                             R15 2 0
       48 GETIMPORT                        R15 K23 [table.concat]
       50 MOVE                             R16 R14
       51 LOADK                            R17 K24 [", "]
       52 CALL                             R15 2 1
       53 MOVE                             R12 R15
       54 NAMECALL                         R10 R10 K25 ["format"]
       56 CALL                             R10 2 1
       57 MOVE                             R9 R10
       58 SETLIST                          R7 R8 2 [1]
       60 SETTABLEKS                       R7 R6 K14 ["args"]
       62 MOVE                             R7 R5
       63 MOVE                             R8 R6
       64 CALL                             R7 1 0
       65 FORGLOOP                         R1 2 ; [-44]
       67 GETIMPORT                        R1 K6 [table.clear]
       69 GETTABLEKS                       R2 R0 K7 ["_invokeThreads"]
       71 CALL                             R1 1 0
       72 RETURN                           R0 0

PROTO_46:
        0 NAMECALL                         R1 R0 K0 ["_closePendingResponses"]
        2 CALL                             R1 1 0
        3 NAMECALL                         R1 R0 K1 ["_closePendingRequests"]
        5 CALL                             R1 1 0
        6 GETTABLEKS                       R1 R0 K2 ["_connections"]
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 NAMECALL                         R6 R5 K3 ["Disconnect"]
       13 CALL                             R6 1 0
       14 FORGLOOP                         R1 2 ; [-4]
       16 GETIMPORT                        R1 K6 [table.clear]
       18 GETTABLEKS                       R2 R0 K2 ["_connections"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DMNetworking"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Logging"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K9 [require]
       20 GETTABLEKS                       R4 R0 K11 ["Types"]
       22 CALL                             R3 1 1
       23 NEWTABLE                         R4 32 0
       25 SETTABLEKS                       R4 R4 K12 ["__index"]
       27 DUPCLOSURE                       R5 K13 [PROTO_0]
       28 CAPTURE                          VAL R3
       29 DUPCLOSURE                       R6 K14 [PROTO_1]
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R4
       32 SETTABLEKS                       R6 R4 K15 ["new"]
       34 DUPCLOSURE                       R6 K16 [PROTO_2]
       35 SETTABLEKS                       R6 R4 K17 ["IsGuest"]
       37 DUPCLOSURE                       R6 K18 [PROTO_3]
       38 SETTABLEKS                       R6 R4 K19 ["IsHost"]
       40 DUPCLOSURE                       R6 K20 [PROTO_4]
       41 SETTABLEKS                       R6 R4 K21 ["_makeKey"]
       43 DUPCLOSURE                       R6 K22 [PROTO_5]
       44 SETTABLEKS                       R6 R4 K23 ["_isFocusedDM"]
       46 DUPCLOSURE                       R6 K24 [PROTO_6]
       47 SETTABLEKS                       R6 R4 K25 ["_onInvoke"]
       49 DUPCLOSURE                       R6 K26 [PROTO_10]
       50 CAPTURE                          VAL R3
       51 SETTABLEKS                       R6 R4 K27 ["_connectEvent"]
       53 DUPCLOSURE                       R6 K28 [PROTO_12]
       54 CAPTURE                          VAL R3
       55 SETTABLEKS                       R6 R4 K29 ["OnGuestEvent"]
       57 DUPCLOSURE                       R6 K30 [PROTO_14]
       58 CAPTURE                          VAL R3
       59 SETTABLEKS                       R6 R4 K31 ["OnHostEvent"]
       61 DUPCLOSURE                       R6 K32 [PROTO_16]
       62 CAPTURE                          VAL R1
       63 SETTABLEKS                       R6 R4 K33 ["_doFire"]
       65 DUPCLOSURE                       R6 K34 [PROTO_17]
       66 CAPTURE                          VAL R3
       67 SETTABLEKS                       R6 R4 K35 ["FireGuest"]
       69 DUPCLOSURE                       R6 K36 [PROTO_18]
       70 CAPTURE                          VAL R3
       71 SETTABLEKS                       R6 R4 K37 ["FireHost"]
       73 DUPCLOSURE                       R6 K38 [PROTO_24]
       74 CAPTURE                          VAL R3
       75 SETTABLEKS                       R6 R4 K39 ["_connectInvokeRequester"]
       77 DUPCLOSURE                       R6 K40 [PROTO_29]
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R1
       80 SETTABLEKS                       R6 R4 K41 ["_connectInvokeExecuter"]
       82 DUPCLOSURE                       R6 K42 [PROTO_32]
       83 CAPTURE                          VAL R3
       84 SETTABLEKS                       R6 R4 K43 ["OnGuestInvokeAsync"]
       86 DUPCLOSURE                       R6 K44 [PROTO_35]
       87 CAPTURE                          VAL R3
       88 SETTABLEKS                       R6 R4 K45 ["OnHostInvokeAsync"]
       90 DUPCLOSURE                       R6 K46 [PROTO_36]
       91 DUPCLOSURE                       R7 K47 [PROTO_41]
       92 CAPTURE                          VAL R1
       93 SETTABLEKS                       R7 R4 K48 ["_doInvoke"]
       95 DUPCLOSURE                       R7 K49 [PROTO_42]
       96 CAPTURE                          VAL R3
       97 SETTABLEKS                       R7 R4 K50 ["InvokeGuestAsync"]
       99 DUPCLOSURE                       R7 K51 [PROTO_43]
      100 CAPTURE                          VAL R3
      101 SETTABLEKS                       R7 R4 K52 ["InvokeHostAsync"]
      103 DUPCLOSURE                       R7 K53 [PROTO_44]
      104 SETTABLEKS                       R7 R4 K54 ["_closePendingResponses"]
      106 DUPCLOSURE                       R7 K55 [PROTO_45]
      107 SETTABLEKS                       R7 R4 K56 ["_closePendingRequests"]
      109 DUPCLOSURE                       R7 K57 [PROTO_46]
      110 SETTABLEKS                       R7 R4 K58 ["Destroy"]
      112 RETURN                           R4 1
