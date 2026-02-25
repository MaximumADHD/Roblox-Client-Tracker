PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ExplorerDragThresholdPixels"]
        3 LOADN                            R3 10
        4 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isMouseDown"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+5]
        5 GETUPVAL                         R0 1
        6 NAMECALL                         R0 R0 K1 ["Disconnect"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 2
       11 GETUPVAL                         R3 3
       12 SUB                              R1 R2 R3
       13 GETTABLEKS                       R0 R1 K2 ["Magnitude"]
       15 GETIMPORT                        R1 K4 [game]
       17 LOADK                            R3 K5 ["ExplorerDragThresholdPixels"]
       18 LOADN                            R4 10
       19 NAMECALL                         R1 R1 K6 ["DefineFastInt"]
       21 CALL                             R1 3 1
       22 JUMPIFNOTLT                      R0 R1 ; [+2]
       24 RETURN                           R0 0
       25 GETUPVAL                         R0 1
       26 NAMECALL                         R0 R0 K1 ["Disconnect"]
       28 CALL                             R0 1 0
       29 GETUPVAL                         R0 4
       30 CALL                             R0 0 0
       31 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [task.defer]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getMousePosition"]
        3 CALL                             R1 0 1
        4 LOADNIL                          R2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["mouseMoved"]
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          REF R2
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R0
       13 NAMECALL                         R3 R3 K2 ["Connect"]
       15 CALL                             R3 2 1
       16 MOVE                             R2 R3
       17 NEWCLOSURE                       R3 P1
       18 CAPTURE                          REF R2
       19 CLOSEUPVALS                      R2
       20 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K2 ["useCallback"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          VAL R0
       12 NEWTABLE                         R3 0 3
       14 GETTABLEKS                       R4 R0 K3 ["mouseMoved"]
       16 GETTABLEKS                       R5 R0 K4 ["getMousePosition"]
       18 GETTABLEKS                       R6 R0 K5 ["isMouseDown"]
       20 SETLIST                          R3 R4 3 [1]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1

PROTO_6:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 3
        6 CALL                             R0 0 0
        7 GETUPVAL                         R0 4
        8 NAMECALL                         R0 R0 K0 ["Disconnect"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["UserInputState"]
        3 GETIMPORT                        R1 K3 [Enum.UserInputState.End]
        5 JUMPIFNOTEQ                      R0 R1 ; [+12]
        7 GETUPVAL                         R0 1
        8 CALL                             R0 0 0
        9 GETUPVAL                         R0 2
       10 NAMECALL                         R0 R0 K4 ["Disconnect"]
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 3
       14 JUMPIF                           R0 ; [+3]
       15 GETUPVAL                         R0 4
       16 GETUPVAL                         R1 0
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_8:
        0 LOADNIL                          R3
        1 LOADNIL                          R4
        2 LOADB                            R5 0
        3 GETUPVAL                         R6 0
        4 NEWCLOSURE                       R7 P0
        5 CAPTURE                          REF R5
        6 CAPTURE                          VAL R2
        7 CAPTURE                          VAL R0
        8 CAPTURE                          REF R3
        9 CAPTURE                          REF R4
       10 CALL                             R6 1 1
       11 MOVE                             R3 R6
       12 LOADK                            R8 K0 ["UserInputState"]
       13 NAMECALL                         R6 R0 K1 ["GetPropertyChangedSignal"]
       15 CALL                             R6 2 1
       16 NEWCLOSURE                       R8 P1
       17 CAPTURE                          VAL R0
       18 CAPTURE                          REF R3
       19 CAPTURE                          REF R4
       20 CAPTURE                          REF R5
       21 CAPTURE                          VAL R1
       22 NAMECALL                         R6 R6 K2 ["Connect"]
       24 CALL                             R6 2 1
       25 MOVE                             R4 R6
       26 CLOSEUPVALS                      R3
       27 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Components"]
       11 GETTABLEKS                       R3 R4 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R3 K8 ["MouseContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R4 K10 ["React"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_0]
       24 DUPCLOSURE                       R4 K12 [PROTO_5]
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R1
       27 DUPCLOSURE                       R5 K13 [PROTO_9]
       28 CAPTURE                          VAL R4
       29 RETURN                           R5 1
