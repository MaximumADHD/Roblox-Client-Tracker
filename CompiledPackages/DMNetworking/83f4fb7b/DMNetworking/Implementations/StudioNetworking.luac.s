PROTO_0:
        0 JUMPIFNOT                        R0 ; [+7]
        1 LOADK                            R2 K0 ["\"%*\" "]
        2 MOVE                             R4 R0
        3 NAMECALL                         R2 R2 K1 ["format"]
        5 CALL                             R2 2 1
        6 MOVE                             R1 R2
        7 JUMPIF                           R1 ; [+1]
        8 LOADK                            R1 K2 [""]
        9 RETURN                           R1 1

PROTO_1:
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
       55 NEWTABLE                         R2 0 0
       57 SETTABLEKS                       R2 R1 K21 ["_connections"]
       59 NEWTABLE                         R2 0 0
       61 SETTABLEKS                       R2 R1 K22 ["_invokeThreads"]
       63 NEWTABLE                         R2 0 0
       65 SETTABLEKS                       R2 R1 K23 ["_infiniteYieldThreads"]
       67 NEWTABLE                         R2 0 0
       69 SETTABLEKS                       R2 R1 K24 ["_pendingResponses"]
       71 LOADN                            R2 0
       72 SETTABLEKS                       R2 R1 K25 ["_invokeCounter"]
       74 GETUPVAL                         R4 1
       75 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       77 MOVE                             R3 R1
       78 GETIMPORT                        R2 K27 [setmetatable]
       80 CALL                             R2 2 0
       81 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_isGuest"]
        2 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_isHost"]
        2 RETURN                           R1 1

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["IsGuest"]
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+8]
        4 NAMECALL                         R1 R0 K1 ["IsHost"]
        6 CALL                             R1 1 1
        7 JUMPIFNOT                        R1 ; [+4]
        8 GETTABLEKS                       R1 R0 K2 ["_plugin"]
       10 GETTABLEKS                       R1 R1 K3 ["HostDataModelTypeIsCurrent"]
       12 RETURN                           R1 1

PROTO_5:
        0 LOADK                            R1 K0 ["skipping event %* in unfocused or untargeted DM: expected %*, got %*"]
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["_identity"]
        5 GETUPVAL                         R5 2
        6 NAMECALL                         R1 R1 K2 ["format"]
        8 CALL                             R1 4 1
        9 MOVE                             R0 R1
       10 RETURN                           R0 1

PROTO_6:
        0 PREPVARARGS                      1
        1 LOADB                            R1 0
        2 JUMPIFNOTEQKNIL                  R0 ; [+7]
        4 GETUPVAL                         R2 0
        5 NAMECALL                         R2 R2 K0 ["_isFocusedDM"]
        7 CALL                             R2 1 1
        8 MOVE                             R1 R2
        9 JUMP                             ; [+7]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K1 ["_identity"]
       13 JUMPIFEQ                         R0 R2 ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 JUMPIF                           R1 ; [+11]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K2 ["_logger"]
       21 NEWCLOSURE                       R4 P0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          VAL R0
       25 NAMECALL                         R2 R2 K3 ["log"]
       27 CALL                             R2 2 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R2 R2 K2 ["_logger"]
       32 LOADK                            R5 K4 ["received event %*"]
       33 GETUPVAL                         R7 1
       34 NAMECALL                         R5 R5 K5 ["format"]
       36 CALL                             R5 2 1
       37 MOVE                             R4 R5
       38 NAMECALL                         R2 R2 K3 ["log"]
       40 CALL                             R2 2 0
       41 GETUPVAL                         R2 2
       42 MOVE                             R3 R0
       43 GETVARARGS                       R4 -1
       44 CALL                             R2 -1 0
       45 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
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

PROTO_9:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 GETVARARGS                       R5 -1
        5 NAMECALL                         R1 R1 K0 ["FireGuest"]
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1

PROTO_10:
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

PROTO_11:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 GETVARARGS                       R5 -1
        5 NAMECALL                         R1 R1 K0 ["FireHost"]
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1

PROTO_12:
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

PROTO_13:
        0 LOADK                            R1 K0 ["sending event %* with args: %*"]
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R6 2
        4 NAMECALL                         R4 R4 K1 ["JSONEncode"]
        6 CALL                             R4 2 1
        7 NAMECALL                         R1 R1 K2 ["format"]
        9 CALL                             R1 3 1
       10 MOVE                             R0 R1
       11 RETURN                           R0 1

