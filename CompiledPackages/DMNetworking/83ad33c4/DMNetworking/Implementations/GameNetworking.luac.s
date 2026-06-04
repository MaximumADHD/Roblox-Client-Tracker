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
       14 NEWTABLE                         R1 8 0
       16 LOADK                            R2 K5 ["Game"]
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
       34 GETTABLEKS                       R2 R0 K0 ["isGuest"]
       36 SETTABLEKS                       R2 R1 K12 ["_isGuest"]
       38 GETTABLEKS                       R2 R0 K1 ["isHost"]
       40 SETTABLEKS                       R2 R1 K13 ["_isHost"]
       42 LOADNIL                          R2
       43 SETTABLEKS                       R2 R1 K14 ["_networkFolder"]
       45 GETUPVAL                         R4 1
       46 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       48 MOVE                             R3 R1
       49 GETIMPORT                        R2 K16 [setmetatable]
       51 CALL                             R2 2 0
       52 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_isGuest"]
        2 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_isHost"]
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
        0 LOADK                            R4 K0 ["%*_%*"]
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 NAMECALL                         R4 R4 K1 ["format"]
        5 CALL                             R4 3 1
        6 MOVE                             R3 R4
        7 NAMECALL                         R4 R0 K2 ["_getNetworkFolder"]
        9 CALL                             R4 1 1
       10 LOADNIL                          R5
       11 NAMECALL                         R6 R0 K3 ["IsHost"]
       13 CALL                             R6 1 1
       14 JUMPIFNOT                        R6 ; [+16]
       15 MOVE                             R8 R3
       16 NAMECALL                         R6 R4 K4 ["FindFirstChild"]
       18 CALL                             R6 2 1
       19 MOVE                             R5 R6
       20 JUMPIF                           R5 ; [+20]
       21 GETIMPORT                        R6 K7 [Instance.new]
       23 LOADK                            R7 K8 ["RemoteEvent"]
       24 CALL                             R6 1 1
       25 SETTABLEKS                       R3 R6 K9 ["Name"]
       27 SETTABLEKS                       R4 R6 K10 ["Parent"]
       29 MOVE                             R5 R6
       30 JUMP                             ; [+10]
       31 NAMECALL                         R6 R0 K11 ["IsGuest"]
       33 CALL                             R6 1 1
       34 JUMPIFNOT                        R6 ; [+6]
       35 MOVE                             R8 R3
       36 LOADN                            R9 10
       37 NAMECALL                         R6 R4 K12 ["WaitForChild"]
       39 CALL                             R6 3 1
       40 MOVE                             R5 R6
       41 LOADK                            R9 K13 ["RemoteEvent %* not found in DM_NETWORKING_REMOTES"]
       42 MOVE                             R11 R3
       43 NAMECALL                         R9 R9 K1 ["format"]
       45 CALL                             R9 2 1
       46 MOVE                             R8 R9
       47 FASTCALL2                        ASSERT R5 R8 ; [+4]
       49 MOVE                             R7 R5
       50 GETIMPORT                        R6 K15 [assert]
       52 CALL                             R6 2 0
       53 LOADK                            R9 K8 ["RemoteEvent"]
       54 NAMECALL                         R7 R5 K16 ["IsA"]
       56 CALL                             R7 2 1
       57 LOADK                            R9 K17 ["Expected RemoteEvent, got %*"]
       58 GETTABLEKS                       R11 R5 K18 ["ClassName"]
       60 NAMECALL                         R9 R9 K1 ["format"]
       62 CALL                             R9 2 1
       63 MOVE                             R8 R9
       64 FASTCALL2                        ASSERT R7 R8 ; [+3]
       66 GETIMPORT                        R6 K15 [assert]
       68 CALL                             R6 2 0
       69 RETURN                           R5 1

