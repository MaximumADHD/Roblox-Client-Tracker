PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["PlotAbsoluteSize"]
        2 GETIMPORT                        R3 K3 [Vector2.new]
        4 GETTABLEKS                       R4 R0 K4 ["StartKeypoint"]
        6 GETTABLEKS                       R4 R4 K5 ["Time"]
        8 GETTABLEKS                       R6 R0 K4 ["StartKeypoint"]
       10 GETTABLEKS                       R6 R6 K7 ["Value"]
       12 SUBRK                            R5 K6 [1] R6
       13 CALL                             R3 2 1
       14 MUL                              R2 R1 R3
       15 GETIMPORT                        R4 K3 [Vector2.new]
       17 GETTABLEKS                       R5 R0 K8 ["EndKeypoint"]
       19 GETTABLEKS                       R5 R5 K5 ["Time"]
       21 GETTABLEKS                       R7 R0 K8 ["EndKeypoint"]
       23 GETTABLEKS                       R7 R7 K7 ["Value"]
       25 SUBRK                            R6 K6 [1] R7
       26 CALL                             R4 2 1
       27 MUL                              R3 R1 R4
       28 ADD                              R5 R2 R3
       29 DIVK                             R4 R5 K9 [2]
       30 SUB                              R5 R3 R2
       31 GETTABLEKS                       R7 R5 K10 ["Y"]
       33 GETTABLEKS                       R8 R5 K11 ["X"]
       35 FASTCALL2                        MATH_ATAN2 R7 R8 ; [+3]
       37 GETIMPORT                        R6 K14 [math.atan2]
       39 CALL                             R6 2 1
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R7 R7 K15 ["createElement"]
       43 LOADK                            R8 K16 ["Frame"]
       44 NEWTABLE                         R9 8 0
       46 GETIMPORT                        R10 K3 [Vector2.new]
       48 LOADK                            R11 K17 [0.5]
       49 LOADK                            R12 K17 [0.5]
       50 CALL                             R10 2 1
       51 SETTABLEKS                       R10 R9 K18 ["AnchorPoint"]
       53 GETIMPORT                        R10 K21 [UDim2.fromOffset]
       55 GETTABLEKS                       R11 R4 K11 ["X"]
       57 GETTABLEKS                       R12 R4 K10 ["Y"]
       59 CALL                             R10 2 1
       60 SETTABLEKS                       R10 R9 K22 ["Position"]
       62 FASTCALL1                        MATH_DEG R6 ; [+3]
       63 MOVE                             R11 R6
       64 GETIMPORT                        R10 K24 [math.deg]
       66 CALL                             R10 1 1
       67 SETTABLEKS                       R10 R9 K25 ["Rotation"]
       69 GETIMPORT                        R10 K21 [UDim2.fromOffset]
       71 GETTABLEKS                       R11 R5 K26 ["Magnitude"]
       73 LOADN                            R12 2
       74 CALL                             R10 2 1
       75 SETTABLEKS                       R10 R9 K27 ["Size"]
       77 GETTABLEKS                       R10 R0 K28 ["LayoutOrder"]
       79 SETTABLEKS                       R10 R9 K28 ["LayoutOrder"]
       81 GETUPVAL                         R10 0
       82 GETTABLEKS                       R10 R10 K29 ["Tag"]
       84 GETUPVAL                         R11 1
       85 LOADK                            R12 K30 ["NumberSequenceLine"]
       86 GETTABLEKS                       R14 R0 K31 ["StartKeypointSelected"]
       88 JUMPIFNOT                        R14 ; [+2]
       89 LOADK                            R13 K32 ["SelectedStart"]
       90 JUMP                             ; [+1]
       91 LOADNIL                          R13
       92 GETTABLEKS                       R15 R0 K33 ["EndKeypointSelected"]
       94 JUMPIFNOT                        R15 ; [+2]
       95 LOADK                            R14 K34 ["SelectedEnd"]
       96 JUMP                             ; [+1]
       97 LOADNIL                          R14
       98 CALL                             R11 3 1
       99 SETTABLE                         R11 R9 R10
      100 CALL                             R7 2 -1
      101 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R0 R0 K2 ["Parent"]
       13 GETIMPORT                        R1 K4 [require]
       15 GETTABLEKS                       R2 R0 K5 ["Packages"]
       17 GETTABLEKS                       R2 R2 K6 ["React"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Packages"]
       24 GETTABLEKS                       R3 R3 K7 ["Framework"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R3 R2 K8 ["Styling"]
       29 GETTABLEKS                       R3 R3 K9 ["joinTags"]
       31 GETIMPORT                        R4 K4 [require]
       33 GETTABLEKS                       R5 R0 K10 ["Src"]
       35 GETTABLEKS                       R5 R5 K11 ["Renderers"]
       37 GETTABLEKS                       R5 R5 K12 ["SequenceRenderers"]
       39 GETTABLEKS                       R5 R5 K13 ["Types"]
       41 CALL                             R4 1 1
       42 DUPCLOSURE                       R5 K14 [PROTO_0]
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R3
       45 RETURN                           R5 1
