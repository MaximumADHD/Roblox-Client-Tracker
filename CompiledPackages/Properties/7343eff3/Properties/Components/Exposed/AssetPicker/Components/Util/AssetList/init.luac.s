PROTO_0:
        0 DUPTABLE                         R0 K2 [{"Today", "Yesterday"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K3 ["AssetList"]
        3 LOADK                            R4 K0 ["Today"]
        4 NAMECALL                         R1 R1 K4 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Today"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K3 ["AssetList"]
       11 LOADK                            R4 K1 ["Yesterday"]
       12 NAMECALL                         R1 R1 K4 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Yesterday"]
       17 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R0 K2 [DateTime.now]
        2 CALL                             R0 0 1
        3 NAMECALL                         R1 R0 K3 ["ToIsoDate"]
        5 CALL                             R1 1 1
        6 GETIMPORT                        R2 K5 [DateTime.fromUnixTimestamp]
        8 GETTABLEKS                       R4 R0 K7 ["UnixTimestamp"]
       10 SUBK                             R3 R4 K6 [86400]
       11 CALL                             R2 1 1
       12 NAMECALL                         R2 R2 K3 ["ToIsoDate"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 0
       16 MOVE                             R4 R1
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R5 R6 K8 ["locale"]
       20 CALL                             R3 2 1
       21 GETUPVAL                         R4 0
       22 MOVE                             R5 R2
       23 GETUPVAL                         R7 1
       24 GETTABLEKS                       R6 R7 K8 ["locale"]
       26 CALL                             R4 2 -1
       27 RETURN                           R3 -1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["assetItem"]
        2 GETTABLEKS                       R2 R3 K1 ["asset"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R4 R2 K2 ["updateTime"]
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R5 R6 K3 ["locale"]
       10 CALL                             R3 2 1
       11 GETUPVAL                         R4 2
       12 JUMPIFNOTEQ                      R3 R4 ; [+5]
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R3 R4 K4 ["Today"]
       17 JUMP                             ; [+6]
       18 GETUPVAL                         R4 4
       19 JUMPIFNOTEQ                      R3 R4 ; [+4]
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R3 R4 K5 ["Yesterday"]
       24 GETUPVAL                         R4 5
       25 GETUPVAL                         R5 6
       26 DUPTABLE                         R6 K9 [{"layoutOrder", "asset", "lastUpdated", "onAssetSelected"}]
       27 GETUPVAL                         R7 7
       28 CALL                             R7 0 1
       29 SETTABLEKS                       R7 R6 K6 ["layoutOrder"]
       31 SETTABLEKS                       R2 R6 K1 ["asset"]
       33 SETTABLEKS                       R3 R6 K7 ["lastUpdated"]
       35 GETUPVAL                         R8 8
       36 GETTABLEKS                       R7 R8 K8 ["onAssetSelected"]
       38 SETTABLEKS                       R7 R6 K8 ["onAssetSelected"]
       40 CALL                             R4 2 1
       41 GETUPVAL                         R5 9
       42 GETTABLEKS                       R6 R2 K10 ["displayName"]
       44 CALL                             R5 1 -1
       45 RETURN                           R4 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 1
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K2 ["locale"]
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K0 ["useMemo"]
       16 DUPCLOSURE                       R3 K3 [PROTO_1]
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U1
       19 NEWTABLE                         R4 0 1
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R5 R6 K2 ["locale"]
       24 SETLIST                          R4 R5 1 [1]
       26 CALL                             R2 2 2
       27 GETUPVAL                         R4 3
       28 CALL                             R4 0 1
       29 GETUPVAL                         R5 4
       30 CALL                             R5 0 1
       31 GETUPVAL                         R6 5
       32 GETUPVAL                         R7 6
       33 DUPTABLE                         R8 K7 [{"tag", "scroll", "onCanvasPositionChanged"}]
       34 GETTABLEKS                       R9 R0 K4 ["tag"]
       36 SETTABLEKS                       R9 R8 K4 ["tag"]
       38 DUPTABLE                         R9 K10 [{"AutomaticCanvasSize", "CanvasSize"}]
       39 GETIMPORT                        R10 K14 [Enum.AutomaticSize.Y]
       41 SETTABLEKS                       R10 R9 K8 ["AutomaticCanvasSize"]
       43 GETIMPORT                        R10 K17 [UDim2.new]
       45 CALL                             R10 0 1
       46 SETTABLEKS                       R10 R9 K9 ["CanvasSize"]
       48 SETTABLEKS                       R9 R8 K5 ["scroll"]
       50 GETTABLEKS                       R9 R0 K6 ["onCanvasPositionChanged"]
       52 SETTABLEKS                       R9 R8 K6 ["onCanvasPositionChanged"]
       54 DUPTABLE                         R9 K19 [{"AssetItemsContainer"}]
       55 GETUPVAL                         R10 5
       56 GETUPVAL                         R11 7
       57 DUPTABLE                         R12 K21 [{"tag", "Size"}]
       58 LOADK                            R13 K22 ["auto-y col"]
       59 SETTABLEKS                       R13 R12 K4 ["tag"]
       61 GETIMPORT                        R13 K17 [UDim2.new]
       63 LOADN                            R14 1
       64 GETUPVAL                         R17 8
       65 GETTABLEKS                       R16 R17 K23 ["scrollBarWidth"]
       67 MINUS                            R15 R16
       68 LOADN                            R16 0
       69 LOADN                            R17 0
       70 CALL                             R13 4 1
       71 SETTABLEKS                       R13 R12 K20 ["Size"]
       73 GETUPVAL                         R15 9
       74 GETTABLEKS                       R14 R15 K24 ["Dictionary"]
       76 GETTABLEKS                       R13 R14 K25 ["map"]
       78 GETTABLEKS                       R14 R0 K26 ["assetItems"]
       80 NEWCLOSURE                       R15 P2
       81 CAPTURE                          UPVAL U2
       82 CAPTURE                          UPVAL U1
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R3
       86 CAPTURE                          UPVAL U5
       87 CAPTURE                          UPVAL U10
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R0
       90 CAPTURE                          VAL R4
       91 CALL                             R13 2 -1
       92 CALL                             R10 -1 1
       93 SETTABLEKS                       R10 R9 K18 ["AssetItemsContainer"]
       95 CALL                             R6 3 -1
       96 RETURN                           R6 -1

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
       51 GETTABLEKS                       R12 R1 K15 ["Resources"]
       53 GETTABLEKS                       R11 R12 K16 ["Localization"]
       55 GETTABLEKS                       R10 R11 K17 ["Translator"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K7 [require]
       60 GETTABLEKS                       R11 R1 K18 ["Types"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K7 [require]
       65 GETTABLEKS                       R13 R1 K9 ["Util"]
       67 GETTABLEKS                       R12 R13 K19 ["getLocalDateString"]
       69 CALL                             R11 1 1
       70 GETTABLEKS                       R12 R6 K20 ["ScrollView"]
       72 GETTABLEKS                       R13 R6 K21 ["View"]
       74 GETTABLEKS                       R14 R8 K22 ["createNextOrder"]
       76 GETTABLEKS                       R15 R8 K23 ["createUniqueKey"]
       78 GETTABLEKS                       R16 R7 K24 ["createElement"]
       80 DUPCLOSURE                       R17 K25 [PROTO_3]
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R15
       85 CAPTURE                          VAL R14
       86 CAPTURE                          VAL R16
       87 CAPTURE                          VAL R12
       88 CAPTURE                          VAL R13
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R3
       92 RETURN                           R17 1
