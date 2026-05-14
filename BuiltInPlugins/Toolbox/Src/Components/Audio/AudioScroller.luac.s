PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["props"]
        6 GETTABLEKS                       R3 R3 K1 ["Assets"]
        8 LENGTH                           R2 R3
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K0 ["props"]
       12 GETTABLEKS                       R4 R4 K2 ["Loading"]
       14 JUMPIFNOT                        R4 ; [+2]
       15 LOADN                            R3 60
       16 JUMP                             ; [+1]
       17 LOADN                            R3 0
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K0 ["props"]
       21 GETTABLEKS                       R5 R5 K3 ["RenderTopContent"]
       23 JUMPIFNOT                        R5 ; [+2]
       24 LOADN                            R4 30
       25 JUMP                             ; [+1]
       26 LOADN                            R4 0
       27 GETUPVAL                         R9 1
       28 GETTABLEKS                       R9 R9 K4 ["AUDIO_ROW"]
       30 GETTABLEKS                       R9 R9 K5 ["ROW_HEIGHT"]
       32 MUL                              R8 R9 R2
       33 ADD                              R7 R8 R3
       34 ADD                              R6 R7 R4
       35 GETUPVAL                         R7 1
       36 GETTABLEKS                       R7 R7 K4 ["AUDIO_ROW"]
       38 GETTABLEKS                       R7 R7 K6 ["EXPANDED_ROW_HEIGHT"]
       40 ADD                              R5 R6 R7
       41 RETURN                           R5 1

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R2 R0 K0 ["calculateCanvasHeight"]
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Generator"]
        3 DUPTABLE                         R1 K11 [{"AudioType", "Assets", "TryInsert", "CanInsertAsset", "LayoutOrder", "LogImpression", "OnAssetPreviewButtonClicked", "ParentAbsoluteSize", "TryOpenAssetConfig", "SwimlaneName"}]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["AudioType"]
        7 SETTABLEKS                       R2 R1 K1 ["AudioType"]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K2 ["Assets"]
       12 SETTABLEKS                       R2 R1 K2 ["Assets"]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K3 ["TryInsert"]
       17 SETTABLEKS                       R2 R1 K3 ["TryInsert"]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K4 ["CanInsertAsset"]
       22 SETTABLEKS                       R2 R1 K4 ["CanInsertAsset"]
       24 LOADN                            R2 2
       25 SETTABLEKS                       R2 R1 K5 ["LayoutOrder"]
       27 GETUPVAL                         R2 1
       28 GETTABLEKS                       R2 R2 K6 ["LogImpression"]
       30 SETTABLEKS                       R2 R1 K6 ["LogImpression"]
       32 GETUPVAL                         R2 1
       33 GETTABLEKS                       R2 R2 K7 ["OnAssetPreviewButtonClicked"]
       35 SETTABLEKS                       R2 R1 K7 ["OnAssetPreviewButtonClicked"]
       37 GETUPVAL                         R2 1
       38 GETTABLEKS                       R2 R2 K8 ["ParentAbsoluteSize"]
       40 SETTABLEKS                       R2 R1 K8 ["ParentAbsoluteSize"]
       42 GETUPVAL                         R2 1
       43 GETTABLEKS                       R2 R2 K9 ["TryOpenAssetConfig"]
       45 SETTABLEKS                       R2 R1 K9 ["TryOpenAssetConfig"]
       47 GETUPVAL                         R2 1
       48 GETTABLEKS                       R2 R2 K10 ["SwimlaneName"]
       50 SETTABLEKS                       R2 R1 K10 ["SwimlaneName"]
       52 CALL                             R0 1 -1
       53 RETURN                           R0 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["createElement"]
       10 GETUPVAL                         R5 2
       11 DUPTABLE                         R6 K13 [{"CalculateCanvasHeight", "FetchNextPage", "Items", "Loading", "PageSize", "Position", "RenderContent", "RenderTopContent", "Size", "Total"}]
       12 GETTABLEKS                       R7 R0 K14 ["calculateCanvasHeight"]
       14 SETTABLEKS                       R7 R6 K3 ["CalculateCanvasHeight"]
       16 GETTABLEKS                       R7 R1 K4 ["FetchNextPage"]
       18 SETTABLEKS                       R7 R6 K4 ["FetchNextPage"]
       20 GETTABLEKS                       R7 R1 K15 ["Assets"]
       22 SETTABLEKS                       R7 R6 K5 ["Items"]
       24 GETTABLEKS                       R7 R1 K6 ["Loading"]
       26 SETTABLEKS                       R7 R6 K6 ["Loading"]
       28 GETTABLEKS                       R7 R1 K7 ["PageSize"]
       30 SETTABLEKS                       R7 R6 K7 ["PageSize"]
       32 GETTABLEKS                       R7 R1 K8 ["Position"]
       34 SETTABLEKS                       R7 R6 K8 ["Position"]
       36 SETTABLEKS                       R3 R6 K9 ["RenderContent"]
       38 GETTABLEKS                       R7 R1 K10 ["RenderTopContent"]
       40 SETTABLEKS                       R7 R6 K10 ["RenderTopContent"]
       42 GETTABLEKS                       R7 R1 K11 ["Size"]
       44 SETTABLEKS                       R7 R6 K11 ["Size"]
       46 GETTABLEKS                       R7 R1 K12 ["Total"]
       48 SETTABLEKS                       R7 R6 K12 ["Total"]
       50 CALL                             R4 2 -1
       51 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R2 3 -1
        7 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Framework"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R0 K9 ["Src"]
       21 GETTABLEKS                       R4 R4 K10 ["Util"]
       23 GETIMPORT                        R5 K6 [require]
       25 GETTABLEKS                       R6 R4 K11 ["Constants"]
       27 CALL                             R5 1 1
       28 GETIMPORT                        R6 K6 [require]
       30 GETTABLEKS                       R7 R0 K9 ["Src"]
       32 GETTABLEKS                       R7 R7 K12 ["Components"]
       34 GETTABLEKS                       R7 R7 K13 ["AssetLogicWrapper"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K6 [require]
       39 GETTABLEKS                       R8 R0 K9 ["Src"]
       41 GETTABLEKS                       R8 R8 K14 ["Types"]
       43 GETTABLEKS                       R8 R8 K15 ["AssetLogicTypes"]
       45 CALL                             R7 1 1
       46 GETTABLEKS                       R8 R3 K16 ["ContextServices"]
       48 GETTABLEKS                       R9 R8 K17 ["withContext"]
       50 GETIMPORT                        R10 K6 [require]
       52 GETTABLEKS                       R11 R0 K9 ["Src"]
       54 GETTABLEKS                       R11 R11 K18 ["Models"]
       56 GETTABLEKS                       R11 R11 K19 ["AssetInfo"]
       58 CALL                             R10 1 1
       59 GETTABLEKS                       R11 R3 K20 ["UI"]
       61 GETTABLEKS                       R11 R11 K21 ["LoadingIndicator"]
       63 GETIMPORT                        R12 K6 [require]
       65 GETTABLEKS                       R13 R0 K9 ["Src"]
       67 GETTABLEKS                       R13 R13 K12 ["Components"]
       69 GETTABLEKS                       R13 R13 K22 ["Audio"]
       71 GETTABLEKS                       R13 R13 K23 ["AudioTable"]
       73 CALL                             R12 1 1
       74 GETIMPORT                        R13 K6 [require]
       76 GETTABLEKS                       R14 R0 K9 ["Src"]
       78 GETTABLEKS                       R14 R14 K12 ["Components"]
       80 GETTABLEKS                       R14 R14 K24 ["StyledScrollingFrame"]
       82 CALL                             R13 1 1
       83 GETIMPORT                        R14 K6 [require]
       85 GETTABLEKS                       R15 R0 K9 ["Src"]
       87 GETTABLEKS                       R15 R15 K12 ["Components"]
       89 GETTABLEKS                       R15 R15 K25 ["LoadScroller"]
       91 CALL                             R14 1 1
       92 GETTABLEKS                       R15 R2 K26 ["PureComponent"]
       94 LOADK                            R17 K27 ["AudioScroller"]
       95 NAMECALL                         R15 R15 K28 ["extend"]
       97 CALL                             R15 2 1
       98 DUPTABLE                         R16 K31 [{"Size", "PageSize"}]
       99 GETIMPORT                        R17 K34 [UDim2.new]
      101 LOADN                            R18 1
      102 LOADN                            R19 0
      103 LOADN                            R20 1
      104 LOADN                            R21 0
      105 CALL                             R17 4 1
      106 SETTABLEKS                       R17 R16 K29 ["Size"]
      108 LOADN                            R17 20
      109 SETTABLEKS                       R17 R16 K30 ["PageSize"]
      111 SETTABLEKS                       R16 R15 K35 ["defaultProps"]
      113 DUPCLOSURE                       R16 K36 [PROTO_1]
      114 CAPTURE                          VAL R5
      115 SETTABLEKS                       R16 R15 K37 ["init"]
      117 DUPCLOSURE                       R16 K38 [PROTO_3]
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R14
      121 SETTABLEKS                       R16 R15 K39 ["render"]
      123 MOVE                             R16 R9
      124 DUPTABLE                         R17 K42 [{"Localization", "Stylizer"}]
      125 GETTABLEKS                       R18 R8 K40 ["Localization"]
      127 SETTABLEKS                       R18 R17 K40 ["Localization"]
      129 GETTABLEKS                       R18 R8 K41 ["Stylizer"]
      131 SETTABLEKS                       R18 R17 K41 ["Stylizer"]
      133 CALL                             R16 1 1
      134 MOVE                             R17 R15
      135 CALL                             R16 1 1
      136 MOVE                             R15 R16
      137 NEWCLOSURE                       R16 P2
      138 CAPTURE                          VAL R2
      139 CAPTURE                          REF R15
      140 SETGLOBAL                        R16 K43 ["TypedAudioScroller"]
      142 DUPTABLE                         R16 K46 [{"Component", "Generator"}]
      143 SETTABLEKS                       R15 R16 K44 ["Component"]
      145 GETGLOBAL                        R17 K43 ["TypedAudioScroller"]
      147 SETTABLEKS                       R17 R16 K45 ["Generator"]
      149 CLOSEUPVALS                      R15
      150 RETURN                           R16 1
