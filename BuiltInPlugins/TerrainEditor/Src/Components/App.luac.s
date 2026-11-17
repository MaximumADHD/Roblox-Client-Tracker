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
       47 LOADB                            R9 0
       48 LOADN                            R10 0
       49 JUMPIFNOTLT                      R10 R2 ; [+8]
       51 GETUPVAL                         R10 8
       52 GETTABLEKS                       R10 R10 K4 ["MinPanelHeight"]
       54 JUMPIFLT                         R2 R10 ; [+2]
       56 LOADB                            R9 0 +1
       57 LOADB                            R9 1
       58 DUPTABLE                         R10 K8 [{"Toolbar", "ToolSettings", "ToolGizmos"}]
       59 GETUPVAL                         R11 9
       60 GETTABLEKS                       R11 R11 K9 ["createElement"]
       62 GETUPVAL                         R12 10
       63 DUPTABLE                         R13 K12 [{"LayoutOrder", "OnAbsoluteSizeChanged"}]
       64 NAMECALL                         R14 R8 K13 ["getNextOrder"]
       66 CALL                             R14 1 1
       67 SETTABLEKS                       R14 R13 K10 ["LayoutOrder"]
       69 SETTABLEKS                       R5 R13 K11 ["OnAbsoluteSizeChanged"]
       71 CALL                             R11 2 1
       72 SETTABLEKS                       R11 R10 K5 ["Toolbar"]
       74 GETUPVAL                         R11 9
       75 GETTABLEKS                       R11 R11 K9 ["createElement"]
       77 GETUPVAL                         R12 11
       78 DUPTABLE                         R13 K17 [{"LayoutOrder", "Size", "AutomaticSize", "UseScrollingFrame"}]
       79 NAMECALL                         R14 R8 K13 ["getNextOrder"]
       81 CALL                             R14 1 1
       82 SETTABLEKS                       R14 R13 K10 ["LayoutOrder"]
       84 JUMPIFNOT                        R9 ; [+2]
       85 LOADNIL                          R14
       86 JUMP                             ; [+9]
       87 GETIMPORT                        R14 K19 [UDim2.new]
       89 LOADN                            R15 1
       90 LOADN                            R16 0
       91 LOADN                            R17 1
       92 GETTABLEKS                       R19 R4 K20 ["Y"]
       94 MINUS                            R18 R19
       95 CALL                             R14 4 1
       96 SETTABLEKS                       R14 R13 K14 ["Size"]
       98 JUMPIFNOT                        R9 ; [+3]
       99 GETIMPORT                        R14 K22 [Enum.AutomaticSize.Y]
      101 JUMP                             ; [+2]
      102 GETIMPORT                        R14 K24 [Enum.AutomaticSize.None]
      104 SETTABLEKS                       R14 R13 K15 ["AutomaticSize"]
      106 JUMPIFNOT                        R9 ; [+2]
      107 LOADB                            R14 0
      108 JUMP                             ; [+1]
      109 LOADB                            R14 1
      110 SETTABLEKS                       R14 R13 K16 ["UseScrollingFrame"]
      112 CALL                             R11 2 1
      113 SETTABLEKS                       R11 R10 K6 ["ToolSettings"]
      115 GETUPVAL                         R11 9
      116 GETTABLEKS                       R11 R11 K9 ["createElement"]
      118 GETUPVAL                         R12 12
      119 DUPTABLE                         R13 K25 [{"LayoutOrder", "Size"}]
      120 NAMECALL                         R14 R8 K13 ["getNextOrder"]
      122 CALL                             R14 1 1
      123 SETTABLEKS                       R14 R13 K10 ["LayoutOrder"]
      125 GETIMPORT                        R14 K19 [UDim2.new]
      127 CALL                             R14 0 1
      128 SETTABLEKS                       R14 R13 K14 ["Size"]
      130 CALL                             R11 2 1
      131 SETTABLEKS                       R11 R10 K7 ["ToolGizmos"]
      133 GETUPVAL                         R11 9
      134 GETTABLEKS                       R11 R11 K9 ["createElement"]
      136 GETUPVAL                         R12 13
      137 NEWTABLE                         R13 8 0
      139 SETTABLEKS                       R6 R13 K26 ["ForwardRef"]
      141 GETIMPORT                        R14 K28 [UDim2.fromScale]
      143 LOADN                            R15 1
      144 LOADN                            R16 1
      145 CALL                             R14 2 1
      146 SETTABLEKS                       R14 R13 K14 ["Size"]
      148 GETIMPORT                        R14 K31 [Enum.FillDirection.Vertical]
      150 SETTABLEKS                       R14 R13 K32 ["Layout"]
      152 GETIMPORT                        R14 K35 [Enum.VerticalAlignment.Top]
      154 SETTABLEKS                       R14 R13 K33 ["VerticalAlignment"]
      156 GETUPVAL                         R14 9
      157 GETTABLEKS                       R14 R14 K36 ["Change"]
      159 GETTABLEKS                       R14 R14 K37 ["AbsoluteSize"]
      161 SETTABLE                         R7 R13 R14
      162 JUMPIFNOT                        R9 ; [+26]
      163 DUPTABLE                         R14 K39 [{"AppScroller"}]
      164 GETUPVAL                         R15 9
      165 GETTABLEKS                       R15 R15 K9 ["createElement"]
      167 GETUPVAL                         R16 14
      168 DUPTABLE                         R17 K41 [{"Size", "Layout", "AutomaticCanvasSize"}]
      169 GETIMPORT                        R18 K28 [UDim2.fromScale]
      171 LOADN                            R19 1
      172 LOADN                            R20 1
      173 CALL                             R18 2 1
      174 SETTABLEKS                       R18 R17 K14 ["Size"]
      176 GETIMPORT                        R18 K31 [Enum.FillDirection.Vertical]
      178 SETTABLEKS                       R18 R17 K32 ["Layout"]
      180 GETIMPORT                        R18 K22 [Enum.AutomaticSize.Y]
      182 SETTABLEKS                       R18 R17 K40 ["AutomaticCanvasSize"]
      184 MOVE                             R18 R10
      185 CALL                             R15 3 1
      186 SETTABLEKS                       R15 R14 K38 ["AppScroller"]
      188 JUMP                             ; [+1]
      189 MOVE                             R14 R10
      190 CALL                             R11 3 1
      191 GETUPVAL                         R12 1
      192 CALL                             R12 0 1
      193 JUMPIF                           R12 ; [+1]
      194 RETURN                           R11 1
      195 GETUPVAL                         R12 9
      196 GETTABLEKS                       R12 R12 K9 ["createElement"]
      198 GETUPVAL                         R13 15
      199 GETTABLEKS                       R13 R13 K42 ["Provider"]
      201 DUPTABLE                         R14 K44 [{"value"}]
      202 DUPTABLE                         R15 K46 [{"catalog"}]
      203 SETTABLEKS                       R1 R15 K45 ["catalog"]
      205 SETTABLEKS                       R15 R14 K43 ["value"]
      207 MOVE                             R15 R11
      208 CALL                             R12 3 -1
      209 RETURN                           R12 -1

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
      111 DUPCLOSURE                       R19 K33 [PROTO_2]
      112 CAPTURE                          VAL R14
      113 CAPTURE                          VAL R18
      114 CAPTURE                          VAL R15
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R6
      117 CAPTURE                          VAL R5
      118 CAPTURE                          VAL R4
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R17
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R11
      123 CAPTURE                          VAL R13
      124 CAPTURE                          VAL R12
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R16
      128 RETURN                           R19 1