PROTO_14:
        0 PREPVARARGS                      4
        1 LOADK                            R5 K0 ["%*_%*"]
        2 MOVE                             R7 R1
        3 MOVE                             R8 R2
        4 NAMECALL                         R5 R5 K1 ["format"]
        6 CALL                             R5 3 1
        7 MOVE                             R4 R5
        8 NEWTABLE                         R5 0 0
       10 GETVARARGS                       R6 -1
       11 SETLIST                          R5 R6 -1 [1]
       13 GETTABLEKS                       R6 R0 K2 ["_logger"]
       15 NEWCLOSURE                       R8 P0
       16 CAPTURE                          VAL R2
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          VAL R5
       19 NAMECALL                         R6 R6 K3 ["log"]
       21 CALL                             R6 2 0
       22 GETTABLEKS                       R6 R0 K4 ["_plugin"]
       24 MOVE                             R8 R4
       25 MOVE                             R9 R3
       26 GETVARARGS                       R10 -1
       27 NAMECALL                         R6 R6 K5 ["Invoke"]
       29 CALL                             R6 -1 0
       30 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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

PROTO_18:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

PROTO_19:
        0 LOADK                            R1 K0 ["skipping requester invoke callback %* in unfocused or untargeted DM: expected %*, got %*"]
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["_identity"]
        5 GETUPVAL                         R5 2
        6 NAMECALL                         R1 R1 K2 ["format"]
        8 CALL                             R1 4 1
        9 MOVE                             R0 R1
       10 RETURN                           R0 1

PROTO_20:
        0 PREPVARARGS                      2
        1 LOADB                            R2 0
        2 JUMPIFNOTEQKNIL                  R0 ; [+7]
        4 GETUPVAL                         R3 0
        5 NAMECALL                         R3 R3 K0 ["_isFocusedDM"]
        7 CALL                             R3 1 1
        8 MOVE                             R2 R3
        9 JUMP                             ; [+7]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K1 ["_identity"]
       13 JUMPIFEQ                         R0 R3 ; [+2]
       15 LOADB                            R2 0 +1
       16 LOADB                            R2 1
       17 JUMPIF                           R2 ; [+11]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K2 ["_logger"]
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          VAL R0
       25 NAMECALL                         R3 R3 K3 ["log"]
       27 CALL                             R3 2 0
       28 RETURN                           R0 0
       29 JUMPIFNOTEQKS                    R1 K4 ["SUCCESS"] ; [+35]
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R3 R3 K2 ["_logger"]
       34 LOADK                            R6 K5 ["received success packet for invoke %*"]
       35 GETUPVAL                         R8 1
       36 NAMECALL                         R6 R6 K6 ["format"]
       38 CALL                             R6 2 1
       39 MOVE                             R5 R6
       40 NAMECALL                         R3 R3 K3 ["log"]
       42 CALL                             R3 2 0
       43 NEWTABLE                         R3 0 0
       45 GETVARARGS                       R4 -1
       46 SETLIST                          R3 R4 -1 [1]
       48 GETUPVAL                         R5 0
       49 GETTABLEKS                       R5 R5 K7 ["_infiniteYieldThreads"]
       51 GETTABLEN                        R6 R3 1
       52 GETTABLE                         R4 R5 R6
       53 JUMPIFNOT                        R4 ; [+10]
       54 GETUPVAL                         R5 0
       55 GETTABLEKS                       R5 R5 K7 ["_infiniteYieldThreads"]
       57 GETTABLEN                        R6 R3 1
       58 LOADNIL                          R7
       59 SETTABLE                         R7 R5 R6
       60 GETIMPORT                        R5 K10 [task.cancel]
       62 MOVE                             R6 R4
       63 CALL                             R5 1 0
       64 RETURN                           R0 0
       65 GETUPVAL                         R4 0
       66 GETTABLEKS                       R4 R4 K11 ["_invokeThreads"]
       68 GETTABLE                         R3 R4 R1
       69 JUMPIFNOT                        R3 ; [+8]
       70 GETUPVAL                         R4 0
       71 GETTABLEKS                       R4 R4 K11 ["_invokeThreads"]
       73 LOADNIL                          R5
       74 SETTABLE                         R5 R4 R1
       75 MOVE                             R4 R3
       76 GETVARARGS                       R5 -1
       77 CALL                             R4 -1 0
       78 RETURN                           R0 0

