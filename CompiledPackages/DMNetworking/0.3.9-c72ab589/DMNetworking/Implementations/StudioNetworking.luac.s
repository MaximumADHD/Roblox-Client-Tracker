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
       10 LOADK                            R3 K4 ["[Networking] [%*]"]
       11 GETTABLEKS                       R5 R1 K1 ["_type"]
       13 NAMECALL                         R3 R3 K5 ["format"]
       15 CALL                             R3 2 1
       16 CALL                             R2 1 1
       17 SETTABLEKS                       R2 R1 K6 ["_logger"]
       19 GETTABLEKS                       R2 R0 K7 ["plugin"]
       21 SETTABLEKS                       R2 R1 K8 ["_plugin"]
       23 GETTABLEKS                       R2 R0 K9 ["identity"]
       25 SETTABLEKS                       R2 R1 K10 ["_identity"]
       27 GETTABLEKS                       R2 R0 K11 ["isGuest"]
       29 SETTABLEKS                       R2 R1 K12 ["_isGuest"]
       31 GETTABLEKS                       R2 R0 K13 ["isHost"]
       33 SETTABLEKS                       R2 R1 K14 ["_isHost"]
       35 GETTABLEKS                       R3 R0 K16 ["unreachableTimeout"]
       37 ORK                              R2 R3 K15 [2]
       38 SETTABLEKS                       R2 R1 K17 ["_unreachableTimeout"]
       40 GETTABLEKS                       R3 R0 K18 ["useSuspendOverride"]
       42 JUMPIFEQKB                       R3 TRUE ; [+2]
       44 LOADB                            R2 0 +1
       45 LOADB                            R2 1
       46 SETTABLEKS                       R2 R1 K19 ["_useSuspendOverride"]
       48 NEWTABLE                         R2 0 0
       50 SETTABLEKS                       R2 R1 K20 ["_connections"]
       52 NEWTABLE                         R2 0 0
       54 SETTABLEKS                       R2 R1 K21 ["_invokeThreads"]
       56 NEWTABLE                         R2 0 0
       58 SETTABLEKS                       R2 R1 K22 ["_infiniteYieldThreads"]
       60 NEWTABLE                         R2 0 0
       62 SETTABLEKS                       R2 R1 K23 ["_pendingResponses"]
       64 LOADN                            R2 0
       65 SETTABLEKS                       R2 R1 K24 ["_invokeCounter"]
       67 GETUPVAL                         R4 1
       68 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       70 MOVE                             R3 R1
       71 GETIMPORT                        R2 K26 [setmetatable]
       73 CALL                             R2 2 0
       74 RETURN                           R1 1

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
        0 LOADK                            R0 K0 ["skipping event %* in unfocused or untargeted DM: expected %*, got %*"]
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K1 ["_identity"]
        5 GETUPVAL                         R4 2
        6 NAMECALL                         R0 R0 K2 ["format"]
        8 CALL                             R0 4 1
        9 RETURN                           R0 1

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
       38 LOADK                            R5 K6 ["received event %*"]
       39 GETUPVAL                         R7 2
       40 NAMECALL                         R5 R5 K7 ["format"]
       42 CALL                             R5 2 1
       43 NAMECALL                         R3 R3 K5 ["log"]
       45 CALL                             R3 2 0
       46 GETUPVAL                         R3 3
       47 GETTABLEKS                       R4 R0 K8 ["fromIdentifier"]
       49 GETTABLEKS                       R6 R0 K9 ["args"]
       51 FASTCALL1                        TABLE_UNPACK R6 ; [+2]
       52 GETIMPORT                        R5 K12 [table.unpack]
       54 CALL                             R5 1 -1
       55 CALL                             R3 -1 0
       56 RETURN                           R0 0

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
        0 LOADK                            R0 K0 ["sending event %* with args: %* to identifier: %*"]
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R3 1
        3 GETUPVAL                         R5 2
        4 GETTABLEKS                       R5 R5 K1 ["args"]
        6 NAMECALL                         R3 R3 K2 ["JSONEncode"]
        8 CALL                             R3 2 1
        9 GETUPVAL                         R4 3
       10 NAMECALL                         R0 R0 K3 ["format"]
       12 CALL                             R0 4 1
       13 RETURN                           R0 1

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
        0 LOADK                            R0 K0 ["skipping invoke success packet for %* in unfocused or untargeted DM: expected %*, got %*"]
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K1 ["_identity"]
        5 GETUPVAL                         R4 2
        6 NAMECALL                         R0 R0 K2 ["format"]
        8 CALL                             R0 4 1
        9 RETURN                           R0 1

