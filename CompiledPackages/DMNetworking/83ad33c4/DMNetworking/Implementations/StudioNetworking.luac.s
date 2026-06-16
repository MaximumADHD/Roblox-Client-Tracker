PROTO_0:
        0 JUMPIFNOTEQKNIL                  R2 ; [+9]
        2 LOADK                            R4 K0 ["%*_%*"]
        3 MOVE                             R6 R0
        4 MOVE                             R7 R1
        5 NAMECALL                         R4 R4 K1 ["format"]
        7 CALL                             R4 3 1
        8 MOVE                             R3 R4
        9 RETURN                           R3 1
       10 LOADK                            R4 K2 ["%*_%*_%*"]
       11 MOVE                             R6 R0
       12 MOVE                             R7 R1
       13 MOVE                             R8 R2
       14 NAMECALL                         R4 R4 K1 ["format"]
       16 CALL                             R4 4 1
       17 MOVE                             R3 R4
       18 RETURN                           R3 1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R1 ; [+5]
        2 NAMECALL                         R2 R0 K0 ["_isFocusedDM"]
        4 CALL                             R2 1 -1
        5 RETURN                           R2 -1
        6 GETTABLEKS                       R3 R0 K1 ["_identity"]
        8 JUMPIFEQ                         R1 R3 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["isGuest"]
        2 GETTABLEKS                       R4 R0 K1 ["isHost"]
        4 JUMPIFNOTEQ                      R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       10 LOADK                            R3 K2 ["DataModel must be either a Guest or a Host, not both"]
       11 GETIMPORT                        R1 K4 [assert]
       13 CALL                             R1 2 0
       14 NEWTABLE                         R1 16 0
       16 LOADK                            R2 K5 ["Studio"]
       17 SETTABLEKS                       R2 R1 K6 ["_type"]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K7 ["Logger"]
       22 GETTABLEKS                       R2 R2 K8 ["new"]
       24 LOADK                            R4 K9 ["[Networking] [%*]"]
       25 GETTABLEKS                       R6 R1 K6 ["_type"]
       27 NAMECALL                         R4 R4 K10 ["format"]
       29 CALL                             R4 2 1
       30 MOVE                             R3 R4
       31 CALL                             R2 1 1
       32 SETTABLEKS                       R2 R1 K11 ["_logger"]
       34 GETTABLEKS                       R2 R0 K12 ["plugin"]
       36 SETTABLEKS                       R2 R1 K13 ["_plugin"]
       38 GETTABLEKS                       R2 R0 K14 ["identity"]
       40 SETTABLEKS                       R2 R1 K15 ["_identity"]
       42 GETTABLEKS                       R2 R0 K0 ["isGuest"]
       44 SETTABLEKS                       R2 R1 K16 ["_isGuest"]
       46 GETTABLEKS                       R2 R0 K1 ["isHost"]
       48 SETTABLEKS                       R2 R1 K17 ["_isHost"]
       50 GETTABLEKS                       R3 R0 K19 ["unreachableTimeout"]
       52 ORK                              R2 R3 K18 [2]
       53 SETTABLEKS                       R2 R1 K20 ["_unreachableTimeout"]
       55 GETTABLEKS                       R3 R0 K21 ["useSuspendOverride"]
       57 JUMPIFEQKB                       R3 TRUE ; [+2]
       59 LOADB                            R2 0 +1
       60 LOADB                            R2 1
       61 SETTABLEKS                       R2 R1 K22 ["_useSuspendOverride"]
       63 NEWTABLE                         R2 0 0
       65 SETTABLEKS                       R2 R1 K23 ["_connections"]
       67 NEWTABLE                         R2 0 0
       69 SETTABLEKS                       R2 R1 K24 ["_invokeThreads"]
       71 NEWTABLE                         R2 0 0
       73 SETTABLEKS                       R2 R1 K25 ["_infiniteYieldThreads"]
       75 NEWTABLE                         R2 0 0
       77 SETTABLEKS                       R2 R1 K26 ["_pendingResponses"]
       79 LOADN                            R2 0
       80 SETTABLEKS                       R2 R1 K27 ["_invokeCounter"]
       82 GETUPVAL                         R4 1
       83 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       85 MOVE                             R3 R1
       86 GETIMPORT                        R2 K29 [setmetatable]
       88 CALL                             R2 2 0
       89 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_isGuest"]
        2 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_isHost"]
        2 RETURN                           R1 1

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
        9 JUMP                             ; [+6]
       10 GETTABLEKS                       R4 R3 K2 ["_identity"]
       12 JUMPIFEQ                         R1 R4 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 JUMPIF                           R2 ; [+11]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K3 ["_logger"]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          VAL R1
       24 NAMECALL                         R3 R3 K4 ["log"]
       26 CALL                             R3 2 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K3 ["_logger"]
       31 LOADK                            R6 K5 ["received event %*"]
       32 GETUPVAL                         R8 1
       33 NAMECALL                         R6 R6 K6 ["format"]
       35 CALL                             R6 2 1
       36 MOVE                             R5 R6
       37 NAMECALL                         R3 R3 K4 ["log"]
       39 CALL                             R3 2 0
       40 GETUPVAL                         R3 2
       41 GETTABLEKS                       R4 R0 K7 ["fromIdentifier"]
       43 GETTABLEKS                       R6 R0 K8 ["args"]
       45 FASTCALL1                        TABLE_UNPACK R6 ; [+2]
       46 GETIMPORT                        R5 K11 [table.unpack]
       48 CALL                             R5 1 -1
       49 CALL                             R3 -1 0
       50 RETURN                           R0 0

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
        0 LOADK                            R5 K0 ["%*_%*"]
        1 MOVE                             R7 R1
        2 MOVE                             R8 R2
        3 NAMECALL                         R5 R5 K1 ["format"]
        5 CALL                             R5 3 1
        6 MOVE                             R4 R5
        7 MOVE                             R7 R4
        8 NEWCLOSURE                       R8 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R3
       12 NAMECALL                         R5 R0 K2 ["_onInvoke"]
       14 CALL                             R5 3 1
       15 GETTABLEKS                       R6 R0 K3 ["_connections"]
       17 SETTABLE                         R5 R6 R4
       18 NEWCLOSURE                       R6 P1
       19 CAPTURE                          VAL R5
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R4
       22 RETURN                           R6 1

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
        0 LOADK                            R1 K0 ["sending event %* with args: %*"]
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R6 2
        4 GETTABLEKS                       R6 R6 K1 ["args"]
        6 NAMECALL                         R4 R4 K2 ["JSONEncode"]
        8 CALL                             R4 2 1
        9 NAMECALL                         R1 R1 K3 ["format"]
       11 CALL                             R1 3 1
       12 MOVE                             R0 R1
       13 RETURN                           R0 1