PROTO_21:
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

PROTO_22:
        0 LOADK                            R1 K0 ["skipping executer invoke callback %* in unfocused or untargeted DM: expected %*, got %*"]
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["_identity"]
        5 GETUPVAL                         R5 2
        6 NAMECALL                         R1 R1 K2 ["format"]
        8 CALL                             R1 4 1
        9 MOVE                             R0 R1
       10 RETURN                           R0 1

PROTO_23:
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

PROTO_24:
        0 PREPVARARGS                      3
        1 LOADB                            R3 0
        2 JUMPIFNOTEQKNIL                  R1 ; [+7]
        4 GETUPVAL                         R4 0
        5 NAMECALL                         R4 R4 K0 ["_isFocusedDM"]
        7 CALL                             R4 1 1
        8 MOVE                             R3 R4
        9 JUMP                             ; [+7]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K1 ["_identity"]
       13 JUMPIFEQ                         R1 R4 ; [+2]
       15 LOADB                            R3 0 +1
       16 LOADB                            R3 1
       17 JUMPIF                           R3 ; [+11]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K2 ["_logger"]
       21 NEWCLOSURE                       R6 P0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          VAL R1
       25 NAMECALL                         R4 R4 K3 ["log"]
       27 CALL                             R4 2 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K2 ["_logger"]
       32 LOADK                            R7 K4 ["received invoke Executer %*"]
       33 GETUPVAL                         R9 1
       34 NAMECALL                         R7 R7 K5 ["format"]
       36 CALL                             R7 2 1
       37 MOVE                             R6 R7
       38 NAMECALL                         R4 R4 K3 ["log"]
       40 CALL                             R4 2 0
       41 LOADK                            R5 K6 ["%*_%*_ToRequester"]
       42 GETUPVAL                         R7 2
       43 GETUPVAL                         R8 1
       44 NAMECALL                         R5 R5 K5 ["format"]
       46 CALL                             R5 3 1
       47 MOVE                             R4 R5
       48 ORK                              R5 R2 K7 [""]
       49 LOADK                            R7 K8 ["%*_%*_%*"]
       50 MOVE                             R9 R4
       51 MOVE                             R10 R5
       52 MOVE                             R11 R0
       53 NAMECALL                         R7 R7 K5 ["format"]
       55 CALL                             R7 4 1
       56 MOVE                             R6 R7
       57 GETUPVAL                         R7 0
       58 GETTABLEKS                       R7 R7 K9 ["_pendingResponses"]
       60 DUPTABLE                         R8 K13 [{"toRequesterKey", "fromIdentifier", "requestId"}]
       61 SETTABLEKS                       R4 R8 K10 ["toRequesterKey"]
       63 SETTABLEKS                       R2 R8 K11 ["fromIdentifier"]
       65 SETTABLEKS                       R0 R8 K12 ["requestId"]
       67 SETTABLE                         R8 R7 R6
       68 GETUPVAL                         R7 0
       69 GETTABLEKS                       R7 R7 K14 ["_plugin"]
       71 MOVE                             R9 R4
       72 MOVE                             R10 R2
       73 NEWTABLE                         R12 0 2
       75 LOADK                            R13 K15 ["SUCCESS"]
       76 MOVE                             R14 R0
       77 SETLIST                          R12 R13 2 [1]
       79 FASTCALL1                        TABLE_UNPACK R12 ; [+2]
       80 GETIMPORT                        R11 K18 [table.unpack]
       82 CALL                             R11 1 -1
       83 NAMECALL                         R7 R7 K19 ["Invoke"]
       85 CALL                             R7 -1 0
       86 NEWTABLE                         R7 0 1
       88 GETIMPORT                        R8 K21 [pcall]
       90 GETUPVAL                         R9 3
       91 MOVE                             R10 R2
       92 GETVARARGS                       R11 -1
       93 CALL                             R8 -1 -1
       94 SETLIST                          R7 R8 -1 [1]
       96 GETUPVAL                         R8 0
       97 GETTABLEKS                       R8 R8 K9 ["_pendingResponses"]
       99 LOADNIL                          R9
      100 SETTABLE                         R9 R8 R6
      101 GETUPVAL                         R8 0
      102 GETTABLEKS                       R8 R8 K2 ["_logger"]
      104 NEWCLOSURE                       R10 P1
      105 CAPTURE                          UPVAL U1
      106 CAPTURE                          UPVAL U4
      107 CAPTURE                          VAL R7
      108 NAMECALL                         R8 R8 K3 ["log"]
      110 CALL                             R8 2 0
      111 GETUPVAL                         R8 0
      112 GETTABLEKS                       R8 R8 K14 ["_plugin"]
      114 MOVE                             R10 R4
      115 MOVE                             R11 R2
      116 MOVE                             R12 R0
      117 FASTCALL1                        TABLE_UNPACK R7 ; [+3]
      118 MOVE                             R14 R7
      119 GETIMPORT                        R13 K18 [table.unpack]
      121 CALL                             R13 1 -1
      122 NAMECALL                         R8 R8 K19 ["Invoke"]
      124 CALL                             R8 -1 0
      125 RETURN                           R0 0

