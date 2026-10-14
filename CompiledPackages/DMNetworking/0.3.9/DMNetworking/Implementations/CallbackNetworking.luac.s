PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["isGuest"]
        2 GETTABLEKS                       R4 R0 K1 ["isHost"]
        4 JUMPIFEQ                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       10 LOADK                            R3 K2 ["DM must be a shared DM"]
       11 GETIMPORT                        R1 K4 [assert]
       13 CALL                             R1 2 0
       14 NEWTABLE                         R1 4 0
       16 LOADK                            R2 K5 ["Callback"]
       17 SETTABLEKS                       R2 R1 K6 ["_type"]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K7 ["Logger"]
       22 GETTABLEKS                       R2 R2 K8 ["new"]
       24 LOADK                            R3 K9 ["[Networking] [%*]"]
       25 GETTABLEKS                       R5 R1 K6 ["_type"]
       27 NAMECALL                         R3 R3 K10 ["format"]
       29 CALL                             R3 2 1
       30 CALL                             R2 1 1
       31 SETTABLEKS                       R2 R1 K11 ["_logger"]
       33 NEWTABLE                         R2 0 0
       35 SETTABLEKS                       R2 R1 K12 ["_eventCallbacks"]
       37 NEWTABLE                         R2 0 0
       39 SETTABLEKS                       R2 R1 K13 ["_invokeCallbacks"]
       41 GETUPVAL                         R4 1
       42 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       44 MOVE                             R3 R1
       45 GETIMPORT                        R2 K15 [setmetatable]
       47 CALL                             R2 2 0
       48 RETURN                           R1 1

PROTO_1:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_2:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_3:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["_logger"]
        4 LOADK                            R3 K1 ["received event %*"]
        5 GETUPVAL                         R5 1
        6 NAMECALL                         R3 R3 K2 ["format"]
        8 CALL                             R3 2 1
        9 NAMECALL                         R1 R1 K3 ["log"]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 2
       13 MOVE                             R2 R0
       14 GETVARARGS                       R3 -1
       15 CALL                             R1 -1 0
       16 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_eventCallbacks"]
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 SETTABLE                         R2 R0 R1
        6 RETURN                           R0 0

PROTO_5:
        0 LOADK                            R4 K0 ["%*_%*"]
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 NAMECALL                         R4 R4 K1 ["format"]
        5 CALL                             R4 3 1
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R3
       10 GETTABLEKS                       R6 R0 K2 ["_eventCallbacks"]
       12 SETTABLE                         R5 R6 R4
       13 NEWCLOSURE                       R6 P1
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R4
       16 RETURN                           R6 1

PROTO_6:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 GETVARARGS                       R5 -1
        5 NAMECALL                         R1 R1 K0 ["FireGuest"]
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1

PROTO_7:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 MOVE                             R4 R3
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R7 R7 K0 ["TAG_GUEST_EVENT"]
        7 MOVE                             R8 R1
        8 MOVE                             R9 R2
        9 NAMECALL                         R5 R0 K1 ["_connectEvent"]
       11 CALL                             R5 4 -1
       12 RETURN                           R4 -1

PROTO_8:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 GETVARARGS                       R5 -1
        5 NAMECALL                         R1 R1 K0 ["FireHost"]
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1

PROTO_9:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 MOVE                             R4 R3
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R7 R7 K0 ["TAG_HOST_EVENT"]
        7 MOVE                             R8 R1
        8 MOVE                             R9 R2
        9 NAMECALL                         R5 R0 K1 ["_connectEvent"]
       11 CALL                             R5 4 -1
       12 RETURN                           R4 -1

PROTO_10:
        0 LOADK                            R0 K0 ["sending event %* with args: %*"]
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R3 1
        3 GETUPVAL                         R5 2
        4 NAMECALL                         R3 R3 K1 ["JSONEncode"]
        6 CALL                             R3 2 1
        7 NAMECALL                         R0 R0 K2 ["format"]
        9 CALL                             R0 3 1
       10 RETURN                           R0 1