PROTO_16:
        0 PREPVARARGS                      4
        1 LOADK                            R5 K0 ["%*_%*"]
        2 MOVE                             R7 R1
        3 MOVE                             R8 R2
        4 NAMECALL                         R5 R5 K1 ["format"]
        6 CALL                             R5 3 1
        7 MOVE                             R4 R5
        8 DUPTABLE                         R5 K5 [{"toIdentifier", "fromIdentifier", "args"}]
        9 SETTABLEKS                       R3 R5 K2 ["toIdentifier"]
       11 GETTABLEKS                       R6 R0 K6 ["_identity"]
       13 SETTABLEKS                       R6 R5 K3 ["fromIdentifier"]
       15 NEWTABLE                         R6 0 0
       17 GETVARARGS                       R7 -1
       18 SETLIST                          R6 R7 -1 [1]
       20 SETTABLEKS                       R6 R5 K4 ["args"]
       22 GETTABLEKS                       R6 R0 K7 ["_logger"]
       24 NEWCLOSURE                       R8 P0
       25 CAPTURE                          VAL R2
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          VAL R5
       28 NAMECALL                         R6 R6 K8 ["log"]
       30 CALL                             R6 2 0
       31 GETTABLEKS                       R6 R0 K9 ["_plugin"]
       33 MOVE                             R8 R4
       34 MOVE                             R9 R5
       35 NAMECALL                         R6 R6 K10 ["Invoke"]
       37 CALL                             R6 3 0
       38 RETURN                           R0 0

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
        0 LOADK                            R1 K0 ["skipping requester invoke callback %* in unfocused or untargeted DM: expected %*, got %*"]
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["_identity"]
        5 GETUPVAL                         R5 2
        6 NAMECALL                         R1 R1 K2 ["format"]
        8 CALL                             R1 4 1
        9 MOVE                             R0 R1
       10 RETURN                           R0 1

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["toIdentifier"]
        2 GETUPVAL                         R3 0
        3 JUMPIFNOTEQKNIL                  R1 ; [+6]
        5 NAMECALL                         R4 R3 K1 ["_isFocusedDM"]
        7 CALL                             R4 1 1
        8 MOVE                             R2 R4
        9 JUMP                             ; [+6]
       10 GETTABLEKS                       R4 R3 K2 ["_identity"]
       12 JUMPIFEQ                         R1 R4 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 JUMPIF                           R2 ; [+11]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K3 ["_logger"]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          VAL R1
       24 NAMECALL                         R3 R3 K4 ["log"]
       26 CALL                             R3 2 0
       27 RETURN                           R0 0
       28 GETTABLEKS                       R3 R0 K5 ["kind"]
       30 JUMPIFNOTEQKS                    R3 K6 ["SUCCESS"] ; [+32]
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R3 R3 K3 ["_logger"]
       35 LOADK                            R6 K7 ["received success packet for invoke %*"]
       36 GETUPVAL                         R8 1
       37 NAMECALL                         R6 R6 K8 ["format"]
       39 CALL                             R6 2 1
       40 MOVE                             R5 R6
       41 NAMECALL                         R3 R3 K4 ["log"]
       43 CALL                             R3 2 0
       44 GETUPVAL                         R4 0
       45 GETTABLEKS                       R4 R4 K9 ["_infiniteYieldThreads"]
       47 GETTABLEKS                       R5 R0 K10 ["requestId"]
       49 GETTABLE                         R3 R4 R5
       50 JUMPIFNOT                        R3 ; [+11]
       51 GETUPVAL                         R4 0
       52 GETTABLEKS                       R4 R4 K9 ["_infiniteYieldThreads"]
       54 GETTABLEKS                       R5 R0 K10 ["requestId"]
       56 LOADNIL                          R6
       57 SETTABLE                         R6 R4 R5
       58 GETIMPORT                        R4 K13 [task.cancel]
       60 MOVE                             R5 R3
       61 CALL                             R4 1 0
       62 RETURN                           R0 0
       63 GETUPVAL                         R4 0
       64 GETTABLEKS                       R4 R4 K14 ["_invokeThreads"]
       66 GETTABLEKS                       R5 R0 K10 ["requestId"]
       68 GETTABLE                         R3 R4 R5
       69 JUMPIFNOT                        R3 ; [+10]
       70 GETUPVAL                         R4 0
       71 GETTABLEKS                       R4 R4 K14 ["_invokeThreads"]
       73 GETTABLEKS                       R5 R0 K10 ["requestId"]
       75 LOADNIL                          R6
       76 SETTABLE                         R6 R4 R5
       77 MOVE                             R4 R3
       78 MOVE                             R5 R0
       79 CALL                             R4 1 0
       80 RETURN                           R0 0