PROTO_5:
        0 LOADK                            R4 K0 ["%*_%*"]
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 NAMECALL                         R4 R4 K1 ["format"]
        5 CALL                             R4 3 1
        6 MOVE                             R3 R4
        7 NAMECALL                         R4 R0 K2 ["_getNetworkFolder"]
        9 CALL                             R4 1 1
       10 LOADNIL                          R5
       11 NAMECALL                         R6 R0 K3 ["IsHost"]
       13 CALL                             R6 1 1
       14 JUMPIFNOT                        R6 ; [+16]
       15 MOVE                             R8 R3
       16 NAMECALL                         R6 R4 K4 ["FindFirstChild"]
       18 CALL                             R6 2 1
       19 MOVE                             R5 R6
       20 JUMPIF                           R5 ; [+20]
       21 GETIMPORT                        R6 K7 [Instance.new]
       23 LOADK                            R7 K8 ["RemoteFunction"]
       24 CALL                             R6 1 1
       25 SETTABLEKS                       R3 R6 K9 ["Name"]
       27 SETTABLEKS                       R4 R6 K10 ["Parent"]
       29 MOVE                             R5 R6
       30 JUMP                             ; [+10]
       31 NAMECALL                         R6 R0 K11 ["IsGuest"]
       33 CALL                             R6 1 1
       34 JUMPIFNOT                        R6 ; [+6]
       35 MOVE                             R8 R3
       36 LOADN                            R9 10
       37 NAMECALL                         R6 R4 K12 ["WaitForChild"]
       39 CALL                             R6 3 1
       40 MOVE                             R5 R6
       41 LOADK                            R9 K13 ["RemoteFunction %* not found in DM_NETWORKING_REMOTES"]
       42 MOVE                             R11 R3
       43 NAMECALL                         R9 R9 K1 ["format"]
       45 CALL                             R9 2 1
       46 MOVE                             R8 R9
       47 FASTCALL2                        ASSERT R5 R8 ; [+4]
       49 MOVE                             R7 R5
       50 GETIMPORT                        R6 K15 [assert]
       52 CALL                             R6 2 0
       53 LOADK                            R9 K8 ["RemoteFunction"]
       54 NAMECALL                         R7 R5 K16 ["IsA"]
       56 CALL                             R7 2 1
       57 LOADK                            R9 K17 ["Expected RemoteFunction, got %*"]
       58 GETTABLEKS                       R11 R5 K18 ["ClassName"]
       60 NAMECALL                         R9 R9 K1 ["format"]
       62 CALL                             R9 2 1
       63 MOVE                             R8 R9
       64 FASTCALL2                        ASSERT R7 R8 ; [+3]
       66 GETIMPORT                        R6 K15 [assert]
       68 CALL                             R6 2 0
       69 RETURN                           R5 1

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
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["_logger"]
        4 LOADK                            R3 K1 ["received event %*"]
        5 GETUPVAL                         R5 1
        6 NAMECALL                         R3 R3 K2 ["format"]
        8 CALL                             R3 2 1
        9 MOVE                             R2 R3
       10 NAMECALL                         R0 R0 K3 ["log"]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R0 2
       14 LOADNIL                          R1
       15 GETVARARGS                       R2 -1
       16 CALL                             R0 -1 0
       17 RETURN                           R0 0

PROTO_9:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R6 R6 K0 ["TAG_GUEST_EVENT"]
        6 MOVE                             R7 R1
        7 NAMECALL                         R4 R0 K1 ["_getRemoteEvent"]
        9 CALL                             R4 3 1
       10 NAMECALL                         R5 R0 K2 ["IsHost"]
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
        5 NAMECALL                         R1 R1 K0 ["FireHost"]
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1

PROTO_11:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["_logger"]
        4 LOADK                            R4 K1 ["received event %*"]
        5 GETUPVAL                         R6 1
        6 NAMECALL                         R4 R4 K2 ["format"]
        8 CALL                             R4 2 1
        9 MOVE                             R3 R4
       10 NAMECALL                         R1 R1 K3 ["log"]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 2
       14 MOVE                             R2 R0
       15 GETVARARGS                       R3 -1
       16 CALL                             R1 -1 0
       17 RETURN                           R0 0

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
        4 GETTABLEKS                       R6 R6 K0 ["TAG_HOST_EVENT"]
        6 MOVE                             R7 R1
        7 NAMECALL                         R4 R0 K1 ["_getRemoteEvent"]
        9 CALL                             R4 3 1
       10 NAMECALL                         R5 R0 K2 ["IsGuest"]
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

PROTO_15:
        0 PREPVARARGS                      4
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 NAMECALL                         R4 R0 K0 ["_getRemoteEvent"]
        5 CALL                             R4 3 1
        6 NEWTABLE                         R5 0 0
        8 GETVARARGS                       R6 -1
        9 SETLIST                          R5 R6 -1 [1]
       11 GETTABLEKS                       R6 R0 K1 ["_logger"]
       13 NEWCLOSURE                       R8 P0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R5
       17 NAMECALL                         R6 R6 K2 ["log"]
       19 CALL                             R6 2 0
       20 MOVE                             R6 R3
       21 MOVE                             R7 R4
       22 GETVARARGS                       R8 -1
       23 CALL                             R6 -1 0
       24 RETURN                           R0 0

PROTO_16:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R3 0
        2 GETVARARGS                       R4 -1
        3 NAMECALL                         R1 R0 K0 ["FireClient"]
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

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
       16 NEWCLOSURE                       R7 P0
       17 CAPTURE                          VAL R2
       18 GETVARARGS                       R8 -1
       19 NAMECALL                         R3 R0 K8 ["_doFire"]
       21 CALL                             R3 -1 0
       22 RETURN                           R0 0

