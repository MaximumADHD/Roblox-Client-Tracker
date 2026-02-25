PROTO_0:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["BETWEEN_ASSETS_HORIZONTAL_PADDING"]
        3 ADD                              R3 R0 R4
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R5 R6 K1 ["ASSET_WIDTH_NO_PADDING"]
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R6 R7 K0 ["BETWEEN_ASSETS_HORIZONTAL_PADDING"]
       10 ADD                              R4 R5 R6
       11 DIV                              R2 R3 R4
       12 FASTCALL1                        MATH_FLOOR R2 ; [+2]
       13 GETIMPORT                        R1 K4 [math.floor]
       15 CALL                             R1 1 1
       16 RETURN                           R1 1

PROTO_1:
        0 LOADN                            R4 2
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R5 R6 K0 ["MAIN_VIEW_PADDING"]
        4 MUL                              R3 R4 R5
        5 SUB                              R2 R0 R3
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K1 ["SCROLLBAR_PADDING"]
        9 SUB                              R1 R2 R3
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K2 ["ASSET_WIDTH_NO_PADDING"]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K3 ["BETWEEN_ASSETS_HORIZONTAL_PADDING"]
       16 ADD                              R2 R3 R4
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K4 ["getAssetsPerRow"]
       20 MOVE                             R4 R1
       21 CALL                             R3 1 1
       22 MUL                              R5 R3 R2
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R6 R7 K3 ["BETWEEN_ASSETS_HORIZONTAL_PADDING"]
       26 SUB                              R4 R5 R6
       27 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["ASSET_HEIGHT"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K1 ["PRICE_HEIGHT"]
        7 ADD                              R1 R1 R2
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K2 ["BETWEEN_ASSETS_VERTICAL_PADDING"]
       11 ADD                              R2 R1 R3
       12 RETURN                           R2 1

PROTO_3:
        0 JUMPIFEQKN                       R0 K0 [0] ; [+3]
        2 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        4 LOADN                            R3 0
        5 RETURN                           R3 1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K1 ["getAssetsPerRow"]
        9 MOVE                             R4 R1
       10 CALL                             R3 1 1
       11 JUMPIFNOTEQKN                    R3 K0 [0] ; [+3]
       13 LOADN                            R4 0
       14 RETURN                           R4 1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K2 ["getAssetCellHeightWithPadding"]
       18 MOVE                             R5 R2
       19 CALL                             R4 1 1
       20 DIV                              R6 R0 R3
       21 FASTCALL1                        MATH_CEIL R6 ; [+2]
       22 GETIMPORT                        R5 K5 [math.ceil]
       24 CALL                             R5 1 1
       25 MUL                              R8 R4 R5
       26 GETUPVAL                         R10 1
       27 GETTABLEKS                       R9 R10 K6 ["BETWEEN_ASSETS_VERTICAL_PADDING"]
       29 SUB                              R7 R8 R9
       30 GETUPVAL                         R9 1
       31 GETTABLEKS                       R8 R9 K7 ["ASSET_VOTING_HEIGHT"]
       33 ADD                              R6 R7 R8
       34 RETURN                           R6 1

PROTO_4:
        0 NEWTABLE                         R3 0 0
        2 ORK                              R1 R1 K0 [1]
        3 MOVE                             R5 R2
        4 JUMPIF                           R5 ; [+1]
        5 LENGTH                           R5 R0
        6 LENGTH                           R6 R0
        7 FASTCALL2                        MATH_MIN R5 R6 ; [+3]
        9 GETIMPORT                        R4 K3 [math.min]
       11 CALL                             R4 2 1
       12 MOVE                             R2 R4
       13 LOADN                            R4 0
       14 JUMPIFNOTLT                      R4 R1 ; [+17]
       16 JUMPIFNOTLE                      R1 R2 ; [+15]
       18 MOVE                             R6 R1
       19 MOVE                             R4 R2
       20 LOADN                            R5 1
       21 FORNPREP                         R4
       22 LENGTH                           R8 R3
       23 ADDK                             R7 R8 K0 [1]
       24 NEWTABLE                         R8 0 2
       26 GETTABLE                         R9 R0 R6
       27 MOVE                             R10 R6
       28 SETLIST                          R8 R9 2 [1]
       30 SETTABLE                         R8 R3 R7
       31 FORNLOOP                         R4
       32 RETURN                           R3 1

PROTO_5:
        0 JUMPIF                           R0 ; [+3]
        1 LOADN                            R4 0
        2 LOADN                            R5 0
        3 RETURN                           R4 2
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K0 ["getAssetsPerRow"]
        7 MOVE                             R5 R1
        8 CALL                             R4 1 1
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R5 R6 K1 ["getAssetCellHeightWithPadding"]
       12 MOVE                             R6 R3
       13 CALL                             R5 1 1
       14 GETTABLEKS                       R8 R0 K2 ["CanvasPosition"]
       16 GETTABLEKS                       R7 R8 K3 ["Y"]
       18 SUB                              R6 R7 R2
       19 GETTABLEKS                       R8 R0 K4 ["AbsoluteSize"]
       21 GETTABLEKS                       R7 R8 K3 ["Y"]
       23 GETUPVAL                         R9 1
       24 GETTABLEKS                       R8 R9 K5 ["SCROLLING_FRAME_VIEW_PADDING"]
       26 SUB                              R6 R6 R8
       27 LOADN                            R10 2
       28 MUL                              R9 R10 R8
       29 ADD                              R7 R7 R9
       30 DIV                              R11 R6 R5
       31 FASTCALL1                        MATH_FLOOR R11 ; [+2]
       32 GETIMPORT                        R10 K8 [math.floor]
       34 CALL                             R10 1 1
       35 FASTCALL2K                       MATH_MAX R10 K9 ; [+4]
       37 LOADK                            R11 K9 [0]
       38 GETIMPORT                        R9 K11 [math.max]
       40 CALL                             R9 2 1
       41 DIV                              R12 R7 R5
       42 FASTCALL1                        MATH_CEIL R12 ; [+2]
       43 GETIMPORT                        R11 K13 [math.ceil]
       45 CALL                             R11 1 1
       46 ADD                              R10 R9 R11
       47 MUL                              R12 R9 R4
       48 ADDK                             R11 R12 K14 [1]
       49 ADDK                             R13 R10 K14 [1]
       50 MUL                              R12 R13 R4
       51 RETURN                           R11 2

PROTO_6:
        0 LOADN                            R6 0
        1 LOADN                            R7 0
        2 JUMPIF                           R4 ; [+1]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R9 0
        5 GETTABLEKS                       R8 R9 K0 ["SEARCH_TERMS_HEIGHT"]
        7 ADD                              R6 R6 R8
        8 JUMPIFNOT                        R0 ; [+8]
        9 JUMPIFNOT                        R5 ; [+7]
       10 GETUPVAL                         R9 0
       11 GETTABLEKS                       R8 R9 K1 ["MAIN_VIEW_VERTICAL_PADDING"]
       13 ADD                              R6 R6 R8
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R7 R8 K1 ["MAIN_VIEW_VERTICAL_PADDING"]
       17 GETUPVAL                         R11 0
       18 GETTABLEKS                       R10 R11 K2 ["MAIN_VIEW_NO_HEADER_HEIGHT"]
       20 FASTCALL2                        MATH_MAX R6 R10 ; [+4]
       22 MOVE                             R9 R6
       23 GETIMPORT                        R8 K5 [math.max]
       25 CALL                             R8 2 1
       26 MOVE                             R6 R8
       27 RETURN                           R6 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R6 R0 K7 ["Src"]
       20 GETTABLEKS                       R5 R6 K8 ["Util"]
       22 GETTABLEKS                       R4 R5 K9 ["Constants"]
       24 CALL                             R3 1 1
       25 NEWTABLE                         R4 8 0
       27 DUPCLOSURE                       R5 K10 [PROTO_0]
       28 CAPTURE                          VAL R3
       29 SETTABLEKS                       R5 R4 K11 ["getAssetsPerRow"]
       31 DUPCLOSURE                       R5 K12 [PROTO_1]
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R4
       34 SETTABLEKS                       R5 R4 K13 ["getSwimlaneWidth"]
       36 DUPCLOSURE                       R5 K14 [PROTO_2]
       37 CAPTURE                          VAL R3
       38 SETTABLEKS                       R5 R4 K15 ["getAssetCellHeightWithPadding"]
       40 DUPCLOSURE                       R5 K16 [PROTO_3]
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R3
       43 SETTABLEKS                       R5 R4 K17 ["calculateAssetsHeight"]
       45 DUPCLOSURE                       R5 K18 [PROTO_4]
       46 SETTABLEKS                       R5 R4 K19 ["sliceAssetsFromBounds"]
       48 DUPCLOSURE                       R5 K20 [PROTO_5]
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R3
       51 SETTABLEKS                       R5 R4 K21 ["calculateRenderBoundsForScrollingFrame"]
       53 DUPCLOSURE                       R5 K22 [PROTO_6]
       54 CAPTURE                          VAL R3
       55 SETTABLEKS                       R5 R4 K23 ["calculateMainViewHeaderHeight"]
       57 RETURN                           R4 1
