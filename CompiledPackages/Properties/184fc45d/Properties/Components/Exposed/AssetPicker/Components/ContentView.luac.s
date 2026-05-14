PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["scrollMoreAssets"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K4 [{"networking", "assetType", "scope", "search"}]
        2 GETTABLEKS                       R3 R0 K0 ["networking"]
        4 SETTABLEKS                       R3 R2 K0 ["networking"]
        6 GETTABLEKS                       R3 R0 K1 ["assetType"]
        8 SETTABLEKS                       R3 R2 K1 ["assetType"]
       10 GETTABLEKS                       R3 R0 K5 ["loadedScope"]
       12 SETTABLEKS                       R3 R2 K2 ["scope"]
       14 GETTABLEKS                       R3 R0 K3 ["search"]
       16 SETTABLEKS                       R3 R2 K3 ["search"]
       18 CALL                             R1 1 1
       19 GETUPVAL                         R2 1
       20 NEWCLOSURE                       R3 P0
       21 CAPTURE                          VAL R1
       22 NEWTABLE                         R4 0 1
       24 GETTABLEKS                       R5 R1 K6 ["scrollMoreAssets"]
       26 SETLIST                          R4 R5 1 [1]
       28 NEWTABLE                         R5 0 1
       30 GETTABLEKS                       R6 R1 K7 ["loadedAssets"]
       32 JUMPIFNOT                        R6 ; [+3]
       33 GETTABLEKS                       R7 R1 K7 ["loadedAssets"]
       35 LENGTH                           R6 R7
       36 SETLIST                          R5 R6 1 [1]
       38 CALL                             R2 3 1
       39 GETUPVAL                         R3 2
       40 CALL                             R3 0 1
       41 GETTABLEKS                       R5 R1 K7 ["loadedAssets"]
       43 JUMPIFEQKNIL                     R5 ; [+6]
       45 GETTABLEKS                       R6 R1 K9 ["loadingStates"]
       47 GETTABLEKS                       R5 R6 K8 ["Scope"]
       49 JUMPIFNOT                        R5 ; [+32]
       50 GETUPVAL                         R4 3
       51 GETUPVAL                         R5 4
       52 DUPTABLE                         R6 K13 [{"anchorPoint", "position", "size"}]
       53 GETIMPORT                        R7 K16 [Vector2.new]
       55 LOADK                            R8 K17 [0.5]
       56 LOADK                            R9 K17 [0.5]
       57 CALL                             R7 2 1
       58 SETTABLEKS                       R7 R6 K10 ["anchorPoint"]
       60 GETIMPORT                        R7 K20 [UDim2.fromScale]
       62 LOADK                            R8 K17 [0.5]
       63 LOADK                            R9 K17 [0.5]
       64 CALL                             R7 2 1
       65 SETTABLEKS                       R7 R6 K11 ["position"]
       67 GETIMPORT                        R7 K22 [UDim2.fromOffset]
       69 GETTABLEKS                       R8 R3 K23 ["Size"]
       71 GETTABLEKS                       R8 R8 K24 ["Size_2300"]
       73 GETTABLEKS                       R9 R3 K23 ["Size"]
       75 GETTABLEKS                       R9 R9 K25 ["Size_600"]
       77 CALL                             R7 2 1
       78 SETTABLEKS                       R7 R6 K12 ["size"]
       80 CALL                             R4 2 1
       81 RETURN                           R4 1
       82 GETTABLEKS                       R6 R1 K7 ["loadedAssets"]
       84 LENGTH                           R5 R6
       85 JUMPIFNOTEQKN                    R5 K26 [0] ; [+12]
       87 GETUPVAL                         R4 3
       88 GETUPVAL                         R5 5
       89 DUPTABLE                         R6 K29 [{"tag", "Text"}]
       90 LOADK                            R7 K30 ["size-full-full text-align-x-center text-align-y-center text-body-small"]
       91 SETTABLEKS                       R7 R6 K27 ["tag"]
       93 LOADK                            R7 K31 ["No results found"]
       94 SETTABLEKS                       R7 R6 K28 ["Text"]
       96 CALL                             R4 2 1
       97 RETURN                           R4 1
       98 GETUPVAL                         R4 3
       99 GETUPVAL                         R5 6
      100 DUPTABLE                         R6 K35 [{"assetItems", "onAssetSelected", "onCanvasPositionChanged"}]
      101 GETTABLEKS                       R7 R1 K7 ["loadedAssets"]
      103 SETTABLEKS                       R7 R6 K32 ["assetItems"]
      105 GETTABLEKS                       R7 R0 K33 ["onAssetSelected"]
      107 SETTABLEKS                       R7 R6 K33 ["onAssetSelected"]
      109 SETTABLEKS                       R2 R6 K34 ["onCanvasPositionChanged"]
      111 CALL                             R4 2 1
      112 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["AssetPicker"]
       10 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K5 ["Parent"]
       15 GETIMPORT                        R3 K7 [require]
       17 GETTABLEKS                       R4 R1 K8 ["Components"]
       19 GETTABLEKS                       R4 R4 K9 ["Util"]
       21 GETTABLEKS                       R4 R4 K10 ["AssetList"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K7 [require]
       26 GETTABLEKS                       R5 R2 K11 ["Foundation"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K7 [require]
       31 GETTABLEKS                       R6 R1 K8 ["Components"]
       33 GETTABLEKS                       R6 R6 K9 ["Util"]
       35 GETTABLEKS                       R6 R6 K12 ["LoadingIndicator"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K7 [require]
       40 GETTABLEKS                       R7 R2 K13 ["React"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K7 [require]
       45 GETTABLEKS                       R8 R1 K14 ["Types"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K7 [require]
       50 GETTABLEKS                       R9 R1 K15 ["Hooks"]
       52 GETTABLEKS                       R9 R9 K16 ["useAssetLoading"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K7 [require]
       57 GETTABLEKS                       R10 R1 K15 ["Hooks"]
       59 GETTABLEKS                       R10 R10 K17 ["useOnScrollEndReached"]
       61 CALL                             R9 1 1
       62 GETTABLEKS                       R10 R4 K18 ["Text"]
       64 GETTABLEKS                       R11 R6 K19 ["createElement"]
       66 GETTABLEKS                       R12 R4 K15 ["Hooks"]
       68 GETTABLEKS                       R12 R12 K20 ["useTokens"]
       70 DUPCLOSURE                       R13 K21 [PROTO_1]
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R12
       74 CAPTURE                          VAL R11
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R3
       78 RETURN                           R13 1
