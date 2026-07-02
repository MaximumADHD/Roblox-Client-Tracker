PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["props"]
        3 GETTABLEKS                       R3 R3 K1 ["onAssetHovered"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K0 ["props"]
        8 GETTABLEKS                       R4 R4 K2 ["assetId"]
       10 CALL                             R3 1 0
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K3 ["showVotes"]
       14 JUMPIFNOT                        R3 ; [+32]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K4 ["getCategoryByName"]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K0 ["props"]
       21 GETTABLEKS                       R4 R4 K5 ["categoryName"]
       23 CALL                             R3 1 1
       24 GETTABLEKS                       R3 R3 K6 ["assetType"]
       26 GETUPVAL                         R4 2
       27 GETTABLEKS                       R4 R4 K7 ["getVote"]
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K0 ["props"]
       32 GETTABLEKS                       R5 R5 K8 ["Network"]
       34 GETTABLEKS                       R5 R5 K9 ["networkInterface"]
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R6 R6 K0 ["props"]
       39 GETTABLEKS                       R6 R6 K2 ["assetId"]
       41 GETUPVAL                         R7 1
       42 GETTABLEKS                       R7 R7 K10 ["getAssetTypeByNumber"]
       44 MOVE                             R8 R3
       45 CALL                             R7 1 -1
       46 CALL                             R4 -1 0
       47 GETUPVAL                         R3 0
       48 GETTABLEKS                       R3 R3 K0 ["props"]
       50 GETTABLEKS                       R3 R3 K11 ["assetData"]
       52 GETTABLEKS                       R4 R3 K12 ["Asset"]
       54 LOADB                            R5 0
       55 GETTABLEKS                       R6 R4 K13 ["TypeId"]
       57 GETIMPORT                        R7 K17 [Enum.AssetType.Plugin]
       59 GETTABLEKS                       R7 R7 K18 ["Value"]
       61 JUMPIFNOTEQ                      R6 R7 ; [+5]
       63 GETTABLEKS                       R5 R3 K19 ["Creator"]
       65 GETTABLEKS                       R5 R5 K20 ["IsVerifiedCreator"]
       67 JUMPIFNOT                        R5 ; [+16]
       68 GETUPVAL                         R6 2
       69 GETTABLEKS                       R6 R6 K21 ["getAssetMediaIds"]
       71 GETUPVAL                         R7 0
       72 GETTABLEKS                       R7 R7 K0 ["props"]
       74 GETTABLEKS                       R7 R7 K8 ["Network"]
       76 GETTABLEKS                       R7 R7 K9 ["networkInterface"]
       78 GETUPVAL                         R8 0
       79 GETTABLEKS                       R8 R8 K0 ["props"]
       81 GETTABLEKS                       R8 R8 K2 ["assetId"]
       83 CALL                             R6 2 0
       84 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["props"]
        3 GETTABLEKS                       R3 R3 K1 ["onAssetHoverEnded"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K0 ["props"]
        8 GETTABLEKS                       R4 R4 K2 ["assetId"]
       10 CALL                             R3 1 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.Focus]
        4 JUMPIFNOTEQ                      R2 R3 ; [+12]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["props"]
        9 GETTABLEKS                       R2 R2 K5 ["onAssetHoverEnded"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K4 ["props"]
       14 GETTABLEKS                       R3 R3 K6 ["assetId"]
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["props"]
        3 GETTABLEKS                       R3 R3 K1 ["onAssetHovered"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K0 ["props"]
        8 GETTABLEKS                       R4 R4 K2 ["assetId"]
       10 CALL                             R3 1 0
       11 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["assetData"]
        5 GETTABLEKS                       R2 R0 K2 ["ownsAsset"]
        7 JUMPIFNOT                        R1 ; [+43]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["shouldShowPrices"]
       11 GETTABLEKS                       R4 R0 K4 ["categoryName"]
       13 CALL                             R3 1 1
       14 GETTABLEKS                       R5 R1 K5 ["Product"]
       16 JUMPIFNOT                        R5 ; [+5]
       17 GETTABLEKS                       R4 R1 K5 ["Product"]
       19 GETTABLEKS                       R4 R4 K6 ["Price"]
       21 JUMPIF                           R4 ; [+1]
       22 LOADN                            R4 0
       23 GETTABLEKS                       R6 R1 K7 ["FiatProduct"]
       25 JUMPIFNOT                        R6 ; [+14]
       26 GETTABLEKS                       R6 R1 K7 ["FiatProduct"]
       28 GETTABLEKS                       R6 R6 K8 ["PurchasePrice"]
       30 JUMPIFNOT                        R6 ; [+9]
       31 GETUPVAL                         R5 2
       32 GETTABLEKS                       R5 R5 K9 ["isFree"]
       34 GETTABLEKS                       R6 R1 K7 ["FiatProduct"]
       36 GETTABLEKS                       R6 R6 K8 ["PurchasePrice"]
       38 CALL                             R5 1 1
       39 JUMP                             ; [+4]
       40 JUMPIFEQKN                       R4 K10 [0] ; [+2]
       42 LOADB                            R5 0 +1
       43 LOADB                            R5 1
       44 AND                              R6 R3 R2
       45 GETTABLEKS                       R7 R0 K11 ["canInsertAsset"]
       47 CALL                             R7 0 1
       48 JUMPIFNOT                        R7 ; [+1]
       49 OR                               R7 R6 R5
       50 RETURN                           R7 1
       51 GETTABLEKS                       R3 R0 K11 ["canInsertAsset"]
       53 CALL                             R3 0 -1
       54 RETURN                           R3 -1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["canInsertAsset"]
        3 CALL                             R3 0 1
        4 JUMPIF                           R3 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["props"]
        9 GETTABLEKS                       R3 R3 K2 ["assetData"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K1 ["props"]
       14 GETTABLEKS                       R4 R4 K3 ["swimlaneCategory"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K1 ["props"]
       19 GETTABLEKS                       R5 R5 K4 ["tryInsert"]
       21 MOVE                             R6 R3
       22 LOADB                            R7 1
       23 LOADNIL                          R8
       24 MOVE                             R9 R4
       25 CALL                             R5 4 0
       26 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["canInsertAsset"]
        3 CALL                             R3 0 1
        4 JUMPIF                           R3 ; [+8]
        5 GETUPVAL                         R3 1
        6 CALL                             R3 0 1
        7 JUMPIFNOT                        R3 ; [+4]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K1 ["onAssetPreviewButtonClicked"]
       11 CALL                             R3 0 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K2 ["props"]
       16 GETTABLEKS                       R3 R3 K3 ["assetData"]
       18 GETTABLEKS                       R4 R3 K4 ["Asset"]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K2 ["props"]
       23 GETTABLEKS                       R5 R5 K5 ["swimlaneCategory"]
       25 GETTABLEKS                       R6 R4 K6 ["TypeId"]
       27 GETIMPORT                        R7 K10 [Enum.AssetType.Plugin]
       29 GETTABLEKS                       R7 R7 K11 ["Value"]
       31 JUMPIFNOTEQ                      R6 R7 ; [+6]
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K1 ["onAssetPreviewButtonClicked"]
       36 CALL                             R6 0 0
       37 RETURN                           R0 0
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R6 R6 K2 ["props"]
       41 GETTABLEKS                       R6 R6 K12 ["tryInsert"]
       43 MOVE                             R7 R3
       44 LOADB                            R8 0
       45 LOADNIL                          R9
       46 MOVE                             R10 R5
       47 CALL                             R6 4 0
       48 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["assetData"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["swimlaneCategory"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["props"]
       13 GETTABLEKS                       R2 R2 K3 ["onAssetPreviewButtonClicked"]
       15 MOVE                             R3 R0
       16 MOVE                             R4 R1
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["assetData"]
        5 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        7 NAMECALL                         R3 R3 K3 ["get"]
        9 CALL                             R3 1 1
       10 GETTABLEKS                       R4 R1 K4 ["tryOpenAssetConfig"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K0 ["props"]
       15 GETTABLEKS                       R5 R5 K5 ["getPageInfoAnalyticsContextInfo"]
       17 MOVE                             R6 R5
       18 CALL                             R6 0 1
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R7 R7 K0 ["props"]
       22 GETTABLEKS                       R7 R7 K6 ["tryCreateContextMenu"]
       24 MOVE                             R8 R2
       25 MOVE                             R9 R0
       26 MOVE                             R10 R3
       27 MOVE                             R11 R4
       28 MOVE                             R12 R6
       29 CALL                             R7 5 0
       30 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["assetData"]
        5 GETTABLEKS                       R2 R0 K2 ["AbsolutePosition"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["props"]
       10 GETTABLEKS                       R3 R3 K3 ["categoryName"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K4 ["getAssetSize"]
       15 MOVE                             R5 R3
       16 CALL                             R4 1 1
       17 LOADB                            R6 0
       18 GETTABLEKS                       R7 R0 K5 ["AnchorPoint"]
       20 GETTABLEKS                       R7 R7 K6 ["X"]
       22 JUMPIFNOTEQKN                    R7 K7 [0] ; [+9]
       24 GETTABLEKS                       R7 R0 K5 ["AnchorPoint"]
       26 GETTABLEKS                       R7 R7 K8 ["Y"]
       28 JUMPIFEQKN                       R7 K7 [0] ; [+2]
       30 LOADB                            R6 0 +1
       31 LOADB                            R6 1
       32 FASTCALL2K                       ASSERT R6 K9 ; [+4]
       34 LOADK                            R7 K9 ["self.onAbsolutePositionChange needs the asset AnchorPoint to be 0,0 to calculate the scrollingBounds."]
       35 GETIMPORT                        R5 K11 [assert]
       37 CALL                             R5 2 0
       38 GETIMPORT                        R5 K14 [Vector2.new]
       40 GETTABLEKS                       R6 R4 K6 ["X"]
       42 GETTABLEKS                       R6 R6 K15 ["Offset"]
       44 GETTABLEKS                       R7 R4 K8 ["Y"]
       46 GETTABLEKS                       R7 R7 K15 ["Offset"]
       48 CALL                             R5 2 1
       49 GETUPVAL                         R6 0
       50 GETTABLEKS                       R6 R6 K0 ["props"]
       52 GETTABLEKS                       R6 R6 K16 ["parentSize"]
       54 GETUPVAL                         R7 0
       55 GETTABLEKS                       R7 R7 K0 ["props"]
       57 GETTABLEKS                       R7 R7 K17 ["parentAbsolutePosition"]
       59 LOADNIL                          R8
       60 GETUPVAL                         R9 0
       61 GETTABLEKS                       R9 R9 K0 ["props"]
       63 GETTABLEKS                       R9 R9 K18 ["swimlaneCategory"]
       65 GETUPVAL                         R10 0
       66 GETTABLEKS                       R10 R10 K0 ["props"]
       68 GETTABLEKS                       R10 R10 K19 ["NavigationContext"]
       70 NAMECALL                         R10 R10 K20 ["get"]
       72 CALL                             R10 1 1
       73 GETUPVAL                         R11 0
       74 GETTABLEKS                       R11 R11 K0 ["props"]
       76 GETTABLEKS                       R11 R11 K21 ["AssetAnalytics"]
       78 NAMECALL                         R11 R11 K20 ["get"]
       80 CALL                             R11 1 1
       81 GETTABLEKS                       R12 R11 K22 ["getNavigationContext"]
       83 MOVE                             R13 R10
       84 MOVE                             R14 R9
       85 CALL                             R12 2 1
       86 MOVE                             R8 R12
       87 GETUPVAL                         R12 0
       88 GETUPVAL                         R13 0
       89 GETTABLEKS                       R13 R13 K0 ["props"]
       91 GETTABLEKS                       R13 R13 K23 ["logImpression"]
       93 MOVE                             R14 R1
       94 GETUPVAL                         R15 0
       95 GETTABLEKS                       R15 R15 K24 ["wasAssetBoundsWithinScrollingBounds"]
       97 MOVE                             R16 R5
       98 MOVE                             R17 R2
       99 MOVE                             R18 R6
      100 MOVE                             R19 R7
      101 MOVE                             R20 R8
      102 CALL                             R13 7 1
      103 SETTABLEKS                       R13 R12 K24 ["wasAssetBoundsWithinScrollingBounds"]
      105 RETURN                           R0 0

PROTO_13:
        0 LOADB                            R2 0
        1 SETTABLEKS                       R2 R0 K0 ["wasAssetBoundsWithinScrollingBounds"]
        3 LOADB                            R2 0
        4 SETTABLEKS                       R2 R0 K1 ["hasInitiated"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["createRef"]
        9 CALL                             R2 0 1
       10 SETTABLEKS                       R2 R0 K3 ["ref"]
       12 DUPTABLE                         R2 K6 [{["hoverPosition"] = }]
       13 SETTABLEKS                       R2 R0 K7 ["state"]
       15 GETTABLEKS                       R2 R1 K8 ["canInsertAsset"]
       17 LOADB                            R3 0
       18 SETTABLEKS                       R3 R0 K9 ["showVotes"]
       20 NEWCLOSURE                       R3 P0
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          VAL R1
       24 SETTABLEKS                       R3 R0 K10 ["onMouseEntered"]
       26 NEWCLOSURE                       R3 P1
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R3 R0 K11 ["onMouseLeave"]
       30 NEWCLOSURE                       R3 P2
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R3 R0 K12 ["onInputEnded"]
       34 NEWCLOSURE                       R3 P3
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R3 R0 K13 ["onMouseMoved"]
       38 NEWCLOSURE                       R3 P4
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U1
       41 CAPTURE                          UPVAL U2
       42 SETTABLEKS                       R3 R0 K8 ["canInsertAsset"]
       44 NEWCLOSURE                       R3 P5
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R3 R0 K14 ["onDragStart"]
       48 NEWCLOSURE                       R3 P6
       49 CAPTURE                          VAL R0
       50 CAPTURE                          UPVAL U3
       51 SETTABLEKS                       R3 R0 K15 ["onClick"]
       53 NEWCLOSURE                       R3 P7
       54 CAPTURE                          VAL R0
       55 SETTABLEKS                       R3 R0 K16 ["onAssetPreviewButtonClicked"]
       57 NEWCLOSURE                       R3 P8
       58 CAPTURE                          VAL R0
       59 SETTABLEKS                       R3 R0 K17 ["tryCreateContextMenu"]
       61 NEWCLOSURE                       R3 P9
       62 CAPTURE                          VAL R0
       63 CAPTURE                          UPVAL U4
       64 SETTABLEKS                       R3 R0 K18 ["onAbsolutePositionChange"]
       66 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["assetData"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["assetId"]
        8 GETTABLEKS                       R3 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R3 K3 ["getOwnsAsset"]
       12 GETTABLEKS                       R4 R0 K0 ["props"]
       14 GETTABLEKS                       R4 R4 K4 ["Network"]
       16 GETTABLEKS                       R4 R4 K5 ["networkInterface"]
       18 MOVE                             R5 R2
       19 CALL                             R3 2 0
       20 GETTABLEKS                       R3 R0 K0 ["props"]
       22 GETTABLEKS                       R3 R3 K6 ["getCanManageAsset"]
       24 GETTABLEKS                       R4 R0 K0 ["props"]
       26 GETTABLEKS                       R4 R4 K4 ["Network"]
       28 GETTABLEKS                       R4 R4 K5 ["networkInterface"]
       30 MOVE                             R5 R2
       31 CALL                             R3 2 0
       32 JUMPIFNOT                        R1 ; [+46]
       33 GETTABLEKS                       R3 R0 K0 ["props"]
       35 GETTABLEKS                       R3 R3 K7 ["getPageInfoAnalyticsContextInfo"]
       37 MOVE                             R4 R3
       38 CALL                             R4 0 1
       39 GETTABLEKS                       R5 R0 K0 ["props"]
       41 GETTABLEKS                       R5 R5 K8 ["swimlaneCategory"]
       43 GETTABLEKS                       R6 R0 K0 ["props"]
       45 GETTABLEKS                       R6 R6 K9 ["NavigationContext"]
       47 NAMECALL                         R6 R6 K10 ["get"]
       49 CALL                             R6 1 1
       50 GETTABLEKS                       R7 R0 K0 ["props"]
       52 GETTABLEKS                       R7 R7 K11 ["AssetAnalytics"]
       54 NAMECALL                         R7 R7 K10 ["get"]
       56 CALL                             R7 1 1
       57 GETTABLEKS                       R8 R7 K12 ["getNavigationContext"]
       59 MOVE                             R9 R6
       60 MOVE                             R10 R5
       61 CALL                             R8 2 1
       62 GETTABLEKS                       R9 R0 K13 ["ref"]
       64 GETTABLEKS                       R9 R9 K14 ["current"]
       66 JUMPIFNOT                        R9 ; [+12]
       67 GETTABLEKS                       R9 R0 K0 ["props"]
       69 GETTABLEKS                       R9 R9 K15 ["shouldLogOnMount"]
       71 JUMPIFNOT                        R9 ; [+7]
       72 GETTABLEKS                       R9 R0 K16 ["onAbsolutePositionChange"]
       74 GETTABLEKS                       R10 R0 K13 ["ref"]
       76 GETTABLEKS                       R10 R10 K14 ["current"]
       78 CALL                             R9 1 0
       79 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+22]
        2 GETTABLEKS                       R3 R0 K0 ["ref"]
        4 GETTABLEKS                       R3 R3 K1 ["current"]
        6 JUMPIFEQKNIL                     R3 ; [+32]
        8 GETTABLEKS                       R3 R1 K2 ["parentSize"]
       10 GETTABLEKS                       R4 R0 K3 ["props"]
       12 GETTABLEKS                       R4 R4 K2 ["parentSize"]
       14 JUMPIFEQ                         R3 R4 ; [+24]
       16 GETTABLEKS                       R3 R0 K4 ["onAbsolutePositionChange"]
       18 GETTABLEKS                       R4 R0 K0 ["ref"]
       20 GETTABLEKS                       R4 R4 K1 ["current"]
       22 CALL                             R3 1 0
       23 RETURN                           R0 0
       24 GETTABLEKS                       R3 R1 K2 ["parentSize"]
       26 GETTABLEKS                       R4 R0 K3 ["props"]
       28 GETTABLEKS                       R4 R4 K2 ["parentSize"]
       30 JUMPIFEQ                         R3 R4 ; [+8]
       32 GETTABLEKS                       R3 R0 K4 ["onAbsolutePositionChange"]
       34 GETTABLEKS                       R4 R0 K0 ["ref"]
       36 GETTABLEKS                       R4 R4 K1 ["current"]
       38 CALL                             R3 1 0
       39 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tryCreateContextMenu"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["assetId"]
        8 GETTABLEKS                       R5 R1 K4 ["assetData"]
       10 GETTABLEKS                       R6 R1 K5 ["categoryName"]
       12 GETTABLEKS                       R7 R1 K6 ["currentUserPackagePermissions"]
       14 GETTABLEKS                       R8 R1 K7 ["hideCreatorName"]
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R9 R9 K8 ["categoryIsGroupPackages"]
       19 MOVE                             R10 R6
       20 CALL                             R9 1 1
       21 LOADB                            R10 1
       22 GETTABLE                         R11 R7 R4
       23 GETUPVAL                         R12 1
       24 GETTABLEKS                       R12 R12 K9 ["EditKey"]
       26 JUMPIFEQ                         R11 R12 ; [+9]
       28 GETTABLE                         R11 R7 R4
       29 GETUPVAL                         R12 1
       30 GETTABLEKS                       R12 R12 K10 ["OwnKey"]
       32 JUMPIFEQ                         R11 R12 ; [+2]
       34 LOADB                            R10 0 +1
       35 LOADB                            R10 1
       36 LOADNIL                          R11
       37 JUMPIFNOT                        R9 ; [+2]
       38 MOVE                             R11 R10
       39 JUMP                             ; [+1]
       40 LOADB                            R11 1
       41 JUMPIFNOT                        R5 ; [+1]
       42 JUMPIF                           R11 ; [+1]
       43 RETURN                           R0 0
       44 GETTABLEKS                       R12 R1 K11 ["LayoutOrder"]
       46 GETTABLEKS                       R13 R1 K12 ["ownsAsset"]
       48 GETTABLEKS                       R14 R5 K13 ["Asset"]
       50 GETTABLEKS                       R4 R1 K3 ["assetId"]
       52 GETTABLEKS                       R15 R14 K14 ["TypeId"]
       54 GETTABLEKS                       R16 R14 K15 ["IsEndorsed"]
       56 GETTABLEKS                       R17 R5 K16 ["Creator"]
       58 GETTABLEKS                       R17 R17 K17 ["IsVerifiedCreator"]
       60 GETTABLEKS                       R18 R14 K18 ["HasScripts"]
       62 GETTABLEKS                       R20 R14 K19 ["AssetSubTypes"]
       64 JUMPIFNOT                        R20 ; [+10]
       65 GETUPVAL                         R19 2
       66 GETTABLEKS                       R19 R19 K20 ["contains"]
       68 GETTABLEKS                       R20 R14 K19 ["AssetSubTypes"]
       70 GETUPVAL                         R21 2
       71 GETTABLEKS                       R21 R21 K21 ["Package"]
       73 CALL                             R19 2 1
       74 JUMP                             ; [+1]
       75 LOADNIL                          R19
       76 LOADB                            R20 0
       77 GETIMPORT                        R21 K25 [Enum.AssetType.Audio]
       79 GETTABLEKS                       R21 R21 K26 ["Value"]
       81 JUMPIFNOTEQ                      R15 R21 ; [+2]
       83 LOADB                            R20 1
       84 GETTABLEKS                       R21 R14 K27 ["Name"]
       86 GETTABLEKS                       R22 R14 K28 ["Status"]
       88 GETUPVAL                         R23 0
       89 GETTABLEKS                       R23 R23 K29 ["shouldShowPrices"]
       91 GETTABLEKS                       R24 R1 K5 ["categoryName"]
       93 CALL                             R23 1 1
       94 LOADNIL                          R24
       95 LOADNIL                          R25
       96 LOADNIL                          R26
       97 JUMPIFNOT                        R23 ; [+60]
       98 LOADB                            R25 0
       99 GETTABLEKS                       R27 R5 K30 ["FiatProduct"]
      101 JUMPIFNOT                        R27 ; [+12]
      102 GETTABLEKS                       R28 R27 K31 ["PurchasePrice"]
      104 JUMPIFNOT                        R28 ; [+9]
      105 GETUPVAL                         R28 3
      106 GETTABLEKS                       R28 R28 K32 ["displayStringFromMoney"]
      108 GETTABLEKS                       R29 R27 K31 ["PurchasePrice"]
      110 MOVE                             R30 R3
      111 CALL                             R28 2 1
      112 MOVE                             R24 R28
      113 JUMP                             ; [+44]
      114 GETUPVAL                         R28 4
      115 CALL                             R28 0 1
      116 JUMPIFNOT                        R28 ; [+18]
      117 LOADK                            R24 K33 [""]
      118 GETUPVAL                         R28 5
      119 GETTABLEKS                       R28 R28 K34 ["shouldDebugWarnings"]
      121 CALL                             R28 0 1
      122 JUMPIFNOT                        R28 ; [+35]
      123 GETIMPORT                        R28 K36 [warn]
      125 LOADK                            R29 K37 ["AssetTile expected fiatProduct for categoryName %s, but found none for assetId %s"]
      126 GETTABLEKS                       R31 R1 K5 ["categoryName"]
      128 GETTABLEKS                       R32 R14 K38 ["Id"]
      130 NAMECALL                         R29 R29 K39 ["format"]
      132 CALL                             R29 3 -1
      133 CALL                             R28 -1 0
      134 JUMP                             ; [+23]
      135 LOADB                            R25 1
      136 GETTABLEKS                       R29 R5 K40 ["Product"]
      138 JUMPIFNOT                        R29 ; [+5]
      139 GETTABLEKS                       R28 R5 K40 ["Product"]
      141 GETTABLEKS                       R28 R28 K41 ["Price"]
      143 JUMPIF                           R28 ; [+1]
      144 LOADN                            R28 0
      145 JUMPIFEQKN                       R28 K42 [0] ; [+2]
      147 LOADB                            R26 0 +1
      148 LOADB                            R26 1
      149 JUMPIFNOT                        R26 ; [+7]
      150 LOADK                            R31 K43 ["Purchase"]
      151 LOADK                            R32 K44 ["Free"]
      152 NAMECALL                         R29 R3 K45 ["getText"]
      154 CALL                             R29 3 1
      155 MOVE                             R24 R29
      156 JUMP                             ; [+1]
      157 MOVE                             R24 R28
      158 GETTABLEKS                       R27 R5 K16 ["Creator"]
      160 GETTABLEKS                       R28 R27 K27 ["Name"]
      162 GETTABLEKS                       R29 R1 K46 ["voting"]
      164 JUMPIF                           R29 ; [+2]
      165 NEWTABLE                         R29 0 0
      167 GETTABLEKS                       R30 R29 K47 ["ShowVotes"]
      169 GETUPVAL                         R32 0
      170 GETTABLEKS                       R32 R32 K48 ["getTabForCategoryName"]
      172 GETTABLEKS                       R33 R1 K5 ["categoryName"]
      174 CALL                             R32 1 1
      175 GETUPVAL                         R33 0
      176 GETTABLEKS                       R33 R33 K49 ["CREATIONS"]
      178 JUMPIFEQ                         R32 R33 ; [+2]
      180 LOADB                            R31 0 +1
      181 LOADB                            R31 1
      182 GETUPVAL                         R33 0
      183 GETTABLEKS                       R33 R33 K48 ["getTabForCategoryName"]
      185 GETTABLEKS                       R34 R1 K5 ["categoryName"]
      187 CALL                             R33 1 1
      188 GETUPVAL                         R34 0
      189 GETTABLEKS                       R34 R34 K50 ["MARKETPLACE"]
      191 JUMPIFEQ                         R33 R34 ; [+2]
      193 LOADB                            R32 0 +1
      194 LOADB                            R32 1
      195 JUMPIFNOT                        R32 ; [+4]
      196 JUMPIF                           R20 ; [+3]
      197 GETUPVAL                         R33 6
      198 CALL                             R33 0 1
      199 JUMPIFNOT                        R33 ; [+1]
      200 LOADB                            R30 0
      201 SETTABLEKS                       R30 R0 K51 ["showVotes"]
      203 MOVE                             R33 R31
      204 JUMPIFNOT                        R33 ; [+3]
      205 JUMPIFNOTEQKNIL                  R22 ; [+2]
      207 LOADB                            R33 0
      208 GETTABLEKS                       R34 R1 K52 ["isHovered"]
      210 LOADNIL                          R35
      211 LOADNIL                          R36
      212 LOADNIL                          R37
      213 LOADNIL                          R38
      214 LOADNIL                          R39
      215 LOADNIL                          R40
      216 LOADNIL                          R41
      217 LOADNIL                          R42
      218 LOADNIL                          R43
      219 LOADB                            R44 0
      220 JUMPIFEQKNIL                     R29 ; [+12]
      222 LOADB                            R44 0
      223 GETTABLEKS                       R45 R29 K53 ["VoteCount"]
      225 JUMPIFEQKNIL                     R45 ; [+7]
      227 GETUPVAL                         R44 7
      228 GETTABLEKS                       R44 R44 K54 ["hasEnoughRatings"]
      230 GETTABLEKS                       R45 R29 K53 ["VoteCount"]
      232 CALL                             R44 1 1
      233 MOVE                             R38 R44
      234 MOVE                             R44 R30
      235 JUMPIFNOT                        R44 ; [+3]
      236 MOVE                             R44 R34
      237 JUMPIFNOT                        R44 ; [+1]
      238 MOVE                             R44 R38
      239 MOVE                             R37 R44
      240 MOVE                             R44 R30
      241 JUMPIFNOT                        R44 ; [+5]
      242 LOADB                            R44 0
      243 JUMPIFEQKNIL                     R29 ; [+3]
      245 GETTABLEKS                       R44 R29 K55 ["showVoteButtons"]
      247 MOVE                             R36 R44
      248 MOVE                             R44 R30
      249 JUMPIFNOT                        R44 ; [+7]
      250 MOVE                             R44 R34
      251 JUMPIFNOT                        R44 ; [+5]
      252 LOADB                            R44 0
      253 JUMPIFEQKNIL                     R29 ; [+3]
      255 GETTABLEKS                       R44 R29 K56 ["VoteLoading"]
      257 MOVE                             R43 R44
      258 JUMPIFNOT                        R36 ; [+4]
      259 GETUPVAL                         R44 8
      260 GETTABLEKS                       R35 R44 K57 ["ASSET_OUTLINE_EXTRA_HEIGHT_WITH_VOTE_BUTTONS_HOVERED"]
      262 JUMP                             ; [+9]
      263 JUMPIF                           R37 ; [+1]
      264 JUMPIFNOT                        R43 ; [+4]
      265 GETUPVAL                         R44 8
      266 GETTABLEKS                       R35 R44 K58 ["ASSET_OUTLINE_EXTRA_HEIGHT_WITH_VOTING_COUNT"]
      268 JUMP                             ; [+3]
      269 GETUPVAL                         R44 8
      270 GETTABLEKS                       R35 R44 K59 ["ASSET_OUTLINE_EXTRA_HEIGHT"]
      272 GETUPVAL                         R44 8
      273 GETTABLEKS                       R41 R44 K60 ["ASSET_NAME_FONT_SIZE"]
      275 GETUPVAL                         R44 8
      276 GETTABLEKS                       R42 R44 K61 ["FONT"]
      278 GETUPVAL                         R44 9
      279 MOVE                             R45 R21
      280 MOVE                             R46 R41
      281 MOVE                             R47 R42
      282 CALL                             R44 3 1
      283 GETTABLEKS                       R44 R44 K62 ["X"]
      285 GETUPVAL                         R45 8
      286 GETTABLEKS                       R45 R45 K63 ["ASSET_WIDTH_NO_PADDING"]
      288 JUMPIFLE                         R44 R45 ; [+2]
      290 LOADB                            R40 0 +1
      291 LOADB                            R40 1
      292 JUMPIF                           R40 ; [+1]
      293 JUMPIFNOT                        R36 ; [+5]
      294 LOADB                            R39 1
      295 GETUPVAL                         R45 8
      296 GETTABLEKS                       R45 R45 K64 ["ASSET_NAME_ONE_LINE_HEIGHT"]
      298 SUB                              R35 R35 R45
      299 JUMPIFNOT                        R33 ; [+5]
      300 JUMPIF                           R8 ; [+4]
      301 GETUPVAL                         R45 8
      302 GETTABLEKS                       R45 R45 K65 ["ASSET_CREATOR_NAME_HEIGHT"]
      304 ADD                              R35 R35 R45
      305 JUMPIF                           R18 ; [+1]
      306 JUMPIFNOT                        R19 ; [+4]
      307 GETUPVAL                         R45 8
      308 GETTABLEKS                       R45 R45 K66 ["PRICE_HEIGHT"]
      310 ADD                              R35 R35 R45
      311 JUMPIFNOT                        R36 ; [+7]
      312 JUMPIFNOT                        R34 ; [+6]
      313 JUMPIF                           R18 ; [+1]
      314 JUMPIFNOT                        R19 ; [+4]
      315 GETUPVAL                         R45 8
      316 GETTABLEKS                       R45 R45 K67 ["ASSET_VOTE_BUTTONS_SCRIPT_PADDING"]
      318 ADD                              R35 R35 R45
      319 JUMPIF                           R23 ; [+1]
      320 JUMPIFNOT                        R20 ; [+4]
      321 GETUPVAL                         R45 8
      322 GETTABLEKS                       R45 R45 K68 ["ASSET_INNER_PADDING"]
      324 ADD                              R35 R35 R45
      325 GETTABLEKS                       R45 R2 K69 ["asset"]
      327 GETTABLEKS                       R45 R45 K70 ["outline"]
      329 JUMPIFNOT                        R34 ; [+7]
      330 LOADN                            R48 2
      331 GETUPVAL                         R49 8
      332 GETTABLEKS                       R49 R49 K71 ["ASSET_OUTLINE_PADDING"]
      334 MUL                              R47 R48 R49
      335 ADD                              R46 R35 R47
      336 JUMPIF                           R46 ; [+1]
      337 LOADN                            R46 0
      338 GETUPVAL                         R47 8
      339 GETTABLEKS                       R47 R47 K68 ["ASSET_INNER_PADDING"]
      341 JUMPIFNOT                        R20 ; [+1]
      342 LOADN                            R47 0
      343 GETTABLEKS                       R48 R2 K69 ["asset"]
      345 GETTABLEKS                       R48 R48 K72 ["packages"]
      347 LOADK                            R49 K33 [""]
      348 JUMPIFNOT                        R20 ; [+12]
      349 GETTABLEKS                       R51 R14 K73 ["Duration"]
      351 JUMPIFEQKNIL                     R51 ; [+7]
      353 GETUPVAL                         R50 10
      354 GETTABLEKS                       R51 R14 K73 ["Duration"]
      356 LOADN                            R52 1
      357 CALL                             R50 2 1
      358 JUMPIF                           R50 ; [+1]
      359 LOADK                            R50 K33 [""]
      360 MOVE                             R49 R50
      361 GETTABLEKS                       R50 R2 K69 ["asset"]
      363 GETTABLEKS                       R50 R50 K74 ["dropShadowSize"]
      365 GETTABLEKS                       R51 R45 K75 ["transparency"]
      367 NEWCLOSURE                       R52 P0
      368 CAPTURE                          VAL R0
      369 CAPTURE                          VAL R3
      370 GETTABLEKS                       R53 R45 K76 ["backgroundColor"]
      372 GETUPVAL                         R54 11
      373 GETTABLEKS                       R54 R54 K77 ["createElement"]
      375 LOADK                            R55 K78 ["Frame"]
      376 NEWTABLE                         R56 8 0
      378 GETIMPORT                        R57 K81 [UDim2.new]
      380 LOADN                            R58 0
      381 LOADN                            R59 0
      382 LOADN                            R60 0
      383 LOADN                            R61 0
      384 CALL                             R57 4 1
      385 SETTABLEKS                       R57 R56 K82 ["Position"]
      387 GETUPVAL                         R57 12
      388 GETTABLEKS                       R57 R57 K83 ["getAssetSize"]
      390 MOVE                             R58 R6
      391 CALL                             R57 1 1
      392 SETTABLEKS                       R57 R56 K84 ["Size"]
      394 SETTABLEKS                       R12 R56 K11 ["LayoutOrder"]
      396 LOADN                            R57 1
      397 SETTABLEKS                       R57 R56 K85 ["BackgroundTransparency"]
      399 JUMPIFNOT                        R34 ; [+2]
      400 LOADN                            R57 2
      401 JUMP                             ; [+1]
      402 LOADN                            R57 1
      403 SETTABLEKS                       R57 R56 K86 ["ZIndex"]
      405 GETUPVAL                         R57 11
      406 GETTABLEKS                       R57 R57 K87 ["Change"]
      408 GETTABLEKS                       R57 R57 K88 ["AbsolutePosition"]
      410 GETTABLEKS                       R58 R0 K89 ["onAbsolutePositionChange"]
      412 SETTABLE                         R58 R56 R57
      413 GETUPVAL                         R57 11
      414 GETTABLEKS                       R57 R57 K90 ["Ref"]
      416 GETTABLEKS                       R58 R0 K91 ["ref"]
      418 SETTABLE                         R58 R56 R57
      419 DUPTABLE                         R57 K95 [{"DropShadow", "Outline", "InnerFrame"}]
      420 MOVE                             R58 R34
      421 JUMPIFNOT                        R58 ; [+42]
      422 GETUPVAL                         R58 11
      423 GETTABLEKS                       R58 R58 K77 ["createElement"]
      425 GETUPVAL                         R59 13
      426 DUPTABLE                         R60 K98 [{["AnchorPoint"], ["Position"], ["Size"], ["ZIndex"] = -2}]
      427 GETIMPORT                        R61 K100 [Vector2.new]
      429 LOADK                            R62 K101 [0.5]
      430 LOADN                            R63 0
      431 CALL                             R61 2 1
      432 SETTABLEKS                       R61 R60 K96 ["AnchorPoint"]
      434 GETIMPORT                        R61 K81 [UDim2.new]
      436 LOADK                            R62 K101 [0.5]
      437 LOADN                            R63 0
      438 LOADN                            R64 0
      439 GETUPVAL                         R67 8
      440 GETTABLEKS                       R67 R67 K71 ["ASSET_OUTLINE_PADDING"]
      442 ADD                              R66 R67 R50
      443 MINUS                            R65 R66
      444 CALL                             R61 4 1
      445 SETTABLEKS                       R61 R60 K82 ["Position"]
      447 GETIMPORT                        R61 K81 [UDim2.new]
      449 LOADN                            R62 1
      450 LOADN                            R64 2
      451 GETUPVAL                         R66 8
      452 GETTABLEKS                       R66 R66 K71 ["ASSET_OUTLINE_PADDING"]
      454 ADD                              R65 R66 R50
      455 MUL                              R63 R64 R65
      456 LOADN                            R64 1
      457 LOADN                            R67 2
      458 MUL                              R66 R67 R50
      459 ADD                              R65 R35 R66
      460 CALL                             R61 4 1
      461 SETTABLEKS                       R61 R60 K84 ["Size"]
      463 CALL                             R58 2 1
      464 SETTABLEKS                       R58 R57 K92 ["DropShadow"]
      466 GETUPVAL                         R58 11
      467 GETTABLEKS                       R58 R58 K77 ["createElement"]
      469 LOADK                            R59 K78 ["Frame"]
      470 NEWTABLE                         R60 16 0
      472 GETIMPORT                        R61 K100 [Vector2.new]
      474 LOADK                            R62 K101 [0.5]
      475 LOADN                            R63 0
      476 CALL                             R61 2 1
      477 SETTABLEKS                       R61 R60 K96 ["AnchorPoint"]
      479 JUMPIF                           R34 ; [+3]
      480 GETTABLEKS                       R62 R1 K102 ["hasTutorialLimits"]
      482 JUMPIFNOT                        R62 ; [+2]
      483 MOVE                             R61 R51
      484 JUMP                             ; [+1]
      485 LOADN                            R61 1
      486 SETTABLEKS                       R61 R60 K85 ["BackgroundTransparency"]
      488 SETTABLEKS                       R53 R60 K103 ["BackgroundColor3"]
      490 GETTABLEKS                       R61 R45 K104 ["borderColor"]
      492 SETTABLEKS                       R61 R60 K105 ["BorderColor3"]
      494 LOADN                            R61 1
      495 SETTABLEKS                       R61 R60 K106 ["BorderSizePixel"]
      497 GETIMPORT                        R61 K81 [UDim2.new]
      499 LOADK                            R62 K101 [0.5]
      500 LOADN                            R63 0
      501 LOADN                            R64 0
      502 GETUPVAL                         R66 8
      503 GETTABLEKS                       R66 R66 K71 ["ASSET_OUTLINE_PADDING"]
      505 MINUS                            R65 R66
      506 CALL                             R61 4 1
      507 SETTABLEKS                       R61 R60 K82 ["Position"]
      509 GETIMPORT                        R61 K81 [UDim2.new]
      511 LOADN                            R62 1
      512 LOADN                            R64 2
      513 GETUPVAL                         R65 8
      514 GETTABLEKS                       R65 R65 K71 ["ASSET_OUTLINE_PADDING"]
      516 MUL                              R63 R64 R65
      517 LOADN                            R64 1
      518 MOVE                             R65 R35
      519 CALL                             R61 4 1
      520 SETTABLEKS                       R61 R60 K84 ["Size"]
      522 LOADN                            R61 -1
      523 SETTABLEKS                       R61 R60 K86 ["ZIndex"]
      525 GETUPVAL                         R61 11
      526 GETTABLEKS                       R61 R61 K107 ["Event"]
      528 GETTABLEKS                       R61 R61 K108 ["MouseLeave"]
      530 GETTABLEKS                       R62 R0 K109 ["onMouseLeave"]
      532 SETTABLE                         R62 R60 R61
      533 GETUPVAL                         R61 11
      534 GETTABLEKS                       R61 R61 K107 ["Event"]
      536 GETTABLEKS                       R61 R61 K110 ["InputEnded"]
      538 GETTABLEKS                       R62 R0 K111 ["onInputEnded"]
      540 SETTABLE                         R62 R60 R61
      541 DUPTABLE                         R61 K113 [{"TutorialStroke"}]
      542 GETTABLEKS                       R63 R1 K102 ["hasTutorialLimits"]
      544 JUMPIFNOT                        R63 ; [+19]
      545 GETUPVAL                         R62 11
      546 GETTABLEKS                       R62 R62 K77 ["createElement"]
      548 LOADK                            R63 K114 ["UIStroke"]
      549 DUPTABLE                         R64 K117 [{"Thickness", "Color"}]
      550 GETTABLEKS                       R65 R2 K69 ["asset"]
      552 GETTABLEKS                       R65 R65 K118 ["strokeThickness"]
      554 SETTABLEKS                       R65 R64 K115 ["Thickness"]
      556 GETTABLEKS                       R65 R2 K69 ["asset"]
      558 GETTABLEKS                       R65 R65 K119 ["strokeColor"]
      560 SETTABLEKS                       R65 R64 K116 ["Color"]
      562 CALL                             R62 2 1
      563 JUMP                             ; [+1]
      564 LOADNIL                          R62
      565 SETTABLEKS                       R62 R61 K112 ["TutorialStroke"]
      567 CALL                             R58 3 1
      568 SETTABLEKS                       R58 R57 K93 ["Outline"]
      570 GETUPVAL                         R58 11
      571 GETTABLEKS                       R58 R58 K77 ["createElement"]
      573 GETUPVAL                         R59 14
      574 NEWTABLE                         R60 8 0
      576 LOADN                            R61 1
      577 SETTABLEKS                       R61 R60 K85 ["BackgroundTransparency"]
      579 GETIMPORT                        R61 K81 [UDim2.new]
      581 LOADN                            R62 0
      582 LOADN                            R63 0
      583 LOADN                            R64 0
      584 LOADN                            R65 0
      585 CALL                             R61 4 1
      586 SETTABLEKS                       R61 R60 K82 ["Position"]
      588 GETIMPORT                        R61 K81 [UDim2.new]
      590 LOADN                            R62 1
      591 LOADN                            R63 0
      592 LOADN                            R64 1
      593 MOVE                             R65 R46
      594 CALL                             R61 4 1
      595 SETTABLEKS                       R61 R60 K84 ["Size"]
      597 GETUPVAL                         R61 11
      598 GETTABLEKS                       R61 R61 K107 ["Event"]
      600 GETTABLEKS                       R61 R61 K120 ["MouseEnter"]
      602 GETTABLEKS                       R62 R0 K121 ["onMouseEntered"]
      604 SETTABLE                         R62 R60 R61
      605 GETUPVAL                         R61 11
      606 GETTABLEKS                       R61 R61 K107 ["Event"]
      608 GETTABLEKS                       R61 R61 K122 ["MouseButton2Click"]
      610 SETTABLE                         R52 R60 R61
      611 GETTABLEKS                       R61 R0 K123 ["onMouseMoved"]
      613 SETTABLEKS                       R61 R60 K123 ["onMouseMoved"]
      615 GETTABLEKS                       R61 R0 K124 ["onDragStart"]
      617 SETTABLEKS                       R61 R60 K124 ["onDragStart"]
      619 GETTABLEKS                       R61 R0 K125 ["onClick"]
      621 SETTABLEKS                       R61 R60 K125 ["onClick"]
      623 DUPTABLE                         R61 K132 [{"UIListLayout", "AssetIcon", "AssetName", "Price", "CreatorName", "Voting", "AudioLength", "HasScripts", "Package", "Status"}]
      624 GETUPVAL                         R62 11
      625 GETTABLEKS                       R62 R62 K77 ["createElement"]
      627 LOADK                            R63 K126 ["UIListLayout"]
      628 DUPTABLE                         R64 K137 [{"Padding", "SortOrder", "HorizontalAlignment", "VerticalAlignment"}]
      629 GETIMPORT                        R65 K139 [UDim.new]
      631 LOADN                            R66 0
      632 MOVE                             R67 R47
      633 CALL                             R65 2 1
      634 SETTABLEKS                       R65 R64 K133 ["Padding"]
      636 GETIMPORT                        R65 K140 [Enum.SortOrder.LayoutOrder]
      638 SETTABLEKS                       R65 R64 K134 ["SortOrder"]
      640 GETIMPORT                        R65 K142 [Enum.HorizontalAlignment.Center]
      642 SETTABLEKS                       R65 R64 K135 ["HorizontalAlignment"]
      644 GETIMPORT                        R65 K144 [Enum.VerticalAlignment.Top]
      646 SETTABLEKS                       R65 R64 K136 ["VerticalAlignment"]
      648 CALL                             R62 2 1
      649 SETTABLEKS                       R62 R61 K126 ["UIListLayout"]
      651 GETUPVAL                         R62 11
      652 GETTABLEKS                       R62 R62 K77 ["createElement"]
      654 GETUPVAL                         R63 15
      655 DUPTABLE                         R64 K155 [{["Size"], ["LayoutOrder"] = 0, ["assetId"], ["assetName"], ["assetTileLocation"], ["currentSoundId"], ["isEndorsed"], ["isLoading"], ["typeId"], ["originalAssetId"], ["voting"], ["isHovered"], ["isPackage"], ["status"], ["onAssetPreviewButtonClicked"]}]
      656 GETIMPORT                        R65 K81 [UDim2.new]
      658 LOADN                            R66 1
      659 LOADN                            R67 0
      660 LOADN                            R68 1
      661 LOADN                            R69 0
      662 CALL                             R65 4 1
      663 SETTABLEKS                       R65 R64 K84 ["Size"]
      665 SETTABLEKS                       R4 R64 K3 ["assetId"]
      667 SETTABLEKS                       R21 R64 K145 ["assetName"]
      669 GETTABLEKS                       R65 R1 K146 ["assetTileLocation"]
      671 SETTABLEKS                       R65 R64 K146 ["assetTileLocation"]
      673 GETTABLEKS                       R65 R1 K147 ["currentSoundId"]
      675 SETTABLEKS                       R65 R64 K147 ["currentSoundId"]
      677 SETTABLEKS                       R16 R64 K148 ["isEndorsed"]
      679 GETTABLEKS                       R65 R1 K149 ["isLoading"]
      681 SETTABLEKS                       R65 R64 K149 ["isLoading"]
      683 SETTABLEKS                       R15 R64 K150 ["typeId"]
      685 GETTABLEKS                       R65 R1 K151 ["originalAssetId"]
      687 SETTABLEKS                       R65 R64 K151 ["originalAssetId"]
      689 SETTABLEKS                       R29 R64 K46 ["voting"]
      691 SETTABLEKS                       R34 R64 K52 ["isHovered"]
      693 SETTABLEKS                       R19 R64 K152 ["isPackage"]
      695 JUMPIFNOT                        R33 ; [+2]
      696 MOVE                             R65 R22
      697 JUMPIF                           R65 ; [+1]
      698 LOADNIL                          R65
      699 SETTABLEKS                       R65 R64 K153 ["status"]
      701 GETTABLEKS                       R65 R0 K154 ["onAssetPreviewButtonClicked"]
      703 SETTABLEKS                       R65 R64 K154 ["onAssetPreviewButtonClicked"]
      705 CALL                             R62 2 1
      706 SETTABLEKS                       R62 R61 K127 ["AssetIcon"]
      708 GETUPVAL                         R62 11
      709 GETTABLEKS                       R62 R62 K77 ["createElement"]
      711 GETUPVAL                         R63 16
      712 DUPTABLE                         R64 K160 [{["Size"], ["LayoutOrder"] = 10, ["NumberRows"], ["assetId"], ["assetName"], ["TextSize"], ["Font"]}]
      713 GETIMPORT                        R65 K81 [UDim2.new]
      715 LOADN                            R66 1
      716 LOADN                            R67 0
      717 LOADK                            R68 K161 [0.45]
      718 LOADN                            R69 0
      719 CALL                             R65 4 1
      720 SETTABLEKS                       R65 R64 K84 ["Size"]
      722 JUMPIFNOT                        R39 ; [+2]
      723 LOADN                            R65 1
      724 JUMP                             ; [+1]
      725 LOADNIL                          R65
      726 SETTABLEKS                       R65 R64 K157 ["NumberRows"]
      728 SETTABLEKS                       R4 R64 K3 ["assetId"]
      730 SETTABLEKS                       R21 R64 K145 ["assetName"]
      732 SETTABLEKS                       R41 R64 K158 ["TextSize"]
      734 SETTABLEKS                       R42 R64 K159 ["Font"]
      736 CALL                             R62 2 1
      737 SETTABLEKS                       R62 R61 K128 ["AssetName"]
      739 MOVE                             R62 R23
      740 JUMPIFNOT                        R62 ; [+156]
      741 GETUPVAL                         R62 11
      742 GETTABLEKS                       R62 R62 K77 ["createElement"]
      744 LOADK                            R63 K78 ["Frame"]
      745 DUPTABLE                         R64 K164 [{["BackgroundTransparency"] = 1, ["LayoutOrder"] = 20, ["Size"]}]
      746 GETIMPORT                        R65 K81 [UDim2.new]
      748 LOADN                            R66 1
      749 LOADN                            R67 0
      750 LOADN                            R68 0
      751 GETUPVAL                         R69 8
      752 GETTABLEKS                       R69 R69 K66 ["PRICE_HEIGHT"]
      754 CALL                             R65 4 1
      755 SETTABLEKS                       R65 R64 K84 ["Size"]
      757 DUPTABLE                         R65 K169 [{"Layout", "RobuxIcon", "PriceText", "OwnedIcon"}]
      758 GETUPVAL                         R66 11
      759 GETTABLEKS                       R66 R66 K77 ["createElement"]
      761 LOADK                            R67 K126 ["UIListLayout"]
      762 DUPTABLE                         R68 K171 [{"SortOrder", "FillDirection", "VerticalAlignment", "HorizontalAlignment", "Padding"}]
      763 GETIMPORT                        R69 K140 [Enum.SortOrder.LayoutOrder]
      765 SETTABLEKS                       R69 R68 K134 ["SortOrder"]
      767 GETIMPORT                        R69 K173 [Enum.FillDirection.Horizontal]
      769 SETTABLEKS                       R69 R68 K170 ["FillDirection"]
      771 GETIMPORT                        R69 K174 [Enum.VerticalAlignment.Center]
      773 SETTABLEKS                       R69 R68 K136 ["VerticalAlignment"]
      775 GETIMPORT                        R69 K176 [Enum.HorizontalAlignment.Left]
      777 SETTABLEKS                       R69 R68 K135 ["HorizontalAlignment"]
      779 GETIMPORT                        R69 K139 [UDim.new]
      781 LOADN                            R70 0
      782 LOADN                            R71 4
      783 CALL                             R69 2 1
      784 SETTABLEKS                       R69 R68 K133 ["Padding"]
      786 CALL                             R66 2 1
      787 SETTABLEKS                       R66 R65 K165 ["Layout"]
      789 MOVE                             R66 R25
      790 JUMPIFNOT                        R66 ; [+28]
      791 NOT                              R66 R26
      792 JUMPIFNOT                        R66 ; [+26]
      793 NOT                              R66 R13
      794 JUMPIFNOT                        R66 ; [+24]
      795 GETUPVAL                         R66 11
      796 GETTABLEKS                       R66 R66 K77 ["createElement"]
      798 LOADK                            R67 K177 ["ImageLabel"]
      799 DUPTABLE                         R68 K180 [{["LayoutOrder"] = 1, ["Image"], ["Size"], ["BackgroundTransparency"] = 1, ["ImageColor3"]}]
      800 GETUPVAL                         R69 17
      801 GETTABLEKS                       R69 R69 K181 ["ROBUX_SMALL"]
      803 SETTABLEKS                       R69 R68 K178 ["Image"]
      805 GETUPVAL                         R69 8
      806 GETTABLEKS                       R69 R69 K182 ["Dialog"]
      808 GETTABLEKS                       R69 R69 K183 ["ROBUX_SIZE"]
      810 SETTABLEKS                       R69 R68 K84 ["Size"]
      812 GETTABLEKS                       R69 R2 K69 ["asset"]
      814 GETTABLEKS                       R69 R69 K184 ["textColor"]
      816 SETTABLEKS                       R69 R68 K179 ["ImageColor3"]
      818 CALL                             R66 2 1
      819 SETTABLEKS                       R66 R65 K166 ["RobuxIcon"]
      821 NOT                              R66 R13
      822 JUMPIFNOT                        R66 ; [+43]
      823 GETUPVAL                         R66 11
      824 GETTABLEKS                       R66 R66 K77 ["createElement"]
      826 LOADK                            R67 K185 ["TextLabel"]
      827 DUPTABLE                         R68 K191 [{["BackgroundTransparency"] = 1, ["LayoutOrder"] = 2, ["Font"], ["Size"], ["TextColor3"], ["TextSize"], ["TextXAlignment"], ["Text"], ["TextTruncate"]}]
      828 GETUPVAL                         R69 8
      829 GETTABLEKS                       R69 R69 K61 ["FONT"]
      831 SETTABLEKS                       R69 R68 K159 ["Font"]
      833 GETIMPORT                        R69 K81 [UDim2.new]
      835 LOADN                            R70 1
      836 LOADN                            R71 -20
      837 LOADN                            R72 0
      838 GETUPVAL                         R73 8
      839 GETTABLEKS                       R73 R73 K66 ["PRICE_HEIGHT"]
      841 CALL                             R69 4 1
      842 SETTABLEKS                       R69 R68 K84 ["Size"]
      844 GETTABLEKS                       R69 R2 K69 ["asset"]
      846 GETTABLEKS                       R69 R69 K184 ["textColor"]
      848 SETTABLEKS                       R69 R68 K187 ["TextColor3"]
      850 GETUPVAL                         R69 8
      851 GETTABLEKS                       R69 R69 K192 ["PRICE_FONT_SIZE"]
      853 SETTABLEKS                       R69 R68 K158 ["TextSize"]
      855 GETIMPORT                        R69 K193 [Enum.TextXAlignment.Left]
      857 SETTABLEKS                       R69 R68 K188 ["TextXAlignment"]
      859 SETTABLEKS                       R24 R68 K189 ["Text"]
      861 GETIMPORT                        R69 K195 [Enum.TextTruncate.AtEnd]
      863 SETTABLEKS                       R69 R68 K190 ["TextTruncate"]
      865 CALL                             R66 2 1
      866 SETTABLEKS                       R66 R65 K167 ["PriceText"]
      868 MOVE                             R66 R13
      869 JUMPIFNOT                        R66 ; [+24]
      870 GETUPVAL                         R66 11
      871 GETTABLEKS                       R66 R66 K77 ["createElement"]
      873 LOADK                            R67 K177 ["ImageLabel"]
      874 DUPTABLE                         R68 K180 [{["LayoutOrder"] = 1, ["Image"], ["Size"], ["BackgroundTransparency"] = 1, ["ImageColor3"]}]
      875 GETUPVAL                         R69 17
      876 GETTABLEKS                       R69 R69 K196 ["OWNED_ICON"]
      878 SETTABLEKS                       R69 R68 K178 ["Image"]
      880 GETUPVAL                         R69 8
      881 GETTABLEKS                       R69 R69 K182 ["Dialog"]
      883 GETTABLEKS                       R69 R69 K183 ["ROBUX_SIZE"]
      885 SETTABLEKS                       R69 R68 K84 ["Size"]
      887 GETTABLEKS                       R69 R2 K69 ["asset"]
      889 GETTABLEKS                       R69 R69 K184 ["textColor"]
      891 SETTABLEKS                       R69 R68 K179 ["ImageColor3"]
      893 CALL                             R66 2 1
      894 SETTABLEKS                       R66 R65 K168 ["OwnedIcon"]
      896 CALL                             R62 3 1
      897 SETTABLEKS                       R62 R61 K41 ["Price"]
      899 MOVE                             R62 R34
      900 JUMPIFNOT                        R62 ; [+43]
      901 NOT                              R62 R8
      902 JUMPIFNOT                        R62 ; [+41]
      903 GETUPVAL                         R62 11
      904 GETTABLEKS                       R62 R62 K77 ["createElement"]
      906 GETUPVAL                         R63 18
      907 DUPTABLE                         R64 K202 [{["Size"], ["LayoutOrder"] = 30, ["assetId"], ["creator"], ["creatorName"], ["clickable"], ["isVerifiedCreator"], ["onClick"]}]
      908 GETIMPORT                        R65 K81 [UDim2.new]
      910 LOADN                            R66 1
      911 LOADN                            R67 0
      912 LOADK                            R68 K203 [0.15]
      913 LOADN                            R69 0
      914 CALL                             R65 4 1
      915 SETTABLEKS                       R65 R64 K84 ["Size"]
      917 SETTABLEKS                       R4 R64 K3 ["assetId"]
      919 GETUPVAL                         R66 19
      920 CALL                             R66 0 1
      921 JUMPIFNOT                        R66 ; [+2]
      922 MOVE                             R65 R27
      923 JUMP                             ; [+1]
      924 LOADNIL                          R65
      925 SETTABLEKS                       R65 R64 K198 ["creator"]
      927 SETTABLEKS                       R28 R64 K199 ["creatorName"]
      929 NOT                              R65 R31
      930 SETTABLEKS                       R65 R64 K200 ["clickable"]
      932 SETTABLEKS                       R17 R64 K201 ["isVerifiedCreator"]
      934 GETUPVAL                         R66 19
      935 CALL                             R66 0 1
      936 JUMPIFNOT                        R66 ; [+3]
      937 GETTABLEKS                       R65 R1 K204 ["onSearchByCreator"]
      939 JUMP                             ; [+1]
      940 LOADNIL                          R65
      941 SETTABLEKS                       R65 R64 K125 ["onClick"]
      943 CALL                             R62 2 1
      944 SETTABLEKS                       R62 R61 K129 ["CreatorName"]
      946 JUMPIF                           R37 ; [+2]
      947 JUMPIF                           R36 ; [+1]
      948 JUMPIFNOT                        R43 ; [+19]
      949 GETUPVAL                         R62 11
      950 GETTABLEKS                       R62 R62 K77 ["createElement"]
      952 GETUPVAL                         R63 20
      953 DUPTABLE                         R64 K206 [{"LayoutOrder", "assetId", "voting", "showBackgroundBox"}]
      954 JUMPIFNOT                        R36 ; [+2]
      955 LOADN                            R65 25
      956 JUMP                             ; [+1]
      957 LOADN                            R65 35
      958 SETTABLEKS                       R65 R64 K11 ["LayoutOrder"]
      960 SETTABLEKS                       R4 R64 K3 ["assetId"]
      962 SETTABLEKS                       R29 R64 K46 ["voting"]
      964 SETTABLEKS                       R34 R64 K205 ["showBackgroundBox"]
      966 CALL                             R62 2 1
      967 JUMP                             ; [+22]
      968 JUMPIF                           R37 ; [+1]
      969 JUMPIFNOT                        R36 ; [+19]
      970 GETUPVAL                         R62 11
      971 GETTABLEKS                       R62 R62 K77 ["createElement"]
      973 GETUPVAL                         R63 20
      974 DUPTABLE                         R64 K206 [{"LayoutOrder", "assetId", "voting", "showBackgroundBox"}]
      975 JUMPIFNOT                        R36 ; [+2]
      976 LOADN                            R65 25
      977 JUMP                             ; [+1]
      978 LOADN                            R65 35
      979 SETTABLEKS                       R65 R64 K11 ["LayoutOrder"]
      981 SETTABLEKS                       R4 R64 K3 ["assetId"]
      983 SETTABLEKS                       R29 R64 K46 ["voting"]
      985 SETTABLEKS                       R34 R64 K205 ["showBackgroundBox"]
      987 CALL                             R62 2 1
      988 JUMP                             ; [+1]
      989 LOADNIL                          R62
      990 SETTABLEKS                       R62 R61 K130 ["Voting"]
      992 MOVE                             R62 R34
      993 JUMPIFNOT                        R62 ; [+41]
      994 MOVE                             R62 R20
      995 JUMPIFNOT                        R62 ; [+39]
      996 GETUPVAL                         R62 11
      997 GETTABLEKS                       R62 R62 K77 ["createElement"]
      999 LOADK                            R63 K185 ["TextLabel"]
     1000 DUPTABLE                         R64 K208 [{["Size"], ["LayoutOrder"] = 40, ["Text"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["TextXAlignment"], ["Font"], ["TextSize"], ["TextColor3"]}]
     1001 GETIMPORT                        R65 K81 [UDim2.new]
     1003 LOADN                            R66 1
     1004 LOADN                            R67 0
     1005 LOADN                            R68 0
     1006 GETUPVAL                         R69 8
     1007 GETTABLEKS                       R69 R69 K209 ["AUDIO_LENGTH_HEIGHT"]
     1009 CALL                             R65 4 1
     1010 SETTABLEKS                       R65 R64 K84 ["Size"]
     1012 SETTABLEKS                       R49 R64 K189 ["Text"]
     1014 GETIMPORT                        R65 K193 [Enum.TextXAlignment.Left]
     1016 SETTABLEKS                       R65 R64 K188 ["TextXAlignment"]
     1018 GETUPVAL                         R65 8
     1019 GETTABLEKS                       R65 R65 K61 ["FONT"]
     1021 SETTABLEKS                       R65 R64 K159 ["Font"]
     1023 GETUPVAL                         R65 8
     1024 GETTABLEKS                       R65 R65 K210 ["FONT_SIZE_SMALL"]
     1026 SETTABLEKS                       R65 R64 K158 ["TextSize"]
     1028 GETTABLEKS                       R65 R2 K69 ["asset"]
     1030 GETTABLEKS                       R65 R65 K184 ["textColor"]
     1032 SETTABLEKS                       R65 R64 K187 ["TextColor3"]
     1034 CALL                             R62 2 1
     1035 SETTABLEKS                       R62 R61 K131 ["AudioLength"]
     1037 JUMPIFNOT                        R34 ; [+122]
     1038 JUMPIFNOT                        R18 ; [+121]
     1039 JUMPIF                           R19 ; [+120]
     1040 GETUPVAL                         R62 11
     1041 GETTABLEKS                       R62 R62 K77 ["createElement"]
     1043 LOADK                            R63 K78 ["Frame"]
     1044 DUPTABLE                         R64 K212 [{["BackgroundTransparency"] = 1, ["LayoutOrder"] = 50, ["Size"]}]
     1045 GETIMPORT                        R65 K81 [UDim2.new]
     1047 LOADN                            R66 1
     1048 LOADN                            R67 0
     1049 LOADN                            R68 0
     1050 GETUPVAL                         R69 8
     1051 GETTABLEKS                       R69 R69 K66 ["PRICE_HEIGHT"]
     1053 CALL                             R65 4 1
     1054 SETTABLEKS                       R65 R64 K84 ["Size"]
     1056 DUPTABLE                         R65 K214 [{"Layout", "ScriptIcon", "Text"}]
     1057 GETUPVAL                         R66 11
     1058 GETTABLEKS                       R66 R66 K77 ["createElement"]
     1060 LOADK                            R67 K126 ["UIListLayout"]
     1061 DUPTABLE                         R68 K171 [{"SortOrder", "FillDirection", "VerticalAlignment", "HorizontalAlignment", "Padding"}]
     1062 GETIMPORT                        R69 K140 [Enum.SortOrder.LayoutOrder]
     1064 SETTABLEKS                       R69 R68 K134 ["SortOrder"]
     1066 GETIMPORT                        R69 K173 [Enum.FillDirection.Horizontal]
     1068 SETTABLEKS                       R69 R68 K170 ["FillDirection"]
     1070 GETIMPORT                        R69 K174 [Enum.VerticalAlignment.Center]
     1072 SETTABLEKS                       R69 R68 K136 ["VerticalAlignment"]
     1074 GETIMPORT                        R69 K176 [Enum.HorizontalAlignment.Left]
     1076 SETTABLEKS                       R69 R68 K135 ["HorizontalAlignment"]
     1078 GETIMPORT                        R69 K139 [UDim.new]
     1080 LOADN                            R70 0
     1081 LOADN                            R71 4
     1082 CALL                             R69 2 1
     1083 SETTABLEKS                       R69 R68 K133 ["Padding"]
     1085 CALL                             R66 2 1
     1086 SETTABLEKS                       R66 R65 K165 ["Layout"]
     1088 GETUPVAL                         R66 11
     1089 GETTABLEKS                       R66 R66 K77 ["createElement"]
     1091 LOADK                            R67 K177 ["ImageLabel"]
     1092 DUPTABLE                         R68 K215 [{["LayoutOrder"] = 1, ["Image"], ["Size"], ["BackgroundTransparency"] = 1}]
     1093 GETUPVAL                         R69 17
     1094 GETTABLEKS                       R69 R69 K216 ["SCRIPT"]
     1096 SETTABLEKS                       R69 R68 K178 ["Image"]
     1098 GETUPVAL                         R69 8
     1099 GETTABLEKS                       R69 R69 K182 ["Dialog"]
     1101 GETTABLEKS                       R69 R69 K217 ["SCRIPT_SIZE"]
     1103 SETTABLEKS                       R69 R68 K84 ["Size"]
     1105 CALL                             R66 2 1
     1106 SETTABLEKS                       R66 R65 K213 ["ScriptIcon"]
     1108 GETUPVAL                         R66 11
     1109 GETTABLEKS                       R66 R66 K77 ["createElement"]
     1111 LOADK                            R67 K185 ["TextLabel"]
     1112 DUPTABLE                         R68 K218 [{["LayoutOrder"] = 2, ["BackgroundTransparency"] = 1, ["Size"], ["TextColor3"], ["Font"], ["TextSize"], ["TextXAlignment"], ["Text"], ["TextTruncate"]}]
     1113 GETIMPORT                        R69 K81 [UDim2.new]
     1115 LOADN                            R70 1
     1116 LOADN                            R71 -20
     1117 LOADN                            R72 0
     1118 GETUPVAL                         R73 8
     1119 GETTABLEKS                       R73 R73 K66 ["PRICE_HEIGHT"]
     1121 CALL                             R69 4 1
     1122 SETTABLEKS                       R69 R68 K84 ["Size"]
     1124 GETTABLEKS                       R69 R2 K69 ["asset"]
     1126 GETTABLEKS                       R69 R69 K184 ["textColor"]
     1128 SETTABLEKS                       R69 R68 K187 ["TextColor3"]
     1130 GETUPVAL                         R69 8
     1131 GETTABLEKS                       R69 R69 K61 ["FONT"]
     1133 SETTABLEKS                       R69 R68 K159 ["Font"]
     1135 GETUPVAL                         R69 8
     1136 GETTABLEKS                       R69 R69 K219 ["STATUS_NAME_FONT_SIZE"]
     1138 SETTABLEKS                       R69 R68 K158 ["TextSize"]
     1140 GETIMPORT                        R69 K193 [Enum.TextXAlignment.Left]
     1142 SETTABLEKS                       R69 R68 K188 ["TextXAlignment"]
     1144 LOADK                            R71 K220 ["General"]
     1145 LOADK                            R72 K18 ["HasScripts"]
     1146 NAMECALL                         R69 R3 K45 ["getText"]
     1148 CALL                             R69 3 1
     1149 SETTABLEKS                       R69 R68 K189 ["Text"]
     1151 GETIMPORT                        R69 K222 [Enum.TextTruncate.None]
     1153 SETTABLEKS                       R69 R68 K190 ["TextTruncate"]
     1155 CALL                             R66 2 1
     1156 SETTABLEKS                       R66 R65 K189 ["Text"]
     1158 CALL                             R62 3 1
     1159 JUMP                             ; [+1]
     1160 LOADNIL                          R62
     1161 SETTABLEKS                       R62 R61 K18 ["HasScripts"]
     1163 JUMPIFNOT                        R34 ; [+118]
     1164 JUMPIFNOT                        R19 ; [+117]
     1165 GETUPVAL                         R62 11
     1166 GETTABLEKS                       R62 R62 K77 ["createElement"]
     1168 LOADK                            R63 K78 ["Frame"]
     1169 DUPTABLE                         R64 K212 [{["BackgroundTransparency"] = 1, ["LayoutOrder"] = 50, ["Size"]}]
     1170 GETIMPORT                        R65 K81 [UDim2.new]
     1172 LOADN                            R66 1
     1173 LOADN                            R67 0
     1174 LOADN                            R68 0
     1175 GETUPVAL                         R69 8
     1176 GETTABLEKS                       R69 R69 K66 ["PRICE_HEIGHT"]
     1178 CALL                             R65 4 1
     1179 SETTABLEKS                       R65 R64 K84 ["Size"]
     1181 DUPTABLE                         R65 K224 [{"Layout", "PackageIcon", "Text"}]
     1182 GETUPVAL                         R66 11
     1183 GETTABLEKS                       R66 R66 K77 ["createElement"]
     1185 LOADK                            R67 K126 ["UIListLayout"]
     1186 DUPTABLE                         R68 K171 [{"SortOrder", "FillDirection", "VerticalAlignment", "HorizontalAlignment", "Padding"}]
     1187 GETIMPORT                        R69 K140 [Enum.SortOrder.LayoutOrder]
     1189 SETTABLEKS                       R69 R68 K134 ["SortOrder"]
     1191 GETIMPORT                        R69 K173 [Enum.FillDirection.Horizontal]
     1193 SETTABLEKS                       R69 R68 K170 ["FillDirection"]
     1195 GETIMPORT                        R69 K174 [Enum.VerticalAlignment.Center]
     1197 SETTABLEKS                       R69 R68 K136 ["VerticalAlignment"]
     1199 GETIMPORT                        R69 K176 [Enum.HorizontalAlignment.Left]
     1201 SETTABLEKS                       R69 R68 K135 ["HorizontalAlignment"]
     1203 GETIMPORT                        R69 K139 [UDim.new]
     1205 LOADN                            R70 0
     1206 LOADN                            R71 4
     1207 CALL                             R69 2 1
     1208 SETTABLEKS                       R69 R68 K133 ["Padding"]
     1210 CALL                             R66 2 1
     1211 SETTABLEKS                       R66 R65 K165 ["Layout"]
     1213 GETUPVAL                         R66 11
     1214 GETTABLEKS                       R66 R66 K77 ["createElement"]
     1216 LOADK                            R67 K177 ["ImageLabel"]
     1217 DUPTABLE                         R68 K215 [{["LayoutOrder"] = 1, ["Image"], ["Size"], ["BackgroundTransparency"] = 1}]
     1218 GETTABLEKS                       R69 R48 K225 ["packageImage"]
     1220 SETTABLEKS                       R69 R68 K178 ["Image"]
     1222 GETUPVAL                         R69 8
     1223 GETTABLEKS                       R69 R69 K226 ["PACKAGE_DETAIL_SIZE"]
     1225 SETTABLEKS                       R69 R68 K84 ["Size"]
     1227 CALL                             R66 2 1
     1228 SETTABLEKS                       R66 R65 K223 ["PackageIcon"]
     1230 GETUPVAL                         R66 11
     1231 GETTABLEKS                       R66 R66 K77 ["createElement"]
     1233 LOADK                            R67 K185 ["TextLabel"]
     1234 DUPTABLE                         R68 K218 [{["LayoutOrder"] = 2, ["BackgroundTransparency"] = 1, ["Size"], ["TextColor3"], ["Font"], ["TextSize"], ["TextXAlignment"], ["Text"], ["TextTruncate"]}]
     1235 GETIMPORT                        R69 K81 [UDim2.new]
     1237 LOADN                            R70 1
     1238 LOADN                            R71 -20
     1239 LOADN                            R72 0
     1240 GETUPVAL                         R73 8
     1241 GETTABLEKS                       R73 R73 K66 ["PRICE_HEIGHT"]
     1243 CALL                             R69 4 1
     1244 SETTABLEKS                       R69 R68 K84 ["Size"]
     1246 GETTABLEKS                       R69 R2 K69 ["asset"]
     1248 GETTABLEKS                       R69 R69 K184 ["textColor"]
     1250 SETTABLEKS                       R69 R68 K187 ["TextColor3"]
     1252 GETUPVAL                         R69 8
     1253 GETTABLEKS                       R69 R69 K61 ["FONT"]
     1255 SETTABLEKS                       R69 R68 K159 ["Font"]
     1257 GETUPVAL                         R69 8
     1258 GETTABLEKS                       R69 R69 K219 ["STATUS_NAME_FONT_SIZE"]
     1260 SETTABLEKS                       R69 R68 K158 ["TextSize"]
     1262 GETIMPORT                        R69 K193 [Enum.TextXAlignment.Left]
     1264 SETTABLEKS                       R69 R68 K188 ["TextXAlignment"]
     1266 LOADK                            R71 K220 ["General"]
     1267 LOADK                            R72 K227 ["PackagesUpdateable"]
     1268 NAMECALL                         R69 R3 K45 ["getText"]
     1270 CALL                             R69 3 1
     1271 SETTABLEKS                       R69 R68 K189 ["Text"]
     1273 GETIMPORT                        R69 K222 [Enum.TextTruncate.None]
     1275 SETTABLEKS                       R69 R68 K190 ["TextTruncate"]
     1277 CALL                             R66 2 1
     1278 SETTABLEKS                       R66 R65 K189 ["Text"]
     1280 CALL                             R62 3 1
     1281 JUMP                             ; [+1]
     1282 LOADNIL                          R62
     1283 SETTABLEKS                       R62 R61 K21 ["Package"]
     1285 MOVE                             R62 R34
     1286 JUMPIFNOT                        R62 ; [+53]
     1287 MOVE                             R62 R33
     1288 JUMPIFNOT                        R62 ; [+51]
     1289 GETUPVAL                         R62 11
     1290 GETTABLEKS                       R62 R62 K77 ["createElement"]
     1292 LOADK                            R63 K185 ["TextLabel"]
     1293 DUPTABLE                         R64 K232 [{["BackgroundTransparency"] = 1, ["LayoutOrder"] = 60, ["Size"], ["Text"], ["TextColor3"], ["Font"], ["TextSize"], ["TextXAlignment"], ["TextYAlignment"], ["ClipsDescendants"] = False, ["TextTruncate"]}]
     1294 GETIMPORT                        R65 K81 [UDim2.new]
     1296 LOADN                            R66 1
     1297 LOADN                            R67 0
     1298 LOADN                            R68 0
     1299 GETUPVAL                         R69 8
     1300 GETTABLEKS                       R69 R69 K233 ["STATUS_NAME_HEIGHT"]
     1302 CALL                             R65 4 1
     1303 SETTABLEKS                       R65 R64 K84 ["Size"]
     1305 GETUPVAL                         R66 21
     1306 MOVE                             R67 R3
     1307 CALL                             R66 1 1
     1308 GETTABLE                         R65 R66 R22
     1309 SETTABLEKS                       R65 R64 K189 ["Text"]
     1311 GETTABLEKS                       R65 R2 K69 ["asset"]
     1313 GETTABLEKS                       R65 R65 K184 ["textColor"]
     1315 SETTABLEKS                       R65 R64 K187 ["TextColor3"]
     1317 GETUPVAL                         R65 8
     1318 GETTABLEKS                       R65 R65 K61 ["FONT"]
     1320 SETTABLEKS                       R65 R64 K159 ["Font"]
     1322 GETUPVAL                         R65 8
     1323 GETTABLEKS                       R65 R65 K219 ["STATUS_NAME_FONT_SIZE"]
     1325 SETTABLEKS                       R65 R64 K158 ["TextSize"]
     1327 GETIMPORT                        R65 K234 [Enum.TextXAlignment.Center]
     1329 SETTABLEKS                       R65 R64 K188 ["TextXAlignment"]
     1331 GETIMPORT                        R65 K235 [Enum.TextYAlignment.Top]
     1333 SETTABLEKS                       R65 R64 K229 ["TextYAlignment"]
     1335 GETIMPORT                        R65 K222 [Enum.TextTruncate.None]
     1337 SETTABLEKS                       R65 R64 K190 ["TextTruncate"]
     1339 CALL                             R62 2 1
     1340 SETTABLEKS                       R62 R61 K28 ["Status"]
     1342 CALL                             R58 3 1
     1343 SETTABLEKS                       R58 R57 K94 ["InnerFrame"]
     1345 CALL                             R54 3 1
     1346 RETURN                           R54 1

PROTO_18:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETTABLEKS                       R2 R0 K0 ["assets"]
        7 JUMPIF                           R2 ; [+2]
        8 NEWTABLE                         R2 0 0
       10 GETTABLEKS                       R3 R0 K1 ["voting"]
       12 JUMPIF                           R3 ; [+2]
       13 NEWTABLE                         R3 0 0
       15 GETTABLEKS                       R4 R0 K2 ["sound"]
       17 JUMPIF                           R4 ; [+2]
       18 NEWTABLE                         R4 0 0
       20 GETTABLEKS                       R5 R2 K3 ["idToAssetMap"]
       22 JUMPIF                           R5 ; [+2]
       23 NEWTABLE                         R5 0 0
       25 GETTABLEKS                       R6 R1 K4 ["assetId"]
       27 GETTABLEKS                       R7 R0 K5 ["pageInfo"]
       29 JUMPIF                           R7 ; [+2]
       30 NEWTABLE                         R7 0 0
       32 GETTABLEKS                       R8 R7 K6 ["categoryName"]
       34 JUMPIF                           R8 ; [+5]
       35 GETUPVAL                         R8 0
       36 GETTABLEKS                       R8 R8 K7 ["DEFAULT"]
       38 GETTABLEKS                       R8 R8 K8 ["name"]
       40 GETTABLEKS                       R10 R7 K10 ["searchTerm"]
       42 ORK                              R9 R10 K9 [""]
       43 GETTABLEKS                       R10 R0 K11 ["purchase"]
       45 GETTABLEKS                       R10 R10 K12 ["cachedOwnedAssets"]
       47 FASTCALL1                        TOSTRING R6 ; [+3]
       48 MOVE                             R13 R6
       49 GETIMPORT                        R12 K14 [tostring]
       51 CALL                             R12 1 1
       52 GETTABLE                         R11 R10 R12
       53 GETTABLEKS                       R12 R2 K15 ["manageableAssets"]
       55 JUMPIF                           R12 ; [+2]
       56 NEWTABLE                         R12 0 0
       58 FASTCALL1                        TOSTRING R6 ; [+3]
       59 MOVE                             R15 R6
       60 GETIMPORT                        R14 K14 [tostring]
       62 CALL                             R14 1 1
       63 GETTABLE                         R13 R12 R14
       64 LOADNIL                          R14
       65 GETTABLEKS                       R15 R1 K16 ["assetData"]
       67 JUMPIF                           R15 ; [+3]
       68 GETTABLEKS                       R14 R1 K16 ["assetData"]
       70 JUMP                             ; [+1]
       71 GETTABLE                         R14 R5 R6
       72 DUPTABLE                         R15 K22 [{"assetData", "categoryName", "currentSoundId", "currentUserPackagePermissions", "searchTerm", "ownsAsset", "isLoading", "voting", "hasTutorialLimits"}]
       73 SETTABLEKS                       R14 R15 K16 ["assetData"]
       75 SETTABLEKS                       R8 R15 K6 ["categoryName"]
       77 GETTABLEKS                       R17 R4 K17 ["currentSoundId"]
       79 ORK                              R16 R17 K23 [0]
       80 SETTABLEKS                       R16 R15 K17 ["currentSoundId"]
       82 GETTABLEKS                       R16 R0 K24 ["packages"]
       84 GETTABLEKS                       R16 R16 K25 ["permissionsTable"]
       86 JUMPIF                           R16 ; [+4]
       87 NEWTABLE                         R16 0 0
       89 JUMPIF                           R16 ; [+1]
       90 LOADNIL                          R16
       91 SETTABLEKS                       R16 R15 K18 ["currentUserPackagePermissions"]
       93 SETTABLEKS                       R9 R15 K10 ["searchTerm"]
       95 SETTABLEKS                       R11 R15 K19 ["ownsAsset"]
       97 GETTABLEKS                       R17 R4 K17 ["currentSoundId"]
       99 JUMPIFNOTEQ                      R17 R6 ; [+4]
      101 GETTABLEKS                       R16 R4 K20 ["isLoading"]
      103 JUMPIF                           R16 ; [+1]
      104 LOADB                            R16 0
      105 SETTABLEKS                       R16 R15 K20 ["isLoading"]
      107 GETTABLE                         R16 R3 R6
      108 JUMPIF                           R16 ; [+2]
      109 NEWTABLE                         R16 0 0
      111 SETTABLEKS                       R16 R15 K1 ["voting"]
      113 GETTABLEKS                       R17 R0 K26 ["tutorialLimits"]
      115 GETTABLEKS                       R17 R17 K27 ["assetIds"]
      117 JUMPIFNOTEQKNIL                  R17 ; [+2]
      119 LOADB                            R16 0 +1
      120 LOADB                            R16 1
      121 SETTABLEKS                       R16 R15 K21 ["hasTutorialLimits"]
      123 RETURN                           R15 1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 LOADB                            R8 1
        6 CALL                             R4 4 -1
        7 CALL                             R3 -1 0
        8 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R5 0
        1 GETUPVAL                         R6 1
        2 MOVE                             R7 R0
        3 MOVE                             R8 R1
        4 MOVE                             R9 R2
        5 MOVE                             R10 R3
        6 MOVE                             R11 R4
        7 CALL                             R6 5 -1
        8 CALL                             R5 -1 0
        9 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 -1
        4 RETURN                           R0 -1

PROTO_25:
        0 DUPTABLE                         R1 K6 [{"getAssetMediaIds", "getOwnsAsset", "getCanManageAsset", "getVote", "tryCreateContextMenu", "getPageInfoAnalyticsContextInfo"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["getAssetMediaIds"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["getOwnsAsset"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["getCanManageAsset"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["getVote"]
       21 NEWCLOSURE                       R2 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U4
       24 SETTABLEKS                       R2 R1 K4 ["tryCreateContextMenu"]
       26 NEWCLOSURE                       R2 P5
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U5
       29 SETTABLEKS                       R2 R1 K5 ["getPageInfoAnalyticsContextInfo"]
       31 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Src"]
       13 GETTABLEKS                       R1 R1 K4 ["Util"]
       15 GETIMPORT                        R2 K6 [require]
       17 GETTABLEKS                       R3 R0 K3 ["Src"]
       19 GETTABLEKS                       R3 R3 K4 ["Util"]
       21 GETTABLEKS                       R3 R3 K7 ["SharedFlags"]
       23 GETTABLEKS                       R3 R3 K8 ["getFFlagToolboxFixInventoryGridSearch"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K6 [require]
       28 GETTABLEKS                       R4 R0 K3 ["Src"]
       30 GETTABLEKS                       R4 R4 K4 ["Util"]
       32 GETTABLEKS                       R4 R4 K7 ["SharedFlags"]
       34 GETTABLEKS                       R4 R4 K9 ["getFFlagToolboxRemoveRobuxProductEntirely"]
       36 CALL                             R3 1 1
       37 GETIMPORT                        R4 K6 [require]
       39 GETTABLEKS                       R5 R0 K3 ["Src"]
       41 GETTABLEKS                       R5 R5 K4 ["Util"]
       43 GETTABLEKS                       R5 R5 K7 ["SharedFlags"]
       45 GETTABLEKS                       R5 R5 K10 ["getFFlagToolboxOpenAssetPreviewIfFiatCannotBeInserted"]
       47 CALL                             R4 1 1
       48 GETIMPORT                        R5 K12 [game]
       50 LOADK                            R7 K13 ["ToolboxFixAbsolutePositionResizing"]
       51 LOADB                            R8 0
       52 NAMECALL                         R5 R5 K14 ["DefineFastFlag"]
       54 CALL                             R5 3 1
       55 GETTABLEKS                       R6 R0 K15 ["Packages"]
       57 GETIMPORT                        R7 K6 [require]
       59 GETTABLEKS                       R8 R6 K16 ["Roact"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K6 [require]
       64 GETTABLEKS                       R9 R6 K17 ["RoactRodux"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K6 [require]
       69 GETTABLEKS                       R10 R1 K18 ["Constants"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K6 [require]
       74 GETTABLEKS                       R11 R1 K19 ["DebugFlags"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K6 [require]
       79 GETTABLEKS                       R12 R1 K20 ["Images"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K6 [require]
       84 GETTABLEKS                       R13 R1 K21 ["getTimeString"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K6 [require]
       89 GETTABLEKS                       R14 R1 K22 ["Analytics"]
       91 GETTABLEKS                       R14 R14 K23 ["AssetAnalyticsContextItem"]
       93 CALL                             R13 1 1
       94 GETIMPORT                        R14 K6 [require]
       96 GETTABLEKS                       R15 R1 K24 ["AssetUtil"]
       98 CALL                             R14 1 1
       99 GETIMPORT                        R15 K6 [require]
      101 GETTABLEKS                       R16 R1 K25 ["FiatUtil"]
      103 CALL                             R15 1 1
      104 GETIMPORT                        R16 K6 [require]
      106 GETTABLEKS                       R17 R0 K3 ["Src"]
      108 GETTABLEKS                       R17 R17 K26 ["Localization"]
      110 GETTABLEKS                       R17 R17 K27 ["getLocalizedAssetStatusMap"]
      112 CALL                             R16 1 1
      113 GETTABLEKS                       R17 R0 K3 ["Src"]
      115 GETTABLEKS                       R17 R17 K28 ["Components"]
      117 GETTABLEKS                       R18 R17 K29 ["Asset"]
      119 GETIMPORT                        R19 K6 [require]
      121 GETTABLEKS                       R20 R17 K30 ["DraggableButton"]
      123 CALL                             R19 1 1
      124 GETIMPORT                        R20 K6 [require]
      126 GETTABLEKS                       R21 R17 K31 ["DropShadow"]
      128 CALL                             R20 1 1
      129 GETIMPORT                        R21 K6 [require]
      131 GETTABLEKS                       R22 R18 K32 ["AssetCreatorName"]
      133 CALL                             R21 1 1
      134 GETIMPORT                        R22 K6 [require]
      136 GETTABLEKS                       R23 R18 K33 ["AssetIcon"]
      138 CALL                             R22 1 1
      139 GETIMPORT                        R23 K6 [require]
      141 GETTABLEKS                       R24 R18 K34 ["AssetName"]
      143 CALL                             R23 1 1
      144 GETIMPORT                        R24 K6 [require]
      146 GETTABLEKS                       R25 R18 K35 ["Voting"]
      148 GETTABLEKS                       R25 R25 K35 ["Voting"]
      150 CALL                             R24 1 1
      151 GETIMPORT                        R25 K6 [require]
      153 GETTABLEKS                       R26 R0 K3 ["Src"]
      155 GETTABLEKS                       R26 R26 K36 ["Thunks"]
      157 GETTABLEKS                       R26 R26 K37 ["GetPageInfoAnalyticsContextInfo"]
      159 CALL                             R25 1 1
      160 GETIMPORT                        R26 K6 [require]
      162 GETTABLEKS                       R27 R0 K3 ["Src"]
      164 GETTABLEKS                       R27 R27 K36 ["Thunks"]
      166 GETTABLEKS                       R27 R27 K38 ["TryCreateContextMenu"]
      168 CALL                             R26 1 1
      169 GETIMPORT                        R27 K6 [require]
      171 GETTABLEKS                       R28 R0 K3 ["Src"]
      173 GETTABLEKS                       R28 R28 K28 ["Components"]
      175 GETTABLEKS                       R28 R28 K39 ["AssetConfiguration"]
      177 GETTABLEKS                       R28 R28 K40 ["Permissions"]
      179 GETTABLEKS                       R28 R28 K41 ["PermissionsConstants"]
      181 CALL                             R27 1 1
      182 GETIMPORT                        R28 K6 [require]
      184 GETTABLEKS                       R29 R0 K3 ["Src"]
      186 GETTABLEKS                       R29 R29 K42 ["Networking"]
      188 GETTABLEKS                       R29 R29 K43 ["Requests"]
      190 GETTABLEKS                       R29 R29 K44 ["GetAssetMediaIdsRequest"]
      192 CALL                             R28 1 1
      193 GETIMPORT                        R29 K6 [require]
      195 GETTABLEKS                       R30 R0 K3 ["Src"]
      197 GETTABLEKS                       R30 R30 K42 ["Networking"]
      199 GETTABLEKS                       R30 R30 K43 ["Requests"]
      201 GETTABLEKS                       R30 R30 K45 ["GetOwnsAssetRequest"]
      203 CALL                             R29 1 1
      204 GETIMPORT                        R30 K6 [require]
      206 GETTABLEKS                       R31 R0 K3 ["Src"]
      208 GETTABLEKS                       R31 R31 K42 ["Networking"]
      210 GETTABLEKS                       R31 R31 K43 ["Requests"]
      212 GETTABLEKS                       R31 R31 K46 ["GetCanManageAssetRequest"]
      214 CALL                             R30 1 1
      215 GETIMPORT                        R31 K6 [require]
      217 GETTABLEKS                       R32 R0 K3 ["Src"]
      219 GETTABLEKS                       R32 R32 K42 ["Networking"]
      221 GETTABLEKS                       R32 R32 K43 ["Requests"]
      223 GETTABLEKS                       R32 R32 K47 ["GetVoteRequest"]
      225 CALL                             R31 1 1
      226 GETIMPORT                        R32 K6 [require]
      228 GETTABLEKS                       R33 R0 K3 ["Src"]
      230 GETTABLEKS                       R33 R33 K48 ["ContextServices"]
      232 GETTABLEKS                       R33 R33 K49 ["NavigationContext"]
      234 CALL                             R32 1 1
      235 GETIMPORT                        R33 K6 [require]
      237 GETTABLEKS                       R34 R6 K50 ["Framework"]
      239 CALL                             R33 1 1
      240 GETTABLEKS                       R34 R33 K48 ["ContextServices"]
      242 GETTABLEKS                       R35 R34 K51 ["withContext"]
      244 GETIMPORT                        R36 K6 [require]
      246 GETTABLEKS                       R37 R0 K3 ["Src"]
      248 GETTABLEKS                       R37 R37 K48 ["ContextServices"]
      250 GETTABLEKS                       R37 R37 K52 ["NetworkContext"]
      252 CALL                             R36 1 1
      253 GETTABLEKS                       R37 R33 K53 ["UI"]
      255 GETTABLEKS                       R37 R37 K54 ["TextLabel"]
      257 GETTABLEKS                       R38 R33 K4 ["Util"]
      259 GETTABLEKS                       R39 R38 K55 ["formatVoteNumber"]
      261 GETTABLEKS                       R40 R38 K56 ["GetTextSize"]
      263 GETIMPORT                        R41 K6 [require]
      265 GETTABLEKS                       R42 R0 K3 ["Src"]
      267 GETTABLEKS                       R42 R42 K4 ["Util"]
      269 GETTABLEKS                       R42 R42 K57 ["ToolboxUtilities"]
      271 CALL                             R41 1 1
      272 GETTABLEKS                       R41 R41 K58 ["disableRatings"]
      274 GETTABLEKS                       R42 R0 K3 ["Src"]
      276 GETTABLEKS                       R42 R42 K59 ["Types"]
      278 GETIMPORT                        R43 K6 [require]
      280 GETTABLEKS                       R44 R42 K60 ["Category"]
      282 CALL                             R43 1 1
      283 GETIMPORT                        R44 K6 [require]
      285 GETTABLEKS                       R45 R42 K61 ["AssetSubTypes"]
      287 CALL                             R44 1 1
      288 GETTABLEKS                       R45 R7 K62 ["PureComponent"]
      290 LOADK                            R47 K29 ["Asset"]
      291 NAMECALL                         R45 R45 K63 ["extend"]
      293 CALL                             R45 2 1
      294 DUPTABLE                         R46 K71 [{["parentSize"], ["parentAbsolutePosition"], ["logImpression"], ["onAssetHovered"], ["onAssetHoverEnded"], ["shouldLogOnMount"] = True}]
      295 GETIMPORT                        R47 K74 [Vector2.new]
      297 CALL                             R47 0 1
      298 SETTABLEKS                       R47 R46 K64 ["parentSize"]
      300 GETIMPORT                        R47 K74 [Vector2.new]
      302 CALL                             R47 0 1
      303 SETTABLEKS                       R47 R46 K65 ["parentAbsolutePosition"]
      305 DUPCLOSURE                       R47 K75 [PROTO_0]
      306 SETTABLEKS                       R47 R46 K66 ["logImpression"]
      308 DUPCLOSURE                       R47 K76 [PROTO_1]
      309 SETTABLEKS                       R47 R46 K67 ["onAssetHovered"]
      311 DUPCLOSURE                       R47 K77 [PROTO_2]
      312 SETTABLEKS                       R47 R46 K68 ["onAssetHoverEnded"]
      314 SETTABLEKS                       R46 R45 K78 ["defaultProps"]
      316 DUPCLOSURE                       R46 K79 [PROTO_13]
      317 CAPTURE                          VAL R7
      318 CAPTURE                          VAL R43
      319 CAPTURE                          VAL R15
      320 CAPTURE                          VAL R4
      321 CAPTURE                          VAL R14
      322 SETTABLEKS                       R46 R45 K80 ["init"]
      324 DUPCLOSURE                       R46 K81 [PROTO_14]
      325 SETTABLEKS                       R46 R45 K82 ["didMount"]
      327 DUPCLOSURE                       R46 K83 [PROTO_15]
      328 CAPTURE                          VAL R5
      329 SETTABLEKS                       R46 R45 K84 ["didUpdate"]
      331 DUPCLOSURE                       R46 K85 [PROTO_17]
      332 CAPTURE                          VAL R43
      333 CAPTURE                          VAL R27
      334 CAPTURE                          VAL R44
      335 CAPTURE                          VAL R15
      336 CAPTURE                          VAL R3
      337 CAPTURE                          VAL R10
      338 CAPTURE                          VAL R41
      339 CAPTURE                          VAL R39
      340 CAPTURE                          VAL R9
      341 CAPTURE                          VAL R40
      342 CAPTURE                          VAL R12
      343 CAPTURE                          VAL R7
      344 CAPTURE                          VAL R14
      345 CAPTURE                          VAL R20
      346 CAPTURE                          VAL R19
      347 CAPTURE                          VAL R22
      348 CAPTURE                          VAL R23
      349 CAPTURE                          VAL R11
      350 CAPTURE                          VAL R21
      351 CAPTURE                          VAL R2
      352 CAPTURE                          VAL R24
      353 CAPTURE                          VAL R16
      354 SETTABLEKS                       R46 R45 K86 ["render"]
      356 MOVE                             R46 R35
      357 DUPTABLE                         R47 K91 [{"AssetAnalytics", "Localization", "Plugin", "NavigationContext", "Stylizer", "Network"}]
      358 SETTABLEKS                       R13 R47 K87 ["AssetAnalytics"]
      360 GETTABLEKS                       R48 R34 K26 ["Localization"]
      362 SETTABLEKS                       R48 R47 K26 ["Localization"]
      364 GETTABLEKS                       R48 R34 K88 ["Plugin"]
      366 SETTABLEKS                       R48 R47 K88 ["Plugin"]
      368 SETTABLEKS                       R32 R47 K49 ["NavigationContext"]
      370 GETTABLEKS                       R48 R34 K89 ["Stylizer"]
      372 SETTABLEKS                       R48 R47 K89 ["Stylizer"]
      374 SETTABLEKS                       R36 R47 K90 ["Network"]
      376 CALL                             R46 1 1
      377 MOVE                             R47 R45
      378 CALL                             R46 1 1
      379 MOVE                             R45 R46
      380 DUPCLOSURE                       R46 K92 [PROTO_18]
      381 CAPTURE                          VAL R43
      382 DUPCLOSURE                       R47 K93 [PROTO_25]
      383 CAPTURE                          VAL R28
      384 CAPTURE                          VAL R29
      385 CAPTURE                          VAL R30
      386 CAPTURE                          VAL R31
      387 CAPTURE                          VAL R26
      388 CAPTURE                          VAL R25
      389 GETTABLEKS                       R48 R8 K94 ["connect"]
      391 MOVE                             R49 R46
      392 MOVE                             R50 R47
      393 CALL                             R48 2 1
      394 MOVE                             R49 R45
      395 CALL                             R48 1 -1
      396 RETURN                           R48 -1