PROTO_25:
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

PROTO_26:
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

PROTO_27:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 GETVARARGS                       R5 -1
        5 NAMECALL                         R1 R1 K0 ["InvokeGuestAsync"]
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1

PROTO_28:
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

PROTO_29:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 GETVARARGS                       R5 -1
        5 NAMECALL                         R1 R1 K0 ["InvokeHostAsync"]
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1

PROTO_30:
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

PROTO_31:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 JUMPIFNOT                        R0 ; [+1]
        3 RETURN                           R0 0
        4 NEWTABLE                         R0 0 0
        6 GETVARARGS                       R1 -1
        7 SETLIST                          R0 R1 -1 [1]
        9 SETUPVAL                         R0 0
       10 GETIMPORT                        R0 K2 [coroutine.status]
       12 GETUPVAL                         R1 1
       13 CALL                             R0 1 1
       14 JUMPIFNOTEQKS                    R0 K3 ["suspended"] ; [+5]
       16 GETIMPORT                        R0 K6 [task.spawn]
       18 GETUPVAL                         R1 1
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 NEWTABLE                         R0 0 2
        5 LOADB                            R1 0
        6 LOADK                            R3 K0 ["Target %*is not reachable"]
        7 GETUPVAL                         R6 1
        8 JUMPIFNOT                        R6 ; [+7]
        9 LOADK                            R7 K1 ["\"%*\" "]
       10 MOVE                             R9 R6
       11 NAMECALL                         R7 R7 K2 ["format"]
       13 CALL                             R7 2 1
       14 MOVE                             R5 R7
       15 JUMPIF                           R5 ; [+1]
       16 LOADK                            R5 K3 [""]
       17 NAMECALL                         R3 R3 K2 ["format"]
       19 CALL                             R3 2 1
       20 MOVE                             R2 R3
       21 SETLIST                          R0 R1 2 [1]
       23 SETUPVAL                         R0 0
       24 GETUPVAL                         R0 2
       25 GETTABLEKS                       R0 R0 K4 ["_invokeThreads"]
       27 GETUPVAL                         R1 3
       28 LOADNIL                          R2
       29 SETTABLE                         R2 R0 R1
       30 GETUPVAL                         R0 2
       31 GETTABLEKS                       R0 R0 K5 ["_infiniteYieldThreads"]
       33 GETUPVAL                         R1 3
       34 LOADNIL                          R2
       35 SETTABLE                         R2 R0 R1
       36 GETIMPORT                        R0 K8 [coroutine.status]
       38 GETUPVAL                         R1 4
       39 CALL                             R0 1 1
       40 JUMPIFNOTEQKS                    R0 K9 ["suspended"] ; [+5]
       42 GETIMPORT                        R0 K12 [task.spawn]
       44 GETUPVAL                         R1 4
       45 CALL                             R0 1 0
       46 RETURN                           R0 0

PROTO_33:
        0 LOADK                            R1 K0 ["sending invoke Executer %* with args: %*"]
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R6 2
        4 NAMECALL                         R4 R4 K1 ["JSONEncode"]
        6 CALL                             R4 2 1
        7 NAMECALL                         R1 R1 K2 ["format"]
        9 CALL                             R1 3 1
       10 MOVE                             R0 R1
       11 RETURN                           R0 1

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_logger"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 NAMECALL                         R0 R0 K1 ["log"]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K2 ["_plugin"]
       13 LOADK                            R3 K3 ["%*_ToExecuter"]
       14 GETUPVAL                         R5 4
       15 NAMECALL                         R3 R3 K4 ["format"]
       17 CALL                             R3 2 1
       18 MOVE                             R2 R3
       19 GETUPVAL                         R4 3
       20 FASTCALL1                        TABLE_UNPACK R4 ; [+2]
       21 GETIMPORT                        R3 K7 [table.unpack]
       23 CALL                             R3 1 -1
       24 NAMECALL                         R0 R0 K8 ["Invoke"]
       26 CALL                             R0 -1 0
       27 RETURN                           R0 0

