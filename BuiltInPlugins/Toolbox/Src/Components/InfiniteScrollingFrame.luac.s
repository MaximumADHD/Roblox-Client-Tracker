PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["scrollingFrameRef"]
        2 GETTABLEKS                       R1 R1 K1 ["current"]
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R2 R1 K2 ["CanvasPosition"]
        8 GETTABLEKS                       R2 R2 K3 ["Y"]
       10 GETTABLEKS                       R3 R1 K4 ["AbsoluteWindowSize"]
       12 GETTABLEKS                       R3 R3 K3 ["Y"]
       14 GETTABLEKS                       R4 R1 K5 ["CanvasSize"]
       16 GETTABLEKS                       R4 R4 K3 ["Y"]
       18 GETTABLEKS                       R4 R4 K6 ["Offset"]
       20 ADD                              R5 R2 R3
       21 SUB                              R6 R4 R5
       22 LOADN                            R7 0
       23 JUMPIFNOTLE                      R6 R7 ; [+4]
       25 GETTABLEKS                       R7 R0 K7 ["requestNextPage"]
       27 CALL                             R7 0 0
       28 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["checkCanvasAndRequest"]
        3 GETUPVAL                         R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["nextPageFunc"]
        5 JUMPIFNOT                        R0 ; [+12]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K1 ["nextPageFunc"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K3 ["state"]
       14 GETTABLEKS                       R2 R2 K4 ["currentPage"]
       16 ADDK                             R1 R2 K2 [1]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R2 K2 [{[1] = 1}]
        1 SETTABLEKS                       R2 R0 K3 ["state"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K4 ["createRef"]
        6 CALL                             R2 0 1
        7 SETTABLEKS                       R2 R0 K5 ["scrollingFrameRef"]
        9 DUPCLOSURE                       R2 K6 [PROTO_0]
       10 SETTABLEKS                       R2 R0 K7 ["checkCanvasAndRequest"]
       12 NEWCLOSURE                       R2 P1
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R2 R0 K8 ["onScroll"]
       16 NEWCLOSURE                       R2 P2
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R2 R0 K9 ["requestNextPage"]
       20 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R2 K1 [{"currentPage"}]
        1 GETTABLEKS                       R3 R0 K0 ["currentPage"]
        3 SETTABLEKS                       R3 R2 K0 ["currentPage"]
        5 RETURN                           R2 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["checkCanvasAndRequest"]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["checkCanvasAndRequest"]
        2 MOVE                             R4 R0
        3 CALL                             R3 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Position"]
        6 GETTABLEKS                       R4 R1 K3 ["Size"]
        8 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
       10 GETTABLEKS                       R6 R1 K5 ["layouterRef"]
       12 GETTABLEKS                       R6 R6 K6 ["current"]
       14 LOADN                            R7 900
       15 JUMPIFNOT                        R6 ; [+4]
       16 GETTABLEKS                       R8 R6 K7 ["AbsoluteContentSize"]
       18 GETTABLEKS                       R7 R8 K8 ["Y"]
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R8 R8 K9 ["createElement"]
       23 GETUPVAL                         R9 1
       24 NEWTABLE                         R10 16 0
       26 SETTABLEKS                       R3 R10 K2 ["Position"]
       28 SETTABLEKS                       R4 R10 K3 ["Size"]
       30 GETIMPORT                        R11 K12 [UDim2.new]
       32 LOADN                            R12 1
       33 LOADN                            R13 0
       34 LOADN                            R14 0
       35 MOVE                             R15 R7
       36 CALL                             R11 4 1
       37 SETTABLEKS                       R11 R10 K13 ["CanvasSize"]
       39 LOADN                            R11 1
       40 SETTABLEKS                       R11 R10 K14 ["ZIndex"]
       42 LOADN                            R11 1
       43 SETTABLEKS                       R11 R10 K15 ["BackgroundTransparency"]
       45 LOADN                            R11 0
       46 SETTABLEKS                       R11 R10 K16 ["BorderSizePixel"]
       48 LOADB                            R11 1
       49 SETTABLEKS                       R11 R10 K17 ["scrollingEnabled"]
       51 GETUPVAL                         R11 0
       52 GETTABLEKS                       R11 R11 K18 ["Ref"]
       54 GETTABLEKS                       R12 R0 K19 ["scrollingFrameRef"]
       56 SETTABLE                         R12 R10 R11
       57 GETTABLEKS                       R11 R0 K20 ["onScroll"]
       59 SETTABLEKS                       R11 R10 K20 ["onScroll"]
       61 SETTABLEKS                       R5 R10 K4 ["LayoutOrder"]
       63 GETUPVAL                         R12 0
       64 GETTABLEKS                       R12 R12 K21 ["Children"]
       66 GETTABLE                         R11 R1 R12
       67 CALL                             R8 3 -1
       68 RETURN                           R8 -1

PROTO_8:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 DUPTABLE                         R2 K1 [{"currentPage"}]
        6 GETTABLEKS                       R4 R0 K0 ["currentPage"]
        8 ORK                              R3 R4 K2 [1]
        9 SETTABLEKS                       R3 R2 K0 ["currentPage"]
       11 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["RoactRodux"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Src"]
       25 GETTABLEKS                       R5 R5 K9 ["Components"]
       27 GETTABLEKS                       R5 R5 K10 ["StyledScrollingFrame"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R2 K11 ["PureComponent"]
       32 LOADK                            R7 K12 ["InfiniteScrollingFrame"]
       33 NAMECALL                         R5 R5 K13 ["extend"]
       35 CALL                             R5 2 1
       36 DUPCLOSURE                       R6 K14 [PROTO_3]
       37 CAPTURE                          VAL R2
       38 SETTABLEKS                       R6 R5 K15 ["init"]
       40 DUPCLOSURE                       R6 K16 [PROTO_4]
       41 SETTABLEKS                       R6 R5 K17 ["getDerivedStateFromProps"]
       43 DUPCLOSURE                       R6 K18 [PROTO_5]
       44 SETTABLEKS                       R6 R5 K19 ["didMount"]
       46 DUPCLOSURE                       R6 K20 [PROTO_6]
       47 SETTABLEKS                       R6 R5 K21 ["didUpdate"]
       49 DUPCLOSURE                       R6 K22 [PROTO_7]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R4
       52 SETTABLEKS                       R6 R5 K23 ["render"]
       54 DUPCLOSURE                       R6 K24 [PROTO_8]
       55 GETTABLEKS                       R7 R3 K25 ["connect"]
       57 MOVE                             R8 R6
       58 LOADNIL                          R9
       59 CALL                             R7 2 1
       60 MOVE                             R8 R5
       61 CALL                             R7 1 -1
       62 RETURN                           R7 -1