PROTO_22:
        0 LOADK                            R0 K0 ["skipping invoke Requester %* in unfocused or untargeted DM: expected %*, got %*"]
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K1 ["_identity"]
        5 GETUPVAL                         R4 2
        6 NAMECALL                         R0 R0 K2 ["format"]
        8 CALL                             R0 4 1
        9 RETURN                           R0 1

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
       25 JUMPIFNOTEQKS                    R3 K5 ["SUCCESS"] ; [+43]
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
       42 LOADK                            R5 K8 ["received invoke success packet for %*"]
       43 GETUPVAL                         R7 2
       44 NAMECALL                         R5 R5 K9 ["format"]
       46 CALL                             R5 2 1
       47 NAMECALL                         R3 R3 K7 ["log"]
       49 CALL                             R3 2 0
       50 GETUPVAL                         R4 0
       51 GETTABLEKS                       R4 R4 K10 ["_infiniteYieldThreads"]
       53 GETTABLEKS                       R5 R0 K11 ["requestId"]
       55 GETTABLE                         R3 R4 R5
       56 JUMPIFNOT                        R3 ; [+11]
       57 GETUPVAL                         R4 0
       58 GETTABLEKS                       R4 R4 K10 ["_infiniteYieldThreads"]
       60 GETTABLEKS                       R5 R0 K11 ["requestId"]
       62 LOADNIL                          R6
       63 SETTABLE                         R6 R4 R5
       64 GETIMPORT                        R4 K14 [task.cancel]
       66 MOVE                             R5 R3
       67 CALL                             R4 1 0
       68 RETURN                           R0 0
       69 JUMPIF                           R2 ; [+11]
       70 GETUPVAL                         R3 0
       71 GETTABLEKS                       R3 R3 K6 ["_logger"]
       73 NEWCLOSURE                       R5 P1
       74 CAPTURE                          UPVAL U2
       75 CAPTURE                          UPVAL U0
       76 CAPTURE                          VAL R1
       77 NAMECALL                         R3 R3 K7 ["log"]
       79 CALL                             R3 2 0
       80 RETURN                           R0 0
       81 GETUPVAL                         R4 0
       82 GETTABLEKS                       R4 R4 K15 ["_invokeThreads"]
       84 GETTABLEKS                       R5 R0 K11 ["requestId"]
       86 GETTABLE                         R3 R4 R5
       87 JUMPIFNOT                        R3 ; [+10]
       88 GETUPVAL                         R4 0
       89 GETTABLEKS                       R4 R4 K15 ["_invokeThreads"]
       91 GETTABLEKS                       R5 R0 K11 ["requestId"]
       93 LOADNIL                          R6
       94 SETTABLE                         R6 R4 R5
       95 MOVE                             R4 R3
       96 MOVE                             R5 R0
       97 CALL                             R4 1 0
       98 RETURN                           R0 0

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
        0 LOADK                            R0 K0 ["skipping invoke Executer %* in unfocused or untargeted DM: expected %*, got %*"]
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K1 ["_identity"]
        5 GETUPVAL                         R4 2
        6 NAMECALL                         R0 R0 K2 ["format"]
        8 CALL                             R0 4 1
        9 RETURN                           R0 1

