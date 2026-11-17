PROTO_0:
        0 DUPTABLE                         R2 K2 [{[1] = True}]
        1 SETTABLEKS                       R2 R0 K3 ["state"]
        3 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R1 K3 ["assetName"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["createElement"]
       11 LOADK                            R6 K5 ["Frame"]
       12 DUPTABLE                         R7 K11 [{["BackgroundColor3"], ["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 0, ["Size"]}]
       13 GETTABLEKS                       R8 R3 K12 ["typeValidation"]
       15 GETTABLEKS                       R8 R8 K13 ["background"]
       17 SETTABLEKS                       R8 R7 K6 ["BackgroundColor3"]
       19 GETTABLEKS                       R8 R1 K10 ["Size"]
       21 SETTABLEKS                       R8 R7 K10 ["Size"]
       23 DUPTABLE                         R8 K16 [{"ModelPreview", "LoadingBar"}]
       24 GETUPVAL                         R9 0
       25 GETTABLEKS                       R9 R9 K4 ["createElement"]
       27 GETUPVAL                         R10 1
       28 DUPTABLE                         R11 K23 [{["titleHeight"] = 24, ["titlePadding"] = 12, ["title"], ["Position"], ["Size"]}]
       29 SETTABLEKS                       R4 R11 K21 ["title"]
       31 GETIMPORT                        R12 K26 [UDim2.new]
       33 LOADK                            R13 K27 [0.5]
       34 LOADN                            R14 -75
       35 LOADN                            R15 0
       36 LOADN                            R16 48
       37 CALL                             R12 4 1
       38 SETTABLEKS                       R12 R11 K22 ["Position"]
       40 GETIMPORT                        R12 K26 [UDim2.new]
       42 LOADN                            R13 0
       43 LOADN                            R14 150
       44 LOADN                            R15 0
       45 LOADN                            R16 186
       46 CALL                             R12 4 1
       47 SETTABLEKS                       R12 R11 K10 ["Size"]
       49 CALL                             R9 2 1
       50 SETTABLEKS                       R9 R8 K14 ["ModelPreview"]
       52 GETUPVAL                         R9 0
       53 GETTABLEKS                       R9 R9 K4 ["createElement"]
       55 GETUPVAL                         R10 2
       56 DUPTABLE                         R11 K33 [{["loadingText"], ["loadingTime"] = 0.5, ["holdPercent"] = 0.92, ["Size"], ["Position"], ["onFinish"]}]
       57 LOADK                            R14 K34 ["Action"]
       58 LOADK                            R15 K35 ["Converting"]
       59 NAMECALL                         R12 R2 K36 ["getText"]
       61 CALL                             R12 3 1
       62 SETTABLEKS                       R12 R11 K28 ["loadingText"]
       64 GETIMPORT                        R12 K26 [UDim2.new]
       66 LOADN                            R13 0
       67 LOADN                            R14 400
       68 LOADN                            R15 0
       69 LOADN                            R16 6
       70 CALL                             R12 4 1
       71 SETTABLEKS                       R12 R11 K10 ["Size"]
       73 GETIMPORT                        R12 K26 [UDim2.new]
       75 LOADK                            R13 K27 [0.5]
       76 LOADN                            R14 -200
       77 LOADN                            R15 0
       78 LOADN                            R16 314
       79 CALL                             R12 4 1
       80 SETTABLEKS                       R12 R11 K22 ["Position"]
       82 GETTABLEKS                       R13 R1 K37 ["uploadSucceeded"]
       84 JUMPIFEQKNIL                     R13 ; [+4]
       86 GETTABLEKS                       R12 R1 K38 ["onNext"]
       88 JUMPIF                           R12 ; [+1]
       89 LOADNIL                          R12
       90 SETTABLEKS                       R12 R11 K32 ["onFinish"]
       92 CALL                             R9 2 1
       93 SETTABLEKS                       R9 R8 K15 ["LoadingBar"]
       95 CALL                             R5 3 -1
       96 RETURN                           R5 -1

PROTO_2:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 DUPTABLE                         R2 K3 [{"uploadSucceeded", "assetId", "assetName"}]
        6 GETTABLEKS                       R3 R0 K4 ["AssetConfigReducer"]
        8 GETTABLEKS                       R3 R3 K0 ["uploadSucceeded"]
       10 SETTABLEKS                       R3 R2 K0 ["uploadSucceeded"]
       12 GETTABLEKS                       R3 R0 K4 ["AssetConfigReducer"]
       14 GETTABLEKS                       R3 R3 K1 ["assetId"]
       16 SETTABLEKS                       R3 R2 K1 ["assetId"]
       18 GETTABLEKS                       R3 R0 K4 ["AssetConfigReducer"]
       20 GETTABLEKS                       R3 R3 K2 ["assetName"]
       22 SETTABLEKS                       R3 R2 K2 ["assetName"]
       24 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["SCREENS"]
        5 GETTABLEKS                       R2 R2 K1 ["UPLOAD_ASSET_RESULT"]
        7 CALL                             R1 1 -1
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"onNext"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 SETTABLEKS                       R2 R1 K0 ["onNext"]
        7 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["RoactRodux"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K3 ["Packages"]
       27 GETTABLEKS                       R5 R5 K8 ["Framework"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R4 K9 ["ContextServices"]
       32 GETTABLEKS                       R6 R5 K10 ["withContext"]
       34 GETTABLEKS                       R7 R0 K11 ["Src"]
       36 GETTABLEKS                       R7 R7 K12 ["Util"]
       38 GETIMPORT                        R8 K5 [require]
       40 GETTABLEKS                       R9 R7 K13 ["Constants"]
       42 CALL                             R8 1 1
       43 GETTABLEKS                       R9 R0 K11 ["Src"]
       45 GETTABLEKS                       R9 R9 K14 ["Actions"]
       47 GETIMPORT                        R10 K5 [require]
       49 GETTABLEKS                       R11 R9 K15 ["SetCurrentScreen"]
       51 CALL                             R10 1 1
       52 GETTABLEKS                       R11 R0 K11 ["Src"]
       54 GETTABLEKS                       R11 R11 K16 ["Components"]
       56 GETIMPORT                        R12 K5 [require]
       58 GETTABLEKS                       R13 R11 K17 ["ConvertToPackageWindow"]
       60 GETTABLEKS                       R13 R13 K18 ["LoadingBar"]
       62 CALL                             R12 1 1
       63 GETIMPORT                        R13 K5 [require]
       65 GETTABLEKS                       R14 R11 K17 ["ConvertToPackageWindow"]
       67 GETTABLEKS                       R14 R14 K19 ["AssetThumbnailPreview"]
       69 CALL                             R13 1 1
       70 GETTABLEKS                       R14 R2 K20 ["PureComponent"]
       72 LOADK                            R16 K21 ["AssetUpload"]
       73 NAMECALL                         R14 R14 K22 ["extend"]
       75 CALL                             R14 2 1
       76 DUPCLOSURE                       R15 K23 [PROTO_0]
       77 SETTABLEKS                       R15 R14 K24 ["init"]
       79 DUPCLOSURE                       R15 K25 [PROTO_1]
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R13
       82 CAPTURE                          VAL R12
       83 SETTABLEKS                       R15 R14 K26 ["render"]
       85 MOVE                             R15 R6
       86 DUPTABLE                         R16 K29 [{"Localization", "Stylizer"}]
       87 GETTABLEKS                       R17 R5 K27 ["Localization"]
       89 SETTABLEKS                       R17 R16 K27 ["Localization"]
       91 GETTABLEKS                       R17 R5 K28 ["Stylizer"]
       93 SETTABLEKS                       R17 R16 K28 ["Stylizer"]
       95 CALL                             R15 1 1
       96 MOVE                             R16 R14
       97 CALL                             R15 1 1
       98 MOVE                             R14 R15
       99 DUPCLOSURE                       R15 K30 [PROTO_2]
      100 DUPCLOSURE                       R16 K31 [PROTO_4]
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R8
      103 GETTABLEKS                       R17 R3 K32 ["connect"]
      105 MOVE                             R18 R15
      106 MOVE                             R19 R16
      107 CALL                             R17 2 1
      108 MOVE                             R18 R14
      109 CALL                             R17 1 -1
      110 RETURN                           R17 -1
