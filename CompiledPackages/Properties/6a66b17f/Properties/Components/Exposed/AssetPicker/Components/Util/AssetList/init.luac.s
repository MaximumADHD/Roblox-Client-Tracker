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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R1 R2 K1 ["onCanvasPositionChanged"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["assetItem"]
        2 GETTABLEKS                       R1 R2 K1 ["asset"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R3 R1 K2 ["updateTime"]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K3 ["locale"]
       10 CALL                             R2 2 1
       11 GETUPVAL                         R3 2
       12 JUMPIFNOTEQ                      R2 R3 ; [+5]
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R2 R3 K4 ["Today"]
       17 JUMP                             ; [+6]
       18 GETUPVAL                         R3 4
       19 JUMPIFNOTEQ                      R2 R3 ; [+4]
       21 GETUPVAL                         R3 3
       22 GETTABLEKS                       R2 R3 K5 ["Yesterday"]
       24 GETUPVAL                         R3 5
       25 GETUPVAL                         R4 6
       26 DUPTABLE                         R5 K8 [{"asset", "lastUpdated", "onAssetSelected"}]
       27 SETTABLEKS                       R1 R5 K1 ["asset"]
       29 SETTABLEKS                       R2 R5 K6 ["lastUpdated"]
       31 GETUPVAL                         R7 7
       32 GETTABLEKS                       R6 R7 K7 ["onAssetSelected"]
       34 SETTABLEKS                       R6 R5 K7 ["onAssetSelected"]
       36 CALL                             R3 2 -1
       37 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["useMemo"]
       10 DUPCLOSURE                       R3 K3 [PROTO_0]
       11 CAPTURE                          UPVAL U2
       12 NEWTABLE                         R4 0 1
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R5 R6 K4 ["locale"]
       17 SETLIST                          R4 R5 1 [1]
       19 CALL                             R2 2 1
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R3 R4 K2 ["useMemo"]
       23 DUPCLOSURE                       R4 K5 [PROTO_1]
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U2
       26 NEWTABLE                         R5 0 1
       28 GETUPVAL                         R7 2
       29 GETTABLEKS                       R6 R7 K4 ["locale"]
       31 SETLIST                          R5 R6 1 [1]
       33 CALL                             R3 2 2
       34 GETUPVAL                         R5 4
       35 CALL                             R5 0 1
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R6 R7 K6 ["useRef"]
       39 LOADNIL                          R7
       40 CALL                             R6 1 1
       41 GETUPVAL                         R8 0
       42 GETTABLEKS                       R7 R8 K7 ["useCallback"]
       44 NEWCLOSURE                       R8 P2
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R0
       47 NEWTABLE                         R9 0 1
       49 GETTABLEKS                       R10 R0 K8 ["onCanvasPositionChanged"]
       51 SETLIST                          R9 R10 1 [1]
       53 CALL                             R7 2 1
       54 GETUPVAL                         R8 5
       55 GETUPVAL                         R9 6
       56 DUPTABLE                         R10 K10 [{"Size"}]
       57 GETIMPORT                        R11 K13 [UDim2.new]
       59 LOADN                            R12 1
       60 LOADN                            R13 254
       61 LOADN                            R14 1
       62 LOADN                            R15 0
       63 CALL                             R11 4 1
       64 SETTABLEKS                       R11 R10 K9 ["Size"]
       66 DUPTABLE                         R11 K15 [{"ScrollingFrame"}]
       67 GETUPVAL                         R12 5
       68 GETUPVAL                         R15 7
       69 GETTABLEKS                       R14 R15 K16 ["Components"]
       71 GETTABLEKS                       R13 R14 K14 ["ScrollingFrame"]
       73 DUPTABLE                         R14 K24 [{"native", "dataSource", "dimensions", "renderer", "direction", "scrollingFrameRef", "onScrollAxisChanged"}]
       74 DUPTABLE                         R15 K31 [{"BackgroundTransparency", "BorderColor3", "BorderSizePixel", "ScrollBarImageColor3", "ScrollBarImageTransparency", "ScrollBarThickness"}]
       75 LOADN                            R16 1
       76 SETTABLEKS                       R16 R15 K25 ["BackgroundTransparency"]
       78 GETTABLEKS                       R19 R5 K32 ["Color"]
       80 GETTABLEKS                       R18 R19 K33 ["Surface"]
       82 GETTABLEKS                       R17 R18 K34 ["Surface_100"]
       84 GETTABLEKS                       R16 R17 K35 ["Color3"]
       86 SETTABLEKS                       R16 R15 K26 ["BorderColor3"]
       88 LOADN                            R16 2
       89 SETTABLEKS                       R16 R15 K27 ["BorderSizePixel"]
       91 GETTABLEKS                       R19 R5 K32 ["Color"]
       93 GETTABLEKS                       R18 R19 K36 ["System"]
       95 GETTABLEKS                       R17 R18 K37 ["Neutral"]
       97 GETTABLEKS                       R16 R17 K35 ["Color3"]
       99 SETTABLEKS                       R16 R15 K28 ["ScrollBarImageColor3"]
      101 GETTABLEKS                       R19 R5 K32 ["Color"]
      103 GETTABLEKS                       R18 R19 K36 ["System"]
      105 GETTABLEKS                       R17 R18 K37 ["Neutral"]
      107 GETTABLEKS                       R16 R17 K38 ["Transparency"]
      109 SETTABLEKS                       R16 R15 K29 ["ScrollBarImageTransparency"]
      111 LOADN                            R16 6
      112 SETTABLEKS                       R16 R15 K30 ["ScrollBarThickness"]
      114 SETTABLEKS                       R15 R14 K17 ["native"]
      116 GETUPVAL                         R17 7
      117 GETTABLEKS                       R16 R17 K39 ["DataSources"]
      119 GETTABLEKS                       R15 R16 K40 ["array"]
      121 GETTABLEKS                       R16 R0 K41 ["assetItems"]
      123 CALL                             R15 1 1
      124 SETTABLEKS                       R15 R14 K18 ["dataSource"]
      126 GETTABLEKS                       R16 R1 K42 ["layout"]
      128 JUMPIFNOTEQKS                    R16 K43 ["List"] ; [+11]
      130 GETUPVAL                         R17 7
      131 GETTABLEKS                       R16 R17 K44 ["Dimensions"]
      133 GETTABLEKS                       R15 R16 K45 ["consistentSize"]
      135 GETUPVAL                         R17 8
      136 GETTABLEKS                       R16 R17 K46 ["listItemHeight"]
      138 CALL                             R15 1 1
      139 JUMP                             ; [+15]
      140 GETUPVAL                         R17 7
      141 GETTABLEKS                       R16 R17 K44 ["Dimensions"]
      143 GETTABLEKS                       R15 R16 K47 ["consistentUDim2"]
      145 GETIMPORT                        R16 K13 [UDim2.new]
      147 LOADK                            R17 K48 [0.33]
      148 LOADN                            R18 0
      149 LOADN                            R19 0
      150 GETUPVAL                         R21 8
      151 GETTABLEKS                       R20 R21 K49 ["gridItemHeight"]
      153 CALL                             R16 4 -1
      154 CALL                             R15 -1 1
      155 SETTABLEKS                       R15 R14 K19 ["dimensions"]
      157 GETUPVAL                         R17 7
      158 GETTABLEKS                       R16 R17 K50 ["Renderers"]
      160 GETTABLEKS                       R15 R16 K51 ["byState"]
      162 NEWCLOSURE                       R16 P3
      163 CAPTURE                          UPVAL U3
      164 CAPTURE                          UPVAL U2
      165 CAPTURE                          VAL R3
      166 CAPTURE                          VAL R2
      167 CAPTURE                          VAL R4
      168 CAPTURE                          UPVAL U5
      169 CAPTURE                          UPVAL U9
      170 CAPTURE                          VAL R0
      171 CALL                             R15 1 1
      172 SETTABLEKS                       R15 R14 K20 ["renderer"]
      174 LOADK                            R15 K52 ["y"]
      175 SETTABLEKS                       R15 R14 K21 ["direction"]
      177 SETTABLEKS                       R6 R14 K22 ["scrollingFrameRef"]
      179 SETTABLEKS                       R7 R14 K23 ["onScrollAxisChanged"]
      181 CALL                             R12 2 1
      182 SETTABLEKS                       R12 R11 K14 ["ScrollingFrame"]
      184 CALL                             R8 3 -1
      185 RETURN                           R8 -1

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
       24 GETTABLEKS                       R6 R1 K9 ["Util"]
       26 GETTABLEKS                       R5 R6 K10 ["Constants"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K7 [require]
       31 GETTABLEKS                       R6 R2 K11 ["Foundation"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K7 [require]
       36 GETTABLEKS                       R8 R1 K12 ["Contexts"]
       38 GETTABLEKS                       R7 R8 K13 ["LayoutContext"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K7 [require]
       43 GETTABLEKS                       R8 R2 K14 ["React"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K7 [require]
       48 GETTABLEKS                       R11 R1 K15 ["Resources"]
       50 GETTABLEKS                       R10 R11 K16 ["Localization"]
       52 GETTABLEKS                       R9 R10 K17 ["Translator"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K7 [require]
       57 GETTABLEKS                       R10 R1 K18 ["Types"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K7 [require]
       62 GETTABLEKS                       R11 R2 K19 ["UltimateList"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K7 [require]
       67 GETTABLEKS                       R13 R1 K9 ["Util"]
       69 GETTABLEKS                       R12 R13 K20 ["getLocalDateString"]
       71 CALL                             R11 1 1
       72 GETTABLEKS                       R12 R5 K21 ["View"]
       74 GETTABLEKS                       R13 R7 K22 ["createElement"]
       76 GETTABLEKS                       R15 R5 K23 ["Hooks"]
       78 GETTABLEKS                       R14 R15 K24 ["useTokens"]
       80 DUPCLOSURE                       R15 K25 [PROTO_4]
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R11
       85 CAPTURE                          VAL R14
       86 CAPTURE                          VAL R13
       87 CAPTURE                          VAL R12
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R3
       91 RETURN                           R15 1