PROTO_26:
        0 LOADK                            R0 K0 ["sending invoke Requester %* with args: %* to identifier: %*"]
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R3 1
        3 GETUPVAL                         R5 2
        4 NAMECALL                         R3 R3 K1 ["JSONEncode"]
        6 CALL                             R3 2 1
        7 GETUPVAL                         R4 3
        8 NAMECALL                         R0 R0 K2 ["format"]
       10 CALL                             R0 4 1
       11 RETURN                           R0 1

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
       42 LOADK                            R7 K8 ["received invoke Executer %*"]
       43 GETUPVAL                         R9 2
       44 NAMECALL                         R7 R7 K9 ["format"]
       46 CALL                             R7 2 1
       47 NAMECALL                         R5 R5 K7 ["log"]
       49 CALL                             R5 2 0
       50 GETUPVAL                         R5 0
       51 NEWTABLE                         R7 0 3
       53 GETUPVAL                         R8 3
       54 GETUPVAL                         R9 2
       55 LOADK                            R10 K10 ["ToRequester"]
       56 SETLIST                          R7 R8 3 [1]
       58 NAMECALL                         R5 R5 K11 ["_makeKey"]
       60 CALL                             R5 2 1
       61 ORK                              R6 R3 K12 [""]
       62 GETUPVAL                         R7 0
       63 NEWTABLE                         R9 0 5
       65 GETUPVAL                         R10 3
       66 GETUPVAL                         R11 2
       67 LOADK                            R12 K10 ["ToRequester"]
       68 MOVE                             R13 R6
       69 MOVE                             R14 R1
       70 SETLIST                          R9 R10 5 [1]
       72 NAMECALL                         R7 R7 K11 ["_makeKey"]
       74 CALL                             R7 2 1
       75 GETUPVAL                         R8 0
       76 GETTABLEKS                       R8 R8 K13 ["_pendingResponses"]
       78 DUPTABLE                         R9 K15 [{"toRequesterKey", "toIdentifier", "requestId"}]
       79 SETTABLEKS                       R5 R9 K14 ["toRequesterKey"]
       81 SETTABLEKS                       R3 R9 K1 ["toIdentifier"]
       83 SETTABLEKS                       R1 R9 K0 ["requestId"]
       85 SETTABLE                         R9 R8 R7
       86 DUPTABLE                         R8 K18 [{["kind"] = "SUCCESS", [2], ["toIdentifier"], ["fromIdentifier"]}]
       87 SETTABLEKS                       R1 R8 K0 ["requestId"]
       89 SETTABLEKS                       R3 R8 K1 ["toIdentifier"]
       91 GETUPVAL                         R9 0
       92 GETTABLEKS                       R9 R9 K5 ["_identity"]
       94 SETTABLEKS                       R9 R8 K2 ["fromIdentifier"]
       96 GETUPVAL                         R9 0
       97 GETTABLEKS                       R9 R9 K19 ["_plugin"]
       99 MOVE                             R11 R5
      100 MOVE                             R12 R8
      101 NAMECALL                         R9 R9 K20 ["Invoke"]
      103 CALL                             R9 3 0
      104 NEWTABLE                         R9 0 1
      106 GETIMPORT                        R10 K22 [pcall]
      108 GETUPVAL                         R11 4
      109 MOVE                             R12 R3
      110 GETTABLEKS                       R14 R0 K23 ["args"]
      112 FASTCALL1                        TABLE_UNPACK R14 ; [+2]
      113 GETIMPORT                        R13 K26 [table.unpack]
      115 CALL                             R13 1 -1
      116 CALL                             R10 -1 -1
      117 SETLIST                          R9 R10 -1 [1]
      119 GETUPVAL                         R10 0
      120 GETTABLEKS                       R10 R10 K13 ["_pendingResponses"]
      122 LOADNIL                          R11
      123 SETTABLE                         R11 R10 R7
      124 GETUPVAL                         R10 0
      125 GETTABLEKS                       R10 R10 K6 ["_logger"]
      127 NEWCLOSURE                       R12 P1
      128 CAPTURE                          UPVAL U2
      129 CAPTURE                          UPVAL U5
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R3
      132 NAMECALL                         R10 R10 K7 ["log"]
      134 CALL                             R10 2 0
      135 DUPTABLE                         R10 K28 [{["kind"] = "RESULT", [2], ["toIdentifier"], ["fromIdentifier"], ["args"]}]
      136 SETTABLEKS                       R1 R10 K0 ["requestId"]
      138 SETTABLEKS                       R3 R10 K1 ["toIdentifier"]
      140 GETUPVAL                         R11 0
      141 GETTABLEKS                       R11 R11 K5 ["_identity"]
      143 SETTABLEKS                       R11 R10 K2 ["fromIdentifier"]
      145 SETTABLEKS                       R9 R10 K23 ["args"]
      147 GETUPVAL                         R11 0
      148 GETTABLEKS                       R11 R11 K19 ["_plugin"]
      150 MOVE                             R13 R5
      151 MOVE                             R14 R10
      152 NAMECALL                         R11 R11 K20 ["Invoke"]
      154 CALL                             R11 3 0
      155 RETURN                           R0 0

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
       14 LOADK                            R7 K3 ["Invoke connection for key %* already exists"]
       15 MOVE                             R9 R2
       16 NAMECALL                         R7 R7 K4 ["format"]
       18 CALL                             R7 2 1
       19 FASTCALL2                        ASSERT R6 R7 ; [+3]
       21 GETIMPORT                        R5 K6 [assert]
       23 CALL                             R5 2 0
       24 MOVE                             R7 R4
       25 NEWCLOSURE                       R8 P0
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R3
       31 CAPTURE                          UPVAL U1
       32 NAMECALL                         R5 R0 K7 ["_onInvoke"]
       34 CALL                             R5 3 1
       35 GETTABLEKS                       R6 R0 K2 ["_connections"]
       37 SETTABLE                         R5 R6 R4
       38 NEWCLOSURE                       R6 P1
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R4
       42 RETURN                           R6 1

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
        6 LOADK                            R2 K0 ["Target is not reachable (%*)"]
        7 GETUPVAL                         R5 1
        8 GETUPVAL                         R6 2
        9 NEWTABLE                         R7 0 1
       11 MOVE                             R8 R5
       12 SETLIST                          R7 R8 1 [1]
       14 JUMPIFNOT                        R6 ; [+11]
       15 FASTCALL1                        TOSTRING R6 ; [+3]
       16 MOVE                             R11 R6
       17 GETIMPORT                        R10 K2 [tostring]
       19 CALL                             R10 1 1
       20 FASTCALL2                        TABLE_INSERT R7 R10 ; [+4]
       22 MOVE                             R9 R7
       23 GETIMPORT                        R8 K5 [table.insert]
       25 CALL                             R8 2 0
       26 GETIMPORT                        R8 K7 [table.concat]
       28 MOVE                             R9 R7
       29 LOADK                            R10 K8 [", "]
       30 CALL                             R8 2 1
       31 MOVE                             R4 R8
       32 NAMECALL                         R2 R2 K9 ["format"]
       34 CALL                             R2 2 1
       35 SETLIST                          R0 R1 2 [1]
       37 SETUPVAL                         R0 0
       38 GETUPVAL                         R0 3
       39 GETTABLEKS                       R0 R0 K10 ["_invokeThreads"]
       41 GETUPVAL                         R1 4
       42 LOADNIL                          R2
       43 SETTABLE                         R2 R0 R1
       44 GETUPVAL                         R0 3
       45 GETTABLEKS                       R0 R0 K11 ["_infiniteYieldThreads"]
       47 GETUPVAL                         R1 4
       48 LOADNIL                          R2
       49 SETTABLE                         R2 R0 R1
       50 GETIMPORT                        R0 K14 [coroutine.status]
       52 GETUPVAL                         R1 5
       53 CALL                             R0 1 1
       54 JUMPIFNOTEQKS                    R0 K15 ["suspended"] ; [+5]
       56 GETIMPORT                        R0 K18 [task.spawn]
       58 GETUPVAL                         R1 5
       59 CALL                             R0 1 0
       60 RETURN                           R0 0

