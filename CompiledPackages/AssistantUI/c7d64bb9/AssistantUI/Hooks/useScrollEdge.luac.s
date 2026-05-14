PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K0 ["current"]
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K0 ["current"]
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 JUMPIF                           R0 ; [+1]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R1 R0 K1 ["AbsoluteCanvasSize"]
       11 GETTABLEKS                       R1 R1 K2 ["Y"]
       13 GETTABLEKS                       R2 R0 K3 ["AbsoluteSize"]
       15 GETTABLEKS                       R2 R2 K2 ["Y"]
       17 GETTABLEKS                       R3 R0 K4 ["CanvasPosition"]
       19 GETTABLEKS                       R3 R3 K2 ["Y"]
       21 JUMPIFLT                         R1 R2 ; [+2]
       23 LOADB                            R4 0 +1
       24 LOADB                            R4 1
       25 GETUPVAL                         R5 2
       26 JUMPIFNOT                        R5 ; [+21]
       27 GETUPVAL                         R6 3
       28 JUMPIFLE                         R3 R6 ; [+2]
       30 LOADB                            R5 0 +1
       31 LOADB                            R5 1
       32 JUMPIF                           R4 ; [+1]
       33 JUMPIFNOT                        R5 ; [+14]
       34 GETUPVAL                         R6 4
       35 GETTABLEKS                       R6 R6 K0 ["current"]
       37 JUMPIF                           R6 ; [+10]
       38 GETUPVAL                         R6 4
       39 LOADB                            R7 1
       40 SETTABLEKS                       R7 R6 K0 ["current"]
       42 GETIMPORT                        R6 K7 [task.spawn]
       44 NEWCLOSURE                       R7 P0
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          UPVAL U4
       47 CALL                             R6 1 0
       48 GETUPVAL                         R5 5
       49 JUMPIFNOT                        R5 ; [+37]
       50 LOADN                            R6 0
       51 SUB                              R7 R1 R2
       52 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       54 GETIMPORT                        R5 K10 [math.max]
       56 CALL                             R5 2 1
       57 GETUPVAL                         R7 3
       58 JUMPIFNOTLT                      R7 R5 ; [+8]
       60 GETUPVAL                         R8 3
       61 SUB                              R7 R5 R8
       62 JUMPIFLE                         R7 R3 ; [+2]
       64 LOADB                            R6 0 +1
       65 LOADB                            R6 1
       66 JUMP                             ; [+4]
       67 JUMPIFLE                         R5 R3 ; [+2]
       69 LOADB                            R6 0 +1
       70 LOADB                            R6 1
       71 JUMPIF                           R4 ; [+1]
       72 JUMPIFNOT                        R6 ; [+14]
       73 GETUPVAL                         R7 6
       74 GETTABLEKS                       R7 R7 K0 ["current"]
       76 JUMPIF                           R7 ; [+10]
       77 GETUPVAL                         R7 6
       78 LOADB                            R8 1
       79 SETTABLEKS                       R8 R7 K0 ["current"]
       81 GETIMPORT                        R7 K7 [task.spawn]
       83 NEWCLOSURE                       R8 P1
       84 CAPTURE                          UPVAL U5
       85 CAPTURE                          UPVAL U6
       86 CALL                             R7 1 0
       87 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["current"]
        6 JUMPIFNOT                        R1 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 1
        9 LOADB                            R2 1
       10 SETTABLEKS                       R2 R1 K0 ["current"]
       12 GETIMPORT                        R1 K3 [task.delay]
       14 LOADK                            R2 K4 [0.1]
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          UPVAL U6
       23 CALL                             R1 2 0
       24 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["current"]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K0 ["current"]
        9 JUMPIFNOT                        R0 ; [+4]
       10 JUMPIFNOT                        R1 ; [+3]
       11 MOVE                             R2 R0
       12 MOVE                             R3 R1
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["onScrolledToTop"]
        2 GETTABLEKS                       R2 R0 K1 ["onScrolledToBottom"]
        4 GETTABLEKS                       R4 R0 K3 ["triggerDistance"]
        6 ORK                              R3 R4 K2 [1]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K4 ["useRef"]
       10 LOADB                            R5 0
       11 CALL                             R4 1 1
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K4 ["useRef"]
       15 LOADB                            R6 0
       16 CALL                             R5 1 1
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R6 R6 K4 ["useRef"]
       20 LOADNIL                          R7
       21 CALL                             R6 1 1
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R7 R7 K4 ["useRef"]
       25 LOADNIL                          R8
       26 CALL                             R7 1 1
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R8 R8 K4 ["useRef"]
       30 LOADB                            R9 0
       31 CALL                             R8 1 1
       32 GETUPVAL                         R9 0
       33 GETTABLEKS                       R9 R9 K5 ["useCallback"]
       35 NEWCLOSURE                       R10 P0
       36 CAPTURE                          VAL R6
       37 CAPTURE                          VAL R8
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R5
       43 NEWTABLE                         R11 0 3
       45 MOVE                             R12 R2
       46 MOVE                             R13 R1
       47 MOVE                             R14 R3
       48 SETLIST                          R11 R12 3 [1]
       50 CALL                             R9 2 1
       51 SETTABLEKS                       R9 R7 K6 ["current"]
       53 GETTABLEKS                       R10 R0 K7 ["resetKey"]
       55 GETUPVAL                         R11 0
       56 GETTABLEKS                       R11 R11 K8 ["useEffect"]
       58 NEWCLOSURE                       R12 P1
       59 CAPTURE                          VAL R10
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R6
       62 NEWTABLE                         R13 0 1
       64 MOVE                             R14 R10
       65 SETLIST                          R13 R14 1 [1]
       67 CALL                             R11 2 0
       68 DUPTABLE                         R11 K12 [{"onCanvasPositionChanged", "onAbsoluteCanvasSizeChanged", "onAbsoluteWindowSizeChanged"}]
       69 SETTABLEKS                       R9 R11 K9 ["onCanvasPositionChanged"]
       71 SETTABLEKS                       R9 R11 K10 ["onAbsoluteCanvasSizeChanged"]
       73 SETTABLEKS                       R9 R11 K11 ["onAbsoluteWindowSizeChanged"]
       75 RETURN                           R11 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_5]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
