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
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K8 ["locale"]
       20 CALL                             R3 2 1
       21 GETUPVAL                         R4 0
       22 MOVE                             R5 R2
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R6 R6 K8 ["locale"]
       26 CALL                             R4 2 -1
       27 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["onCanvasPositionChanged"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["assetItem"]
        2 GETTABLEKS                       R1 R1 K1 ["asset"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R3 R1 K2 ["updateTime"]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K3 ["locale"]
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
       31 GETUPVAL                         R6 7
       32 GETTABLEKS                       R6 R6 K7 ["onAssetSelected"]
       34 SETTABLEKS                       R6 R5 K7 ["onAssetSelected"]
       36 CALL                             R3 2 -1
       37 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useMemo"]
       10 DUPCLOSURE                       R3 K3 [PROTO_0]
       11 CAPTURE                          UPVAL U2
       12 NEWTABLE                         R4 0 1
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K4 ["locale"]
       17 SETLIST                          R4 R5 1 [1]
       19 CALL                             R2 2 1
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K2 ["useMemo"]
       23 DUPCLOSURE                       R4 K5 [PROTO_1]
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U2
       26 NEWTABLE                         R5 0 1
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R6 R6 K4 ["locale"]
       31 SETLIST                          R5 R6 1 [1]
       33 CALL                             R3 2 2
       34 GETUPVAL                         R5 4
       35 CALL                             R5 0 1
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R6 R6 K6 ["useRef"]
       39 LOADNIL                          R7
       40 CALL                             R6 1 1
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R7 R7 K7 ["useCallback"]
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
       60 LOADN                            R13 -2
       61 LOADN                            R14 1
       62 LOADN                            R15 0
       63 CALL                             R11 4 1
       64 SETTABLEKS                       R11 R10 K9 ["Size"]
       66 DUPTABLE                         R11 K15 [{"ScrollingFrame"}]
       67 GETUPVAL                         R12 5
       68 GETUPVAL                         R13 7
       69 GETTABLEKS                       R13 R13 K16 ["Components"]
       71 GETTABLEKS                       R13 R13 K14 ["ScrollingFrame"]
       73 DUPTABLE                         R14 K25 [{["native"], ["dataSource"], ["dimensions"], ["renderer"], ["direction"] = "y", ["scrollingFrameRef"], ["onScrollAxisChanged"]}]
       74 DUPTABLE                         R15 K35 [{["BackgroundTransparency"] = 1, ["BorderColor3"], ["BorderSizePixel"] = 2, ["ScrollBarImageColor3"], ["ScrollBarImageTransparency"], ["ScrollBarThickness"] = 6}]
       75 GETTABLEKS                       R16 R5 K36 ["Color"]
       77 GETTABLEKS                       R16 R16 K37 ["Surface"]
       79 GETTABLEKS                       R16 R16 K38 ["Surface_100"]
       81 GETTABLEKS                       R16 R16 K39 ["Color3"]
       83 SETTABLEKS                       R16 R15 K28 ["BorderColor3"]
       85 GETTABLEKS                       R16 R5 K36 ["Color"]
       87 GETTABLEKS                       R16 R16 K40 ["System"]
       89 GETTABLEKS                       R16 R16 K41 ["Neutral"]
       91 GETTABLEKS                       R16 R16 K39 ["Color3"]
       93 SETTABLEKS                       R16 R15 K31 ["ScrollBarImageColor3"]
       95 GETTABLEKS                       R16 R5 K36 ["Color"]
       97 GETTABLEKS                       R16 R16 K40 ["System"]
       99 GETTABLEKS                       R16 R16 K41 ["Neutral"]
      101 GETTABLEKS                       R16 R16 K42 ["Transparency"]
      103 SETTABLEKS                       R16 R15 K32 ["ScrollBarImageTransparency"]
      105 SETTABLEKS                       R15 R14 K17 ["native"]
      107 GETUPVAL                         R15 7
      108 GETTABLEKS                       R15 R15 K43 ["DataSources"]
      110 GETTABLEKS                       R15 R15 K44 ["array"]
      112 GETTABLEKS                       R16 R0 K45 ["assetItems"]
      114 CALL                             R15 1 1
      115 SETTABLEKS                       R15 R14 K18 ["dataSource"]
      117 GETTABLEKS                       R16 R1 K46 ["layout"]
      119 JUMPIFNOTEQKS                    R16 K47 ["List"] ; [+11]
      121 GETUPVAL                         R15 7
      122 GETTABLEKS                       R15 R15 K48 ["Dimensions"]
      124 GETTABLEKS                       R15 R15 K49 ["consistentSize"]
      126 GETUPVAL                         R16 8
      127 GETTABLEKS                       R16 R16 K50 ["listItemHeight"]
      129 CALL                             R15 1 1
      130 JUMP                             ; [+15]
      131 GETUPVAL                         R15 7
      132 GETTABLEKS                       R15 R15 K48 ["Dimensions"]
      134 GETTABLEKS                       R15 R15 K51 ["consistentUDim2"]
      136 GETIMPORT                        R16 K13 [UDim2.new]
      138 LOADK                            R17 K52 [0.33]
      139 LOADN                            R18 0
      140 LOADN                            R19 0
      141 GETUPVAL                         R20 8
      142 GETTABLEKS                       R20 R20 K53 ["gridItemHeight"]
      144 CALL                             R16 4 -1
      145 CALL                             R15 -1 1
      146 SETTABLEKS                       R15 R14 K19 ["dimensions"]
      148 GETUPVAL                         R15 7
      149 GETTABLEKS                       R15 R15 K54 ["Renderers"]
      151 GETTABLEKS                       R15 R15 K55 ["byState"]
      153 NEWCLOSURE                       R16 P3
      154 CAPTURE                          UPVAL U3
      155 CAPTURE                          UPVAL U2
      156 CAPTURE                          VAL R3
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R4
      159 CAPTURE                          UPVAL U5
      160 CAPTURE                          UPVAL U9
      161 CAPTURE                          VAL R0
      162 CALL                             R15 1 1
      163 SETTABLEKS                       R15 R14 K20 ["renderer"]
      165 SETTABLEKS                       R6 R14 K23 ["scrollingFrameRef"]
      167 SETTABLEKS                       R7 R14 K24 ["onScrollAxisChanged"]
      169 CALL                             R12 2 1
      170 SETTABLEKS                       R12 R11 K14 ["ScrollingFrame"]
      172 CALL                             R8 3 -1
      173 RETURN                           R8 -1

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
       17 GETIMPORT                        R4 K1 [script]
       19 GETTABLEKS                       R4 R4 K8 ["AssetItem"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K7 [require]
       24 GETTABLEKS                       R5 R1 K9 ["Util"]
       26 GETTABLEKS                       R5 R5 K10 ["Constants"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K7 [require]
       31 GETTABLEKS                       R6 R2 K11 ["Foundation"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K7 [require]
       36 GETTABLEKS                       R7 R1 K12 ["Contexts"]
       38 GETTABLEKS                       R7 R7 K13 ["LayoutContext"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K7 [require]
       43 GETTABLEKS                       R8 R2 K14 ["React"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K7 [require]
       48 GETTABLEKS                       R9 R1 K15 ["Resources"]
       50 GETTABLEKS                       R9 R9 K16 ["Localization"]
       52 GETTABLEKS                       R9 R9 K17 ["Translator"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K7 [require]
       57 GETTABLEKS                       R10 R1 K18 ["Types"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K7 [require]
       62 GETTABLEKS                       R11 R2 K19 ["UltimateList"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K7 [require]
       67 GETTABLEKS                       R12 R1 K9 ["Util"]
       69 GETTABLEKS                       R12 R12 K20 ["getLocalDateString"]
       71 CALL                             R11 1 1
       72 GETTABLEKS                       R12 R5 K21 ["View"]
       74 GETTABLEKS                       R13 R7 K22 ["createElement"]
       76 GETTABLEKS                       R14 R5 K23 ["Hooks"]
       78 GETTABLEKS                       R14 R14 K24 ["useTokens"]
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
