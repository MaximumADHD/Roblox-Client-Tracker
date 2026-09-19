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
       16 LOADK                            R2 K5 ["Game"]
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
       33 GETTABLEKS                       R2 R0 K0 ["isUIDM"]
       35 SETTABLEKS                       R2 R1 K12 ["_isUIDM"]
       37 GETTABLEKS                       R2 R0 K1 ["isEditableDM"]
       39 SETTABLEKS                       R2 R1 K13 ["_isEditableDM"]
       41 LOADNIL                          R2
       42 SETTABLEKS                       R2 R1 K14 ["_networkFolder"]
       44 GETUPVAL                         R4 1
       45 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       47 MOVE                             R3 R1
       48 GETIMPORT                        R2 K16 [setmetatable]
       50 CALL                             R2 2 0
       51 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_isUIDM"]
        2 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_isEditableDM"]
        2 RETURN                           R1 1

PROTO_3:
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
       15 GETIMPORT                        R2 K5 [Instance.new]
       17 LOADK                            R3 K6 ["Folder"]
       18 CALL                             R2 1 1
       19 LOADK                            R3 K1 ["DM_NETWORKING_REMOTES"]
       20 SETTABLEKS                       R3 R2 K7 ["Name"]
       22 GETUPVAL                         R3 0
       23 SETTABLEKS                       R3 R2 K8 ["Parent"]
       25 SETTABLEKS                       R2 R0 K0 ["_networkFolder"]
       27 RETURN                           R2 1

PROTO_4:
        0 LOADK                            R3 K0 ["%*_%*"]
        1 MOVE                             R5 R1
        2 MOVE                             R6 R2
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 3 1
        6 NAMECALL                         R4 R0 K2 ["_getNetworkFolder"]
        8 CALL                             R4 1 1
        9 LOADNIL                          R5
       10 NAMECALL                         R6 R0 K3 ["IsEditableDM"]
       12 CALL                             R6 1 1
       13 JUMPIFNOT                        R6 ; [+16]
       14 MOVE                             R8 R3
       15 NAMECALL                         R6 R4 K4 ["FindFirstChild"]
       17 CALL                             R6 2 1
       18 MOVE                             R5 R6
       19 JUMPIF                           R5 ; [+20]
       20 GETIMPORT                        R6 K7 [Instance.new]
       22 LOADK                            R7 K8 ["RemoteEvent"]
       23 CALL                             R6 1 1
       24 SETTABLEKS                       R3 R6 K9 ["Name"]
       26 SETTABLEKS                       R4 R6 K10 ["Parent"]
       28 MOVE                             R5 R6
       29 JUMP                             ; [+10]
       30 NAMECALL                         R6 R0 K11 ["IsUIDM"]
       32 CALL                             R6 1 1
       33 JUMPIFNOT                        R6 ; [+6]
       34 MOVE                             R8 R3
       35 LOADN                            R9 10
       36 NAMECALL                         R6 R4 K12 ["WaitForChild"]
       38 CALL                             R6 3 1
       39 MOVE                             R5 R6
       40 LOADK                            R8 K13 ["RemoteEvent %* not found in DM_NETWORKING_REMOTES"]
       41 MOVE                             R10 R3
       42 NAMECALL                         R8 R8 K1 ["format"]
       44 CALL                             R8 2 1
       45 FASTCALL2                        ASSERT R5 R8 ; [+4]
       47 MOVE                             R7 R5
       48 GETIMPORT                        R6 K15 [assert]
       50 CALL                             R6 2 0
       51 LOADK                            R9 K8 ["RemoteEvent"]
       52 NAMECALL                         R7 R5 K16 ["IsA"]
       54 CALL                             R7 2 1
       55 LOADK                            R8 K17 ["Expected RemoteEvent, got %*"]
       56 GETTABLEKS                       R10 R5 K18 ["ClassName"]
       58 NAMECALL                         R8 R8 K1 ["format"]
       60 CALL                             R8 2 1
       61 FASTCALL2                        ASSERT R7 R8 ; [+3]
       63 GETIMPORT                        R6 K15 [assert]
       65 CALL                             R6 2 0
       66 RETURN                           R5 1