PROTO_11:
        0 PREPVARARGS                      4
        1 LOADK                            R4 K0 ["%*_%*"]
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R4 R4 K1 ["format"]
        6 CALL                             R4 3 1
        7 GETTABLEKS                       R6 R0 K2 ["_eventCallbacks"]
        9 GETTABLE                         R5 R6 R4
       10 LOADK                            R8 K3 ["No event callback found for key: %*"]
       11 MOVE                             R10 R2
       12 NAMECALL                         R8 R8 K1 ["format"]
       14 CALL                             R8 2 1
       15 FASTCALL2                        ASSERT R5 R8 ; [+4]
       17 MOVE                             R7 R5
       18 GETIMPORT                        R6 K5 [assert]
       20 CALL                             R6 2 0
       21 NEWTABLE                         R6 0 0
       23 GETVARARGS                       R7 -1
       24 SETLIST                          R6 R7 -1 [1]
       26 GETTABLEKS                       R7 R0 K6 ["_logger"]
       28 NEWCLOSURE                       R9 P0
       29 CAPTURE                          VAL R2
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          VAL R6
       32 NAMECALL                         R7 R7 K7 ["log"]
       34 CALL                             R7 2 0
       35 GETIMPORT                        R7 K10 [task.spawn]
       37 MOVE                             R8 R5
       38 MOVE                             R9 R3
       39 GETVARARGS                       R10 -1
       40 CALL                             R7 -1 0
       41 RETURN                           R0 0

PROTO_12:
        0 PREPVARARGS                      3
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R5 R5 K0 ["TAG_GUEST_EVENT"]
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 GETVARARGS                       R8 -1
        7 NAMECALL                         R3 R0 K1 ["_doFire"]
        9 CALL                             R3 -1 0
       10 RETURN                           R0 0

PROTO_13:
        0 PREPVARARGS                      3
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R5 R5 K0 ["TAG_HOST_EVENT"]
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 GETVARARGS                       R8 -1
        7 NAMECALL                         R3 R0 K1 ["_doFire"]
        9 CALL                             R3 -1 0
       10 RETURN                           R0 0

PROTO_14:
        0 LOADK                            R0 K0 ["sending invoke Requester %* with args: %*"]
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R3 1
        3 GETUPVAL                         R5 2
        4 NAMECALL                         R3 R3 K1 ["JSONEncode"]
        6 CALL                             R3 2 1
        7 NAMECALL                         R0 R0 K2 ["format"]
        9 CALL                             R0 3 1
       10 RETURN                           R0 1

PROTO_15:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["_logger"]
        4 LOADK                            R3 K1 ["received invoke Executer %*"]
        5 GETUPVAL                         R5 1
        6 NAMECALL                         R3 R3 K2 ["format"]
        8 CALL                             R3 2 1
        9 NAMECALL                         R1 R1 K3 ["log"]
       11 CALL                             R1 2 0
       12 NEWTABLE                         R1 0 1
       14 GETIMPORT                        R2 K5 [pcall]
       16 GETUPVAL                         R3 2
       17 MOVE                             R4 R0
       18 GETVARARGS                       R5 -1
       19 CALL                             R2 -1 -1
       20 SETLIST                          R1 R2 -1 [1]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K0 ["_logger"]
       25 NEWCLOSURE                       R4 P0
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          VAL R1
       29 NAMECALL                         R2 R2 K3 ["log"]
       31 CALL                             R2 2 0
       32 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       33 MOVE                             R3 R1
       34 GETIMPORT                        R2 K8 [table.unpack]
       36 CALL                             R2 1 -1
       37 RETURN                           R2 -1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_invokeCallbacks"]
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 SETTABLE                         R2 R0 R1
        6 RETURN                           R0 0

