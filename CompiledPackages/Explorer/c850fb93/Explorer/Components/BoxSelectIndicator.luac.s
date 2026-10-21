PROTO_0:
        0 SUB                              R4 R2 R0
        1 ADD                              R3 R4 R1
        2 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["scrollingFrameRef"]
        3 GETTABLEKS                       R3 R3 K1 ["current"]
        5 JUMPIFNOTEQKNIL                  R3 ; [+5]
        7 GETIMPORT                        R4 K4 [UDim2.new]
        9 CALL                             R4 0 -1
       10 RETURN                           R4 -1
       11 GETTABLEKS                       R6 R3 K5 ["AbsolutePosition"]
       13 SUB                              R5 R0 R6
       14 GETIMPORT                        R6 K7 [Vector2.new]
       16 MOVE                             R7 R2
       17 MOVE                             R8 R1
       18 CALL                             R6 2 1
       19 ADD                              R4 R5 R6
       20 GETIMPORT                        R5 K9 [UDim2.fromOffset]
       22 GETTABLEKS                       R7 R4 K10 ["X"]
       24 GETUPVAL                         R8 1
       25 GETTABLEKS                       R8 R8 K10 ["X"]
       27 SUB                              R6 R7 R8
       28 GETTABLEKS                       R8 R4 K11 ["Y"]
       30 GETUPVAL                         R9 1
       31 GETTABLEKS                       R9 R9 K11 ["Y"]
       33 SUB                              R7 R8 R9
       34 CALL                             R5 2 -1
       35 RETURN                           R5 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R3 R0 K0 ["activeBoxSelect"]
        4 GETTABLEKS                       R3 R3 K1 ["start"]
        6 GETTABLEKS                       R3 R3 K2 ["absolutePosition"]
        8 GETTABLEKS                       R4 R0 K0 ["activeBoxSelect"]
       10 GETTABLEKS                       R4 R4 K1 ["start"]
       12 GETTABLEKS                       R4 R4 K3 ["canvasPosition"]
       14 GETTABLEKS                       R5 R0 K0 ["activeBoxSelect"]
       16 GETTABLEKS                       R5 R5 K1 ["start"]
       18 GETTABLEKS                       R5 R5 K4 ["mouseLocation"]
       20 SUB                              R6 R5 R3
       21 ADD                              R2 R6 R4
       22 GETUPVAL                         R3 1
       23 LOADK                            R4 K5 ["Frame"]
       24 NEWTABLE                         R5 4 0
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R6 R6 K6 ["Tag"]
       29 LOADK                            R7 K7 ["Explorer-BG-Action-Soft-Emphasis Explorer-Stroke-System-Emphasis Explorer-Stroke-Thick"]
       30 SETTABLE                         R7 R5 R6
       31 GETIMPORT                        R6 K10 [UDim2.fromOffset]
       33 GETTABLEKS                       R7 R2 K11 ["X"]
       35 GETTABLEKS                       R8 R2 K12 ["Y"]
       37 CALL                             R6 2 1
       38 SETTABLEKS                       R6 R5 K13 ["Position"]
       40 GETUPVAL                         R6 3
       41 NEWCLOSURE                       R7 P0
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R2
       44 MOVE                             R8 R1
       45 GETTABLEKS                       R9 R0 K14 ["scrollHeightBinding"]
       47 GETTABLEKS                       R10 R0 K15 ["scrollWidthBinding"]
       49 CALL                             R6 4 1
       50 SETTABLEKS                       R6 R5 K16 ["Size"]
       52 CALL                             R3 2 -1
       53 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["joinAndMapBindings"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Hooks"]
       25 GETTABLEKS                       R4 R4 K11 ["useBoxSelect"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Hooks"]
       32 GETTABLEKS                       R5 R5 K12 ["useMouseLocationBinding"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R1 K13 ["createElement"]
       37 DUPCLOSURE                       R6 K14 [PROTO_0]
       38 DUPCLOSURE                       R7 K15 [PROTO_2]
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R2
       43 RETURN                           R7 1
