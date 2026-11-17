PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["SCREENS"]
        3 GETTABLEKS                       R2 R2 K1 ["CONFIGURE_ASSET"]
        5 JUMPIFEQ                         R0 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["SCREENS"]
        3 GETTABLEKS                       R2 R2 K1 ["UPLOADING_ASSET"]
        5 JUMPIFEQ                         R0 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["SCREENS"]
        3 GETTABLEKS                       R2 R2 K1 ["UPLOAD_ASSET_RESULT"]
        5 JUMPIFEQ                         R0 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["currentScreen"]
        4 GETIMPORT                        R3 K4 [UDim2.new]
        6 LOADN                            R4 1
        7 LOADN                            R5 0
        8 LOADN                            R6 1
        9 LOADN                            R7 0
       10 CALL                             R3 4 1
       11 GETTABLEKS                       R4 R1 K5 ["onClose"]
       13 GETTABLEKS                       R5 R1 K6 ["instances"]
       15 GETTABLEKS                       R6 R1 K7 ["assetName"]
       17 GETTABLEKS                       R7 R1 K8 ["pluginGui"]
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R8 R8 K9 ["createElement"]
       22 LOADK                            R9 K10 ["Frame"]
       23 DUPTABLE                         R10 K14 [{["Size"], ["BackgroundTransparency"] = 1}]
       24 SETTABLEKS                       R3 R10 K11 ["Size"]
       26 DUPTABLE                         R11 K18 [{"AssetConfig", "AssetUpload", "AssetUploadResult"}]
       27 GETUPVAL                         R13 1
       28 GETTABLEKS                       R13 R13 K19 ["SCREENS"]
       30 GETTABLEKS                       R13 R13 K20 ["CONFIGURE_ASSET"]
       32 JUMPIFEQ                         R2 R13 ; [+2]
       34 LOADB                            R12 0 +1
       35 LOADB                            R12 1
       36 JUMPIFNOT                        R12 ; [+16]
       37 GETUPVAL                         R12 0
       38 GETTABLEKS                       R12 R12 K9 ["createElement"]
       40 GETUPVAL                         R13 2
       41 DUPTABLE                         R14 K21 [{"Size", "assetName", "onClose", "pluginGui", "instances"}]
       42 SETTABLEKS                       R3 R14 K11 ["Size"]
       44 SETTABLEKS                       R6 R14 K7 ["assetName"]
       46 SETTABLEKS                       R4 R14 K5 ["onClose"]
       48 SETTABLEKS                       R7 R14 K8 ["pluginGui"]
       50 SETTABLEKS                       R5 R14 K6 ["instances"]
       52 CALL                             R12 2 1
       53 SETTABLEKS                       R12 R11 K15 ["AssetConfig"]
       55 GETUPVAL                         R13 1
       56 GETTABLEKS                       R13 R13 K19 ["SCREENS"]
       58 GETTABLEKS                       R13 R13 K22 ["UPLOADING_ASSET"]
       60 JUMPIFEQ                         R2 R13 ; [+2]
       62 LOADB                            R12 0 +1
       63 LOADB                            R12 1
       64 JUMPIFNOT                        R12 ; [+12]
       65 GETUPVAL                         R12 0
       66 GETTABLEKS                       R12 R12 K9 ["createElement"]
       68 GETUPVAL                         R13 3
       69 DUPTABLE                         R14 K23 [{"Size", "onClose", "instances"}]
       70 SETTABLEKS                       R3 R14 K11 ["Size"]
       72 SETTABLEKS                       R4 R14 K5 ["onClose"]
       74 SETTABLEKS                       R5 R14 K6 ["instances"]
       76 CALL                             R12 2 1
       77 SETTABLEKS                       R12 R11 K16 ["AssetUpload"]
       79 GETUPVAL                         R13 1
       80 GETTABLEKS                       R13 R13 K19 ["SCREENS"]
       82 GETTABLEKS                       R13 R13 K24 ["UPLOAD_ASSET_RESULT"]
       84 JUMPIFEQ                         R2 R13 ; [+2]
       86 LOADB                            R12 0 +1
       87 LOADB                            R12 1
       88 JUMPIFNOT                        R12 ; [+12]
       89 GETUPVAL                         R12 0
       90 GETTABLEKS                       R12 R12 K9 ["createElement"]
       92 GETUPVAL                         R13 4
       93 DUPTABLE                         R14 K23 [{"Size", "onClose", "instances"}]
       94 SETTABLEKS                       R3 R14 K11 ["Size"]
       96 SETTABLEKS                       R4 R14 K5 ["onClose"]
       98 SETTABLEKS                       R5 R14 K6 ["instances"]
      100 CALL                             R12 2 1
      101 SETTABLEKS                       R12 R11 K17 ["AssetUploadResult"]
      103 CALL                             R8 3 -1
      104 RETURN                           R8 -1

PROTO_4:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 DUPTABLE                         R2 K1 [{"currentScreen"}]
        6 GETTABLEKS                       R3 R0 K2 ["AssetConfigReducer"]
        8 GETTABLEKS                       R3 R3 K0 ["currentScreen"]
       10 SETTABLEKS                       R3 R2 K0 ["currentScreen"]
       12 RETURN                           R2 1

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
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K9 ["Components"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R4 K10 ["ConvertToPackageWindow"]
       31 GETTABLEKS                       R6 R6 K11 ["AssetConfig"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R4 K10 ["ConvertToPackageWindow"]
       38 GETTABLEKS                       R7 R7 K12 ["AssetUpload"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R4 K10 ["ConvertToPackageWindow"]
       45 GETTABLEKS                       R8 R8 K13 ["AssetUploadResult"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R9 R0 K8 ["Src"]
       52 GETTABLEKS                       R9 R9 K14 ["Util"]
       54 GETTABLEKS                       R9 R9 K15 ["Constants"]
       56 CALL                             R8 1 1
       57 DUPCLOSURE                       R9 K16 [PROTO_0]
       58 CAPTURE                          VAL R8
       59 DUPCLOSURE                       R10 K17 [PROTO_1]
       60 CAPTURE                          VAL R8
       61 DUPCLOSURE                       R11 K18 [PROTO_2]
       62 CAPTURE                          VAL R8
       63 GETTABLEKS                       R12 R2 K19 ["PureComponent"]
       65 LOADK                            R14 K20 ["ScreenSelect"]
       66 NAMECALL                         R12 R12 K21 ["extend"]
       68 CALL                             R12 2 1
       69 DUPCLOSURE                       R13 K22 [PROTO_3]
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R7
       75 SETTABLEKS                       R13 R12 K23 ["render"]
       77 DUPCLOSURE                       R13 K24 [PROTO_4]
       78 GETTABLEKS                       R14 R3 K25 ["connect"]
       80 MOVE                             R15 R13
       81 CALL                             R14 1 1
       82 MOVE                             R15 R12
       83 CALL                             R14 1 -1
       84 RETURN                           R14 -1