PROTO_18:
        0 PREPVARARGS                      1
        1 GETVARARGS                       R3 -1
        2 NAMECALL                         R1 R0 K0 ["FireServer"]
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_19:
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
       16 DUPCLOSURE                       R7 K8 [PROTO_18]
       17 GETVARARGS                       R8 -1
       18 NAMECALL                         R3 R0 K9 ["_doFire"]
       20 CALL                             R3 -1 0
       21 RETURN                           R0 0

PROTO_20:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 GETVARARGS                       R5 -1
        5 NAMECALL                         R1 R1 K0 ["InvokeGuestAsync"]
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_22:
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

PROTO_23:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["_logger"]
        4 LOADK                            R3 K1 ["received invoke Executer %*"]
        5 GETUPVAL                         R5 1
        6 NAMECALL                         R3 R3 K2 ["format"]
        8 CALL                             R3 2 1
        9 MOVE                             R2 R3
       10 NAMECALL                         R0 R0 K3 ["log"]
       12 CALL                             R0 2 0
       13 NEWTABLE                         R0 0 1
       15 GETIMPORT                        R1 K5 [pcall]
       17 GETUPVAL                         R2 2
       18 LOADNIL                          R3
       19 GETVARARGS                       R4 -1
       20 CALL                             R1 -1 -1
       21 SETLIST                          R0 R1 -1 [1]
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R1 R1 K0 ["_logger"]
       26 NEWCLOSURE                       R3 P0
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          VAL R0
       30 NAMECALL                         R1 R1 K3 ["log"]
       32 CALL                             R1 2 0
       33 FASTCALL1                        TABLE_UNPACK R0 ; [+3]
       34 MOVE                             R2 R0
       35 GETIMPORT                        R1 K8 [table.unpack]
       37 CALL                             R1 1 -1
       38 RETURN                           R1 -1

PROTO_24:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R6 R6 K0 ["TAG_GUEST_INVOKE"]
        6 MOVE                             R7 R1
        7 NAMECALL                         R4 R0 K1 ["_getRemoteFunction"]
        9 CALL                             R4 3 1
       10 NAMECALL                         R5 R0 K2 ["IsHost"]
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

PROTO_25:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 GETVARARGS                       R5 -1
        5 NAMECALL                         R1 R1 K0 ["InvokeHostAsync"]
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1

PROTO_26:
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

PROTO_27:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["_logger"]
        4 LOADK                            R4 K1 ["received invoke Executer %*"]
        5 GETUPVAL                         R6 1
        6 NAMECALL                         R4 R4 K2 ["format"]
        8 CALL                             R4 2 1
        9 MOVE                             R3 R4
       10 NAMECALL                         R1 R1 K3 ["log"]
       12 CALL                             R1 2 0
       13 NEWTABLE                         R1 0 1
       15 GETIMPORT                        R2 K5 [pcall]
       17 GETUPVAL                         R3 2
       18 MOVE                             R4 R0
       19 GETVARARGS                       R5 -1
       20 CALL                             R2 -1 -1
       21 SETLIST                          R1 R2 -1 [1]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K0 ["_logger"]
       26 NEWCLOSURE                       R4 P0
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          VAL R1
       30 NAMECALL                         R2 R2 K3 ["log"]
       32 CALL                             R2 2 0
       33 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       34 MOVE                             R3 R1
       35 GETIMPORT                        R2 K8 [table.unpack]
       37 CALL                             R2 1 -1
       38 RETURN                           R2 -1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_29:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R6 R6 K0 ["TAG_HOST_INVOKE"]
        6 MOVE                             R7 R1
        7 NAMECALL                         R4 R0 K1 ["_getRemoteFunction"]
        9 CALL                             R4 3 1
       10 NAMECALL                         R5 R0 K2 ["IsGuest"]
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

PROTO_30:
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

PROTO_31:
        0 PREPVARARGS                      4
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 NAMECALL                         R4 R0 K0 ["_getRemoteFunction"]
        5 CALL                             R4 3 1
        6 NEWTABLE                         R5 0 0
        8 GETVARARGS                       R6 -1
        9 SETLIST                          R5 R6 -1 [1]
       11 GETTABLEKS                       R6 R0 K1 ["_logger"]
       13 NEWCLOSURE                       R8 P0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R5
       17 NAMECALL                         R6 R6 K2 ["log"]
       19 CALL                             R6 2 0
       20 NEWTABLE                         R6 0 1
       22 MOVE                             R7 R3
       23 MOVE                             R8 R4
       24 GETVARARGS                       R9 -1
       25 CALL                             R7 -1 -1
       26 SETLIST                          R6 R7 -1 [1]
       28 GETTABLEKS                       R7 R0 K1 ["_logger"]
       30 LOADK                            R10 K3 ["received invoke Requester %*"]
       31 MOVE                             R12 R2
       32 NAMECALL                         R10 R10 K4 ["format"]
       34 CALL                             R10 2 1
       35 MOVE                             R9 R10
       36 NAMECALL                         R7 R7 K2 ["log"]
       38 CALL                             R7 2 0
       39 GETTABLEN                        R7 R6 1
       40 JUMPIF                           R7 ; [+5]
       41 GETIMPORT                        R7 K6 [error]
       43 GETTABLEN                        R8 R6 2
       44 LOADN                            R9 0
       45 CALL                             R7 2 0
       46 FASTCALL2K                       TABLE_UNPACK R6 K7 ; [+5]
       48 MOVE                             R8 R6
       49 LOADK                            R9 K7 [2]
       50 GETIMPORT                        R7 K10 [table.unpack]
       52 CALL                             R7 2 -1
       53 RETURN                           R7 -1