PROTO_23:
        0 LOADK                            R4 K0 ["%*_%*_ToRequester"]
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 NAMECALL                         R4 R4 K1 ["format"]
        5 CALL                             R4 3 1
        6 MOVE                             R3 R4
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R3
       10 GETTABLEKS                       R6 R0 K2 ["_connections"]
       12 GETTABLE                         R5 R6 R3
       13 JUMPIFNOT                        R5 ; [+8]
       14 GETTABLEKS                       R7 R0 K2 ["_connections"]
       16 GETTABLE                         R6 R7 R3
       17 NEWCLOSURE                       R5 P1
       18 CAPTURE                          VAL R6
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R3
       21 RETURN                           R5 1
       22 MOVE                             R7 R3
       23 NEWCLOSURE                       R8 P2
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R2
       26 NAMECALL                         R5 R0 K3 ["_onInvoke"]
       28 CALL                             R5 3 1
       29 GETTABLEKS                       R6 R0 K2 ["_connections"]
       31 SETTABLE                         R5 R6 R3
       32 NEWCLOSURE                       R6 P1
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R3
       36 RETURN                           R6 1

PROTO_24:
        0 LOADK                            R1 K0 ["skipping executer invoke callback %* in unfocused or untargeted DM: expected %*, got %*"]
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["_identity"]
        5 GETUPVAL                         R5 2
        6 NAMECALL                         R1 R1 K2 ["format"]
        8 CALL                             R1 4 1
        9 MOVE                             R0 R1
       10 RETURN                           R0 1

