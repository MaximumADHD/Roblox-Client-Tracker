PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnClickCreator"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["AssetData"]
       10 GETTABLEKS                       R1 R1 K3 ["Creator"]
       12 GETTABLEKS                       R1 R1 K4 ["Name"]
       14 CALL                             R0 1 -1
       15 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"absoluteContentSize"}]
        2 SETTABLEKS                       R0 R3 K0 ["absoluteContentSize"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"scrollingEnabled"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["scrollingEnabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"scrollingEnabled"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["scrollingEnabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_4:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["props"]
        4 GETTABLEKS                       R0 R0 K1 ["ActionEnabled"]
        6 JUMPIFEQKB                       R0 FALSE ; [+9]
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K0 ["props"]
       11 GETTABLEKS                       R0 R0 K2 ["OnClickAction"]
       13 GETVARARGS                       R1 -1
       14 CALL                             R0 -1 -1
       15 RETURN                           R0 -1
       16 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Analytics"]
        5 LOADK                            R2 K2 ["AssetPreviewPlaySound"]
        6 DUPTABLE                         R3 K4 [{"assetId"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["props"]
       10 GETTABLEKS                       R4 R4 K5 ["AssetData"]
       12 GETTABLEKS                       R4 R4 K6 ["Asset"]
       14 GETTABLEKS                       R4 R4 K7 ["Id"]
       16 SETTABLEKS                       R4 R3 K3 ["assetId"]
       18 NAMECALL                         R0 R0 K8 ["report"]
       20 CALL                             R0 3 0
       21 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Analytics"]
        5 LOADK                            R2 K2 ["AssetPreviewPauseSound"]
        6 DUPTABLE                         R3 K4 [{"assetId"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["props"]
       10 GETTABLEKS                       R4 R4 K5 ["AssetData"]
       12 GETTABLEKS                       R4 R4 K6 ["Asset"]
       14 GETTABLEKS                       R4 R4 K7 ["Id"]
       16 SETTABLEKS                       R4 R3 K3 ["assetId"]
       18 NAMECALL                         R0 R0 K8 ["report"]
       20 CALL                             R0 3 0
       21 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Analytics"]
        5 LOADK                            R2 K2 ["AssetPreviewPlayVideo"]
        6 DUPTABLE                         R3 K4 [{"assetId"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["props"]
       10 GETTABLEKS                       R4 R4 K5 ["AssetData"]
       12 GETTABLEKS                       R4 R4 K6 ["Asset"]
       14 GETTABLEKS                       R4 R4 K7 ["Id"]
       16 SETTABLEKS                       R4 R3 K3 ["assetId"]
       18 NAMECALL                         R0 R0 K8 ["report"]
       20 CALL                             R0 3 0
       21 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Analytics"]
        5 LOADK                            R2 K2 ["AssetPreviewPauseVideo"]
        6 DUPTABLE                         R3 K4 [{"assetId"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["props"]
       10 GETTABLEKS                       R4 R4 K5 ["AssetData"]
       12 GETTABLEKS                       R4 R4 K6 ["Asset"]
       14 GETTABLEKS                       R4 R4 K7 ["Id"]
       16 SETTABLEKS                       R4 R3 K3 ["assetId"]
       18 NAMECALL                         R0 R0 K8 ["report"]
       20 CALL                             R0 3 0
       21 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["AssetData"]
        5 GETTABLEKS                       R1 R1 K2 ["Asset"]
        7 GETTABLEKS                       R1 R1 K3 ["Id"]
        9 GETTABLEKS                       R2 R0 K4 ["OnVoteUp"]
       11 MOVE                             R3 R1
       12 GETTABLEKS                       R4 R0 K5 ["Voting"]
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["AssetData"]
        5 GETTABLEKS                       R1 R1 K2 ["Asset"]
        7 GETTABLEKS                       R1 R1 K3 ["Id"]
        9 GETTABLEKS                       R2 R0 K4 ["OnVoteDown"]
       11 MOVE                             R3 R1
       12 GETTABLEKS                       R4 R0 K5 ["Voting"]
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["scrollingRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 JUMPIFNOT                        R0 ; [+12]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["scrollingRef"]
        9 GETTABLEKS                       R0 R0 K1 ["current"]
       11 GETIMPORT                        R1 K4 [Vector2.new]
       13 LOADN                            R2 0
       14 LOADN                            R3 0
       15 CALL                             R1 2 1
       16 SETTABLEKS                       R1 R0 K5 ["CanvasPosition"]
       18 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["containerRef"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["createRef"]
        9 CALL                             R1 0 1
       10 SETTABLEKS                       R1 R0 K2 ["scrollingRef"]
       12 DUPTABLE                         R1 K5 [{"scrollingEnabled", "absoluteContentSize"}]
       13 LOADB                            R2 1
       14 SETTABLEKS                       R2 R1 K3 ["scrollingEnabled"]
       16 GETIMPORT                        R2 K8 [Vector2.new]
       18 LOADN                            R3 0
       19 LOADN                            R4 0
       20 CALL                             R2 2 1
       21 SETTABLEKS                       R2 R1 K4 ["absoluteContentSize"]
       23 SETTABLEKS                       R1 R0 K9 ["state"]
       25 NEWCLOSURE                       R1 P0
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R1 R0 K10 ["onClickCreatorLink"]
       29 NEWCLOSURE                       R1 P1
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R1 R0 K11 ["onContentResize"]
       33 NEWCLOSURE                       R1 P2
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R1 R0 K12 ["onMouseEnterAssetRender"]
       37 NEWCLOSURE                       R1 P3
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R1 R0 K13 ["onMouseLeaveAssetRender"]
       41 NEWCLOSURE                       R1 P4
       42 CAPTURE                          VAL R0
       43 SETTABLEKS                       R1 R0 K14 ["onClickActionButton"]
       45 NEWCLOSURE                       R1 P5
       46 CAPTURE                          VAL R0
       47 SETTABLEKS                       R1 R0 K15 ["onPlaySound"]
       49 NEWCLOSURE                       R1 P6
       50 CAPTURE                          VAL R0
       51 SETTABLEKS                       R1 R0 K16 ["onPauseSound"]
       53 NEWCLOSURE                       R1 P7
       54 CAPTURE                          VAL R0
       55 SETTABLEKS                       R1 R0 K17 ["onPlayVideo"]
       57 NEWCLOSURE                       R1 P8
       58 CAPTURE                          VAL R0
       59 SETTABLEKS                       R1 R0 K18 ["onPauseVideo"]
       61 NEWCLOSURE                       R1 P9
       62 CAPTURE                          VAL R0
       63 SETTABLEKS                       R1 R0 K19 ["onVoteUp"]
       65 NEWCLOSURE                       R1 P10
       66 CAPTURE                          VAL R0
       67 SETTABLEKS                       R1 R0 K20 ["onVoteDown"]
       69 NEWCLOSURE                       R1 P11
       70 CAPTURE                          VAL R0
       71 SETTABLEKS                       R1 R0 K21 ["resetCanvasPosition"]
       73 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R0 K2 [DateTime.fromUnixTimestampMillis]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 LOADK                            R2 K3 ["L LTS"]
        5 GETUPVAL                         R3 1
        6 NAMECALL                         R0 R0 K4 ["FormatLocalTime"]
        8 CALL                             R0 3 -1
        9 RETURN                           R0 -1

PROTO_14:
        0 FASTCALL1                        TYPEOF R2 ; [+3]
        1 MOVE                             R6 R2
        2 GETIMPORT                        R5 K1 [typeof]
        4 CALL                             R5 1 1
        5 JUMPIFEQKS                       R5 K2 ["string"] ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       11 LOADK                            R5 K3 ["Key must be a string"]
       12 GETIMPORT                        R3 K5 [assert]
       14 CALL                             R3 2 0
       15 GETTABLEKS                       R3 R0 K6 ["props"]
       17 GETTABLEKS                       R3 R3 K7 ["Localization"]
       19 NAMECALL                         R4 R3 K8 ["getLocale"]
       21 CALL                             R4 1 1
       22 MOVE                             R7 R2
       23 LOADK                            R8 K9 ["Raw"]
       24 CONCAT                           R6 R7 R8
       25 GETTABLE                         R5 R1 R6
       26 GETTABLE                         R6 R1 R2
       27 FASTCALL1                        TYPEOF R5 ; [+3]
       28 MOVE                             R8 R5
       29 GETIMPORT                        R7 K1 [typeof]
       31 CALL                             R7 1 1
       32 JUMPIFNOTEQKS                    R7 K2 ["string"] ; [+25]
       34 GETIMPORT                        R7 K11 [string.match]
       36 MOVE                             R8 R5
       37 LOADK                            R9 K12 ["^/Date%((%d+)%)/$"]
       38 CALL                             R7 2 1
       39 JUMPIFEQKNIL                     R7 ; [+18]
       41 FASTCALL1                        TONUMBER R7 ; [+3]
       42 MOVE                             R9 R7
       43 GETIMPORT                        R8 K14 [tonumber]
       45 CALL                             R8 1 1
       46 GETIMPORT                        R9 K16 [pcall]
       48 NEWCLOSURE                       R10 P0
       49 CAPTURE                          VAL R8
       50 CAPTURE                          VAL R4
       51 CALL                             R9 1 2
       52 JUMPIFNOT                        R9 ; [+1]
       53 RETURN                           R10 1
       54 GETIMPORT                        R11 K18 [warn]
       56 MOVE                             R12 R10
       57 CALL                             R11 1 0
       58 JUMPIFNOTEQKNIL                  R6 ; [+3]
       60 LOADK                            R7 K19 [""]
       61 RETURN                           R7 1
       62 GETUPVAL                         R7 0
       63 MOVE                             R8 R6
       64 LOADK                            R9 K20 ["L LTS"]
       65 MOVE                             R10 R4
       66 CALL                             R7 3 -1
       67 RETURN                           R7 -1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_isMounted"]
        3 JUMPIF                           R0 ; [+5]
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["Destroy"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K2 ["Resolution"]
       12 GETTABLEKS                       R0 R0 K3 ["X"]
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K2 ["Resolution"]
       17 GETTABLEKS                       R1 R1 K4 ["Y"]
       19 JUMPIFNOTEQKN                    R0 K5 [0] ; [+3]
       21 JUMPIFEQKN                       R1 K5 [0] ; [+34]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K6 ["props"]
       26 GETTABLEKS                       R2 R2 K7 ["Localization"]
       28 GETUPVAL                         R3 0
       29 DUPTABLE                         R5 K9 [{"assetInfoRows"}]
       30 NEWTABLE                         R6 0 1
       32 DUPTABLE                         R7 K12 [{"Label", "Content"}]
       33 GETUPVAL                         R10 2
       34 LOADK                            R11 K13 ["AssetPreview"]
       35 LOADK                            R12 K2 ["Resolution"]
       36 NAMECALL                         R8 R2 K14 ["getProjectText"]
       38 CALL                             R8 4 1
       39 SETTABLEKS                       R8 R7 K10 ["Label"]
       41 GETIMPORT                        R8 K17 [string.format]
       43 LOADK                            R9 K18 ["%dx%d"]
       44 MOVE                             R10 R0
       45 MOVE                             R11 R1
       46 CALL                             R8 3 1
       47 SETTABLEKS                       R8 R7 K11 ["Content"]
       49 SETLIST                          R6 R7 1 [1]
       51 SETTABLEKS                       R6 R5 K8 ["assetInfoRows"]
       53 NAMECALL                         R3 R3 K19 ["setState"]
       55 CALL                             R3 2 0
       56 GETUPVAL                         R2 1
       57 NAMECALL                         R2 R2 K1 ["Destroy"]
       59 CALL                             R2 1 0
       60 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["VideoFrame"]
        3 CALL                             R0 1 1
        4 LOADB                            R1 0
        5 SETTABLEKS                       R1 R0 K4 ["Visible"]
        7 GETUPVAL                         R1 0
        8 CALL                             R1 0 1
        9 JUMPIFNOT                        R1 ; [+4]
       10 LOADB                            R3 1
       11 NAMECALL                         R1 R0 K5 ["SetStudioPreview"]
       13 CALL                             R1 2 0
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K6 ["containerRef"]
       17 NAMECALL                         R1 R1 K7 ["getValue"]
       19 CALL                             R1 1 1
       20 SETTABLEKS                       R1 R0 K8 ["Parent"]
       22 GETTABLEKS                       R1 R0 K9 ["Loaded"]
       24 NEWCLOSURE                       R3 P0
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U2
       28 NAMECALL                         R1 R1 K10 ["Connect"]
       30 CALL                             R1 2 0
       31 GETUPVAL                         R1 0
       32 CALL                             R1 0 1
       33 JUMPIFNOT                        R1 ; [+4]
       34 LOADB                            R3 1
       35 NAMECALL                         R1 R0 K5 ["SetStudioPreview"]
       37 CALL                             R1 2 0
       38 GETIMPORT                        R1 K13 [string.format]
       40 LOADK                            R2 K14 ["rbxassetid://%d"]
       41 GETUPVAL                         R3 3
       42 GETTABLEKS                       R3 R3 K15 ["Id"]
       44 CALL                             R1 2 1
       45 SETTABLEKS                       R1 R0 K16 ["Video"]
       47 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["AssetData"]
        4 GETTABLEKS                       R1 R1 K2 ["Asset"]
        6 GETTABLEKS                       R2 R1 K3 ["TypeId"]
        8 GETIMPORT                        R3 K7 [Enum.AssetType.Video]
       10 GETTABLEKS                       R3 R3 K8 ["Value"]
       12 JUMPIFNOTEQ                      R2 R3 ; [+9]
       14 GETIMPORT                        R2 K10 [spawn]
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R1
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_18:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_isMounted"]
        3 NAMECALL                         R1 R0 K1 ["updateAssetInfoRows"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_19:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_isMounted"]
        3 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R2 R1 K0 ["AssetData"]
        2 GETTABLEKS                       R2 R2 K1 ["Asset"]
        4 GETTABLEKS                       R2 R2 K2 ["Id"]
        6 GETTABLEKS                       R3 R0 K3 ["props"]
        8 GETTABLEKS                       R3 R3 K0 ["AssetData"]
       10 GETTABLEKS                       R3 R3 K1 ["Asset"]
       12 GETTABLEKS                       R3 R3 K2 ["Id"]
       14 JUMPIFEQ                         R2 R3 ; [+13]
       16 DUPTABLE                         R4 K5 [{"assetInfoRows"}]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K6 ["None"]
       20 SETTABLEKS                       R5 R4 K4 ["assetInfoRows"]
       22 NAMECALL                         R2 R0 K7 ["setState"]
       24 CALL                             R2 2 0
       25 NAMECALL                         R2 R0 K8 ["updateAssetInfoRows"]
       27 CALL                             R2 1 0
       28 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R2 R0 K0 ["Label"]
        2 LOADNIL                          R3
        3 GETUPVAL                         R4 0
        4 MOVE                             R6 R2
        5 GETUPVAL                         R7 1
        6 GETTABLEKS                       R7 R7 K1 ["Text"]
        8 GETTABLEKS                       R7 R7 K2 ["TextSize"]
       10 GETUPVAL                         R8 1
       11 GETTABLEKS                       R8 R8 K1 ["Text"]
       13 GETTABLEKS                       R8 R8 K3 ["Font"]
       15 GETIMPORT                        R9 K6 [Vector2.new]
       17 LOADK                            R10 K7 [∞]
       18 LOADK                            R11 K7 [∞]
       19 CALL                             R9 2 -1
       20 NAMECALL                         R4 R4 K8 ["GetTextSize"]
       22 CALL                             R4 -1 1
       23 GETTABLEKS                       R5 R0 K9 ["LinkAction"]
       25 JUMPIFNOT                        R5 ; [+34]
       26 GETUPVAL                         R5 2
       27 GETTABLEKS                       R5 R5 K10 ["createElement"]
       29 GETUPVAL                         R6 3
       30 DUPTABLE                         R7 K15 [{"AnchorPoint", "Position", "TextTruncate", "Text", "OnClick"}]
       31 GETIMPORT                        R8 K6 [Vector2.new]
       33 LOADN                            R9 1
       34 LOADN                            R10 0
       35 CALL                             R8 2 1
       36 SETTABLEKS                       R8 R7 K11 ["AnchorPoint"]
       38 GETIMPORT                        R8 K18 [UDim2.fromScale]
       40 LOADN                            R9 1
       41 LOADN                            R10 0
       42 CALL                             R8 2 1
       43 SETTABLEKS                       R8 R7 K12 ["Position"]
       45 GETIMPORT                        R8 K21 [Enum.TextTruncate.AtEnd]
       47 SETTABLEKS                       R8 R7 K13 ["TextTruncate"]
       49 GETTABLEKS                       R8 R0 K22 ["Content"]
       51 SETTABLEKS                       R8 R7 K1 ["Text"]
       53 GETTABLEKS                       R8 R0 K9 ["LinkAction"]
       55 SETTABLEKS                       R8 R7 K14 ["OnClick"]
       57 CALL                             R5 2 1
       58 MOVE                             R3 R5
       59 JUMP                             ; [+27]
       60 GETUPVAL                         R5 2
       61 GETTABLEKS                       R5 R5 K10 ["createElement"]
       63 GETUPVAL                         R6 4
       64 DUPTABLE                         R7 K25 [{"Size", "Style", "Text", "TextTruncate"}]
       65 GETIMPORT                        R8 K18 [UDim2.fromScale]
       67 LOADN                            R9 1
       68 LOADN                            R10 1
       69 CALL                             R8 2 1
       70 SETTABLEKS                       R8 R7 K23 ["Size"]
       72 GETUPVAL                         R8 1
       73 GETTABLEKS                       R8 R8 K26 ["RightText"]
       75 SETTABLEKS                       R8 R7 K24 ["Style"]
       77 GETTABLEKS                       R8 R0 K22 ["Content"]
       79 SETTABLEKS                       R8 R7 K1 ["Text"]
       81 GETIMPORT                        R8 K21 [Enum.TextTruncate.AtEnd]
       83 SETTABLEKS                       R8 R7 K13 ["TextTruncate"]
       85 CALL                             R5 2 1
       86 MOVE                             R3 R5
       87 GETUPVAL                         R5 2
       88 GETTABLEKS                       R5 R5 K27 ["createFragment"]
       90 NEWTABLE                         R6 2 0
       92 LOADK                            R8 K28 ["InfoRow_"]
       93 FASTCALL1                        TOSTRING R1 ; [+3]
       94 MOVE                             R10 R1
       95 GETIMPORT                        R9 K30 [tostring]
       97 CALL                             R9 1 1
       98 CONCAT                           R7 R8 R9
       99 GETUPVAL                         R8 2
      100 GETTABLEKS                       R8 R8 K10 ["createElement"]
      102 GETUPVAL                         R9 5
      103 DUPTABLE                         R10 K32 [{"LayoutOrder", "Size"}]
      104 GETUPVAL                         R11 6
      105 NAMECALL                         R11 R11 K33 ["getNextOrder"]
      107 CALL                             R11 1 1
      108 SETTABLEKS                       R11 R10 K31 ["LayoutOrder"]
      110 GETIMPORT                        R11 K34 [UDim2.new]
      112 LOADN                            R12 1
      113 LOADN                            R13 0
      114 LOADN                            R14 0
      115 GETTABLEKS                       R15 R4 K35 ["Y"]
      117 CALL                             R11 4 1
      118 SETTABLEKS                       R11 R10 K23 ["Size"]
      120 DUPTABLE                         R11 K37 [{"Label", "ContentWrapper"}]
      121 GETUPVAL                         R12 2
      122 GETTABLEKS                       R12 R12 K10 ["createElement"]
      124 GETUPVAL                         R13 4
      125 DUPTABLE                         R14 K38 [{"Size", "Style", "Text"}]
      126 GETIMPORT                        R15 K34 [UDim2.new]
      128 LOADN                            R16 0
      129 GETTABLEKS                       R17 R4 K39 ["X"]
      131 LOADN                            R18 1
      132 LOADN                            R19 0
      133 CALL                             R15 4 1
      134 SETTABLEKS                       R15 R14 K23 ["Size"]
      136 GETUPVAL                         R15 1
      137 GETTABLEKS                       R15 R15 K40 ["LeftText"]
      139 SETTABLEKS                       R15 R14 K24 ["Style"]
      141 SETTABLEKS                       R2 R14 K1 ["Text"]
      143 CALL                             R12 2 1
      144 SETTABLEKS                       R12 R11 K0 ["Label"]
      146 GETUPVAL                         R12 2
      147 GETTABLEKS                       R12 R12 K10 ["createElement"]
      149 GETUPVAL                         R13 5
      150 DUPTABLE                         R14 K41 [{"Position", "Size"}]
      151 GETIMPORT                        R15 K34 [UDim2.new]
      153 LOADN                            R16 0
      154 GETTABLEKS                       R17 R4 K39 ["X"]
      156 LOADN                            R18 0
      157 LOADN                            R19 0
      158 CALL                             R15 4 1
      159 SETTABLEKS                       R15 R14 K12 ["Position"]
      161 GETIMPORT                        R15 K34 [UDim2.new]
      163 LOADN                            R16 1
      164 GETTABLEKS                       R18 R4 K39 ["X"]
      166 MINUS                            R17 R18
      167 LOADN                            R18 1
      168 LOADN                            R19 0
      169 CALL                             R15 4 1
      170 SETTABLEKS                       R15 R14 K23 ["Size"]
      172 DUPTABLE                         R15 K42 [{"Content"}]
      173 SETTABLEKS                       R3 R15 K22 ["Content"]
      175 CALL                             R12 3 1
      176 SETTABLEKS                       R12 R11 K36 ["ContentWrapper"]
      178 CALL                             R8 3 1
      179 SETTABLE                         R8 R6 R7
      180 LOADK                            R8 K43 ["InfoRow_Separator_"]
      181 FASTCALL1                        TOSTRING R1 ; [+3]
      182 MOVE                             R10 R1
      183 GETIMPORT                        R9 K30 [tostring]
      185 CALL                             R9 1 1
      186 CONCAT                           R7 R8 R9
      187 GETUPVAL                         R10 7
      188 LENGTH                           R9 R10
      189 JUMPIFNOTLT                      R1 R9 ; [+14]
      191 GETUPVAL                         R8 2
      192 GETTABLEKS                       R8 R8 K10 ["createElement"]
      194 GETUPVAL                         R9 8
      195 DUPTABLE                         R10 K44 [{"LayoutOrder"}]
      196 GETUPVAL                         R11 6
      197 NAMECALL                         R11 R11 K33 ["getNextOrder"]
      199 CALL                             R11 1 1
      200 SETTABLEKS                       R11 R10 K31 ["LayoutOrder"]
      202 CALL                             R8 2 1
      203 JUMPIF                           R8 ; [+1]
      204 LOADNIL                          R8
      205 SETTABLE                         R8 R6 R7
      206 CALL                             R5 1 -1
      207 RETURN                           R5 -1

PROTO_22:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["List"]
        3 GETTABLEKS                       R3 R3 K1 ["map"]
        5 MOVE                             R4 R1
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R2
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U6
       16 CALL                             R3 2 -1
       17 RETURN                           R3 -1

PROTO_23:
        0 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["composeUrlToUserProfile"]
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["Creator"]
        7 GETTABLEKS                       R3 R3 K2 ["Id"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K1 ["Creator"]
       12 GETTABLEKS                       R4 R4 K3 ["Type"]
       14 CALL                             R2 2 -1
       15 NAMECALL                         R0 R0 K4 ["OpenBrowserWindow"]
       17 CALL                             R0 -1 0
       18 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["composeUrlToUniverse"]
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["CreatingUniverseRootPlaceId"]
        7 CALL                             R2 1 -1
        8 NAMECALL                         R0 R0 K2 ["OpenBrowserWindow"]
       10 CALL                             R0 -1 0
       11 RETURN                           R0 0

PROTO_26:
        0 LOADK                            R4 K0 ["InfoRowWrapper_"]
        1 FASTCALL1                        TOSTRING R2 ; [+3]
        2 MOVE                             R6 R2
        3 GETIMPORT                        R5 K2 [tostring]
        5 CALL                             R5 1 1
        6 CONCAT                           R3 R4 R5
        7 SETTABLE                         R1 R0 R3
        8 RETURN                           R0 1

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R3 K2 ["Stylizer"]
        8 GETTABLEKS                       R4 R1 K3 ["AnchorPoint"]
       10 GETTABLEKS                       R5 R1 K4 ["Position"]
       12 GETTABLEKS                       R6 R1 K5 ["ZIndex"]
       14 GETTABLEKS                       R7 R1 K6 ["Size"]
       16 JUMPIF                           R7 ; [+7]
       17 GETIMPORT                        R7 K9 [UDim2.new]
       19 LOADN                            R8 1
       20 LOADN                            R9 0
       21 LOADN                            R10 1
       22 LOADN                            R11 0
       23 CALL                             R7 4 1
       24 GETTABLEKS                       R8 R2 K10 ["absoluteContentSize"]
       26 LOADNIL                          R9
       27 GETTABLEKS                       R10 R1 K11 ["ActionSubText"]
       29 JUMPIFNOT                        R10 ; [+38]
       30 GETUPVAL                         R10 0
       31 GETTABLEKS                       R11 R1 K11 ["ActionSubText"]
       33 GETTABLEKS                       R12 R3 K12 ["ButtonArea"]
       35 GETTABLEKS                       R12 R12 K11 ["ActionSubText"]
       37 GETTABLEKS                       R12 R12 K13 ["TextSize"]
       39 LOADNIL                          R13
       40 GETTABLEKS                       R15 R1 K14 ["AbsoluteSize"]
       42 GETIMPORT                        R16 K16 [Vector2.new]
       44 GETTABLEKS                       R18 R3 K18 ["ScrollingFrame"]
       46 GETTABLEKS                       R18 R18 K19 ["ElementPadding"]
       48 MULK                             R17 R18 K17 [2]
       49 LOADN                            R18 0
       50 CALL                             R16 2 1
       51 SUB                              R14 R15 R16
       52 CALL                             R10 4 1
       53 MOVE                             R9 R10
       54 GETIMPORT                        R10 K16 [Vector2.new]
       56 GETTABLEKS                       R11 R9 K20 ["X"]
       58 GETTABLEKS                       R13 R9 K21 ["Y"]
       60 GETTABLEKS                       R14 R3 K18 ["ScrollingFrame"]
       62 GETTABLEKS                       R14 R14 K19 ["ElementPadding"]
       64 ADD                              R12 R13 R14
       65 CALL                             R10 2 1
       66 MOVE                             R9 R10
       67 JUMP                             ; [+6]
       68 GETIMPORT                        R10 K16 [Vector2.new]
       70 LOADN                            R11 0
       71 LOADN                            R12 0
       72 CALL                             R10 2 1
       73 MOVE                             R9 R10
       74 GETTABLEKS                       R10 R7 K21 ["Y"]
       76 GETTABLEKS                       R10 R10 K22 ["Offset"]
       78 LOADN                            R11 0
       79 JUMPIFNOTLT                      R11 R10 ; [+37]
       81 GETTABLEKS                       R10 R8 K21 ["Y"]
       83 LOADN                            R11 0
       84 JUMPIFNOTLT                      R11 R10 ; [+32]
       86 GETTABLEKS                       R12 R8 K21 ["Y"]
       88 GETTABLEKS                       R13 R3 K12 ["ButtonArea"]
       90 GETTABLEKS                       R13 R13 K6 ["Size"]
       92 GETTABLEKS                       R13 R13 K21 ["Y"]
       94 GETTABLEKS                       R13 R13 K22 ["Offset"]
       96 ADD                              R11 R12 R13
       97 GETTABLEKS                       R12 R9 K21 ["Y"]
       99 ADD                              R10 R11 R12
      100 GETTABLEKS                       R11 R7 K21 ["Y"]
      102 GETTABLEKS                       R11 R11 K22 ["Offset"]
      104 JUMPIFNOTLT                      R10 R11 ; [+12]
      106 GETIMPORT                        R11 K9 [UDim2.new]
      108 GETTABLEKS                       R12 R7 K20 ["X"]
      110 GETIMPORT                        R13 K24 [UDim.new]
      112 LOADN                            R14 0
      113 MOVE                             R15 R10
      114 CALL                             R13 2 -1
      115 CALL                             R11 -1 1
      116 MOVE                             R7 R11
      117 GETTABLEKS                       R10 R1 K25 ["AssetData"]
      119 GETTABLEKS                       R11 R10 K26 ["Asset"]
      121 GETTABLEKS                       R11 R11 K27 ["AssetGenres"]
      123 GETTABLEKS                       R13 R10 K26 ["Asset"]
      125 GETTABLEKS                       R13 R13 K29 ["Description"]
      127 ORK                              R12 R13 K28 [""]
      128 GETTABLEKS                       R13 R1 K30 ["Localization"]
      130 GETTABLEKS                       R14 R3 K18 ["ScrollingFrame"]
      132 GETTABLEKS                       R14 R14 K31 ["InfoRow"]
      134 GETTABLEKS                       R15 R0 K32 ["onClickCreatorLink"]
      136 GETTABLEKS                       R16 R1 K33 ["HideCreatorSearch"]
      138 JUMPIFNOT                        R16 ; [+1]
      139 LOADNIL                          R15
      140 GETUPVAL                         R16 1
      141 GETTABLEKS                       R16 R16 K34 ["List"]
      143 GETTABLEKS                       R16 R16 K35 ["join"]
      145 NEWTABLE                         R17 0 2
      147 DUPTABLE                         R18 K39 [{"Label", "Content", "LinkAction"}]
      148 GETUPVAL                         R21 2
      149 LOADK                            R22 K40 ["AssetPreview"]
      150 LOADK                            R23 K41 ["Creator"]
      151 NAMECALL                         R19 R13 K42 ["getProjectText"]
      153 CALL                             R19 4 1
      154 SETTABLEKS                       R19 R18 K36 ["Label"]
      156 GETTABLEKS                       R19 R10 K41 ["Creator"]
      158 GETTABLEKS                       R19 R19 K43 ["Name"]
      160 SETTABLEKS                       R19 R18 K37 ["Content"]
      162 SETTABLEKS                       R15 R18 K38 ["LinkAction"]
      164 DUPTABLE                         R19 K44 [{"Label", "Content"}]
      165 GETUPVAL                         R22 2
      166 LOADK                            R23 K40 ["AssetPreview"]
      167 LOADK                            R24 K45 ["Genre"]
      168 NAMECALL                         R20 R13 K42 ["getProjectText"]
      170 CALL                             R20 4 1
      171 SETTABLEKS                       R20 R19 K36 ["Label"]
      173 LENGTH                           R21 R11
      174 JUMPIFNOTEQKN                    R21 K46 [0] ; [+8]
      176 GETUPVAL                         R22 2
      177 LOADK                            R23 K40 ["AssetPreview"]
      178 LOADK                            R24 K47 ["AllGenre"]
      179 NAMECALL                         R20 R13 K42 ["getProjectText"]
      181 CALL                             R20 4 1
      182 JUMPIF                           R20 ; [+5]
      183 GETTABLEN                        R21 R11 1
      184 FASTCALL1                        TOSTRING R21 ; [+2]
      185 GETIMPORT                        R20 K49 [tostring]
      187 CALL                             R20 1 1
      188 SETTABLEKS                       R20 R19 K37 ["Content"]
      190 SETLIST                          R17 R18 2 [1]
      192 GETTABLEKS                       R18 R2 K50 ["assetInfoRows"]
      194 JUMPIF                           R18 ; [+2]
      195 NEWTABLE                         R18 0 0
      197 NEWTABLE                         R19 0 2
      199 DUPTABLE                         R20 K44 [{"Label", "Content"}]
      200 GETUPVAL                         R23 2
      201 LOADK                            R24 K40 ["AssetPreview"]
      202 LOADK                            R25 K51 ["Created"]
      203 NAMECALL                         R21 R13 K42 ["getProjectText"]
      205 CALL                             R21 4 1
      206 SETTABLEKS                       R21 R20 K36 ["Label"]
      208 GETTABLEKS                       R23 R10 K26 ["Asset"]
      210 LOADK                            R24 K51 ["Created"]
      211 NAMECALL                         R21 R0 K52 ["formatLocalDateTimeForAsset"]
      213 CALL                             R21 3 1
      214 SETTABLEKS                       R21 R20 K37 ["Content"]
      216 DUPTABLE                         R21 K44 [{"Label", "Content"}]
      217 GETUPVAL                         R24 2
      218 LOADK                            R25 K40 ["AssetPreview"]
      219 LOADK                            R26 K53 ["LastUpdated"]
      220 NAMECALL                         R22 R13 K42 ["getProjectText"]
      222 CALL                             R22 4 1
      223 SETTABLEKS                       R22 R21 K36 ["Label"]
      225 GETTABLEKS                       R24 R10 K26 ["Asset"]
      227 LOADK                            R25 K54 ["Updated"]
      228 NAMECALL                         R22 R0 K52 ["formatLocalDateTimeForAsset"]
      230 CALL                             R22 3 1
      231 SETTABLEKS                       R22 R21 K37 ["Content"]
      233 SETLIST                          R19 R20 2 [1]
      235 CALL                             R16 3 1
      236 GETUPVAL                         R17 3
      237 GETTABLEKS                       R17 R17 K8 ["new"]
      239 CALL                             R17 0 1
      240 GETTABLEKS                       R18 R3 K18 ["ScrollingFrame"]
      242 GETTABLEKS                       R18 R18 K55 ["Padding"]
      244 GETTABLEKS                       R21 R7 K20 ["X"]
      246 GETTABLEKS                       R21 R21 K22 ["Offset"]
      248 GETTABLEKS                       R22 R18 K56 ["PaddingLeft"]
      250 GETTABLEKS                       R22 R22 K22 ["Offset"]
      252 SUB                              R20 R21 R22
      253 GETTABLEKS                       R21 R18 K57 ["PaddingRight"]
      255 GETTABLEKS                       R21 R21 K22 ["Offset"]
      257 SUB                              R19 R20 R21
      258 GETTABLEKS                       R20 R1 K58 ["CanFlagAsset"]
      260 JUMPIFNOT                        R20 ; [+11]
      261 GETTABLEKS                       R21 R3 K18 ["ScrollingFrame"]
      263 GETTABLEKS                       R21 R21 K59 ["FlagAsset"]
      265 GETTABLEKS                       R21 R21 K6 ["Size"]
      267 GETTABLEKS                       R21 R21 K20 ["X"]
      269 GETTABLEKS                       R21 R21 K22 ["Offset"]
      271 JUMP                             ; [+1]
      272 LOADN                            R21 0
      273 GETTABLEKS                       R22 R3 K18 ["ScrollingFrame"]
      275 GETTABLEKS                       R22 R22 K60 ["AssetHeader"]
      277 GETTABLEKS                       R22 R22 K61 ["Spacing"]
      279 GETTABLEKS                       R23 R1 K62 ["CreatingUniverseName"]
      281 JUMPIFNOT                        R23 ; [+2]
      282 GETTABLEKS                       R23 R1 K63 ["CreatingUniverseRootPlaceId"]
      284 JUMPIFNOT                        R23 ; [+16]
      285 GETTABLEKS                       R24 R1 K30 ["Localization"]
      287 GETUPVAL                         R26 2
      288 LOADK                            R27 K40 ["AssetPreview"]
      289 LOADK                            R28 K64 ["ByUsernameWithContentAttribution"]
      290 DUPTABLE                         R29 K67 [{"username", "universeName"}]
      291 LOADK                            R30 K68 ["{username}"]
      292 SETTABLEKS                       R30 R29 K65 ["username"]
      294 LOADK                            R30 K69 ["{universeName}"]
      295 SETTABLEKS                       R30 R29 K66 ["universeName"]
      297 NAMECALL                         R24 R24 K42 ["getProjectText"]
      299 CALL                             R24 5 1
      300 JUMP                             ; [+12]
      301 GETTABLEKS                       R24 R1 K30 ["Localization"]
      303 GETUPVAL                         R26 2
      304 LOADK                            R27 K40 ["AssetPreview"]
      305 LOADK                            R28 K70 ["ByUsernameWithoutContentAttribution"]
      306 DUPTABLE                         R29 K71 [{"username"}]
      307 LOADK                            R30 K68 ["{username}"]
      308 SETTABLEKS                       R30 R29 K65 ["username"]
      310 NAMECALL                         R24 R24 K42 ["getProjectText"]
      312 CALL                             R24 5 1
      313 GETUPVAL                         R25 4
      314 GETTABLEKS                       R25 R25 K72 ["createElement"]
      316 GETUPVAL                         R26 5
      317 GETUPVAL                         R27 6
      318 NEWTABLE                         R28 8 0
      320 LOADB                            R29 1
      321 SETTABLEKS                       R29 R28 K73 ["Active"]
      323 SETTABLEKS                       R4 R28 K3 ["AnchorPoint"]
      325 DUPCLOSURE                       R29 K74 [PROTO_23]
      326 SETTABLEKS                       R29 R28 K75 ["OnClick"]
      328 SETTABLEKS                       R5 R28 K4 ["Position"]
      330 SETTABLEKS                       R7 R28 K6 ["Size"]
      332 LOADK                            R29 K76 ["Box"]
      333 SETTABLEKS                       R29 R28 K77 ["Style"]
      335 SETTABLEKS                       R6 R28 K5 ["ZIndex"]
      337 GETUPVAL                         R29 4
      338 GETTABLEKS                       R29 R29 K78 ["Ref"]
      340 GETTABLEKS                       R30 R0 K79 ["containerRef"]
      342 SETTABLE                         R30 R28 R29
      343 GETTABLEKS                       R29 R1 K80 ["WrapperProps"]
      345 CALL                             R27 2 1
      346 DUPTABLE                         R28 K85 [{"CloseButton", "PurchaseFlow", "SuccessDialog", "Contents"}]
      347 GETUPVAL                         R29 4
      348 GETTABLEKS                       R29 R29 K72 ["createElement"]
      350 GETUPVAL                         R30 7
      351 DUPTABLE                         R31 K86 [{"Style"}]
      352 GETTABLEKS                       R32 R3 K81 ["CloseButton"]
      354 SETTABLEKS                       R32 R31 K77 ["Style"]
      356 CALL                             R29 2 1
      357 SETTABLEKS                       R29 R28 K81 ["CloseButton"]
      359 GETTABLEKS                       R29 R1 K82 ["PurchaseFlow"]
      361 SETTABLEKS                       R29 R28 K82 ["PurchaseFlow"]
      363 GETTABLEKS                       R29 R1 K83 ["SuccessDialog"]
      365 SETTABLEKS                       R29 R28 K83 ["SuccessDialog"]
      367 GETUPVAL                         R29 4
      368 GETTABLEKS                       R29 R29 K72 ["createElement"]
      370 GETUPVAL                         R30 8
      371 NEWTABLE                         R31 0 0
      373 DUPTABLE                         R32 K89 [{"Layout", "ScrollingFrame", "ButtonArea", "ActionSubTextArea"}]
      374 GETUPVAL                         R33 4
      375 GETTABLEKS                       R33 R33 K72 ["createElement"]
      377 LOADK                            R34 K90 ["UIListLayout"]
      378 DUPTABLE                         R35 K92 [{"SortOrder"}]
      379 GETIMPORT                        R36 K95 [Enum.SortOrder.LayoutOrder]
      381 SETTABLEKS                       R36 R35 K91 ["SortOrder"]
      383 CALL                             R33 2 1
      384 SETTABLEKS                       R33 R32 K87 ["Layout"]
      386 GETUPVAL                         R33 4
      387 GETTABLEKS                       R33 R33 K72 ["createElement"]
      389 GETUPVAL                         R34 9
      390 NEWTABLE                         R35 8 0
      392 LOADN                            R36 1
      393 SETTABLEKS                       R36 R35 K94 ["LayoutOrder"]
      395 LOADB                            R36 1
      396 SETTABLEKS                       R36 R35 K96 ["AutoSizeCanvas"]
      398 DUPTABLE                         R36 K97 [{"SortOrder", "Padding"}]
      399 GETIMPORT                        R37 K95 [Enum.SortOrder.LayoutOrder]
      401 SETTABLEKS                       R37 R36 K91 ["SortOrder"]
      403 GETIMPORT                        R37 K24 [UDim.new]
      405 LOADN                            R38 0
      406 GETTABLEKS                       R39 R3 K18 ["ScrollingFrame"]
      408 GETTABLEKS                       R39 R39 K19 ["ElementPadding"]
      410 CALL                             R37 2 1
      411 SETTABLEKS                       R37 R36 K55 ["Padding"]
      413 SETTABLEKS                       R36 R35 K98 ["AutoSizeLayoutOptions"]
      415 GETTABLEKS                       R36 R0 K99 ["onContentResize"]
      417 SETTABLEKS                       R36 R35 K100 ["OnCanvasResize"]
      419 GETIMPORT                        R36 K9 [UDim2.new]
      421 GETIMPORT                        R37 K24 [UDim.new]
      423 LOADN                            R38 1
      424 LOADN                            R39 0
      425 CALL                             R37 2 1
      426 GETIMPORT                        R40 K24 [UDim.new]
      428 LOADN                            R41 1
      429 LOADN                            R42 0
      430 CALL                             R40 2 1
      431 GETTABLEKS                       R41 R3 K12 ["ButtonArea"]
      433 GETTABLEKS                       R41 R41 K6 ["Size"]
      435 GETTABLEKS                       R41 R41 K101 ["Height"]
      437 SUB                              R39 R40 R41
      438 GETIMPORT                        R40 K24 [UDim.new]
      440 LOADN                            R41 0
      441 GETTABLEKS                       R42 R9 K21 ["Y"]
      443 CALL                             R40 2 1
      444 SUB                              R38 R39 R40
      445 CALL                             R36 2 1
      446 SETTABLEKS                       R36 R35 K6 ["Size"]
      448 GETTABLEKS                       R36 R2 K102 ["scrollingEnabled"]
      450 SETTABLEKS                       R36 R35 K103 ["ScrollingEnabled"]
      452 GETUPVAL                         R36 4
      453 GETTABLEKS                       R36 R36 K78 ["Ref"]
      455 GETTABLEKS                       R37 R0 K104 ["scrollingRef"]
      457 SETTABLE                         R37 R35 R36
      458 DUPTABLE                         R36 K115 [{"Padding", "AssetNameHeader", "AssetRender", "AssetPreviewDetails", "AssetDescription", "CodeSummaryContainer", "InfoRows", "Suggestions", "FooterSeparator", "Footer", "BottomSpacer"}]
      459 GETUPVAL                         R37 4
      460 GETTABLEKS                       R37 R37 K72 ["createElement"]
      462 LOADK                            R38 K116 ["UIPadding"]
      463 MOVE                             R39 R18
      464 CALL                             R37 2 1
      465 SETTABLEKS                       R37 R36 K55 ["Padding"]
      467 GETUPVAL                         R37 4
      468 GETTABLEKS                       R37 R37 K72 ["createElement"]
      470 GETUPVAL                         R38 5
      471 DUPTABLE                         R39 K119 [{"AutomaticSize", "Padding", "Size", "Spacing", "Layout", "LayoutOrder", "VerticalAlignment"}]
      472 GETIMPORT                        R40 K120 [Enum.AutomaticSize.Y]
      474 SETTABLEKS                       R40 R39 K117 ["AutomaticSize"]
      476 DUPTABLE                         R40 K125 [{"Bottom", "Left", "Right", "Top"}]
      477 LOADN                            R41 5
      478 SETTABLEKS                       R41 R40 K121 ["Bottom"]
      480 LOADN                            R41 5
      481 SETTABLEKS                       R41 R40 K122 ["Left"]
      483 LOADN                            R41 0
      484 SETTABLEKS                       R41 R40 K123 ["Right"]
      486 LOADN                            R41 5
      487 SETTABLEKS                       R41 R40 K124 ["Top"]
      489 SETTABLEKS                       R40 R39 K55 ["Padding"]
      491 GETIMPORT                        R40 K9 [UDim2.new]
      493 LOADN                            R41 1
      494 LOADN                            R42 0
      495 LOADN                            R43 0
      496 LOADN                            R44 0
      497 CALL                             R40 4 1
      498 SETTABLEKS                       R40 R39 K6 ["Size"]
      500 SETTABLEKS                       R22 R39 K61 ["Spacing"]
      502 GETIMPORT                        R40 K128 [Enum.FillDirection.Horizontal]
      504 SETTABLEKS                       R40 R39 K87 ["Layout"]
      506 NAMECALL                         R40 R17 K129 ["getNextOrder"]
      508 CALL                             R40 1 1
      509 SETTABLEKS                       R40 R39 K94 ["LayoutOrder"]
      511 GETIMPORT                        R40 K131 [Enum.VerticalAlignment.Center]
      513 SETTABLEKS                       R40 R39 K118 ["VerticalAlignment"]
      515 DUPTABLE                         R40 K133 [{"AssetNameContainer", "FlagAsset"}]
      516 GETUPVAL                         R41 4
      517 GETTABLEKS                       R41 R41 K72 ["createElement"]
      519 GETUPVAL                         R42 5
      520 DUPTABLE                         R43 K134 [{"AutomaticSize", "Size", "LayoutOrder", "Layout"}]
      521 GETIMPORT                        R44 K120 [Enum.AutomaticSize.Y]
      523 SETTABLEKS                       R44 R43 K117 ["AutomaticSize"]
      525 GETIMPORT                        R44 K9 [UDim2.new]
      527 LOADN                            R45 1
      528 MINUS                            R47 R21
      529 SUB                              R46 R47 R22
      530 LOADN                            R47 0
      531 LOADN                            R48 0
      532 CALL                             R44 4 1
      533 SETTABLEKS                       R44 R43 K6 ["Size"]
      535 LOADN                            R44 1
      536 SETTABLEKS                       R44 R43 K94 ["LayoutOrder"]
      538 GETIMPORT                        R44 K136 [Enum.FillDirection.Vertical]
      540 SETTABLEKS                       R44 R43 K87 ["Layout"]
      542 DUPTABLE                         R44 K139 [{"AssetName", "CreatorName"}]
      543 GETUPVAL                         R45 4
      544 GETTABLEKS                       R45 R45 K72 ["createElement"]
      546 GETUPVAL                         R46 10
      547 DUPTABLE                         R47 K142 [{"AutomaticSize", "LayoutOrder", "Size", "Style", "Text", "TextWrapped"}]
      548 GETIMPORT                        R48 K120 [Enum.AutomaticSize.Y]
      550 SETTABLEKS                       R48 R47 K117 ["AutomaticSize"]
      552 LOADN                            R48 1
      553 SETTABLEKS                       R48 R47 K94 ["LayoutOrder"]
      555 GETIMPORT                        R48 K9 [UDim2.new]
      557 LOADN                            R49 1
      558 LOADN                            R50 0
      559 LOADN                            R51 0
      560 LOADN                            R52 0
      561 CALL                             R48 4 1
      562 SETTABLEKS                       R48 R47 K6 ["Size"]
      564 GETTABLEKS                       R48 R3 K18 ["ScrollingFrame"]
      566 GETTABLEKS                       R48 R48 K137 ["AssetName"]
      568 SETTABLEKS                       R48 R47 K77 ["Style"]
      570 GETTABLEKS                       R48 R10 K26 ["Asset"]
      572 GETTABLEKS                       R48 R48 K43 ["Name"]
      574 SETTABLEKS                       R48 R47 K140 ["Text"]
      576 LOADB                            R48 1
      577 SETTABLEKS                       R48 R47 K141 ["TextWrapped"]
      579 CALL                             R45 2 1
      580 SETTABLEKS                       R45 R44 K137 ["AssetName"]
      582 GETUPVAL                         R45 4
      583 GETTABLEKS                       R45 R45 K72 ["createElement"]
      585 GETUPVAL                         R46 11
      586 DUPTABLE                         R47 K146 [{"TextProps", "AutomaticSize", "HorizontalAlignment", "Text", "LinkMap", "LayoutOrder", "Size"}]
      587 DUPTABLE                         R48 K149 [{"Font", "TextSize", "TextXAlignment"}]
      588 GETIMPORT                        R49 K151 [Enum.Font.SourceSans]
      590 SETTABLEKS                       R49 R48 K147 ["Font"]
      592 LOADN                            R49 18
      593 SETTABLEKS                       R49 R48 K13 ["TextSize"]
      595 GETIMPORT                        R49 K152 [Enum.TextXAlignment.Left]
      597 SETTABLEKS                       R49 R48 K148 ["TextXAlignment"]
      599 SETTABLEKS                       R48 R47 K143 ["TextProps"]
      601 GETIMPORT                        R48 K120 [Enum.AutomaticSize.Y]
      603 SETTABLEKS                       R48 R47 K117 ["AutomaticSize"]
      605 GETIMPORT                        R48 K153 [Enum.HorizontalAlignment.Left]
      607 SETTABLEKS                       R48 R47 K144 ["HorizontalAlignment"]
      609 SETTABLEKS                       R24 R47 K140 ["Text"]
      611 NEWTABLE                         R48 2 0
      613 DUPTABLE                         R49 K156 [{"LinkText", "LinkCallback"}]
      614 LOADK                            R51 K157 ["@"]
      615 GETTABLEKS                       R52 R10 K41 ["Creator"]
      617 GETTABLEKS                       R52 R52 K43 ["Name"]
      619 CONCAT                           R50 R51 R52
      620 SETTABLEKS                       R50 R49 K154 ["LinkText"]
      622 NEWCLOSURE                       R50 P1
      623 CAPTURE                          UPVAL U12
      624 CAPTURE                          UPVAL U13
      625 CAPTURE                          VAL R10
      626 SETTABLEKS                       R50 R49 K155 ["LinkCallback"]
      628 SETTABLEKS                       R49 R48 K68 ["{username}"]
      630 DUPTABLE                         R49 K156 [{"LinkText", "LinkCallback"}]
      631 GETTABLEKS                       R50 R1 K62 ["CreatingUniverseName"]
      633 SETTABLEKS                       R50 R49 K154 ["LinkText"]
      635 NEWCLOSURE                       R50 P2
      636 CAPTURE                          UPVAL U12
      637 CAPTURE                          UPVAL U13
      638 CAPTURE                          VAL R1
      639 SETTABLEKS                       R50 R49 K155 ["LinkCallback"]
      641 SETTABLEKS                       R49 R48 K69 ["{universeName}"]
      643 SETTABLEKS                       R48 R47 K145 ["LinkMap"]
      645 LOADN                            R48 2
      646 SETTABLEKS                       R48 R47 K94 ["LayoutOrder"]
      648 GETIMPORT                        R48 K9 [UDim2.new]
      650 LOADN                            R49 1
      651 LOADN                            R50 0
      652 LOADN                            R51 0
      653 LOADN                            R52 0
      654 CALL                             R48 4 1
      655 SETTABLEKS                       R48 R47 K6 ["Size"]
      657 CALL                             R45 2 1
      658 SETTABLEKS                       R45 R44 K138 ["CreatorName"]
      660 CALL                             R41 3 1
      661 SETTABLEKS                       R41 R40 K132 ["AssetNameContainer"]
      663 MOVE                             R41 R20
      664 JUMPIFNOT                        R41 ; [+81]
      665 GETUPVAL                         R41 4
      666 GETTABLEKS                       R41 R41 K72 ["createElement"]
      668 LOADK                            R42 K158 ["ImageButton"]
      669 NEWTABLE                         R43 8 0
      671 LOADN                            R44 1
      672 SETTABLEKS                       R44 R43 K159 ["BackgroundTransparency"]
      674 GETTABLEKS                       R44 R3 K18 ["ScrollingFrame"]
      676 GETTABLEKS                       R44 R44 K59 ["FlagAsset"]
      678 GETTABLEKS                       R44 R44 K160 ["Image"]
      680 SETTABLEKS                       R44 R43 K160 ["Image"]
      682 GETTABLEKS                       R44 R3 K18 ["ScrollingFrame"]
      684 GETTABLEKS                       R44 R44 K59 ["FlagAsset"]
      686 GETTABLEKS                       R44 R44 K161 ["ImageColor3"]
      688 SETTABLEKS                       R44 R43 K161 ["ImageColor3"]
      690 NAMECALL                         R44 R17 K129 ["getNextOrder"]
      692 CALL                             R44 1 1
      693 SETTABLEKS                       R44 R43 K94 ["LayoutOrder"]
      695 GETTABLEKS                       R44 R3 K18 ["ScrollingFrame"]
      697 GETTABLEKS                       R44 R44 K59 ["FlagAsset"]
      699 GETTABLEKS                       R44 R44 K6 ["Size"]
      701 SETTABLEKS                       R44 R43 K6 ["Size"]
      703 GETUPVAL                         R44 4
      704 GETTABLEKS                       R44 R44 K162 ["Event"]
      706 GETTABLEKS                       R44 R44 K163 ["Activated"]
      708 GETTABLEKS                       R45 R0 K0 ["props"]
      710 GETTABLEKS                       R45 R45 K164 ["OnClickReport"]
      712 SETTABLE                         R45 R43 R44
      713 DUPTABLE                         R44 K167 [{"Tooltip", "HoverArea"}]
      714 GETUPVAL                         R45 4
      715 GETTABLEKS                       R45 R45 K72 ["createElement"]
      717 GETUPVAL                         R46 14
      718 DUPTABLE                         R47 K168 [{"Text"}]
      719 GETTABLEKS                       R48 R0 K0 ["props"]
      721 GETTABLEKS                       R48 R48 K30 ["Localization"]
      723 GETUPVAL                         R50 2
      724 LOADK                            R51 K40 ["AssetPreview"]
      725 LOADK                            R52 K169 ["Report"]
      726 NAMECALL                         R48 R48 K42 ["getProjectText"]
      728 CALL                             R48 4 1
      729 SETTABLEKS                       R48 R47 K140 ["Text"]
      731 CALL                             R45 2 1
      732 SETTABLEKS                       R45 R44 K165 ["Tooltip"]
      734 GETUPVAL                         R45 4
      735 GETTABLEKS                       R45 R45 K72 ["createElement"]
      737 GETUPVAL                         R46 15
      738 DUPTABLE                         R47 K171 [{"Cursor"}]
      739 LOADK                            R48 K172 ["PointingHand"]
      740 SETTABLEKS                       R48 R47 K170 ["Cursor"]
      742 CALL                             R45 2 1
      743 SETTABLEKS                       R45 R44 K166 ["HoverArea"]
      745 CALL                             R41 3 1
      746 SETTABLEKS                       R41 R40 K59 ["FlagAsset"]
      748 CALL                             R37 3 1
      749 SETTABLEKS                       R37 R36 K105 ["AssetNameHeader"]
      751 GETUPVAL                         R37 4
      752 GETTABLEKS                       R37 R37 K72 ["createElement"]
      754 GETUPVAL                         R38 16
      755 DUPTABLE                         R39 K190 [{"LayoutOrder", "Width", "Padding", "Margin", "AssetData", "AssetInstance", "ImageCarouselAutoAdvanceTimer", "OnImageCarouselImageChanged", "ImageCarouselTransparencyThreshold", "OnSetImageCarouselImages", "OnMouseEnter", "OnMouseLeave", "OnPlaySound", "OnPauseSound", "OnPlayVideo", "OnPauseVideo", "UsageContext", "UseImageCarousel", "ShouldMuteModelSounds", "Hide3DPreviewForAssetsWithMeshes"}]
      756 NAMECALL                         R40 R17 K129 ["getNextOrder"]
      758 CALL                             R40 1 1
      759 SETTABLEKS                       R40 R39 K94 ["LayoutOrder"]
      761 GETTABLEKS                       R42 R7 K20 ["X"]
      763 GETTABLEKS                       R42 R42 K22 ["Offset"]
      765 GETTABLEKS                       R43 R18 K56 ["PaddingLeft"]
      767 GETTABLEKS                       R43 R43 K22 ["Offset"]
      769 SUB                              R41 R42 R43
      770 GETTABLEKS                       R42 R18 K57 ["PaddingRight"]
      772 GETTABLEKS                       R42 R42 K22 ["Offset"]
      774 SUB                              R40 R41 R42
      775 SETTABLEKS                       R40 R39 K173 ["Width"]
      777 DUPTABLE                         R40 K191 [{"Right", "Top", "Bottom", "Left"}]
      778 LOADN                            R41 7
      779 SETTABLEKS                       R41 R40 K123 ["Right"]
      781 LOADN                            R41 0
      782 SETTABLEKS                       R41 R40 K124 ["Top"]
      784 LOADN                            R41 0
      785 SETTABLEKS                       R41 R40 K121 ["Bottom"]
      787 LOADN                            R41 0
      788 SETTABLEKS                       R41 R40 K122 ["Left"]
      790 SETTABLEKS                       R40 R39 K55 ["Padding"]
      792 GETTABLEKS                       R40 R3 K192 ["AssetRenderMargin"]
      794 SETTABLEKS                       R40 R39 K174 ["Margin"]
      796 SETTABLEKS                       R10 R39 K25 ["AssetData"]
      798 GETTABLEKS                       R40 R1 K175 ["AssetInstance"]
      800 SETTABLEKS                       R40 R39 K175 ["AssetInstance"]
      802 GETTABLEKS                       R40 R1 K176 ["ImageCarouselAutoAdvanceTimer"]
      804 SETTABLEKS                       R40 R39 K176 ["ImageCarouselAutoAdvanceTimer"]
      806 GETTABLEKS                       R40 R1 K177 ["OnImageCarouselImageChanged"]
      808 SETTABLEKS                       R40 R39 K177 ["OnImageCarouselImageChanged"]
      810 GETTABLEKS                       R40 R1 K178 ["ImageCarouselTransparencyThreshold"]
      812 SETTABLEKS                       R40 R39 K178 ["ImageCarouselTransparencyThreshold"]
      814 GETTABLEKS                       R40 R1 K179 ["OnSetImageCarouselImages"]
      816 SETTABLEKS                       R40 R39 K179 ["OnSetImageCarouselImages"]
      818 GETTABLEKS                       R40 R0 K193 ["onMouseEnterAssetRender"]
      820 SETTABLEKS                       R40 R39 K180 ["OnMouseEnter"]
      822 GETTABLEKS                       R40 R0 K194 ["onMouseLeaveAssetRender"]
      824 SETTABLEKS                       R40 R39 K181 ["OnMouseLeave"]
      826 GETTABLEKS                       R40 R0 K195 ["onPlaySound"]
      828 SETTABLEKS                       R40 R39 K182 ["OnPlaySound"]
      830 GETTABLEKS                       R40 R0 K196 ["onPauseSound"]
      832 SETTABLEKS                       R40 R39 K183 ["OnPauseSound"]
      834 GETTABLEKS                       R40 R0 K197 ["onPlayVideo"]
      836 SETTABLEKS                       R40 R39 K184 ["OnPlayVideo"]
      838 GETTABLEKS                       R40 R0 K198 ["onPauseVideo"]
      840 SETTABLEKS                       R40 R39 K185 ["OnPauseVideo"]
      842 GETTABLEKS                       R40 R1 K186 ["UsageContext"]
      844 SETTABLEKS                       R40 R39 K186 ["UsageContext"]
      846 GETTABLEKS                       R40 R1 K187 ["UseImageCarousel"]
      848 SETTABLEKS                       R40 R39 K187 ["UseImageCarousel"]
      850 GETTABLEKS                       R40 R1 K188 ["ShouldMuteModelSounds"]
      852 SETTABLEKS                       R40 R39 K188 ["ShouldMuteModelSounds"]
      854 GETUPVAL                         R41 17
      855 CALL                             R41 0 1
      856 JUMPIFNOT                        R41 ; [+3]
      857 GETTABLEKS                       R40 R1 K189 ["Hide3DPreviewForAssetsWithMeshes"]
      859 JUMP                             ; [+1]
      860 LOADNIL                          R40
      861 SETTABLEKS                       R40 R39 K189 ["Hide3DPreviewForAssetsWithMeshes"]
      863 CALL                             R37 2 1
      864 SETTABLEKS                       R37 R36 K106 ["AssetRender"]
      866 GETTABLEKS                       R38 R1 K199 ["Favorites"]
      868 JUMPIF                           R38 ; [+11]
      869 GETTABLEKS                       R38 R1 K200 ["IsPackage"]
      871 JUMPIF                           R38 ; [+8]
      872 GETTABLEKS                       R38 R10 K26 ["Asset"]
      874 GETTABLEKS                       R38 R38 K201 ["HasScripts"]
      876 JUMPIF                           R38 ; [+3]
      877 GETTABLEKS                       R38 R1 K202 ["Voting"]
      879 JUMPIFNOT                        R38 ; [+48]
      880 GETUPVAL                         R37 4
      881 GETTABLEKS                       R37 R37 K72 ["createElement"]
      883 GETUPVAL                         R38 18
      884 DUPTABLE                         R39 K207 [{"Favorites", "HasScripts", "IsPackage", "LastUpdatedDate", "LayoutOrder", "Voting", "OnVoteUp", "OnVoteDown", "IsUninstalledPlugin"}]
      885 GETTABLEKS                       R40 R1 K199 ["Favorites"]
      887 SETTABLEKS                       R40 R39 K199 ["Favorites"]
      889 GETTABLEKS                       R40 R10 K26 ["Asset"]
      891 GETTABLEKS                       R40 R40 K201 ["HasScripts"]
      893 SETTABLEKS                       R40 R39 K201 ["HasScripts"]
      895 GETTABLEKS                       R40 R1 K200 ["IsPackage"]
      897 SETTABLEKS                       R40 R39 K200 ["IsPackage"]
      899 GETTABLEKS                       R40 R10 K26 ["Asset"]
      901 GETTABLEKS                       R40 R40 K54 ["Updated"]
      903 SETTABLEKS                       R40 R39 K203 ["LastUpdatedDate"]
      905 NAMECALL                         R40 R17 K129 ["getNextOrder"]
      907 CALL                             R40 1 1
      908 SETTABLEKS                       R40 R39 K94 ["LayoutOrder"]
      910 GETTABLEKS                       R40 R1 K202 ["Voting"]
      912 SETTABLEKS                       R40 R39 K202 ["Voting"]
      914 GETTABLEKS                       R40 R0 K208 ["onVoteUp"]
      916 SETTABLEKS                       R40 R39 K204 ["OnVoteUp"]
      918 GETTABLEKS                       R40 R0 K209 ["onVoteDown"]
      920 SETTABLEKS                       R40 R39 K205 ["OnVoteDown"]
      922 GETTABLEKS                       R40 R1 K206 ["IsUninstalledPlugin"]
      924 SETTABLEKS                       R40 R39 K206 ["IsUninstalledPlugin"]
      926 CALL                             R37 2 1
      927 JUMP                             ; [+1]
      928 LOADNIL                          R37
      929 SETTABLEKS                       R37 R36 K107 ["AssetPreviewDetails"]
      931 GETUPVAL                         R37 4
      932 GETTABLEKS                       R37 R37 K72 ["createElement"]
      934 GETUPVAL                         R38 19
      935 DUPTABLE                         R39 K211 [{"AutomaticSize", "LayoutOrder", "OnClickLink", "Size", "Style", "Text", "TextWrapped"}]
      936 GETIMPORT                        R40 K120 [Enum.AutomaticSize.Y]
      938 SETTABLEKS                       R40 R39 K117 ["AutomaticSize"]
      940 NAMECALL                         R40 R17 K129 ["getNextOrder"]
      942 CALL                             R40 1 1
      943 SETTABLEKS                       R40 R39 K94 ["LayoutOrder"]
      945 GETTABLEKS                       R40 R1 K212 ["OnClickDescriptionLink"]
      947 SETTABLEKS                       R40 R39 K210 ["OnClickLink"]
      949 GETIMPORT                        R40 K9 [UDim2.new]
      951 LOADN                            R41 1
      952 LOADN                            R42 0
      953 LOADN                            R43 0
      954 LOADN                            R44 0
      955 CALL                             R40 4 1
      956 SETTABLEKS                       R40 R39 K6 ["Size"]
      958 GETTABLEKS                       R40 R3 K18 ["ScrollingFrame"]
      960 GETTABLEKS                       R40 R40 K108 ["AssetDescription"]
      962 SETTABLEKS                       R40 R39 K77 ["Style"]
      964 SETTABLEKS                       R12 R39 K140 ["Text"]
      966 LOADB                            R40 1
      967 SETTABLEKS                       R40 R39 K141 ["TextWrapped"]
      969 CALL                             R37 2 1
      970 SETTABLEKS                       R37 R36 K108 ["AssetDescription"]
      972 GETTABLEKS                       R38 R1 K213 ["CodeSummary"]
      974 JUMPIFNOT                        R38 ; [+136]
      975 GETUPVAL                         R37 4
      976 GETTABLEKS                       R37 R37 K72 ["createElement"]
      978 GETUPVAL                         R38 5
      979 DUPTABLE                         R39 K215 [{"AutomaticSize", "HorizontalAlignment", "BackgroundColor", "Layout", "LayoutOrder", "Padding", "Size", "Style", "Spacing"}]
      980 GETIMPORT                        R40 K217 [Enum.AutomaticSize.XY]
      982 SETTABLEKS                       R40 R39 K117 ["AutomaticSize"]
      984 GETIMPORT                        R40 K153 [Enum.HorizontalAlignment.Left]
      986 SETTABLEKS                       R40 R39 K144 ["HorizontalAlignment"]
      988 GETTABLEKS                       R40 R14 K213 ["CodeSummary"]
      990 GETTABLEKS                       R40 R40 K214 ["BackgroundColor"]
      992 SETTABLEKS                       R40 R39 K214 ["BackgroundColor"]
      994 GETIMPORT                        R40 K136 [Enum.FillDirection.Vertical]
      996 SETTABLEKS                       R40 R39 K87 ["Layout"]
      998 NAMECALL                         R40 R17 K129 ["getNextOrder"]
     1000 CALL                             R40 1 1
     1001 SETTABLEKS                       R40 R39 K94 ["LayoutOrder"]
     1003 GETTABLEKS                       R40 R14 K213 ["CodeSummary"]
     1005 GETTABLEKS                       R40 R40 K55 ["Padding"]
     1007 SETTABLEKS                       R40 R39 K55 ["Padding"]
     1009 GETIMPORT                        R40 K219 [UDim2.fromScale]
     1011 LOADN                            R41 1
     1012 LOADN                            R42 0
     1013 CALL                             R40 2 1
     1014 SETTABLEKS                       R40 R39 K6 ["Size"]
     1016 LOADK                            R40 K220 ["CornerBox"]
     1017 SETTABLEKS                       R40 R39 K77 ["Style"]
     1019 GETTABLEKS                       R40 R3 K18 ["ScrollingFrame"]
     1021 GETTABLEKS                       R40 R40 K19 ["ElementPadding"]
     1023 SETTABLEKS                       R40 R39 K61 ["Spacing"]
     1025 DUPTABLE                         R40 K223 [{"ScriptText", "DisclaimerText"}]
     1026 GETUPVAL                         R41 4
     1027 GETTABLEKS                       R41 R41 K72 ["createElement"]
     1029 GETUPVAL                         R42 10
     1030 DUPTABLE                         R43 K225 [{"AutomaticSize", "LayoutOrder", "RichText", "Size", "Style", "Text", "TextXAlignment", "TextWrapped"}]
     1031 GETIMPORT                        R44 K217 [Enum.AutomaticSize.XY]
     1033 SETTABLEKS                       R44 R43 K117 ["AutomaticSize"]
     1035 NAMECALL                         R44 R17 K129 ["getNextOrder"]
     1037 CALL                             R44 1 1
     1038 SETTABLEKS                       R44 R43 K94 ["LayoutOrder"]
     1040 LOADB                            R44 1
     1041 SETTABLEKS                       R44 R43 K224 ["RichText"]
     1043 GETIMPORT                        R44 K219 [UDim2.fromScale]
     1045 LOADN                            R45 1
     1046 LOADN                            R46 0
     1047 CALL                             R44 2 1
     1048 SETTABLEKS                       R44 R43 K6 ["Size"]
     1050 GETTABLEKS                       R44 R14 K140 ["Text"]
     1052 SETTABLEKS                       R44 R43 K77 ["Style"]
     1054 GETTABLEKS                       R44 R1 K213 ["CodeSummary"]
     1056 SETTABLEKS                       R44 R43 K140 ["Text"]
     1058 GETIMPORT                        R44 K152 [Enum.TextXAlignment.Left]
     1060 SETTABLEKS                       R44 R43 K148 ["TextXAlignment"]
     1062 LOADB                            R44 1
     1063 SETTABLEKS                       R44 R43 K141 ["TextWrapped"]
     1065 CALL                             R41 2 1
     1066 SETTABLEKS                       R41 R40 K221 ["ScriptText"]
     1068 GETUPVAL                         R41 4
     1069 GETTABLEKS                       R41 R41 K72 ["createElement"]
     1071 GETUPVAL                         R42 10
     1072 DUPTABLE                         R43 K226 [{"AutomaticSize", "LayoutOrder", "Style", "Text", "Size", "TextWrapped"}]
     1073 GETIMPORT                        R44 K217 [Enum.AutomaticSize.XY]
     1075 SETTABLEKS                       R44 R43 K117 ["AutomaticSize"]
     1077 NAMECALL                         R44 R17 K129 ["getNextOrder"]
     1079 CALL                             R44 1 1
     1080 SETTABLEKS                       R44 R43 K94 ["LayoutOrder"]
     1082 GETTABLEKS                       R44 R14 K213 ["CodeSummary"]
     1084 GETTABLEKS                       R44 R44 K222 ["DisclaimerText"]
     1086 SETTABLEKS                       R44 R43 K77 ["Style"]
     1088 GETUPVAL                         R46 2
     1089 LOADK                            R47 K40 ["AssetPreview"]
     1090 LOADK                            R48 K227 ["CodeSummaryDisclaimer"]
     1091 NAMECALL                         R44 R13 K42 ["getProjectText"]
     1093 CALL                             R44 4 1
     1094 SETTABLEKS                       R44 R43 K140 ["Text"]
     1096 GETIMPORT                        R44 K219 [UDim2.fromScale]
     1098 LOADN                            R45 1
     1099 LOADN                            R46 0
     1100 CALL                             R44 2 1
     1101 SETTABLEKS                       R44 R43 K6 ["Size"]
     1103 LOADB                            R44 1
     1104 SETTABLEKS                       R44 R43 K141 ["TextWrapped"]
     1106 CALL                             R41 2 1
     1107 SETTABLEKS                       R41 R40 K222 ["DisclaimerText"]
     1109 CALL                             R37 3 1
     1110 JUMP                             ; [+1]
     1111 LOADNIL                          R37
     1112 SETTABLEKS                       R37 R36 K109 ["CodeSummaryContainer"]
     1114 GETUPVAL                         R38 20
     1115 JUMPIFNOT                        R38 ; [+31]
     1116 GETUPVAL                         R37 4
     1117 GETTABLEKS                       R37 R37 K228 ["createFragment"]
     1119 GETUPVAL                         R38 1
     1120 GETTABLEKS                       R38 R38 K34 ["List"]
     1122 GETTABLEKS                       R38 R38 K229 ["foldLeft"]
     1124 GETUPVAL                         R39 1
     1125 GETTABLEKS                       R39 R39 K34 ["List"]
     1127 GETTABLEKS                       R39 R39 K230 ["map"]
     1129 MOVE                             R40 R16
     1130 NEWCLOSURE                       R41 P3
     1131 CAPTURE                          UPVAL U21
     1132 CAPTURE                          VAL R14
     1133 CAPTURE                          UPVAL U4
     1134 CAPTURE                          UPVAL U22
     1135 CAPTURE                          UPVAL U10
     1136 CAPTURE                          UPVAL U8
     1137 CAPTURE                          VAL R17
     1138 CAPTURE                          VAL R16
     1139 CAPTURE                          UPVAL U23
     1140 CALL                             R39 2 1
     1141 DUPCLOSURE                       R40 K231 [PROTO_26]
     1142 NEWTABLE                         R41 0 0
     1144 CALL                             R38 3 -1
     1145 CALL                             R37 -1 1
     1146 JUMP                             ; [+9]
     1147 GETUPVAL                         R37 4
     1148 GETTABLEKS                       R37 R37 K228 ["createFragment"]
     1150 GETUPVAL                         R38 24
     1151 MOVE                             R39 R17
     1152 MOVE                             R40 R16
     1153 MOVE                             R41 R14
     1154 CALL                             R38 3 -1
     1155 CALL                             R37 -1 1
     1156 SETTABLEKS                       R37 R36 K110 ["InfoRows"]
     1158 GETTABLEKS                       R38 R1 K232 ["RenderSuggestions"]
     1160 JUMPIFNOT                        R38 ; [+41]
     1161 GETUPVAL                         R37 4
     1162 GETTABLEKS                       R37 R37 K72 ["createElement"]
     1164 GETUPVAL                         R38 5
     1165 DUPTABLE                         R39 K233 [{"AutomaticSize", "LayoutOrder", "Padding", "Size"}]
     1166 GETIMPORT                        R40 K120 [Enum.AutomaticSize.Y]
     1168 SETTABLEKS                       R40 R39 K117 ["AutomaticSize"]
     1170 NAMECALL                         R40 R17 K129 ["getNextOrder"]
     1172 CALL                             R40 1 1
     1173 SETTABLEKS                       R40 R39 K94 ["LayoutOrder"]
     1175 GETTABLEKS                       R40 R3 K18 ["ScrollingFrame"]
     1177 GETTABLEKS                       R40 R40 K234 ["SuggestionsSection"]
     1179 GETTABLEKS                       R40 R40 K55 ["Padding"]
     1181 SETTABLEKS                       R40 R39 K55 ["Padding"]
     1183 GETIMPORT                        R40 K9 [UDim2.new]
     1185 LOADN                            R41 1
     1186 LOADN                            R42 0
     1187 LOADN                            R43 0
     1188 LOADN                            R44 0
     1189 CALL                             R40 4 1
     1190 SETTABLEKS                       R40 R39 K6 ["Size"]
     1192 DUPTABLE                         R40 K236 [{"SuggestionsWrapper"}]
     1193 GETTABLEKS                       R41 R1 K232 ["RenderSuggestions"]
     1195 GETTABLEKS                       R42 R0 K237 ["resetCanvasPosition"]
     1197 CALL                             R41 1 1
     1198 SETTABLEKS                       R41 R40 K235 ["SuggestionsWrapper"]
     1200 CALL                             R37 3 1
     1201 JUMP                             ; [+1]
     1202 LOADNIL                          R37
     1203 SETTABLEKS                       R37 R36 K111 ["Suggestions"]
     1205 GETTABLEKS                       R37 R1 K238 ["RenderFooter"]
     1207 JUMPIFNOT                        R37 ; [+11]
     1208 GETUPVAL                         R37 4
     1209 GETTABLEKS                       R37 R37 K72 ["createElement"]
     1211 GETUPVAL                         R38 23
     1212 DUPTABLE                         R39 K239 [{"LayoutOrder"}]
     1213 NAMECALL                         R40 R17 K129 ["getNextOrder"]
     1215 CALL                             R40 1 1
     1216 SETTABLEKS                       R40 R39 K94 ["LayoutOrder"]
     1218 CALL                             R37 2 1
     1219 SETTABLEKS                       R37 R36 K112 ["FooterSeparator"]
     1221 GETTABLEKS                       R37 R1 K238 ["RenderFooter"]
     1223 JUMPIFNOT                        R37 ; [+19]
     1224 GETUPVAL                         R37 4
     1225 GETTABLEKS                       R37 R37 K72 ["createElement"]
     1227 GETTABLEKS                       R38 R1 K238 ["RenderFooter"]
     1229 DUPTABLE                         R39 K240 [{"Size", "LayoutOrder"}]
     1230 GETIMPORT                        R40 K242 [UDim2.fromOffset]
     1232 MOVE                             R41 R19
     1233 LOADN                            R42 0
     1234 CALL                             R40 2 1
     1235 SETTABLEKS                       R40 R39 K6 ["Size"]
     1237 NAMECALL                         R40 R17 K129 ["getNextOrder"]
     1239 CALL                             R40 1 1
     1240 SETTABLEKS                       R40 R39 K94 ["LayoutOrder"]
     1242 CALL                             R37 2 1
     1243 SETTABLEKS                       R37 R36 K113 ["Footer"]
     1245 GETUPVAL                         R37 4
     1246 GETTABLEKS                       R37 R37 K72 ["createElement"]
     1248 GETUPVAL                         R38 8
     1249 DUPTABLE                         R39 K243 [{"LayoutOrder", "Size"}]
     1250 NAMECALL                         R40 R17 K129 ["getNextOrder"]
     1252 CALL                             R40 1 1
     1253 SETTABLEKS                       R40 R39 K94 ["LayoutOrder"]
     1255 GETIMPORT                        R40 K9 [UDim2.new]
     1257 LOADN                            R41 1
     1258 LOADN                            R42 0
     1259 LOADN                            R43 0
     1260 GETTABLEKS                       R45 R3 K18 ["ScrollingFrame"]
     1262 GETTABLEKS                       R45 R45 K55 ["Padding"]
     1264 GETTABLEKS                       R45 R45 K244 ["PaddingTop"]
     1266 GETTABLEKS                       R46 R3 K18 ["ScrollingFrame"]
     1268 GETTABLEKS                       R46 R46 K55 ["Padding"]
     1270 GETTABLEKS                       R46 R46 K245 ["PaddingBottom"]
     1272 ADD                              R44 R45 R46
     1273 CALL                             R40 4 1
     1274 SETTABLEKS                       R40 R39 K6 ["Size"]
     1276 CALL                             R37 2 1
     1277 SETTABLEKS                       R37 R36 K114 ["BottomSpacer"]
     1279 CALL                             R33 3 1
     1280 SETTABLEKS                       R33 R32 K18 ["ScrollingFrame"]
     1282 GETUPVAL                         R33 4
     1283 GETTABLEKS                       R33 R33 K72 ["createElement"]
     1285 GETUPVAL                         R34 8
     1286 DUPTABLE                         R35 K243 [{"LayoutOrder", "Size"}]
     1287 LOADN                            R36 2
     1288 SETTABLEKS                       R36 R35 K94 ["LayoutOrder"]
     1290 GETTABLEKS                       R36 R3 K12 ["ButtonArea"]
     1292 GETTABLEKS                       R36 R36 K6 ["Size"]
     1294 SETTABLEKS                       R36 R35 K6 ["Size"]
     1296 DUPTABLE                         R36 K248 [{"Padding", "Layout", "ContextButton", "ActionButton"}]
     1297 GETUPVAL                         R37 4
     1298 GETTABLEKS                       R37 R37 K72 ["createElement"]
     1300 LOADK                            R38 K116 ["UIPadding"]
     1301 GETTABLEKS                       R40 R1 K11 ["ActionSubText"]
     1303 JUMPIFNOT                        R40 ; [+20]
     1304 GETUPVAL                         R39 6
     1305 GETTABLEKS                       R40 R3 K12 ["ButtonArea"]
     1307 GETTABLEKS                       R40 R40 K55 ["Padding"]
     1309 DUPTABLE                         R41 K249 [{"PaddingBottom"}]
     1310 GETIMPORT                        R42 K24 [UDim.new]
     1312 LOADN                            R43 0
     1313 GETTABLEKS                       R44 R3 K12 ["ButtonArea"]
     1315 GETTABLEKS                       R44 R44 K11 ["ActionSubText"]
     1317 GETTABLEKS                       R44 R44 K250 ["SpacingTop"]
     1319 CALL                             R42 2 1
     1320 SETTABLEKS                       R42 R41 K245 ["PaddingBottom"]
     1322 CALL                             R39 2 1
     1323 JUMP                             ; [+4]
     1324 GETTABLEKS                       R39 R3 K12 ["ButtonArea"]
     1326 GETTABLEKS                       R39 R39 K55 ["Padding"]
     1328 CALL                             R37 2 1
     1329 SETTABLEKS                       R37 R36 K55 ["Padding"]
     1331 GETUPVAL                         R37 4
     1332 GETTABLEKS                       R37 R37 K72 ["createElement"]
     1334 LOADK                            R38 K90 ["UIListLayout"]
     1335 DUPTABLE                         R39 K251 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
     1336 GETIMPORT                        R40 K128 [Enum.FillDirection.Horizontal]
     1338 SETTABLEKS                       R40 R39 K126 ["FillDirection"]
     1340 GETIMPORT                        R40 K153 [Enum.HorizontalAlignment.Left]
     1342 SETTABLEKS                       R40 R39 K144 ["HorizontalAlignment"]
     1344 GETIMPORT                        R40 K131 [Enum.VerticalAlignment.Center]
     1346 SETTABLEKS                       R40 R39 K118 ["VerticalAlignment"]
     1348 GETIMPORT                        R40 K95 [Enum.SortOrder.LayoutOrder]
     1350 SETTABLEKS                       R40 R39 K91 ["SortOrder"]
     1352 GETTABLEKS                       R40 R3 K12 ["ButtonArea"]
     1354 GETTABLEKS                       R40 R40 K19 ["ElementPadding"]
     1356 SETTABLEKS                       R40 R39 K55 ["Padding"]
     1358 CALL                             R37 2 1
     1359 SETTABLEKS                       R37 R36 K87 ["Layout"]
     1361 GETUPVAL                         R37 4
     1362 GETTABLEKS                       R37 R37 K72 ["createElement"]
     1364 GETUPVAL                         R38 25
     1365 DUPTABLE                         R39 K252 [{"LayoutOrder", "OnClick", "Size", "Style"}]
     1366 LOADN                            R40 1
     1367 SETTABLEKS                       R40 R39 K94 ["LayoutOrder"]
     1369 GETTABLEKS                       R40 R1 K253 ["OnClickContext"]
     1371 SETTABLEKS                       R40 R39 K75 ["OnClick"]
     1373 GETTABLEKS                       R40 R3 K12 ["ButtonArea"]
     1375 GETTABLEKS                       R40 R40 K254 ["Context"]
     1377 GETTABLEKS                       R40 R40 K6 ["Size"]
     1379 SETTABLEKS                       R40 R39 K6 ["Size"]
     1381 GETTABLEKS                       R40 R3 K12 ["ButtonArea"]
     1383 GETTABLEKS                       R40 R40 K254 ["Context"]
     1385 SETTABLEKS                       R40 R39 K77 ["Style"]
     1387 GETUPVAL                         R41 20
     1388 JUMPIFNOT                        R41 ; [+10]
     1389 GETUPVAL                         R40 4
     1390 GETTABLEKS                       R40 R40 K72 ["createElement"]
     1392 GETUPVAL                         R41 15
     1393 DUPTABLE                         R42 K171 [{"Cursor"}]
     1394 LOADK                            R43 K172 ["PointingHand"]
     1395 SETTABLEKS                       R43 R42 K170 ["Cursor"]
     1397 CALL                             R40 2 1
     1398 JUMP                             ; [+13]
     1399 NEWTABLE                         R40 0 1
     1401 GETUPVAL                         R41 4
     1402 GETTABLEKS                       R41 R41 K72 ["createElement"]
     1404 GETUPVAL                         R42 15
     1405 DUPTABLE                         R43 K171 [{"Cursor"}]
     1406 LOADK                            R44 K172 ["PointingHand"]
     1407 SETTABLEKS                       R44 R43 K170 ["Cursor"]
     1409 CALL                             R41 2 -1
     1410 SETLIST                          R40 R41 -1 [1]
     1412 CALL                             R37 3 1
     1413 SETTABLEKS                       R37 R36 K246 ["ContextButton"]
     1415 GETUPVAL                         R37 4
     1416 GETTABLEKS                       R37 R37 K72 ["createElement"]
     1418 GETUPVAL                         R38 25
     1419 DUPTABLE                         R39 K256 [{"LayoutOrder", "OnClick", "Text", "StyleModifier", "Style", "AnchorPoint", "Position", "Size"}]
     1420 LOADN                            R40 2
     1421 SETTABLEKS                       R40 R39 K94 ["LayoutOrder"]
     1423 GETTABLEKS                       R40 R0 K257 ["onClickActionButton"]
     1425 SETTABLEKS                       R40 R39 K75 ["OnClick"]
     1427 GETTABLEKS                       R40 R1 K258 ["ActionText"]
     1429 SETTABLEKS                       R40 R39 K140 ["Text"]
     1431 GETTABLEKS                       R41 R1 K259 ["ActionEnabled"]
     1433 JUMPIFNOTEQKB                    R41 FALSE ; [+5]
     1435 GETUPVAL                         R40 26
     1436 GETTABLEKS                       R40 R40 K260 ["Disabled"]
     1438 JUMPIF                           R40 ; [+1]
     1439 LOADNIL                          R40
     1440 SETTABLEKS                       R40 R39 K255 ["StyleModifier"]
     1442 GETTABLEKS                       R41 R1 K261 ["ShowRobuxIcon"]
     1444 JUMPIFNOT                        R41 ; [+5]
     1445 GETTABLEKS                       R40 R3 K12 ["ButtonArea"]
     1447 GETTABLEKS                       R40 R40 K262 ["ActionBuy"]
     1449 JUMPIF                           R40 ; [+4]
     1450 GETTABLEKS                       R40 R3 K12 ["ButtonArea"]
     1452 GETTABLEKS                       R40 R40 K263 ["Action"]
     1454 SETTABLEKS                       R40 R39 K77 ["Style"]
     1456 GETIMPORT                        R40 K16 [Vector2.new]
     1458 LOADN                            R41 1
     1459 LOADN                            R42 0
     1460 CALL                             R40 2 1
     1461 SETTABLEKS                       R40 R39 K3 ["AnchorPoint"]
     1463 GETIMPORT                        R40 K9 [UDim2.new]
     1465 LOADN                            R41 1
     1466 LOADN                            R42 0
     1467 LOADN                            R43 0
     1468 LOADN                            R44 0
     1469 CALL                             R40 4 1
     1470 SETTABLEKS                       R40 R39 K4 ["Position"]
     1472 GETIMPORT                        R40 K9 [UDim2.new]
     1474 LOADN                            R41 1
     1475 GETTABLEKS                       R44 R3 K12 ["ButtonArea"]
     1477 GETTABLEKS                       R44 R44 K254 ["Context"]
     1479 GETTABLEKS                       R44 R44 K6 ["Size"]
     1481 GETTABLEKS                       R44 R44 K20 ["X"]
     1483 GETTABLEKS                       R44 R44 K22 ["Offset"]
     1485 MINUS                            R43 R44
     1486 GETTABLEKS                       R44 R3 K12 ["ButtonArea"]
     1488 GETTABLEKS                       R44 R44 K19 ["ElementPadding"]
     1490 GETTABLEKS                       R44 R44 K22 ["Offset"]
     1492 SUB                              R42 R43 R44
     1493 LOADN                            R43 0
     1494 GETTABLEKS                       R44 R3 K12 ["ButtonArea"]
     1496 GETTABLEKS                       R44 R44 K264 ["ActionButtonHeight"]
     1498 CALL                             R40 4 1
     1499 SETTABLEKS                       R40 R39 K6 ["Size"]
     1501 GETUPVAL                         R41 20
     1502 JUMPIFNOT                        R41 ; [+10]
     1503 GETUPVAL                         R40 4
     1504 GETTABLEKS                       R40 R40 K72 ["createElement"]
     1506 GETUPVAL                         R41 15
     1507 DUPTABLE                         R42 K171 [{"Cursor"}]
     1508 LOADK                            R43 K172 ["PointingHand"]
     1509 SETTABLEKS                       R43 R42 K170 ["Cursor"]
     1511 CALL                             R40 2 1
     1512 JUMP                             ; [+13]
     1513 NEWTABLE                         R40 0 1
     1515 GETUPVAL                         R41 4
     1516 GETTABLEKS                       R41 R41 K72 ["createElement"]
     1518 GETUPVAL                         R42 15
     1519 DUPTABLE                         R43 K171 [{"Cursor"}]
     1520 LOADK                            R44 K172 ["PointingHand"]
     1521 SETTABLEKS                       R44 R43 K170 ["Cursor"]
     1523 CALL                             R41 2 -1
     1524 SETLIST                          R40 R41 -1 [1]
     1526 CALL                             R37 3 1
     1527 SETTABLEKS                       R37 R36 K247 ["ActionButton"]
     1529 CALL                             R33 3 1
     1530 SETTABLEKS                       R33 R32 K12 ["ButtonArea"]
     1532 GETTABLEKS                       R34 R1 K11 ["ActionSubText"]
     1534 JUMPIFNOT                        R34 ; [+90]
     1535 GETUPVAL                         R33 4
     1536 GETTABLEKS                       R33 R33 K72 ["createElement"]
     1538 GETUPVAL                         R34 5
     1539 DUPTABLE                         R35 K233 [{"AutomaticSize", "LayoutOrder", "Padding", "Size"}]
     1540 GETIMPORT                        R36 K120 [Enum.AutomaticSize.Y]
     1542 SETTABLEKS                       R36 R35 K117 ["AutomaticSize"]
     1544 LOADN                            R36 3
     1545 SETTABLEKS                       R36 R35 K94 ["LayoutOrder"]
     1547 DUPTABLE                         R36 K265 [{"Left", "Right", "Bottom"}]
     1548 GETTABLEKS                       R37 R3 K18 ["ScrollingFrame"]
     1550 GETTABLEKS                       R37 R37 K19 ["ElementPadding"]
     1552 SETTABLEKS                       R37 R36 K122 ["Left"]
     1554 GETTABLEKS                       R37 R3 K18 ["ScrollingFrame"]
     1556 GETTABLEKS                       R37 R37 K19 ["ElementPadding"]
     1558 SETTABLEKS                       R37 R36 K123 ["Right"]
     1560 GETTABLEKS                       R37 R3 K18 ["ScrollingFrame"]
     1562 GETTABLEKS                       R37 R37 K19 ["ElementPadding"]
     1564 SETTABLEKS                       R37 R36 K121 ["Bottom"]
     1566 SETTABLEKS                       R36 R35 K55 ["Padding"]
     1568 GETIMPORT                        R36 K9 [UDim2.new]
     1570 LOADN                            R37 1
     1571 LOADN                            R38 0
     1572 LOADN                            R39 0
     1573 GETTABLEKS                       R40 R9 K21 ["Y"]
     1575 CALL                             R36 4 1
     1576 SETTABLEKS                       R36 R35 K6 ["Size"]
     1578 DUPTABLE                         R36 K266 [{"ActionSubText"}]
     1579 GETUPVAL                         R37 4
     1580 GETTABLEKS                       R37 R37 K72 ["createElement"]
     1582 GETUPVAL                         R38 10
     1583 DUPTABLE                         R39 K268 [{"AutomaticSize", "Size", "Text", "TextColor", "TextSize", "TextWrapped"}]
     1584 GETIMPORT                        R40 K120 [Enum.AutomaticSize.Y]
     1586 SETTABLEKS                       R40 R39 K117 ["AutomaticSize"]
     1588 GETIMPORT                        R40 K9 [UDim2.new]
     1590 LOADN                            R41 1
     1591 LOADN                            R42 0
     1592 LOADN                            R43 0
     1593 LOADN                            R44 0
     1594 CALL                             R40 4 1
     1595 SETTABLEKS                       R40 R39 K6 ["Size"]
     1597 GETTABLEKS                       R40 R1 K11 ["ActionSubText"]
     1599 SETTABLEKS                       R40 R39 K140 ["Text"]
     1601 GETTABLEKS                       R40 R3 K12 ["ButtonArea"]
     1603 GETTABLEKS                       R40 R40 K11 ["ActionSubText"]
     1605 GETTABLEKS                       R40 R40 K267 ["TextColor"]
     1607 SETTABLEKS                       R40 R39 K267 ["TextColor"]
     1609 GETTABLEKS                       R40 R3 K12 ["ButtonArea"]
     1611 GETTABLEKS                       R40 R40 K11 ["ActionSubText"]
     1613 GETTABLEKS                       R40 R40 K13 ["TextSize"]
     1615 SETTABLEKS                       R40 R39 K13 ["TextSize"]
     1617 LOADB                            R40 1
     1618 SETTABLEKS                       R40 R39 K141 ["TextWrapped"]
     1620 CALL                             R37 2 1
     1621 SETTABLEKS                       R37 R36 K11 ["ActionSubText"]
     1623 CALL                             R33 3 1
     1624 JUMP                             ; [+1]
     1625 LOADNIL                          R33
     1626 SETTABLEKS                       R33 R32 K88 ["ActionSubTextArea"]
     1628 CALL                             R29 3 1
     1629 SETTABLEKS                       R29 R28 K84 ["Contents"]
     1631 CALL                             R25 3 -1
     1632 RETURN                           R25 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TextService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["GuiService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["UI"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETTABLEKS                       R2 R2 K9 ["Parent"]
       21 GETIMPORT                        R3 K11 [require]
       23 GETTABLEKS                       R4 R2 K9 ["Parent"]
       25 GETTABLEKS                       R4 R4 K12 ["Roact"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K11 [require]
       30 GETTABLEKS                       R5 R2 K7 ["UI"]
       32 GETTABLEKS                       R5 R5 K13 ["ContextServices"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K14 ["withContext"]
       37 GETIMPORT                        R6 K11 [require]
       39 GETTABLEKS                       R7 R2 K15 ["Resources"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R7 R6 K16 ["LOCALIZATION_PROJECT_NAME"]
       44 GETIMPORT                        R8 K11 [require]
       46 GETTABLEKS                       R9 R2 K9 ["Parent"]
       48 GETTABLEKS                       R9 R9 K17 ["Cryo"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K11 [require]
       53 GETTABLEKS                       R10 R2 K18 ["Util"]
       55 GETTABLEKS                       R10 R10 K19 ["GetTextSize"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K11 [require]
       60 GETTABLEKS                       R11 R2 K18 ["Util"]
       62 GETTABLEKS                       R11 R11 K20 ["LayoutOrderIterator"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K11 [require]
       67 GETTABLEKS                       R12 R2 K18 ["Util"]
       69 GETTABLEKS                       R12 R12 K21 ["StyleModifier"]
       71 CALL                             R11 1 1
       72 GETIMPORT                        R12 K11 [require]
       74 GETTABLEKS                       R13 R2 K18 ["Util"]
       76 GETTABLEKS                       R13 R13 K22 ["formatLocalDateTime"]
       78 CALL                             R12 1 1
       79 GETIMPORT                        R13 K11 [require]
       81 GETTABLEKS                       R14 R2 K23 ["RobloxAPI"]
       83 GETTABLEKS                       R14 R14 K24 ["Url"]
       85 CALL                             R13 1 1
       86 GETIMPORT                        R14 K11 [require]
       88 GETTABLEKS                       R15 R2 K25 ["Wrappers"]
       90 GETTABLEKS                       R15 R15 K26 ["withAbsoluteSize"]
       92 CALL                             R14 1 1
       93 GETIMPORT                        R15 K11 [require]
       95 GETTABLEKS                       R16 R2 K9 ["Parent"]
       97 GETTABLEKS                       R16 R16 K27 ["Dash"]
       99 CALL                             R15 1 1
      100 GETTABLEKS                       R16 R15 K28 ["join"]
      102 GETIMPORT                        R17 K11 [require]
      104 GETIMPORT                        R18 K6 [script]
      106 GETTABLEKS                       R18 R18 K9 ["Parent"]
      108 GETTABLEKS                       R18 R18 K29 ["AssetRender"]
      110 CALL                             R17 1 1
      111 GETIMPORT                        R18 K11 [require]
      113 GETIMPORT                        R19 K6 [script]
      115 GETTABLEKS                       R19 R19 K9 ["Parent"]
      117 GETTABLEKS                       R19 R19 K30 ["AssetPreviewDetails"]
      119 CALL                             R18 1 1
      120 GETIMPORT                        R19 K11 [require]
      122 GETTABLEKS                       R20 R2 K7 ["UI"]
      124 GETTABLEKS                       R20 R20 K31 ["Components"]
      126 GETTABLEKS                       R20 R20 K32 ["DEPRECATED_Button"]
      128 CALL                             R19 1 1
      129 GETIMPORT                        R20 K11 [require]
      131 GETTABLEKS                       R21 R2 K7 ["UI"]
      133 GETTABLEKS                       R21 R21 K31 ["Components"]
      135 GETTABLEKS                       R21 R21 K33 ["Container"]
      137 CALL                             R20 1 1
      138 GETIMPORT                        R21 K11 [require]
      140 GETTABLEKS                       R22 R2 K7 ["UI"]
      142 GETTABLEKS                       R22 R22 K31 ["Components"]
      144 GETTABLEKS                       R22 R22 K34 ["HoverArea"]
      146 CALL                             R21 1 1
      147 GETIMPORT                        R22 K11 [require]
      149 GETTABLEKS                       R23 R2 K7 ["UI"]
      151 GETTABLEKS                       R23 R23 K31 ["Components"]
      153 GETTABLEKS                       R23 R23 K35 ["Image"]
      155 CALL                             R22 1 1
      156 GETIMPORT                        R23 K11 [require]
      158 GETTABLEKS                       R24 R2 K7 ["UI"]
      160 GETTABLEKS                       R24 R24 K31 ["Components"]
      162 GETTABLEKS                       R24 R24 K36 ["LinkText"]
      164 CALL                             R23 1 1
      165 GETIMPORT                        R24 K11 [require]
      167 GETTABLEKS                       R25 R2 K7 ["UI"]
      169 GETTABLEKS                       R25 R25 K31 ["Components"]
      171 GETTABLEKS                       R25 R25 K37 ["Pane"]
      173 CALL                             R24 1 1
      174 GETIMPORT                        R25 K11 [require]
      176 GETTABLEKS                       R26 R2 K7 ["UI"]
      178 GETTABLEKS                       R26 R26 K31 ["Components"]
      180 GETTABLEKS                       R26 R26 K38 ["TextLabelWithRobloxLinks"]
      182 CALL                             R25 1 1
      183 GETIMPORT                        R26 K11 [require]
      185 GETTABLEKS                       R27 R2 K7 ["UI"]
      187 GETTABLEKS                       R27 R27 K31 ["Components"]
      189 GETTABLEKS                       R27 R27 K39 ["ScrollingFrame"]
      191 CALL                             R26 1 1
      192 GETIMPORT                        R27 K11 [require]
      194 GETTABLEKS                       R28 R2 K7 ["UI"]
      196 GETTABLEKS                       R28 R28 K31 ["Components"]
      198 GETTABLEKS                       R28 R28 K40 ["Separator"]
      200 CALL                             R27 1 1
      201 GETIMPORT                        R28 K11 [require]
      203 GETTABLEKS                       R29 R2 K7 ["UI"]
      205 GETTABLEKS                       R29 R29 K31 ["Components"]
      207 GETTABLEKS                       R29 R29 K41 ["TextLabel"]
      209 CALL                             R28 1 1
      210 GETIMPORT                        R29 K11 [require]
      212 GETTABLEKS                       R30 R2 K7 ["UI"]
      214 GETTABLEKS                       R30 R30 K31 ["Components"]
      216 GETTABLEKS                       R30 R30 K42 ["Tooltip"]
      218 CALL                             R29 1 1
      219 GETIMPORT                        R30 K11 [require]
      221 GETTABLEKS                       R31 R2 K7 ["UI"]
      223 GETTABLEKS                       R31 R31 K31 ["Components"]
      225 GETTABLEKS                       R31 R31 K43 ["TextWithLinks"]
      227 CALL                             R30 1 1
      228 GETIMPORT                        R31 K11 [require]
      230 GETTABLEKS                       R32 R2 K44 ["SharedFlags"]
      232 GETTABLEKS                       R32 R32 K45 ["getFFlagDFVideoStudioPreviewPermissionFix"]
      234 CALL                             R31 1 1
      235 GETIMPORT                        R32 K11 [require]
      237 GETTABLEKS                       R33 R2 K44 ["SharedFlags"]
      239 GETTABLEKS                       R33 R33 K46 ["getFFlagDevFrameworkFixMissingKeyErrors"]
      241 CALL                             R32 1 1
      242 CALL                             R32 0 1
      243 GETIMPORT                        R33 K11 [require]
      245 GETTABLEKS                       R34 R2 K44 ["SharedFlags"]
      247 GETTABLEKS                       R34 R34 K47 ["getFFlagAssetPreviewHide3DPreview"]
      249 CALL                             R33 1 1
      250 GETTABLEKS                       R34 R3 K48 ["PureComponent"]
      252 LOADK                            R36 K49 ["AssetPreview"]
      253 NAMECALL                         R34 R34 K50 ["extend"]
      255 CALL                             R34 2 1
      256 DUPCLOSURE                       R35 K51 [PROTO_12]
      257 CAPTURE                          VAL R3
      258 SETTABLEKS                       R35 R34 K52 ["init"]
      260 DUPCLOSURE                       R35 K53 [PROTO_14]
      261 CAPTURE                          VAL R12
      262 SETTABLEKS                       R35 R34 K54 ["formatLocalDateTimeForAsset"]
      264 DUPCLOSURE                       R35 K55 [PROTO_17]
      265 CAPTURE                          VAL R31
      266 CAPTURE                          VAL R7
      267 SETTABLEKS                       R35 R34 K56 ["updateAssetInfoRows"]
      269 DUPCLOSURE                       R35 K57 [PROTO_18]
      270 SETTABLEKS                       R35 R34 K58 ["didMount"]
      272 DUPCLOSURE                       R35 K59 [PROTO_19]
      273 SETTABLEKS                       R35 R34 K60 ["willUnmount"]
      275 DUPCLOSURE                       R35 K61 [PROTO_20]
      276 CAPTURE                          VAL R3
      277 SETTABLEKS                       R35 R34 K62 ["didUpdate"]
      279 DUPCLOSURE                       R35 K63 [PROTO_22]
      280 CAPTURE                          VAL R8
      281 CAPTURE                          VAL R0
      282 CAPTURE                          VAL R3
      283 CAPTURE                          VAL R23
      284 CAPTURE                          VAL R28
      285 CAPTURE                          VAL R20
      286 CAPTURE                          VAL R27
      287 DUPCLOSURE                       R36 K64 [PROTO_27]
      288 CAPTURE                          VAL R9
      289 CAPTURE                          VAL R8
      290 CAPTURE                          VAL R7
      291 CAPTURE                          VAL R10
      292 CAPTURE                          VAL R3
      293 CAPTURE                          VAL R24
      294 CAPTURE                          VAL R16
      295 CAPTURE                          VAL R22
      296 CAPTURE                          VAL R20
      297 CAPTURE                          VAL R26
      298 CAPTURE                          VAL R28
      299 CAPTURE                          VAL R30
      300 CAPTURE                          VAL R1
      301 CAPTURE                          VAL R13
      302 CAPTURE                          VAL R29
      303 CAPTURE                          VAL R21
      304 CAPTURE                          VAL R17
      305 CAPTURE                          VAL R33
      306 CAPTURE                          VAL R18
      307 CAPTURE                          VAL R25
      308 CAPTURE                          VAL R32
      309 CAPTURE                          VAL R0
      310 CAPTURE                          VAL R23
      311 CAPTURE                          VAL R27
      312 CAPTURE                          VAL R35
      313 CAPTURE                          VAL R19
      314 CAPTURE                          VAL R11
      315 SETTABLEKS                       R36 R34 K65 ["render"]
      317 MOVE                             R36 R5
      318 DUPTABLE                         R37 K69 [{"Analytics", "Localization", "Stylizer"}]
      319 GETTABLEKS                       R38 R4 K66 ["Analytics"]
      321 SETTABLEKS                       R38 R37 K66 ["Analytics"]
      323 GETTABLEKS                       R38 R4 K67 ["Localization"]
      325 SETTABLEKS                       R38 R37 K67 ["Localization"]
      327 GETTABLEKS                       R38 R4 K68 ["Stylizer"]
      329 SETTABLEKS                       R38 R37 K68 ["Stylizer"]
      331 CALL                             R36 1 1
      332 MOVE                             R37 R34
      333 CALL                             R36 1 1
      334 MOVE                             R34 R36
      335 MOVE                             R36 R14
      336 MOVE                             R37 R34
      337 CALL                             R36 1 -1
      338 RETURN                           R36 -1
