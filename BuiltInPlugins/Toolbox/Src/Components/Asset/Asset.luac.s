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
       12 DUPTABLE                         R2 K5 [{"hoverPosition"}]
       13 LOADNIL                          R3
       14 SETTABLEKS                       R3 R2 K4 ["hoverPosition"]
       16 SETTABLEKS                       R2 R0 K6 ["state"]
       18 GETTABLEKS                       R2 R1 K7 ["canInsertAsset"]
       20 LOADB                            R3 0
       21 SETTABLEKS                       R3 R0 K8 ["showVotes"]
       23 NEWCLOSURE                       R3 P0
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          VAL R1
       27 SETTABLEKS                       R3 R0 K9 ["onMouseEntered"]
       29 NEWCLOSURE                       R3 P1
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R3 R0 K10 ["onMouseLeave"]
       33 NEWCLOSURE                       R3 P2
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R3 R0 K11 ["onInputEnded"]
       37 NEWCLOSURE                       R3 P3
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R3 R0 K12 ["onMouseMoved"]
       41 NEWCLOSURE                       R3 P4
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          UPVAL U2
       45 SETTABLEKS                       R3 R0 K7 ["canInsertAsset"]
       47 NEWCLOSURE                       R3 P5
       48 CAPTURE                          VAL R0
       49 SETTABLEKS                       R3 R0 K13 ["onDragStart"]
       51 NEWCLOSURE                       R3 P6
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U3
       54 SETTABLEKS                       R3 R0 K14 ["onClick"]
       56 NEWCLOSURE                       R3 P7
       57 CAPTURE                          VAL R0
       58 SETTABLEKS                       R3 R0 K15 ["onAssetPreviewButtonClicked"]
       60 NEWCLOSURE                       R3 P8
       61 CAPTURE                          VAL R0
       62 SETTABLEKS                       R3 R0 K16 ["tryCreateContextMenu"]
       64 NEWCLOSURE                       R3 P9
       65 CAPTURE                          VAL R0
       66 CAPTURE                          UPVAL U4
       67 SETTABLEKS                       R3 R0 K17 ["onAbsolutePositionChange"]
       69 RETURN                           R0 0

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
      421 JUMPIFNOT                        R58 ; [+45]
      422 GETUPVAL                         R58 11
      423 GETTABLEKS                       R58 R58 K77 ["createElement"]
      425 GETUPVAL                         R59 13
      426 DUPTABLE                         R60 K97 [{"AnchorPoint", "Position", "Size", "ZIndex"}]
      427 GETIMPORT                        R61 K99 [Vector2.new]
      429 LOADK                            R62 K100 [0.5]
      430 LOADN                            R63 0
      431 CALL                             R61 2 1
      432 SETTABLEKS                       R61 R60 K96 ["AnchorPoint"]
      434 GETIMPORT                        R61 K81 [UDim2.new]
      436 LOADK                            R62 K100 [0.5]
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
      463 LOADN                            R61 254
      464 SETTABLEKS                       R61 R60 K86 ["ZIndex"]
      466 CALL                             R58 2 1
      467 SETTABLEKS                       R58 R57 K92 ["DropShadow"]
      469 GETUPVAL                         R58 11
      470 GETTABLEKS                       R58 R58 K77 ["createElement"]
      472 LOADK                            R59 K78 ["Frame"]
      473 NEWTABLE                         R60 16 0
      475 GETIMPORT                        R61 K99 [Vector2.new]
      477 LOADK                            R62 K100 [0.5]
      478 LOADN                            R63 0
      479 CALL                             R61 2 1
      480 SETTABLEKS                       R61 R60 K96 ["AnchorPoint"]
      482 JUMPIF                           R34 ; [+3]
      483 GETTABLEKS                       R62 R1 K101 ["hasTutorialLimits"]
      485 JUMPIFNOT                        R62 ; [+2]
      486 MOVE                             R61 R51
      487 JUMP                             ; [+1]
      488 LOADN                            R61 1
      489 SETTABLEKS                       R61 R60 K85 ["BackgroundTransparency"]
      491 SETTABLEKS                       R53 R60 K102 ["BackgroundColor3"]
      493 GETTABLEKS                       R61 R45 K103 ["borderColor"]
      495 SETTABLEKS                       R61 R60 K104 ["BorderColor3"]
      497 LOADN                            R61 1
      498 SETTABLEKS                       R61 R60 K105 ["BorderSizePixel"]
      500 GETIMPORT                        R61 K81 [UDim2.new]
      502 LOADK                            R62 K100 [0.5]
      503 LOADN                            R63 0
      504 LOADN                            R64 0
      505 GETUPVAL                         R66 8
      506 GETTABLEKS                       R66 R66 K71 ["ASSET_OUTLINE_PADDING"]
      508 MINUS                            R65 R66
      509 CALL                             R61 4 1
      510 SETTABLEKS                       R61 R60 K82 ["Position"]
      512 GETIMPORT                        R61 K81 [UDim2.new]
      514 LOADN                            R62 1
      515 LOADN                            R64 2
      516 GETUPVAL                         R65 8
      517 GETTABLEKS                       R65 R65 K71 ["ASSET_OUTLINE_PADDING"]
      519 MUL                              R63 R64 R65
      520 LOADN                            R64 1
      521 MOVE                             R65 R35
      522 CALL                             R61 4 1
      523 SETTABLEKS                       R61 R60 K84 ["Size"]
      525 LOADN                            R61 255
      526 SETTABLEKS                       R61 R60 K86 ["ZIndex"]
      528 GETUPVAL                         R61 11
      529 GETTABLEKS                       R61 R61 K106 ["Event"]
      531 GETTABLEKS                       R61 R61 K107 ["MouseLeave"]
      533 GETTABLEKS                       R62 R0 K108 ["onMouseLeave"]
      535 SETTABLE                         R62 R60 R61
      536 GETUPVAL                         R61 11
      537 GETTABLEKS                       R61 R61 K106 ["Event"]
      539 GETTABLEKS                       R61 R61 K109 ["InputEnded"]
      541 GETTABLEKS                       R62 R0 K110 ["onInputEnded"]
      543 SETTABLE                         R62 R60 R61
      544 DUPTABLE                         R61 K112 [{"TutorialStroke"}]
      545 GETTABLEKS                       R63 R1 K101 ["hasTutorialLimits"]
      547 JUMPIFNOT                        R63 ; [+19]
      548 GETUPVAL                         R62 11
      549 GETTABLEKS                       R62 R62 K77 ["createElement"]
      551 LOADK                            R63 K113 ["UIStroke"]
      552 DUPTABLE                         R64 K116 [{"Thickness", "Color"}]
      553 GETTABLEKS                       R65 R2 K69 ["asset"]
      555 GETTABLEKS                       R65 R65 K117 ["strokeThickness"]
      557 SETTABLEKS                       R65 R64 K114 ["Thickness"]
      559 GETTABLEKS                       R65 R2 K69 ["asset"]
      561 GETTABLEKS                       R65 R65 K118 ["strokeColor"]
      563 SETTABLEKS                       R65 R64 K115 ["Color"]
      565 CALL                             R62 2 1
      566 JUMP                             ; [+1]
      567 LOADNIL                          R62
      568 SETTABLEKS                       R62 R61 K111 ["TutorialStroke"]
      570 CALL                             R58 3 1
      571 SETTABLEKS                       R58 R57 K93 ["Outline"]
      573 GETUPVAL                         R58 11
      574 GETTABLEKS                       R58 R58 K77 ["createElement"]
      576 GETUPVAL                         R59 14
      577 NEWTABLE                         R60 8 0
      579 LOADN                            R61 1
      580 SETTABLEKS                       R61 R60 K85 ["BackgroundTransparency"]
      582 GETIMPORT                        R61 K81 [UDim2.new]
      584 LOADN                            R62 0
      585 LOADN                            R63 0
      586 LOADN                            R64 0
      587 LOADN                            R65 0
      588 CALL                             R61 4 1
      589 SETTABLEKS                       R61 R60 K82 ["Position"]
      591 GETIMPORT                        R61 K81 [UDim2.new]
      593 LOADN                            R62 1
      594 LOADN                            R63 0
      595 LOADN                            R64 1
      596 MOVE                             R65 R46
      597 CALL                             R61 4 1
      598 SETTABLEKS                       R61 R60 K84 ["Size"]
      600 GETUPVAL                         R61 11
      601 GETTABLEKS                       R61 R61 K106 ["Event"]
      603 GETTABLEKS                       R61 R61 K119 ["MouseEnter"]
      605 GETTABLEKS                       R62 R0 K120 ["onMouseEntered"]
      607 SETTABLE                         R62 R60 R61
      608 GETUPVAL                         R61 11
      609 GETTABLEKS                       R61 R61 K106 ["Event"]
      611 GETTABLEKS                       R61 R61 K121 ["MouseButton2Click"]
      613 SETTABLE                         R52 R60 R61
      614 GETTABLEKS                       R61 R0 K122 ["onMouseMoved"]
      616 SETTABLEKS                       R61 R60 K122 ["onMouseMoved"]
      618 GETTABLEKS                       R61 R0 K123 ["onDragStart"]
      620 SETTABLEKS                       R61 R60 K123 ["onDragStart"]
      622 GETTABLEKS                       R61 R0 K124 ["onClick"]
      624 SETTABLEKS                       R61 R60 K124 ["onClick"]
      626 DUPTABLE                         R61 K131 [{"UIListLayout", "AssetIcon", "AssetName", "Price", "CreatorName", "Voting", "AudioLength", "HasScripts", "Package", "Status"}]
      627 GETUPVAL                         R62 11
      628 GETTABLEKS                       R62 R62 K77 ["createElement"]
      630 LOADK                            R63 K125 ["UIListLayout"]
      631 DUPTABLE                         R64 K136 [{"Padding", "SortOrder", "HorizontalAlignment", "VerticalAlignment"}]
      632 GETIMPORT                        R65 K138 [UDim.new]
      634 LOADN                            R66 0
      635 MOVE                             R67 R47
      636 CALL                             R65 2 1
      637 SETTABLEKS                       R65 R64 K132 ["Padding"]
      639 GETIMPORT                        R65 K139 [Enum.SortOrder.LayoutOrder]
      641 SETTABLEKS                       R65 R64 K133 ["SortOrder"]
      643 GETIMPORT                        R65 K141 [Enum.HorizontalAlignment.Center]
      645 SETTABLEKS                       R65 R64 K134 ["HorizontalAlignment"]
      647 GETIMPORT                        R65 K143 [Enum.VerticalAlignment.Top]
      649 SETTABLEKS                       R65 R64 K135 ["VerticalAlignment"]
      651 CALL                             R62 2 1
      652 SETTABLEKS                       R62 R61 K125 ["UIListLayout"]
      654 GETUPVAL                         R62 11
      655 GETTABLEKS                       R62 R62 K77 ["createElement"]
      657 GETUPVAL                         R63 15
      658 DUPTABLE                         R64 K154 [{"Size", "LayoutOrder", "assetId", "assetName", "assetTileLocation", "currentSoundId", "isEndorsed", "isLoading", "typeId", "originalAssetId", "voting", "isHovered", "isPackage", "status", "onAssetPreviewButtonClicked"}]
      659 GETIMPORT                        R65 K81 [UDim2.new]
      661 LOADN                            R66 1
      662 LOADN                            R67 0
      663 LOADN                            R68 1
      664 LOADN                            R69 0
      665 CALL                             R65 4 1
      666 SETTABLEKS                       R65 R64 K84 ["Size"]
      668 LOADN                            R65 0
      669 SETTABLEKS                       R65 R64 K11 ["LayoutOrder"]
      671 SETTABLEKS                       R4 R64 K3 ["assetId"]
      673 SETTABLEKS                       R21 R64 K144 ["assetName"]
      675 GETTABLEKS                       R65 R1 K145 ["assetTileLocation"]
      677 SETTABLEKS                       R65 R64 K145 ["assetTileLocation"]
      679 GETTABLEKS                       R65 R1 K146 ["currentSoundId"]
      681 SETTABLEKS                       R65 R64 K146 ["currentSoundId"]
      683 SETTABLEKS                       R16 R64 K147 ["isEndorsed"]
      685 GETTABLEKS                       R65 R1 K148 ["isLoading"]
      687 SETTABLEKS                       R65 R64 K148 ["isLoading"]
      689 SETTABLEKS                       R15 R64 K149 ["typeId"]
      691 GETTABLEKS                       R65 R1 K150 ["originalAssetId"]
      693 SETTABLEKS                       R65 R64 K150 ["originalAssetId"]
      695 SETTABLEKS                       R29 R64 K46 ["voting"]
      697 SETTABLEKS                       R34 R64 K52 ["isHovered"]
      699 SETTABLEKS                       R19 R64 K151 ["isPackage"]
      701 JUMPIFNOT                        R33 ; [+2]
      702 MOVE                             R65 R22
      703 JUMPIF                           R65 ; [+1]
      704 LOADNIL                          R65
      705 SETTABLEKS                       R65 R64 K152 ["status"]
      707 GETTABLEKS                       R65 R0 K153 ["onAssetPreviewButtonClicked"]
      709 SETTABLEKS                       R65 R64 K153 ["onAssetPreviewButtonClicked"]
      711 CALL                             R62 2 1
      712 SETTABLEKS                       R62 R61 K126 ["AssetIcon"]
      714 GETUPVAL                         R62 11
      715 GETTABLEKS                       R62 R62 K77 ["createElement"]
      717 GETUPVAL                         R63 16
      718 DUPTABLE                         R64 K158 [{"Size", "LayoutOrder", "NumberRows", "assetId", "assetName", "TextSize", "Font"}]
      719 GETIMPORT                        R65 K81 [UDim2.new]
      721 LOADN                            R66 1
      722 LOADN                            R67 0
      723 LOADK                            R68 K159 [0.45]
      724 LOADN                            R69 0
      725 CALL                             R65 4 1
      726 SETTABLEKS                       R65 R64 K84 ["Size"]
      728 LOADN                            R65 10
      729 SETTABLEKS                       R65 R64 K11 ["LayoutOrder"]
      731 JUMPIFNOT                        R39 ; [+2]
      732 LOADN                            R65 1
      733 JUMP                             ; [+1]
      734 LOADNIL                          R65
      735 SETTABLEKS                       R65 R64 K155 ["NumberRows"]
      737 SETTABLEKS                       R4 R64 K3 ["assetId"]
      739 SETTABLEKS                       R21 R64 K144 ["assetName"]
      741 SETTABLEKS                       R41 R64 K156 ["TextSize"]
      743 SETTABLEKS                       R42 R64 K157 ["Font"]
      745 CALL                             R62 2 1
      746 SETTABLEKS                       R62 R61 K127 ["AssetName"]
      748 MOVE                             R62 R23
      749 JUMPIFNOT                        R62 ; [+180]
      750 GETUPVAL                         R62 11
      751 GETTABLEKS                       R62 R62 K77 ["createElement"]
      753 LOADK                            R63 K78 ["Frame"]
      754 DUPTABLE                         R64 K160 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
      755 LOADN                            R65 1
      756 SETTABLEKS                       R65 R64 K85 ["BackgroundTransparency"]
      758 LOADN                            R65 20
      759 SETTABLEKS                       R65 R64 K11 ["LayoutOrder"]
      761 GETIMPORT                        R65 K81 [UDim2.new]
      763 LOADN                            R66 1
      764 LOADN                            R67 0
      765 LOADN                            R68 0
      766 GETUPVAL                         R69 8
      767 GETTABLEKS                       R69 R69 K66 ["PRICE_HEIGHT"]
      769 CALL                             R65 4 1
      770 SETTABLEKS                       R65 R64 K84 ["Size"]
      772 DUPTABLE                         R65 K165 [{"Layout", "RobuxIcon", "PriceText", "OwnedIcon"}]
      773 GETUPVAL                         R66 11
      774 GETTABLEKS                       R66 R66 K77 ["createElement"]
      776 LOADK                            R67 K125 ["UIListLayout"]
      777 DUPTABLE                         R68 K167 [{"SortOrder", "FillDirection", "VerticalAlignment", "HorizontalAlignment", "Padding"}]
      778 GETIMPORT                        R69 K139 [Enum.SortOrder.LayoutOrder]
      780 SETTABLEKS                       R69 R68 K133 ["SortOrder"]
      782 GETIMPORT                        R69 K169 [Enum.FillDirection.Horizontal]
      784 SETTABLEKS                       R69 R68 K166 ["FillDirection"]
      786 GETIMPORT                        R69 K170 [Enum.VerticalAlignment.Center]
      788 SETTABLEKS                       R69 R68 K135 ["VerticalAlignment"]
      790 GETIMPORT                        R69 K172 [Enum.HorizontalAlignment.Left]
      792 SETTABLEKS                       R69 R68 K134 ["HorizontalAlignment"]
      794 GETIMPORT                        R69 K138 [UDim.new]
      796 LOADN                            R70 0
      797 LOADN                            R71 4
      798 CALL                             R69 2 1
      799 SETTABLEKS                       R69 R68 K132 ["Padding"]
      801 CALL                             R66 2 1
      802 SETTABLEKS                       R66 R65 K161 ["Layout"]
      804 MOVE                             R66 R25
      805 JUMPIFNOT                        R66 ; [+34]
      806 NOT                              R66 R26
      807 JUMPIFNOT                        R66 ; [+32]
      808 NOT                              R66 R13
      809 JUMPIFNOT                        R66 ; [+30]
      810 GETUPVAL                         R66 11
      811 GETTABLEKS                       R66 R66 K77 ["createElement"]
      813 LOADK                            R67 K173 ["ImageLabel"]
      814 DUPTABLE                         R68 K176 [{"LayoutOrder", "Image", "Size", "BackgroundTransparency", "ImageColor3"}]
      815 LOADN                            R69 1
      816 SETTABLEKS                       R69 R68 K11 ["LayoutOrder"]
      818 GETUPVAL                         R69 17
      819 GETTABLEKS                       R69 R69 K177 ["ROBUX_SMALL"]
      821 SETTABLEKS                       R69 R68 K174 ["Image"]
      823 GETUPVAL                         R69 8
      824 GETTABLEKS                       R69 R69 K178 ["Dialog"]
      826 GETTABLEKS                       R69 R69 K179 ["ROBUX_SIZE"]
      828 SETTABLEKS                       R69 R68 K84 ["Size"]
      830 LOADN                            R69 1
      831 SETTABLEKS                       R69 R68 K85 ["BackgroundTransparency"]
      833 GETTABLEKS                       R69 R2 K69 ["asset"]
      835 GETTABLEKS                       R69 R69 K180 ["textColor"]
      837 SETTABLEKS                       R69 R68 K175 ["ImageColor3"]
      839 CALL                             R66 2 1
      840 SETTABLEKS                       R66 R65 K162 ["RobuxIcon"]
      842 NOT                              R66 R13
      843 JUMPIFNOT                        R66 ; [+49]
      844 GETUPVAL                         R66 11
      845 GETTABLEKS                       R66 R66 K77 ["createElement"]
      847 LOADK                            R67 K181 ["TextLabel"]
      848 DUPTABLE                         R68 K186 [{"BackgroundTransparency", "LayoutOrder", "Font", "Size", "TextColor3", "TextSize", "TextXAlignment", "Text", "TextTruncate"}]
      849 LOADN                            R69 1
      850 SETTABLEKS                       R69 R68 K85 ["BackgroundTransparency"]
      852 LOADN                            R69 2
      853 SETTABLEKS                       R69 R68 K11 ["LayoutOrder"]
      855 GETUPVAL                         R69 8
      856 GETTABLEKS                       R69 R69 K61 ["FONT"]
      858 SETTABLEKS                       R69 R68 K157 ["Font"]
      860 GETIMPORT                        R69 K81 [UDim2.new]
      862 LOADN                            R70 1
      863 LOADN                            R71 236
      864 LOADN                            R72 0
      865 GETUPVAL                         R73 8
      866 GETTABLEKS                       R73 R73 K66 ["PRICE_HEIGHT"]
      868 CALL                             R69 4 1
      869 SETTABLEKS                       R69 R68 K84 ["Size"]
      871 GETTABLEKS                       R69 R2 K69 ["asset"]
      873 GETTABLEKS                       R69 R69 K180 ["textColor"]
      875 SETTABLEKS                       R69 R68 K182 ["TextColor3"]
      877 GETUPVAL                         R69 8
      878 GETTABLEKS                       R69 R69 K187 ["PRICE_FONT_SIZE"]
      880 SETTABLEKS                       R69 R68 K156 ["TextSize"]
      882 GETIMPORT                        R69 K188 [Enum.TextXAlignment.Left]
      884 SETTABLEKS                       R69 R68 K183 ["TextXAlignment"]
      886 SETTABLEKS                       R24 R68 K184 ["Text"]
      888 GETIMPORT                        R69 K190 [Enum.TextTruncate.AtEnd]
      890 SETTABLEKS                       R69 R68 K185 ["TextTruncate"]
      892 CALL                             R66 2 1
      893 SETTABLEKS                       R66 R65 K163 ["PriceText"]
      895 MOVE                             R66 R13
      896 JUMPIFNOT                        R66 ; [+30]
      897 GETUPVAL                         R66 11
      898 GETTABLEKS                       R66 R66 K77 ["createElement"]
      900 LOADK                            R67 K173 ["ImageLabel"]
      901 DUPTABLE                         R68 K176 [{"LayoutOrder", "Image", "Size", "BackgroundTransparency", "ImageColor3"}]
      902 LOADN                            R69 1
      903 SETTABLEKS                       R69 R68 K11 ["LayoutOrder"]
      905 GETUPVAL                         R69 17
      906 GETTABLEKS                       R69 R69 K191 ["OWNED_ICON"]
      908 SETTABLEKS                       R69 R68 K174 ["Image"]
      910 GETUPVAL                         R69 8
      911 GETTABLEKS                       R69 R69 K178 ["Dialog"]
      913 GETTABLEKS                       R69 R69 K179 ["ROBUX_SIZE"]
      915 SETTABLEKS                       R69 R68 K84 ["Size"]
      917 LOADN                            R69 1
      918 SETTABLEKS                       R69 R68 K85 ["BackgroundTransparency"]
      920 GETTABLEKS                       R69 R2 K69 ["asset"]
      922 GETTABLEKS                       R69 R69 K180 ["textColor"]
      924 SETTABLEKS                       R69 R68 K175 ["ImageColor3"]
      926 CALL                             R66 2 1
      927 SETTABLEKS                       R66 R65 K164 ["OwnedIcon"]
      929 CALL                             R62 3 1
      930 SETTABLEKS                       R62 R61 K41 ["Price"]
      932 MOVE                             R62 R34
      933 JUMPIFNOT                        R62 ; [+46]
      934 NOT                              R62 R8
      935 JUMPIFNOT                        R62 ; [+44]
      936 GETUPVAL                         R62 11
      937 GETTABLEKS                       R62 R62 K77 ["createElement"]
      939 GETUPVAL                         R63 18
      940 DUPTABLE                         R64 K196 [{"Size", "LayoutOrder", "assetId", "creator", "creatorName", "clickable", "isVerifiedCreator", "onClick"}]
      941 GETIMPORT                        R65 K81 [UDim2.new]
      943 LOADN                            R66 1
      944 LOADN                            R67 0
      945 LOADK                            R68 K197 [0.15]
      946 LOADN                            R69 0
      947 CALL                             R65 4 1
      948 SETTABLEKS                       R65 R64 K84 ["Size"]
      950 LOADN                            R65 30
      951 SETTABLEKS                       R65 R64 K11 ["LayoutOrder"]
      953 SETTABLEKS                       R4 R64 K3 ["assetId"]
      955 GETUPVAL                         R66 19
      956 CALL                             R66 0 1
      957 JUMPIFNOT                        R66 ; [+2]
      958 MOVE                             R65 R27
      959 JUMP                             ; [+1]
      960 LOADNIL                          R65
      961 SETTABLEKS                       R65 R64 K192 ["creator"]
      963 SETTABLEKS                       R28 R64 K193 ["creatorName"]
      965 NOT                              R65 R31
      966 SETTABLEKS                       R65 R64 K194 ["clickable"]
      968 SETTABLEKS                       R17 R64 K195 ["isVerifiedCreator"]
      970 GETUPVAL                         R66 19
      971 CALL                             R66 0 1
      972 JUMPIFNOT                        R66 ; [+3]
      973 GETTABLEKS                       R65 R1 K198 ["onSearchByCreator"]
      975 JUMP                             ; [+1]
      976 LOADNIL                          R65
      977 SETTABLEKS                       R65 R64 K124 ["onClick"]
      979 CALL                             R62 2 1
      980 SETTABLEKS                       R62 R61 K128 ["CreatorName"]
      982 JUMPIF                           R37 ; [+2]
      983 JUMPIF                           R36 ; [+1]
      984 JUMPIFNOT                        R43 ; [+19]
      985 GETUPVAL                         R62 11
      986 GETTABLEKS                       R62 R62 K77 ["createElement"]
      988 GETUPVAL                         R63 20
      989 DUPTABLE                         R64 K200 [{"LayoutOrder", "assetId", "voting", "showBackgroundBox"}]
      990 JUMPIFNOT                        R36 ; [+2]
      991 LOADN                            R65 25
      992 JUMP                             ; [+1]
      993 LOADN                            R65 35
      994 SETTABLEKS                       R65 R64 K11 ["LayoutOrder"]
      996 SETTABLEKS                       R4 R64 K3 ["assetId"]
      998 SETTABLEKS                       R29 R64 K46 ["voting"]
     1000 SETTABLEKS                       R34 R64 K199 ["showBackgroundBox"]
     1002 CALL                             R62 2 1
     1003 JUMP                             ; [+22]
     1004 JUMPIF                           R37 ; [+1]
     1005 JUMPIFNOT                        R36 ; [+19]
     1006 GETUPVAL                         R62 11
     1007 GETTABLEKS                       R62 R62 K77 ["createElement"]
     1009 GETUPVAL                         R63 20
     1010 DUPTABLE                         R64 K200 [{"LayoutOrder", "assetId", "voting", "showBackgroundBox"}]
     1011 JUMPIFNOT                        R36 ; [+2]
     1012 LOADN                            R65 25
     1013 JUMP                             ; [+1]
     1014 LOADN                            R65 35
     1015 SETTABLEKS                       R65 R64 K11 ["LayoutOrder"]
     1017 SETTABLEKS                       R4 R64 K3 ["assetId"]
     1019 SETTABLEKS                       R29 R64 K46 ["voting"]
     1021 SETTABLEKS                       R34 R64 K199 ["showBackgroundBox"]
     1023 CALL                             R62 2 1
     1024 JUMP                             ; [+1]
     1025 LOADNIL                          R62
     1026 SETTABLEKS                       R62 R61 K129 ["Voting"]
     1028 MOVE                             R62 R34
     1029 JUMPIFNOT                        R62 ; [+50]
     1030 MOVE                             R62 R20
     1031 JUMPIFNOT                        R62 ; [+48]
     1032 GETUPVAL                         R62 11
     1033 GETTABLEKS                       R62 R62 K77 ["createElement"]
     1035 LOADK                            R63 K181 ["TextLabel"]
     1036 DUPTABLE                         R64 K201 [{"Size", "LayoutOrder", "Text", "BackgroundTransparency", "BorderSizePixel", "TextXAlignment", "Font", "TextSize", "TextColor3"}]
     1037 GETIMPORT                        R65 K81 [UDim2.new]
     1039 LOADN                            R66 1
     1040 LOADN                            R67 0
     1041 LOADN                            R68 0
     1042 GETUPVAL                         R69 8
     1043 GETTABLEKS                       R69 R69 K202 ["AUDIO_LENGTH_HEIGHT"]
     1045 CALL                             R65 4 1
     1046 SETTABLEKS                       R65 R64 K84 ["Size"]
     1048 LOADN                            R65 40
     1049 SETTABLEKS                       R65 R64 K11 ["LayoutOrder"]
     1051 SETTABLEKS                       R49 R64 K184 ["Text"]
     1053 LOADN                            R65 1
     1054 SETTABLEKS                       R65 R64 K85 ["BackgroundTransparency"]
     1056 LOADN                            R65 0
     1057 SETTABLEKS                       R65 R64 K105 ["BorderSizePixel"]
     1059 GETIMPORT                        R65 K188 [Enum.TextXAlignment.Left]
     1061 SETTABLEKS                       R65 R64 K183 ["TextXAlignment"]
     1063 GETUPVAL                         R65 8
     1064 GETTABLEKS                       R65 R65 K61 ["FONT"]
     1066 SETTABLEKS                       R65 R64 K157 ["Font"]
     1068 GETUPVAL                         R65 8
     1069 GETTABLEKS                       R65 R65 K203 ["FONT_SIZE_SMALL"]
     1071 SETTABLEKS                       R65 R64 K156 ["TextSize"]
     1073 GETTABLEKS                       R65 R2 K69 ["asset"]
     1075 GETTABLEKS                       R65 R65 K180 ["textColor"]
     1077 SETTABLEKS                       R65 R64 K182 ["TextColor3"]
     1079 CALL                             R62 2 1
     1080 SETTABLEKS                       R62 R61 K130 ["AudioLength"]
     1082 JUMPIFNOT                        R34 ; [+140]
     1083 JUMPIFNOT                        R18 ; [+139]
     1084 JUMPIF                           R19 ; [+138]
     1085 GETUPVAL                         R62 11
     1086 GETTABLEKS                       R62 R62 K77 ["createElement"]
     1088 LOADK                            R63 K78 ["Frame"]
     1089 DUPTABLE                         R64 K160 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
     1090 LOADN                            R65 1
     1091 SETTABLEKS                       R65 R64 K85 ["BackgroundTransparency"]
     1093 LOADN                            R65 50
     1094 SETTABLEKS                       R65 R64 K11 ["LayoutOrder"]
     1096 GETIMPORT                        R65 K81 [UDim2.new]
     1098 LOADN                            R66 1
     1099 LOADN                            R67 0
     1100 LOADN                            R68 0
     1101 GETUPVAL                         R69 8
     1102 GETTABLEKS                       R69 R69 K66 ["PRICE_HEIGHT"]
     1104 CALL                             R65 4 1
     1105 SETTABLEKS                       R65 R64 K84 ["Size"]
     1107 DUPTABLE                         R65 K205 [{"Layout", "ScriptIcon", "Text"}]
     1108 GETUPVAL                         R66 11
     1109 GETTABLEKS                       R66 R66 K77 ["createElement"]
     1111 LOADK                            R67 K125 ["UIListLayout"]
     1112 DUPTABLE                         R68 K167 [{"SortOrder", "FillDirection", "VerticalAlignment", "HorizontalAlignment", "Padding"}]
     1113 GETIMPORT                        R69 K139 [Enum.SortOrder.LayoutOrder]
     1115 SETTABLEKS                       R69 R68 K133 ["SortOrder"]
     1117 GETIMPORT                        R69 K169 [Enum.FillDirection.Horizontal]
     1119 SETTABLEKS                       R69 R68 K166 ["FillDirection"]
     1121 GETIMPORT                        R69 K170 [Enum.VerticalAlignment.Center]
     1123 SETTABLEKS                       R69 R68 K135 ["VerticalAlignment"]
     1125 GETIMPORT                        R69 K172 [Enum.HorizontalAlignment.Left]
     1127 SETTABLEKS                       R69 R68 K134 ["HorizontalAlignment"]
     1129 GETIMPORT                        R69 K138 [UDim.new]
     1131 LOADN                            R70 0
     1132 LOADN                            R71 4
     1133 CALL                             R69 2 1
     1134 SETTABLEKS                       R69 R68 K132 ["Padding"]
     1136 CALL                             R66 2 1
     1137 SETTABLEKS                       R66 R65 K161 ["Layout"]
     1139 GETUPVAL                         R66 11
     1140 GETTABLEKS                       R66 R66 K77 ["createElement"]
     1142 LOADK                            R67 K173 ["ImageLabel"]
     1143 DUPTABLE                         R68 K206 [{"LayoutOrder", "Image", "Size", "BackgroundTransparency"}]
     1144 LOADN                            R69 1
     1145 SETTABLEKS                       R69 R68 K11 ["LayoutOrder"]
     1147 GETUPVAL                         R69 17
     1148 GETTABLEKS                       R69 R69 K207 ["SCRIPT"]
     1150 SETTABLEKS                       R69 R68 K174 ["Image"]
     1152 GETUPVAL                         R69 8
     1153 GETTABLEKS                       R69 R69 K178 ["Dialog"]
     1155 GETTABLEKS                       R69 R69 K208 ["SCRIPT_SIZE"]
     1157 SETTABLEKS                       R69 R68 K84 ["Size"]
     1159 LOADN                            R69 1
     1160 SETTABLEKS                       R69 R68 K85 ["BackgroundTransparency"]
     1162 CALL                             R66 2 1
     1163 SETTABLEKS                       R66 R65 K204 ["ScriptIcon"]
     1165 GETUPVAL                         R66 11
     1166 GETTABLEKS                       R66 R66 K77 ["createElement"]
     1168 LOADK                            R67 K181 ["TextLabel"]
     1169 DUPTABLE                         R68 K209 [{"LayoutOrder", "BackgroundTransparency", "Size", "TextColor3", "Font", "TextSize", "TextXAlignment", "Text", "TextTruncate"}]
     1170 LOADN                            R69 2
     1171 SETTABLEKS                       R69 R68 K11 ["LayoutOrder"]
     1173 LOADN                            R69 1
     1174 SETTABLEKS                       R69 R68 K85 ["BackgroundTransparency"]
     1176 GETIMPORT                        R69 K81 [UDim2.new]
     1178 LOADN                            R70 1
     1179 LOADN                            R71 236
     1180 LOADN                            R72 0
     1181 GETUPVAL                         R73 8
     1182 GETTABLEKS                       R73 R73 K66 ["PRICE_HEIGHT"]
     1184 CALL                             R69 4 1
     1185 SETTABLEKS                       R69 R68 K84 ["Size"]
     1187 GETTABLEKS                       R69 R2 K69 ["asset"]
     1189 GETTABLEKS                       R69 R69 K180 ["textColor"]
     1191 SETTABLEKS                       R69 R68 K182 ["TextColor3"]
     1193 GETUPVAL                         R69 8
     1194 GETTABLEKS                       R69 R69 K61 ["FONT"]
     1196 SETTABLEKS                       R69 R68 K157 ["Font"]
     1198 GETUPVAL                         R69 8
     1199 GETTABLEKS                       R69 R69 K210 ["STATUS_NAME_FONT_SIZE"]
     1201 SETTABLEKS                       R69 R68 K156 ["TextSize"]
     1203 GETIMPORT                        R69 K188 [Enum.TextXAlignment.Left]
     1205 SETTABLEKS                       R69 R68 K183 ["TextXAlignment"]
     1207 LOADK                            R71 K211 ["General"]
     1208 LOADK                            R72 K18 ["HasScripts"]
     1209 NAMECALL                         R69 R3 K45 ["getText"]
     1211 CALL                             R69 3 1
     1212 SETTABLEKS                       R69 R68 K184 ["Text"]
     1214 GETIMPORT                        R69 K213 [Enum.TextTruncate.None]
     1216 SETTABLEKS                       R69 R68 K185 ["TextTruncate"]
     1218 CALL                             R66 2 1
     1219 SETTABLEKS                       R66 R65 K184 ["Text"]
     1221 CALL                             R62 3 1
     1222 JUMP                             ; [+1]
     1223 LOADNIL                          R62
     1224 SETTABLEKS                       R62 R61 K18 ["HasScripts"]
     1226 JUMPIFNOT                        R34 ; [+136]
     1227 JUMPIFNOT                        R19 ; [+135]
     1228 GETUPVAL                         R62 11
     1229 GETTABLEKS                       R62 R62 K77 ["createElement"]
     1231 LOADK                            R63 K78 ["Frame"]
     1232 DUPTABLE                         R64 K160 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
     1233 LOADN                            R65 1
     1234 SETTABLEKS                       R65 R64 K85 ["BackgroundTransparency"]
     1236 LOADN                            R65 50
     1237 SETTABLEKS                       R65 R64 K11 ["LayoutOrder"]
     1239 GETIMPORT                        R65 K81 [UDim2.new]
     1241 LOADN                            R66 1
     1242 LOADN                            R67 0
     1243 LOADN                            R68 0
     1244 GETUPVAL                         R69 8
     1245 GETTABLEKS                       R69 R69 K66 ["PRICE_HEIGHT"]
     1247 CALL                             R65 4 1
     1248 SETTABLEKS                       R65 R64 K84 ["Size"]
     1250 DUPTABLE                         R65 K215 [{"Layout", "PackageIcon", "Text"}]
     1251 GETUPVAL                         R66 11
     1252 GETTABLEKS                       R66 R66 K77 ["createElement"]
     1254 LOADK                            R67 K125 ["UIListLayout"]
     1255 DUPTABLE                         R68 K167 [{"SortOrder", "FillDirection", "VerticalAlignment", "HorizontalAlignment", "Padding"}]
     1256 GETIMPORT                        R69 K139 [Enum.SortOrder.LayoutOrder]
     1258 SETTABLEKS                       R69 R68 K133 ["SortOrder"]
     1260 GETIMPORT                        R69 K169 [Enum.FillDirection.Horizontal]
     1262 SETTABLEKS                       R69 R68 K166 ["FillDirection"]
     1264 GETIMPORT                        R69 K170 [Enum.VerticalAlignment.Center]
     1266 SETTABLEKS                       R69 R68 K135 ["VerticalAlignment"]
     1268 GETIMPORT                        R69 K172 [Enum.HorizontalAlignment.Left]
     1270 SETTABLEKS                       R69 R68 K134 ["HorizontalAlignment"]
     1272 GETIMPORT                        R69 K138 [UDim.new]
     1274 LOADN                            R70 0
     1275 LOADN                            R71 4
     1276 CALL                             R69 2 1
     1277 SETTABLEKS                       R69 R68 K132 ["Padding"]
     1279 CALL                             R66 2 1
     1280 SETTABLEKS                       R66 R65 K161 ["Layout"]
     1282 GETUPVAL                         R66 11
     1283 GETTABLEKS                       R66 R66 K77 ["createElement"]
     1285 LOADK                            R67 K173 ["ImageLabel"]
     1286 DUPTABLE                         R68 K206 [{"LayoutOrder", "Image", "Size", "BackgroundTransparency"}]
     1287 LOADN                            R69 1
     1288 SETTABLEKS                       R69 R68 K11 ["LayoutOrder"]
     1290 GETTABLEKS                       R69 R48 K216 ["packageImage"]
     1292 SETTABLEKS                       R69 R68 K174 ["Image"]
     1294 GETUPVAL                         R69 8
     1295 GETTABLEKS                       R69 R69 K217 ["PACKAGE_DETAIL_SIZE"]
     1297 SETTABLEKS                       R69 R68 K84 ["Size"]
     1299 LOADN                            R69 1
     1300 SETTABLEKS                       R69 R68 K85 ["BackgroundTransparency"]
     1302 CALL                             R66 2 1
     1303 SETTABLEKS                       R66 R65 K214 ["PackageIcon"]
     1305 GETUPVAL                         R66 11
     1306 GETTABLEKS                       R66 R66 K77 ["createElement"]
     1308 LOADK                            R67 K181 ["TextLabel"]
     1309 DUPTABLE                         R68 K209 [{"LayoutOrder", "BackgroundTransparency", "Size", "TextColor3", "Font", "TextSize", "TextXAlignment", "Text", "TextTruncate"}]
     1310 LOADN                            R69 2
     1311 SETTABLEKS                       R69 R68 K11 ["LayoutOrder"]
     1313 LOADN                            R69 1
     1314 SETTABLEKS                       R69 R68 K85 ["BackgroundTransparency"]
     1316 GETIMPORT                        R69 K81 [UDim2.new]
     1318 LOADN                            R70 1
     1319 LOADN                            R71 236
     1320 LOADN                            R72 0
     1321 GETUPVAL                         R73 8
     1322 GETTABLEKS                       R73 R73 K66 ["PRICE_HEIGHT"]
     1324 CALL                             R69 4 1
     1325 SETTABLEKS                       R69 R68 K84 ["Size"]
     1327 GETTABLEKS                       R69 R2 K69 ["asset"]
     1329 GETTABLEKS                       R69 R69 K180 ["textColor"]
     1331 SETTABLEKS                       R69 R68 K182 ["TextColor3"]
     1333 GETUPVAL                         R69 8
     1334 GETTABLEKS                       R69 R69 K61 ["FONT"]
     1336 SETTABLEKS                       R69 R68 K157 ["Font"]
     1338 GETUPVAL                         R69 8
     1339 GETTABLEKS                       R69 R69 K210 ["STATUS_NAME_FONT_SIZE"]
     1341 SETTABLEKS                       R69 R68 K156 ["TextSize"]
     1343 GETIMPORT                        R69 K188 [Enum.TextXAlignment.Left]
     1345 SETTABLEKS                       R69 R68 K183 ["TextXAlignment"]
     1347 LOADK                            R71 K211 ["General"]
     1348 LOADK                            R72 K218 ["PackagesUpdateable"]
     1349 NAMECALL                         R69 R3 K45 ["getText"]
     1351 CALL                             R69 3 1
     1352 SETTABLEKS                       R69 R68 K184 ["Text"]
     1354 GETIMPORT                        R69 K213 [Enum.TextTruncate.None]
     1356 SETTABLEKS                       R69 R68 K185 ["TextTruncate"]
     1358 CALL                             R66 2 1
     1359 SETTABLEKS                       R66 R65 K184 ["Text"]
     1361 CALL                             R62 3 1
     1362 JUMP                             ; [+1]
     1363 LOADNIL                          R62
     1364 SETTABLEKS                       R62 R61 K21 ["Package"]
     1366 MOVE                             R62 R34
     1367 JUMPIFNOT                        R62 ; [+62]
     1368 MOVE                             R62 R33
     1369 JUMPIFNOT                        R62 ; [+60]
     1370 GETUPVAL                         R62 11
     1371 GETTABLEKS                       R62 R62 K77 ["createElement"]
     1373 LOADK                            R63 K181 ["TextLabel"]
     1374 DUPTABLE                         R64 K221 [{"BackgroundTransparency", "LayoutOrder", "Size", "Text", "TextColor3", "Font", "TextSize", "TextXAlignment", "TextYAlignment", "ClipsDescendants", "TextTruncate"}]
     1375 LOADN                            R65 1
     1376 SETTABLEKS                       R65 R64 K85 ["BackgroundTransparency"]
     1378 LOADN                            R65 60
     1379 SETTABLEKS                       R65 R64 K11 ["LayoutOrder"]
     1381 GETIMPORT                        R65 K81 [UDim2.new]
     1383 LOADN                            R66 1
     1384 LOADN                            R67 0
     1385 LOADN                            R68 0
     1386 GETUPVAL                         R69 8
     1387 GETTABLEKS                       R69 R69 K222 ["STATUS_NAME_HEIGHT"]
     1389 CALL                             R65 4 1
     1390 SETTABLEKS                       R65 R64 K84 ["Size"]
     1392 GETUPVAL                         R66 21
     1393 MOVE                             R67 R3
     1394 CALL                             R66 1 1
     1395 GETTABLE                         R65 R66 R22
     1396 SETTABLEKS                       R65 R64 K184 ["Text"]
     1398 GETTABLEKS                       R65 R2 K69 ["asset"]
     1400 GETTABLEKS                       R65 R65 K180 ["textColor"]
     1402 SETTABLEKS                       R65 R64 K182 ["TextColor3"]
     1404 GETUPVAL                         R65 8
     1405 GETTABLEKS                       R65 R65 K61 ["FONT"]
     1407 SETTABLEKS                       R65 R64 K157 ["Font"]
     1409 GETUPVAL                         R65 8
     1410 GETTABLEKS                       R65 R65 K210 ["STATUS_NAME_FONT_SIZE"]
     1412 SETTABLEKS                       R65 R64 K156 ["TextSize"]
     1414 GETIMPORT                        R65 K223 [Enum.TextXAlignment.Center]
     1416 SETTABLEKS                       R65 R64 K183 ["TextXAlignment"]
     1418 GETIMPORT                        R65 K224 [Enum.TextYAlignment.Top]
     1420 SETTABLEKS                       R65 R64 K219 ["TextYAlignment"]
     1422 LOADB                            R65 0
     1423 SETTABLEKS                       R65 R64 K220 ["ClipsDescendants"]
     1425 GETIMPORT                        R65 K213 [Enum.TextTruncate.None]
     1427 SETTABLEKS                       R65 R64 K185 ["TextTruncate"]
     1429 CALL                             R62 2 1
     1430 SETTABLEKS                       R62 R61 K28 ["Status"]
     1432 CALL                             R58 3 1
     1433 SETTABLEKS                       R58 R57 K94 ["InnerFrame"]
     1435 CALL                             R54 3 1
     1436 RETURN                           R54 1

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
      294 DUPTABLE                         R46 K70 [{"parentSize", "parentAbsolutePosition", "logImpression", "onAssetHovered", "onAssetHoverEnded", "shouldLogOnMount"}]
      295 GETIMPORT                        R47 K73 [Vector2.new]
      297 CALL                             R47 0 1
      298 SETTABLEKS                       R47 R46 K64 ["parentSize"]
      300 GETIMPORT                        R47 K73 [Vector2.new]
      302 CALL                             R47 0 1
      303 SETTABLEKS                       R47 R46 K65 ["parentAbsolutePosition"]
      305 DUPCLOSURE                       R47 K74 [PROTO_0]
      306 SETTABLEKS                       R47 R46 K66 ["logImpression"]
      308 DUPCLOSURE                       R47 K75 [PROTO_1]
      309 SETTABLEKS                       R47 R46 K67 ["onAssetHovered"]
      311 DUPCLOSURE                       R47 K76 [PROTO_2]
      312 SETTABLEKS                       R47 R46 K68 ["onAssetHoverEnded"]
      314 LOADB                            R47 1
      315 SETTABLEKS                       R47 R46 K69 ["shouldLogOnMount"]
      317 SETTABLEKS                       R46 R45 K77 ["defaultProps"]
      319 DUPCLOSURE                       R46 K78 [PROTO_13]
      320 CAPTURE                          VAL R7
      321 CAPTURE                          VAL R43
      322 CAPTURE                          VAL R15
      323 CAPTURE                          VAL R4
      324 CAPTURE                          VAL R14
      325 SETTABLEKS                       R46 R45 K79 ["init"]
      327 DUPCLOSURE                       R46 K80 [PROTO_14]
      328 SETTABLEKS                       R46 R45 K81 ["didMount"]
      330 DUPCLOSURE                       R46 K82 [PROTO_15]
      331 CAPTURE                          VAL R5
      332 SETTABLEKS                       R46 R45 K83 ["didUpdate"]
      334 DUPCLOSURE                       R46 K84 [PROTO_17]
      335 CAPTURE                          VAL R43
      336 CAPTURE                          VAL R27
      337 CAPTURE                          VAL R44
      338 CAPTURE                          VAL R15
      339 CAPTURE                          VAL R3
      340 CAPTURE                          VAL R10
      341 CAPTURE                          VAL R41
      342 CAPTURE                          VAL R39
      343 CAPTURE                          VAL R9
      344 CAPTURE                          VAL R40
      345 CAPTURE                          VAL R12
      346 CAPTURE                          VAL R7
      347 CAPTURE                          VAL R14
      348 CAPTURE                          VAL R20
      349 CAPTURE                          VAL R19
      350 CAPTURE                          VAL R22
      351 CAPTURE                          VAL R23
      352 CAPTURE                          VAL R11
      353 CAPTURE                          VAL R21
      354 CAPTURE                          VAL R2
      355 CAPTURE                          VAL R24
      356 CAPTURE                          VAL R16
      357 SETTABLEKS                       R46 R45 K85 ["render"]
      359 MOVE                             R46 R35
      360 DUPTABLE                         R47 K90 [{"AssetAnalytics", "Localization", "Plugin", "NavigationContext", "Stylizer", "Network"}]
      361 SETTABLEKS                       R13 R47 K86 ["AssetAnalytics"]
      363 GETTABLEKS                       R48 R34 K26 ["Localization"]
      365 SETTABLEKS                       R48 R47 K26 ["Localization"]
      367 GETTABLEKS                       R48 R34 K87 ["Plugin"]
      369 SETTABLEKS                       R48 R47 K87 ["Plugin"]
      371 SETTABLEKS                       R32 R47 K49 ["NavigationContext"]
      373 GETTABLEKS                       R48 R34 K88 ["Stylizer"]
      375 SETTABLEKS                       R48 R47 K88 ["Stylizer"]
      377 SETTABLEKS                       R36 R47 K89 ["Network"]
      379 CALL                             R46 1 1
      380 MOVE                             R47 R45
      381 CALL                             R46 1 1
      382 MOVE                             R45 R46
      383 DUPCLOSURE                       R46 K91 [PROTO_18]
      384 CAPTURE                          VAL R43
      385 DUPCLOSURE                       R47 K92 [PROTO_25]
      386 CAPTURE                          VAL R28
      387 CAPTURE                          VAL R29
      388 CAPTURE                          VAL R30
      389 CAPTURE                          VAL R31
      390 CAPTURE                          VAL R26
      391 CAPTURE                          VAL R25
      392 GETTABLEKS                       R48 R8 K93 ["connect"]
      394 MOVE                             R49 R46
      395 MOVE                             R50 R47
      396 CALL                             R48 2 1
      397 MOVE                             R49 R45
      398 CALL                             R48 1 -1
      399 RETURN                           R48 -1
