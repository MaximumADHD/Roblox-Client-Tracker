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
        1 GETTABLEKS                       R0 R0 K0 ["current"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["useState"]
        7 GETTABLEKS                       R2 R0 K2 ["getIsConnected"]
        9 CALL                             R1 1 2
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K3 ["useRef"]
       13 LOADNIL                          R4
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K4 ["useEventConnection"]
       18 GETTABLEKS                       R5 R0 K5 ["isConnectedChanged"]
       20 NEWCLOSURE                       R6 P0
       21 CAPTURE                          VAL R3
       22 CAPTURE                          VAL R2
       23 CAPTURE                          UPVAL U3
       24 NEWTABLE                         R7 0 1
       26 MOVE                             R8 R0
       27 SETLIST                          R7 R8 1 [1]
       29 CALL                             R4 3 0
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R4 R4 K6 ["useEffect"]
       33 NEWCLOSURE                       R5 P1
       34 CAPTURE                          VAL R3
       35 NEWTABLE                         R6 0 0
       37 CALL                             R4 2 0
       38 RETURN                           R1 1

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
       37 DUPCLOSURE                       R5 K13 [PROTO_4]
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R4
       42 RETURN                           R5 1
