PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
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

PROTO_2:
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

PROTO_3:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_4:
        0 LOADK                            R3 K0 ["NotificationService"]
        1 NAMECALL                         R1 R0 K1 ["GetService"]
        3 CALL                             R1 2 1
        4 LOADNIL                          R2
        5 LOADNIL                          R3
        6 GETUPVAL                         R4 0
        7 JUMPIFNOT                        R4 ; [+9]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K2 ["useState"]
       11 GETTABLEKS                       R5 R1 K3 ["IsConnected"]
       13 CALL                             R4 1 2
       14 MOVE                             R2 R4
       15 MOVE                             R3 R5
       16 JUMP                             ; [+7]
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R4 R5 K2 ["useState"]
       20 LOADB                            R5 1
       21 CALL                             R4 1 2
       22 MOVE                             R2 R4
       23 MOVE                             R3 R5
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R4 R5 K4 ["useRef"]
       27 LOADNIL                          R5
       28 CALL                             R4 1 1
       29 GETUPVAL                         R6 2
       30 GETTABLEKS                       R5 R6 K5 ["useEventConnection"]
       32 GETTABLEKS                       R6 R1 K6 ["RobloxConnectionChanged"]
       34 NEWCLOSURE                       R7 P0
       35 CAPTURE                          VAL R4
       36 CAPTURE                          REF R3
       37 CAPTURE                          UPVAL U3
       38 NEWTABLE                         R8 0 1
       40 MOVE                             R9 R0
       41 SETLIST                          R8 R9 1 [1]
       43 CALL                             R5 3 0
       44 GETUPVAL                         R6 1
       45 GETTABLEKS                       R5 R6 K7 ["useEffect"]
       47 NEWCLOSURE                       R6 P1
       48 CAPTURE                          VAL R4
       49 NEWTABLE                         R7 0 0
       51 CALL                             R5 2 0
       52 CLOSEUPVALS                      R3
       53 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Flags"]
       27 GETTABLEKS                       R4 R5 K11 ["FIntAssistantDisconnectDelaySeconds"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K13 [game]
       32 LOADK                            R6 K14 ["NotificationServiceIsConnectedAvailable"]
       33 NAMECALL                         R4 R4 K15 ["GetEngineFeature"]
       35 CALL                             R4 2 1
       36 DUPCLOSURE                       R5 K16 [PROTO_4]
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R3
       41 RETURN                           R5 1