PROTO_5:
        0 LOADK                            R3 K0 ["%*_%*"]
        1 MOVE                             R5 R1
        2 MOVE                             R6 R2
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 3 1
        6 NAMECALL                         R4 R0 K2 ["_getNetworkFolder"]
        8 CALL                             R4 1 1
        9 LOADNIL                          R5
       10 NAMECALL                         R6 R0 K3 ["IsEditableDM"]
       12 CALL                             R6 1 1
       13 JUMPIFNOT                        R6 ; [+16]
       14 MOVE                             R8 R3
       15 NAMECALL                         R6 R4 K4 ["FindFirstChild"]
       17 CALL                             R6 2 1
       18 MOVE                             R5 R6
       19 JUMPIF                           R5 ; [+20]
       20 GETIMPORT                        R6 K7 [Instance.new]
       22 LOADK                            R7 K8 ["RemoteFunction"]
       23 CALL                             R6 1 1
       24 SETTABLEKS                       R3 R6 K9 ["Name"]
       26 SETTABLEKS                       R4 R6 K10 ["Parent"]
       28 MOVE                             R5 R6
       29 JUMP                             ; [+10]
       30 NAMECALL                         R6 R0 K11 ["IsUIDM"]
       32 CALL                             R6 1 1
       33 JUMPIFNOT                        R6 ; [+6]
       34 MOVE                             R8 R3
       35 LOADN                            R9 10
       36 NAMECALL                         R6 R4 K12 ["WaitForChild"]
       38 CALL                             R6 3 1
       39 MOVE                             R5 R6
       40 LOADK                            R8 K13 ["RemoteFunction %* not found in DM_NETWORKING_REMOTES"]
       41 MOVE                             R10 R3
       42 NAMECALL                         R8 R8 K1 ["format"]
       44 CALL                             R8 2 1
       45 FASTCALL2                        ASSERT R5 R8 ; [+4]
       47 MOVE                             R7 R5
       48 GETIMPORT                        R6 K15 [assert]
       50 CALL                             R6 2 0
       51 LOADK                            R9 K8 ["RemoteFunction"]
       52 NAMECALL                         R7 R5 K16 ["IsA"]
       54 CALL                             R7 2 1
       55 LOADK                            R8 K17 ["Expected RemoteFunction, got %*"]
       56 GETTABLEKS                       R10 R5 K18 ["ClassName"]
       58 NAMECALL                         R8 R8 K1 ["format"]
       60 CALL                             R8 2 1
       61 FASTCALL2                        ASSERT R7 R8 ; [+3]
       63 GETIMPORT                        R6 K15 [assert]
       65 CALL                             R6 2 0
       66 RETURN                           R5 1

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
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["_logger"]
        4 LOADK                            R2 K1 ["received event %*"]
        5 GETUPVAL                         R4 1
        6 NAMECALL                         R2 R2 K2 ["format"]
        8 CALL                             R2 2 1
        9 NAMECALL                         R0 R0 K3 ["log"]
       11 CALL                             R0 2 0
       12 GETUPVAL                         R0 2
       13 LOADNIL                          R1
       14 GETVARARGS                       R2 -1
       15 CALL                             R0 -1 0
       16 RETURN                           R0 0

PROTO_9:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R6 R6 K0 ["TAG_UI_EVENT"]
        6 MOVE                             R7 R1
        7 NAMECALL                         R4 R0 K1 ["_getRemoteEvent"]
        9 CALL                             R4 3 1
       10 NAMECALL                         R5 R0 K2 ["IsEditableDM"]
       12 CALL                             R5 1 1
       13 JUMPIFNOT                        R5 ; [+4]
       14 MOVE                             R5 R3
       15 NEWCLOSURE                       R6 P1
       16 CAPTURE                          VAL R4
       17 RETURN                           R5 2
       18 GETTABLEKS                       R5 R4 K3 ["OnClientEvent"]
       20 NEWCLOSURE                       R7 P2
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 NAMECALL                         R5 R5 K4 ["Connect"]
       26 CALL                             R5 2 0
       27 MOVE                             R5 R3
       28 LOADNIL                          R6
       29 RETURN                           R5 2

