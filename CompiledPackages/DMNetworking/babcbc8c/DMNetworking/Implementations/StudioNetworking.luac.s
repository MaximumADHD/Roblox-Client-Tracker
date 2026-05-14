PROTO_0:
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
       38 GETTABLEKS                       R2 R0 K0 ["isGuest"]
       40 SETTABLEKS                       R2 R1 K14 ["_isGuest"]
       42 GETTABLEKS                       R2 R0 K1 ["isHost"]
       44 SETTABLEKS                       R2 R1 K15 ["_isHost"]
       46 NEWTABLE                         R2 0 0
       48 SETTABLEKS                       R2 R1 K16 ["_connections"]
       50 NEWTABLE                         R2 0 0
       52 SETTABLEKS                       R2 R1 K17 ["_invokeThreads"]
       54 NEWTABLE                         R2 0 0
       56 SETTABLEKS                       R2 R1 K18 ["_infiniteYieldThreads"]
       58 LOADN                            R2 0
       59 SETTABLEKS                       R2 R1 K19 ["_invokeCounter"]
       61 GETUPVAL                         R4 1
       62 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       64 MOVE                             R3 R1
       65 GETIMPORT                        R2 K21 [setmetatable]
       67 CALL                             R2 2 0
       68 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_isGuest"]
        2 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_isHost"]
        2 RETURN                           R1 1

PROTO_3:
        0 NAMECALL                         R1 R0 K0 ["IsGuest"]
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+8]
        4 NAMECALL                         R1 R0 K1 ["IsHost"]
        6 CALL                             R1 1 1
        7 JUMPIFNOT                        R1 ; [+4]
        8 GETTABLEKS                       R1 R0 K2 ["_plugin"]
       10 GETTABLEKS                       R1 R1 K3 ["HostDataModelTypeIsCurrent"]
       12 RETURN                           R1 1

