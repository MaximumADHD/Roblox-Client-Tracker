PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["current"]
        7 JUMPIFNOT                        R0 ; [+10]
        8 GETIMPORT                        R0 K3 [task.cancel]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K0 ["current"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 1
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K0 ["current"]
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETIMPORT                        R0 K2 [task.wait]
        5 LOADK                            R1 K3 [0.5]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 0
        8 GETUPVAL                         R1 1
        9 CALL                             R0 1 0
       10 GETIMPORT                        R0 K2 [task.wait]
       12 LOADK                            R1 K4 [0.02]
       13 CALL                             R0 1 0
       14 JUMPBACK                         ; [-8]
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 GETTABLEKS                       R3 R1 K1 ["KeyCode"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 0
        9 LOADNIL                          R3
       10 SETTABLEKS                       R3 R2 K0 ["current"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K0 ["current"]
       15 JUMPIFNOT                        R2 ; [+10]
       16 GETIMPORT                        R2 K4 [task.cancel]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R3 R4 K0 ["current"]
       21 CALL                             R2 1 0
       22 GETUPVAL                         R2 1
       23 LOADNIL                          R3
       24 SETTABLEKS                       R3 R2 K0 ["current"]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R3 R1 K1 ["KeyCode"]
       29 SETTABLEKS                       R3 R2 K0 ["current"]
       31 GETUPVAL                         R2 1
       32 GETIMPORT                        R3 K6 [task.spawn]
       34 NEWCLOSURE                       R4 P0
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R1
       37 CALL                             R3 1 1
       38 SETTABLEKS                       R3 R2 K0 ["current"]
       40 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.Keyboard]
        4 JUMPIFNOTEQ                      R1 R2 ; [+9]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K4 ["current"]
        9 GETTABLEKS                       R2 R0 K5 ["KeyCode"]
       11 JUMPIFEQ                         R1 R2 ; [+2]
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 0
       15 LOADNIL                          R2
       16 SETTABLEKS                       R2 R1 K4 ["current"]
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R1 R2 K4 ["current"]
       21 JUMPIFNOT                        R1 ; [+10]
       22 GETIMPORT                        R1 K8 [task.cancel]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R2 R3 K4 ["current"]
       27 CALL                             R1 1 0
       28 GETUPVAL                         R1 1
       29 LOADNIL                          R2
       30 SETTABLEKS                       R2 R1 K4 ["current"]
       32 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["current"]
        7 JUMPIFNOT                        R0 ; [+10]
        8 GETIMPORT                        R0 K3 [task.cancel]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K0 ["current"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 1
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K0 ["current"]
       18 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["useRef"]
        8 LOADNIL                          R3
        9 CALL                             R2 1 1
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R2
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K1 ["useCallback"]
       16 NEWCLOSURE                       R5 P1
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R2
       19 NEWTABLE                         R6 0 0
       21 CALL                             R4 2 1
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R5 R6 K1 ["useCallback"]
       25 NEWCLOSURE                       R6 P2
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R2
       28 NEWTABLE                         R7 0 0
       30 CALL                             R5 2 1
       31 GETUPVAL                         R7 0
       32 GETTABLEKS                       R6 R7 K2 ["useEffect"]
       34 NEWCLOSURE                       R7 P3
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 NEWTABLE                         R8 0 1
       39 MOVE                             R9 R0
       40 SETLIST                          R8 R9 1 [1]
       42 CALL                             R6 2 0
       43 DUPTABLE                         R6 K5 [{"startPressHold", "endHold"}]
       44 SETTABLEKS                       R4 R6 K3 ["startPressHold"]
       46 SETTABLEKS                       R5 R6 K4 ["endHold"]
       48 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["RpcTypes"]
       18 CALL                             R2 1 1
       19 DUPCLOSURE                       R3 K9 [PROTO_6]
       20 CAPTURE                          VAL R1
       21 RETURN                           R3 1
