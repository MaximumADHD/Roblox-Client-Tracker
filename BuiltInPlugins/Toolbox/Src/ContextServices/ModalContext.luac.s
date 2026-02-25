PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["onTooltipTriggered"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["onDropdownToggled"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["onSearchOptionsToggled"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["onSearchOptionsMouse"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["isShowingModal"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["isShowingSearchOptions"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["isMouseInSearchOptions"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["isAssetPreviewing"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["onAssetPreviewToggled"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["canHoverAsset"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_10:
        0 NEWTABLE                         R1 16 0
        2 SETTABLEKS                       R0 R1 K0 ["modalTarget"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K1 ["new"]
        7 CALL                             R2 0 1
        8 SETTABLEKS                       R2 R1 K2 ["modalStatus"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R2
       12 SETTABLEKS                       R3 R1 K3 ["onTooltipTriggered"]
       14 NEWCLOSURE                       R3 P1
       15 CAPTURE                          VAL R2
       16 SETTABLEKS                       R3 R1 K4 ["onDropdownToggled"]
       18 NEWCLOSURE                       R3 P2
       19 CAPTURE                          VAL R2
       20 SETTABLEKS                       R3 R1 K5 ["onSearchOptionsToggled"]
       22 NEWCLOSURE                       R3 P3
       23 CAPTURE                          VAL R2
       24 SETTABLEKS                       R3 R1 K6 ["onSearchOptionsMouse"]
       26 NEWCLOSURE                       R3 P4
       27 CAPTURE                          VAL R2
       28 SETTABLEKS                       R3 R1 K7 ["isShowingModal"]
       30 NEWCLOSURE                       R3 P5
       31 CAPTURE                          VAL R2
       32 SETTABLEKS                       R3 R1 K8 ["isShowingSearchOptions"]
       34 NEWCLOSURE                       R3 P6
       35 CAPTURE                          VAL R2
       36 SETTABLEKS                       R3 R1 K9 ["isMouseInSearchOptions"]
       38 NEWCLOSURE                       R3 P7
       39 CAPTURE                          VAL R2
       40 SETTABLEKS                       R3 R1 K10 ["isAssetPreviewing"]
       42 NEWCLOSURE                       R3 P8
       43 CAPTURE                          VAL R2
       44 SETTABLEKS                       R3 R1 K11 ["onAssetPreviewToggled"]
       46 NEWCLOSURE                       R3 P9
       47 CAPTURE                          VAL R2
       48 SETTABLEKS                       R3 R1 K12 ["canHoverAsset"]
       50 GETUPVAL                         R5 1
       51 FASTCALL2                        SETMETATABLE R1 R5 ; [+4]
       53 MOVE                             R4 R1
       54 GETIMPORT                        R3 K14 [setmetatable]
       56 CALL                             R3 2 0
       57 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Framework"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R4 R2 K7 ["ContextServices"]
       18 GETTABLEKS                       R3 R4 K8 ["ContextItem"]
       20 GETIMPORT                        R4 K5 [require]
       22 GETTABLEKS                       R5 R1 K9 ["Roact"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R8 R0 K10 ["Src"]
       29 GETTABLEKS                       R7 R8 K11 ["Util"]
       31 GETTABLEKS                       R6 R7 K12 ["ModalStatus"]
       33 CALL                             R5 1 1
       34 LOADK                            R8 K13 ["ModalContext"]
       35 NAMECALL                         R6 R3 K14 ["extend"]
       37 CALL                             R6 2 1
       38 DUPCLOSURE                       R7 K15 [PROTO_10]
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R6
       41 SETTABLEKS                       R7 R6 K16 ["new"]
       43 RETURN                           R6 1