PROTO_17:
        0 LOADK                            R4 K0 ["%*_%*"]
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 NAMECALL                         R4 R4 K1 ["format"]
        5 CALL                             R4 3 1
        6 GETTABLEKS                       R5 R0 K2 ["_invokeCallbacks"]
        8 NEWCLOSURE                       R6 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R3
       12 CAPTURE                          UPVAL U0
       13 SETTABLE                         R6 R5 R4
       14 NEWCLOSURE                       R5 P1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R4
       17 RETURN                           R5 1

PROTO_18:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 GETVARARGS                       R5 -1
        5 NAMECALL                         R1 R1 K0 ["InvokeGuestAsync"]
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1

PROTO_19:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 MOVE                             R4 R3
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R7 R7 K0 ["TAG_GUEST_INVOKE"]
        7 MOVE                             R8 R1
        8 MOVE                             R9 R2
        9 NAMECALL                         R5 R0 K1 ["_connectOnInvoke"]
       11 CALL                             R5 4 -1
       12 RETURN                           R4 -1

PROTO_20:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 GETVARARGS                       R5 -1
        5 NAMECALL                         R1 R1 K0 ["InvokeHostAsync"]
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1

PROTO_21:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 MOVE                             R4 R3
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R7 R7 K0 ["TAG_HOST_INVOKE"]
        7 MOVE                             R8 R1
        8 MOVE                             R9 R2
        9 NAMECALL                         R5 R0 K1 ["_connectOnInvoke"]
       11 CALL                             R5 4 -1
       12 RETURN                           R4 -1

PROTO_22:
        0 LOADK                            R0 K0 ["sending invoke Executer %* with args: %*"]
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R3 1
        3 GETUPVAL                         R5 2
        4 NAMECALL                         R3 R3 K1 ["JSONEncode"]
        6 CALL                             R3 2 1
        7 NAMECALL                         R0 R0 K2 ["format"]
        9 CALL                             R0 3 1
       10 RETURN                           R0 1

PROTO_23:
        0 PREPVARARGS                      4
        1 LOADK                            R4 K0 ["%*_%*"]
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R4 R4 K1 ["format"]
        6 CALL                             R4 3 1
        7 GETTABLEKS                       R6 R0 K2 ["_invokeCallbacks"]
        9 GETTABLE                         R5 R6 R4
       10 LOADK                            R8 K3 ["No invoke callback found for key: %*"]
       11 MOVE                             R10 R2
       12 NAMECALL                         R8 R8 K1 ["format"]
       14 CALL                             R8 2 1
       15 FASTCALL2                        ASSERT R5 R8 ; [+4]
       17 MOVE                             R7 R5
       18 GETIMPORT                        R6 K5 [assert]
       20 CALL                             R6 2 0
       21 NEWTABLE                         R6 0 0
       23 GETVARARGS                       R7 -1
       24 SETLIST                          R6 R7 -1 [1]
       26 GETTABLEKS                       R7 R0 K6 ["_logger"]
       28 NEWCLOSURE                       R9 P0
       29 CAPTURE                          VAL R2
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          VAL R6
       32 NAMECALL                         R7 R7 K7 ["log"]
       34 CALL                             R7 2 0
       35 NEWTABLE                         R7 0 1
       37 MOVE                             R8 R5
       38 MOVE                             R9 R3
       39 GETVARARGS                       R10 -1
       40 CALL                             R8 -1 -1
       41 SETLIST                          R7 R8 -1 [1]
       43 GETTABLEKS                       R8 R0 K6 ["_logger"]
       45 LOADK                            R10 K8 ["received invoke Requester %*"]
       46 MOVE                             R12 R2
       47 NAMECALL                         R10 R10 K1 ["format"]
       49 CALL                             R10 2 1
       50 NAMECALL                         R8 R8 K7 ["log"]
       52 CALL                             R8 2 0
       53 GETTABLEN                        R8 R7 1
       54 JUMPIF                           R8 ; [+5]
       55 GETIMPORT                        R8 K10 [error]
       57 GETTABLEN                        R9 R7 2
       58 LOADN                            R10 0
       59 CALL                             R8 2 0
       60 FASTCALL2K                       TABLE_UNPACK R7 K11 ; [+5]
       62 MOVE                             R9 R7
       63 LOADK                            R10 K11 [2]
       64 GETIMPORT                        R8 K14 [table.unpack]
       66 CALL                             R8 2 -1
       67 RETURN                           R8 -1