PROTO_35:
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
       33 GETTABLEKS                       R10 R0 K14 ["_unreachableTimeout"]
       35 NEWCLOSURE                       R11 P1
       36 CAPTURE                          REF R7
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R6
       41 CALL                             R9 2 1
       42 SETTABLE                         R9 R8 R5
       43 NEWTABLE                         R8 0 3
       45 MOVE                             R9 R5
       46 MOVE                             R10 R3
       47 GETTABLEKS                       R11 R0 K15 ["_identity"]
       49 GETVARARGS                       R12 -1
       50 SETLIST                          R8 R9 -1 [1]
       52 GETIMPORT                        R9 K17 [task.spawn]
       54 NEWCLOSURE                       R10 P2
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R2
       57 CAPTURE                          UPVAL U0
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R4
       60 CALL                             R9 1 0
       61 JUMPIF                           R7 ; [+3]
       62 GETIMPORT                        R9 K19 [coroutine.yield]
       64 CALL                             R9 0 0
       65 GETTABLEKS                       R9 R0 K20 ["_logger"]
       67 LOADK                            R12 K21 ["received invoke Requester %*"]
       68 MOVE                             R14 R2
       69 NAMECALL                         R12 R12 K1 ["format"]
       71 CALL                             R12 2 1
       72 MOVE                             R11 R12
       73 NAMECALL                         R9 R9 K22 ["log"]
       75 CALL                             R9 2 0
       76 GETIMPORT                        R9 K25 [table.remove]
       78 MOVE                             R10 R7
       79 LOADN                            R11 1
       80 CALL                             R9 2 1
       81 JUMPIF                           R9 ; [+5]
       82 GETIMPORT                        R10 K27 [error]
       84 GETTABLEN                        R11 R7 1
       85 LOADN                            R12 0
       86 CALL                             R10 2 0
       87 FASTCALL1                        TABLE_UNPACK R7 ; [+3]
       88 MOVE                             R11 R7
       89 GETIMPORT                        R10 K29 [table.unpack]
       91 CALL                             R10 1 -1
       92 CLOSEUPVALS                      R7
       93 RETURN                           R10 -1

PROTO_36:
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

PROTO_37:
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