PROTO_25:
        0 LOADK                            R1 K0 ["sending invoke Requester %* with args: %*"]
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R6 2
        4 NAMECALL                         R4 R4 K1 ["JSONEncode"]
        6 CALL                             R4 2 1
        7 NAMECALL                         R1 R1 K2 ["format"]
        9 CALL                             R1 3 1
       10 MOVE                             R0 R1
       11 RETURN                           R0 1

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["requestId"]
        2 GETTABLEKS                       R2 R0 K1 ["toIdentifier"]
        4 GETTABLEKS                       R3 R0 K2 ["fromIdentifier"]
        6 GETUPVAL                         R5 0
        7 JUMPIFNOTEQKNIL                  R2 ; [+6]
        9 NAMECALL                         R6 R5 K3 ["_isFocusedDM"]
       11 CALL                             R6 1 1
       12 MOVE                             R4 R6
       13 JUMP                             ; [+6]
       14 GETTABLEKS                       R6 R5 K4 ["_identity"]
       16 JUMPIFEQ                         R2 R6 ; [+2]
       18 LOADB                            R4 0 +1
       19 LOADB                            R4 1
       20 JUMPIF                           R4 ; [+11]
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K5 ["_logger"]
       24 NEWCLOSURE                       R7 P0
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          VAL R2
       28 NAMECALL                         R5 R5 K6 ["log"]
       30 CALL                             R5 2 0
       31 RETURN                           R0 0
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K5 ["_logger"]
       35 LOADK                            R8 K7 ["received invoke Executer %*"]
       36 GETUPVAL                         R10 1
       37 NAMECALL                         R8 R8 K8 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R7 R8
       41 NAMECALL                         R5 R5 K6 ["log"]
       43 CALL                             R5 2 0
       44 GETUPVAL                         R6 2
       45 GETUPVAL                         R7 1
       46 LOADK                            R8 K9 ["%*_%*_ToRequester"]
       47 MOVE                             R10 R6
       48 MOVE                             R11 R7
       49 NAMECALL                         R8 R8 K8 ["format"]
       51 CALL                             R8 3 1
       52 MOVE                             R5 R8
       53 ORK                              R6 R3 K10 [""]
       54 JUMPIFNOTEQKNIL                  R1 ; [+9]
       56 LOADK                            R8 K11 ["%*_%*"]
       57 MOVE                             R10 R5
       58 MOVE                             R11 R6
       59 NAMECALL                         R8 R8 K8 ["format"]
       61 CALL                             R8 3 1
       62 MOVE                             R7 R8
       63 JUMP                             ; [+8]
       64 LOADK                            R8 K12 ["%*_%*_%*"]
       65 MOVE                             R10 R5
       66 MOVE                             R11 R6
       67 MOVE                             R12 R1
       68 NAMECALL                         R8 R8 K8 ["format"]
       70 CALL                             R8 4 1
       71 MOVE                             R7 R8
       72 GETUPVAL                         R8 0
       73 GETTABLEKS                       R8 R8 K13 ["_pendingResponses"]
       75 DUPTABLE                         R9 K15 [{"toRequesterKey", "toIdentifier", "requestId"}]
       76 SETTABLEKS                       R5 R9 K14 ["toRequesterKey"]
       78 SETTABLEKS                       R3 R9 K1 ["toIdentifier"]
       80 SETTABLEKS                       R1 R9 K0 ["requestId"]
       82 SETTABLE                         R9 R8 R7
       83 DUPTABLE                         R8 K17 [{"kind", "requestId", "toIdentifier", "fromIdentifier"}]
       84 LOADK                            R9 K18 ["SUCCESS"]
       85 SETTABLEKS                       R9 R8 K16 ["kind"]
       87 SETTABLEKS                       R1 R8 K0 ["requestId"]
       89 SETTABLEKS                       R3 R8 K1 ["toIdentifier"]
       91 GETUPVAL                         R9 0
       92 GETTABLEKS                       R9 R9 K4 ["_identity"]
       94 SETTABLEKS                       R9 R8 K2 ["fromIdentifier"]
       96 GETUPVAL                         R9 0
       97 GETTABLEKS                       R9 R9 K19 ["_plugin"]
       99 MOVE                             R11 R5
      100 MOVE                             R12 R8
      101 NAMECALL                         R9 R9 K20 ["Invoke"]
      103 CALL                             R9 3 0
      104 NEWTABLE                         R9 0 1
      106 GETIMPORT                        R10 K22 [pcall]
      108 GETUPVAL                         R11 3
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
      125 GETTABLEKS                       R10 R10 K5 ["_logger"]
      127 NEWCLOSURE                       R12 P1
      128 CAPTURE                          UPVAL U1
      129 CAPTURE                          UPVAL U4
      130 CAPTURE                          VAL R9
      131 NAMECALL                         R10 R10 K6 ["log"]
      133 CALL                             R10 2 0
      134 DUPTABLE                         R10 K27 [{"kind", "requestId", "toIdentifier", "fromIdentifier", "args"}]
      135 LOADK                            R11 K28 ["RESULT"]
      136 SETTABLEKS                       R11 R10 K16 ["kind"]
      138 SETTABLEKS                       R1 R10 K0 ["requestId"]
      140 SETTABLEKS                       R3 R10 K1 ["toIdentifier"]
      142 GETUPVAL                         R11 0
      143 GETTABLEKS                       R11 R11 K4 ["_identity"]
      145 SETTABLEKS                       R11 R10 K2 ["fromIdentifier"]
      147 SETTABLEKS                       R9 R10 K23 ["args"]
      149 GETUPVAL                         R11 0
      150 GETTABLEKS                       R11 R11 K19 ["_plugin"]
      152 MOVE                             R13 R5
      153 MOVE                             R14 R10
      154 NAMECALL                         R11 R11 K20 ["Invoke"]
      156 CALL                             R11 3 0
      157 RETURN                           R0 0