PROTO_4:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K0 ["_isFocusedDM"]
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+13]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["_logger"]
        9 LOADK                            R4 K2 ["skipping event %* in unfocused DM"]
       10 GETUPVAL                         R6 1
       11 NAMECALL                         R4 R4 K3 ["format"]
       13 CALL                             R4 2 1
       14 MOVE                             R3 R4
       15 NAMECALL                         R1 R1 K4 ["log"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K1 ["_logger"]
       22 LOADK                            R4 K5 ["received event %*"]
       23 GETUPVAL                         R6 1
       24 NAMECALL                         R4 R4 K3 ["format"]
       26 CALL                             R4 2 1
       27 MOVE                             R3 R4
       28 NAMECALL                         R1 R1 K4 ["log"]
       30 CALL                             R1 2 0
       31 GETUPVAL                         R1 2
       32 MOVE                             R2 R0
       33 GETVARARGS                       R3 -1
       34 CALL                             R1 -1 0
       35 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
        0 LOADK                            R5 K0 ["%*_%*"]
        1 MOVE                             R7 R1
        2 MOVE                             R8 R2
        3 NAMECALL                         R5 R5 K1 ["format"]
        5 CALL                             R5 3 1
        6 MOVE                             R4 R5
        7 GETTABLEKS                       R5 R0 K2 ["_plugin"]
        9 MOVE                             R7 R4
       10 NEWCLOSURE                       R8 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R2
       13 CAPTURE                          VAL R3
       14 NAMECALL                         R5 R5 K3 ["OnInvoke"]
       16 CALL                             R5 3 1
       17 GETTABLEKS                       R6 R0 K4 ["_connections"]
       19 SETTABLE                         R5 R6 R4
       20 NEWCLOSURE                       R6 P1
       21 CAPTURE                          VAL R5
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R4
       24 RETURN                           R6 1

PROTO_7:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 GETVARARGS                       R5 -1
        5 NAMECALL                         R1 R1 K0 ["FireGuest"]
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1

PROTO_8:
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

PROTO_9:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 GETVARARGS                       R5 -1
        5 NAMECALL                         R1 R1 K0 ["FireHost"]
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1

PROTO_10:
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

PROTO_11:
        0 PREPVARARGS                      4
        1 LOADK                            R5 K0 ["%*_%*"]
        2 MOVE                             R7 R1
        3 MOVE                             R8 R2
        4 NAMECALL                         R5 R5 K1 ["format"]
        6 CALL                             R5 3 1
        7 MOVE                             R4 R5
        8 GETTABLEKS                       R5 R0 K2 ["_logger"]
       10 LOADK                            R8 K3 ["sending event %* with args: %*"]
       11 MOVE                             R10 R2
       12 GETUPVAL                         R11 0
       13 NEWTABLE                         R13 0 0
       15 GETVARARGS                       R14 -1
       16 SETLIST                          R13 R14 -1 [1]
       18 NAMECALL                         R11 R11 K4 ["JSONEncode"]
       20 CALL                             R11 2 1
       21 NAMECALL                         R8 R8 K1 ["format"]
       23 CALL                             R8 3 1
       24 MOVE                             R7 R8
       25 NAMECALL                         R5 R5 K5 ["log"]
       27 CALL                             R5 2 0
       28 GETTABLEKS                       R5 R0 K6 ["_plugin"]
       30 MOVE                             R7 R4
       31 MOVE                             R8 R3
       32 GETVARARGS                       R9 -1
       33 NAMECALL                         R5 R5 K7 ["Invoke"]
       35 CALL                             R5 -1 0
       36 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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

PROTO_15:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

PROTO_16:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K0 ["_isFocusedDM"]
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+13]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["_logger"]
        9 LOADK                            R4 K2 ["skipping requester invoke callback %* in unfocused DM"]
       10 GETUPVAL                         R6 1
       11 NAMECALL                         R4 R4 K3 ["format"]
       13 CALL                             R4 2 1
       14 MOVE                             R3 R4
       15 NAMECALL                         R1 R1 K4 ["log"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0
       19 JUMPIFNOTEQKS                    R0 K5 ["SUCCESS"] ; [+29]
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K1 ["_logger"]
       24 LOADK                            R4 K6 ["received success packet for invoke %*"]
       25 GETUPVAL                         R6 1
       26 NAMECALL                         R4 R4 K3 ["format"]
       28 CALL                             R4 2 1
       29 MOVE                             R3 R4
       30 NAMECALL                         R1 R1 K4 ["log"]
       32 CALL                             R1 2 0
       33 NEWTABLE                         R1 0 0
       35 GETVARARGS                       R2 -1
       36 SETLIST                          R1 R2 -1 [1]
       38 GETUPVAL                         R3 0
       39 GETTABLEKS                       R3 R3 K7 ["_infiniteYieldThreads"]
       41 GETTABLEN                        R4 R1 1
       42 GETTABLE                         R2 R3 R4
       43 JUMPIFNOT                        R2 ; [+4]
       44 GETIMPORT                        R3 K10 [task.cancel]
       46 MOVE                             R4 R2
       47 CALL                             R3 1 0
       48 RETURN                           R0 0
       49 GETUPVAL                         R2 0
       50 GETTABLEKS                       R2 R2 K11 ["_invokeThreads"]
       52 GETTABLE                         R1 R2 R0
       53 LOADK                            R5 K12 ["No invoke thread found for requestId: %*"]
       54 MOVE                             R7 R0
       55 NAMECALL                         R5 R5 K3 ["format"]
       57 CALL                             R5 2 1
       58 MOVE                             R4 R5
       59 FASTCALL2                        ASSERT R1 R4 ; [+4]
       61 MOVE                             R3 R1
       62 GETIMPORT                        R2 K14 [assert]
       64 CALL                             R2 2 0
       65 GETUPVAL                         R2 0
       66 GETTABLEKS                       R2 R2 K11 ["_invokeThreads"]
       68 LOADNIL                          R3
       69 SETTABLE                         R3 R2 R0
       70 MOVE                             R2 R1
       71 GETVARARGS                       R3 -1
       72 CALL                             R2 -1 0
       73 RETURN                           R0 0

PROTO_17:
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
       22 GETTABLEKS                       R5 R0 K3 ["_plugin"]
       24 MOVE                             R7 R3
       25 NEWCLOSURE                       R8 P2
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R2
       28 NAMECALL                         R5 R5 K4 ["OnInvoke"]
       30 CALL                             R5 3 1
       31 GETTABLEKS                       R6 R0 K2 ["_connections"]
       33 SETTABLE                         R5 R6 R3
       34 NEWCLOSURE                       R6 P1
       35 CAPTURE                          VAL R5
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R3
       38 RETURN                           R6 1

PROTO_18:
        0 PREPVARARGS                      3
        1 GETUPVAL                         R3 0
        2 NAMECALL                         R3 R3 K0 ["_isFocusedDM"]
        4 CALL                             R3 1 1
        5 JUMPIF                           R3 ; [+13]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["_logger"]
        9 LOADK                            R6 K2 ["skipping executer invoke callback %* in unfocused DM"]
       10 GETUPVAL                         R8 1
       11 NAMECALL                         R6 R6 K3 ["format"]
       13 CALL                             R6 2 1
       14 MOVE                             R5 R6
       15 NAMECALL                         R3 R3 K4 ["log"]
       17 CALL                             R3 2 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K1 ["_logger"]
       22 LOADK                            R6 K5 ["received invoke Executer %*"]
       23 GETUPVAL                         R8 1
       24 NAMECALL                         R6 R6 K3 ["format"]
       26 CALL                             R6 2 1
       27 MOVE                             R5 R6
       28 NAMECALL                         R3 R3 K4 ["log"]
       30 CALL                             R3 2 0
       31 LOADK                            R4 K6 ["%*_%*_ToRequester"]
       32 GETUPVAL                         R6 2
       33 GETUPVAL                         R7 1
       34 NAMECALL                         R4 R4 K3 ["format"]
       36 CALL                             R4 3 1
       37 MOVE                             R3 R4
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R4 R4 K7 ["_plugin"]
       41 MOVE                             R6 R3
       42 NEWTABLE                         R8 0 2
       44 LOADK                            R9 K8 ["SUCCESS"]
       45 MOVE                             R10 R0
       46 SETLIST                          R8 R9 2 [1]
       48 FASTCALL1                        TABLE_UNPACK R8 ; [+2]
       49 GETIMPORT                        R7 K11 [table.unpack]
       51 CALL                             R7 1 -1
       52 NAMECALL                         R4 R4 K12 ["Invoke"]
       54 CALL                             R4 -1 0
       55 NEWTABLE                         R4 0 1
       57 GETIMPORT                        R5 K14 [pcall]
       59 GETUPVAL                         R6 3
       60 MOVE                             R7 R2
       61 GETVARARGS                       R8 -1
       62 CALL                             R5 -1 -1
       63 SETLIST                          R4 R5 -1 [1]
       65 GETUPVAL                         R5 0
       66 GETTABLEKS                       R5 R5 K1 ["_logger"]
       68 LOADK                            R8 K15 ["sending invoke Requester %* with args: %*"]
       69 GETUPVAL                         R10 1
       70 GETUPVAL                         R11 4
       71 MOVE                             R13 R4
       72 NAMECALL                         R11 R11 K16 ["JSONEncode"]
       74 CALL                             R11 2 1
       75 NAMECALL                         R8 R8 K3 ["format"]
       77 CALL                             R8 3 1
       78 MOVE                             R7 R8
       79 NAMECALL                         R5 R5 K4 ["log"]
       81 CALL                             R5 2 0
       82 GETUPVAL                         R5 0
       83 GETTABLEKS                       R5 R5 K7 ["_plugin"]
       85 MOVE                             R7 R3
       86 MOVE                             R8 R0
       87 FASTCALL1                        TABLE_UNPACK R4 ; [+3]
       88 MOVE                             R10 R4
       89 GETIMPORT                        R9 K11 [table.unpack]
       91 CALL                             R9 1 -1
       92 NAMECALL                         R5 R5 K12 ["Invoke"]
       94 CALL                             R5 -1 0
       95 RETURN                           R0 0

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
       22 GETTABLEKS                       R5 R0 K6 ["_plugin"]
       24 MOVE                             R7 R4
       25 NEWCLOSURE                       R8 P0
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R3
       30 CAPTURE                          UPVAL U0
       31 NAMECALL                         R5 R5 K7 ["OnInvoke"]
       33 CALL                             R5 3 1
       34 GETTABLEKS                       R6 R0 K2 ["_connections"]
       36 SETTABLE                         R5 R6 R4
       37 NEWCLOSURE                       R6 P1
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R4
       41 RETURN                           R6 1

PROTO_21:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 GETVARARGS                       R5 -1
        5 NAMECALL                         R1 R1 K0 ["InvokeGuestAsync"]
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1

PROTO_22:
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

PROTO_23:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 GETVARARGS                       R5 -1
        5 NAMECALL                         R1 R1 K0 ["InvokeHostAsync"]
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1

PROTO_24:
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

PROTO_25:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETVARARGS                       R1 -1
        4 SETLIST                          R0 R1 -1 [1]
        6 SETUPVAL                         R0 0
        7 GETIMPORT                        R0 K2 [coroutine.status]
        9 GETUPVAL                         R1 1
       10 CALL                             R0 1 1
       11 JUMPIFNOTEQKS                    R0 K3 ["suspended"] ; [+5]
       13 GETIMPORT                        R0 K6 [task.spawn]
       15 GETUPVAL                         R1 1
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETIMPORT                        R0 K1 [warn]
        5 LOADK                            R2 K2 ["Infinite yield possible on '%*'"]
        6 GETUPVAL                         R4 1
        7 NAMECALL                         R2 R2 K3 ["format"]
        9 CALL                             R2 2 1
       10 MOVE                             R1 R2
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_logger"]
        3 LOADK                            R3 K1 ["sending invoke Executer %* with args: %*"]
        4 GETUPVAL                         R5 1
        5 GETUPVAL                         R6 2
        6 GETUPVAL                         R8 3
        7 NAMECALL                         R6 R6 K2 ["JSONEncode"]
        9 CALL                             R6 2 1
       10 NAMECALL                         R3 R3 K3 ["format"]
       12 CALL                             R3 3 1
       13 MOVE                             R2 R3
       14 NAMECALL                         R0 R0 K4 ["log"]
       16 CALL                             R0 2 0
       17 GETUPVAL                         R0 0
       18 GETTABLEKS                       R0 R0 K5 ["_plugin"]
       20 LOADK                            R3 K6 ["%*_ToExecuter"]
       21 GETUPVAL                         R5 4
       22 NAMECALL                         R3 R3 K3 ["format"]
       24 CALL                             R3 2 1
       25 MOVE                             R2 R3
       26 GETUPVAL                         R4 3
       27 FASTCALL1                        TABLE_UNPACK R4 ; [+2]
       28 GETIMPORT                        R3 K9 [table.unpack]
       30 CALL                             R3 1 -1
       31 NAMECALL                         R0 R0 K10 ["Invoke"]
       33 CALL                             R0 -1 0
       34 RETURN                           R0 0

PROTO_28:
        0 PREPVARARGS                      4
        1 LOADK                            R5 K0 ["%*_%*"]
        2 MOVE                             R7 R1
        3 MOVE                             R8 R2
        4 NAMECALL                         R5 R5 K1 ["format"]
        6 CALL                             R5 3 1
        7 MOVE                             R4 R5
        8 GETTABLEKS                       R5 R0 K2 ["_invokeCounter"]
       10 ADDK                             R5 R5 K3 [1]
       11 SETTABLEKS                       R5 R0 K2 ["_invokeCounter"]
       13 GETTABLEKS                       R6 R0 K2 ["_invokeCounter"]
       15 FASTCALL1                        TOSTRING R6 ; [+2]
       16 GETIMPORT                        R5 K5 [tostring]
       18 CALL                             R5 1 1
       19 GETIMPORT                        R6 K8 [coroutine.running]
       21 CALL                             R6 0 1
       22 LOADNIL                          R7
       23 GETTABLEKS                       R8 R0 K9 ["_invokeThreads"]
       25 NEWCLOSURE                       R9 P0
       26 CAPTURE                          REF R7
       27 CAPTURE                          VAL R6
       28 SETTABLE                         R9 R8 R5
       29 GETTABLEKS                       R8 R0 K10 ["_infiniteYieldThreads"]
       31 GETIMPORT                        R9 K13 [task.delay]
       33 LOADN                            R10 5
       34 NEWCLOSURE                       R11 P1
       35 CAPTURE                          REF R7
       36 CAPTURE                          VAL R2
       37 CALL                             R9 2 1
       38 SETTABLE                         R9 R8 R5
       39 NEWTABLE                         R8 0 3
       41 MOVE                             R9 R5
       42 MOVE                             R10 R3
       43 LOADNIL                          R11
       44 GETVARARGS                       R12 -1
       45 SETLIST                          R8 R9 -1 [1]
       47 GETIMPORT                        R9 K15 [task.spawn]
       49 NEWCLOSURE                       R10 P2
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R2
       52 CAPTURE                          UPVAL U0
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R4
       55 CALL                             R9 1 0
       56 JUMPIF                           R7 ; [+3]
       57 GETIMPORT                        R9 K17 [coroutine.yield]
       59 CALL                             R9 0 0
       60 GETTABLEKS                       R9 R0 K18 ["_logger"]
       62 LOADK                            R12 K19 ["received invoke Requester %*"]
       63 MOVE                             R14 R2
       64 NAMECALL                         R12 R12 K1 ["format"]
       66 CALL                             R12 2 1
       67 MOVE                             R11 R12
       68 NAMECALL                         R9 R9 K20 ["log"]
       70 CALL                             R9 2 0
       71 GETIMPORT                        R9 K23 [table.remove]
       73 MOVE                             R10 R7
       74 LOADN                            R11 1
       75 CALL                             R9 2 1
       76 JUMPIF                           R9 ; [+4]
       77 GETIMPORT                        R10 K25 [error]
       79 GETTABLEN                        R11 R7 1
       80 CALL                             R10 1 0
       81 FASTCALL1                        TABLE_UNPACK R7 ; [+3]
       82 MOVE                             R11 R7
       83 GETIMPORT                        R10 K27 [table.unpack]
       85 CALL                             R10 1 -1
       86 CLOSEUPVALS                      R7
       87 RETURN                           R10 -1

PROTO_29:
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

PROTO_30:
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

PROTO_31:
        0 GETTABLEKS                       R1 R0 K0 ["_connections"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 NAMECALL                         R6 R5 K1 ["Disconnect"]
        7 CALL                             R6 1 0
        8 FORGLOOP                         R1 2 ; [-4]
       10 GETIMPORT                        R1 K4 [table.clear]
       12 GETTABLEKS                       R2 R0 K0 ["_connections"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

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
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R4
       30 SETTABLEKS                       R5 R4 K14 ["new"]
       32 DUPCLOSURE                       R5 K15 [PROTO_1]
       33 SETTABLEKS                       R5 R4 K16 ["IsGuest"]
       35 DUPCLOSURE                       R5 K17 [PROTO_2]
       36 SETTABLEKS                       R5 R4 K18 ["IsHost"]
       38 DUPCLOSURE                       R5 K19 [PROTO_3]
       39 SETTABLEKS                       R5 R4 K20 ["_isFocusedDM"]
       41 DUPCLOSURE                       R5 K21 [PROTO_6]
       42 SETTABLEKS                       R5 R4 K22 ["_connectEvent"]
       44 DUPCLOSURE                       R5 K23 [PROTO_8]
       45 CAPTURE                          VAL R3
       46 SETTABLEKS                       R5 R4 K24 ["OnGuestEvent"]
       48 DUPCLOSURE                       R5 K25 [PROTO_10]
       49 CAPTURE                          VAL R3
       50 SETTABLEKS                       R5 R4 K26 ["OnHostEvent"]
       52 DUPCLOSURE                       R5 K27 [PROTO_11]
       53 CAPTURE                          VAL R1
       54 SETTABLEKS                       R5 R4 K28 ["_doFire"]
       56 DUPCLOSURE                       R5 K29 [PROTO_12]
       57 CAPTURE                          VAL R3
       58 SETTABLEKS                       R5 R4 K30 ["FireGuest"]
       60 DUPCLOSURE                       R5 K31 [PROTO_13]
       61 CAPTURE                          VAL R3
       62 SETTABLEKS                       R5 R4 K32 ["FireHost"]
       64 DUPCLOSURE                       R5 K33 [PROTO_17]
       65 SETTABLEKS                       R5 R4 K34 ["_connectInvokeRequester"]
       67 DUPCLOSURE                       R5 K35 [PROTO_20]
       68 CAPTURE                          VAL R1
       69 SETTABLEKS                       R5 R4 K36 ["_connectInvokeExecuter"]
       71 DUPCLOSURE                       R5 K37 [PROTO_22]
       72 CAPTURE                          VAL R3
       73 SETTABLEKS                       R5 R4 K38 ["OnGuestInvokeAsync"]
       75 DUPCLOSURE                       R5 K39 [PROTO_24]
       76 CAPTURE                          VAL R3
       77 SETTABLEKS                       R5 R4 K40 ["OnHostInvokeAsync"]
       79 DUPCLOSURE                       R5 K41 [PROTO_28]
       80 CAPTURE                          VAL R1
       81 SETTABLEKS                       R5 R4 K42 ["_doInvoke"]
       83 DUPCLOSURE                       R5 K43 [PROTO_29]
       84 CAPTURE                          VAL R3
       85 SETTABLEKS                       R5 R4 K44 ["InvokeGuestAsync"]
       87 DUPCLOSURE                       R5 K45 [PROTO_30]
       88 CAPTURE                          VAL R3
       89 SETTABLEKS                       R5 R4 K46 ["InvokeHostAsync"]
       91 DUPCLOSURE                       R5 K47 [PROTO_31]
       92 SETTABLEKS                       R5 R4 K48 ["Destroy"]
       94 RETURN                           R4 1
