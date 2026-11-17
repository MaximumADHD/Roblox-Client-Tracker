PROTO_0:
        0 GETIMPORT                        R0 K2 [Vector2.new]
        2 LOADN                            R1 0
        3 LOADN                            R2 0
        4 CALL                             R0 2 1
        5 GETIMPORT                        R1 K2 [Vector2.new]
        7 LOADN                            R2 0
        8 LOADN                            R3 0
        9 CALL                             R1 2 1
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K3 ["Orientation"]
       13 JUMPIFNOTEQKS                    R2 K4 ["Vertical"] ; [+24]
       15 GETIMPORT                        R2 K2 [Vector2.new]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K5 ["Position"]
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K6 ["getYMin"]
       23 CALL                             R4 0 -1
       24 CALL                             R2 -1 1
       25 MOVE                             R0 R2
       26 GETIMPORT                        R2 K2 [Vector2.new]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K5 ["Position"]
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R4 R4 K7 ["getYMax"]
       34 CALL                             R4 0 -1
       35 CALL                             R2 -1 1
       36 MOVE                             R1 R2
       37 JUMP                             ; [+27]
       38 GETUPVAL                         R2 0
       39 GETTABLEKS                       R2 R2 K3 ["Orientation"]
       41 JUMPIFNOTEQKS                    R2 K8 ["Horizontal"] ; [+23]
       43 GETIMPORT                        R2 K2 [Vector2.new]
       45 GETUPVAL                         R3 1
       46 GETTABLEKS                       R3 R3 K9 ["getXMin"]
       48 CALL                             R3 0 1
       49 GETUPVAL                         R4 0
       50 GETTABLEKS                       R4 R4 K5 ["Position"]
       52 CALL                             R2 2 1
       53 MOVE                             R0 R2
       54 GETIMPORT                        R2 K2 [Vector2.new]
       56 GETUPVAL                         R3 1
       57 GETTABLEKS                       R3 R3 K10 ["getXMax"]
       59 CALL                             R3 0 1
       60 GETUPVAL                         R4 0
       61 GETTABLEKS                       R4 R4 K5 ["Position"]
       63 CALL                             R2 2 1
       64 MOVE                             R1 R2
       65 GETUPVAL                         R2 1
       66 GETTABLEKS                       R2 R2 K11 ["plotToAbs"]
       68 MOVE                             R3 R0
       69 GETUPVAL                         R4 0
       70 GETTABLEKS                       R4 R4 K12 ["PlotAbsoluteSize"]
       72 CALL                             R2 2 1
       73 MOVE                             R0 R2
       74 GETUPVAL                         R2 1
       75 GETTABLEKS                       R2 R2 K11 ["plotToAbs"]
       77 MOVE                             R3 R1
       78 GETUPVAL                         R4 0
       79 GETTABLEKS                       R4 R4 K12 ["PlotAbsoluteSize"]
       81 CALL                             R2 2 1
       82 MOVE                             R1 R2
       83 NEWTABLE                         R2 0 2
       85 MOVE                             R3 R0
       86 MOVE                             R4 R1
       87 SETLIST                          R2 R3 2 [1]
       89 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEN                        R2 R3 1
        2 GETUPVAL                         R4 0
        3 GETTABLEN                        R3 R4 2
        4 ADD                              R1 R2 R3
        5 DIVK                             R0 R1 K0 [2]
        6 GETIMPORT                        R1 K3 [UDim2.fromOffset]
        8 GETTABLEKS                       R2 R0 K4 ["X"]
       10 GETTABLEKS                       R3 R0 K5 ["Y"]
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEN                        R1 R2 2
        2 GETUPVAL                         R3 0
        3 GETTABLEN                        R2 R3 1
        4 SUB                              R0 R1 R2
        5 GETTABLEKS                       R0 R0 K0 ["Magnitude"]
        7 GETIMPORT                        R1 K3 [UDim2.fromOffset]
        9 LOADN                            R2 0
       10 LOADN                            R3 0
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K4 ["Orientation"]
       15 JUMPIFNOTEQKS                    R2 K5 ["Vertical"] ; [+10]
       17 GETIMPORT                        R2 K3 [UDim2.fromOffset]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K6 ["Thickness"]
       22 MOVE                             R4 R0
       23 CALL                             R2 2 1
       24 MOVE                             R1 R2
       25 RETURN                           R1 1
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R2 R2 K4 ["Orientation"]
       29 JUMPIFNOTEQKS                    R2 K7 ["Horizontal"] ; [+9]
       31 GETIMPORT                        R2 K3 [UDim2.fromOffset]
       33 MOVE                             R3 R0
       34 GETUPVAL                         R4 1
       35 GETTABLEKS                       R4 R4 K6 ["Thickness"]
       37 CALL                             R2 2 1
       38 MOVE                             R1 R2
       39 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 NEWTABLE                         R3 0 3
        6 GETTABLEKS                       R4 R0 K0 ["Position"]
        8 GETTABLEKS                       R5 R0 K1 ["Orientation"]
       10 GETTABLEKS                       R6 R0 K2 ["PlotAbsoluteSize"]
       12 SETLIST                          R3 R4 3 [1]
       14 CALL                             R1 2 1
       15 GETUPVAL                         R2 0
       16 NEWCLOSURE                       R3 P1
       17 CAPTURE                          VAL R1
       18 NEWTABLE                         R4 0 1
       20 MOVE                             R5 R1
       21 SETLIST                          R4 R5 1 [1]
       23 CALL                             R2 2 1
       24 GETUPVAL                         R3 0
       25 NEWCLOSURE                       R4 P2
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R0
       28 NEWTABLE                         R5 0 1
       30 MOVE                             R6 R1
       31 SETLIST                          R5 R6 1 [1]
       33 CALL                             R3 2 1
       34 GETUPVAL                         R4 2
       35 GETTABLEKS                       R4 R4 K3 ["createElement"]
       37 LOADK                            R5 K4 ["Frame"]
       38 GETUPVAL                         R6 3
       39 GETTABLEKS                       R7 R0 K5 ["Props"]
       41 NEWTABLE                         R8 8 0
       43 GETIMPORT                        R9 K8 [Vector2.new]
       45 LOADK                            R10 K9 [0.5]
       46 LOADK                            R11 K9 [0.5]
       47 CALL                             R9 2 1
       48 SETTABLEKS                       R9 R8 K10 ["AnchorPoint"]
       50 SETTABLEKS                       R2 R8 K0 ["Position"]
       52 SETTABLEKS                       R3 R8 K11 ["Size"]
       54 GETTABLEKS                       R11 R0 K13 ["Alpha"]
       56 JUMPIFEQKNIL                     R11 ; [+4]
       58 GETTABLEKS                       R10 R0 K13 ["Alpha"]
       60 JUMP                             ; [+1]
       61 LOADN                            R10 1
       62 SUBRK                            R9 K12 [1] R10
       63 SETTABLEKS                       R9 R8 K14 ["BackgroundTransparency"]
       65 GETUPVAL                         R9 2
       66 GETTABLEKS                       R9 R9 K15 ["Tag"]
       68 GETUPVAL                         R10 4
       69 LOADK                            R11 K16 ["GridLine"]
       70 GETTABLEKS                       R12 R0 K15 ["Tag"]
       72 CALL                             R10 2 1
       73 SETTABLE                         R10 R8 R9
       74 CALL                             R6 2 1
       75 GETTABLEKS                       R7 R0 K17 ["Children"]
       77 CALL                             R4 3 -1
       78 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioCompressorEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["joinTags"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R0 K6 ["Packages"]
       22 GETTABLEKS                       R4 R4 K10 ["Dash"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R3 K11 ["join"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R0 K6 ["Packages"]
       31 GETTABLEKS                       R6 R6 K12 ["React"]
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R6 R5 K13 ["useMemo"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R8 R0 K14 ["Src"]
       40 GETTABLEKS                       R8 R8 K15 ["Util"]
       42 GETTABLEKS                       R8 R8 K16 ["PlotUtil"]
       44 CALL                             R7 1 1
       45 DUPCLOSURE                       R8 K17 [PROTO_3]
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R7
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R2
       51 RETURN                           R8 1
