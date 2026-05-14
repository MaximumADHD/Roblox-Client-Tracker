PROTO_0:
        0 LOADN                            R1 1
        1 JUMPIFNOTLE                      R0 R1 ; [+7]
        3 GETIMPORT                        R1 K2 [UDim.new]
        5 LOADN                            R2 1
        6 LOADN                            R3 2
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1
        9 GETIMPORT                        R1 K2 [UDim.new]
       11 MOVE                             R2 R0
       12 LOADN                            R3 2
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Height"]
        3 JUMPIFEQKN                       R0 K1 [0] ; [+6]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K2 ["Width"]
        8 JUMPIFNOTEQKN                    R0 K1 [0] ; [+9]
       10 GETIMPORT                        R0 K5 [UDim2.new]
       12 LOADN                            R1 1
       13 LOADN                            R2 2
       14 LOADN                            R3 1
       15 LOADN                            R4 2
       16 CALL                             R0 4 -1
       17 RETURN                           R0 -1
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R1 R1 K2 ["Width"]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K2 ["Width"]
       24 DIV                              R0 R1 R2
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R2 R2 K0 ["Height"]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K0 ["Height"]
       31 DIV                              R1 R2 R3
       32 GETIMPORT                        R2 K5 [UDim2.new]
       34 LOADN                            R4 1
       35 JUMPIFNOTLE                      R0 R4 ; [+7]
       37 GETIMPORT                        R3 K7 [UDim.new]
       39 LOADN                            R4 1
       40 LOADN                            R5 2
       41 CALL                             R3 2 1
       42 JUMP                             ; [+5]
       43 GETIMPORT                        R3 K7 [UDim.new]
       45 MOVE                             R4 R0
       46 LOADN                            R5 2
       47 CALL                             R3 2 1
       48 GETUPVAL                         R4 2
       49 MOVE                             R5 R1
       50 CALL                             R4 1 -1
       51 CALL                             R2 -1 -1
       52 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["Min"]
        7 GETTABLEKS                       R1 R1 K1 ["X"]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K0 ["Min"]
       12 GETTABLEKS                       R2 R2 K1 ["X"]
       14 SUB                              R0 R1 R2
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K0 ["Min"]
       18 GETTABLEKS                       R2 R2 K2 ["Y"]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K0 ["Min"]
       23 GETTABLEKS                       R3 R3 K2 ["Y"]
       25 SUB                              R1 R2 R3
       26 GETIMPORT                        R2 K5 [Vector2.new]
       28 ADDK                             R3 R0 K6 [1]
       29 ADDK                             R4 R1 K6 [1]
       30 CALL                             R2 2 1
       31 GETUPVAL                         R3 3
       32 SETTABLEKS                       R2 R3 K7 ["current"]
       34 GETUPVAL                         R3 0
       35 SETTABLEKS                       R2 R3 K8 ["CanvasPosition"]
       37 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useState"]
       10 LOADNIL                          R3
       11 CALL                             R2 1 2
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K3 ["useSignalState"]
       15 GETTABLEKS                       R5 R1 K4 ["observeViewportRect"]
       17 CALL                             R4 1 1
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R5 R5 K3 ["useSignalState"]
       21 GETTABLEKS                       R6 R1 K5 ["observeRenderedGraphRect"]
       23 CALL                             R5 1 1
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K6 ["useMemo"]
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R5
       30 CAPTURE                          UPVAL U3
       31 NEWTABLE                         R8 0 2
       33 MOVE                             R9 R5
       34 MOVE                             R10 R4
       35 SETLIST                          R8 R9 2 [1]
       37 CALL                             R6 2 1
       38 GETUPVAL                         R7 0
       39 GETTABLEKS                       R7 R7 K7 ["useRef"]
       41 LOADNIL                          R8
       42 CALL                             R7 1 1
       43 GETUPVAL                         R8 0
       44 GETTABLEKS                       R8 R8 K8 ["useEffect"]
       46 NEWCLOSURE                       R9 P1
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R7
       51 NEWTABLE                         R10 0 3
       53 MOVE                             R11 R2
       54 MOVE                             R12 R5
       55 MOVE                             R13 R4
       56 SETLIST                          R10 R11 3 [1]
       58 CALL                             R8 2 0
       59 GETUPVAL                         R8 0
       60 GETTABLEKS                       R8 R8 K9 ["createElement"]
       62 GETUPVAL                         R9 4
       63 GETTABLEKS                       R9 R9 K10 ["ScrollView"]
       65 DUPTABLE                         R10 K15 [{"tag", "scroll", "scrollingFrameRef", "isDisabled"}]
       66 LOADK                            R11 K16 ["bg-transparency-100 size-full-full"]
       67 SETTABLEKS                       R11 R10 K11 ["tag"]
       69 DUPTABLE                         R11 K20 [{"CanvasSize", "scrollBarVisibility", "ScrollingDirection"}]
       70 SETTABLEKS                       R6 R11 K17 ["CanvasSize"]
       72 GETUPVAL                         R12 4
       73 GETTABLEKS                       R12 R12 K21 ["Enums"]
       75 GETTABLEKS                       R12 R12 K22 ["Visibility"]
       77 GETTABLEKS                       R12 R12 K23 ["Always"]
       79 SETTABLEKS                       R12 R11 K18 ["scrollBarVisibility"]
       81 GETIMPORT                        R12 K26 [Enum.ScrollingDirection.XY]
       83 SETTABLEKS                       R12 R11 K19 ["ScrollingDirection"]
       85 SETTABLEKS                       R11 R10 K12 ["scroll"]
       87 SETTABLEKS                       R3 R10 K13 ["scrollingFrameRef"]
       89 LOADB                            R11 1
       90 SETTABLEKS                       R11 R10 K14 ["isDisabled"]
       92 CALL                             R8 2 -1
       93 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["SignalsReact"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Contexts"]
       32 GETTABLEKS                       R5 R5 K11 ["ViewportRectContext"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K12 [PROTO_0]
       36 DUPCLOSURE                       R6 K13 [PROTO_3]
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R1
       42 RETURN                           R6 1
