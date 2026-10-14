PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R2 R1 K1 ["AbsolutePosition"]
        7 GETTABLEKS                       R3 R1 K2 ["AbsoluteSize"]
        9 GETTABLEKS                       R6 R0 K3 ["Position"]
       11 GETTABLEKS                       R6 R6 K4 ["X"]
       13 GETTABLEKS                       R7 R2 K4 ["X"]
       15 SUB                              R5 R6 R7
       16 LOADN                            R6 0
       17 GETTABLEKS                       R7 R3 K4 ["X"]
       19 FASTCALL                         MATH_CLAMP ; [+2]
       20 GETIMPORT                        R4 K7 [math.clamp]
       22 CALL                             R4 3 1
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R5 R5 K8 ["seekTo"]
       26 GETTABLEKS                       R8 R3 K4 ["X"]
       28 DIV                              R7 R4 R8
       29 GETUPVAL                         R8 1
       30 GETTABLEKS                       R8 R8 K9 ["duration"]
       32 MUL                              R6 R7 R8
       33 CALL                             R5 1 0
       34 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+31]
        6 GETUPVAL                         R2 0
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K4 ["isPlaying"]
       10 SETTABLEKS                       R3 R2 K5 ["current"]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K4 ["isPlaying"]
       15 JUMPIFNOT                        R2 ; [+5]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K6 ["setIsPlaying"]
       19 LOADB                            R3 0
       20 CALL                             R2 1 0
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R2 R2 K7 ["onScrubStart"]
       24 JUMPIFNOT                        R2 ; [+4]
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R2 R2 K7 ["onScrubStart"]
       28 CALL                             R2 0 0
       29 GETUPVAL                         R2 2
       30 LOADB                            R3 1
       31 SETTABLEKS                       R3 R2 K5 ["current"]
       33 GETUPVAL                         R2 3
       34 MOVE                             R3 R1
       35 CALL                             R2 1 0
       36 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R1 R0 K1 ["UserInputType"]
        7 GETIMPORT                        R2 K4 [Enum.UserInputType.MouseMovement]
        9 JUMPIFNOTEQ                      R1 R2 ; [+4]
       11 GETUPVAL                         R1 1
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R1 R2 ; [+23]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K4 ["current"]
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 0
       12 LOADB                            R2 0
       13 SETTABLEKS                       R2 R1 K4 ["current"]
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K4 ["current"]
       18 JUMPIFNOT                        R1 ; [+9]
       19 GETUPVAL                         R1 1
       20 LOADB                            R2 0
       21 SETTABLEKS                       R2 R1 K4 ["current"]
       23 GETUPVAL                         R1 2
       24 GETTABLEKS                       R1 R1 K5 ["setIsPlaying"]
       26 LOADB                            R2 1
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useRef"]
       10 LOADB                            R3 0
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K2 ["useRef"]
       15 LOADB                            R4 0
       16 CALL                             R3 1 1
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K2 ["useRef"]
       20 LOADNIL                          R5
       21 CALL                             R4 1 1
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K3 ["useCallback"]
       25 NEWCLOSURE                       R6 P0
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R0
       28 NEWTABLE                         R7 0 2
       30 GETTABLEKS                       R8 R0 K4 ["duration"]
       32 GETTABLEKS                       R9 R0 K5 ["seekTo"]
       34 SETLIST                          R7 R8 2 [1]
       36 CALL                             R5 2 1
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R6 R6 K3 ["useCallback"]
       40 NEWCLOSURE                       R7 P1
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R5
       45 NEWTABLE                         R8 0 4
       47 GETTABLEKS                       R9 R0 K6 ["isPlaying"]
       49 GETTABLEKS                       R10 R0 K7 ["setIsPlaying"]
       51 GETTABLEKS                       R11 R0 K8 ["onScrubStart"]
       53 MOVE                             R12 R5
       54 SETLIST                          R8 R9 4 [1]
       56 CALL                             R6 2 1
       57 GETUPVAL                         R7 2
       58 GETTABLEKS                       R8 R1 K9 ["inputChangedSignal"]
       60 NEWCLOSURE                       R9 P2
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R5
       63 NEWTABLE                         R10 0 1
       65 MOVE                             R11 R5
       66 SETLIST                          R10 R11 1 [1]
       68 CALL                             R7 3 0
       69 GETUPVAL                         R7 2
       70 GETTABLEKS                       R8 R1 K10 ["inputEndedSignal"]
       72 NEWCLOSURE                       R9 P3
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R0
       76 NEWTABLE                         R10 0 1
       78 GETTABLEKS                       R11 R0 K7 ["setIsPlaying"]
       80 SETLIST                          R10 R11 1 [1]
       82 CALL                             R7 3 0
       83 MOVE                             R7 R4
       84 MOVE                             R8 R6
       85 RETURN                           R7 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Contexts"]
       20 GETTABLEKS                       R4 R4 K10 ["WindowInputContext"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Hooks"]
       27 GETTABLEKS                       R5 R5 K12 ["useEventConnection"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K13 [PROTO_4]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R4
       34 RETURN                           R5 1
