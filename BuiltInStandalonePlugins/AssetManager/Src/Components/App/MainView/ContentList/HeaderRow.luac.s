PROTO_0:
        0 JUMPIFNOT                        R0 ; [+13]
        1 GETTABLEKS                       R2 R0 K0 ["Key"]
        3 JUMPIFNOTEQ                      R2 R1 ; [+10]
        5 GETTABLEKS                       R2 R0 K1 ["IsAscending"]
        7 JUMPIFNOT                        R2 ; [+3]
        8 LOADK                            R2 K2 ["Bold"]
        9 LOADK                            R3 K3 ["icon-arrow-up"]
       10 RETURN                           R2 2
       11 LOADK                            R2 K2 ["Bold"]
       12 LOADK                            R3 K4 ["icon-arrow-down"]
       13 RETURN                           R2 2
       14 LOADK                            R2 K5 [""]
       15 LOADK                            R3 K5 [""]
       16 RETURN                           R2 2

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["addSort"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["use"]
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K0 ["use"]
        9 CALL                             R4 0 1
       10 GETUPVAL                         R5 2
       11 GETUPVAL                         R6 3
       12 GETTABLEKS                       R6 R6 K1 ["MenuContext"]
       14 GETTABLEKS                       R6 R6 K2 ["Column"]
       16 CALL                             R5 1 1
       17 MOVE                             R6 R1
       18 LOADNIL                          R7
       19 LOADNIL                          R8
       20 FORGPREP                         R6
       21 GETTABLEN                        R13 R0 1
       22 JUMPIFNOT                        R13 ; [+13]
       23 GETTABLEKS                       R14 R13 K3 ["Key"]
       25 JUMPIFNOTEQ                      R14 R10 ; [+10]
       27 GETTABLEKS                       R14 R13 K4 ["IsAscending"]
       29 JUMPIFNOT                        R14 ; [+3]
       30 LOADK                            R11 K5 ["Bold"]
       31 LOADK                            R12 K6 ["icon-arrow-up"]
       32 JUMP                             ; [+5]
       33 LOADK                            R11 K5 ["Bold"]
       34 LOADK                            R12 K7 ["icon-arrow-down"]
       35 JUMP                             ; [+2]
       36 LOADK                            R11 K8 [""]
       37 LOADK                            R12 K8 [""]
       38 GETUPVAL                         R14 3
       39 GETTABLEKS                       R14 R14 K9 ["AssetInfoField"]
       41 GETTABLEKS                       R14 R14 K10 ["AssetId"]
       43 JUMPIFNOTEQ                      R10 R14 ; [+7]
       45 LOADK                            R15 K11 ["ItemProperty"]
       46 LOADK                            R16 K12 ["ItemId"]
       47 NAMECALL                         R13 R4 K13 ["getText"]
       49 CALL                             R13 3 1
       50 JUMP                             ; [+18]
       51 GETUPVAL                         R14 3
       52 GETTABLEKS                       R14 R14 K9 ["AssetInfoField"]
       54 GETTABLEKS                       R14 R14 K14 ["AssetType"]
       56 JUMPIFNOTEQ                      R10 R14 ; [+7]
       58 LOADK                            R15 K11 ["ItemProperty"]
       59 LOADK                            R16 K15 ["ItemType"]
       60 NAMECALL                         R13 R4 K13 ["getText"]
       62 CALL                             R13 3 1
       63 JUMP                             ; [+5]
       64 LOADK                            R15 K16 ["AssetProperty"]
       65 MOVE                             R16 R10
       66 NAMECALL                         R13 R4 K13 ["getText"]
       68 CALL                             R13 3 1
       69 GETUPVAL                         R14 4
       70 GETTABLEKS                       R14 R14 K17 ["createElement"]
       72 GETUPVAL                         R15 5
       73 NEWTABLE                         R16 2 0
       75 SETTABLEKS                       R9 R16 K18 ["LayoutOrder"]
       77 GETUPVAL                         R17 4
       78 GETTABLEKS                       R17 R17 K19 ["Tag"]
       80 LOADK                            R19 K20 ["X-PadS %*"]
       81 MODK                             R22 R9 K21 [2]
       82 LENGTH                           R24 R1
       83 MODK                             R23 R24 K21 [2]
       84 JUMPIFEQ                         R22 R23 ; [+3]
       86 LOADK                            R21 K22 ["X-Stroke"]
       87 JUMP                             ; [+1]
       88 LOADNIL                          R21
       89 NAMECALL                         R19 R19 K23 ["format"]
       91 CALL                             R19 2 1
       92 MOVE                             R18 R19
       93 SETTABLE                         R18 R16 R17
       94 DUPTABLE                         R17 K25 [{"ColumnHeader"}]
       95 GETUPVAL                         R18 4
       96 GETTABLEKS                       R18 R18 K17 ["createElement"]
       98 GETUPVAL                         R19 5
       99 NEWTABLE                         R20 4 0
      101 NEWCLOSURE                       R21 P0
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R10
      104 SETTABLEKS                       R21 R20 K26 ["OnClick"]
      106 NEWCLOSURE                       R21 P1
      107 CAPTURE                          VAL R5
      108 SETTABLEKS                       R21 R20 K27 ["OnRightClick"]
      110 GETUPVAL                         R21 4
      111 GETTABLEKS                       R21 R21 K19 ["Tag"]
      113 LOADK                            R23 K28 ["X-Row X-Left X-Middle data-testid=column-header-%*"]
      114 MOVE                             R25 R10
      115 NAMECALL                         R23 R23 K23 ["format"]
      117 CALL                             R23 2 1
      118 MOVE                             R22 R23
      119 SETTABLE                         R22 R20 R21
      120 DUPTABLE                         R21 K31 [{"Text", "ArrowIcon"}]
      121 GETUPVAL                         R22 4
      122 GETTABLEKS                       R22 R22 K17 ["createElement"]
      124 GETUPVAL                         R23 6
      125 NEWTABLE                         R24 4 0
      127 LOADN                            R25 1
      128 SETTABLEKS                       R25 R24 K18 ["LayoutOrder"]
      130 GETUPVAL                         R26 7
      131 CALL                             R26 0 1
      132 JUMPIFNOT                        R26 ; [+2]
      133 MOVE                             R25 R13
      134 JUMP                             ; [+5]
      135 LOADK                            R27 K16 ["AssetProperty"]
      136 MOVE                             R28 R10
      137 NAMECALL                         R25 R4 K13 ["getText"]
      139 CALL                             R25 3 1
      140 SETTABLEKS                       R25 R24 K29 ["Text"]
      142 GETIMPORT                        R25 K35 [Enum.TextTruncate.AtEnd]
      144 SETTABLEKS                       R25 R24 K33 ["TextTruncate"]
      146 GETUPVAL                         R25 4
      147 GETTABLEKS                       R25 R25 K19 ["Tag"]
      149 LOADK                            R27 K36 ["X-Fit %*"]
      150 MOVE                             R29 R11
      151 NAMECALL                         R27 R27 K23 ["format"]
      153 CALL                             R27 2 1
      154 MOVE                             R26 R27
      155 SETTABLE                         R26 R24 R25
      156 CALL                             R22 2 1
      157 SETTABLEKS                       R22 R21 K29 ["Text"]
      159 JUMPIFEQKS                       R11 K8 [""] ; [+22]
      161 GETUPVAL                         R22 4
      162 GETTABLEKS                       R22 R22 K17 ["createElement"]
      164 GETUPVAL                         R23 8
      165 NEWTABLE                         R24 2 0
      167 LOADN                            R25 2
      168 SETTABLEKS                       R25 R24 K18 ["LayoutOrder"]
      170 GETUPVAL                         R25 4
      171 GETTABLEKS                       R25 R25 K19 ["Tag"]
      173 LOADK                            R27 K37 ["%* Icon16"]
      174 MOVE                             R29 R12
      175 NAMECALL                         R27 R27 K23 ["format"]
      177 CALL                             R27 2 1
      178 MOVE                             R26 R27
      179 SETTABLE                         R26 R24 R25
      180 CALL                             R22 2 1
      181 JUMP                             ; [+1]
      182 LOADNIL                          R22
      183 SETTABLEKS                       R22 R21 K30 ["ArrowIcon"]
      185 CALL                             R18 3 1
      186 SETTABLEKS                       R18 R17 K24 ["ColumnHeader"]
      188 CALL                             R14 3 1
      189 SETTABLE                         R14 R2 R9
      190 FORGLOOP                         R6 2 ; [-170]
      192 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R2
        2 NAMECALL                         R0 R0 K0 ["setListHeaderRow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["current"]
        8 NAMECALL                         R0 R0 K1 ["setListHeaderRow"]
       10 CALL                             R0 2 0
       11 NEWCLOSURE                       R0 P0
       12 CAPTURE                          UPVAL U1
       13 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["setColumnWidths"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 LOADNIL                          R3
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 2
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R1
       11 NEWTABLE                         R5 0 0
       13 CALL                             R3 2 0
       14 GETUPVAL                         R3 3
       15 CALL                             R3 0 1
       16 GETUPVAL                         R4 4
       17 CALL                             R4 0 2
       18 GETUPVAL                         R6 5
       19 MOVE                             R7 R3
       20 MOVE                             R8 R4
       21 CALL                             R6 2 1
       22 NEWTABLE                         R7 0 0
       24 MOVE                             R8 R6
       25 LOADNIL                          R9
       26 LOADNIL                          R10
       27 FORGPREP                         R8
       28 GETUPVAL                         R13 6
       29 LOADK                            R15 K1 ["ColumnMinSize"]
       30 NAMECALL                         R13 R13 K2 ["GetAttribute"]
       32 CALL                             R13 2 1
       33 SETTABLE                         R13 R7 R11
       34 FORGLOOP                         R8 2 ; [-7]
       36 GETUPVAL                         R8 7
       37 GETTABLEKS                       R8 R8 K3 ["createElement"]
       39 LOADK                            R9 K4 ["ScrollingFrame"]
       40 NEWTABLE                         R10 8 0
       42 GETTABLEKS                       R11 R0 K5 ["LayoutOrder"]
       44 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
       46 GETIMPORT                        R11 K9 [Enum.AutomaticSize.X]
       48 SETTABLEKS                       R11 R10 K10 ["AutomaticCanvasSize"]
       50 GETIMPORT                        R11 K12 [Enum.ScrollingDirection.X]
       52 SETTABLEKS                       R11 R10 K11 ["ScrollingDirection"]
       54 LOADN                            R11 0
       55 SETTABLEKS                       R11 R10 K13 ["ScrollBarThickness"]
       57 LOADB                            R11 0
       58 SETTABLEKS                       R11 R10 K14 ["ScrollingEnabled"]
       60 SETTABLEKS                       R2 R10 K15 ["ref"]
       62 GETUPVAL                         R11 7
       63 GETTABLEKS                       R11 R11 K16 ["Tag"]
       65 LOADK                            R13 K17 ["%*"]
       66 GETUPVAL                         R16 8
       67 CALL                             R16 0 1
       68 JUMPIFNOT                        R16 ; [+2]
       69 LOADK                            R15 K18 ["am-size-full-headerrow row gui-object-defaults"]
       70 JUMP                             ; [+1]
       71 LOADK                            R15 K19 ["HeaderRow am-size-full-headerrow"]
       72 NAMECALL                         R13 R13 K20 ["format"]
       74 CALL                             R13 2 1
       75 MOVE                             R12 R13
       76 SETTABLE                         R12 R10 R11
       77 DUPTABLE                         R11 K23 [{"Contents", "Filler"}]
       78 GETUPVAL                         R12 7
       79 GETTABLEKS                       R12 R12 K3 ["createElement"]
       81 GETUPVAL                         R13 9
       82 NEWTABLE                         R14 8 0
       84 LOADN                            R15 1
       85 SETTABLEKS                       R15 R14 K5 ["LayoutOrder"]
       87 LOADB                            R15 0
       88 SETTABLEKS                       R15 R14 K24 ["UseScale"]
       90 LOADB                            R15 0
       91 SETTABLEKS                       R15 R14 K25 ["ClampSize"]
       93 LOADB                            R15 1
       94 SETTABLEKS                       R15 R14 K26 ["HideBars"]
       96 SETTABLEKS                       R7 R14 K27 ["MinSizes"]
       98 SETTABLEKS                       R5 R14 K28 ["Sizes"]
      100 NEWCLOSURE                       R15 P1
      101 CAPTURE                          VAL R1
      102 SETTABLEKS                       R15 R14 K29 ["OnSizesChange"]
      104 GETUPVAL                         R15 7
      105 GETTABLEKS                       R15 R15 K16 ["Tag"]
      107 LOADK                            R17 K17 ["%*"]
      108 GETUPVAL                         R20 8
      109 CALL                             R20 0 1
      110 JUMPIFNOT                        R20 ; [+2]
      111 LOADK                            R19 K30 ["am-size-fit-headerrow auto-x"]
      112 JUMP                             ; [+1]
      113 LOADK                            R19 K31 ["am-size-fit-headerrow Contrast"]
      114 NAMECALL                         R17 R17 K20 ["format"]
      116 CALL                             R17 2 1
      117 MOVE                             R16 R17
      118 SETTABLE                         R16 R14 R15
      119 MOVE                             R15 R6
      120 CALL                             R12 3 1
      121 SETTABLEKS                       R12 R11 K21 ["Contents"]
      123 GETUPVAL                         R12 7
      124 GETTABLEKS                       R12 R12 K3 ["createElement"]
      126 GETUPVAL                         R13 10
      127 NEWTABLE                         R14 2 0
      129 LOADN                            R15 2
      130 SETTABLEKS                       R15 R14 K5 ["LayoutOrder"]
      132 GETUPVAL                         R15 7
      133 GETTABLEKS                       R15 R15 K16 ["Tag"]
      135 LOADK                            R16 K32 ["am-size-scrollbar-full"]
      136 SETTABLE                         R16 R14 R15
      137 CALL                             R12 2 1
      138 SETTABLEKS                       R12 R11 K22 ["Filler"]
      140 CALL                             R8 3 -1
      141 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["Localization"]
       25 GETTABLEKS                       R5 R2 K11 ["UI"]
       27 GETTABLEKS                       R6 R5 K12 ["Image"]
       29 GETTABLEKS                       R7 R5 K13 ["Pane"]
       31 GETTABLEKS                       R8 R5 K14 ["TextLabel"]
       33 GETTABLEKS                       R9 R5 K15 ["SplitPane"]
       35 GETIMPORT                        R10 K5 [require]
       37 GETTABLEKS                       R11 R0 K16 ["Src"]
       39 GETTABLEKS                       R11 R11 K17 ["Controllers"]
       41 GETTABLEKS                       R11 R11 K18 ["ItemsController"]
       43 CALL                             R10 1 1
       44 GETIMPORT                        R11 K5 [require]
       46 GETTABLEKS                       R12 R0 K16 ["Src"]
       48 GETTABLEKS                       R12 R12 K17 ["Controllers"]
       50 GETTABLEKS                       R12 R12 K19 ["LayoutController"]
       52 CALL                             R11 1 1
       53 GETIMPORT                        R12 K5 [require]
       55 GETTABLEKS                       R13 R0 K16 ["Src"]
       57 GETTABLEKS                       R13 R13 K20 ["Hooks"]
       59 GETTABLEKS                       R13 R13 K21 ["useColumns"]
       61 CALL                             R12 1 1
       62 GETIMPORT                        R13 K5 [require]
       64 GETTABLEKS                       R14 R0 K16 ["Src"]
       66 GETTABLEKS                       R14 R14 K20 ["Hooks"]
       68 GETTABLEKS                       R14 R14 K22 ["useContextMenu"]
       70 CALL                             R13 1 1
       71 GETIMPORT                        R14 K5 [require]
       73 GETTABLEKS                       R15 R0 K16 ["Src"]
       75 GETTABLEKS                       R15 R15 K20 ["Hooks"]
       77 GETTABLEKS                       R15 R15 K23 ["useSortFilter"]
       79 CALL                             R14 1 1
       80 GETTABLEKS                       R15 R1 K24 ["useEffect"]
       82 GETTABLEKS                       R16 R1 K25 ["useRef"]
       84 GETIMPORT                        R17 K5 [require]
       86 GETTABLEKS                       R18 R0 K16 ["Src"]
       88 GETTABLEKS                       R18 R18 K26 ["Types"]
       90 CALL                             R17 1 1
       91 GETIMPORT                        R18 K5 [require]
       93 GETTABLEKS                       R19 R0 K16 ["Src"]
       95 GETTABLEKS                       R19 R19 K27 ["Resources"]
       97 GETTABLEKS                       R19 R19 K28 ["PluginStyles"]
       99 CALL                             R18 1 1
      100 GETIMPORT                        R19 K5 [require]
      102 GETTABLEKS                       R20 R0 K16 ["Src"]
      104 GETTABLEKS                       R20 R20 K29 ["Flags"]
      106 GETTABLEKS                       R20 R20 K30 ["getFFlagAmrFoundationifyBrowser"]
      108 CALL                             R19 1 1
      109 GETIMPORT                        R20 K5 [require]
      111 GETTABLEKS                       R21 R0 K16 ["Src"]
      113 GETTABLEKS                       R21 R21 K29 ["Flags"]
      115 GETTABLEKS                       R21 R21 K31 ["getFFlagAmrAssetIdAndTypeRename"]
      117 CALL                             R20 1 1
      118 DUPCLOSURE                       R21 K32 [PROTO_0]
      119 DUPCLOSURE                       R22 K33 [PROTO_3]
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R17
      124 CAPTURE                          VAL R1
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R20
      128 CAPTURE                          VAL R6
      129 DUPCLOSURE                       R23 K34 [PROTO_7]
      130 CAPTURE                          VAL R11
      131 CAPTURE                          VAL R16
      132 CAPTURE                          VAL R15
      133 CAPTURE                          VAL R14
      134 CAPTURE                          VAL R12
      135 CAPTURE                          VAL R22
      136 CAPTURE                          VAL R18
      137 CAPTURE                          VAL R1
      138 CAPTURE                          VAL R19
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R7
      141 RETURN                           R23 1
