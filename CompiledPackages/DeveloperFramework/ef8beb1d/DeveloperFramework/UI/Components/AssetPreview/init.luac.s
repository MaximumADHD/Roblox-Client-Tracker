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
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

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
       12 DUPTABLE                         R1 K6 [{["scrollingEnabled"] = True, ["absoluteContentSize"]}]
       13 GETIMPORT                        R2 K9 [Vector2.new]
       15 LOADN                            R3 0
       16 LOADN                            R4 0
       17 CALL                             R2 2 1
       18 SETTABLEKS                       R2 R1 K5 ["absoluteContentSize"]
       20 SETTABLEKS                       R1 R0 K10 ["state"]
       22 NEWCLOSURE                       R1 P0
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R1 R0 K11 ["onClickCreatorLink"]
       26 NEWCLOSURE                       R1 P1
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R1 R0 K12 ["onContentResize"]
       30 NEWCLOSURE                       R1 P2
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R1 R0 K13 ["onMouseEnterAssetRender"]
       34 NEWCLOSURE                       R1 P3
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R1 R0 K14 ["onMouseLeaveAssetRender"]
       38 NEWCLOSURE                       R1 P4
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R1 R0 K15 ["onClickActionButton"]
       42 NEWCLOSURE                       R1 P5
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R1 R0 K16 ["onPlaySound"]
       46 NEWCLOSURE                       R1 P6
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R1 R0 K17 ["onPauseSound"]
       50 NEWCLOSURE                       R1 P7
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R1 R0 K18 ["onPlayVideo"]
       54 NEWCLOSURE                       R1 P8
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R1 R0 K19 ["onPauseVideo"]
       58 NEWCLOSURE                       R1 P9
       59 CAPTURE                          VAL R0
       60 SETTABLEKS                       R1 R0 K20 ["onVoteUp"]
       62 NEWCLOSURE                       R1 P10
       63 CAPTURE                          VAL R0
       64 SETTABLEKS                       R1 R0 K21 ["onVoteDown"]
       66 NEWCLOSURE                       R1 P11
       67 CAPTURE                          VAL R0
       68 SETTABLEKS                       R1 R0 K22 ["resetCanvasPosition"]
       70 RETURN                           R0 0

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
      284 JUMPIFNOT                        R23 ; [+10]
      285 GETTABLEKS                       R24 R1 K30 ["Localization"]
      287 GETUPVAL                         R26 2
      288 LOADK                            R27 K40 ["AssetPreview"]
      289 LOADK                            R28 K64 ["ByUsernameWithContentAttribution"]
      290 DUPTABLE                         R29 K69 [{["username"] = "{username}", ["universeName"] = "{universeName}"}]
      291 NAMECALL                         R24 R24 K42 ["getProjectText"]
      293 CALL                             R24 5 1
      294 JUMP                             ; [+9]
      295 GETTABLEKS                       R24 R1 K30 ["Localization"]
      297 GETUPVAL                         R26 2
      298 LOADK                            R27 K40 ["AssetPreview"]
      299 LOADK                            R28 K70 ["ByUsernameWithoutContentAttribution"]
      300 DUPTABLE                         R29 K71 [{["username"] = "{username}"}]
      301 NAMECALL                         R24 R24 K42 ["getProjectText"]
      303 CALL                             R24 5 1
      304 GETUPVAL                         R25 4
      305 GETTABLEKS                       R25 R25 K72 ["createElement"]
      307 GETUPVAL                         R26 5
      308 GETUPVAL                         R27 6
      309 NEWTABLE                         R28 8 0
      311 LOADB                            R29 1
      312 SETTABLEKS                       R29 R28 K73 ["Active"]
      314 SETTABLEKS                       R4 R28 K3 ["AnchorPoint"]
      316 DUPCLOSURE                       R29 K74 [PROTO_23]
      317 SETTABLEKS                       R29 R28 K75 ["OnClick"]
      319 SETTABLEKS                       R5 R28 K4 ["Position"]
      321 SETTABLEKS                       R7 R28 K6 ["Size"]
      323 LOADK                            R29 K76 ["Box"]
      324 SETTABLEKS                       R29 R28 K77 ["Style"]
      326 SETTABLEKS                       R6 R28 K5 ["ZIndex"]
      328 GETUPVAL                         R29 4
      329 GETTABLEKS                       R29 R29 K78 ["Ref"]
      331 GETTABLEKS                       R30 R0 K79 ["containerRef"]
      333 SETTABLE                         R30 R28 R29
      334 GETTABLEKS                       R29 R1 K80 ["WrapperProps"]
      336 CALL                             R27 2 1
      337 DUPTABLE                         R28 K85 [{"CloseButton", "PurchaseFlow", "SuccessDialog", "Contents"}]
      338 GETUPVAL                         R29 4
      339 GETTABLEKS                       R29 R29 K72 ["createElement"]
      341 GETUPVAL                         R30 7
      342 DUPTABLE                         R31 K86 [{"Style"}]
      343 GETTABLEKS                       R32 R3 K81 ["CloseButton"]
      345 SETTABLEKS                       R32 R31 K77 ["Style"]
      347 CALL                             R29 2 1
      348 SETTABLEKS                       R29 R28 K81 ["CloseButton"]
      350 GETTABLEKS                       R29 R1 K82 ["PurchaseFlow"]
      352 SETTABLEKS                       R29 R28 K82 ["PurchaseFlow"]
      354 GETTABLEKS                       R29 R1 K83 ["SuccessDialog"]
      356 SETTABLEKS                       R29 R28 K83 ["SuccessDialog"]
      358 GETUPVAL                         R29 4
      359 GETTABLEKS                       R29 R29 K72 ["createElement"]
      361 GETUPVAL                         R30 8
      362 NEWTABLE                         R31 0 0
      364 DUPTABLE                         R32 K89 [{"Layout", "ScrollingFrame", "ButtonArea", "ActionSubTextArea"}]
      365 GETUPVAL                         R33 4
      366 GETTABLEKS                       R33 R33 K72 ["createElement"]
      368 LOADK                            R34 K90 ["UIListLayout"]
      369 DUPTABLE                         R35 K92 [{"SortOrder"}]
      370 GETIMPORT                        R36 K95 [Enum.SortOrder.LayoutOrder]
      372 SETTABLEKS                       R36 R35 K91 ["SortOrder"]
      374 CALL                             R33 2 1
      375 SETTABLEKS                       R33 R32 K87 ["Layout"]
      377 GETUPVAL                         R33 4
      378 GETTABLEKS                       R33 R33 K72 ["createElement"]
      380 GETUPVAL                         R34 9
      381 NEWTABLE                         R35 8 0
      383 LOADN                            R36 1
      384 SETTABLEKS                       R36 R35 K94 ["LayoutOrder"]
      386 LOADB                            R36 1
      387 SETTABLEKS                       R36 R35 K96 ["AutoSizeCanvas"]
      389 DUPTABLE                         R36 K97 [{"SortOrder", "Padding"}]
      390 GETIMPORT                        R37 K95 [Enum.SortOrder.LayoutOrder]
      392 SETTABLEKS                       R37 R36 K91 ["SortOrder"]
      394 GETIMPORT                        R37 K24 [UDim.new]
      396 LOADN                            R38 0
      397 GETTABLEKS                       R39 R3 K18 ["ScrollingFrame"]
      399 GETTABLEKS                       R39 R39 K19 ["ElementPadding"]
      401 CALL                             R37 2 1
      402 SETTABLEKS                       R37 R36 K55 ["Padding"]
      404 SETTABLEKS                       R36 R35 K98 ["AutoSizeLayoutOptions"]
      406 GETTABLEKS                       R36 R0 K99 ["onContentResize"]
      408 SETTABLEKS                       R36 R35 K100 ["OnCanvasResize"]
      410 GETIMPORT                        R36 K9 [UDim2.new]
      412 GETIMPORT                        R37 K24 [UDim.new]
      414 LOADN                            R38 1
      415 LOADN                            R39 0
      416 CALL                             R37 2 1
      417 GETIMPORT                        R40 K24 [UDim.new]
      419 LOADN                            R41 1
      420 LOADN                            R42 0
      421 CALL                             R40 2 1
      422 GETTABLEKS                       R41 R3 K12 ["ButtonArea"]
      424 GETTABLEKS                       R41 R41 K6 ["Size"]
      426 GETTABLEKS                       R41 R41 K101 ["Height"]
      428 SUB                              R39 R40 R41
      429 GETIMPORT                        R40 K24 [UDim.new]
      431 LOADN                            R41 0
      432 GETTABLEKS                       R42 R9 K21 ["Y"]
      434 CALL                             R40 2 1
      435 SUB                              R38 R39 R40
      436 CALL                             R36 2 1
      437 SETTABLEKS                       R36 R35 K6 ["Size"]
      439 GETTABLEKS                       R36 R2 K102 ["scrollingEnabled"]
      441 SETTABLEKS                       R36 R35 K103 ["ScrollingEnabled"]
      443 GETUPVAL                         R36 4
      444 GETTABLEKS                       R36 R36 K78 ["Ref"]
      446 GETTABLEKS                       R37 R0 K104 ["scrollingRef"]
      448 SETTABLE                         R37 R35 R36
      449 DUPTABLE                         R36 K115 [{"Padding", "AssetNameHeader", "AssetRender", "AssetPreviewDetails", "AssetDescription", "CodeSummaryContainer", "InfoRows", "Suggestions", "FooterSeparator", "Footer", "BottomSpacer"}]
      450 GETUPVAL                         R37 4
      451 GETTABLEKS                       R37 R37 K72 ["createElement"]
      453 LOADK                            R38 K116 ["UIPadding"]
      454 MOVE                             R39 R18
      455 CALL                             R37 2 1
      456 SETTABLEKS                       R37 R36 K55 ["Padding"]
      458 GETUPVAL                         R37 4
      459 GETTABLEKS                       R37 R37 K72 ["createElement"]
      461 GETUPVAL                         R38 5
      462 DUPTABLE                         R39 K119 [{"AutomaticSize", "Padding", "Size", "Spacing", "Layout", "LayoutOrder", "VerticalAlignment"}]
      463 GETIMPORT                        R40 K120 [Enum.AutomaticSize.Y]
      465 SETTABLEKS                       R40 R39 K117 ["AutomaticSize"]
      467 DUPTABLE                         R40 K126 [{["Bottom"] = 5, ["Left"] = 5, ["Right"] = 0, ["Top"] = 5}]
      468 SETTABLEKS                       R40 R39 K55 ["Padding"]
      470 GETIMPORT                        R40 K9 [UDim2.new]
      472 LOADN                            R41 1
      473 LOADN                            R42 0
      474 LOADN                            R43 0
      475 LOADN                            R44 0
      476 CALL                             R40 4 1
      477 SETTABLEKS                       R40 R39 K6 ["Size"]
      479 SETTABLEKS                       R22 R39 K61 ["Spacing"]
      481 GETIMPORT                        R40 K129 [Enum.FillDirection.Horizontal]
      483 SETTABLEKS                       R40 R39 K87 ["Layout"]
      485 NAMECALL                         R40 R17 K130 ["getNextOrder"]
      487 CALL                             R40 1 1
      488 SETTABLEKS                       R40 R39 K94 ["LayoutOrder"]
      490 GETIMPORT                        R40 K132 [Enum.VerticalAlignment.Center]
      492 SETTABLEKS                       R40 R39 K118 ["VerticalAlignment"]
      494 DUPTABLE                         R40 K134 [{"AssetNameContainer", "FlagAsset"}]
      495 GETUPVAL                         R41 4
      496 GETTABLEKS                       R41 R41 K72 ["createElement"]
      498 GETUPVAL                         R42 5
      499 DUPTABLE                         R43 K136 [{["AutomaticSize"], ["Size"], ["LayoutOrder"] = 1, ["Layout"]}]
      500 GETIMPORT                        R44 K120 [Enum.AutomaticSize.Y]
      502 SETTABLEKS                       R44 R43 K117 ["AutomaticSize"]
      504 GETIMPORT                        R44 K9 [UDim2.new]
      506 LOADN                            R45 1
      507 MINUS                            R47 R21
      508 SUB                              R46 R47 R22
      509 LOADN                            R47 0
      510 LOADN                            R48 0
      511 CALL                             R44 4 1
      512 SETTABLEKS                       R44 R43 K6 ["Size"]
      514 GETIMPORT                        R44 K138 [Enum.FillDirection.Vertical]
      516 SETTABLEKS                       R44 R43 K87 ["Layout"]
      518 DUPTABLE                         R44 K141 [{"AssetName", "CreatorName"}]
      519 GETUPVAL                         R45 4
      520 GETTABLEKS                       R45 R45 K72 ["createElement"]
      522 GETUPVAL                         R46 10
      523 DUPTABLE                         R47 K145 [{["AutomaticSize"], ["LayoutOrder"] = 1, ["Size"], ["Style"], ["Text"], ["TextWrapped"] = True}]
      524 GETIMPORT                        R48 K120 [Enum.AutomaticSize.Y]
      526 SETTABLEKS                       R48 R47 K117 ["AutomaticSize"]
      528 GETIMPORT                        R48 K9 [UDim2.new]
      530 LOADN                            R49 1
      531 LOADN                            R50 0
      532 LOADN                            R51 0
      533 LOADN                            R52 0
      534 CALL                             R48 4 1
      535 SETTABLEKS                       R48 R47 K6 ["Size"]
      537 GETTABLEKS                       R48 R3 K18 ["ScrollingFrame"]
      539 GETTABLEKS                       R48 R48 K139 ["AssetName"]
      541 SETTABLEKS                       R48 R47 K77 ["Style"]
      543 GETTABLEKS                       R48 R10 K26 ["Asset"]
      545 GETTABLEKS                       R48 R48 K43 ["Name"]
      547 SETTABLEKS                       R48 R47 K142 ["Text"]
      549 CALL                             R45 2 1
      550 SETTABLEKS                       R45 R44 K139 ["AssetName"]
      552 GETUPVAL                         R45 4
      553 GETTABLEKS                       R45 R45 K72 ["createElement"]
      555 GETUPVAL                         R46 11
      556 DUPTABLE                         R47 K149 [{["TextProps"], ["AutomaticSize"], ["HorizontalAlignment"], ["Text"], ["LinkMap"], ["LayoutOrder"] = 2, ["Size"]}]
      557 DUPTABLE                         R48 K153 [{["Font"], ["TextSize"] = 18, ["TextXAlignment"]}]
      558 GETIMPORT                        R49 K155 [Enum.Font.SourceSans]
      560 SETTABLEKS                       R49 R48 K150 ["Font"]
      562 GETIMPORT                        R49 K156 [Enum.TextXAlignment.Left]
      564 SETTABLEKS                       R49 R48 K152 ["TextXAlignment"]
      566 SETTABLEKS                       R48 R47 K146 ["TextProps"]
      568 GETIMPORT                        R48 K120 [Enum.AutomaticSize.Y]
      570 SETTABLEKS                       R48 R47 K117 ["AutomaticSize"]
      572 GETIMPORT                        R48 K157 [Enum.HorizontalAlignment.Left]
      574 SETTABLEKS                       R48 R47 K147 ["HorizontalAlignment"]
      576 SETTABLEKS                       R24 R47 K142 ["Text"]
      578 NEWTABLE                         R48 2 0
      580 DUPTABLE                         R49 K160 [{"LinkText", "LinkCallback"}]
      581 LOADK                            R51 K161 ["@"]
      582 GETTABLEKS                       R52 R10 K41 ["Creator"]
      584 GETTABLEKS                       R52 R52 K43 ["Name"]
      586 CONCAT                           R50 R51 R52
      587 SETTABLEKS                       R50 R49 K158 ["LinkText"]
      589 NEWCLOSURE                       R50 P1
      590 CAPTURE                          UPVAL U12
      591 CAPTURE                          UPVAL U13
      592 CAPTURE                          VAL R10
      593 SETTABLEKS                       R50 R49 K159 ["LinkCallback"]
      595 SETTABLEKS                       R49 R48 K66 ["{username}"]
      597 DUPTABLE                         R49 K160 [{"LinkText", "LinkCallback"}]
      598 GETTABLEKS                       R50 R1 K62 ["CreatingUniverseName"]
      600 SETTABLEKS                       R50 R49 K158 ["LinkText"]
      602 NEWCLOSURE                       R50 P2
      603 CAPTURE                          UPVAL U12
      604 CAPTURE                          UPVAL U13
      605 CAPTURE                          VAL R1
      606 SETTABLEKS                       R50 R49 K159 ["LinkCallback"]
      608 SETTABLEKS                       R49 R48 K68 ["{universeName}"]
      610 SETTABLEKS                       R48 R47 K148 ["LinkMap"]
      612 GETIMPORT                        R48 K9 [UDim2.new]
      614 LOADN                            R49 1
      615 LOADN                            R50 0
      616 LOADN                            R51 0
      617 LOADN                            R52 0
      618 CALL                             R48 4 1
      619 SETTABLEKS                       R48 R47 K6 ["Size"]
      621 CALL                             R45 2 1
      622 SETTABLEKS                       R45 R44 K140 ["CreatorName"]
      624 CALL                             R41 3 1
      625 SETTABLEKS                       R41 R40 K133 ["AssetNameContainer"]
      627 MOVE                             R41 R20
      628 JUMPIFNOT                        R41 ; [+78]
      629 GETUPVAL                         R41 4
      630 GETTABLEKS                       R41 R41 K72 ["createElement"]
      632 LOADK                            R42 K162 ["ImageButton"]
      633 NEWTABLE                         R43 8 0
      635 LOADN                            R44 1
      636 SETTABLEKS                       R44 R43 K163 ["BackgroundTransparency"]
      638 GETTABLEKS                       R44 R3 K18 ["ScrollingFrame"]
      640 GETTABLEKS                       R44 R44 K59 ["FlagAsset"]
      642 GETTABLEKS                       R44 R44 K164 ["Image"]
      644 SETTABLEKS                       R44 R43 K164 ["Image"]
      646 GETTABLEKS                       R44 R3 K18 ["ScrollingFrame"]
      648 GETTABLEKS                       R44 R44 K59 ["FlagAsset"]
      650 GETTABLEKS                       R44 R44 K165 ["ImageColor3"]
      652 SETTABLEKS                       R44 R43 K165 ["ImageColor3"]
      654 NAMECALL                         R44 R17 K130 ["getNextOrder"]
      656 CALL                             R44 1 1
      657 SETTABLEKS                       R44 R43 K94 ["LayoutOrder"]
      659 GETTABLEKS                       R44 R3 K18 ["ScrollingFrame"]
      661 GETTABLEKS                       R44 R44 K59 ["FlagAsset"]
      663 GETTABLEKS                       R44 R44 K6 ["Size"]
      665 SETTABLEKS                       R44 R43 K6 ["Size"]
      667 GETUPVAL                         R44 4
      668 GETTABLEKS                       R44 R44 K166 ["Event"]
      670 GETTABLEKS                       R44 R44 K167 ["Activated"]
      672 GETTABLEKS                       R45 R0 K0 ["props"]
      674 GETTABLEKS                       R45 R45 K168 ["OnClickReport"]
      676 SETTABLE                         R45 R43 R44
      677 DUPTABLE                         R44 K171 [{"Tooltip", "HoverArea"}]
      678 GETUPVAL                         R45 4
      679 GETTABLEKS                       R45 R45 K72 ["createElement"]
      681 GETUPVAL                         R46 14
      682 DUPTABLE                         R47 K172 [{"Text"}]
      683 GETTABLEKS                       R48 R0 K0 ["props"]
      685 GETTABLEKS                       R48 R48 K30 ["Localization"]
      687 GETUPVAL                         R50 2
      688 LOADK                            R51 K40 ["AssetPreview"]
      689 LOADK                            R52 K173 ["Report"]
      690 NAMECALL                         R48 R48 K42 ["getProjectText"]
      692 CALL                             R48 4 1
      693 SETTABLEKS                       R48 R47 K142 ["Text"]
      695 CALL                             R45 2 1
      696 SETTABLEKS                       R45 R44 K169 ["Tooltip"]
      698 GETUPVAL                         R45 4
      699 GETTABLEKS                       R45 R45 K72 ["createElement"]
      701 GETUPVAL                         R46 15
      702 DUPTABLE                         R47 K176 [{["Cursor"] = "PointingHand"}]
      703 CALL                             R45 2 1
      704 SETTABLEKS                       R45 R44 K170 ["HoverArea"]
      706 CALL                             R41 3 1
      707 SETTABLEKS                       R41 R40 K59 ["FlagAsset"]
      709 CALL                             R37 3 1
      710 SETTABLEKS                       R37 R36 K105 ["AssetNameHeader"]
      712 GETUPVAL                         R37 4
      713 GETTABLEKS                       R37 R37 K72 ["createElement"]
      715 GETUPVAL                         R38 16
      716 DUPTABLE                         R39 K194 [{"LayoutOrder", "Width", "Padding", "Margin", "AssetData", "AssetInstance", "ImageCarouselAutoAdvanceTimer", "OnImageCarouselImageChanged", "ImageCarouselTransparencyThreshold", "OnSetImageCarouselImages", "OnMouseEnter", "OnMouseLeave", "OnPlaySound", "OnPauseSound", "OnPlayVideo", "OnPauseVideo", "UsageContext", "UseImageCarousel", "ShouldMuteModelSounds", "Hide3DPreviewForAssetsWithMeshes"}]
      717 NAMECALL                         R40 R17 K130 ["getNextOrder"]
      719 CALL                             R40 1 1
      720 SETTABLEKS                       R40 R39 K94 ["LayoutOrder"]
      722 GETTABLEKS                       R42 R7 K20 ["X"]
      724 GETTABLEKS                       R42 R42 K22 ["Offset"]
      726 GETTABLEKS                       R43 R18 K56 ["PaddingLeft"]
      728 GETTABLEKS                       R43 R43 K22 ["Offset"]
      730 SUB                              R41 R42 R43
      731 GETTABLEKS                       R42 R18 K57 ["PaddingRight"]
      733 GETTABLEKS                       R42 R42 K22 ["Offset"]
      735 SUB                              R40 R41 R42
      736 SETTABLEKS                       R40 R39 K177 ["Width"]
      738 DUPTABLE                         R40 K196 [{["Right"] = 7, ["Top"] = 0, ["Bottom"] = 0, ["Left"] = 0}]
      739 SETTABLEKS                       R40 R39 K55 ["Padding"]
      741 GETTABLEKS                       R40 R3 K197 ["AssetRenderMargin"]
      743 SETTABLEKS                       R40 R39 K178 ["Margin"]
      745 SETTABLEKS                       R10 R39 K25 ["AssetData"]
      747 GETTABLEKS                       R40 R1 K179 ["AssetInstance"]
      749 SETTABLEKS                       R40 R39 K179 ["AssetInstance"]
      751 GETTABLEKS                       R40 R1 K180 ["ImageCarouselAutoAdvanceTimer"]
      753 SETTABLEKS                       R40 R39 K180 ["ImageCarouselAutoAdvanceTimer"]
      755 GETTABLEKS                       R40 R1 K181 ["OnImageCarouselImageChanged"]
      757 SETTABLEKS                       R40 R39 K181 ["OnImageCarouselImageChanged"]
      759 GETTABLEKS                       R40 R1 K182 ["ImageCarouselTransparencyThreshold"]
      761 SETTABLEKS                       R40 R39 K182 ["ImageCarouselTransparencyThreshold"]
      763 GETTABLEKS                       R40 R1 K183 ["OnSetImageCarouselImages"]
      765 SETTABLEKS                       R40 R39 K183 ["OnSetImageCarouselImages"]
      767 GETTABLEKS                       R40 R0 K198 ["onMouseEnterAssetRender"]
      769 SETTABLEKS                       R40 R39 K184 ["OnMouseEnter"]
      771 GETTABLEKS                       R40 R0 K199 ["onMouseLeaveAssetRender"]
      773 SETTABLEKS                       R40 R39 K185 ["OnMouseLeave"]
      775 GETTABLEKS                       R40 R0 K200 ["onPlaySound"]
      777 SETTABLEKS                       R40 R39 K186 ["OnPlaySound"]
      779 GETTABLEKS                       R40 R0 K201 ["onPauseSound"]
      781 SETTABLEKS                       R40 R39 K187 ["OnPauseSound"]
      783 GETTABLEKS                       R40 R0 K202 ["onPlayVideo"]
      785 SETTABLEKS                       R40 R39 K188 ["OnPlayVideo"]
      787 GETTABLEKS                       R40 R0 K203 ["onPauseVideo"]
      789 SETTABLEKS                       R40 R39 K189 ["OnPauseVideo"]
      791 GETTABLEKS                       R40 R1 K190 ["UsageContext"]
      793 SETTABLEKS                       R40 R39 K190 ["UsageContext"]
      795 GETTABLEKS                       R40 R1 K191 ["UseImageCarousel"]
      797 SETTABLEKS                       R40 R39 K191 ["UseImageCarousel"]
      799 GETTABLEKS                       R40 R1 K192 ["ShouldMuteModelSounds"]
      801 SETTABLEKS                       R40 R39 K192 ["ShouldMuteModelSounds"]
      803 GETTABLEKS                       R40 R1 K193 ["Hide3DPreviewForAssetsWithMeshes"]
      805 SETTABLEKS                       R40 R39 K193 ["Hide3DPreviewForAssetsWithMeshes"]
      807 CALL                             R37 2 1
      808 SETTABLEKS                       R37 R36 K106 ["AssetRender"]
      810 GETTABLEKS                       R38 R1 K204 ["Favorites"]
      812 JUMPIF                           R38 ; [+11]
      813 GETTABLEKS                       R38 R1 K205 ["IsPackage"]
      815 JUMPIF                           R38 ; [+8]
      816 GETTABLEKS                       R38 R10 K26 ["Asset"]
      818 GETTABLEKS                       R38 R38 K206 ["HasScripts"]
      820 JUMPIF                           R38 ; [+3]
      821 GETTABLEKS                       R38 R1 K207 ["Voting"]
      823 JUMPIFNOT                        R38 ; [+48]
      824 GETUPVAL                         R37 4
      825 GETTABLEKS                       R37 R37 K72 ["createElement"]
      827 GETUPVAL                         R38 17
      828 DUPTABLE                         R39 K212 [{"Favorites", "HasScripts", "IsPackage", "LastUpdatedDate", "LayoutOrder", "Voting", "OnVoteUp", "OnVoteDown", "IsUninstalledPlugin"}]
      829 GETTABLEKS                       R40 R1 K204 ["Favorites"]
      831 SETTABLEKS                       R40 R39 K204 ["Favorites"]
      833 GETTABLEKS                       R40 R10 K26 ["Asset"]
      835 GETTABLEKS                       R40 R40 K206 ["HasScripts"]
      837 SETTABLEKS                       R40 R39 K206 ["HasScripts"]
      839 GETTABLEKS                       R40 R1 K205 ["IsPackage"]
      841 SETTABLEKS                       R40 R39 K205 ["IsPackage"]
      843 GETTABLEKS                       R40 R10 K26 ["Asset"]
      845 GETTABLEKS                       R40 R40 K54 ["Updated"]
      847 SETTABLEKS                       R40 R39 K208 ["LastUpdatedDate"]
      849 NAMECALL                         R40 R17 K130 ["getNextOrder"]
      851 CALL                             R40 1 1
      852 SETTABLEKS                       R40 R39 K94 ["LayoutOrder"]
      854 GETTABLEKS                       R40 R1 K207 ["Voting"]
      856 SETTABLEKS                       R40 R39 K207 ["Voting"]
      858 GETTABLEKS                       R40 R0 K213 ["onVoteUp"]
      860 SETTABLEKS                       R40 R39 K209 ["OnVoteUp"]
      862 GETTABLEKS                       R40 R0 K214 ["onVoteDown"]
      864 SETTABLEKS                       R40 R39 K210 ["OnVoteDown"]
      866 GETTABLEKS                       R40 R1 K211 ["IsUninstalledPlugin"]
      868 SETTABLEKS                       R40 R39 K211 ["IsUninstalledPlugin"]
      870 CALL                             R37 2 1
      871 JUMP                             ; [+1]
      872 LOADNIL                          R37
      873 SETTABLEKS                       R37 R36 K107 ["AssetPreviewDetails"]
      875 GETUPVAL                         R37 4
      876 GETTABLEKS                       R37 R37 K72 ["createElement"]
      878 GETUPVAL                         R38 18
      879 DUPTABLE                         R39 K216 [{["AutomaticSize"], ["LayoutOrder"], ["OnClickLink"], ["Size"], ["Style"], ["Text"], ["TextWrapped"] = True}]
      880 GETIMPORT                        R40 K120 [Enum.AutomaticSize.Y]
      882 SETTABLEKS                       R40 R39 K117 ["AutomaticSize"]
      884 NAMECALL                         R40 R17 K130 ["getNextOrder"]
      886 CALL                             R40 1 1
      887 SETTABLEKS                       R40 R39 K94 ["LayoutOrder"]
      889 GETTABLEKS                       R40 R1 K217 ["OnClickDescriptionLink"]
      891 SETTABLEKS                       R40 R39 K215 ["OnClickLink"]
      893 GETIMPORT                        R40 K9 [UDim2.new]
      895 LOADN                            R41 1
      896 LOADN                            R42 0
      897 LOADN                            R43 0
      898 LOADN                            R44 0
      899 CALL                             R40 4 1
      900 SETTABLEKS                       R40 R39 K6 ["Size"]
      902 GETTABLEKS                       R40 R3 K18 ["ScrollingFrame"]
      904 GETTABLEKS                       R40 R40 K108 ["AssetDescription"]
      906 SETTABLEKS                       R40 R39 K77 ["Style"]
      908 SETTABLEKS                       R12 R39 K142 ["Text"]
      910 CALL                             R37 2 1
      911 SETTABLEKS                       R37 R36 K108 ["AssetDescription"]
      913 GETTABLEKS                       R38 R1 K218 ["CodeSummary"]
      915 JUMPIFNOT                        R38 ; [+124]
      916 GETUPVAL                         R37 4
      917 GETTABLEKS                       R37 R37 K72 ["createElement"]
      919 GETUPVAL                         R38 5
      920 DUPTABLE                         R39 K221 [{["AutomaticSize"], ["HorizontalAlignment"], ["BackgroundColor"], ["Layout"], ["LayoutOrder"], ["Padding"], ["Size"], ["Style"] = "CornerBox", ["Spacing"]}]
      921 GETIMPORT                        R40 K223 [Enum.AutomaticSize.XY]
      923 SETTABLEKS                       R40 R39 K117 ["AutomaticSize"]
      925 GETIMPORT                        R40 K157 [Enum.HorizontalAlignment.Left]
      927 SETTABLEKS                       R40 R39 K147 ["HorizontalAlignment"]
      929 GETTABLEKS                       R40 R14 K218 ["CodeSummary"]
      931 GETTABLEKS                       R40 R40 K219 ["BackgroundColor"]
      933 SETTABLEKS                       R40 R39 K219 ["BackgroundColor"]
      935 GETIMPORT                        R40 K138 [Enum.FillDirection.Vertical]
      937 SETTABLEKS                       R40 R39 K87 ["Layout"]
      939 NAMECALL                         R40 R17 K130 ["getNextOrder"]
      941 CALL                             R40 1 1
      942 SETTABLEKS                       R40 R39 K94 ["LayoutOrder"]
      944 GETTABLEKS                       R40 R14 K218 ["CodeSummary"]
      946 GETTABLEKS                       R40 R40 K55 ["Padding"]
      948 SETTABLEKS                       R40 R39 K55 ["Padding"]
      950 GETIMPORT                        R40 K225 [UDim2.fromScale]
      952 LOADN                            R41 1
      953 LOADN                            R42 0
      954 CALL                             R40 2 1
      955 SETTABLEKS                       R40 R39 K6 ["Size"]
      957 GETTABLEKS                       R40 R3 K18 ["ScrollingFrame"]
      959 GETTABLEKS                       R40 R40 K19 ["ElementPadding"]
      961 SETTABLEKS                       R40 R39 K61 ["Spacing"]
      963 DUPTABLE                         R40 K228 [{"ScriptText", "DisclaimerText"}]
      964 GETUPVAL                         R41 4
      965 GETTABLEKS                       R41 R41 K72 ["createElement"]
      967 GETUPVAL                         R42 10
      968 DUPTABLE                         R43 K230 [{["AutomaticSize"], ["LayoutOrder"], ["RichText"] = True, ["Size"], ["Style"], ["Text"], ["TextXAlignment"], ["TextWrapped"] = True}]
      969 GETIMPORT                        R44 K223 [Enum.AutomaticSize.XY]
      971 SETTABLEKS                       R44 R43 K117 ["AutomaticSize"]
      973 NAMECALL                         R44 R17 K130 ["getNextOrder"]
      975 CALL                             R44 1 1
      976 SETTABLEKS                       R44 R43 K94 ["LayoutOrder"]
      978 GETIMPORT                        R44 K225 [UDim2.fromScale]
      980 LOADN                            R45 1
      981 LOADN                            R46 0
      982 CALL                             R44 2 1
      983 SETTABLEKS                       R44 R43 K6 ["Size"]
      985 GETTABLEKS                       R44 R14 K142 ["Text"]
      987 SETTABLEKS                       R44 R43 K77 ["Style"]
      989 GETTABLEKS                       R44 R1 K218 ["CodeSummary"]
      991 SETTABLEKS                       R44 R43 K142 ["Text"]
      993 GETIMPORT                        R44 K156 [Enum.TextXAlignment.Left]
      995 SETTABLEKS                       R44 R43 K152 ["TextXAlignment"]
      997 CALL                             R41 2 1
      998 SETTABLEKS                       R41 R40 K226 ["ScriptText"]
     1000 GETUPVAL                         R41 4
     1001 GETTABLEKS                       R41 R41 K72 ["createElement"]
     1003 GETUPVAL                         R42 10
     1004 DUPTABLE                         R43 K231 [{["AutomaticSize"], ["LayoutOrder"], ["Style"], ["Text"], ["Size"], ["TextWrapped"] = True}]
     1005 GETIMPORT                        R44 K223 [Enum.AutomaticSize.XY]
     1007 SETTABLEKS                       R44 R43 K117 ["AutomaticSize"]
     1009 NAMECALL                         R44 R17 K130 ["getNextOrder"]
     1011 CALL                             R44 1 1
     1012 SETTABLEKS                       R44 R43 K94 ["LayoutOrder"]
     1014 GETTABLEKS                       R44 R14 K218 ["CodeSummary"]
     1016 GETTABLEKS                       R44 R44 K227 ["DisclaimerText"]
     1018 SETTABLEKS                       R44 R43 K77 ["Style"]
     1020 GETUPVAL                         R46 2
     1021 LOADK                            R47 K40 ["AssetPreview"]
     1022 LOADK                            R48 K232 ["CodeSummaryDisclaimer"]
     1023 NAMECALL                         R44 R13 K42 ["getProjectText"]
     1025 CALL                             R44 4 1
     1026 SETTABLEKS                       R44 R43 K142 ["Text"]
     1028 GETIMPORT                        R44 K225 [UDim2.fromScale]
     1030 LOADN                            R45 1
     1031 LOADN                            R46 0
     1032 CALL                             R44 2 1
     1033 SETTABLEKS                       R44 R43 K6 ["Size"]
     1035 CALL                             R41 2 1
     1036 SETTABLEKS                       R41 R40 K227 ["DisclaimerText"]
     1038 CALL                             R37 3 1
     1039 JUMP                             ; [+1]
     1040 LOADNIL                          R37
     1041 SETTABLEKS                       R37 R36 K109 ["CodeSummaryContainer"]
     1043 GETUPVAL                         R38 19
     1044 JUMPIFNOT                        R38 ; [+31]
     1045 GETUPVAL                         R37 4
     1046 GETTABLEKS                       R37 R37 K233 ["createFragment"]
     1048 GETUPVAL                         R38 1
     1049 GETTABLEKS                       R38 R38 K34 ["List"]
     1051 GETTABLEKS                       R38 R38 K234 ["foldLeft"]
     1053 GETUPVAL                         R39 1
     1054 GETTABLEKS                       R39 R39 K34 ["List"]
     1056 GETTABLEKS                       R39 R39 K235 ["map"]
     1058 MOVE                             R40 R16
     1059 NEWCLOSURE                       R41 P3
     1060 CAPTURE                          UPVAL U20
     1061 CAPTURE                          VAL R14
     1062 CAPTURE                          UPVAL U4
     1063 CAPTURE                          UPVAL U21
     1064 CAPTURE                          UPVAL U10
     1065 CAPTURE                          UPVAL U8
     1066 CAPTURE                          VAL R17
     1067 CAPTURE                          VAL R16
     1068 CAPTURE                          UPVAL U22
     1069 CALL                             R39 2 1
     1070 DUPCLOSURE                       R40 K236 [PROTO_26]
     1071 NEWTABLE                         R41 0 0
     1073 CALL                             R38 3 -1
     1074 CALL                             R37 -1 1
     1075 JUMP                             ; [+9]
     1076 GETUPVAL                         R37 4
     1077 GETTABLEKS                       R37 R37 K233 ["createFragment"]
     1079 GETUPVAL                         R38 23
     1080 MOVE                             R39 R17
     1081 MOVE                             R40 R16
     1082 MOVE                             R41 R14
     1083 CALL                             R38 3 -1
     1084 CALL                             R37 -1 1
     1085 SETTABLEKS                       R37 R36 K110 ["InfoRows"]
     1087 GETTABLEKS                       R38 R1 K237 ["RenderSuggestions"]
     1089 JUMPIFNOT                        R38 ; [+41]
     1090 GETUPVAL                         R37 4
     1091 GETTABLEKS                       R37 R37 K72 ["createElement"]
     1093 GETUPVAL                         R38 5
     1094 DUPTABLE                         R39 K238 [{"AutomaticSize", "LayoutOrder", "Padding", "Size"}]
     1095 GETIMPORT                        R40 K120 [Enum.AutomaticSize.Y]
     1097 SETTABLEKS                       R40 R39 K117 ["AutomaticSize"]
     1099 NAMECALL                         R40 R17 K130 ["getNextOrder"]
     1101 CALL                             R40 1 1
     1102 SETTABLEKS                       R40 R39 K94 ["LayoutOrder"]
     1104 GETTABLEKS                       R40 R3 K18 ["ScrollingFrame"]
     1106 GETTABLEKS                       R40 R40 K239 ["SuggestionsSection"]
     1108 GETTABLEKS                       R40 R40 K55 ["Padding"]
     1110 SETTABLEKS                       R40 R39 K55 ["Padding"]
     1112 GETIMPORT                        R40 K9 [UDim2.new]
     1114 LOADN                            R41 1
     1115 LOADN                            R42 0
     1116 LOADN                            R43 0
     1117 LOADN                            R44 0
     1118 CALL                             R40 4 1
     1119 SETTABLEKS                       R40 R39 K6 ["Size"]
     1121 DUPTABLE                         R40 K241 [{"SuggestionsWrapper"}]
     1122 GETTABLEKS                       R41 R1 K237 ["RenderSuggestions"]
     1124 GETTABLEKS                       R42 R0 K242 ["resetCanvasPosition"]
     1126 CALL                             R41 1 1
     1127 SETTABLEKS                       R41 R40 K240 ["SuggestionsWrapper"]
     1129 CALL                             R37 3 1
     1130 JUMP                             ; [+1]
     1131 LOADNIL                          R37
     1132 SETTABLEKS                       R37 R36 K111 ["Suggestions"]
     1134 GETTABLEKS                       R37 R1 K243 ["RenderFooter"]
     1136 JUMPIFNOT                        R37 ; [+11]
     1137 GETUPVAL                         R37 4
     1138 GETTABLEKS                       R37 R37 K72 ["createElement"]
     1140 GETUPVAL                         R38 22
     1141 DUPTABLE                         R39 K244 [{"LayoutOrder"}]
     1142 NAMECALL                         R40 R17 K130 ["getNextOrder"]
     1144 CALL                             R40 1 1
     1145 SETTABLEKS                       R40 R39 K94 ["LayoutOrder"]
     1147 CALL                             R37 2 1
     1148 SETTABLEKS                       R37 R36 K112 ["FooterSeparator"]
     1150 GETTABLEKS                       R37 R1 K243 ["RenderFooter"]
     1152 JUMPIFNOT                        R37 ; [+19]
     1153 GETUPVAL                         R37 4
     1154 GETTABLEKS                       R37 R37 K72 ["createElement"]
     1156 GETTABLEKS                       R38 R1 K243 ["RenderFooter"]
     1158 DUPTABLE                         R39 K245 [{"Size", "LayoutOrder"}]
     1159 GETIMPORT                        R40 K247 [UDim2.fromOffset]
     1161 MOVE                             R41 R19
     1162 LOADN                            R42 0
     1163 CALL                             R40 2 1
     1164 SETTABLEKS                       R40 R39 K6 ["Size"]
     1166 NAMECALL                         R40 R17 K130 ["getNextOrder"]
     1168 CALL                             R40 1 1
     1169 SETTABLEKS                       R40 R39 K94 ["LayoutOrder"]
     1171 CALL                             R37 2 1
     1172 SETTABLEKS                       R37 R36 K113 ["Footer"]
     1174 GETUPVAL                         R37 4
     1175 GETTABLEKS                       R37 R37 K72 ["createElement"]
     1177 GETUPVAL                         R38 8
     1178 DUPTABLE                         R39 K248 [{"LayoutOrder", "Size"}]
     1179 NAMECALL                         R40 R17 K130 ["getNextOrder"]
     1181 CALL                             R40 1 1
     1182 SETTABLEKS                       R40 R39 K94 ["LayoutOrder"]
     1184 GETIMPORT                        R40 K9 [UDim2.new]
     1186 LOADN                            R41 1
     1187 LOADN                            R42 0
     1188 LOADN                            R43 0
     1189 GETTABLEKS                       R45 R3 K18 ["ScrollingFrame"]
     1191 GETTABLEKS                       R45 R45 K55 ["Padding"]
     1193 GETTABLEKS                       R45 R45 K249 ["PaddingTop"]
     1195 GETTABLEKS                       R46 R3 K18 ["ScrollingFrame"]
     1197 GETTABLEKS                       R46 R46 K55 ["Padding"]
     1199 GETTABLEKS                       R46 R46 K250 ["PaddingBottom"]
     1201 ADD                              R44 R45 R46
     1202 CALL                             R40 4 1
     1203 SETTABLEKS                       R40 R39 K6 ["Size"]
     1205 CALL                             R37 2 1
     1206 SETTABLEKS                       R37 R36 K114 ["BottomSpacer"]
     1208 CALL                             R33 3 1
     1209 SETTABLEKS                       R33 R32 K18 ["ScrollingFrame"]
     1211 GETUPVAL                         R33 4
     1212 GETTABLEKS                       R33 R33 K72 ["createElement"]
     1214 GETUPVAL                         R34 8
     1215 DUPTABLE                         R35 K251 [{["LayoutOrder"] = 2, ["Size"]}]
     1216 GETTABLEKS                       R36 R3 K12 ["ButtonArea"]
     1218 GETTABLEKS                       R36 R36 K6 ["Size"]
     1220 SETTABLEKS                       R36 R35 K6 ["Size"]
     1222 DUPTABLE                         R36 K254 [{"Padding", "Layout", "ContextButton", "ActionButton"}]
     1223 GETUPVAL                         R37 4
     1224 GETTABLEKS                       R37 R37 K72 ["createElement"]
     1226 LOADK                            R38 K116 ["UIPadding"]
     1227 GETTABLEKS                       R40 R1 K11 ["ActionSubText"]
     1229 JUMPIFNOT                        R40 ; [+20]
     1230 GETUPVAL                         R39 6
     1231 GETTABLEKS                       R40 R3 K12 ["ButtonArea"]
     1233 GETTABLEKS                       R40 R40 K55 ["Padding"]
     1235 DUPTABLE                         R41 K255 [{"PaddingBottom"}]
     1236 GETIMPORT                        R42 K24 [UDim.new]
     1238 LOADN                            R43 0
     1239 GETTABLEKS                       R44 R3 K12 ["ButtonArea"]
     1241 GETTABLEKS                       R44 R44 K11 ["ActionSubText"]
     1243 GETTABLEKS                       R44 R44 K256 ["SpacingTop"]
     1245 CALL                             R42 2 1
     1246 SETTABLEKS                       R42 R41 K250 ["PaddingBottom"]
     1248 CALL                             R39 2 1
     1249 JUMP                             ; [+4]
     1250 GETTABLEKS                       R39 R3 K12 ["ButtonArea"]
     1252 GETTABLEKS                       R39 R39 K55 ["Padding"]
     1254 CALL                             R37 2 1
     1255 SETTABLEKS                       R37 R36 K55 ["Padding"]
     1257 GETUPVAL                         R37 4
     1258 GETTABLEKS                       R37 R37 K72 ["createElement"]
     1260 LOADK                            R38 K90 ["UIListLayout"]
     1261 DUPTABLE                         R39 K257 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
     1262 GETIMPORT                        R40 K129 [Enum.FillDirection.Horizontal]
     1264 SETTABLEKS                       R40 R39 K127 ["FillDirection"]
     1266 GETIMPORT                        R40 K157 [Enum.HorizontalAlignment.Left]
     1268 SETTABLEKS                       R40 R39 K147 ["HorizontalAlignment"]
     1270 GETIMPORT                        R40 K132 [Enum.VerticalAlignment.Center]
     1272 SETTABLEKS                       R40 R39 K118 ["VerticalAlignment"]
     1274 GETIMPORT                        R40 K95 [Enum.SortOrder.LayoutOrder]
     1276 SETTABLEKS                       R40 R39 K91 ["SortOrder"]
     1278 GETTABLEKS                       R40 R3 K12 ["ButtonArea"]
     1280 GETTABLEKS                       R40 R40 K19 ["ElementPadding"]
     1282 SETTABLEKS                       R40 R39 K55 ["Padding"]
     1284 CALL                             R37 2 1
     1285 SETTABLEKS                       R37 R36 K87 ["Layout"]
     1287 GETUPVAL                         R37 4
     1288 GETTABLEKS                       R37 R37 K72 ["createElement"]
     1290 GETUPVAL                         R38 24
     1291 DUPTABLE                         R39 K258 [{["LayoutOrder"] = 1, ["OnClick"], ["Size"], ["Style"]}]
     1292 GETTABLEKS                       R40 R1 K259 ["OnClickContext"]
     1294 SETTABLEKS                       R40 R39 K75 ["OnClick"]
     1296 GETTABLEKS                       R40 R3 K12 ["ButtonArea"]
     1298 GETTABLEKS                       R40 R40 K260 ["Context"]
     1300 GETTABLEKS                       R40 R40 K6 ["Size"]
     1302 SETTABLEKS                       R40 R39 K6 ["Size"]
     1304 GETTABLEKS                       R40 R3 K12 ["ButtonArea"]
     1306 GETTABLEKS                       R40 R40 K260 ["Context"]
     1308 SETTABLEKS                       R40 R39 K77 ["Style"]
     1310 GETUPVAL                         R41 19
     1311 JUMPIFNOT                        R41 ; [+7]
     1312 GETUPVAL                         R40 4
     1313 GETTABLEKS                       R40 R40 K72 ["createElement"]
     1315 GETUPVAL                         R41 15
     1316 DUPTABLE                         R42 K176 [{["Cursor"] = "PointingHand"}]
     1317 CALL                             R40 2 1
     1318 JUMP                             ; [+10]
     1319 NEWTABLE                         R40 0 1
     1321 GETUPVAL                         R41 4
     1322 GETTABLEKS                       R41 R41 K72 ["createElement"]
     1324 GETUPVAL                         R42 15
     1325 DUPTABLE                         R43 K176 [{["Cursor"] = "PointingHand"}]
     1326 CALL                             R41 2 -1
     1327 SETLIST                          R40 R41 -1 [1]
     1329 CALL                             R37 3 1
     1330 SETTABLEKS                       R37 R36 K252 ["ContextButton"]
     1332 GETUPVAL                         R37 4
     1333 GETTABLEKS                       R37 R37 K72 ["createElement"]
     1335 GETUPVAL                         R38 24
     1336 DUPTABLE                         R39 K262 [{["LayoutOrder"] = 2, ["OnClick"], ["Text"], ["StyleModifier"], ["Style"], ["AnchorPoint"], ["Position"], ["Size"]}]
     1337 GETTABLEKS                       R40 R0 K263 ["onClickActionButton"]
     1339 SETTABLEKS                       R40 R39 K75 ["OnClick"]
     1341 GETTABLEKS                       R40 R1 K264 ["ActionText"]
     1343 SETTABLEKS                       R40 R39 K142 ["Text"]
     1345 GETTABLEKS                       R41 R1 K265 ["ActionEnabled"]
     1347 JUMPIFNOTEQKB                    R41 FALSE ; [+5]
     1349 GETUPVAL                         R40 25
     1350 GETTABLEKS                       R40 R40 K266 ["Disabled"]
     1352 JUMPIF                           R40 ; [+1]
     1353 LOADNIL                          R40
     1354 SETTABLEKS                       R40 R39 K261 ["StyleModifier"]
     1356 GETTABLEKS                       R41 R1 K267 ["ShowRobuxIcon"]
     1358 JUMPIFNOT                        R41 ; [+5]
     1359 GETTABLEKS                       R40 R3 K12 ["ButtonArea"]
     1361 GETTABLEKS                       R40 R40 K268 ["ActionBuy"]
     1363 JUMPIF                           R40 ; [+4]
     1364 GETTABLEKS                       R40 R3 K12 ["ButtonArea"]
     1366 GETTABLEKS                       R40 R40 K269 ["Action"]
     1368 SETTABLEKS                       R40 R39 K77 ["Style"]
     1370 GETIMPORT                        R40 K16 [Vector2.new]
     1372 LOADN                            R41 1
     1373 LOADN                            R42 0
     1374 CALL                             R40 2 1
     1375 SETTABLEKS                       R40 R39 K3 ["AnchorPoint"]
     1377 GETIMPORT                        R40 K9 [UDim2.new]
     1379 LOADN                            R41 1
     1380 LOADN                            R42 0
     1381 LOADN                            R43 0
     1382 LOADN                            R44 0
     1383 CALL                             R40 4 1
     1384 SETTABLEKS                       R40 R39 K4 ["Position"]
     1386 GETIMPORT                        R40 K9 [UDim2.new]
     1388 LOADN                            R41 1
     1389 GETTABLEKS                       R44 R3 K12 ["ButtonArea"]
     1391 GETTABLEKS                       R44 R44 K260 ["Context"]
     1393 GETTABLEKS                       R44 R44 K6 ["Size"]
     1395 GETTABLEKS                       R44 R44 K20 ["X"]
     1397 GETTABLEKS                       R44 R44 K22 ["Offset"]
     1399 MINUS                            R43 R44
     1400 GETTABLEKS                       R44 R3 K12 ["ButtonArea"]
     1402 GETTABLEKS                       R44 R44 K19 ["ElementPadding"]
     1404 GETTABLEKS                       R44 R44 K22 ["Offset"]
     1406 SUB                              R42 R43 R44
     1407 LOADN                            R43 0
     1408 GETTABLEKS                       R44 R3 K12 ["ButtonArea"]
     1410 GETTABLEKS                       R44 R44 K270 ["ActionButtonHeight"]
     1412 CALL                             R40 4 1
     1413 SETTABLEKS                       R40 R39 K6 ["Size"]
     1415 GETUPVAL                         R41 19
     1416 JUMPIFNOT                        R41 ; [+7]
     1417 GETUPVAL                         R40 4
     1418 GETTABLEKS                       R40 R40 K72 ["createElement"]
     1420 GETUPVAL                         R41 15
     1421 DUPTABLE                         R42 K176 [{["Cursor"] = "PointingHand"}]
     1422 CALL                             R40 2 1
     1423 JUMP                             ; [+10]
     1424 NEWTABLE                         R40 0 1
     1426 GETUPVAL                         R41 4
     1427 GETTABLEKS                       R41 R41 K72 ["createElement"]
     1429 GETUPVAL                         R42 15
     1430 DUPTABLE                         R43 K176 [{["Cursor"] = "PointingHand"}]
     1431 CALL                             R41 2 -1
     1432 SETLIST                          R40 R41 -1 [1]
     1434 CALL                             R37 3 1
     1435 SETTABLEKS                       R37 R36 K253 ["ActionButton"]
     1437 CALL                             R33 3 1
     1438 SETTABLEKS                       R33 R32 K12 ["ButtonArea"]
     1440 GETTABLEKS                       R34 R1 K11 ["ActionSubText"]
     1442 JUMPIFNOT                        R34 ; [+84]
     1443 GETUPVAL                         R33 4
     1444 GETTABLEKS                       R33 R33 K72 ["createElement"]
     1446 GETUPVAL                         R34 5
     1447 DUPTABLE                         R35 K272 [{["AutomaticSize"], ["LayoutOrder"] = 3, ["Padding"], ["Size"]}]
     1448 GETIMPORT                        R36 K120 [Enum.AutomaticSize.Y]
     1450 SETTABLEKS                       R36 R35 K117 ["AutomaticSize"]
     1452 DUPTABLE                         R36 K273 [{"Left", "Right", "Bottom"}]
     1453 GETTABLEKS                       R37 R3 K18 ["ScrollingFrame"]
     1455 GETTABLEKS                       R37 R37 K19 ["ElementPadding"]
     1457 SETTABLEKS                       R37 R36 K123 ["Left"]
     1459 GETTABLEKS                       R37 R3 K18 ["ScrollingFrame"]
     1461 GETTABLEKS                       R37 R37 K19 ["ElementPadding"]
     1463 SETTABLEKS                       R37 R36 K124 ["Right"]
     1465 GETTABLEKS                       R37 R3 K18 ["ScrollingFrame"]
     1467 GETTABLEKS                       R37 R37 K19 ["ElementPadding"]
     1469 SETTABLEKS                       R37 R36 K121 ["Bottom"]
     1471 SETTABLEKS                       R36 R35 K55 ["Padding"]
     1473 GETIMPORT                        R36 K9 [UDim2.new]
     1475 LOADN                            R37 1
     1476 LOADN                            R38 0
     1477 LOADN                            R39 0
     1478 GETTABLEKS                       R40 R9 K21 ["Y"]
     1480 CALL                             R36 4 1
     1481 SETTABLEKS                       R36 R35 K6 ["Size"]
     1483 DUPTABLE                         R36 K274 [{"ActionSubText"}]
     1484 GETUPVAL                         R37 4
     1485 GETTABLEKS                       R37 R37 K72 ["createElement"]
     1487 GETUPVAL                         R38 10
     1488 DUPTABLE                         R39 K276 [{["AutomaticSize"], ["Size"], ["Text"], ["TextColor"], ["TextSize"], ["TextWrapped"] = True}]
     1489 GETIMPORT                        R40 K120 [Enum.AutomaticSize.Y]
     1491 SETTABLEKS                       R40 R39 K117 ["AutomaticSize"]
     1493 GETIMPORT                        R40 K9 [UDim2.new]
     1495 LOADN                            R41 1
     1496 LOADN                            R42 0
     1497 LOADN                            R43 0
     1498 LOADN                            R44 0
     1499 CALL                             R40 4 1
     1500 SETTABLEKS                       R40 R39 K6 ["Size"]
     1502 GETTABLEKS                       R40 R1 K11 ["ActionSubText"]
     1504 SETTABLEKS                       R40 R39 K142 ["Text"]
     1506 GETTABLEKS                       R40 R3 K12 ["ButtonArea"]
     1508 GETTABLEKS                       R40 R40 K11 ["ActionSubText"]
     1510 GETTABLEKS                       R40 R40 K275 ["TextColor"]
     1512 SETTABLEKS                       R40 R39 K275 ["TextColor"]
     1514 GETTABLEKS                       R40 R3 K12 ["ButtonArea"]
     1516 GETTABLEKS                       R40 R40 K11 ["ActionSubText"]
     1518 GETTABLEKS                       R40 R40 K13 ["TextSize"]
     1520 SETTABLEKS                       R40 R39 K13 ["TextSize"]
     1522 CALL                             R37 2 1
     1523 SETTABLEKS                       R37 R36 K11 ["ActionSubText"]
     1525 CALL                             R33 3 1
     1526 JUMP                             ; [+1]
     1527 LOADNIL                          R33
     1528 SETTABLEKS                       R33 R32 K88 ["ActionSubTextArea"]
     1530 CALL                             R29 3 1
     1531 SETTABLEKS                       R29 R28 K84 ["Contents"]
     1533 CALL                             R25 3 -1
     1534 RETURN                           R25 -1

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
      243 GETTABLEKS                       R33 R3 K47 ["PureComponent"]
      245 LOADK                            R35 K48 ["AssetPreview"]
      246 NAMECALL                         R33 R33 K49 ["extend"]
      248 CALL                             R33 2 1
      249 DUPCLOSURE                       R34 K50 [PROTO_12]
      250 CAPTURE                          VAL R3
      251 SETTABLEKS                       R34 R33 K51 ["init"]
      253 DUPCLOSURE                       R34 K52 [PROTO_14]
      254 CAPTURE                          VAL R12
      255 SETTABLEKS                       R34 R33 K53 ["formatLocalDateTimeForAsset"]
      257 DUPCLOSURE                       R34 K54 [PROTO_17]
      258 CAPTURE                          VAL R31
      259 CAPTURE                          VAL R7
      260 SETTABLEKS                       R34 R33 K55 ["updateAssetInfoRows"]
      262 DUPCLOSURE                       R34 K56 [PROTO_18]
      263 SETTABLEKS                       R34 R33 K57 ["didMount"]
      265 DUPCLOSURE                       R34 K58 [PROTO_19]
      266 SETTABLEKS                       R34 R33 K59 ["willUnmount"]
      268 DUPCLOSURE                       R34 K60 [PROTO_20]
      269 CAPTURE                          VAL R3
      270 SETTABLEKS                       R34 R33 K61 ["didUpdate"]
      272 DUPCLOSURE                       R34 K62 [PROTO_22]
      273 CAPTURE                          VAL R8
      274 CAPTURE                          VAL R0
      275 CAPTURE                          VAL R3
      276 CAPTURE                          VAL R23
      277 CAPTURE                          VAL R28
      278 CAPTURE                          VAL R20
      279 CAPTURE                          VAL R27
      280 DUPCLOSURE                       R35 K63 [PROTO_27]
      281 CAPTURE                          VAL R9
      282 CAPTURE                          VAL R8
      283 CAPTURE                          VAL R7
      284 CAPTURE                          VAL R10
      285 CAPTURE                          VAL R3
      286 CAPTURE                          VAL R24
      287 CAPTURE                          VAL R16
      288 CAPTURE                          VAL R22
      289 CAPTURE                          VAL R20
      290 CAPTURE                          VAL R26
      291 CAPTURE                          VAL R28
      292 CAPTURE                          VAL R30
      293 CAPTURE                          VAL R1
      294 CAPTURE                          VAL R13
      295 CAPTURE                          VAL R29
      296 CAPTURE                          VAL R21
      297 CAPTURE                          VAL R17
      298 CAPTURE                          VAL R18
      299 CAPTURE                          VAL R25
      300 CAPTURE                          VAL R32
      301 CAPTURE                          VAL R0
      302 CAPTURE                          VAL R23
      303 CAPTURE                          VAL R27
      304 CAPTURE                          VAL R34
      305 CAPTURE                          VAL R19
      306 CAPTURE                          VAL R11
      307 SETTABLEKS                       R35 R33 K64 ["render"]
      309 MOVE                             R35 R5
      310 DUPTABLE                         R36 K68 [{"Analytics", "Localization", "Stylizer"}]
      311 GETTABLEKS                       R37 R4 K65 ["Analytics"]
      313 SETTABLEKS                       R37 R36 K65 ["Analytics"]
      315 GETTABLEKS                       R37 R4 K66 ["Localization"]
      317 SETTABLEKS                       R37 R36 K66 ["Localization"]
      319 GETTABLEKS                       R37 R4 K67 ["Stylizer"]
      321 SETTABLEKS                       R37 R36 K67 ["Stylizer"]
      323 CALL                             R35 1 1
      324 MOVE                             R36 R33
      325 CALL                             R35 1 1
      326 MOVE                             R33 R35
      327 MOVE                             R35 R14
      328 MOVE                             R36 R33
      329 CALL                             R35 1 -1
      330 RETURN                           R35 -1