PROTO_27:
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

PROTO_28:
        0 LOADK                            R5 K0 ["%*_%*_ToExecuter"]
        1 MOVE                             R7 R1
        2 MOVE                             R8 R2
        3 NAMECALL                         R5 R5 K1 ["format"]
        5 CALL                             R5 3 1
        6 MOVE                             R4 R5
        7 GETTABLEKS                       R8 R0 K2 ["_connections"]
        9 GETTABLE                         R7 R8 R4
       10 NOT                              R6 R7
       11 LOADK                            R8 K3 ["Invoke connection for key %* already exists"]
       12 MOVE                             R10 R2
       13 NAMECALL                         R8 R8 K1 ["format"]
       15 CALL                             R8 2 1
       16 MOVE                             R7 R8
       17 FASTCALL2                        ASSERT R6 R7 ; [+3]
       19 GETIMPORT                        R5 K5 [assert]
       21 CALL                             R5 2 0
       22 MOVE                             R7 R4
       23 NEWCLOSURE                       R8 P0
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R3
       28 CAPTURE                          UPVAL U0
       29 NAMECALL                         R5 R0 K6 ["_onInvoke"]
       31 CALL                             R5 3 1
       32 GETTABLEKS                       R6 R0 K2 ["_connections"]
       34 SETTABLE                         R5 R6 R4
       35 NEWCLOSURE                       R6 P1
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R4
       39 RETURN                           R6 1

