PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["isUIDM"]
        2 GETTABLEKS                       R4 R0 K1 ["isEditableDM"]
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
        5 NAMECALL                         R1 R1 K0 ["FireUIDM"]
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1

PROTO_7:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 MOVE                             R4 R3
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R7 R7 K0 ["TAG_UI_EVENT"]
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
        5 NAMECALL                         R1 R1 K0 ["FireEditableDM"]
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1

PROTO_9:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 MOVE                             R4 R3
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R7 R7 K0 ["TAG_EDITABLE_EVENT"]
        7 MOVE                             R8 R1
        8 MOVE                             R9 R2
        9 NAMECALL                         R5 R0 K1 ["_connectEvent"]
       11 CALL                             R5 4 -1
       12 RETURN                           R4 -1

PROTO_10:
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
       21 GETTABLEKS                       R6 R0 K6 ["_logger"]
       23 LOADK                            R8 K7 ["sending event %* with args: %*"]
       24 MOVE                             R10 R2
       25 GETUPVAL                         R11 0
       26 NEWTABLE                         R13 0 0
       28 GETVARARGS                       R14 -1
       29 SETLIST                          R13 R14 -1 [1]
       31 NAMECALL                         R11 R11 K8 ["JSONEncode"]
       33 CALL                             R11 2 1
       34 NAMECALL                         R8 R8 K1 ["format"]
       36 CALL                             R8 3 1
       37 NAMECALL                         R6 R6 K9 ["log"]
       39 CALL                             R6 2 0
       40 GETIMPORT                        R6 K12 [task.spawn]
       42 MOVE                             R7 R5
       43 MOVE                             R8 R3
       44 GETVARARGS                       R9 -1
       45 CALL                             R6 -1 0
       46 RETURN                           R0 0

PROTO_11:
        0 PREPVARARGS                      3
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R5 R5 K0 ["TAG_UI_EVENT"]
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 GETVARARGS                       R8 -1
        7 NAMECALL                         R3 R0 K1 ["_doFire"]
        9 CALL                             R3 -1 0
       10 RETURN                           R0 0

PROTO_12:
        0 PREPVARARGS                      3
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R5 R5 K0 ["TAG_EDITABLE_EVENT"]
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 GETVARARGS                       R8 -1
        7 NAMECALL                         R3 R0 K1 ["_doFire"]
        9 CALL                             R3 -1 0
       10 RETURN                           R0 0

PROTO_13:
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
       25 LOADK                            R4 K6 ["sending invoke Requester %* with args: %*"]
       26 GETUPVAL                         R6 1
       27 GETUPVAL                         R7 3
       28 MOVE                             R9 R1
       29 NAMECALL                         R7 R7 K7 ["JSONEncode"]
       31 CALL                             R7 2 1
       32 NAMECALL                         R4 R4 K2 ["format"]
       34 CALL                             R4 3 1
       35 NAMECALL                         R2 R2 K3 ["log"]
       37 CALL                             R2 2 0
       38 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       39 MOVE                             R3 R1
       40 GETIMPORT                        R2 K10 [table.unpack]
       42 CALL                             R2 1 -1
       43 RETURN                           R2 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_invokeCallbacks"]
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 SETTABLE                         R2 R0 R1
        6 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 GETVARARGS                       R5 -1
        5 NAMECALL                         R1 R1 K0 ["InvokeUIDM"]
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1

PROTO_17:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 MOVE                             R4 R3
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R7 R7 K0 ["TAG_UI_INVOKE"]
        7 MOVE                             R8 R1
        8 MOVE                             R9 R2
        9 NAMECALL                         R5 R0 K1 ["_connectOnInvoke"]
       11 CALL                             R5 4 -1
       12 RETURN                           R4 -1

PROTO_18:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 GETVARARGS                       R5 -1
        5 NAMECALL                         R1 R1 K0 ["InvokeEditableDM"]
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1

PROTO_19:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 MOVE                             R4 R3
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R7 R7 K0 ["TAG_EDITABLE_INVOKE"]
        7 MOVE                             R8 R1
        8 MOVE                             R9 R2
        9 NAMECALL                         R5 R0 K1 ["_connectOnInvoke"]
       11 CALL                             R5 4 -1
       12 RETURN                           R4 -1

