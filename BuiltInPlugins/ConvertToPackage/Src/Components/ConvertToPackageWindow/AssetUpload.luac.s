PROTO_0:
        0 DUPTABLE                         R2 K1 [{"isLoading"}]
        1 LOADB                            R3 1
        2 SETTABLEKS                       R3 R2 K0 ["isLoading"]
        4 SETTABLEKS                       R2 R0 K2 ["state"]
        6 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R1 K3 ["assetName"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K4 ["createElement"]
       11 LOADK                            R6 K5 ["Frame"]
       12 DUPTABLE                         R7 K10 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
       13 GETTABLEKS                       R9 R3 K11 ["typeValidation"]
       15 GETTABLEKS                       R8 R9 K12 ["background"]
       17 SETTABLEKS                       R8 R7 K6 ["BackgroundColor3"]
       19 LOADN                            R8 0
       20 SETTABLEKS                       R8 R7 K7 ["BackgroundTransparency"]
       22 LOADN                            R8 0
       23 SETTABLEKS                       R8 R7 K8 ["BorderSizePixel"]
       25 GETTABLEKS                       R8 R1 K9 ["Size"]
       27 SETTABLEKS                       R8 R7 K9 ["Size"]
       29 DUPTABLE                         R8 K15 [{"ModelPreview", "LoadingBar"}]
       30 GETUPVAL                         R10 0
       31 GETTABLEKS                       R9 R10 K4 ["createElement"]
       33 GETUPVAL                         R10 1
       34 DUPTABLE                         R11 K20 [{"titleHeight", "titlePadding", "title", "Position", "Size"}]
       35 LOADN                            R12 24
       36 SETTABLEKS                       R12 R11 K16 ["titleHeight"]
       38 LOADN                            R12 12
       39 SETTABLEKS                       R12 R11 K17 ["titlePadding"]
       41 SETTABLEKS                       R4 R11 K18 ["title"]
       43 GETIMPORT                        R12 K23 [UDim2.new]
       45 LOADK                            R13 K24 [0.5]
       46 LOADN                            R14 181
       47 LOADN                            R15 0
       48 LOADN                            R16 48
       49 CALL                             R12 4 1
       50 SETTABLEKS                       R12 R11 K19 ["Position"]
       52 GETIMPORT                        R12 K23 [UDim2.new]
       54 LOADN                            R13 0
       55 LOADN                            R14 150
       56 LOADN                            R15 0
       57 LOADN                            R16 186
       58 CALL                             R12 4 1
       59 SETTABLEKS                       R12 R11 K9 ["Size"]
       61 CALL                             R9 2 1
       62 SETTABLEKS                       R9 R8 K13 ["ModelPreview"]
       64 GETUPVAL                         R10 0
       65 GETTABLEKS                       R9 R10 K4 ["createElement"]
       67 GETUPVAL                         R10 2
       68 DUPTABLE                         R11 K29 [{"loadingText", "loadingTime", "holdPercent", "Size", "Position", "onFinish"}]
       69 LOADK                            R14 K30 ["Action"]
       70 LOADK                            R15 K31 ["Converting"]
       71 NAMECALL                         R12 R2 K32 ["getText"]
       73 CALL                             R12 3 1
       74 SETTABLEKS                       R12 R11 K25 ["loadingText"]
       76 LOADK                            R12 K24 [0.5]
       77 SETTABLEKS                       R12 R11 K26 ["loadingTime"]
       79 LOADK                            R12 K33 [0.92]
       80 SETTABLEKS                       R12 R11 K27 ["holdPercent"]
       82 GETIMPORT                        R12 K23 [UDim2.new]
       84 LOADN                            R13 0
       85 LOADN                            R14 144
       86 LOADN                            R15 0
       87 LOADN                            R16 6
       88 CALL                             R12 4 1
       89 SETTABLEKS                       R12 R11 K9 ["Size"]
       91 GETIMPORT                        R12 K23 [UDim2.new]
       93 LOADK                            R13 K24 [0.5]
       94 LOADN                            R14 56
       95 LOADN                            R15 0
       96 LOADN                            R16 58
       97 CALL                             R12 4 1
       98 SETTABLEKS                       R12 R11 K19 ["Position"]
      100 GETTABLEKS                       R13 R1 K34 ["uploadSucceeded"]
      102 JUMPIFEQKNIL                     R13 ; [+4]
      104 GETTABLEKS                       R12 R1 K35 ["onNext"]
      106 JUMPIF                           R12 ; [+1]
      107 LOADNIL                          R12
      108 SETTABLEKS                       R12 R11 K28 ["onFinish"]
      110 CALL                             R9 2 1
      111 SETTABLEKS                       R9 R8 K14 ["LoadingBar"]
      113 CALL                             R5 3 -1
      114 RETURN                           R5 -1

PROTO_2:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 DUPTABLE                         R2 K3 [{"uploadSucceeded", "assetId", "assetName"}]
        6 GETTABLEKS                       R4 R0 K4 ["AssetConfigReducer"]
        8 GETTABLEKS                       R3 R4 K0 ["uploadSucceeded"]
       10 SETTABLEKS                       R3 R2 K0 ["uploadSucceeded"]
       12 GETTABLEKS                       R4 R0 K4 ["AssetConfigReducer"]
       14 GETTABLEKS                       R3 R4 K1 ["assetId"]
       16 SETTABLEKS                       R3 R2 K1 ["assetId"]
       18 GETTABLEKS                       R4 R0 K4 ["AssetConfigReducer"]
       20 GETTABLEKS                       R3 R4 K2 ["assetName"]
       22 SETTABLEKS                       R3 R2 K2 ["assetName"]
       24 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R4 2
        3 GETTABLEKS                       R3 R4 K0 ["SCREENS"]
        5 GETTABLEKS                       R2 R3 K1 ["UPLOAD_ASSET_RESULT"]
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
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["RoactRodux"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R6 R0 K3 ["Packages"]
       27 GETTABLEKS                       R5 R6 K8 ["Framework"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R4 K9 ["ContextServices"]
       32 GETTABLEKS                       R6 R5 K10 ["withContext"]
       34 GETTABLEKS                       R8 R0 K11 ["Src"]
       36 GETTABLEKS                       R7 R8 K12 ["Util"]
       38 GETIMPORT                        R8 K5 [require]
       40 GETTABLEKS                       R9 R7 K13 ["Constants"]
       42 CALL                             R8 1 1
       43 GETTABLEKS                       R10 R0 K11 ["Src"]
       45 GETTABLEKS                       R9 R10 K14 ["Actions"]
       47 GETIMPORT                        R10 K5 [require]
       49 GETTABLEKS                       R11 R9 K15 ["SetCurrentScreen"]
       51 CALL                             R10 1 1
       52 GETTABLEKS                       R12 R0 K11 ["Src"]
       54 GETTABLEKS                       R11 R12 K16 ["Components"]
       56 GETIMPORT                        R12 K5 [require]
       58 GETTABLEKS                       R14 R11 K17 ["ConvertToPackageWindow"]
       60 GETTABLEKS                       R13 R14 K18 ["LoadingBar"]
       62 CALL                             R12 1 1
       63 GETIMPORT                        R13 K5 [require]
       65 GETTABLEKS                       R15 R11 K17 ["ConvertToPackageWindow"]
       67 GETTABLEKS                       R14 R15 K19 ["AssetThumbnailPreview"]
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