PROTO_29:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 GETVARARGS                       R5 -1
        5 NAMECALL                         R1 R1 K0 ["InvokeGuestAsync"]
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1

PROTO_30:
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
       15 RETURN                           R3 2
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K1 ["TAG_GUEST_INVOKE"]
       19 MOVE                             R7 R1
       20 NAMECALL                         R4 R0 K3 ["_connectInvokeRequester"]
       22 CALL                             R4 3 1
       23 RETURN                           R3 2

PROTO_31:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 GETVARARGS                       R5 -1
        5 NAMECALL                         R1 R1 K0 ["InvokeHostAsync"]
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1

PROTO_32:
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
       15 RETURN                           R3 2
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K1 ["TAG_HOST_INVOKE"]
       19 MOVE                             R7 R1
       20 NAMECALL                         R4 R0 K3 ["_connectInvokeRequester"]
       22 CALL                             R4 3 1
       23 RETURN                           R3 2

PROTO_33:
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

PROTO_34:
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

PROTO_35:
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

PROTO_36:
        0 LOADK                            R1 K0 ["sending invoke Executer %* with args: %*"]
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R6 2
        4 GETTABLEKS                       R6 R6 K1 ["args"]
        6 NAMECALL                         R4 R4 K2 ["JSONEncode"]
        8 CALL                             R4 2 1
        9 NAMECALL                         R1 R1 K3 ["format"]
       11 CALL                             R1 3 1
       12 MOVE                             R0 R1
       13 RETURN                           R0 1

PROTO_37:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_logger"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 NAMECALL                         R0 R0 K1 ["log"]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R1 4
       11 GETUPVAL                         R2 1
       12 LOADK                            R3 K2 ["%*_%*_ToExecuter"]
       13 MOVE                             R5 R1
       14 MOVE                             R6 R2
       15 NAMECALL                         R3 R3 K3 ["format"]
       17 CALL                             R3 3 1
       18 MOVE                             R0 R3
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K4 ["_plugin"]
       22 MOVE                             R3 R0
       23 GETUPVAL                         R4 3
       24 NAMECALL                         R1 R1 K5 ["Invoke"]
       26 CALL                             R1 3 0
       27 RETURN                           R0 0

PROTO_38:
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
       60 CAPTURE                          VAL R1
       61 CALL                             R8 1 0
       62 JUMPIF                           R6 ; [+3]
       63 GETIMPORT                        R8 K22 [coroutine.yield]
       65 CALL                             R8 0 0
       66 GETTABLEKS                       R8 R0 K23 ["_logger"]
       68 LOADK                            R11 K24 ["received invoke Requester %*"]
       69 MOVE                             R13 R2
       70 NAMECALL                         R11 R11 K25 ["format"]
       72 CALL                             R11 2 1
       73 MOVE                             R10 R11
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

PROTO_39:
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

PROTO_40:
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

