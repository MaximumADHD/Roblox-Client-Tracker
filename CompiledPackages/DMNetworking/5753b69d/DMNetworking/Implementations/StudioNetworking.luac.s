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
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K7 ["Logger"]
       22 GETTABLEKS                       R2 R2 K8 ["new"]
       24 LOADK                            R3 K9 ["[Networking] [%*]"]
       25 GETTABLEKS                       R5 R1 K6 ["_type"]
       27 NAMECALL                         R3 R3 K10 ["format"]
       29 CALL                             R3 2 1
       30 CALL                             R2 1 1
       31 SETTABLEKS                       R2 R1 K11 ["_logger"]
       33 GETTABLEKS                       R2 R0 K12 ["plugin"]
       35 SETTABLEKS                       R2 R1 K13 ["_plugin"]
       37 GETTABLEKS                       R2 R0 K0 ["isUIDM"]
       39 SETTABLEKS                       R2 R1 K14 ["_isUIDM"]
       41 GETTABLEKS                       R2 R0 K1 ["isEditableDM"]
       43 SETTABLEKS                       R2 R1 K15 ["_isEditableDM"]
       45 NEWTABLE                         R2 0 0
       47 SETTABLEKS                       R2 R1 K16 ["_connections"]
       49 NEWTABLE                         R2 0 0
       51 SETTABLEKS                       R2 R1 K17 ["_invokeThreads"]
       53 LOADN                            R2 0
       54 SETTABLEKS                       R2 R1 K18 ["_invokeCounter"]
       56 GETUPVAL                         R4 1
       57 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       59 MOVE                             R3 R1
       60 GETIMPORT                        R2 K20 [setmetatable]
       62 CALL                             R2 2 0
       63 RETURN                           R1 1

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
        8 GETTABLEKS                       R1 R0 K2 ["_plugin"]
       10 GETTABLEKS                       R1 R1 K3 ["HostDataModelTypeIsCurrent"]
       12 RETURN                           R1 1

PROTO_4:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K0 ["_isFocusedDM"]
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+12]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["_logger"]
        9 LOADK                            R3 K2 ["skipping event %* in unfocused DM"]
       10 GETUPVAL                         R5 1
       11 NAMECALL                         R3 R3 K3 ["format"]
       13 CALL                             R3 2 1
       14 NAMECALL                         R1 R1 K4 ["log"]
       16 CALL                             R1 2 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K1 ["_logger"]
       21 LOADK                            R3 K5 ["received event %*"]
       22 GETUPVAL                         R5 1
       23 NAMECALL                         R3 R3 K3 ["format"]
       25 CALL                             R3 2 1
       26 NAMECALL                         R1 R1 K4 ["log"]
       28 CALL                             R1 2 0
       29 GETUPVAL                         R1 2
       30 MOVE                             R2 R0
       31 GETVARARGS                       R3 -1
       32 CALL                             R1 -1 0
       33 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["_connections"]
        7 GETUPVAL                         R2 0
        8 GETTABLE                         R0 R1 R2
        9 JUMPIFNOT                        R0 ; [+6]
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R0 R0 K1 ["_connections"]
       13 GETUPVAL                         R1 0
       14 LOADNIL                          R2
       15 SETTABLE                         R2 R0 R1
       16 RETURN                           R0 0

PROTO_6:
        0 LOADK                            R4 K0 ["%*_%*"]
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 NAMECALL                         R4 R4 K1 ["format"]
        5 CALL                             R4 3 1
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R3
       10 GETTABLEKS                       R6 R0 K2 ["_plugin"]
       12 MOVE                             R8 R4
       13 MOVE                             R9 R5
       14 NAMECALL                         R6 R6 K3 ["OnInvoke"]
       16 CALL                             R6 3 1
       17 GETTABLEKS                       R7 R0 K4 ["_connections"]
       19 LOADB                            R8 1
       20 SETTABLE                         R8 R7 R6
       21 NEWCLOSURE                       R7 P1
       22 CAPTURE                          VAL R6
       23 CAPTURE                          VAL R0
       24 RETURN                           R7 1

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
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R7 R7 K1 ["TAG_UI_EVENT"]
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
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R7 R7 K1 ["TAG_EDITABLE_EVENT"]
       14 MOVE                             R8 R1
       15 MOVE                             R9 R2
       16 NAMECALL                         R5 R0 K2 ["_connectEvent"]
       18 CALL                             R5 4 -1
       19 RETURN                           R4 -1