PROTO_39:
        0 LOADK                            R0 K0 ["sending invoke Executer %* with args: %* to identifier: %*"]
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R3 1
        3 GETUPVAL                         R5 2
        4 GETTABLEKS                       R5 R5 K1 ["args"]
        6 NAMECALL                         R3 R3 K2 ["JSONEncode"]
        8 CALL                             R3 2 1
        9 GETUPVAL                         R4 3
       10 NAMECALL                         R0 R0 K3 ["format"]
       12 CALL                             R0 4 1
       13 RETURN                           R0 1

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
       69 LOADK                            R10 K24 ["received invoke Requester %*"]
       70 MOVE                             R12 R2
       71 NAMECALL                         R10 R10 K25 ["format"]
       73 CALL                             R10 2 1
       74 NAMECALL                         R8 R8 K26 ["log"]
       76 CALL                             R8 2 0
       77 GETTABLEN                        R8 R6 1
       78 JUMPIF                           R8 ; [+5]
       79 GETIMPORT                        R8 K28 [error]
       81 GETTABLEN                        R9 R6 2
       82 LOADN                            R10 0
       83 CALL                             R8 2 0
       84 FASTCALL2K                       TABLE_UNPACK R6 K29 ; [+5]
       86 MOVE                             R9 R6
       87 LOADK                            R10 K29 [2]
       88 GETIMPORT                        R8 K32 [table.unpack]
       90 CALL                             R8 2 -1
       91 CLOSEUPVALS                      R6
       92 RETURN                           R8 -1

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
       21 LOADK                            R9 K9 ["Target is closed (%*)"]
       22 GETTABLEKS                       R12 R5 K10 ["toRequesterKey"]
       24 GETTABLEKS                       R13 R0 K8 ["_identity"]
       26 NEWTABLE                         R14 0 1
       28 MOVE                             R15 R12
       29 SETLIST                          R14 R15 1 [1]
       31 JUMPIFNOT                        R13 ; [+11]
       32 FASTCALL1                        TOSTRING R13 ; [+3]
       33 MOVE                             R18 R13
       34 GETIMPORT                        R17 K12 [tostring]
       36 CALL                             R17 1 1
       37 FASTCALL2                        TABLE_INSERT R14 R17 ; [+4]
       39 MOVE                             R16 R14
       40 GETIMPORT                        R15 K15 [table.insert]
       42 CALL                             R15 2 0
       43 GETIMPORT                        R15 K17 [table.concat]
       45 MOVE                             R16 R14
       46 LOADK                            R17 K18 [", "]
       47 CALL                             R15 2 1
       48 MOVE                             R11 R15
       49 NAMECALL                         R9 R9 K19 ["format"]
       51 CALL                             R9 2 1
       52 SETLIST                          R7 R8 2 [1]
       54 SETTABLEKS                       R7 R6 K6 ["args"]
       56 GETTABLEKS                       R7 R0 K20 ["_plugin"]
       58 GETTABLEKS                       R9 R5 K10 ["toRequesterKey"]
       60 MOVE                             R10 R6
       61 NAMECALL                         R7 R7 K21 ["Invoke"]
       63 CALL                             R7 3 0
       64 FORGLOOP                         R1 2 ; [-60]
       66 GETIMPORT                        R1 K23 [table.clear]
       68 GETTABLEKS                       R2 R0 K0 ["_pendingResponses"]
       70 CALL                             R1 1 0
       71 RETURN                           R0 0

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
       28 LOADK                            R9 K16 ["Self is closed (%*)"]
       29 GETTABLEKS                       R12 R0 K17 ["_identity"]
       31 NEWTABLE                         R13 0 1
       33 MOVE                             R14 R4
       34 SETLIST                          R13 R14 1 [1]
       36 JUMPIFNOT                        R12 ; [+11]
       37 FASTCALL1                        TOSTRING R12 ; [+3]
       38 MOVE                             R17 R12
       39 GETIMPORT                        R16 K19 [tostring]
       41 CALL                             R16 1 1
       42 FASTCALL2                        TABLE_INSERT R13 R16 ; [+4]
       44 MOVE                             R15 R13
       45 GETIMPORT                        R14 K21 [table.insert]
       47 CALL                             R14 2 0
       48 GETIMPORT                        R14 K23 [table.concat]
       50 MOVE                             R15 R13
       51 LOADK                            R16 K24 [", "]
       52 CALL                             R14 2 1
       53 MOVE                             R11 R14
       54 NAMECALL                         R9 R9 K25 ["format"]
       56 CALL                             R9 2 1
       57 SETLIST                          R7 R8 2 [1]
       59 SETTABLEKS                       R7 R6 K14 ["args"]
       61 MOVE                             R7 R5
       62 MOVE                             R8 R6
       63 CALL                             R7 1 0
       64 FORGLOOP                         R1 2 ; [-43]
       66 GETIMPORT                        R1 K6 [table.clear]
       68 GETTABLEKS                       R2 R0 K7 ["_invokeThreads"]
       70 CALL                             R1 1 0
       71 RETURN                           R0 0

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
