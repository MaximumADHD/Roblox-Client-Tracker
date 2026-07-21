PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+29]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["current"]
        8 GETTABLEKS                       R2 R2 K1 ["Parent"]
       10 NAMECALL                         R0 R0 K2 ["setRoot"]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R0 1
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K0 ["current"]
       17 GETTABLEKS                       R2 R2 K3 ["AbsoluteSize"]
       19 GETTABLEKS                       R2 R2 K4 ["X"]
       21 NAMECALL                         R0 R0 K5 ["setPluginWidth"]
       23 CALL                             R0 2 0
       24 GETUPVAL                         R0 2
       25 GETUPVAL                         R1 0
       26 GETTABLEKS                       R1 R1 K0 ["current"]
       28 GETTABLEKS                       R1 R1 K3 ["AbsoluteSize"]
       30 GETTABLEKS                       R1 R1 K6 ["Y"]
       32 CALL                             R0 1 0
       33 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+20]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["current"]
        8 GETTABLEKS                       R2 R2 K1 ["AbsoluteSize"]
       10 GETTABLEKS                       R2 R2 K2 ["X"]
       12 NAMECALL                         R0 R0 K3 ["setPluginWidth"]
       14 CALL                             R0 2 0
       15 GETUPVAL                         R0 2
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K0 ["current"]
       19 GETTABLEKS                       R1 R1 K1 ["AbsoluteSize"]
       21 GETTABLEKS                       R1 R1 K4 ["Y"]
       23 CALL                             R0 1 0
       24 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["use"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 LOADN                            R2 0
        6 CALL                             R1 1 2
        7 GETUPVAL                         R3 1
        8 GETIMPORT                        R4 K3 [Vector2.new]
       10 LOADN                            R5 0
       11 LOADN                            R6 0
       12 CALL                             R4 2 -1
       13 CALL                             R3 -1 2
       14 GETUPVAL                         R5 2
       15 CALL                             R5 0 1
       16 GETUPVAL                         R6 3
       17 NEWCLOSURE                       R7 P0
       18 CAPTURE                          VAL R5
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R2
       21 NEWTABLE                         R8 0 0
       23 CALL                             R6 2 0
       24 GETUPVAL                         R6 4
       25 NEWCLOSURE                       R7 P1
       26 CAPTURE                          VAL R5
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R2
       29 NEWTABLE                         R8 0 1
       31 MOVE                             R9 R0
       32 SETLIST                          R8 R9 1 [1]
       34 CALL                             R6 2 1
       35 GETUPVAL                         R7 5
       36 GETTABLEKS                       R7 R7 K2 ["new"]
       38 CALL                             R7 0 1
       39 GETUPVAL                         R8 6
       40 CALL                             R8 0 1
       41 JUMPIFNOT                        R8 ; [+11]
       42 LOADB                            R8 0
       43 LOADN                            R9 0
       44 JUMPIFNOTLT                      R9 R1 ; [+8]
       46 GETUPVAL                         R9 7
       47 GETTABLEKS                       R9 R9 K4 ["MinPanelHeight"]
       49 JUMPIFLT                         R1 R9 ; [+2]
       51 LOADB                            R8 0 +1
       52 LOADB                            R8 1
       53 DUPTABLE                         R9 K8 [{"Toolbar", "ToolSettings", "ToolGizmos"}]
       54 GETUPVAL                         R10 8
       55 GETTABLEKS                       R10 R10 K9 ["createElement"]
       57 GETUPVAL                         R11 9
       58 DUPTABLE                         R12 K12 [{"LayoutOrder", "OnAbsoluteSizeChanged"}]
       59 NAMECALL                         R13 R7 K13 ["getNextOrder"]
       61 CALL                             R13 1 1
       62 SETTABLEKS                       R13 R12 K10 ["LayoutOrder"]
       64 SETTABLEKS                       R4 R12 K11 ["OnAbsoluteSizeChanged"]
       66 CALL                             R10 2 1
       67 SETTABLEKS                       R10 R9 K5 ["Toolbar"]
       69 GETUPVAL                         R10 8
       70 GETTABLEKS                       R10 R10 K9 ["createElement"]
       72 GETUPVAL                         R11 10
       73 DUPTABLE                         R12 K17 [{"LayoutOrder", "Size", "AutomaticSize", "UseScrollingFrame"}]
       74 NAMECALL                         R13 R7 K13 ["getNextOrder"]
       76 CALL                             R13 1 1
       77 SETTABLEKS                       R13 R12 K10 ["LayoutOrder"]
       79 JUMPIFNOT                        R8 ; [+2]
       80 LOADNIL                          R13
       81 JUMP                             ; [+9]
       82 GETIMPORT                        R13 K19 [UDim2.new]
       84 LOADN                            R14 1
       85 LOADN                            R15 0
       86 LOADN                            R16 1
       87 GETTABLEKS                       R18 R3 K20 ["Y"]
       89 MINUS                            R17 R18
       90 CALL                             R13 4 1
       91 SETTABLEKS                       R13 R12 K14 ["Size"]
       93 JUMPIFNOT                        R8 ; [+3]
       94 GETIMPORT                        R13 K22 [Enum.AutomaticSize.Y]
       96 JUMP                             ; [+2]
       97 GETIMPORT                        R13 K24 [Enum.AutomaticSize.None]
       99 SETTABLEKS                       R13 R12 K15 ["AutomaticSize"]
      101 JUMPIFNOT                        R8 ; [+2]
      102 LOADB                            R13 0
      103 JUMP                             ; [+1]
      104 LOADB                            R13 1
      105 SETTABLEKS                       R13 R12 K16 ["UseScrollingFrame"]
      107 CALL                             R10 2 1
      108 SETTABLEKS                       R10 R9 K6 ["ToolSettings"]
      110 GETUPVAL                         R10 8
      111 GETTABLEKS                       R10 R10 K9 ["createElement"]
      113 GETUPVAL                         R11 11
      114 DUPTABLE                         R12 K25 [{"LayoutOrder", "Size"}]
      115 NAMECALL                         R13 R7 K13 ["getNextOrder"]
      117 CALL                             R13 1 1
      118 SETTABLEKS                       R13 R12 K10 ["LayoutOrder"]
      120 GETIMPORT                        R13 K19 [UDim2.new]
      122 CALL                             R13 0 1
      123 SETTABLEKS                       R13 R12 K14 ["Size"]
      125 CALL                             R10 2 1
      126 SETTABLEKS                       R10 R9 K7 ["ToolGizmos"]
      128 GETUPVAL                         R10 8
      129 GETTABLEKS                       R10 R10 K9 ["createElement"]
      131 GETUPVAL                         R11 12
      132 NEWTABLE                         R12 8 0
      134 SETTABLEKS                       R5 R12 K26 ["ForwardRef"]
      136 GETIMPORT                        R13 K28 [UDim2.fromScale]
      138 LOADN                            R14 1
      139 LOADN                            R15 1
      140 CALL                             R13 2 1
      141 SETTABLEKS                       R13 R12 K14 ["Size"]
      143 GETIMPORT                        R13 K31 [Enum.FillDirection.Vertical]
      145 SETTABLEKS                       R13 R12 K32 ["Layout"]
      147 GETIMPORT                        R13 K35 [Enum.VerticalAlignment.Top]
      149 SETTABLEKS                       R13 R12 K33 ["VerticalAlignment"]
      151 GETUPVAL                         R13 8
      152 GETTABLEKS                       R13 R13 K36 ["Change"]
      154 GETTABLEKS                       R13 R13 K37 ["AbsoluteSize"]
      156 SETTABLE                         R6 R12 R13
      157 JUMPIFNOT                        R8 ; [+26]
      158 DUPTABLE                         R13 K39 [{"AppScroller"}]
      159 GETUPVAL                         R14 8
      160 GETTABLEKS                       R14 R14 K9 ["createElement"]
      162 GETUPVAL                         R15 13
      163 DUPTABLE                         R16 K41 [{"Size", "Layout", "AutomaticCanvasSize"}]
      164 GETIMPORT                        R17 K28 [UDim2.fromScale]
      166 LOADN                            R18 1
      167 LOADN                            R19 1
      168 CALL                             R17 2 1
      169 SETTABLEKS                       R17 R16 K14 ["Size"]
      171 GETIMPORT                        R17 K31 [Enum.FillDirection.Vertical]
      173 SETTABLEKS                       R17 R16 K32 ["Layout"]
      175 GETIMPORT                        R17 K22 [Enum.AutomaticSize.Y]
      177 SETTABLEKS                       R17 R16 K40 ["AutomaticCanvasSize"]
      179 MOVE                             R17 R9
      180 CALL                             R14 3 1
      181 SETTABLEKS                       R14 R13 K38 ["AppScroller"]
      183 JUMP                             ; [+1]
      184 MOVE                             R13 R9
      185 CALL                             R10 3 -1
      186 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
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
       21 GETTABLEKS                       R3 R2 K9 ["Util"]
       23 GETTABLEKS                       R3 R3 K10 ["LayoutOrderIterator"]
       25 GETTABLEKS                       R4 R1 K11 ["useCallback"]
       27 GETTABLEKS                       R5 R1 K12 ["useEffect"]
       29 GETTABLEKS                       R6 R1 K13 ["useRef"]
       31 GETTABLEKS                       R7 R1 K14 ["useState"]
       33 GETTABLEKS                       R8 R2 K15 ["UI"]
       35 GETTABLEKS                       R9 R8 K16 ["Pane"]
       37 GETTABLEKS                       R10 R8 K17 ["ScrollingFrame"]
       39 GETIMPORT                        R11 K5 [require]
       41 GETTABLEKS                       R12 R0 K18 ["Src"]
       43 GETTABLEKS                       R12 R12 K19 ["Components"]
       45 GETTABLEKS                       R12 R12 K20 ["Toolbar"]
       47 CALL                             R11 1 1
       48 GETIMPORT                        R12 K5 [require]
       50 GETTABLEKS                       R13 R0 K18 ["Src"]
       52 GETTABLEKS                       R13 R13 K19 ["Components"]
       54 GETTABLEKS                       R13 R13 K21 ["ToolGizmos"]
       56 CALL                             R12 1 1
       57 GETIMPORT                        R13 K5 [require]
       59 GETTABLEKS                       R14 R0 K18 ["Src"]
       61 GETTABLEKS                       R14 R14 K19 ["Components"]
       63 GETTABLEKS                       R14 R14 K22 ["ToolSettings"]
       65 CALL                             R13 1 1
       66 GETIMPORT                        R14 K5 [require]
       68 GETTABLEKS                       R15 R0 K18 ["Src"]
       70 GETTABLEKS                       R15 R15 K23 ["Controllers"]
       72 GETTABLEKS                       R15 R15 K24 ["PluginController"]
       74 CALL                             R14 1 1
       75 GETIMPORT                        R15 K5 [require]
       77 GETTABLEKS                       R16 R0 K18 ["Src"]
       79 GETTABLEKS                       R16 R16 K25 ["Resources"]
       81 GETTABLEKS                       R16 R16 K26 ["Constants"]
       83 CALL                             R15 1 1
       84 GETIMPORT                        R16 K5 [require]
       86 GETTABLEKS                       R17 R0 K18 ["Src"]
       88 GETTABLEKS                       R17 R17 K27 ["Flags"]
       90 GETTABLEKS                       R17 R17 K28 ["getFFlagTerrainEditorPanelHeightResize"]
       92 CALL                             R16 1 1
       93 DUPCLOSURE                       R17 K29 [PROTO_2]
       94 CAPTURE                          VAL R14
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R16
      101 CAPTURE                          VAL R15
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R11
      104 CAPTURE                          VAL R13
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R9
      107 CAPTURE                          VAL R10
      108 RETURN                           R17 1