PROTO_11:
        0 PREPVARARGS                      4
        1 LOADK                            R4 K0 ["%*_%*"]
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R4 R4 K1 ["format"]
        6 CALL                             R4 3 1
        7 GETTABLEKS                       R5 R0 K2 ["_logger"]
        9 LOADK                            R7 K3 ["sending event %* with args: %*"]
       10 MOVE                             R9 R2
       11 GETUPVAL                         R10 0
       12 NEWTABLE                         R12 0 0
       14 GETVARARGS                       R13 -1
       15 SETLIST                          R12 R13 -1 [1]
       17 NAMECALL                         R10 R10 K4 ["JSONEncode"]
       19 CALL                             R10 2 1
       20 NAMECALL                         R7 R7 K1 ["format"]
       22 CALL                             R7 3 1
       23 NAMECALL                         R5 R5 K5 ["log"]
       25 CALL                             R5 2 0
       26 GETTABLEKS                       R5 R0 K6 ["_plugin"]
       28 MOVE                             R7 R4
       29 MOVE                             R8 R3
       30 GETVARARGS                       R9 -1
       31 NAMECALL                         R5 R5 K7 ["Invoke"]
       33 CALL                             R5 -1 0
       34 RETURN                           R0 0

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
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K7 ["TAG_UI_EVENT"]
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
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K7 ["TAG_EDITABLE_EVENT"]
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
        5 JUMPIF                           R1 ; [+12]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["_logger"]
        9 LOADK                            R3 K2 ["skipping requester invoke callback %* in unfocused DM"]
       10 GETUPVAL                         R5 1
       11 NAMECALL                         R3 R3 K3 ["format"]
       13 CALL                             R3 2 1
       14 NAMECALL                         R1 R1 K4 ["log"]
       16 CALL                             R1 2 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K5 ["_invokeThreads"]
       21 GETTABLE                         R1 R2 R0
       22 LOADK                            R4 K6 ["No invoke thread found for requestId: %*"]
       23 MOVE                             R6 R0
       24 NAMECALL                         R4 R4 K3 ["format"]
       26 CALL                             R4 2 1
       27 FASTCALL2                        ASSERT R1 R4 ; [+4]
       29 MOVE                             R3 R1
       30 GETIMPORT                        R2 K8 [assert]
       32 CALL                             R2 2 0
       33 GETUPVAL                         R2 0
       34 GETTABLEKS                       R2 R2 K5 ["_invokeThreads"]
       36 LOADNIL                          R3
       37 SETTABLE                         R3 R2 R0
       38 MOVE                             R2 R1
       39 GETVARARGS                       R3 -1
       40 CALL                             R2 -1 0
       41 RETURN                           R0 0

