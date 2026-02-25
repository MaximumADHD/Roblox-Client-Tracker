PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["isUIDM"]
        2 GETTABLEKS                       R4 R0 K1 ["isEditableDM"]
        4 JUMPIFNOTEQ                      R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       10 LOADK                            R3 K2 ["DM must be either a UI DM or an Editable DM, not both"]
       11 GETIMPORT                        R1 K4 [assert]
       13 CALL                             R1 2 0
       14 NEWTABLE                         R1 8 0
       16 LOADK                            R2 K5 ["Studio"]
       17 SETTABLEKS                       R2 R1 K6 ["_type"]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R3 R4 K7 ["Logger"]
       22 GETTABLEKS                       R2 R3 K8 ["new"]
       24 LOADK                            R4 K9 ["[Networking] [%*]"]
       25 GETTABLEKS                       R6 R1 K6 ["_type"]
       27 NAMECALL                         R4 R4 K10 ["format"]
       29 CALL                             R4 2 1
       30 MOVE                             R3 R4
       31 CALL                             R2 1 1
       32 SETTABLEKS                       R2 R1 K11 ["_logger"]
       34 GETTABLEKS                       R2 R0 K12 ["plugin"]
       36 SETTABLEKS                       R2 R1 K13 ["_plugin"]
       38 GETTABLEKS                       R2 R0 K0 ["isUIDM"]
       40 SETTABLEKS                       R2 R1 K14 ["_isUIDM"]
       42 GETTABLEKS                       R2 R0 K1 ["isEditableDM"]
       44 SETTABLEKS                       R2 R1 K15 ["_isEditableDM"]
       46 NEWTABLE                         R2 0 0
       48 SETTABLEKS                       R2 R1 K16 ["_connections"]
       50 NEWTABLE                         R2 0 0
       52 SETTABLEKS                       R2 R1 K17 ["_invokeThreads"]
       54 LOADN                            R2 0
       55 SETTABLEKS                       R2 R1 K18 ["_invokeCounter"]
       57 GETUPVAL                         R4 1
       58 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       60 MOVE                             R3 R1
       61 GETIMPORT                        R2 K20 [setmetatable]
       63 CALL                             R2 2 0
       64 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_isUIDM"]
        2 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_isEditableDM"]
        2 RETURN                           R1 1

PROTO_3:
        0 NAMECALL                         R1 R0 K0 ["IsUIDM"]
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+8]
        4 NAMECALL                         R1 R0 K1 ["IsEditableDM"]
        6 CALL                             R1 1 1
        7 JUMPIFNOT                        R1 ; [+4]
        8 GETTABLEKS                       R2 R0 K2 ["_plugin"]
       10 GETTABLEKS                       R1 R2 K3 ["HostDataModelTypeIsCurrent"]
       12 RETURN                           R1 1