PROTO_10:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 GETVARARGS                       R5 -1
        5 NAMECALL                         R1 R1 K0 ["FireEditableDM"]
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R6 R6 K0 ["TAG_EDITABLE_EVENT"]
        6 MOVE                             R7 R1
        7 NAMECALL                         R4 R0 K1 ["_getRemoteEvent"]
        9 CALL                             R4 3 1
       10 NAMECALL                         R5 R0 K2 ["IsUIDM"]
       12 CALL                             R5 1 1
       13 JUMPIFNOT                        R5 ; [+3]
       14 MOVE                             R5 R3
       15 LOADNIL                          R6
       16 RETURN                           R5 2
       17 GETTABLEKS                       R5 R4 K3 ["OnServerEvent"]
       19 NEWCLOSURE                       R7 P1
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R2
       23 NAMECALL                         R5 R5 K4 ["Connect"]
       25 CALL                             R5 2 0
       26 MOVE                             R5 R3
       27 NEWCLOSURE                       R6 P2
       28 CAPTURE                          VAL R4
       29 RETURN                           R5 2

PROTO_14:
        0 PREPVARARGS                      4
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 NAMECALL                         R4 R0 K0 ["_getRemoteEvent"]
        5 CALL                             R4 3 1
        6 GETTABLEKS                       R5 R0 K1 ["_logger"]
        8 LOADK                            R7 K2 ["sending event %* with args: %*"]
        9 MOVE                             R9 R2
       10 GETUPVAL                         R10 0
       11 NEWTABLE                         R12 0 0
       13 GETVARARGS                       R13 -1
       14 SETLIST                          R12 R13 -1 [1]
       16 NAMECALL                         R10 R10 K3 ["JSONEncode"]
       18 CALL                             R10 2 1
       19 NAMECALL                         R7 R7 K4 ["format"]
       21 CALL                             R7 3 1
       22 NAMECALL                         R5 R5 K5 ["log"]
       24 CALL                             R5 2 0
       25 MOVE                             R5 R3
       26 MOVE                             R6 R4
       27 GETVARARGS                       R7 -1
       28 CALL                             R5 -1 0
       29 RETURN                           R0 0

PROTO_15:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R3 0
        2 GETVARARGS                       R4 -1
        3 NAMECALL                         R1 R0 K0 ["FireClient"]
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_16:
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
       16 NEWCLOSURE                       R7 P0
       17 CAPTURE                          VAL R2
       18 GETVARARGS                       R8 -1
       19 NAMECALL                         R3 R0 K8 ["_doFire"]
       21 CALL                             R3 -1 0
       22 RETURN                           R0 0

PROTO_17:
        0 PREPVARARGS                      1
        1 GETVARARGS                       R3 -1
        2 NAMECALL                         R1 R0 K0 ["FireServer"]
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_18:
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
       16 DUPCLOSURE                       R7 K8 [PROTO_17]
       17 GETVARARGS                       R8 -1
       18 NAMECALL                         R3 R0 K9 ["_doFire"]
       20 CALL                             R3 -1 0
       21 RETURN                           R0 0

PROTO_19:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 GETVARARGS                       R5 -1
        5 NAMECALL                         R1 R1 K0 ["InvokeUIDM"]
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_21:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["_logger"]
        4 LOADK                            R2 K1 ["received invoke Executer %*"]
        5 GETUPVAL                         R4 1
        6 NAMECALL                         R2 R2 K2 ["format"]
        8 CALL                             R2 2 1
        9 NAMECALL                         R0 R0 K3 ["log"]
       11 CALL                             R0 2 0
       12 NEWTABLE                         R0 0 1
       14 GETIMPORT                        R1 K5 [pcall]
       16 GETUPVAL                         R2 2
       17 LOADNIL                          R3
       18 GETVARARGS                       R4 -1
       19 CALL                             R1 -1 -1
       20 SETLIST                          R0 R1 -1 [1]
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K0 ["_logger"]
       25 LOADK                            R3 K6 ["sending invoke Requester %* with args: %*"]
       26 GETUPVAL                         R5 1
       27 GETUPVAL                         R6 3
       28 MOVE                             R8 R0
       29 NAMECALL                         R6 R6 K7 ["JSONEncode"]
       31 CALL                             R6 2 1
       32 NAMECALL                         R3 R3 K2 ["format"]
       34 CALL                             R3 3 1
       35 NAMECALL                         R1 R1 K3 ["log"]
       37 CALL                             R1 2 0
       38 FASTCALL1                        TABLE_UNPACK R0 ; [+3]
       39 MOVE                             R2 R0
       40 GETIMPORT                        R1 K10 [table.unpack]
       42 CALL                             R1 1 -1
       43 RETURN                           R1 -1

