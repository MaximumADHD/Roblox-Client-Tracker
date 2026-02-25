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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["viewportRect"]
        3 GETTABLEKS                       R0 R1 K1 ["Height"]
        5 JUMPIFEQKN                       R0 K2 [0] ; [+8]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K0 ["viewportRect"]
       10 GETTABLEKS                       R0 R1 K3 ["Width"]
       12 JUMPIFNOTEQKN                    R0 K2 [0] ; [+9]
       14 GETIMPORT                        R0 K6 [UDim2.new]
       16 LOADN                            R1 1
       17 LOADN                            R2 2
       18 LOADN                            R3 1
       19 LOADN                            R4 2
       20 CALL                             R0 4 -1
       21 RETURN                           R0 -1
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R2 R3 K7 ["renderedGraphRect"]
       25 GETTABLEKS                       R1 R2 K3 ["Width"]
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R3 R4 K0 ["viewportRect"]
       30 GETTABLEKS                       R2 R3 K3 ["Width"]
       32 DIV                              R0 R1 R2
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R3 R4 K7 ["renderedGraphRect"]
       36 GETTABLEKS                       R2 R3 K1 ["Height"]
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R4 R5 K0 ["viewportRect"]
       41 GETTABLEKS                       R3 R4 K1 ["Height"]
       43 DIV                              R1 R2 R3
       44 GETIMPORT                        R2 K6 [UDim2.new]
       46 LOADN                            R4 1
       47 JUMPIFNOTLE                      R0 R4 ; [+7]
       49 GETIMPORT                        R3 K9 [UDim.new]
       51 LOADN                            R4 1
       52 LOADN                            R5 2
       53 CALL                             R3 2 1
       54 JUMP                             ; [+5]
       55 GETIMPORT                        R3 K9 [UDim.new]
       57 MOVE                             R4 R0
       58 LOADN                            R5 2
       59 CALL                             R3 2 1
       60 GETUPVAL                         R4 1
       61 MOVE                             R5 R1
       62 CALL                             R4 1 -1
       63 CALL                             R2 -1 -1
       64 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K0 ["viewportRect"]
        7 GETTABLEKS                       R2 R3 K1 ["Min"]
        9 GETTABLEKS                       R1 R2 K2 ["X"]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R4 R5 K3 ["renderedGraphRect"]
       14 GETTABLEKS                       R3 R4 K1 ["Min"]
       16 GETTABLEKS                       R2 R3 K2 ["X"]
       18 SUB                              R0 R1 R2
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R4 R5 K3 ["renderedGraphRect"]
       22 GETTABLEKS                       R3 R4 K1 ["Min"]
       24 GETTABLEKS                       R2 R3 K4 ["Y"]
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R5 R6 K0 ["viewportRect"]
       29 GETTABLEKS                       R4 R5 K1 ["Min"]
       31 GETTABLEKS                       R3 R4 K4 ["Y"]
       33 SUB                              R1 R2 R3
       34 GETIMPORT                        R2 K7 [Vector2.new]
       36 ADDK                             R3 R0 K8 [1]
       37 ADDK                             R4 R1 K8 [1]
       38 CALL                             R2 2 1
       39 GETUPVAL                         R3 2
       40 SETTABLEKS                       R2 R3 K9 ["current"]
       42 GETUPVAL                         R3 0
       43 SETTABLEKS                       R2 R3 K10 ["CanvasPosition"]
       45 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["useState"]
       10 LOADNIL                          R3
       11 CALL                             R2 1 2
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K3 ["useMemo"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U2
       18 NEWTABLE                         R6 0 2
       20 GETTABLEKS                       R7 R1 K4 ["renderedGraphRect"]
       22 GETTABLEKS                       R8 R1 K5 ["viewportRect"]
       24 SETLIST                          R6 R7 2 [1]
       26 CALL                             R4 2 1
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R5 R6 K6 ["useRef"]
       30 LOADNIL                          R6
       31 CALL                             R5 1 1
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R6 R7 K7 ["useEffect"]
       35 NEWCLOSURE                       R7 P1
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R5
       39 NEWTABLE                         R8 0 3
       41 MOVE                             R9 R2
       42 GETTABLEKS                       R10 R1 K4 ["renderedGraphRect"]
       44 GETTABLEKS                       R11 R1 K5 ["viewportRect"]
       46 SETLIST                          R8 R9 3 [1]
       48 CALL                             R6 2 0
       49 GETUPVAL                         R7 0
       50 GETTABLEKS                       R6 R7 K8 ["createElement"]
       52 GETUPVAL                         R8 3
       53 GETTABLEKS                       R7 R8 K9 ["ScrollView"]
       55 DUPTABLE                         R8 K14 [{"tag", "scroll", "scrollingFrameRef", "isDisabled"}]
       56 LOADK                            R9 K15 ["bg-transparency-100 size-full-full"]
       57 SETTABLEKS                       R9 R8 K10 ["tag"]
       59 DUPTABLE                         R9 K19 [{"CanvasSize", "scrollBarVisibility", "ScrollingDirection"}]
       60 SETTABLEKS                       R4 R9 K16 ["CanvasSize"]
       62 GETUPVAL                         R13 3
       63 GETTABLEKS                       R12 R13 K20 ["Enums"]
       65 GETTABLEKS                       R11 R12 K21 ["Visibility"]
       67 GETTABLEKS                       R10 R11 K22 ["Always"]
       69 SETTABLEKS                       R10 R9 K17 ["scrollBarVisibility"]
       71 GETIMPORT                        R10 K25 [Enum.ScrollingDirection.XY]
       73 SETTABLEKS                       R10 R9 K18 ["ScrollingDirection"]
       75 SETTABLEKS                       R9 R8 K11 ["scroll"]
       77 SETTABLEKS                       R3 R8 K12 ["scrollingFrameRef"]
       79 LOADB                            R9 1
       80 SETTABLEKS                       R9 R8 K13 ["isDisabled"]
       82 CALL                             R6 2 -1
       83 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Contexts"]
       25 GETTABLEKS                       R4 R5 K10 ["ViewportRectContext"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K11 [PROTO_0]
       29 DUPCLOSURE                       R5 K12 [PROTO_3]
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R1
       34 RETURN                           R5 1
