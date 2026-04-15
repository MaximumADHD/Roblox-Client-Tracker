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
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+3]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R4 3
        8 GETTABLEKS                       R3 R4 K0 ["MenuContext"]
       10 GETTABLEKS                       R2 R3 K1 ["Column"]
       12 GETTABLE                         R0 R1 R2
       13 DUPTABLE                         R1 K5 [{"ItemsController", "LayoutController", "Localization"}]
       14 GETUPVAL                         R2 4
       15 SETTABLEKS                       R2 R1 K2 ["ItemsController"]
       17 GETUPVAL                         R2 5
       18 SETTABLEKS                       R2 R1 K3 ["LayoutController"]
       20 GETUPVAL                         R2 6
       21 SETTABLEKS                       R2 R1 K4 ["Localization"]
       23 CALL                             R0 1 0
       24 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R3 0 0
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K0 ["use"]
        5 CALL                             R4 0 1
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R5 R6 K0 ["use"]
        9 CALL                             R5 0 1
       10 GETUPVAL                         R6 2
       11 GETUPVAL                         R9 3
       12 GETTABLEKS                       R8 R9 K1 ["MenuContext"]
       14 GETTABLEKS                       R7 R8 K2 ["Column"]
       16 CALL                             R6 1 1
       17 MOVE                             R7 R1
       18 LOADNIL                          R8
       19 LOADNIL                          R9
       20 FORGPREP                         R7
       21 GETTABLEN                        R14 R0 1
       22 JUMPIFNOT                        R14 ; [+13]
       23 GETTABLEKS                       R15 R14 K3 ["Key"]
       25 JUMPIFNOTEQ                      R15 R11 ; [+10]
       27 GETTABLEKS                       R15 R14 K4 ["IsAscending"]
       29 JUMPIFNOT                        R15 ; [+3]
       30 LOADK                            R12 K5 ["Bold"]
       31 LOADK                            R13 K6 ["icon-arrow-up"]
       32 JUMP                             ; [+5]
       33 LOADK                            R12 K5 ["Bold"]
       34 LOADK                            R13 K7 ["icon-arrow-down"]
       35 JUMP                             ; [+2]
       36 LOADK                            R12 K8 [""]
       37 LOADK                            R13 K8 [""]
       38 GETUPVAL                         R15 4
       39 GETTABLEKS                       R14 R15 K9 ["createElement"]
       41 GETUPVAL                         R15 5
       42 NEWTABLE                         R16 2 0
       44 SETTABLEKS                       R10 R16 K10 ["LayoutOrder"]
       46 GETUPVAL                         R18 4
       47 GETTABLEKS                       R17 R18 K11 ["Tag"]
       49 LOADK                            R19 K12 ["X-PadS %*"]
       50 MODK                             R22 R10 K13 [2]
       51 LENGTH                           R24 R1
       52 MODK                             R23 R24 K13 [2]
       53 JUMPIFEQ                         R22 R23 ; [+3]
       55 LOADK                            R21 K14 ["X-Stroke"]
       56 JUMP                             ; [+1]
       57 LOADNIL                          R21
       58 NAMECALL                         R19 R19 K15 ["format"]
       60 CALL                             R19 2 1
       61 MOVE                             R18 R19
       62 SETTABLE                         R18 R16 R17
       63 DUPTABLE                         R17 K17 [{"ColumnHeader"}]
       64 GETUPVAL                         R19 4
       65 GETTABLEKS                       R18 R19 K9 ["createElement"]
       67 GETUPVAL                         R19 5
       68 NEWTABLE                         R20 4 0
       70 NEWCLOSURE                       R21 P0
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R11
       73 SETTABLEKS                       R21 R20 K18 ["OnClick"]
       75 NEWCLOSURE                       R21 P1
       76 CAPTURE                          UPVAL U6
       77 CAPTURE                          VAL R6
       78 CAPTURE                          UPVAL U7
       79 CAPTURE                          UPVAL U3
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R5
       83 SETTABLEKS                       R21 R20 K19 ["OnRightClick"]
       85 GETUPVAL                         R22 4
       86 GETTABLEKS                       R21 R22 K11 ["Tag"]
       88 LOADK                            R23 K20 ["X-Row X-Left X-Middle data-testid=column-header-%*"]
       89 MOVE                             R25 R11
       90 NAMECALL                         R23 R23 K15 ["format"]
       92 CALL                             R23 2 1
       93 MOVE                             R22 R23
       94 SETTABLE                         R22 R20 R21
       95 DUPTABLE                         R21 K23 [{"Text", "ArrowIcon"}]
       96 GETUPVAL                         R23 4
       97 GETTABLEKS                       R22 R23 K9 ["createElement"]
       99 GETUPVAL                         R23 8
      100 NEWTABLE                         R24 4 0
      102 LOADN                            R25 1
      103 SETTABLEKS                       R25 R24 K10 ["LayoutOrder"]
      105 LOADK                            R27 K24 ["AssetProperty"]
      106 MOVE                             R28 R11
      107 NAMECALL                         R25 R5 K25 ["getText"]
      109 CALL                             R25 3 1
      110 SETTABLEKS                       R25 R24 K21 ["Text"]
      112 GETIMPORT                        R25 K29 [Enum.TextTruncate.AtEnd]
      114 SETTABLEKS                       R25 R24 K27 ["TextTruncate"]
      116 GETUPVAL                         R26 4
      117 GETTABLEKS                       R25 R26 K11 ["Tag"]
      119 LOADK                            R27 K30 ["X-Fit %*"]
      120 MOVE                             R29 R12
      121 NAMECALL                         R27 R27 K15 ["format"]
      123 CALL                             R27 2 1
      124 MOVE                             R26 R27
      125 SETTABLE                         R26 R24 R25
      126 CALL                             R22 2 1
      127 SETTABLEKS                       R22 R21 K21 ["Text"]
      129 JUMPIFEQKS                       R12 K8 [""] ; [+22]
      131 GETUPVAL                         R23 4
      132 GETTABLEKS                       R22 R23 K9 ["createElement"]
      134 GETUPVAL                         R23 9
      135 NEWTABLE                         R24 2 0
      137 LOADN                            R25 2
      138 SETTABLEKS                       R25 R24 K10 ["LayoutOrder"]
      140 GETUPVAL                         R26 4
      141 GETTABLEKS                       R25 R26 K11 ["Tag"]
      143 LOADK                            R27 K31 ["%* Icon16"]
      144 MOVE                             R29 R13
      145 NAMECALL                         R27 R27 K15 ["format"]
      147 CALL                             R27 2 1
      148 MOVE                             R26 R27
      149 SETTABLE                         R26 R24 R25
      150 CALL                             R22 2 1
      151 JUMP                             ; [+1]
      152 LOADNIL                          R22
      153 SETTABLEKS                       R22 R21 K22 ["ArrowIcon"]
      155 CALL                             R18 3 1
      156 SETTABLEKS                       R18 R17 K16 ["ColumnHeader"]
      158 CALL                             R14 3 1
      159 SETTABLE                         R14 R3 R10
      160 FORGLOOP                         R7 2 ; [-140]
      162 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R2
        2 NAMECALL                         R0 R0 K0 ["setListHeaderRow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["current"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
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
       21 MOVE                             R9 R1
       22 CALL                             R6 3 1
       23 NEWTABLE                         R7 0 0
       25 MOVE                             R8 R6
       26 LOADNIL                          R9
       27 LOADNIL                          R10
       28 FORGPREP                         R8
       29 GETUPVAL                         R13 6
       30 LOADK                            R15 K1 ["ColumnMinSize"]
       31 NAMECALL                         R13 R13 K2 ["GetAttribute"]
       33 CALL                             R13 2 1
       34 SETTABLE                         R13 R7 R11
       35 FORGLOOP                         R8 2 ; [-7]
       37 GETUPVAL                         R9 7
       38 GETTABLEKS                       R8 R9 K3 ["createElement"]
       40 LOADK                            R9 K4 ["ScrollingFrame"]
       41 NEWTABLE                         R10 8 0
       43 GETTABLEKS                       R11 R0 K5 ["LayoutOrder"]
       45 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
       47 GETIMPORT                        R11 K9 [Enum.AutomaticSize.X]
       49 SETTABLEKS                       R11 R10 K10 ["AutomaticCanvasSize"]
       51 GETIMPORT                        R11 K12 [Enum.ScrollingDirection.X]
       53 SETTABLEKS                       R11 R10 K11 ["ScrollingDirection"]
       55 LOADN                            R11 0
       56 SETTABLEKS                       R11 R10 K13 ["ScrollBarThickness"]
       58 LOADB                            R11 0
       59 SETTABLEKS                       R11 R10 K14 ["ScrollingEnabled"]
       61 SETTABLEKS                       R2 R10 K15 ["ref"]
       63 GETUPVAL                         R12 7
       64 GETTABLEKS                       R11 R12 K16 ["Tag"]
       66 LOADK                            R13 K17 ["%*"]
       67 GETUPVAL                         R16 8
       68 CALL                             R16 0 1
       69 JUMPIFNOT                        R16 ; [+2]
       70 LOADK                            R15 K18 ["am-size-full-headerrow row gui-object-defaults"]
       71 JUMP                             ; [+1]
       72 LOADK                            R15 K19 ["HeaderRow am-size-full-headerrow"]
       73 NAMECALL                         R13 R13 K20 ["format"]
       75 CALL                             R13 2 1
       76 MOVE                             R12 R13
       77 SETTABLE                         R12 R10 R11
       78 DUPTABLE                         R11 K23 [{"Contents", "Filler"}]
       79 GETUPVAL                         R13 7
       80 GETTABLEKS                       R12 R13 K3 ["createElement"]
       82 GETUPVAL                         R13 9
       83 NEWTABLE                         R14 8 0
       85 LOADN                            R15 1
       86 SETTABLEKS                       R15 R14 K5 ["LayoutOrder"]
       88 LOADB                            R15 0
       89 SETTABLEKS                       R15 R14 K24 ["UseScale"]
       91 LOADB                            R15 0
       92 SETTABLEKS                       R15 R14 K25 ["ClampSize"]
       94 LOADB                            R15 1
       95 SETTABLEKS                       R15 R14 K26 ["HideBars"]
       97 SETTABLEKS                       R7 R14 K27 ["MinSizes"]
       99 SETTABLEKS                       R5 R14 K28 ["Sizes"]
      101 NEWCLOSURE                       R15 P1
      102 CAPTURE                          VAL R1
      103 SETTABLEKS                       R15 R14 K29 ["OnSizesChange"]
      105 GETUPVAL                         R16 7
      106 GETTABLEKS                       R15 R16 K16 ["Tag"]
      108 LOADK                            R17 K17 ["%*"]
      109 GETUPVAL                         R20 8
      110 CALL                             R20 0 1
      111 JUMPIFNOT                        R20 ; [+2]
      112 LOADK                            R19 K30 ["am-size-fit-headerrow auto-x"]
      113 JUMP                             ; [+1]
      114 LOADK                            R19 K31 ["am-size-fit-headerrow Contrast"]
      115 NAMECALL                         R17 R17 K20 ["format"]
      117 CALL                             R17 2 1
      118 MOVE                             R16 R17
      119 SETTABLE                         R16 R14 R15
      120 MOVE                             R15 R6
      121 CALL                             R12 3 1
      122 SETTABLEKS                       R12 R11 K21 ["Contents"]
      124 GETUPVAL                         R13 7
      125 GETTABLEKS                       R12 R13 K3 ["createElement"]
      127 GETUPVAL                         R13 10
      128 NEWTABLE                         R14 2 0
      130 LOADN                            R15 2
      131 SETTABLEKS                       R15 R14 K5 ["LayoutOrder"]
      133 GETUPVAL                         R16 7
      134 GETTABLEKS                       R15 R16 K16 ["Tag"]
      136 LOADK                            R16 K32 ["am-size-scrollbar-full"]
      137 SETTABLE                         R16 R14 R15
      138 CALL                             R12 2 1
      139 SETTABLEKS                       R12 R11 K22 ["Filler"]
      141 CALL                             R8 3 -1
      142 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["Localization"]
       25 GETTABLEKS                       R5 R2 K11 ["UI"]
       27 GETTABLEKS                       R6 R5 K12 ["Image"]
       29 GETTABLEKS                       R7 R5 K13 ["Pane"]
       31 GETTABLEKS                       R8 R5 K14 ["TextLabel"]
       33 GETTABLEKS                       R9 R5 K15 ["SplitPane"]
       35 GETIMPORT                        R10 K5 [require]
       37 GETTABLEKS                       R13 R0 K16 ["Src"]
       39 GETTABLEKS                       R12 R13 K17 ["Controllers"]
       41 GETTABLEKS                       R11 R12 K18 ["ItemsController"]
       43 CALL                             R10 1 1
       44 GETIMPORT                        R11 K5 [require]
       46 GETTABLEKS                       R14 R0 K16 ["Src"]
       48 GETTABLEKS                       R13 R14 K17 ["Controllers"]
       50 GETTABLEKS                       R12 R13 K19 ["LayoutController"]
       52 CALL                             R11 1 1
       53 GETIMPORT                        R12 K5 [require]
       55 GETTABLEKS                       R15 R0 K16 ["Src"]
       57 GETTABLEKS                       R14 R15 K20 ["Hooks"]
       59 GETTABLEKS                       R13 R14 K21 ["useColumns"]
       61 CALL                             R12 1 1
       62 GETIMPORT                        R13 K5 [require]
       64 GETTABLEKS                       R16 R0 K16 ["Src"]
       66 GETTABLEKS                       R15 R16 K20 ["Hooks"]
       68 GETTABLEKS                       R14 R15 K22 ["useContextMenu"]
       70 CALL                             R13 1 1
       71 GETIMPORT                        R14 K5 [require]
       73 GETTABLEKS                       R17 R0 K16 ["Src"]
       75 GETTABLEKS                       R16 R17 K20 ["Hooks"]
       77 GETTABLEKS                       R15 R16 K23 ["useSortFilter"]
       79 CALL                             R14 1 1
       80 GETTABLEKS                       R15 R1 K24 ["useEffect"]
       82 GETTABLEKS                       R16 R1 K25 ["useRef"]
       84 GETIMPORT                        R17 K5 [require]
       86 GETTABLEKS                       R19 R0 K16 ["Src"]
       88 GETTABLEKS                       R18 R19 K26 ["Types"]
       90 CALL                             R17 1 1
       91 GETIMPORT                        R18 K5 [require]
       93 GETTABLEKS                       R21 R0 K16 ["Src"]
       95 GETTABLEKS                       R20 R21 K27 ["Resources"]
       97 GETTABLEKS                       R19 R20 K28 ["PluginStyles"]
       99 CALL                             R18 1 1
      100 GETIMPORT                        R19 K5 [require]
      102 GETTABLEKS                       R22 R0 K16 ["Src"]
      104 GETTABLEKS                       R21 R22 K29 ["Util"]
      106 GETTABLEKS                       R20 R21 K30 ["renderContextMenu"]
      108 CALL                             R19 1 1
      109 GETIMPORT                        R20 K5 [require]
      111 GETTABLEKS                       R23 R0 K16 ["Src"]
      113 GETTABLEKS                       R22 R23 K31 ["Flags"]
      115 GETTABLEKS                       R21 R22 K32 ["getFFlagAmrContextMenuRefactor"]
      117 CALL                             R20 1 1
      118 GETIMPORT                        R21 K5 [require]
      120 GETTABLEKS                       R24 R0 K16 ["Src"]
      122 GETTABLEKS                       R23 R24 K31 ["Flags"]
      124 GETTABLEKS                       R22 R23 K33 ["getFFlagAmrFoundationifyBrowser"]
      126 CALL                             R21 1 1
      127 DUPCLOSURE                       R22 K34 [PROTO_0]
      128 DUPCLOSURE                       R23 K35 [PROTO_3]
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R4
      131 CAPTURE                          VAL R13
      132 CAPTURE                          VAL R17
      133 CAPTURE                          VAL R1
      134 CAPTURE                          VAL R7
      135 CAPTURE                          VAL R20
      136 CAPTURE                          VAL R19
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R6
      139 DUPCLOSURE                       R24 K36 [PROTO_7]
      140 CAPTURE                          VAL R11
      141 CAPTURE                          VAL R16
      142 CAPTURE                          VAL R15
      143 CAPTURE                          VAL R14
      144 CAPTURE                          VAL R12
      145 CAPTURE                          VAL R23
      146 CAPTURE                          VAL R18
      147 CAPTURE                          VAL R1
      148 CAPTURE                          VAL R21
      149 CAPTURE                          VAL R9
      150 CAPTURE                          VAL R7
      151 RETURN                           R24 1
