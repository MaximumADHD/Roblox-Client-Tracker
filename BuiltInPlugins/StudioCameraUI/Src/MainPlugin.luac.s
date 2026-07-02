PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["viewSelectorActive"]
        2 NOT                              R1 R2
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["ViewSelectorToggle"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K3 ["SetActive"]
       11 CALL                             R2 2 0
       12 DUPTABLE                         R2 K4 [{"viewSelectorActive"}]
       13 SETTABLEKS                       R1 R2 K0 ["viewSelectorActive"]
       15 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U0
        3 NAMECALL                         R0 R0 K0 ["setState"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"theme"}]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K2 ["Theme"]
        5 GETTABLEKS                       R3 R3 K3 ["Name"]
        7 SETTABLEKS                       R3 R2 K0 ["theme"]
        9 NAMECALL                         R0 R0 K4 ["setState"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 ADD                              R1 R1 R0
        2 SETUPVAL                         R1 0
        3 GETIMPORT                        R1 K1 [game]
        5 GETTABLEKS                       R1 R1 K2 ["Workspace"]
        7 GETTABLEKS                       R1 R1 K3 ["Camera"]
        9 GETUPVAL                         R3 1
       10 NAMECALL                         R1 R1 K4 ["WorldToScreenPoint"]
       12 CALL                             R1 2 2
       13 GETUPVAL                         R3 2
       14 GETIMPORT                        R4 K7 [UDim2.fromOffset]
       16 GETTABLEKS                       R5 R1 K8 ["X"]
       18 GETTABLEKS                       R6 R1 K9 ["Y"]
       20 CALL                             R4 2 1
       21 SETTABLEKS                       R4 R3 K10 ["Position"]
       23 GETUPVAL                         R3 0
       24 LOADK                            R4 K11 [0.08]
       25 JUMPIFNOTLT                      R3 R4 ; [+18]
       27 LOADN                            R4 17
       28 LOADN                            R5 22
       29 GETUPVAL                         R7 0
       30 DIVK                             R6 R7 K11 [0.08]
       31 FASTCALL                         MATH_LERP ; [+2]
       32 GETIMPORT                        R3 K14 [math.lerp]
       34 CALL                             R3 3 1
       35 GETUPVAL                         R4 2
       36 GETIMPORT                        R5 K7 [UDim2.fromOffset]
       38 MOVE                             R6 R3
       39 MOVE                             R7 R3
       40 CALL                             R5 2 1
       41 SETTABLEKS                       R5 R4 K15 ["Size"]
       43 RETURN                           R0 0
       44 GETUPVAL                         R3 0
       45 LOADK                            R4 K16 [0.68]
       46 JUMPIFNOTLT                      R3 R4 ; [+2]
       48 RETURN                           R0 0
       49 GETUPVAL                         R3 0
       50 LOADK                            R4 K17 [0.76]
       51 JUMPIFNOTLT                      R3 R4 ; [+29]
       53 GETUPVAL                         R4 0
       54 SUBK                             R3 R4 K16 [0.68]
       55 LOADN                            R5 22
       56 LOADN                            R6 27
       57 DIVK                             R7 R3 K11 [0.08]
       58 FASTCALL                         MATH_LERP ; [+2]
       59 GETIMPORT                        R4 K14 [math.lerp]
       61 CALL                             R4 3 1
       62 GETUPVAL                         R5 2
       63 GETIMPORT                        R6 K7 [UDim2.fromOffset]
       65 MOVE                             R7 R4
       66 MOVE                             R8 R4
       67 CALL                             R6 2 1
       68 SETTABLEKS                       R6 R5 K15 ["Size"]
       70 GETUPVAL                         R5 2
       71 LOADN                            R7 0
       72 LOADN                            R8 1
       73 DIVK                             R9 R3 K11 [0.08]
       74 FASTCALL                         MATH_LERP ; [+2]
       75 GETIMPORT                        R6 K14 [math.lerp]
       77 CALL                             R6 3 1
       78 SETTABLEKS                       R6 R5 K18 ["ImageTransparency"]
       80 RETURN                           R0 0
       81 GETUPVAL                         R3 2
       82 NAMECALL                         R3 R3 K19 ["Destroy"]
       84 CALL                             R3 1 0
       85 GETUPVAL                         R3 3
       86 NAMECALL                         R3 R3 K20 ["Disconnect"]
       88 CALL                             R3 1 0
       89 GETUPVAL                         R3 4
       90 NAMECALL                         R3 R3 K20 ["Disconnect"]
       92 CALL                             R3 1 0
       93 RETURN                           R0 0

PROTO_4:
        0 LOADK                            R1 K0 [∞]
        1 SETUPVAL                         R1 0
        2 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["ImageLabel"]
        3 CALL                             R1 1 1
        4 LOADK                            R2 K4 ["rbxasset://textures/Cursors/FocusLocation.png"]
        5 SETTABLEKS                       R2 R1 K5 ["Image"]
        7 GETIMPORT                        R2 K7 [game]
        9 GETTABLEKS                       R2 R2 K8 ["CoreGui"]
       11 GETTABLEKS                       R2 R2 K9 ["StudioCameraUI"]
       13 SETTABLEKS                       R2 R1 K10 ["Parent"]
       15 LOADN                            R2 1
       16 SETTABLEKS                       R2 R1 K11 ["BackgroundTransparency"]
       18 GETIMPORT                        R2 K14 [UDim2.fromOffset]
       20 LOADN                            R3 17
       21 LOADN                            R4 17
       22 CALL                             R2 2 1
       23 SETTABLEKS                       R2 R1 K15 ["Size"]
       25 GETIMPORT                        R2 K19 [Enum.ResamplerMode.Pixelated]
       27 SETTABLEKS                       R2 R1 K20 ["ResampleMode"]
       29 GETIMPORT                        R2 K22 [Vector2.new]
       31 LOADK                            R3 K23 [0.5]
       32 LOADK                            R4 K23 [0.5]
       33 CALL                             R2 2 1
       34 SETTABLEKS                       R2 R1 K24 ["AnchorPoint"]
       36 LOADN                            R2 0
       37 LOADNIL                          R3
       38 LOADNIL                          R4
       39 GETUPVAL                         R5 0
       40 GETTABLEKS                       R5 R5 K25 ["UpdateUI"]
       42 NEWCLOSURE                       R7 P0
       43 CAPTURE                          REF R2
       44 CAPTURE                          VAL R0
       45 CAPTURE                          VAL R1
       46 CAPTURE                          REF R3
       47 CAPTURE                          REF R4
       48 NAMECALL                         R5 R5 K26 ["Connect"]
       50 CALL                             R5 2 1
       51 MOVE                             R3 R5
       52 GETUPVAL                         R5 0
       53 GETTABLEKS                       R5 R5 K27 ["PointFocused"]
       55 NEWCLOSURE                       R7 P1
       56 CAPTURE                          REF R2
       57 NAMECALL                         R5 R5 K26 ["Connect"]
       59 CALL                             R5 2 1
       60 MOVE                             R4 R5
       61 CLOSEUPVALS                      R2
       62 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Plugin"]
        4 GETIMPORT                        R2 K3 [settings]
        6 CALL                             R2 0 1
        7 GETTABLEKS                       R2 R2 K4 ["Studio"]
        9 LOADK                            R5 K5 ["ViewSelector_Active"]
       10 NAMECALL                         R3 R1 K6 ["GetSetting"]
       12 CALL                             R3 2 1
       13 JUMPIFNOTEQKNIL                  R3 ; [+7]
       15 LOADK                            R6 K5 ["ViewSelector_Active"]
       16 LOADB                            R7 1
       17 NAMECALL                         R4 R1 K7 ["SetSetting"]
       19 CALL                             R4 3 0
       20 LOADB                            R3 1
       21 GETTABLEKS                       R4 R0 K0 ["props"]
       23 GETTABLEKS                       R4 R4 K8 ["ViewSelectorToggle"]
       25 MOVE                             R6 R3
       26 NAMECALL                         R4 R4 K9 ["SetActive"]
       28 CALL                             R4 2 0
       29 DUPTABLE                         R4 K12 [{"theme", "viewSelectorActive"}]
       30 GETTABLEKS                       R5 R2 K13 ["Theme"]
       32 GETTABLEKS                       R5 R5 K14 ["Name"]
       34 SETTABLEKS                       R5 R4 K10 ["theme"]
       36 SETTABLEKS                       R3 R4 K11 ["viewSelectorActive"]
       38 SETTABLEKS                       R4 R0 K15 ["state"]
       40 GETTABLEKS                       R4 R0 K0 ["props"]
       42 GETTABLEKS                       R4 R4 K8 ["ViewSelectorToggle"]
       44 GETTABLEKS                       R4 R4 K16 ["Click"]
       46 NEWCLOSURE                       R6 P0
       47 CAPTURE                          VAL R0
       48 NAMECALL                         R4 R4 K17 ["Connect"]
       50 CALL                             R4 2 1
       51 SETTABLEKS                       R4 R0 K18 ["viewSelectorToggleClickConnection"]
       53 GETTABLEKS                       R4 R2 K19 ["ThemeChanged"]
       55 NEWCLOSURE                       R6 P1
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R2
       58 NAMECALL                         R4 R4 K17 ["Connect"]
       60 CALL                             R4 2 1
       61 SETTABLEKS                       R4 R0 K20 ["themeChangeConnection"]
       63 GETUPVAL                         R4 0
       64 GETTABLEKS                       R4 R4 K21 ["PointFocused"]
       66 DUPCLOSURE                       R6 K22 [PROTO_5]
       67 CAPTURE                          UPVAL U0
       68 NAMECALL                         R4 R4 K17 ["Connect"]
       70 CALL                             R4 2 1
       71 SETTABLEKS                       R4 R0 K23 ["pointFocusedConnection"]
       73 GETUPVAL                         R4 1
       74 GETTABLEKS                       R4 R4 K24 ["Localization"]
       76 GETTABLEKS                       R4 R4 K25 ["new"]
       78 DUPTABLE                         R5 K30 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "StudioCameraUI"}]
       79 GETUPVAL                         R6 2
       80 SETTABLEKS                       R6 R5 K26 ["stringResourceTable"]
       82 GETUPVAL                         R6 3
       83 SETTABLEKS                       R6 R5 K27 ["translationResourceTable"]
       85 CALL                             R4 1 1
       86 SETTABLEKS                       R4 R0 K31 ["localization"]
       88 GETUPVAL                         R4 1
       89 GETTABLEKS                       R4 R4 K32 ["Analytics"]
       91 GETTABLEKS                       R4 R4 K25 ["new"]
       93 DUPCLOSURE                       R5 K33 [PROTO_6]
       94 NEWTABLE                         R6 0 0
       96 CALL                             R4 2 1
       97 SETTABLEKS                       R4 R0 K34 ["analytics"]
       99 GETUPVAL                         R4 4
      100 GETTABLEKS                       R4 R4 K25 ["new"]
      102 CALL                             R4 0 1
      103 SETTABLEKS                       R4 R0 K35 ["DEPRECATED_stylizer"]
      105 GETUPVAL                         R4 5
      106 GETTABLEKS                       R5 R0 K0 ["props"]
      108 GETTABLEKS                       R5 R5 K1 ["Plugin"]
      110 CALL                             R4 1 1
      111 SETTABLEKS                       R4 R0 K36 ["design"]
      113 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["themeChangeConnection"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K2 ["viewSelectorToggleClickConnection"]
        7 NAMECALL                         R1 R1 K1 ["Disconnect"]
        9 CALL                             R1 1 0
       10 GETTABLEKS                       R1 R0 K3 ["pointFocusedConnection"]
       12 NAMECALL                         R1 R1 K1 ["Disconnect"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["theme"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["provide"]
       11 NEWTABLE                         R6 0 4
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R7 R7 K5 ["new"]
       16 MOVE                             R8 R3
       17 CALL                             R7 1 1
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R8 R8 K5 ["new"]
       21 NAMECALL                         R9 R3 K6 ["getMouse"]
       23 CALL                             R9 1 -1
       24 CALL                             R8 -1 1
       25 GETTABLEKS                       R9 R0 K7 ["localization"]
       27 GETTABLEKS                       R10 R0 K8 ["analytics"]
       29 SETLIST                          R6 R7 4 [1]
       31 DUPTABLE                         R7 K10 [{"FoundationProvider"}]
       32 GETUPVAL                         R8 3
       33 GETTABLEKS                       R8 R8 K11 ["createElement"]
       35 GETUPVAL                         R9 4
       36 DUPTABLE                         R10 K14 [{["theme"], ["device"] = "Desktop"}]
       37 SETTABLEKS                       R4 R10 K3 ["theme"]
       39 DUPTABLE                         R11 K16 [{"Panel"}]
       40 GETUPVAL                         R12 3
       41 GETTABLEKS                       R12 R12 K11 ["createElement"]
       43 LOADK                            R13 K17 ["Frame"]
       44 DUPTABLE                         R14 K23 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["AnchorPoint"], ["Position"]}]
       45 GETIMPORT                        R15 K26 [Enum.AutomaticSize.XY]
       47 SETTABLEKS                       R15 R14 K18 ["AutomaticSize"]
       49 GETIMPORT                        R15 K28 [Vector2.new]
       51 LOADN                            R16 1
       52 LOADN                            R17 0
       53 CALL                             R15 2 1
       54 SETTABLEKS                       R15 R14 K21 ["AnchorPoint"]
       56 GETIMPORT                        R15 K30 [UDim2.new]
       58 LOADN                            R16 1
       59 LOADN                            R17 0
       60 LOADN                            R18 0
       61 LOADN                            R19 0
       62 CALL                             R15 4 1
       63 SETTABLEKS                       R15 R14 K22 ["Position"]
       65 DUPTABLE                         R15 K35 [{"Layout", "Padding", "ViewSelector", "NavRow"}]
       66 GETUPVAL                         R16 3
       67 GETTABLEKS                       R16 R16 K11 ["createElement"]
       69 LOADK                            R17 K36 ["UIListLayout"]
       70 DUPTABLE                         R18 K40 [{"FillDirection", "ItemLineAlignment", "SortOrder", "Padding"}]
       71 GETIMPORT                        R19 K42 [Enum.FillDirection.Vertical]
       73 SETTABLEKS                       R19 R18 K37 ["FillDirection"]
       75 GETIMPORT                        R19 K44 [Enum.ItemLineAlignment.Center]
       77 SETTABLEKS                       R19 R18 K38 ["ItemLineAlignment"]
       79 GETIMPORT                        R19 K46 [Enum.SortOrder.LayoutOrder]
       81 SETTABLEKS                       R19 R18 K39 ["SortOrder"]
       83 GETIMPORT                        R19 K48 [UDim.new]
       85 LOADN                            R20 0
       86 LOADN                            R21 5
       87 CALL                             R19 2 1
       88 SETTABLEKS                       R19 R18 K32 ["Padding"]
       90 CALL                             R16 2 1
       91 SETTABLEKS                       R16 R15 K31 ["Layout"]
       93 GETUPVAL                         R16 3
       94 GETTABLEKS                       R16 R16 K11 ["createElement"]
       96 LOADK                            R17 K49 ["UIPadding"]
       97 DUPTABLE                         R18 K51 [{"PaddingTop"}]
       98 GETIMPORT                        R19 K48 [UDim.new]
      100 LOADN                            R20 0
      101 LOADN                            R21 5
      102 CALL                             R19 2 1
      103 SETTABLEKS                       R19 R18 K50 ["PaddingTop"]
      105 CALL                             R16 2 1
      106 SETTABLEKS                       R16 R15 K32 ["Padding"]
      108 GETTABLEKS                       R16 R0 K1 ["state"]
      110 GETTABLEKS                       R16 R16 K52 ["viewSelectorActive"]
      112 JUMPIFNOT                        R16 ; [+8]
      113 GETUPVAL                         R16 3
      114 GETTABLEKS                       R16 R16 K11 ["createElement"]
      116 GETUPVAL                         R17 5
      117 DUPTABLE                         R18 K54 [{["LayoutOrder"] = 0, ["Plugin"]}]
      118 SETTABLEKS                       R3 R18 K2 ["Plugin"]
      120 CALL                             R16 2 1
      121 SETTABLEKS                       R16 R15 K33 ["ViewSelector"]
      123 GETUPVAL                         R16 3
      124 GETTABLEKS                       R16 R16 K11 ["createElement"]
      126 LOADK                            R17 K17 ["Frame"]
      127 DUPTABLE                         R18 K56 [{["LayoutOrder"] = 1, ["BackgroundTransparency"] = 1, ["Size"]}]
      128 GETIMPORT                        R19 K30 [UDim2.new]
      130 LOADN                            R20 0
      131 LOADN                            R21 128
      132 LOADN                            R22 0
      133 LOADN                            R23 27
      134 CALL                             R19 4 1
      135 SETTABLEKS                       R19 R18 K55 ["Size"]
      137 DUPTABLE                         R19 K59 [{"Layout", "Padding", "NavButtons", "SpeedSlider"}]
      138 GETUPVAL                         R20 3
      139 GETTABLEKS                       R20 R20 K11 ["createElement"]
      141 LOADK                            R21 K36 ["UIListLayout"]
      142 DUPTABLE                         R22 K40 [{"FillDirection", "ItemLineAlignment", "SortOrder", "Padding"}]
      143 GETIMPORT                        R23 K61 [Enum.FillDirection.Horizontal]
      145 SETTABLEKS                       R23 R22 K37 ["FillDirection"]
      147 GETIMPORT                        R23 K44 [Enum.ItemLineAlignment.Center]
      149 SETTABLEKS                       R23 R22 K38 ["ItemLineAlignment"]
      151 GETIMPORT                        R23 K46 [Enum.SortOrder.LayoutOrder]
      153 SETTABLEKS                       R23 R22 K39 ["SortOrder"]
      155 GETIMPORT                        R23 K48 [UDim.new]
      157 LOADN                            R24 0
      158 LOADN                            R25 5
      159 CALL                             R23 2 1
      160 SETTABLEKS                       R23 R22 K32 ["Padding"]
      162 CALL                             R20 2 1
      163 SETTABLEKS                       R20 R19 K31 ["Layout"]
      165 GETUPVAL                         R20 3
      166 GETTABLEKS                       R20 R20 K11 ["createElement"]
      168 LOADK                            R21 K49 ["UIPadding"]
      169 DUPTABLE                         R22 K63 [{"PaddingRight"}]
      170 GETIMPORT                        R23 K48 [UDim.new]
      172 LOADN                            R24 0
      173 LOADN                            R25 5
      174 CALL                             R23 2 1
      175 SETTABLEKS                       R23 R22 K62 ["PaddingRight"]
      177 CALL                             R20 2 1
      178 SETTABLEKS                       R20 R19 K32 ["Padding"]
      180 GETUPVAL                         R20 3
      181 GETTABLEKS                       R20 R20 K11 ["createElement"]
      183 GETUPVAL                         R21 6
      184 DUPTABLE                         R22 K64 [{["LayoutOrder"] = 0}]
      185 CALL                             R20 2 1
      186 SETTABLEKS                       R20 R19 K57 ["NavButtons"]
      188 GETUPVAL                         R20 3
      189 GETTABLEKS                       R20 R20 K11 ["createElement"]
      191 GETUPVAL                         R21 7
      192 DUPTABLE                         R22 K65 [{["LayoutOrder"] = 1, ["Size"]}]
      193 GETIMPORT                        R23 K30 [UDim2.new]
      195 LOADN                            R24 0
      196 LOADN                            R25 96
      197 LOADN                            R26 0
      198 LOADN                            R27 22
      199 CALL                             R23 4 1
      200 SETTABLEKS                       R23 R22 K55 ["Size"]
      202 CALL                             R20 2 1
      203 SETTABLEKS                       R20 R19 K58 ["SpeedSlider"]
      205 CALL                             R16 3 1
      206 SETTABLEKS                       R16 R15 K34 ["NavRow"]
      208 CALL                             R12 3 1
      209 SETTABLEKS                       R12 R11 K15 ["Panel"]
      211 CALL                             R8 3 1
      212 SETTABLEKS                       R8 R7 K9 ["FoundationProvider"]
      214 CALL                             R5 2 -1
      215 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioCameraUI"]
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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["FoundationProvider"]
       30 GETTABLEKS                       R5 R2 K11 ["ContextServices"]
       32 GETTABLEKS                       R6 R5 K12 ["Plugin"]
       34 GETTABLEKS                       R7 R5 K13 ["Mouse"]
       36 GETTABLEKS                       R8 R2 K14 ["Style"]
       38 GETTABLEKS                       R8 R8 K15 ["Themes"]
       40 GETTABLEKS                       R8 R8 K16 ["StudioTheme"]
       42 GETTABLEKS                       R9 R2 K17 ["Styling"]
       44 GETTABLEKS                       R9 R9 K18 ["registerPluginStyles"]
       46 GETTABLEKS                       R10 R0 K19 ["Src"]
       48 GETTABLEKS                       R10 R10 K20 ["Resources"]
       50 GETTABLEKS                       R10 R10 K21 ["Localization"]
       52 GETTABLEKS                       R10 R10 K22 ["SourceStrings"]
       54 GETTABLEKS                       R11 R0 K19 ["Src"]
       56 GETTABLEKS                       R11 R11 K20 ["Resources"]
       58 GETTABLEKS                       R11 R11 K21 ["Localization"]
       60 GETTABLEKS                       R11 R11 K23 ["LocalizedStrings"]
       62 GETTABLEKS                       R12 R0 K19 ["Src"]
       64 GETTABLEKS                       R12 R12 K24 ["Components"]
       66 GETTABLEKS                       R13 R1 K25 ["PureComponent"]
       68 LOADK                            R15 K26 ["MainPlugin"]
       69 NAMECALL                         R13 R13 K27 ["extend"]
       71 CALL                             R13 2 1
       72 GETIMPORT                        R14 K5 [require]
       74 GETTABLEKS                       R15 R12 K28 ["ViewSelector"]
       76 CALL                             R14 1 1
       77 GETIMPORT                        R15 K5 [require]
       79 GETTABLEKS                       R16 R12 K29 ["SpeedSlider"]
       81 CALL                             R15 1 1
       82 GETIMPORT                        R16 K5 [require]
       84 GETTABLEKS                       R17 R12 K30 ["NavModelButtons"]
       86 CALL                             R16 1 1
       87 GETIMPORT                        R17 K32 [game]
       89 LOADK                            R19 K33 ["StudioCameraService"]
       90 NAMECALL                         R17 R17 K34 ["GetService"]
       92 CALL                             R17 2 1
       93 DUPCLOSURE                       R18 K35 [PROTO_7]
       94 CAPTURE                          VAL R17
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R9
      100 SETTABLEKS                       R18 R13 K36 ["init"]
      102 DUPCLOSURE                       R18 K37 [PROTO_8]
      103 SETTABLEKS                       R18 R13 K38 ["willUnmount"]
      105 DUPCLOSURE                       R18 K39 [PROTO_9]
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R14
      112 CAPTURE                          VAL R16
      113 CAPTURE                          VAL R15
      114 SETTABLEKS                       R18 R13 K40 ["render"]
      116 RETURN                           R13 1
