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
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["current"]
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
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K0 ["current"]
       20 JUMPIFNOT                        R1 ; [+1]
       21 RETURN                           R0 0
       22 GETUPVAL                         R1 2
       23 GETTABLEKS                       R1 R1 K4 ["FIntAssistantDisconnectDelaySeconds"]
       25 GETIMPORT                        R2 K6 [task.delay]
       27 MOVE                             R3 R1
       28 NEWCLOSURE                       R4 P0
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          UPVAL U1
       31 CALL                             R2 2 1
       32 GETUPVAL                         R3 0
       33 SETTABLEKS                       R2 R3 K0 ["current"]
       35 RETURN                           R0 0

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
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K4 ["current"]
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
       22 JUMPIFNOTEQ                      R1 R4 ; [+19]
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K4 ["current"]
       27 JUMPIFNOT                        R4 ; [+1]
       28 RETURN                           R0 0
       29 GETUPVAL                         R4 2
       30 GETTABLEKS                       R4 R4 K10 ["FIntAssistantDisconnectDelaySeconds"]
       32 GETIMPORT                        R5 K12 [task.delay]
       34 MOVE                             R6 R4
       35 NEWCLOSURE                       R7 P0
       36 CAPTURE                          UPVAL U0
       37 CAPTURE                          UPVAL U1
       38 CALL                             R5 2 1
       39 GETUPVAL                         R6 0
       40 SETTABLEKS                       R5 R6 K4 ["current"]
       42 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
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
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantNotificationManager"]
        3 JUMPIFNOT                        R2 ; [+2]
        4 LOADNIL                          R1
        5 JUMP                             ; [+4]
        6 LOADK                            R3 K1 ["NotificationService"]
        7 NAMECALL                         R1 R0 K2 ["GetService"]
        9 CALL                             R1 2 1
       10 LOADNIL                          R2
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K0 ["FFlagAssistantNotificationManager"]
       16 JUMPIFNOT                        R5 ; [+14]
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K3 ["get"]
       20 CALL                             R5 0 1
       21 MOVE                             R2 R5
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R5 R5 K4 ["useState"]
       25 GETTABLEKS                       R6 R2 K5 ["getIsConnected"]
       27 CALL                             R5 1 2
       28 MOVE                             R3 R5
       29 MOVE                             R4 R6
       30 JUMP                             ; [+18]
       31 GETUPVAL                         R5 3
       32 JUMPIFNOT                        R5 ; [+9]
       33 GETUPVAL                         R5 2
       34 GETTABLEKS                       R5 R5 K4 ["useState"]
       36 GETTABLEKS                       R6 R1 K6 ["IsConnected"]
       38 CALL                             R5 1 2
       39 MOVE                             R3 R5
       40 MOVE                             R4 R6
       41 JUMP                             ; [+7]
       42 GETUPVAL                         R5 2
       43 GETTABLEKS                       R5 R5 K4 ["useState"]
       45 LOADB                            R6 1
       46 CALL                             R5 1 2
       47 MOVE                             R3 R5
       48 MOVE                             R4 R6
       49 GETUPVAL                         R5 2
       50 GETTABLEKS                       R5 R5 K7 ["useRef"]
       52 LOADNIL                          R6
       53 CALL                             R5 1 1
       54 GETUPVAL                         R6 0
       55 GETTABLEKS                       R6 R6 K0 ["FFlagAssistantNotificationManager"]
       57 JUMPIFNOT                        R6 ; [+16]
       58 GETUPVAL                         R6 4
       59 GETTABLEKS                       R6 R6 K8 ["useEventConnection"]
       61 GETTABLEKS                       R7 R2 K9 ["isConnectedChanged"]
       63 NEWCLOSURE                       R8 P0
       64 CAPTURE                          VAL R5
       65 CAPTURE                          REF R4
       66 CAPTURE                          UPVAL U0
       67 NEWTABLE                         R9 0 1
       69 MOVE                             R10 R2
       70 SETLIST                          R9 R10 1 [1]
       72 CALL                             R6 3 0
       73 JUMP                             ; [+15]
       74 GETUPVAL                         R6 4
       75 GETTABLEKS                       R6 R6 K8 ["useEventConnection"]
       77 GETTABLEKS                       R7 R1 K10 ["RobloxConnectionChanged"]
       79 NEWCLOSURE                       R8 P1
       80 CAPTURE                          VAL R5
       81 CAPTURE                          REF R4
       82 CAPTURE                          UPVAL U0
       83 NEWTABLE                         R9 0 1
       85 MOVE                             R10 R0
       86 SETLIST                          R9 R10 1 [1]
       88 CALL                             R6 3 0
       89 GETUPVAL                         R6 2
       90 GETTABLEKS                       R6 R6 K11 ["useEffect"]
       92 NEWCLOSURE                       R7 P2
       93 CAPTURE                          VAL R5
       94 NEWTABLE                         R8 0 0
       96 CALL                             R6 2 0
       97 CLOSEUPVALS                      R4
       98 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["NotificationManagerStore"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["ReactUtils"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Flags"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K14 [game]
       39 LOADK                            R7 K15 ["NotificationServiceIsConnectedAvailable"]
       40 NAMECALL                         R5 R5 K16 ["GetEngineFeature"]
       42 CALL                             R5 2 1
       43 DUPCLOSURE                       R6 K17 [PROTO_6]
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R3
       49 RETURN                           R6 1
