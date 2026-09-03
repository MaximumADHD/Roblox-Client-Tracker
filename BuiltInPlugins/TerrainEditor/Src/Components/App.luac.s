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
        4 LOADNIL                          R1
        5 GETUPVAL                         R2 1
        6 CALL                             R2 0 1
        7 JUMPIFNOT                        R2 ; [+4]
        8 GETUPVAL                         R2 2
        9 MOVE                             R3 R0
       10 CALL                             R2 1 1
       11 MOVE                             R1 R2
       12 GETUPVAL                         R2 3
       13 LOADN                            R3 0
       14 CALL                             R2 1 2
       15 GETUPVAL                         R4 3
       16 GETIMPORT                        R5 K3 [Vector2.new]
       18 LOADN                            R6 0
       19 LOADN                            R7 0
       20 CALL                             R5 2 -1
       21 CALL                             R4 -1 2
       22 GETUPVAL                         R6 4
       23 CALL                             R6 0 1
       24 GETUPVAL                         R7 5
       25 NEWCLOSURE                       R8 P0
       26 CAPTURE                          VAL R6
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R3
       29 NEWTABLE                         R9 0 0
       31 CALL                             R7 2 0
       32 GETUPVAL                         R7 6
       33 NEWCLOSURE                       R8 P1
       34 CAPTURE                          VAL R6
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R3
       37 NEWTABLE                         R9 0 1
       39 MOVE                             R10 R0
       40 SETLIST                          R9 R10 1 [1]
       42 CALL                             R7 2 1
       43 GETUPVAL                         R8 7
       44 GETTABLEKS                       R8 R8 K2 ["new"]
       46 CALL                             R8 0 1
       47 GETUPVAL                         R9 8
       48 CALL                             R9 0 1
       49 JUMPIFNOT                        R9 ; [+11]
       50 LOADB                            R9 0
       51 LOADN                            R10 0
       52 JUMPIFNOTLT                      R10 R2 ; [+8]
       54 GETUPVAL                         R10 9
       55 GETTABLEKS                       R10 R10 K4 ["MinPanelHeight"]
       57 JUMPIFLT                         R2 R10 ; [+2]
       59 LOADB                            R9 0 +1
       60 LOADB                            R9 1
       61 DUPTABLE                         R10 K8 [{"Toolbar", "ToolSettings", "ToolGizmos"}]
       62 GETUPVAL                         R11 10
       63 GETTABLEKS                       R11 R11 K9 ["createElement"]
       65 GETUPVAL                         R12 11
       66 DUPTABLE                         R13 K12 [{"LayoutOrder", "OnAbsoluteSizeChanged"}]
       67 NAMECALL                         R14 R8 K13 ["getNextOrder"]
       69 CALL                             R14 1 1
       70 SETTABLEKS                       R14 R13 K10 ["LayoutOrder"]
       72 SETTABLEKS                       R5 R13 K11 ["OnAbsoluteSizeChanged"]
       74 CALL                             R11 2 1
       75 SETTABLEKS                       R11 R10 K5 ["Toolbar"]
       77 GETUPVAL                         R11 10
       78 GETTABLEKS                       R11 R11 K9 ["createElement"]
       80 GETUPVAL                         R12 12
       81 DUPTABLE                         R13 K17 [{"LayoutOrder", "Size", "AutomaticSize", "UseScrollingFrame"}]
       82 NAMECALL                         R14 R8 K13 ["getNextOrder"]
       84 CALL                             R14 1 1
       85 SETTABLEKS                       R14 R13 K10 ["LayoutOrder"]
       87 JUMPIFNOT                        R9 ; [+2]
       88 LOADNIL                          R14
       89 JUMP                             ; [+9]
       90 GETIMPORT                        R14 K19 [UDim2.new]
       92 LOADN                            R15 1
       93 LOADN                            R16 0
       94 LOADN                            R17 1
       95 GETTABLEKS                       R19 R4 K20 ["Y"]
       97 MINUS                            R18 R19
       98 CALL                             R14 4 1
       99 SETTABLEKS                       R14 R13 K14 ["Size"]
      101 JUMPIFNOT                        R9 ; [+3]
      102 GETIMPORT                        R14 K22 [Enum.AutomaticSize.Y]
      104 JUMP                             ; [+2]
      105 GETIMPORT                        R14 K24 [Enum.AutomaticSize.None]
      107 SETTABLEKS                       R14 R13 K15 ["AutomaticSize"]
      109 JUMPIFNOT                        R9 ; [+2]
      110 LOADB                            R14 0
      111 JUMP                             ; [+1]
      112 LOADB                            R14 1
      113 SETTABLEKS                       R14 R13 K16 ["UseScrollingFrame"]
      115 CALL                             R11 2 1
      116 SETTABLEKS                       R11 R10 K6 ["ToolSettings"]
      118 GETUPVAL                         R11 10
      119 GETTABLEKS                       R11 R11 K9 ["createElement"]
      121 GETUPVAL                         R12 13
      122 DUPTABLE                         R13 K25 [{"LayoutOrder", "Size"}]
      123 NAMECALL                         R14 R8 K13 ["getNextOrder"]
      125 CALL                             R14 1 1
      126 SETTABLEKS                       R14 R13 K10 ["LayoutOrder"]
      128 GETIMPORT                        R14 K19 [UDim2.new]
      130 CALL                             R14 0 1
      131 SETTABLEKS                       R14 R13 K14 ["Size"]
      133 CALL                             R11 2 1
      134 SETTABLEKS                       R11 R10 K7 ["ToolGizmos"]
      136 GETUPVAL                         R11 10
      137 GETTABLEKS                       R11 R11 K9 ["createElement"]
      139 GETUPVAL                         R12 14
      140 NEWTABLE                         R13 8 0
      142 SETTABLEKS                       R6 R13 K26 ["ForwardRef"]
      144 GETIMPORT                        R14 K28 [UDim2.fromScale]
      146 LOADN                            R15 1
      147 LOADN                            R16 1
      148 CALL                             R14 2 1
      149 SETTABLEKS                       R14 R13 K14 ["Size"]
      151 GETIMPORT                        R14 K31 [Enum.FillDirection.Vertical]
      153 SETTABLEKS                       R14 R13 K32 ["Layout"]
      155 GETIMPORT                        R14 K35 [Enum.VerticalAlignment.Top]
      157 SETTABLEKS                       R14 R13 K33 ["VerticalAlignment"]
      159 GETUPVAL                         R14 10
      160 GETTABLEKS                       R14 R14 K36 ["Change"]
      162 GETTABLEKS                       R14 R14 K37 ["AbsoluteSize"]
      164 SETTABLE                         R7 R13 R14
      165 JUMPIFNOT                        R9 ; [+26]
      166 DUPTABLE                         R14 K39 [{"AppScroller"}]
      167 GETUPVAL                         R15 10
      168 GETTABLEKS                       R15 R15 K9 ["createElement"]
      170 GETUPVAL                         R16 15
      171 DUPTABLE                         R17 K41 [{"Size", "Layout", "AutomaticCanvasSize"}]
      172 GETIMPORT                        R18 K28 [UDim2.fromScale]
      174 LOADN                            R19 1
      175 LOADN                            R20 1
      176 CALL                             R18 2 1
      177 SETTABLEKS                       R18 R17 K14 ["Size"]
      179 GETIMPORT                        R18 K31 [Enum.FillDirection.Vertical]
      181 SETTABLEKS                       R18 R17 K32 ["Layout"]
      183 GETIMPORT                        R18 K22 [Enum.AutomaticSize.Y]
      185 SETTABLEKS                       R18 R17 K40 ["AutomaticCanvasSize"]
      187 MOVE                             R18 R10
      188 CALL                             R15 3 1
      189 SETTABLEKS                       R15 R14 K38 ["AppScroller"]
      191 JUMP                             ; [+1]
      192 MOVE                             R14 R10
      193 CALL                             R11 3 1
      194 GETUPVAL                         R12 1
      195 CALL                             R12 0 1
      196 JUMPIF                           R12 ; [+1]
      197 RETURN                           R11 1
      198 GETUPVAL                         R12 10
      199 GETTABLEKS                       R12 R12 K9 ["createElement"]
      201 GETUPVAL                         R13 16
      202 GETTABLEKS                       R13 R13 K42 ["Provider"]
      204 DUPTABLE                         R14 K44 [{"value"}]
      205 DUPTABLE                         R15 K46 [{"catalog"}]
      206 SETTABLEKS                       R1 R15 K45 ["catalog"]
      208 SETTABLEKS                       R15 R14 K43 ["value"]
      210 MOVE                             R15 R11
      211 CALL                             R12 3 -1
      212 RETURN                           R12 -1

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
       79 GETTABLEKS                       R16 R16 K25 ["Hooks"]
       81 GETTABLEKS                       R16 R16 K26 ["useTerrainMaterialCatalog"]
       83 CALL                             R15 1 1
       84 GETIMPORT                        R16 K5 [require]
       86 GETTABLEKS                       R17 R0 K18 ["Src"]
       88 GETTABLEKS                       R17 R17 K27 ["Contexts"]
       90 GETTABLEKS                       R17 R17 K28 ["TerrainMaterialCatalogContext"]
       92 CALL                             R16 1 1
       93 GETIMPORT                        R17 K5 [require]
       95 GETTABLEKS                       R18 R0 K18 ["Src"]
       97 GETTABLEKS                       R18 R18 K29 ["Resources"]
       99 GETTABLEKS                       R18 R18 K30 ["Constants"]
      101 CALL                             R17 1 1
      102 GETIMPORT                        R18 K5 [require]
      104 GETTABLEKS                       R19 R0 K18 ["Src"]
      106 GETTABLEKS                       R19 R19 K31 ["Flags"]
      108 GETTABLEKS                       R19 R19 K32 ["getFFlagEnableTerrainPalette"]
      110 CALL                             R18 1 1
      111 GETIMPORT                        R19 K5 [require]
      113 GETTABLEKS                       R20 R0 K18 ["Src"]
      115 GETTABLEKS                       R20 R20 K31 ["Flags"]
      117 GETTABLEKS                       R20 R20 K33 ["getFFlagTerrainEditorPanelHeightResize"]
      119 CALL                             R19 1 1
      120 DUPCLOSURE                       R20 K34 [PROTO_2]
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R18
      123 CAPTURE                          VAL R15
      124 CAPTURE                          VAL R7
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R19
      130 CAPTURE                          VAL R17
      131 CAPTURE                          VAL R1
      132 CAPTURE                          VAL R11
      133 CAPTURE                          VAL R13
      134 CAPTURE                          VAL R12
      135 CAPTURE                          VAL R9
      136 CAPTURE                          VAL R10
      137 CAPTURE                          VAL R16
      138 RETURN                           R20 1
