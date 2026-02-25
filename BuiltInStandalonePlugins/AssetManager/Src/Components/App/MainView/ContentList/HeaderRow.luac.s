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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["MenuContext"]
        4 GETTABLEKS                       R2 R3 K1 ["Column"]
        6 GETTABLE                         R0 R1 R2
        7 DUPTABLE                         R1 K5 [{"ItemsController", "LayoutController", "Localization"}]
        8 GETUPVAL                         R2 2
        9 SETTABLEKS                       R2 R1 K2 ["ItemsController"]
       11 GETUPVAL                         R2 3
       12 SETTABLEKS                       R2 R1 K3 ["LayoutController"]
       14 GETUPVAL                         R2 4
       15 SETTABLEKS                       R2 R1 K4 ["Localization"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R5 0 0
        2 MOVE                             R6 R1
        3 LOADNIL                          R7
        4 LOADNIL                          R8
        5 FORGPREP                         R6
        6 GETTABLEN                        R13 R0 1
        7 JUMPIFNOT                        R13 ; [+13]
        8 GETTABLEKS                       R14 R13 K0 ["Key"]
       10 JUMPIFNOTEQ                      R14 R10 ; [+10]
       12 GETTABLEKS                       R14 R13 K1 ["IsAscending"]
       14 JUMPIFNOT                        R14 ; [+3]
       15 LOADK                            R11 K2 ["Bold"]
       16 LOADK                            R12 K3 ["icon-arrow-up"]
       17 JUMP                             ; [+5]
       18 LOADK                            R11 K2 ["Bold"]
       19 LOADK                            R12 K4 ["icon-arrow-down"]
       20 JUMP                             ; [+2]
       21 LOADK                            R11 K5 [""]
       22 LOADK                            R12 K5 [""]
       23 GETUPVAL                         R14 0
       24 GETTABLEKS                       R13 R14 K6 ["createElement"]
       26 GETUPVAL                         R14 1
       27 NEWTABLE                         R15 2 0
       29 SETTABLEKS                       R9 R15 K7 ["LayoutOrder"]
       31 GETUPVAL                         R17 0
       32 GETTABLEKS                       R16 R17 K8 ["Tag"]
       34 LOADK                            R18 K9 ["X-PadS %*"]
       35 MODK                             R21 R9 K10 [2]
       36 LENGTH                           R23 R1
       37 MODK                             R22 R23 K10 [2]
       38 JUMPIFEQ                         R21 R22 ; [+3]
       40 LOADK                            R20 K11 ["X-Stroke"]
       41 JUMP                             ; [+1]
       42 LOADNIL                          R20
       43 NAMECALL                         R18 R18 K12 ["format"]
       45 CALL                             R18 2 1
       46 MOVE                             R17 R18
       47 SETTABLE                         R17 R15 R16
       48 DUPTABLE                         R16 K14 [{"ColumnHeader"}]
       49 GETUPVAL                         R18 0
       50 GETTABLEKS                       R17 R18 K6 ["createElement"]
       52 GETUPVAL                         R18 1
       53 NEWTABLE                         R19 4 0
       55 NEWCLOSURE                       R20 P0
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R10
       58 SETTABLEKS                       R20 R19 K15 ["OnClick"]
       60 NEWCLOSURE                       R20 P1
       61 CAPTURE                          UPVAL U2
       62 CAPTURE                          UPVAL U3
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R4
       66 SETTABLEKS                       R20 R19 K16 ["OnRightClick"]
       68 GETUPVAL                         R21 0
       69 GETTABLEKS                       R20 R21 K8 ["Tag"]
       71 LOADK                            R22 K17 ["X-Row X-Left X-Middle data-testid=column-header-%*"]
       72 MOVE                             R24 R10
       73 NAMECALL                         R22 R22 K12 ["format"]
       75 CALL                             R22 2 1
       76 MOVE                             R21 R22
       77 SETTABLE                         R21 R19 R20
       78 DUPTABLE                         R20 K20 [{"Text", "ArrowIcon"}]
       79 GETUPVAL                         R22 0
       80 GETTABLEKS                       R21 R22 K6 ["createElement"]
       82 GETUPVAL                         R22 4
       83 NEWTABLE                         R23 4 0
       85 LOADN                            R24 1
       86 SETTABLEKS                       R24 R23 K7 ["LayoutOrder"]
       88 LOADK                            R26 K21 ["AssetProperty"]
       89 MOVE                             R27 R10
       90 NAMECALL                         R24 R4 K22 ["getText"]
       92 CALL                             R24 3 1
       93 SETTABLEKS                       R24 R23 K18 ["Text"]
       95 GETIMPORT                        R24 K26 [Enum.TextTruncate.AtEnd]
       97 SETTABLEKS                       R24 R23 K24 ["TextTruncate"]
       99 GETUPVAL                         R25 0
      100 GETTABLEKS                       R24 R25 K8 ["Tag"]
      102 LOADK                            R26 K27 ["X-Fit %*"]
      103 MOVE                             R28 R11
      104 NAMECALL                         R26 R26 K12 ["format"]
      106 CALL                             R26 2 1
      107 MOVE                             R25 R26
      108 SETTABLE                         R25 R23 R24
      109 CALL                             R21 2 1
      110 SETTABLEKS                       R21 R20 K18 ["Text"]
      112 JUMPIFEQKS                       R11 K5 [""] ; [+22]
      114 GETUPVAL                         R22 0
      115 GETTABLEKS                       R21 R22 K6 ["createElement"]
      117 GETUPVAL                         R22 5
      118 NEWTABLE                         R23 2 0
      120 LOADN                            R24 2
      121 SETTABLEKS                       R24 R23 K7 ["LayoutOrder"]
      123 GETUPVAL                         R25 0
      124 GETTABLEKS                       R24 R25 K8 ["Tag"]
      126 LOADK                            R26 K28 ["%* Icon16"]
      127 MOVE                             R28 R12
      128 NAMECALL                         R26 R26 K12 ["format"]
      130 CALL                             R26 2 1
      131 MOVE                             R25 R26
      132 SETTABLE                         R25 R23 R24
      133 CALL                             R21 2 1
      134 JUMP                             ; [+1]
      135 LOADNIL                          R21
      136 SETTABLEKS                       R21 R20 K19 ["ArrowIcon"]
      138 CALL                             R17 3 1
      139 SETTABLEKS                       R17 R16 K13 ["ColumnHeader"]
      141 CALL                             R13 3 1
      142 SETTABLE                         R13 R5 R9
      143 FORGLOOP                         R6 2 ; [-138]
      145 RETURN                           R5 1

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
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 LOADNIL                          R5
       14 CALL                             R4 1 1
       15 GETUPVAL                         R5 4
       16 NEWCLOSURE                       R6 P0
       17 CAPTURE                          VAL R4
       18 CAPTURE                          VAL R3
       19 NEWTABLE                         R7 0 0
       21 CALL                             R5 2 0
       22 GETUPVAL                         R5 5
       23 CALL                             R5 0 1
       24 GETUPVAL                         R6 6
       25 CALL                             R6 0 2
       26 GETUPVAL                         R8 7
       27 MOVE                             R9 R5
       28 MOVE                             R10 R6
       29 MOVE                             R11 R2
       30 MOVE                             R12 R3
       31 MOVE                             R13 R1
       32 CALL                             R8 5 1
       33 NEWTABLE                         R9 0 0
       35 MOVE                             R10 R8
       36 LOADNIL                          R11
       37 LOADNIL                          R12
       38 FORGPREP                         R10
       39 GETUPVAL                         R15 8
       40 LOADK                            R17 K1 ["ColumnMinSize"]
       41 NAMECALL                         R15 R15 K2 ["GetAttribute"]
       43 CALL                             R15 2 1
       44 SETTABLE                         R15 R9 R13
       45 FORGLOOP                         R10 2 ; [-7]
       47 GETUPVAL                         R11 9
       48 GETTABLEKS                       R10 R11 K3 ["createElement"]
       50 LOADK                            R11 K4 ["ScrollingFrame"]
       51 NEWTABLE                         R12 8 0
       53 GETIMPORT                        R13 K8 [Enum.AutomaticSize.X]
       55 SETTABLEKS                       R13 R12 K9 ["AutomaticCanvasSize"]
       57 GETIMPORT                        R13 K11 [Enum.ScrollingDirection.X]
       59 SETTABLEKS                       R13 R12 K10 ["ScrollingDirection"]
       61 LOADN                            R13 0
       62 SETTABLEKS                       R13 R12 K12 ["ScrollBarThickness"]
       64 LOADB                            R13 0
       65 SETTABLEKS                       R13 R12 K13 ["ScrollingEnabled"]
       67 SETTABLEKS                       R4 R12 K14 ["ref"]
       69 GETUPVAL                         R14 9
       70 GETTABLEKS                       R13 R14 K15 ["Tag"]
       72 LOADK                            R14 K16 ["HeaderRow am-size-full-headerrow"]
       73 SETTABLE                         R14 R12 R13
       74 DUPTABLE                         R13 K19 [{"Contents", "Filler"}]
       75 GETUPVAL                         R15 9
       76 GETTABLEKS                       R14 R15 K3 ["createElement"]
       78 GETUPVAL                         R15 10
       79 NEWTABLE                         R16 8 0
       81 LOADN                            R17 1
       82 SETTABLEKS                       R17 R16 K20 ["LayoutOrder"]
       84 LOADB                            R17 0
       85 SETTABLEKS                       R17 R16 K21 ["UseScale"]
       87 LOADB                            R17 0
       88 SETTABLEKS                       R17 R16 K22 ["ClampSize"]
       90 LOADB                            R17 1
       91 SETTABLEKS                       R17 R16 K23 ["HideBars"]
       93 SETTABLEKS                       R9 R16 K24 ["MinSizes"]
       95 SETTABLEKS                       R7 R16 K25 ["Sizes"]
       97 NEWCLOSURE                       R17 P1
       98 CAPTURE                          VAL R3
       99 SETTABLEKS                       R17 R16 K26 ["OnSizesChange"]
      101 GETUPVAL                         R18 9
      102 GETTABLEKS                       R17 R18 K15 ["Tag"]
      104 LOADK                            R18 K27 ["am-size-fit-headerrow Contrast"]
      105 SETTABLE                         R18 R16 R17
      106 MOVE                             R17 R8
      107 CALL                             R14 3 1
      108 SETTABLEKS                       R14 R13 K17 ["Contents"]
      110 GETUPVAL                         R15 9
      111 GETTABLEKS                       R14 R15 K3 ["createElement"]
      113 GETUPVAL                         R15 11
      114 NEWTABLE                         R16 2 0
      116 LOADN                            R17 2
      117 SETTABLEKS                       R17 R16 K20 ["LayoutOrder"]
      119 GETUPVAL                         R18 9
      120 GETTABLEKS                       R17 R18 K15 ["Tag"]
      122 LOADK                            R18 K28 ["am-size-scrollbar-full"]
      123 SETTABLE                         R18 R16 R17
      124 CALL                             R14 2 1
      125 SETTABLEKS                       R14 R13 K18 ["Filler"]
      127 CALL                             R10 3 -1
      128 RETURN                           R10 -1

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
       68 GETTABLEKS                       R14 R15 K22 ["useSortFilter"]
       70 CALL                             R13 1 1
       71 GETTABLEKS                       R14 R1 K23 ["useEffect"]
       73 GETTABLEKS                       R15 R1 K24 ["useRef"]
       75 GETIMPORT                        R16 K5 [require]
       77 GETTABLEKS                       R18 R0 K16 ["Src"]
       79 GETTABLEKS                       R17 R18 K25 ["Types"]
       81 CALL                             R16 1 1
       82 GETIMPORT                        R17 K5 [require]
       84 GETTABLEKS                       R20 R0 K16 ["Src"]
       86 GETTABLEKS                       R19 R20 K26 ["Resources"]
       88 GETTABLEKS                       R18 R19 K27 ["PluginStyles"]
       90 CALL                             R17 1 1
       91 GETIMPORT                        R18 K5 [require]
       93 GETTABLEKS                       R21 R0 K16 ["Src"]
       95 GETTABLEKS                       R20 R21 K28 ["Util"]
       97 GETTABLEKS                       R19 R20 K29 ["renderContextMenu"]
       99 CALL                             R18 1 1
      100 DUPCLOSURE                       R19 K30 [PROTO_0]
      101 DUPCLOSURE                       R20 K31 [PROTO_3]
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R18
      105 CAPTURE                          VAL R16
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R6
      108 DUPCLOSURE                       R21 K32 [PROTO_7]
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R10
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R15
      113 CAPTURE                          VAL R14
      114 CAPTURE                          VAL R13
      115 CAPTURE                          VAL R12
      116 CAPTURE                          VAL R20
      117 CAPTURE                          VAL R17
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R7
      121 RETURN                           R21 1