PROTO_22:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R6 R6 K0 ["TAG_UI_INVOKE"]
        6 MOVE                             R7 R1
        7 NAMECALL                         R4 R0 K1 ["_getRemoteFunction"]
        9 CALL                             R4 3 1
       10 NAMECALL                         R5 R0 K2 ["IsEditableDM"]
       12 CALL                             R5 1 1
       13 JUMPIFNOT                        R5 ; [+4]
       14 MOVE                             R5 R3
       15 NEWCLOSURE                       R6 P1
       16 CAPTURE                          VAL R4
       17 RETURN                           R5 2
       18 NEWCLOSURE                       R5 P2
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R2
       22 CAPTURE                          UPVAL U1
       23 SETTABLEKS                       R5 R4 K3 ["OnClientInvoke"]
       25 MOVE                             R5 R3
       26 LOADNIL                          R6
       27 RETURN                           R5 2

PROTO_23:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 GETVARARGS                       R5 -1
        5 NAMECALL                         R1 R1 K0 ["InvokeEditableDM"]
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1

PROTO_24:
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

PROTO_25:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_26:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R6 R6 K0 ["TAG_EDITABLE_INVOKE"]
        6 MOVE                             R7 R1
        7 NAMECALL                         R4 R0 K1 ["_getRemoteFunction"]
        9 CALL                             R4 3 1
       10 NAMECALL                         R5 R0 K2 ["IsUIDM"]
       12 CALL                             R5 1 1
       13 JUMPIFNOT                        R5 ; [+3]
       14 MOVE                             R5 R3
       15 LOADNIL                          R6
       16 RETURN                           R5 2
       17 NEWCLOSURE                       R5 P1
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R2
       21 CAPTURE                          UPVAL U1
       22 SETTABLEKS                       R5 R4 K3 ["OnServerInvoke"]
       24 MOVE                             R5 R3
       25 NEWCLOSURE                       R6 P2
       26 CAPTURE                          VAL R4
       27 RETURN                           R5 2

PROTO_27:
        0 PREPVARARGS                      4
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 NAMECALL                         R4 R0 K0 ["_getRemoteFunction"]
        5 CALL                             R4 3 1
        6 GETTABLEKS                       R5 R0 K1 ["_logger"]
        8 LOADK                            R7 K2 ["sending invoke Executer %* with args: %*"]
        9 MOVE                             R9 R2
       10 GETUPVAL                         R10 0
       11 NEWTABLE                         R12 0 0
       13 GETVARARGS                       R13 -1
       14 SETLIST                          R12 R13 -1 [1]
       16 NAMECALL                         R10 R10 K3 ["JSONEncode"]
       18 CALL                             R10 2 1
       19 NAMECALL                         R7 R7 K4 ["format"]
       21 CALL                             R7 3 1
       22 NAMECALL                         R5 R5 K5 ["log"]
       24 CALL                             R5 2 0
       25 NEWTABLE                         R5 0 1
       27 MOVE                             R6 R3
       28 MOVE                             R7 R4
       29 GETVARARGS                       R8 -1
       30 CALL                             R6 -1 -1
       31 SETLIST                          R5 R6 -1 [1]
       33 GETTABLEKS                       R6 R0 K1 ["_logger"]
       35 LOADK                            R8 K6 ["received invoke Requester %*"]
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R8 K4 ["format"]
       39 CALL                             R8 2 1
       40 NAMECALL                         R6 R6 K5 ["log"]
       42 CALL                             R6 2 0
       43 GETIMPORT                        R6 K9 [table.remove]
       45 MOVE                             R7 R5
       46 LOADN                            R8 1
       47 CALL                             R6 2 1
       48 JUMPIF                           R6 ; [+4]
       49 GETIMPORT                        R7 K11 [error]
       51 GETTABLEN                        R8 R5 1
       52 CALL                             R7 1 0
       53 FASTCALL1                        TABLE_UNPACK R5 ; [+3]
       54 MOVE                             R8 R5
       55 GETIMPORT                        R7 K13 [table.unpack]
       57 CALL                             R7 1 -1
       58 RETURN                           R7 -1

PROTO_28:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R3 0
        2 GETVARARGS                       R4 -1
        3 NAMECALL                         R1 R0 K0 ["InvokeClient"]
        5 CALL                             R1 -1 -1
        6 RETURN                           R1 -1

