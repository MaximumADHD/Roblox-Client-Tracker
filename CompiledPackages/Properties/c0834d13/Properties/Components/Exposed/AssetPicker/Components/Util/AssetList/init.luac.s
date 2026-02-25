PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 DUPTABLE                         R4 K3 [{"layoutOrder", "asset", "onAssetSelected"}]
        3 GETUPVAL                         R5 2
        4 CALL                             R5 0 1
        5 SETTABLEKS                       R5 R4 K0 ["layoutOrder"]
        7 SETTABLEKS                       R0 R4 K1 ["asset"]
        9 GETUPVAL                         R6 3
       10 GETTABLEKS                       R5 R6 K2 ["onAssetSelected"]
       12 SETTABLEKS                       R5 R4 K2 ["onAssetSelected"]
       14 CALL                             R2 2 1
       15 GETUPVAL                         R3 4
       16 GETTABLEKS                       R4 R0 K4 ["displayName"]
       18 CALL                             R3 1 -1
       19 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 GETUPVAL                         R4 3
        6 DUPTABLE                         R5 K3 [{"tag", "scroll", "onCanvasPositionChanged"}]
        7 GETTABLEKS                       R6 R0 K0 ["tag"]
        9 SETTABLEKS                       R6 R5 K0 ["tag"]
       11 DUPTABLE                         R6 K6 [{"AutomaticCanvasSize", "CanvasSize"}]
       12 GETIMPORT                        R7 K10 [Enum.AutomaticSize.Y]
       14 SETTABLEKS                       R7 R6 K4 ["AutomaticCanvasSize"]
       16 GETIMPORT                        R7 K13 [UDim2.new]
       18 CALL                             R7 0 1
       19 SETTABLEKS                       R7 R6 K5 ["CanvasSize"]
       21 SETTABLEKS                       R6 R5 K1 ["scroll"]
       23 GETTABLEKS                       R6 R0 K2 ["onCanvasPositionChanged"]
       25 SETTABLEKS                       R6 R5 K2 ["onCanvasPositionChanged"]
       27 DUPTABLE                         R6 K15 [{"AssetItemsContainer"}]
       28 GETUPVAL                         R7 2
       29 GETUPVAL                         R8 4
       30 DUPTABLE                         R9 K17 [{"tag", "Size"}]
       31 LOADK                            R10 K18 ["auto-y col"]
       32 SETTABLEKS                       R10 R9 K0 ["tag"]
       34 GETIMPORT                        R10 K13 [UDim2.new]
       36 LOADN                            R11 1
       37 GETUPVAL                         R14 5
       38 GETTABLEKS                       R13 R14 K19 ["scrollBarWidth"]
       40 MINUS                            R12 R13
       41 LOADN                            R13 0
       42 LOADN                            R14 0
       43 CALL                             R10 4 1
       44 SETTABLEKS                       R10 R9 K16 ["Size"]
       46 GETUPVAL                         R12 6
       47 GETTABLEKS                       R11 R12 K20 ["Dictionary"]
       49 GETTABLEKS                       R10 R11 K21 ["map"]
       51 GETTABLEKS                       R11 R0 K22 ["assets"]
       53 NEWCLOSURE                       R12 P0
       54 CAPTURE                          UPVAL U2
       55 CAPTURE                          UPVAL U7
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R0
       58 CAPTURE                          VAL R1
       59 CALL                             R10 2 -1
       60 CALL                             R7 -1 1
       61 SETTABLEKS                       R7 R6 K14 ["AssetItemsContainer"]
       63 CALL                             R3 3 -1
       64 RETURN                           R3 -1

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
       17 GETIMPORT                        R5 K1 [script]
       19 GETTABLEKS                       R4 R5 K8 ["AssetItem"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K7 [require]
       24 GETTABLEKS                       R6 R0 K9 ["Util"]
       26 GETTABLEKS                       R5 R6 K10 ["Constants"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K7 [require]
       31 GETTABLEKS                       R6 R2 K11 ["Cryo"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K7 [require]
       36 GETTABLEKS                       R7 R2 K12 ["Foundation"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K7 [require]
       41 GETTABLEKS                       R8 R2 K13 ["React"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K7 [require]
       46 GETTABLEKS                       R9 R2 K14 ["ReactUtils"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K7 [require]
       51 GETTABLEKS                       R10 R1 K15 ["Types"]
       53 CALL                             R9 1 1
       54 GETTABLEKS                       R10 R6 K16 ["ScrollView"]
       56 GETTABLEKS                       R11 R6 K17 ["View"]
       58 GETTABLEKS                       R12 R8 K18 ["createNextOrder"]
       60 GETTABLEKS                       R13 R8 K19 ["createUniqueKey"]
       62 GETTABLEKS                       R14 R7 K20 ["createElement"]
       64 DUPCLOSURE                       R15 K21 [PROTO_1]
       65 CAPTURE                          VAL R13
       66 CAPTURE                          VAL R12
       67 CAPTURE                          VAL R14
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R11
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R3
       73 RETURN                           R15 1