PROTO_32:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R3 0
        2 GETVARARGS                       R4 -1
        3 NAMECALL                         R1 R0 K0 ["InvokeClient"]
        5 CALL                             R1 -1 -1
        6 RETURN                           R1 -1

PROTO_33:
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
       16 NEWCLOSURE                       R7 P0
       17 CAPTURE                          VAL R2
       18 GETVARARGS                       R8 -1
       19 NAMECALL                         R3 R0 K8 ["_doInvoke"]
       21 CALL                             R3 -1 -1
       22 RETURN                           R3 -1

PROTO_34:
        0 PREPVARARGS                      1
        1 GETVARARGS                       R3 -1
        2 NAMECALL                         R1 R0 K0 ["InvokeServer"]
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_35:
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
       16 DUPCLOSURE                       R7 K8 [PROTO_34]
       17 GETVARARGS                       R8 -1
       18 NAMECALL                         R3 R0 K9 ["_doInvoke"]
       20 CALL                             R3 -1 -1
       21 RETURN                           R3 -1

PROTO_36:
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
       39 SETTABLEKS                       R6 R5 K17 ["IsGuest"]
       41 DUPCLOSURE                       R6 K18 [PROTO_2]
       42 SETTABLEKS                       R6 R5 K19 ["IsHost"]
       44 DUPCLOSURE                       R6 K20 [PROTO_3]
       45 CAPTURE                          VAL R2
       46 SETTABLEKS                       R6 R5 K21 ["_getNetworkFolder"]
       48 DUPCLOSURE                       R6 K22 [PROTO_4]
       49 SETTABLEKS                       R6 R5 K23 ["_getRemoteEvent"]
       51 DUPCLOSURE                       R6 K24 [PROTO_5]
       52 SETTABLEKS                       R6 R5 K25 ["_getRemoteFunction"]
       54 DUPCLOSURE                       R6 K26 [PROTO_9]
       55 CAPTURE                          VAL R4
       56 SETTABLEKS                       R6 R5 K27 ["OnGuestEvent"]
       58 DUPCLOSURE                       R6 K28 [PROTO_13]
       59 CAPTURE                          VAL R4
       60 SETTABLEKS                       R6 R5 K29 ["OnHostEvent"]
       62 DUPCLOSURE                       R6 K30 [PROTO_15]
       63 CAPTURE                          VAL R1
       64 SETTABLEKS                       R6 R5 K31 ["_doFire"]
       66 DUPCLOSURE                       R6 K32 [PROTO_17]
       67 CAPTURE                          VAL R4
       68 SETTABLEKS                       R6 R5 K33 ["FireGuest"]
       70 DUPCLOSURE                       R6 K34 [PROTO_19]
       71 CAPTURE                          VAL R4
       72 SETTABLEKS                       R6 R5 K35 ["FireHost"]
       74 DUPCLOSURE                       R6 K36 [PROTO_24]
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R1
       77 SETTABLEKS                       R6 R5 K37 ["OnGuestInvokeAsync"]
       79 DUPCLOSURE                       R6 K38 [PROTO_29]
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R1
       82 SETTABLEKS                       R6 R5 K39 ["OnHostInvokeAsync"]
       84 DUPCLOSURE                       R6 K40 [PROTO_31]
       85 CAPTURE                          VAL R1
       86 SETTABLEKS                       R6 R5 K41 ["_doInvoke"]
       88 DUPCLOSURE                       R6 K42 [PROTO_33]
       89 CAPTURE                          VAL R4
       90 SETTABLEKS                       R6 R5 K43 ["InvokeGuestAsync"]
       92 DUPCLOSURE                       R6 K44 [PROTO_35]
       93 CAPTURE                          VAL R4
       94 SETTABLEKS                       R6 R5 K45 ["InvokeHostAsync"]
       96 DUPCLOSURE                       R6 K46 [PROTO_36]
       97 SETTABLEKS                       R6 R5 K47 ["Destroy"]
       99 RETURN                           R5 1