PROTO_41:
        0 GETTABLEKS                       R1 R0 K0 ["_pendingResponses"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 DUPTABLE                         R6 K6 [{"kind", "requestId", "toIdentifier", "fromIdentifier", "args"}]
        6 LOADK                            R7 K7 ["RESULT"]
        7 SETTABLEKS                       R7 R6 K1 ["kind"]
        9 GETTABLEKS                       R7 R5 K2 ["requestId"]
       11 SETTABLEKS                       R7 R6 K2 ["requestId"]
       13 GETTABLEKS                       R7 R5 K3 ["toIdentifier"]
       15 SETTABLEKS                       R7 R6 K3 ["toIdentifier"]
       17 GETTABLEKS                       R7 R0 K8 ["_identity"]
       19 SETTABLEKS                       R7 R6 K4 ["fromIdentifier"]
       21 NEWTABLE                         R7 0 2
       23 LOADB                            R8 0
       24 LOADK                            R10 K9 ["Target is closed (%*)"]
       25 GETTABLEKS                       R13 R5 K10 ["toRequesterKey"]
       27 GETTABLEKS                       R14 R0 K8 ["_identity"]
       29 NEWTABLE                         R15 0 1
       31 MOVE                             R16 R13
       32 SETLIST                          R15 R16 1 [1]
       34 JUMPIFNOT                        R14 ; [+11]
       35 FASTCALL1                        TOSTRING R14 ; [+3]
       36 MOVE                             R19 R14
       37 GETIMPORT                        R18 K12 [tostring]
       39 CALL                             R18 1 1
       40 FASTCALL2                        TABLE_INSERT R15 R18 ; [+4]
       42 MOVE                             R17 R15
       43 GETIMPORT                        R16 K15 [table.insert]
       45 CALL                             R16 2 0
       46 GETIMPORT                        R16 K17 [table.concat]
       48 MOVE                             R17 R15
       49 LOADK                            R18 K18 [", "]
       50 CALL                             R16 2 1
       51 MOVE                             R12 R16
       52 NAMECALL                         R10 R10 K19 ["format"]
       54 CALL                             R10 2 1
       55 MOVE                             R9 R10
       56 SETLIST                          R7 R8 2 [1]
       58 SETTABLEKS                       R7 R6 K5 ["args"]
       60 GETTABLEKS                       R7 R0 K20 ["_plugin"]
       62 GETTABLEKS                       R9 R5 K10 ["toRequesterKey"]
       64 MOVE                             R10 R6
       65 NAMECALL                         R7 R7 K21 ["Invoke"]
       67 CALL                             R7 3 0
       68 FORGLOOP                         R1 2 ; [-64]
       70 GETIMPORT                        R1 K23 [table.clear]
       72 GETTABLEKS                       R2 R0 K0 ["_pendingResponses"]
       74 CALL                             R1 1 0
       75 RETURN                           R0 0

PROTO_42:
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
       22 DUPTABLE                         R6 K13 [{"kind", "requestId", "toIdentifier", "fromIdentifier", "args"}]
       23 LOADK                            R7 K14 ["RESULT"]
       24 SETTABLEKS                       R7 R6 K8 ["kind"]
       26 SETTABLEKS                       R4 R6 K9 ["requestId"]
       28 LOADNIL                          R7
       29 SETTABLEKS                       R7 R6 K10 ["toIdentifier"]
       31 LOADNIL                          R7
       32 SETTABLEKS                       R7 R6 K11 ["fromIdentifier"]
       34 NEWTABLE                         R7 0 2
       36 LOADB                            R8 0
       37 LOADK                            R10 K15 ["Self is closed (%*)"]
       38 GETTABLEKS                       R13 R0 K16 ["_identity"]
       40 NEWTABLE                         R14 0 1
       42 MOVE                             R15 R4
       43 SETLIST                          R14 R15 1 [1]
       45 JUMPIFNOT                        R13 ; [+11]
       46 FASTCALL1                        TOSTRING R13 ; [+3]
       47 MOVE                             R18 R13
       48 GETIMPORT                        R17 K18 [tostring]
       50 CALL                             R17 1 1
       51 FASTCALL2                        TABLE_INSERT R14 R17 ; [+4]
       53 MOVE                             R16 R14
       54 GETIMPORT                        R15 K20 [table.insert]
       56 CALL                             R15 2 0
       57 GETIMPORT                        R15 K22 [table.concat]
       59 MOVE                             R16 R14
       60 LOADK                            R17 K23 [", "]
       61 CALL                             R15 2 1
       62 MOVE                             R12 R15
       63 NAMECALL                         R10 R10 K24 ["format"]
       65 CALL                             R10 2 1
       66 MOVE                             R9 R10
       67 SETLIST                          R7 R8 2 [1]
       69 SETTABLEKS                       R7 R6 K12 ["args"]
       71 MOVE                             R7 R5
       72 MOVE                             R8 R6
       73 CALL                             R7 1 0
       74 FORGLOOP                         R1 2 ; [-53]
       76 GETIMPORT                        R1 K6 [table.clear]
       78 GETTABLEKS                       R2 R0 K7 ["_invokeThreads"]
       80 CALL                             R1 1 0
       81 RETURN                           R0 0

PROTO_43:
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
       28 DUPCLOSURE                       R6 K14 [PROTO_1]
       29 DUPCLOSURE                       R7 K15 [PROTO_2]
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R4
       32 SETTABLEKS                       R7 R4 K16 ["new"]
       34 DUPCLOSURE                       R7 K17 [PROTO_3]
       35 SETTABLEKS                       R7 R4 K18 ["IsGuest"]
       37 DUPCLOSURE                       R7 K19 [PROTO_4]
       38 SETTABLEKS                       R7 R4 K20 ["IsHost"]
       40 DUPCLOSURE                       R7 K21 [PROTO_5]
       41 SETTABLEKS                       R7 R4 K22 ["_isFocusedDM"]
       43 DUPCLOSURE                       R7 K23 [PROTO_6]
       44 SETTABLEKS                       R7 R4 K24 ["_onInvoke"]
       46 DUPCLOSURE                       R7 K25 [PROTO_10]
       47 SETTABLEKS                       R7 R4 K26 ["_connectEvent"]
       49 DUPCLOSURE                       R7 K27 [PROTO_12]
       50 CAPTURE                          VAL R3
       51 SETTABLEKS                       R7 R4 K28 ["OnGuestEvent"]
       53 DUPCLOSURE                       R7 K29 [PROTO_14]
       54 CAPTURE                          VAL R3
       55 SETTABLEKS                       R7 R4 K30 ["OnHostEvent"]
       57 DUPCLOSURE                       R7 K31 [PROTO_16]
       58 CAPTURE                          VAL R1
       59 SETTABLEKS                       R7 R4 K32 ["_doFire"]
       61 DUPCLOSURE                       R7 K33 [PROTO_17]
       62 CAPTURE                          VAL R3
       63 SETTABLEKS                       R7 R4 K34 ["FireGuest"]
       65 DUPCLOSURE                       R7 K35 [PROTO_18]
       66 CAPTURE                          VAL R3
       67 SETTABLEKS                       R7 R4 K36 ["FireHost"]
       69 DUPCLOSURE                       R7 K37 [PROTO_23]
       70 SETTABLEKS                       R7 R4 K38 ["_connectInvokeRequester"]
       72 DUPCLOSURE                       R7 K39 [PROTO_28]
       73 CAPTURE                          VAL R1
       74 SETTABLEKS                       R7 R4 K40 ["_connectInvokeExecuter"]
       76 DUPCLOSURE                       R7 K41 [PROTO_30]
       77 CAPTURE                          VAL R3
       78 SETTABLEKS                       R7 R4 K42 ["OnGuestInvokeAsync"]
       80 DUPCLOSURE                       R7 K43 [PROTO_32]
       81 CAPTURE                          VAL R3
       82 SETTABLEKS                       R7 R4 K44 ["OnHostInvokeAsync"]
       84 DUPCLOSURE                       R7 K45 [PROTO_33]
       85 DUPCLOSURE                       R8 K46 [PROTO_38]
       86 CAPTURE                          VAL R1
       87 SETTABLEKS                       R8 R4 K47 ["_doInvoke"]
       89 DUPCLOSURE                       R8 K48 [PROTO_39]
       90 CAPTURE                          VAL R3
       91 SETTABLEKS                       R8 R4 K49 ["InvokeGuestAsync"]
       93 DUPCLOSURE                       R8 K50 [PROTO_40]
       94 CAPTURE                          VAL R3
       95 SETTABLEKS                       R8 R4 K51 ["InvokeHostAsync"]
       97 DUPCLOSURE                       R8 K52 [PROTO_41]
       98 SETTABLEKS                       R8 R4 K53 ["_closePendingResponses"]
      100 DUPCLOSURE                       R8 K54 [PROTO_42]
      101 SETTABLEKS                       R8 R4 K55 ["_closePendingRequests"]
      103 DUPCLOSURE                       R8 K56 [PROTO_43]
      104 SETTABLEKS                       R8 R4 K57 ["Destroy"]
      106 RETURN                           R4 1