PROTO_4:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K0 ["_isFocusedDM"]
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+13]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K1 ["_logger"]
        9 LOADK                            R4 K2 ["skipping event %* in unfocused DM"]
       10 GETUPVAL                         R6 1
       11 NAMECALL                         R4 R4 K3 ["format"]
       13 CALL                             R4 2 1
       14 MOVE                             R3 R4
       15 NAMECALL                         R1 R1 K4 ["log"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R1 R2 K1 ["_logger"]
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
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["_connections"]
        7 GETUPVAL                         R2 0
        8 GETTABLE                         R0 R1 R2
        9 JUMPIFNOT                        R0 ; [+6]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R0 R1 K1 ["_connections"]
       13 GETUPVAL                         R1 0
       14 LOADNIL                          R2
       15 SETTABLE                         R2 R0 R1
       16 RETURN                           R0 0

PROTO_6:
        0 LOADK                            R5 K0 ["%*_%*"]
        1 MOVE                             R7 R1
        2 MOVE                             R8 R2
        3 NAMECALL                         R5 R5 K1 ["format"]
        5 CALL                             R5 3 1
        6 MOVE                             R4 R5
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R3
       11 GETTABLEKS                       R6 R0 K2 ["_plugin"]
       13 MOVE                             R8 R4
       14 MOVE                             R9 R5
       15 NAMECALL                         R6 R6 K3 ["OnInvoke"]
       17 CALL                             R6 3 1
       18 GETTABLEKS                       R7 R0 K4 ["_connections"]
       20 LOADB                            R8 1
       21 SETTABLE                         R8 R7 R6
       22 NEWCLOSURE                       R7 P1
       23 CAPTURE                          VAL R6
       24 CAPTURE                          VAL R0
       25 RETURN                           R7 1

PROTO_7:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 GETVARARGS                       R5 -1
        5 NAMECALL                         R1 R1 K0 ["FireUIDM"]
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1

PROTO_8:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 NAMECALL                         R4 R0 K0 ["IsUIDM"]
        5 CALL                             R4 1 1
        6 JUMPIF                           R4 ; [+3]
        7 MOVE                             R4 R3
        8 LOADNIL                          R5
        9 RETURN                           R4 2
       10 MOVE                             R4 R3
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R7 R8 K1 ["TAG_UI_EVENT"]
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
        5 NAMECALL                         R1 R1 K0 ["FireEditableDM"]
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1

PROTO_10:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 NAMECALL                         R4 R0 K0 ["IsEditableDM"]
        5 CALL                             R4 1 1
        6 JUMPIF                           R4 ; [+3]
        7 MOVE                             R4 R3
        8 LOADNIL                          R5
        9 RETURN                           R4 2
       10 MOVE                             R4 R3
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R7 R8 K1 ["TAG_EDITABLE_EVENT"]
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
        1 NAMECALL                         R4 R0 K0 ["IsEditableDM"]
        3 CALL                             R4 1 1
        4 GETIMPORT                        R5 K3 [debug.traceback]
        6 LOADK                            R6 K4 ["FireUIDM can only be called from the editable DM"]
        7 CALL                             R5 1 -1
        8 FASTCALL                         ASSERT ; [+2]
        9 GETIMPORT                        R3 K6 [assert]
       11 CALL                             R3 -1 0
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K7 ["TAG_UI_EVENT"]
       15 MOVE                             R6 R1
       16 MOVE                             R7 R2
       17 GETVARARGS                       R8 -1
       18 NAMECALL                         R3 R0 K8 ["_doFire"]
       20 CALL                             R3 -1 0
       21 RETURN                           R0 0

PROTO_13:
        0 PREPVARARGS                      3
        1 NAMECALL                         R4 R0 K0 ["IsUIDM"]
        3 CALL                             R4 1 1
        4 GETIMPORT                        R5 K3 [debug.traceback]
        6 LOADK                            R6 K4 ["FireEditableDM can only be called from the UI DM"]
        7 CALL                             R5 1 -1
        8 FASTCALL                         ASSERT ; [+2]
        9 GETIMPORT                        R3 K6 [assert]
       11 CALL                             R3 -1 0
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K7 ["TAG_EDITABLE_EVENT"]
       15 MOVE                             R6 R1
       16 MOVE                             R7 R2
       17 GETVARARGS                       R8 -1
       18 NAMECALL                         R3 R0 K8 ["_doFire"]
       20 CALL                             R3 -1 0
       21 RETURN                           R0 0

PROTO_14:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K0 ["_isFocusedDM"]
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+13]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K1 ["_logger"]
        9 LOADK                            R4 K2 ["skipping requester invoke callback %* in unfocused DM"]
       10 GETUPVAL                         R6 1
       11 NAMECALL                         R4 R4 K3 ["format"]
       13 CALL                             R4 2 1
       14 MOVE                             R3 R4
       15 NAMECALL                         R1 R1 K4 ["log"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R2 R3 K5 ["_invokeThreads"]
       22 GETTABLE                         R1 R2 R0
       23 LOADK                            R5 K6 ["No invoke thread found for requestId: %*"]
       24 MOVE                             R7 R0
       25 NAMECALL                         R5 R5 K3 ["format"]
       27 CALL                             R5 2 1
       28 MOVE                             R4 R5
       29 FASTCALL2                        ASSERT R1 R4 ; [+4]
       31 MOVE                             R3 R1
       32 GETIMPORT                        R2 K8 [assert]
       34 CALL                             R2 2 0
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R2 R3 K5 ["_invokeThreads"]
       38 LOADNIL                          R3
       39 SETTABLE                         R3 R2 R0
       40 MOVE                             R2 R1
       41 GETVARARGS                       R3 -1
       42 CALL                             R2 -1 0
       43 RETURN                           R0 0

PROTO_15:
        0 PREPVARARGS                      2
        1 GETUPVAL                         R2 0
        2 NAMECALL                         R2 R2 K0 ["_isFocusedDM"]
        4 CALL                             R2 1 1
        5 JUMPIF                           R2 ; [+13]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K1 ["_logger"]
        9 LOADK                            R5 K2 ["skipping executer invoke callback %* in unfocused DM"]
       10 GETUPVAL                         R7 1
       11 NAMECALL                         R5 R5 K3 ["format"]
       13 CALL                             R5 2 1
       14 MOVE                             R4 R5
       15 NAMECALL                         R2 R2 K4 ["log"]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R2 R3 K1 ["_logger"]
       22 LOADK                            R5 K5 ["received invoke Executer %*"]
       23 GETUPVAL                         R7 1
       24 NAMECALL                         R5 R5 K3 ["format"]
       26 CALL                             R5 2 1
       27 MOVE                             R4 R5
       28 NAMECALL                         R2 R2 K4 ["log"]
       30 CALL                             R2 2 0
       31 NEWTABLE                         R2 0 1
       33 GETIMPORT                        R3 K7 [pcall]
       35 GETUPVAL                         R4 2
       36 MOVE                             R5 R1
       37 GETVARARGS                       R6 -1
       38 CALL                             R3 -1 -1
       39 SETLIST                          R2 R3 -1 [1]
       41 GETUPVAL                         R4 0
       42 GETTABLEKS                       R3 R4 K1 ["_logger"]
       44 LOADK                            R6 K8 ["sending invoke Requester %* with args: %*"]
       45 GETUPVAL                         R8 1
       46 GETUPVAL                         R9 3
       47 MOVE                             R11 R2
       48 NAMECALL                         R9 R9 K9 ["JSONEncode"]
       50 CALL                             R9 2 1
       51 NAMECALL                         R6 R6 K3 ["format"]
       53 CALL                             R6 3 1
       54 MOVE                             R5 R6
       55 NAMECALL                         R3 R3 K4 ["log"]
       57 CALL                             R3 2 0
       58 GETUPVAL                         R4 0
       59 GETTABLEKS                       R3 R4 K10 ["_plugin"]
       61 LOADK                            R6 K11 ["%*_ToRequester"]
       62 GETUPVAL                         R8 4
       63 NAMECALL                         R6 R6 K3 ["format"]
       65 CALL                             R6 2 1
       66 MOVE                             R5 R6
       67 MOVE                             R6 R0
       68 FASTCALL1                        TABLE_UNPACK R2 ; [+3]
       69 MOVE                             R8 R2
       70 GETIMPORT                        R7 K14 [table.unpack]
       72 CALL                             R7 1 -1
       73 NAMECALL                         R3 R3 K15 ["Invoke"]
       75 CALL                             R3 -1 0
       76 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R3 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R6 R7 K1 ["_connections"]
       10 GETTABLE                         R5 R6 R3
       11 JUMPIFNOT                        R5 ; [+5]
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R5 R6 K1 ["_connections"]
       15 LOADNIL                          R6
       16 SETTABLE                         R6 R5 R3
       17 FORGLOOP                         R0 1 ; [-14]
       19 GETIMPORT                        R0 K4 [table.clear]
       21 GETUPVAL                         R1 0
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

PROTO_17:
        0 LOADK                            R7 K0 ["%*_%*"]
        1 MOVE                             R9 R1
        2 MOVE                             R10 R2
        3 NAMECALL                         R7 R7 K1 ["format"]
        5 CALL                             R7 3 1
        6 MOVE                             R6 R7
        7 NEWTABLE                         R7 0 0
        9 JUMPIFNOT                        R5 ; [+21]
       10 NEWCLOSURE                       R8 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R2
       13 GETTABLEKS                       R9 R0 K2 ["_plugin"]
       15 LOADK                            R12 K3 ["%*_ToRequester"]
       16 MOVE                             R14 R6
       17 NAMECALL                         R12 R12 K1 ["format"]
       19 CALL                             R12 2 1
       20 MOVE                             R11 R12
       21 MOVE                             R12 R8
       22 NAMECALL                         R9 R9 K4 ["OnInvoke"]
       24 CALL                             R9 3 1
       25 LOADB                            R10 1
       26 SETTABLE                         R10 R7 R9
       27 GETTABLEKS                       R10 R0 K5 ["_connections"]
       29 LOADB                            R11 1
       30 SETTABLE                         R11 R10 R9
       31 JUMPIFNOT                        R4 ; [+24]
       32 NEWCLOSURE                       R8 P1
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R3
       36 CAPTURE                          UPVAL U0
       37 CAPTURE                          VAL R6
       38 GETTABLEKS                       R9 R0 K2 ["_plugin"]
       40 LOADK                            R12 K6 ["%*_ToExecuter"]
       41 MOVE                             R14 R6
       42 NAMECALL                         R12 R12 K1 ["format"]
       44 CALL                             R12 2 1
       45 MOVE                             R11 R12
       46 MOVE                             R12 R8
       47 NAMECALL                         R9 R9 K4 ["OnInvoke"]
       49 CALL                             R9 3 1
       50 LOADB                            R10 1
       51 SETTABLE                         R10 R7 R9
       52 GETTABLEKS                       R10 R0 K5 ["_connections"]
       54 LOADB                            R11 1
       55 SETTABLE                         R11 R10 R9
       56 NEWCLOSURE                       R8 P2
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R0
       59 RETURN                           R8 1

PROTO_18:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 GETVARARGS                       R5 -1
        5 NAMECALL                         R1 R1 K0 ["InvokeUIDM"]
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1

PROTO_19:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 MOVE                             R4 R3
        4 GETUPVAL                         R8 0
        5 GETTABLEKS                       R7 R8 K0 ["TAG_UI_INVOKE"]
        7 MOVE                             R8 R1
        8 MOVE                             R9 R2
        9 NAMECALL                         R10 R0 K1 ["IsUIDM"]
       11 CALL                             R10 1 1
       12 NAMECALL                         R11 R0 K2 ["IsEditableDM"]
       14 CALL                             R11 1 -1
       15 NAMECALL                         R5 R0 K3 ["_connectOnInvoke"]
       17 CALL                             R5 -1 -1
       18 RETURN                           R4 -1

PROTO_20:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 GETVARARGS                       R5 -1
        5 NAMECALL                         R1 R1 K0 ["InvokeEditableDM"]
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1

PROTO_21:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 MOVE                             R4 R3
        4 GETUPVAL                         R8 0
        5 GETTABLEKS                       R7 R8 K0 ["TAG_EDITABLE_INVOKE"]
        7 MOVE                             R8 R1
        8 MOVE                             R9 R2
        9 NAMECALL                         R10 R0 K1 ["IsEditableDM"]
       11 CALL                             R10 1 1
       12 NAMECALL                         R11 R0 K2 ["IsUIDM"]
       14 CALL                             R11 1 -1
       15 NAMECALL                         R5 R0 K3 ["_connectOnInvoke"]
       17 CALL                             R5 -1 -1
       18 RETURN                           R4 -1

PROTO_22:
        0 PREPVARARGS                      1
        1 SETUPVAL                         R0 0
        2 NEWTABLE                         R1 0 0
        4 GETVARARGS                       R2 -1
        5 SETLIST                          R1 R2 -1 [1]
        7 SETUPVAL                         R1 1
        8 LOADB                            R1 1
        9 SETUPVAL                         R1 2
       10 GETIMPORT                        R1 K2 [coroutine.status]
       12 GETUPVAL                         R2 3
       13 CALL                             R1 1 1
       14 JUMPIFNOTEQKS                    R1 K3 ["suspended"] ; [+5]
       16 GETIMPORT                        R1 K6 [task.spawn]
       18 GETUPVAL                         R2 3
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_logger"]
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
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R0 R1 K5 ["_plugin"]
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

PROTO_24:
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
       22 LOADB                            R7 0
       23 LOADB                            R8 0
       24 NEWTABLE                         R9 0 0
       26 GETTABLEKS                       R10 R0 K9 ["_invokeThreads"]
       28 NEWCLOSURE                       R11 P0
       29 CAPTURE                          REF R8
       30 CAPTURE                          REF R9
       31 CAPTURE                          REF R7
       32 CAPTURE                          VAL R6
       33 SETTABLE                         R11 R10 R5
       34 NEWTABLE                         R10 0 2
       36 MOVE                             R11 R5
       37 MOVE                             R12 R3
       38 GETVARARGS                       R13 -1
       39 SETLIST                          R10 R11 -1 [1]
       41 GETIMPORT                        R11 K12 [task.spawn]
       43 NEWCLOSURE                       R12 P1
       44 CAPTURE                          VAL R0
       45 CAPTURE                          VAL R2
       46 CAPTURE                          UPVAL U0
       47 CAPTURE                          VAL R10
       48 CAPTURE                          VAL R4
       49 CALL                             R11 1 0
       50 JUMPIF                           R7 ; [+3]
       51 GETIMPORT                        R11 K14 [coroutine.yield]
       53 CALL                             R11 0 0
       54 GETTABLEKS                       R11 R0 K15 ["_logger"]
       56 LOADK                            R14 K16 ["received invoke Requester %*"]
       57 MOVE                             R16 R2
       58 NAMECALL                         R14 R14 K1 ["format"]
       60 CALL                             R14 2 1
       61 MOVE                             R13 R14
       62 NAMECALL                         R11 R11 K17 ["log"]
       64 CALL                             R11 2 0
       65 JUMPIF                           R8 ; [+4]
       66 GETIMPORT                        R11 K19 [error]
       68 MOVE                             R12 R9
       69 CALL                             R11 1 0
       70 FASTCALL1                        TABLE_UNPACK R9 ; [+3]
       71 MOVE                             R12 R9
       72 GETIMPORT                        R11 K22 [table.unpack]
       74 CALL                             R11 1 -1
       75 CLOSEUPVALS                      R7
       76 RETURN                           R11 -1

PROTO_25:
        0 PREPVARARGS                      3
        1 NAMECALL                         R4 R0 K0 ["IsEditableDM"]
        3 CALL                             R4 1 1
        4 GETIMPORT                        R5 K3 [debug.traceback]
        6 LOADK                            R6 K4 ["InvokeUIDM can only be called from the editable DM"]
        7 CALL                             R5 1 -1
        8 FASTCALL                         ASSERT ; [+2]
        9 GETIMPORT                        R3 K6 [assert]
       11 CALL                             R3 -1 0
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K7 ["TAG_UI_INVOKE"]
       15 MOVE                             R6 R1
       16 MOVE                             R7 R2
       17 GETVARARGS                       R8 -1
       18 NAMECALL                         R3 R0 K8 ["_doInvoke"]
       20 CALL                             R3 -1 -1
       21 RETURN                           R3 -1

PROTO_26:
        0 PREPVARARGS                      3
        1 NAMECALL                         R4 R0 K0 ["IsUIDM"]
        3 CALL                             R4 1 1
        4 GETIMPORT                        R5 K3 [debug.traceback]
        6 LOADK                            R6 K4 ["InvokeEditableDM can only be called from the UI DM"]
        7 CALL                             R5 1 -1
        8 FASTCALL                         ASSERT ; [+2]
        9 GETIMPORT                        R3 K6 [assert]
       11 CALL                             R3 -1 0
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K7 ["TAG_EDITABLE_INVOKE"]
       15 MOVE                             R6 R1
       16 MOVE                             R7 R2
       17 GETVARARGS                       R8 -1
       18 NAMECALL                         R3 R0 K8 ["_doInvoke"]
       20 CALL                             R3 -1 -1
       21 RETURN                           R3 -1

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["_connections"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 NAMECALL                         R6 R4 K1 ["Disconnect"]
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
       33 SETTABLEKS                       R5 R4 K16 ["IsUIDM"]
       35 DUPCLOSURE                       R5 K17 [PROTO_2]
       36 SETTABLEKS                       R5 R4 K18 ["IsEditableDM"]
       38 DUPCLOSURE                       R5 K19 [PROTO_3]
       39 SETTABLEKS                       R5 R4 K20 ["_isFocusedDM"]
       41 DUPCLOSURE                       R5 K21 [PROTO_6]
       42 SETTABLEKS                       R5 R4 K22 ["_connectEvent"]
       44 DUPCLOSURE                       R5 K23 [PROTO_8]
       45 CAPTURE                          VAL R3
       46 SETTABLEKS                       R5 R4 K24 ["OnUIDMEvent"]
       48 DUPCLOSURE                       R5 K25 [PROTO_10]
       49 CAPTURE                          VAL R3
       50 SETTABLEKS                       R5 R4 K26 ["OnEditableDMEvent"]
       52 DUPCLOSURE                       R5 K27 [PROTO_11]
       53 CAPTURE                          VAL R1
       54 SETTABLEKS                       R5 R4 K28 ["_doFire"]
       56 DUPCLOSURE                       R5 K29 [PROTO_12]
       57 CAPTURE                          VAL R3
       58 SETTABLEKS                       R5 R4 K30 ["FireUIDM"]
       60 DUPCLOSURE                       R5 K31 [PROTO_13]
       61 CAPTURE                          VAL R3
       62 SETTABLEKS                       R5 R4 K32 ["FireEditableDM"]
       64 DUPCLOSURE                       R5 K33 [PROTO_17]
       65 CAPTURE                          VAL R1
       66 SETTABLEKS                       R5 R4 K34 ["_connectOnInvoke"]
       68 DUPCLOSURE                       R5 K35 [PROTO_19]
       69 CAPTURE                          VAL R3
       70 SETTABLEKS                       R5 R4 K36 ["OnUIDMInvoke"]
       72 DUPCLOSURE                       R5 K37 [PROTO_21]
       73 CAPTURE                          VAL R3
       74 SETTABLEKS                       R5 R4 K38 ["OnEditableDMInvoke"]
       76 DUPCLOSURE                       R5 K39 [PROTO_24]
       77 CAPTURE                          VAL R1
       78 SETTABLEKS                       R5 R4 K40 ["_doInvoke"]
       80 DUPCLOSURE                       R5 K41 [PROTO_25]
       81 CAPTURE                          VAL R3
       82 SETTABLEKS                       R5 R4 K42 ["InvokeUIDM"]
       84 DUPCLOSURE                       R5 K43 [PROTO_26]
       85 CAPTURE                          VAL R3
       86 SETTABLEKS                       R5 R4 K44 ["InvokeEditableDM"]
       88 DUPCLOSURE                       R5 K45 [PROTO_27]
       89 SETTABLEKS                       R5 R4 K46 ["Destroy"]
       91 RETURN                           R4 1