PROTO_15:
        0 PREPVARARGS                      2
        1 GETUPVAL                         R2 0
        2 NAMECALL                         R2 R2 K0 ["_isFocusedDM"]
        4 CALL                             R2 1 1
        5 JUMPIF                           R2 ; [+12]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["_logger"]
        9 LOADK                            R4 K2 ["skipping executer invoke callback %* in unfocused DM"]
       10 GETUPVAL                         R6 1
       11 NAMECALL                         R4 R4 K3 ["format"]
       13 CALL                             R4 2 1
       14 NAMECALL                         R2 R2 K4 ["log"]
       16 CALL                             R2 2 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K1 ["_logger"]
       21 LOADK                            R4 K5 ["received invoke Executer %*"]
       22 GETUPVAL                         R6 1
       23 NAMECALL                         R4 R4 K3 ["format"]
       25 CALL                             R4 2 1
       26 NAMECALL                         R2 R2 K4 ["log"]
       28 CALL                             R2 2 0
       29 NEWTABLE                         R2 0 1
       31 GETIMPORT                        R3 K7 [pcall]
       33 GETUPVAL                         R4 2
       34 MOVE                             R5 R1
       35 GETVARARGS                       R6 -1
       36 CALL                             R3 -1 -1
       37 SETLIST                          R2 R3 -1 [1]
       39 GETUPVAL                         R3 0
       40 GETTABLEKS                       R3 R3 K1 ["_logger"]
       42 LOADK                            R5 K8 ["sending invoke Requester %* with args: %*"]
       43 GETUPVAL                         R7 1
       44 GETUPVAL                         R8 3
       45 MOVE                             R10 R2
       46 NAMECALL                         R8 R8 K9 ["JSONEncode"]
       48 CALL                             R8 2 1
       49 NAMECALL                         R5 R5 K3 ["format"]
       51 CALL                             R5 3 1
       52 NAMECALL                         R3 R3 K4 ["log"]
       54 CALL                             R3 2 0
       55 GETUPVAL                         R3 0
       56 GETTABLEKS                       R3 R3 K10 ["_plugin"]
       58 LOADK                            R5 K11 ["%*_ToRequester"]
       59 GETUPVAL                         R7 4
       60 NAMECALL                         R5 R5 K3 ["format"]
       62 CALL                             R5 2 1
       63 MOVE                             R6 R0
       64 FASTCALL1                        TABLE_UNPACK R2 ; [+3]
       65 MOVE                             R8 R2
       66 GETIMPORT                        R7 K14 [table.unpack]
       68 CALL                             R7 1 -1
       69 NAMECALL                         R3 R3 K15 ["Invoke"]
       71 CALL                             R3 -1 0
       72 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R3 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R6 R6 K1 ["_connections"]
       10 GETTABLE                         R5 R6 R3
       11 JUMPIFNOT                        R5 ; [+5]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K1 ["_connections"]
       15 LOADNIL                          R6
       16 SETTABLE                         R6 R5 R3
       17 FORGLOOP                         R0 1 ; [-14]
       19 GETIMPORT                        R0 K4 [table.clear]
       21 GETUPVAL                         R1 0
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