PROTO_29:
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
       16 NEWCLOSURE                       R7 P0
       17 CAPTURE                          VAL R2
       18 GETVARARGS                       R8 -1
       19 NAMECALL                         R3 R0 K8 ["_doInvoke"]
       21 CALL                             R3 -1 -1
       22 RETURN                           R3 -1

PROTO_30:
        0 PREPVARARGS                      1
        1 GETVARARGS                       R3 -1
        2 NAMECALL                         R1 R0 K0 ["InvokeServer"]
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_31:
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
       16 DUPCLOSURE                       R7 K8 [PROTO_30]
       17 GETVARARGS                       R8 -1
       18 NAMECALL                         R3 R0 K9 ["_doInvoke"]
       20 CALL                             R3 -1 -1
       21 RETURN                           R3 -1

PROTO_32:
        0 GETTABLEKS                       R1 R0 K0 ["_networkFolder"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_networkFolder"]
        5 NAMECALL                         R1 R1 K1 ["Destroy"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_networkFolder"]
       11 RETURN                           R0 0

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
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["ReplicatedStorage"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R0 K11 ["Logging"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K10 [require]
       26 GETTABLEKS                       R5 R0 K12 ["Types"]
       28 CALL                             R4 1 1
       29 NEWTABLE                         R5 32 0
       31 SETTABLEKS                       R5 R5 K13 ["__index"]
       33 DUPCLOSURE                       R6 K14 [PROTO_0]
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R5
       36 SETTABLEKS                       R6 R5 K15 ["new"]
       38 DUPCLOSURE                       R6 K16 [PROTO_1]
       39 SETTABLEKS                       R6 R5 K17 ["IsUIDM"]
       41 DUPCLOSURE                       R6 K18 [PROTO_2]
       42 SETTABLEKS                       R6 R5 K19 ["IsEditableDM"]
       44 DUPCLOSURE                       R6 K20 [PROTO_3]
       45 CAPTURE                          VAL R2
       46 SETTABLEKS                       R6 R5 K21 ["_getNetworkFolder"]
       48 DUPCLOSURE                       R6 K22 [PROTO_4]
       49 SETTABLEKS                       R6 R5 K23 ["_getRemoteEvent"]
       51 DUPCLOSURE                       R6 K24 [PROTO_5]
       52 SETTABLEKS                       R6 R5 K25 ["_getRemoteFunction"]
       54 DUPCLOSURE                       R6 K26 [PROTO_9]
       55 CAPTURE                          VAL R4
       56 SETTABLEKS                       R6 R5 K27 ["OnUIDMEvent"]
       58 DUPCLOSURE                       R6 K28 [PROTO_13]
       59 CAPTURE                          VAL R4
       60 SETTABLEKS                       R6 R5 K29 ["OnEditableDMEvent"]
       62 DUPCLOSURE                       R6 K30 [PROTO_14]
       63 CAPTURE                          VAL R1
       64 SETTABLEKS                       R6 R5 K31 ["_doFire"]
       66 DUPCLOSURE                       R6 K32 [PROTO_16]
       67 CAPTURE                          VAL R4
       68 SETTABLEKS                       R6 R5 K33 ["FireUIDM"]
       70 DUPCLOSURE                       R6 K34 [PROTO_18]
       71 CAPTURE                          VAL R4
       72 SETTABLEKS                       R6 R5 K35 ["FireEditableDM"]
       74 DUPCLOSURE                       R6 K36 [PROTO_22]
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R1
       77 SETTABLEKS                       R6 R5 K37 ["OnUIDMInvoke"]
       79 DUPCLOSURE                       R6 K38 [PROTO_26]
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R1
       82 SETTABLEKS                       R6 R5 K39 ["OnEditableDMInvoke"]
       84 DUPCLOSURE                       R6 K40 [PROTO_27]
       85 CAPTURE                          VAL R1
       86 SETTABLEKS                       R6 R5 K41 ["_doInvoke"]
       88 DUPCLOSURE                       R6 K42 [PROTO_29]
       89 CAPTURE                          VAL R4
       90 SETTABLEKS                       R6 R5 K43 ["InvokeUIDM"]
       92 DUPCLOSURE                       R6 K44 [PROTO_31]
       93 CAPTURE                          VAL R4
       94 SETTABLEKS                       R6 R5 K45 ["InvokeEditableDM"]
       96 DUPCLOSURE                       R6 K46 [PROTO_32]
       97 SETTABLEKS                       R6 R5 K47 ["Destroy"]
       99 RETURN                           R5 1