PROTO_38:
        0 GETTABLEKS                       R1 R0 K0 ["_pendingResponses"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 GETTABLEKS                       R6 R0 K1 ["_plugin"]
        7 GETTABLEKS                       R8 R5 K2 ["toRequesterKey"]
        9 GETTABLEKS                       R9 R5 K3 ["fromIdentifier"]
       11 GETTABLEKS                       R10 R5 K4 ["requestId"]
       13 LOADB                            R11 0
       14 LOADK                            R13 K5 ["Target %*is Closed"]
       15 GETTABLEKS                       R16 R0 K6 ["_identity"]
       17 JUMPIFNOT                        R16 ; [+7]
       18 LOADK                            R17 K7 ["\"%*\" "]
       19 MOVE                             R19 R16
       20 NAMECALL                         R17 R17 K8 ["format"]
       22 CALL                             R17 2 1
       23 MOVE                             R15 R17
       24 JUMPIF                           R15 ; [+1]
       25 LOADK                            R15 K9 [""]
       26 NAMECALL                         R13 R13 K8 ["format"]
       28 CALL                             R13 2 1
       29 MOVE                             R12 R13
       30 NAMECALL                         R6 R6 K10 ["Invoke"]
       32 CALL                             R6 6 0
       33 FORGLOOP                         R1 2 ; [-29]
       35 GETIMPORT                        R1 K13 [table.clear]
       37 GETTABLEKS                       R2 R0 K0 ["_pendingResponses"]
       39 CALL                             R1 1 0
       40 RETURN                           R0 0

PROTO_39:
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
       22 MOVE                             R6 R5
       23 LOADB                            R7 0
       24 LOADK                            R9 K8 ["Self %*is Closed"]
       25 GETTABLEKS                       R12 R0 K9 ["_identity"]
       27 JUMPIFNOT                        R12 ; [+7]
       28 LOADK                            R13 K10 ["\"%*\" "]
       29 MOVE                             R15 R12
       30 NAMECALL                         R13 R13 K11 ["format"]
       32 CALL                             R13 2 1
       33 MOVE                             R11 R13
       34 JUMPIF                           R11 ; [+1]
       35 LOADK                            R11 K12 [""]
       36 NAMECALL                         R9 R9 K11 ["format"]
       38 CALL                             R9 2 1
       39 MOVE                             R8 R9
       40 CALL                             R6 2 0
       41 FORGLOOP                         R1 2 ; [-20]
       43 GETIMPORT                        R1 K6 [table.clear]
       45 GETTABLEKS                       R2 R0 K7 ["_invokeThreads"]
       47 CALL                             R1 1 0
       48 RETURN                           R0 0

PROTO_40:
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
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R4
       31 SETTABLEKS                       R6 R4 K15 ["new"]
       33 DUPCLOSURE                       R6 K16 [PROTO_2]
       34 SETTABLEKS                       R6 R4 K17 ["IsGuest"]
       36 DUPCLOSURE                       R6 K18 [PROTO_3]
       37 SETTABLEKS                       R6 R4 K19 ["IsHost"]
       39 DUPCLOSURE                       R6 K20 [PROTO_4]
       40 SETTABLEKS                       R6 R4 K21 ["_isFocusedDM"]
       42 DUPCLOSURE                       R6 K22 [PROTO_8]
       43 SETTABLEKS                       R6 R4 K23 ["_connectEvent"]
       45 DUPCLOSURE                       R6 K24 [PROTO_10]
       46 CAPTURE                          VAL R3
       47 SETTABLEKS                       R6 R4 K25 ["OnGuestEvent"]
       49 DUPCLOSURE                       R6 K26 [PROTO_12]
       50 CAPTURE                          VAL R3
       51 SETTABLEKS                       R6 R4 K27 ["OnHostEvent"]
       53 DUPCLOSURE                       R6 K28 [PROTO_14]
       54 CAPTURE                          VAL R1
       55 SETTABLEKS                       R6 R4 K29 ["_doFire"]
       57 DUPCLOSURE                       R6 K30 [PROTO_15]
       58 CAPTURE                          VAL R3
       59 SETTABLEKS                       R6 R4 K31 ["FireGuest"]
       61 DUPCLOSURE                       R6 K32 [PROTO_16]
       62 CAPTURE                          VAL R3
       63 SETTABLEKS                       R6 R4 K33 ["FireHost"]
       65 DUPCLOSURE                       R6 K34 [PROTO_21]
       66 SETTABLEKS                       R6 R4 K35 ["_connectInvokeRequester"]
       68 DUPCLOSURE                       R6 K36 [PROTO_26]
       69 CAPTURE                          VAL R1
       70 SETTABLEKS                       R6 R4 K37 ["_connectInvokeExecuter"]
       72 DUPCLOSURE                       R6 K38 [PROTO_28]
       73 CAPTURE                          VAL R3
       74 SETTABLEKS                       R6 R4 K39 ["OnGuestInvokeAsync"]
       76 DUPCLOSURE                       R6 K40 [PROTO_30]
       77 CAPTURE                          VAL R3
       78 SETTABLEKS                       R6 R4 K41 ["OnHostInvokeAsync"]
       80 DUPCLOSURE                       R6 K42 [PROTO_35]
       81 CAPTURE                          VAL R1
       82 SETTABLEKS                       R6 R4 K43 ["_doInvoke"]
       84 DUPCLOSURE                       R6 K44 [PROTO_36]
       85 CAPTURE                          VAL R3
       86 SETTABLEKS                       R6 R4 K45 ["InvokeGuestAsync"]
       88 DUPCLOSURE                       R6 K46 [PROTO_37]
       89 CAPTURE                          VAL R3
       90 SETTABLEKS                       R6 R4 K47 ["InvokeHostAsync"]
       92 DUPCLOSURE                       R6 K48 [PROTO_38]
       93 SETTABLEKS                       R6 R4 K49 ["_closePendingResponses"]
       95 DUPCLOSURE                       R6 K50 [PROTO_39]
       96 SETTABLEKS                       R6 R4 K51 ["_closePendingRequests"]
       98 DUPCLOSURE                       R6 K52 [PROTO_40]
       99 SETTABLEKS                       R6 R4 K53 ["Destroy"]
      101 RETURN                           R4 1
