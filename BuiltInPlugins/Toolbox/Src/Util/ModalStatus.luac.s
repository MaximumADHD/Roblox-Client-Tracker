PROTO_0:
        0 DUPTABLE                         R1 K9 [{[1], ["_currentTooltipAssetId"] = 0, ["_currentTooltipTypeId"] = 0, ["_isDropdownShown"] = False, ["_isMouseInSearchOptions"] = False, ["_isSearchOptionsShown"] = False, ["_isAssetPreviewing"] = False}]
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 SETTABLEKS                       R2 R1 K0 ["_signal"]
        5 GETUPVAL                         R2 1
        6 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        8 GETIMPORT                        R0 K11 [setmetatable]
       10 CALL                             R0 2 1
       11 RETURN                           R0 1

PROTO_1:
        0 PREPVARARGS                      1
        1 GETTABLEKS                       R1 R0 K0 ["_signal"]
        3 GETVARARGS                       R3 -1
        4 NAMECALL                         R1 R1 K1 ["subscribe"]
        6 CALL                             R1 -1 -1
        7 RETURN                           R1 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_isDropdownShown"]
        2 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_isSearchOptionsShown"]
        2 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_isMouseInSearchOptions"]
        2 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_isAssetPreviewing"]
        2 RETURN                           R1 1

PROTO_6:
        0 SETTABLEKS                       R1 R0 K0 ["_currentTooltipAssetId"]
        2 SETTABLEKS                       R2 R0 K1 ["_currentTooltipTypeId"]
        4 GETTABLEKS                       R3 R0 K2 ["_signal"]
        6 NAMECALL                         R3 R3 K3 ["fire"]
        8 CALL                             R3 1 0
        9 RETURN                           R0 0

PROTO_7:
        0 SETTABLEKS                       R1 R0 K0 ["_isDropdownShown"]
        2 GETTABLEKS                       R2 R0 K1 ["_signal"]
        4 NAMECALL                         R2 R2 K2 ["fire"]
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_8:
        0 SETTABLEKS                       R1 R0 K0 ["_isSearchOptionsShown"]
        2 GETTABLEKS                       R2 R0 K1 ["_signal"]
        4 NAMECALL                         R2 R2 K2 ["fire"]
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_9:
        0 SETTABLEKS                       R1 R0 K0 ["_isMouseInSearchOptions"]
        2 GETTABLEKS                       R2 R0 K1 ["_signal"]
        4 NAMECALL                         R2 R2 K2 ["fire"]
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_10:
        0 SETTABLEKS                       R1 R0 K0 ["_isAssetPreviewing"]
        2 GETTABLEKS                       R2 R0 K1 ["_signal"]
        4 NAMECALL                         R2 R2 K2 ["fire"]
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_11:
        0 LOADB                            R3 0
        1 GETTABLEKS                       R4 R0 K0 ["_currentTooltipAssetId"]
        3 JUMPIFNOTEQ                      R4 R1 ; [+7]
        5 GETTABLEKS                       R4 R0 K1 ["_currentTooltipTypeId"]
        7 JUMPIFEQ                         R4 R2 ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 RETURN                           R3 1

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["_isDropdownShown"]
        2 NOT                              R1 R2
        3 JUMPIFNOT                        R1 ; [+10]
        4 GETTABLEKS                       R2 R0 K1 ["_isAssetPreviewing"]
        6 NOT                              R1 R2
        7 JUMPIFNOT                        R1 ; [+6]
        8 GETTABLEKS                       R2 R0 K2 ["_isSearchOptionsShown"]
       10 JUMPIFNOT                        R2 ; [+2]
       11 GETTABLEKS                       R2 R0 K3 ["_isMouseInSearchOptions"]
       13 NOT                              R1 R2
       14 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R4 R0 K0 ["_isDropdownShown"]
        2 NOT                              R3 R4
        3 JUMPIFNOT                        R3 ; [+16]
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 NAMECALL                         R3 R0 K1 ["isCurrentTooltip"]
        8 CALL                             R3 3 1
        9 JUMPIFNOT                        R3 ; [+10]
       10 GETTABLEKS                       R4 R0 K2 ["_isAssetPreviewing"]
       12 NOT                              R3 R4
       13 JUMPIFNOT                        R3 ; [+6]
       14 GETTABLEKS                       R4 R0 K3 ["_isSearchOptionsShown"]
       16 JUMPIFNOT                        R4 ; [+2]
       17 GETTABLEKS                       R4 R0 K4 ["_isMouseInSearchOptions"]
       19 NOT                              R3 R4
       20 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["createSignal"]
       17 CALL                             R1 1 1
       18 NEWTABLE                         R2 16 0
       20 SETTABLEKS                       R2 R2 K8 ["__index"]
       22 DUPCLOSURE                       R3 K9 [PROTO_0]
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R2
       25 SETTABLEKS                       R3 R2 K10 ["new"]
       27 DUPCLOSURE                       R3 K11 [PROTO_1]
       28 SETTABLEKS                       R3 R2 K12 ["subscribe"]
       30 DUPCLOSURE                       R3 K13 [PROTO_2]
       31 SETTABLEKS                       R3 R2 K14 ["isShowingModal"]
       33 DUPCLOSURE                       R3 K15 [PROTO_3]
       34 SETTABLEKS                       R3 R2 K16 ["isShowingSearchOptions"]
       36 DUPCLOSURE                       R3 K17 [PROTO_4]
       37 SETTABLEKS                       R3 R2 K18 ["isMouseInSearchOptions"]
       39 DUPCLOSURE                       R3 K19 [PROTO_5]
       40 SETTABLEKS                       R3 R2 K20 ["isAssetPreviewing"]
       42 DUPCLOSURE                       R3 K21 [PROTO_6]
       43 SETTABLEKS                       R3 R2 K22 ["onTooltipTriggered"]
       45 DUPCLOSURE                       R3 K23 [PROTO_7]
       46 SETTABLEKS                       R3 R2 K24 ["onDropdownToggled"]
       48 DUPCLOSURE                       R3 K25 [PROTO_8]
       49 SETTABLEKS                       R3 R2 K26 ["onSearchOptionsToggled"]
       51 DUPCLOSURE                       R3 K27 [PROTO_9]
       52 SETTABLEKS                       R3 R2 K28 ["onSearchOptionsMouse"]
       54 DUPCLOSURE                       R3 K29 [PROTO_10]
       55 SETTABLEKS                       R3 R2 K30 ["onAssetPreviewToggled"]
       57 DUPCLOSURE                       R3 K31 [PROTO_11]
       58 SETTABLEKS                       R3 R2 K32 ["isCurrentTooltip"]
       60 DUPCLOSURE                       R3 K33 [PROTO_12]
       61 SETTABLEKS                       R3 R2 K34 ["canHoverAsset"]
       63 DUPCLOSURE                       R3 K35 [PROTO_13]
       64 SETTABLEKS                       R3 R2 K36 ["canShowCurrentTooltip"]
       66 RETURN                           R2 1
