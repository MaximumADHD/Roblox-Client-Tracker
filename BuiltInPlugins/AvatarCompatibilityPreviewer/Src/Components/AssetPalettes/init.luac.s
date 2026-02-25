PROTO_0:
        0 DUPTABLE                         R2 K2 [{"Key", "Label"}]
        1 GETTABLEKS                       R3 R1 K0 ["Key"]
        3 SETTABLEKS                       R3 R2 K0 ["Key"]
        5 GETUPVAL                         R3 0
        6 LOADK                            R5 K3 ["AssetPalettes"]
        7 GETTABLEKS                       R6 R1 K0 ["Key"]
        9 NAMECALL                         R3 R3 K4 ["getText"]
       11 CALL                             R3 3 1
       12 SETTABLEKS                       R3 R2 K1 ["Label"]
       14 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K0 ["collectArray"]
        8 GETUPVAL                         R1 0
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U2
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["SelectedPalette"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Key"]
        6 JUMPIFNOTEQ                      R0 R1 ; [+7]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R0 R1 K2 ["SetSelectedPalette"]
       11 LOADNIL                          R1
       12 CALL                             R0 1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R0 R1 K2 ["SetSelectedPalette"]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R1 R2 K1 ["Key"]
       20 CALL                             R0 1 0
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R2 R3 K3 ["current"]
       24 JUMPIFNOTEQKNIL                  R2 ; [+2]
       26 LOADB                            R1 0 +1
       27 LOADB                            R1 1
       28 FASTCALL2K                       ASSERT R1 K4 ; [+4]
       30 LOADK                            R2 K4 ["Ref to palette tabs is nil"]
       31 GETIMPORT                        R0 K6 [assert]
       33 CALL                             R0 2 0
       34 GETUPVAL                         R3 3
       35 GETTABLEKS                       R2 R3 K3 ["current"]
       37 JUMPIFNOTEQKNIL                  R2 ; [+2]
       39 LOADB                            R1 0 +1
       40 LOADB                            R1 1
       41 FASTCALL2K                       ASSERT R1 K7 ; [+4]
       43 LOADK                            R2 K7 ["Ref to palette tabs list is nil"]
       44 GETIMPORT                        R0 K6 [assert]
       46 CALL                             R0 2 0
       47 GETUPVAL                         R2 3
       48 GETTABLEKS                       R1 R2 K3 ["current"]
       50 GETUPVAL                         R3 1
       51 GETTABLEKS                       R2 R3 K1 ["Key"]
       53 GETTABLE                         R0 R1 R2
       54 GETUPVAL                         R1 4
       55 GETIMPORT                        R2 K10 [Vector2.new]
       57 GETTABLEKS                       R6 R0 K3 ["current"]
       59 GETTABLEKS                       R5 R6 K11 ["AbsolutePosition"]
       61 GETTABLEKS                       R4 R5 K12 ["X"]
       63 GETUPVAL                         R8 2
       64 GETTABLEKS                       R7 R8 K3 ["current"]
       66 GETTABLEKS                       R6 R7 K11 ["AbsolutePosition"]
       68 GETTABLEKS                       R5 R6 K12 ["X"]
       70 SUB                              R3 R4 R5
       71 LOADN                            R4 0
       72 CALL                             R2 2 -1
       73 CALL                             R1 -1 0
       74 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R2 K3 [{"Text", "OnItemClicked", "Checked"}]
        1 GETUPVAL                         R3 0
        2 LOADK                            R5 K4 ["AssetPalettes"]
        3 GETTABLEKS                       R6 R1 K5 ["Key"]
        5 NAMECALL                         R3 R3 K6 ["getText"]
        7 CALL                             R3 3 1
        8 SETTABLEKS                       R3 R2 K0 ["Text"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 SETTABLEKS                       R3 R2 K1 ["OnItemClicked"]
       18 GETTABLEKS                       R4 R1 K5 ["Key"]
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R5 R6 K7 ["SelectedPalette"]
       23 JUMPIFEQ                         R4 R5 ; [+2]
       25 LOADB                            R3 0 +1
       26 LOADB                            R3 1
       27 SETTABLEKS                       R3 R2 K2 ["Checked"]
       29 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["collectArray"]
        3 GETUPVAL                         R1 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CALL                             R0 2 -1
       11 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        9 LOADK                            R2 K1 ["Ref to palette tabs frame is nil"]
       10 GETIMPORT                        R0 K3 [assert]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R0 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K0 ["current"]
       17 GETTABLEKS                       R2 R3 K4 ["AbsoluteSize"]
       19 GETTABLEKS                       R1 R2 K5 ["X"]
       21 CALL                             R0 1 0
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R2 R3 K0 ["current"]
       25 JUMPIFNOTEQKNIL                  R2 ; [+2]
       27 LOADB                            R1 0 +1
       28 LOADB                            R1 1
       29 FASTCALL2K                       ASSERT R1 K6 ; [+4]
       31 LOADK                            R2 K6 ["Ref to palette tabs is nil"]
       32 GETIMPORT                        R0 K3 [assert]
       34 CALL                             R0 2 0
       35 GETUPVAL                         R0 3
       36 GETUPVAL                         R4 2
       37 GETTABLEKS                       R3 R4 K0 ["current"]
       39 GETTABLEKS                       R2 R3 K4 ["AbsoluteSize"]
       41 GETTABLEKS                       R1 R2 K5 ["X"]
       43 CALL                             R0 1 0
       44 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R3 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Key"]
        3 JUMPIFNOTEQ                      R0 R2 ; [+3]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K0 ["Key"]
       10 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["openPalette"]
        2 GETTABLEKS                       R4 R0 K1 ["Key"]
        4 NAMECALL                         R1 R1 K2 ["report"]
        6 CALL                             R1 3 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K3 ["SetSelectedPalette"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          VAL R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R3 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 LOADK                            R5 K1 ["AssetPalettes"]
       10 NAMECALL                         R3 R3 K0 ["use"]
       12 CALL                             R3 2 1
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R4 R5 K2 ["useRef"]
       16 LOADNIL                          R5
       17 CALL                             R4 1 1
       18 GETUPVAL                         R6 3
       19 GETTABLEKS                       R5 R6 K2 ["useRef"]
       21 LOADNIL                          R6
       22 CALL                             R5 1 1
       23 GETUPVAL                         R7 3
       24 GETTABLEKS                       R6 R7 K2 ["useRef"]
       26 NEWTABLE                         R7 0 0
       28 CALL                             R6 1 1
       29 GETUPVAL                         R8 3
       30 GETTABLEKS                       R7 R8 K3 ["useState"]
       32 LOADN                            R8 100
       33 CALL                             R7 1 2
       34 GETUPVAL                         R10 3
       35 GETTABLEKS                       R9 R10 K3 ["useState"]
       37 LOADN                            R10 100
       38 CALL                             R9 1 2
       39 GETUPVAL                         R12 3
       40 GETTABLEKS                       R11 R12 K3 ["useState"]
       42 GETIMPORT                        R12 K6 [Vector2.new]
       44 CALL                             R12 0 -1
       45 CALL                             R11 -1 2
       46 GETUPVAL                         R14 4
       47 GETTABLEKS                       R15 R0 K7 ["SelectedTab"]
       49 GETTABLE                         R13 R14 R15
       50 GETUPVAL                         R15 3
       51 GETTABLEKS                       R14 R15 K8 ["useMemo"]
       53 NEWCLOSURE                       R15 P0
       54 CAPTURE                          VAL R13
       55 CAPTURE                          UPVAL U5
       56 CAPTURE                          VAL R2
       57 NEWTABLE                         R16 0 1
       59 MOVE                             R17 R13
       60 SETLIST                          R16 R17 1 [1]
       62 CALL                             R14 2 1
       63 GETUPVAL                         R16 3
       64 GETTABLEKS                       R15 R16 K8 ["useMemo"]
       66 NEWCLOSURE                       R16 P1
       67 CAPTURE                          UPVAL U5
       68 CAPTURE                          VAL R13
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R0
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R12
       74 NEWTABLE                         R17 0 4
       76 MOVE                             R18 R2
       77 MOVE                             R19 R13
       78 GETTABLEKS                       R20 R0 K9 ["SelectedPalette"]
       80 GETTABLEKS                       R21 R0 K10 ["SetSelectedPalette"]
       82 SETLIST                          R17 R18 4 [1]
       84 CALL                             R15 2 1
       85 JUMPIFLT                         R7 R9 ; [+2]
       87 LOADB                            R16 0 +1
       88 LOADB                            R16 1
       89 GETUPVAL                         R18 3
       90 GETTABLEKS                       R17 R18 K11 ["useEffect"]
       92 NEWCLOSURE                       R18 P2
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R10
       97 NEWTABLE                         R19 0 0
       99 CALL                             R17 2 0
      100 JUMPIFNOTEQKNIL                  R13 ; [+3]
      102 LOADNIL                          R17
      103 RETURN                           R17 1
      104 GETUPVAL                         R18 3
      105 GETTABLEKS                       R17 R18 K12 ["createElement"]
      107 GETUPVAL                         R18 6
      108 NEWTABLE                         R19 4 0
      110 GETTABLEKS                       R20 R0 K13 ["LayoutOrder"]
      112 SETTABLEKS                       R20 R19 K13 ["LayoutOrder"]
      114 GETTABLEKS                       R20 R3 K14 ["Size"]
      116 SETTABLEKS                       R20 R19 K14 ["Size"]
      118 SETTABLEKS                       R4 R19 K15 ["ref"]
      120 GETUPVAL                         R22 3
      121 GETTABLEKS                       R21 R22 K16 ["Change"]
      123 GETTABLEKS                       R20 R21 K17 ["AbsoluteSize"]
      125 NEWCLOSURE                       R21 P3
      126 CAPTURE                          VAL R8
      127 SETTABLE                         R21 R19 R20
      128 DUPTABLE                         R20 K20 [{"ScrollingFrame", "PickTabMenu"}]
      129 GETUPVAL                         R22 3
      130 GETTABLEKS                       R21 R22 K12 ["createElement"]
      132 GETUPVAL                         R22 7
      133 DUPTABLE                         R23 K29 [{"AutomaticCanvasSize", "AutomaticSize", "CanvasPosition", "Layout", "OnScrollUpdate", "ScrollingDirection", "Spacing", "Size", "Style"}]
      134 GETIMPORT                        R24 K32 [Enum.AutomaticSize.X]
      136 SETTABLEKS                       R24 R23 K21 ["AutomaticCanvasSize"]
      138 GETIMPORT                        R24 K34 [Enum.AutomaticSize.Y]
      140 SETTABLEKS                       R24 R23 K22 ["AutomaticSize"]
      142 SETTABLEKS                       R11 R23 K23 ["CanvasPosition"]
      144 GETIMPORT                        R24 K37 [Enum.FillDirection.Horizontal]
      146 SETTABLEKS                       R24 R23 K24 ["Layout"]
      148 SETTABLEKS                       R12 R23 K25 ["OnScrollUpdate"]
      150 GETIMPORT                        R24 K38 [Enum.ScrollingDirection.X]
      152 SETTABLEKS                       R24 R23 K26 ["ScrollingDirection"]
      154 GETTABLEKS                       R25 R3 K18 ["ScrollingFrame"]
      156 GETTABLEKS                       R24 R25 K27 ["Spacing"]
      158 SETTABLEKS                       R24 R23 K27 ["Spacing"]
      160 GETIMPORT                        R24 K40 [UDim2.new]
      162 LOADN                            R25 1
      163 JUMPIFNOT                        R16 ; [+2]
      164 LOADN                            R26 224
      165 JUMP                             ; [+1]
      166 LOADN                            R26 0
      167 LOADN                            R27 1
      168 LOADN                            R28 0
      169 CALL                             R24 4 1
      170 SETTABLEKS                       R24 R23 K14 ["Size"]
      172 GETTABLEKS                       R24 R3 K18 ["ScrollingFrame"]
      174 SETTABLEKS                       R24 R23 K28 ["Style"]
      176 DUPTABLE                         R24 K42 [{"Tabs"}]
      177 GETUPVAL                         R26 3
      178 GETTABLEKS                       R25 R26 K12 ["createElement"]
      180 GETUPVAL                         R26 8
      181 DUPTABLE                         R27 K46 [{"component", "innerProps", "dependencies"}]
      182 GETUPVAL                         R28 9
      183 SETTABLEKS                       R28 R27 K43 ["component"]
      185 DUPTABLE                         R28 K51 [{"SelectedTab", "OnTabSelected", "Tabs", "TabComponent", "ref", "TabsListRef", "OnAbsoluteSizeChanged"}]
      186 GETTABLEKS                       R29 R0 K9 ["SelectedPalette"]
      188 SETTABLEKS                       R29 R28 K7 ["SelectedTab"]
      190 NEWCLOSURE                       R29 P4
      191 CAPTURE                          VAL R1
      192 CAPTURE                          VAL R0
      193 SETTABLEKS                       R29 R28 K47 ["OnTabSelected"]
      195 SETTABLEKS                       R14 R28 K41 ["Tabs"]
      197 GETUPVAL                         R29 10
      198 SETTABLEKS                       R29 R28 K48 ["TabComponent"]
      200 SETTABLEKS                       R5 R28 K15 ["ref"]
      202 SETTABLEKS                       R6 R28 K49 ["TabsListRef"]
      204 NEWCLOSURE                       R29 P5
      205 CAPTURE                          VAL R10
      206 SETTABLEKS                       R29 R28 K50 ["OnAbsoluteSizeChanged"]
      208 SETTABLEKS                       R28 R27 K44 ["innerProps"]
      210 NEWTABLE                         R28 0 1
      212 MOVE                             R29 R14
      213 SETLIST                          R28 R29 1 [1]
      215 SETTABLEKS                       R28 R27 K45 ["dependencies"]
      217 CALL                             R25 2 1
      218 SETTABLEKS                       R25 R24 K41 ["Tabs"]
      220 CALL                             R21 3 1
      221 SETTABLEKS                       R21 R20 K18 ["ScrollingFrame"]
      223 JUMPIFNOT                        R16 ; [+17]
      224 GETUPVAL                         R22 3
      225 GETTABLEKS                       R21 R22 K12 ["createElement"]
      227 GETUPVAL                         R22 11
      228 DUPTABLE                         R23 K55 [{"MenuTabs", "BackgroundColor", "BackgroundColorHover"}]
      229 SETTABLEKS                       R15 R23 K52 ["MenuTabs"]
      231 GETTABLEKS                       R24 R3 K53 ["BackgroundColor"]
      233 SETTABLEKS                       R24 R23 K53 ["BackgroundColor"]
      235 GETTABLEKS                       R24 R3 K54 ["BackgroundColorHover"]
      237 SETTABLEKS                       R24 R23 K54 ["BackgroundColorHover"]
      239 CALL                             R21 2 1
      240 JUMP                             ; [+1]
      241 LOADNIL                          R21
      242 SETTABLEKS                       R21 R20 K19 ["PickTabMenu"]
      244 CALL                             R17 3 -1
      245 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K10 ["Src"]
       32 GETTABLEKS                       R6 R7 K11 ["Components"]
       34 GETTABLEKS                       R5 R6 K12 ["ForceRerender"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K10 ["Src"]
       41 GETTABLEKS                       R7 R8 K11 ["Components"]
       43 GETTABLEKS                       R6 R7 K13 ["PickTabMenu"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R9 R0 K10 ["Src"]
       50 GETTABLEKS                       R8 R9 K14 ["Resources"]
       52 GETTABLEKS                       R7 R8 K15 ["CatalogItems"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R10 R0 K10 ["Src"]
       59 GETTABLEKS                       R9 R10 K14 ["Resources"]
       61 GETTABLEKS                       R8 R9 K16 ["Theme"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R10 R0 K10 ["Src"]
       68 GETTABLEKS                       R9 R10 K17 ["Types"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETIMPORT                        R11 K1 [script]
       75 GETTABLEKS                       R10 R11 K18 ["AssetPaletteTab"]
       77 CALL                             R9 1 1
       78 GETTABLEKS                       R10 R2 K19 ["UI"]
       80 GETTABLEKS                       R11 R10 K20 ["Pane"]
       82 GETTABLEKS                       R12 R10 K21 ["ScrollingFrame"]
       84 GETTABLEKS                       R13 R10 K22 ["Tabs"]
       86 GETTABLEKS                       R15 R2 K23 ["ContextServices"]
       88 GETTABLEKS                       R14 R15 K24 ["Analytics"]
       90 GETTABLEKS                       R16 R2 K23 ["ContextServices"]
       92 GETTABLEKS                       R15 R16 K25 ["Localization"]
       94 GETTABLEKS                       R17 R2 K23 ["ContextServices"]
       96 GETTABLEKS                       R16 R17 K26 ["Stylizer"]
       98 DUPCLOSURE                       R17 K27 [PROTO_10]
       99 CAPTURE                          VAL R14
      100 CAPTURE                          VAL R15
      101 CAPTURE                          VAL R16
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R12
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R13
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R5
      111 RETURN                           R17 1