PROTO_24:
        0 PREPVARARGS                      3
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R5 R5 K0 ["TAG_GUEST_INVOKE"]
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 GETVARARGS                       R8 -1
        7 NAMECALL                         R3 R0 K1 ["_doInvoke"]
        9 CALL                             R3 -1 -1
       10 RETURN                           R3 -1

PROTO_25:
        0 PREPVARARGS                      3
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R5 R5 K0 ["TAG_HOST_INVOKE"]
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 GETVARARGS                       R8 -1
        7 NAMECALL                         R3 R0 K1 ["_doInvoke"]
        9 CALL                             R3 -1 -1
       10 RETURN                           R3 -1

PROTO_26:
        0 GETIMPORT                        R1 K2 [table.clear]
        2 GETTABLEKS                       R2 R0 K3 ["_eventCallbacks"]
        4 CALL                             R1 1 0
        5 GETIMPORT                        R1 K2 [table.clear]
        7 GETTABLEKS                       R2 R0 K4 ["_invokeCallbacks"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

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
       38 DUPCLOSURE                       R5 K19 [PROTO_5]
       39 SETTABLEKS                       R5 R4 K20 ["_connectEvent"]
       41 DUPCLOSURE                       R5 K21 [PROTO_7]
       42 CAPTURE                          VAL R3
       43 SETTABLEKS                       R5 R4 K22 ["OnGuestEvent"]
       45 DUPCLOSURE                       R5 K23 [PROTO_9]
       46 CAPTURE                          VAL R3
       47 SETTABLEKS                       R5 R4 K24 ["OnHostEvent"]
       49 DUPCLOSURE                       R5 K25 [PROTO_11]
       50 CAPTURE                          VAL R1
       51 SETTABLEKS                       R5 R4 K26 ["_doFire"]
       53 DUPCLOSURE                       R5 K27 [PROTO_12]
       54 CAPTURE                          VAL R3
       55 SETTABLEKS                       R5 R4 K28 ["FireGuest"]
       57 DUPCLOSURE                       R5 K29 [PROTO_13]
       58 CAPTURE                          VAL R3
       59 SETTABLEKS                       R5 R4 K30 ["FireHost"]
       61 DUPCLOSURE                       R5 K31 [PROTO_17]
       62 CAPTURE                          VAL R1
       63 SETTABLEKS                       R5 R4 K32 ["_connectOnInvoke"]
       65 DUPCLOSURE                       R5 K33 [PROTO_19]
       66 CAPTURE                          VAL R3
       67 SETTABLEKS                       R5 R4 K34 ["OnGuestInvokeAsync"]
       69 DUPCLOSURE                       R5 K35 [PROTO_21]
       70 CAPTURE                          VAL R3
       71 SETTABLEKS                       R5 R4 K36 ["OnHostInvokeAsync"]
       73 DUPCLOSURE                       R5 K37 [PROTO_23]
       74 CAPTURE                          VAL R1
       75 SETTABLEKS                       R5 R4 K38 ["_doInvoke"]
       77 DUPCLOSURE                       R5 K39 [PROTO_24]
       78 CAPTURE                          VAL R3
       79 SETTABLEKS                       R5 R4 K40 ["InvokeGuestAsync"]
       81 DUPCLOSURE                       R5 K41 [PROTO_25]
       82 CAPTURE                          VAL R3
       83 SETTABLEKS                       R5 R4 K42 ["InvokeHostAsync"]
       85 DUPCLOSURE                       R5 K43 [PROTO_26]
       86 SETTABLEKS                       R5 R4 K44 ["Destroy"]
       88 RETURN                           R4 1