PROTO_20:
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
       21 GETTABLEKS                       R6 R0 K6 ["_logger"]
       23 LOADK                            R8 K7 ["sending invoke Executer %* with args: %*"]
       24 MOVE                             R10 R2
       25 GETUPVAL                         R11 0
       26 NEWTABLE                         R13 0 0
       28 GETVARARGS                       R14 -1
       29 SETLIST                          R13 R14 -1 [1]
       31 NAMECALL                         R11 R11 K8 ["JSONEncode"]
       33 CALL                             R11 2 1
       34 NAMECALL                         R8 R8 K1 ["format"]
       36 CALL                             R8 3 1
       37 NAMECALL                         R6 R6 K9 ["log"]
       39 CALL                             R6 2 0
       40 NEWTABLE                         R6 0 1
       42 MOVE                             R7 R5
       43 MOVE                             R8 R3
       44 GETVARARGS                       R9 -1
       45 CALL                             R7 -1 -1
       46 SETLIST                          R6 R7 -1 [1]
       48 GETTABLEKS                       R7 R0 K6 ["_logger"]
       50 LOADK                            R9 K10 ["received invoke Requester %*"]
       51 MOVE                             R11 R2
       52 NAMECALL                         R9 R9 K1 ["format"]
       54 CALL                             R9 2 1
       55 NAMECALL                         R7 R7 K9 ["log"]
       57 CALL                             R7 2 0
       58 GETIMPORT                        R7 K13 [table.remove]
       60 MOVE                             R8 R6
       61 LOADN                            R9 1
       62 CALL                             R7 2 1
       63 JUMPIF                           R7 ; [+4]
       64 GETIMPORT                        R8 K15 [error]
       66 GETTABLEN                        R9 R6 1
       67 CALL                             R8 1 0
       68 FASTCALL1                        TABLE_UNPACK R6 ; [+3]
       69 MOVE                             R9 R6
       70 GETIMPORT                        R8 K17 [table.unpack]
       72 CALL                             R8 1 -1
       73 RETURN                           R8 -1

PROTO_21:
        0 PREPVARARGS                      3
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R5 R5 K0 ["TAG_UI_INVOKE"]
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 GETVARARGS                       R8 -1
        7 NAMECALL                         R3 R0 K1 ["_doInvoke"]
        9 CALL                             R3 -1 -1
       10 RETURN                           R3 -1

PROTO_22:
        0 PREPVARARGS                      3
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R5 R5 K0 ["TAG_EDITABLE_INVOKE"]
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 GETVARARGS                       R8 -1
        7 NAMECALL                         R3 R0 K1 ["_doInvoke"]
        9 CALL                             R3 -1 -1
       10 RETURN                           R3 -1

PROTO_23:
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
       33 SETTABLEKS                       R5 R4 K16 ["IsUIDM"]
       35 DUPCLOSURE                       R5 K17 [PROTO_2]
       36 SETTABLEKS                       R5 R4 K18 ["IsEditableDM"]
       38 DUPCLOSURE                       R5 K19 [PROTO_5]
       39 SETTABLEKS                       R5 R4 K20 ["_connectEvent"]
       41 DUPCLOSURE                       R5 K21 [PROTO_7]
       42 CAPTURE                          VAL R3
       43 SETTABLEKS                       R5 R4 K22 ["OnUIDMEvent"]
       45 DUPCLOSURE                       R5 K23 [PROTO_9]
       46 CAPTURE                          VAL R3
       47 SETTABLEKS                       R5 R4 K24 ["OnEditableDMEvent"]
       49 DUPCLOSURE                       R5 K25 [PROTO_10]
       50 CAPTURE                          VAL R1
       51 SETTABLEKS                       R5 R4 K26 ["_doFire"]
       53 DUPCLOSURE                       R5 K27 [PROTO_11]
       54 CAPTURE                          VAL R3
       55 SETTABLEKS                       R5 R4 K28 ["FireUIDM"]
       57 DUPCLOSURE                       R5 K29 [PROTO_12]
       58 CAPTURE                          VAL R3
       59 SETTABLEKS                       R5 R4 K30 ["FireEditableDM"]
       61 DUPCLOSURE                       R5 K31 [PROTO_15]
       62 CAPTURE                          VAL R1
       63 SETTABLEKS                       R5 R4 K32 ["_connectOnInvoke"]
       65 DUPCLOSURE                       R5 K33 [PROTO_17]
       66 CAPTURE                          VAL R3
       67 SETTABLEKS                       R5 R4 K34 ["OnUIDMInvoke"]
       69 DUPCLOSURE                       R5 K35 [PROTO_19]
       70 CAPTURE                          VAL R3
       71 SETTABLEKS                       R5 R4 K36 ["OnEditableDMInvoke"]
       73 DUPCLOSURE                       R5 K37 [PROTO_20]
       74 CAPTURE                          VAL R1
       75 SETTABLEKS                       R5 R4 K38 ["_doInvoke"]
       77 DUPCLOSURE                       R5 K39 [PROTO_21]
       78 CAPTURE                          VAL R3
       79 SETTABLEKS                       R5 R4 K40 ["InvokeUIDM"]
       81 DUPCLOSURE                       R5 K41 [PROTO_22]
       82 CAPTURE                          VAL R3
       83 SETTABLEKS                       R5 R4 K42 ["InvokeEditableDM"]
       85 DUPCLOSURE                       R5 K43 [PROTO_23]
       86 SETTABLEKS                       R5 R4 K44 ["Destroy"]
       88 RETURN                           R4 1