PROTO_17:
        0 LOADK                            R6 K0 ["%*_%*"]
        1 MOVE                             R8 R1
        2 MOVE                             R9 R2
        3 NAMECALL                         R6 R6 K1 ["format"]
        5 CALL                             R6 3 1
        6 NEWTABLE                         R7 0 0
        8 JUMPIFNOT                        R5 ; [+20]
        9 NEWCLOSURE                       R8 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R2
       12 GETTABLEKS                       R9 R0 K2 ["_plugin"]
       14 LOADK                            R11 K3 ["%*_ToRequester"]
       15 MOVE                             R13 R6
       16 NAMECALL                         R11 R11 K1 ["format"]
       18 CALL                             R11 2 1
       19 MOVE                             R12 R8
       20 NAMECALL                         R9 R9 K4 ["OnInvoke"]
       22 CALL                             R9 3 1
       23 LOADB                            R10 1
       24 SETTABLE                         R10 R7 R9
       25 GETTABLEKS                       R10 R0 K5 ["_connections"]
       27 LOADB                            R11 1
       28 SETTABLE                         R11 R10 R9
       29 JUMPIFNOT                        R4 ; [+23]
       30 NEWCLOSURE                       R8 P1
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 CAPTURE                          UPVAL U0
       35 CAPTURE                          VAL R6
       36 GETTABLEKS                       R9 R0 K2 ["_plugin"]
       38 LOADK                            R11 K6 ["%*_ToExecuter"]
       39 MOVE                             R13 R6
       40 NAMECALL                         R11 R11 K1 ["format"]
       42 CALL                             R11 2 1
       43 MOVE                             R12 R8
       44 NAMECALL                         R9 R9 K4 ["OnInvoke"]
       46 CALL                             R9 3 1
       47 LOADB                            R10 1
       48 SETTABLE                         R10 R7 R9
       49 GETTABLEKS                       R10 R0 K5 ["_connections"]
       51 LOADB                            R11 1
       52 SETTABLE                         R11 R10 R9
       53 NEWCLOSURE                       R8 P2
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R0
       56 RETURN                           R8 1

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
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R7 R7 K0 ["TAG_UI_INVOKE"]
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
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R7 R7 K0 ["TAG_EDITABLE_INVOKE"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_logger"]
        3 LOADK                            R2 K1 ["sending invoke Executer %* with args: %*"]
        4 GETUPVAL                         R4 1
        5 GETUPVAL                         R5 2
        6 GETUPVAL                         R7 3
        7 NAMECALL                         R5 R5 K2 ["JSONEncode"]
        9 CALL                             R5 2 1
       10 NAMECALL                         R2 R2 K3 ["format"]
       12 CALL                             R2 3 1
       13 NAMECALL                         R0 R0 K4 ["log"]
       15 CALL                             R0 2 0
       16 GETUPVAL                         R0 0
       17 GETTABLEKS                       R0 R0 K5 ["_plugin"]
       19 LOADK                            R2 K6 ["%*_ToExecuter"]
       20 GETUPVAL                         R4 4
       21 NAMECALL                         R2 R2 K3 ["format"]
       23 CALL                             R2 2 1
       24 GETUPVAL                         R4 3
       25 FASTCALL1                        TABLE_UNPACK R4 ; [+2]
       26 GETIMPORT                        R3 K9 [table.unpack]
       28 CALL                             R3 1 -1
       29 NAMECALL                         R0 R0 K10 ["Invoke"]
       31 CALL                             R0 -1 0
       32 RETURN                           R0 0

PROTO_24:
        0 PREPVARARGS                      4
        1 LOADK                            R4 K0 ["%*_%*"]
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R4 R4 K1 ["format"]
        6 CALL                             R4 3 1
        7 GETTABLEKS                       R5 R0 K2 ["_invokeCounter"]
        9 ADDK                             R5 R5 K3 [1]
       10 SETTABLEKS                       R5 R0 K2 ["_invokeCounter"]
       12 GETTABLEKS                       R6 R0 K2 ["_invokeCounter"]
       14 FASTCALL1                        TOSTRING R6 ; [+2]
       15 GETIMPORT                        R5 K5 [tostring]
       17 CALL                             R5 1 1
       18 GETIMPORT                        R6 K8 [coroutine.running]
       20 CALL                             R6 0 1
       21 LOADB                            R7 0
       22 LOADB                            R8 0
       23 NEWTABLE                         R9 0 0
       25 GETTABLEKS                       R10 R0 K9 ["_invokeThreads"]
       27 NEWCLOSURE                       R11 P0
       28 CAPTURE                          REF R8
       29 CAPTURE                          REF R9
       30 CAPTURE                          REF R7
       31 CAPTURE                          VAL R6
       32 SETTABLE                         R11 R10 R5
       33 NEWTABLE                         R10 0 2
       35 MOVE                             R11 R5
       36 MOVE                             R12 R3
       37 GETVARARGS                       R13 -1
       38 SETLIST                          R10 R11 -1 [1]
       40 GETIMPORT                        R11 K12 [task.spawn]
       42 NEWCLOSURE                       R12 P1
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R2
       45 CAPTURE                          UPVAL U0
       46 CAPTURE                          VAL R10
       47 CAPTURE                          VAL R4
       48 CALL                             R11 1 0
       49 JUMPIF                           R7 ; [+3]
       50 GETIMPORT                        R11 K14 [coroutine.yield]
       52 CALL                             R11 0 0
       53 GETTABLEKS                       R11 R0 K15 ["_logger"]
       55 LOADK                            R13 K16 ["received invoke Requester %*"]
       56 MOVE                             R15 R2
       57 NAMECALL                         R13 R13 K1 ["format"]
       59 CALL                             R13 2 1
       60 NAMECALL                         R11 R11 K17 ["log"]
       62 CALL                             R11 2 0
       63 JUMPIF                           R8 ; [+4]
       64 GETIMPORT                        R11 K19 [error]
       66 MOVE                             R12 R9
       67 CALL                             R11 1 0
       68 FASTCALL1                        TABLE_UNPACK R9 ; [+3]
       69 MOVE                             R12 R9
       70 GETIMPORT                        R11 K22 [table.unpack]
       72 CALL                             R11 1 -1
       73 CLOSEUPVALS                      R7
       74 RETURN                           R11 -1

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
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K7 ["TAG_UI_INVOKE"]
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
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K7 ["TAG_EDITABLE_INVOKE"]
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
