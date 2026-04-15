PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+16]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["current"]
        4 JUMPIFNOT                        R1 ; [+8]
        5 GETIMPORT                        R2 K3 [task.cancel]
        7 MOVE                             R3 R1
        8 CALL                             R2 1 0
        9 GETUPVAL                         R2 0
       10 LOADNIL                          R3
       11 SETTABLEKS                       R3 R2 K0 ["current"]
       13 GETUPVAL                         R2 1
       14 LOADB                            R3 1
       15 CALL                             R2 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R1 R2 K0 ["current"]
       20 JUMPIFNOT                        R1 ; [+1]
       21 RETURN                           R0 0
       22 GETUPVAL                         R1 2
       23 CALL                             R1 0 1
       24 GETIMPORT                        R2 K5 [task.delay]
       26 MOVE                             R3 R1
       27 NEWCLOSURE                       R4 P0
       28 CAPTURE                          UPVAL U0
       29 CAPTURE                          UPVAL U1
       30 CALL                             R2 2 1
       31 GETUPVAL                         R3 0
       32 SETTABLEKS                       R2 R3 K0 ["current"]
       34 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R4 K3 [Enum.ConnectionState.Connected]
        2 JUMPIFNOTEQ                      R1 R4 ; [+17]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K4 ["current"]
        7 JUMPIFNOT                        R4 ; [+8]
        8 GETIMPORT                        R5 K7 [task.cancel]
       10 MOVE                             R6 R4
       11 CALL                             R5 1 0
       12 GETUPVAL                         R5 0
       13 LOADNIL                          R6
       14 SETTABLEKS                       R6 R5 K4 ["current"]
       16 GETUPVAL                         R5 1
       17 LOADB                            R6 1
       18 CALL                             R5 1 0
       19 RETURN                           R0 0
       20 GETIMPORT                        R4 K9 [Enum.ConnectionState.Disconnected]
       22 JUMPIFNOTEQ                      R1 R4 ; [+18]
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R4 R5 K4 ["current"]
       27 JUMPIFNOT                        R4 ; [+1]
       28 RETURN                           R0 0
       29 GETUPVAL                         R4 2
       30 CALL                             R4 0 1
       31 GETIMPORT                        R5 K11 [task.delay]
       33 MOVE                             R6 R4
       34 NEWCLOSURE                       R7 P0
       35 CAPTURE                          UPVAL U0
       36 CAPTURE                          UPVAL U1
       37 CALL                             R5 2 1
       38 GETUPVAL                         R6 0
       39 SETTABLEKS                       R5 R6 K4 ["current"]
       41 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETIMPORT                        R1 K3 [task.cancel]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 0
        9 LOADNIL                          R2
       10 SETTABLEKS                       R2 R1 K0 ["current"]
       12 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+2]
        3 LOADNIL                          R1
        4 JUMP                             ; [+4]
        5 LOADK                            R3 K0 ["NotificationService"]
        6 NAMECALL                         R1 R0 K1 ["GetService"]
        8 CALL                             R1 2 1
        9 LOADNIL                          R2
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 GETUPVAL                         R5 0
       13 CALL                             R5 0 1
       14 JUMPIFNOT                        R5 ; [+14]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R5 R6 K2 ["get"]
       18 CALL                             R5 0 1
       19 MOVE                             R2 R5
       20 GETUPVAL                         R6 2
       21 GETTABLEKS                       R5 R6 K3 ["useState"]
       23 GETTABLEKS                       R6 R2 K4 ["getIsConnected"]
       25 CALL                             R5 1 2
       26 MOVE                             R3 R5
       27 MOVE                             R4 R6
       28 JUMP                             ; [+18]
       29 GETUPVAL                         R5 3
       30 JUMPIFNOT                        R5 ; [+9]
       31 GETUPVAL                         R6 2
       32 GETTABLEKS                       R5 R6 K3 ["useState"]
       34 GETTABLEKS                       R6 R1 K5 ["IsConnected"]
       36 CALL                             R5 1 2
       37 MOVE                             R3 R5
       38 MOVE                             R4 R6
       39 JUMP                             ; [+7]
       40 GETUPVAL                         R6 2
       41 GETTABLEKS                       R5 R6 K3 ["useState"]
       43 LOADB                            R6 1
       44 CALL                             R5 1 2
       45 MOVE                             R3 R5
       46 MOVE                             R4 R6
       47 GETUPVAL                         R6 2
       48 GETTABLEKS                       R5 R6 K6 ["useRef"]
       50 LOADNIL                          R6
       51 CALL                             R5 1 1
       52 GETUPVAL                         R6 0
       53 CALL                             R6 0 1
       54 JUMPIFNOT                        R6 ; [+16]
       55 GETUPVAL                         R7 4
       56 GETTABLEKS                       R6 R7 K7 ["useEventConnection"]
       58 GETTABLEKS                       R7 R2 K8 ["isConnectedChanged"]
       60 NEWCLOSURE                       R8 P0
       61 CAPTURE                          VAL R5
       62 CAPTURE                          REF R4
       63 CAPTURE                          UPVAL U5
       64 NEWTABLE                         R9 0 1
       66 MOVE                             R10 R2
       67 SETLIST                          R9 R10 1 [1]
       69 CALL                             R6 3 0
       70 JUMP                             ; [+15]
       71 GETUPVAL                         R7 4
       72 GETTABLEKS                       R6 R7 K7 ["useEventConnection"]
       74 GETTABLEKS                       R7 R1 K9 ["RobloxConnectionChanged"]
       76 NEWCLOSURE                       R8 P1
       77 CAPTURE                          VAL R5
       78 CAPTURE                          REF R4
       79 CAPTURE                          UPVAL U5
       80 NEWTABLE                         R9 0 1
       82 MOVE                             R10 R0
       83 SETLIST                          R9 R10 1 [1]
       85 CALL                             R6 3 0
       86 GETUPVAL                         R7 2
       87 GETTABLEKS                       R6 R7 K10 ["useEffect"]
       89 NEWCLOSURE                       R7 P2
       90 CAPTURE                          VAL R5
       91 NEWTABLE                         R8 0 0
       93 CALL                             R6 2 0
       94 CLOSEUPVALS                      R4
       95 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["NotificationManagerStore"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R4 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R5 K11 ["ReactUtils"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K6 ["Src"]
       34 GETTABLEKS                       R6 R7 K12 ["Flags"]
       36 GETTABLEKS                       R5 R6 K13 ["FFlagAssistantNotificationManager"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R8 R0 K6 ["Src"]
       43 GETTABLEKS                       R7 R8 K12 ["Flags"]
       45 GETTABLEKS                       R6 R7 K14 ["FIntAssistantDisconnectDelaySeconds"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K16 [game]
       50 LOADK                            R8 K17 ["NotificationServiceIsConnectedAvailable"]
       51 NAMECALL                         R6 R6 K18 ["GetEngineFeature"]
       53 CALL                             R6 2 1
       54 DUPCLOSURE                       R7 K19 [PROTO_6]
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R5
       61 RETURN                           R7 1
