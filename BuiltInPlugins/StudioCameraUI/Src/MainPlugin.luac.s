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
       78 DUPTABLE                         R5 K29 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       79 GETUPVAL                         R6 2
       80 SETTABLEKS                       R6 R5 K26 ["stringResourceTable"]
       82 GETUPVAL                         R6 3
       83 SETTABLEKS                       R6 R5 K27 ["translationResourceTable"]
       85 LOADK                            R6 K30 ["StudioCameraUI"]
       86 SETTABLEKS                       R6 R5 K28 ["pluginName"]
       88 CALL                             R4 1 1
       89 SETTABLEKS                       R4 R0 K31 ["localization"]
       91 GETUPVAL                         R4 1
       92 GETTABLEKS                       R4 R4 K32 ["Analytics"]
       94 GETTABLEKS                       R4 R4 K25 ["new"]
       96 DUPCLOSURE                       R5 K33 [PROTO_6]
       97 NEWTABLE                         R6 0 0
       99 CALL                             R4 2 1
      100 SETTABLEKS                       R4 R0 K34 ["analytics"]
      102 GETUPVAL                         R4 4
      103 GETTABLEKS                       R4 R4 K25 ["new"]
      105 CALL                             R4 0 1
      106 SETTABLEKS                       R4 R0 K35 ["DEPRECATED_stylizer"]
      108 GETUPVAL                         R4 5
      109 GETTABLEKS                       R5 R0 K0 ["props"]
      111 GETTABLEKS                       R5 R5 K1 ["Plugin"]
      113 CALL                             R4 1 1
      114 SETTABLEKS                       R4 R0 K36 ["design"]
      116 RETURN                           R0 0

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
       36 DUPTABLE                         R10 K13 [{"theme", "device"}]
       37 SETTABLEKS                       R4 R10 K3 ["theme"]
       39 LOADK                            R11 K14 ["Desktop"]
       40 SETTABLEKS                       R11 R10 K12 ["device"]
       42 DUPTABLE                         R11 K16 [{"Panel"}]
       43 GETUPVAL                         R12 3
       44 GETTABLEKS                       R12 R12 K11 ["createElement"]
       46 LOADK                            R13 K17 ["Frame"]
       47 DUPTABLE                         R14 K22 [{"AutomaticSize", "BackgroundTransparency", "AnchorPoint", "Position"}]
       48 GETIMPORT                        R15 K25 [Enum.AutomaticSize.XY]
       50 SETTABLEKS                       R15 R14 K18 ["AutomaticSize"]
       52 LOADN                            R15 1
       53 SETTABLEKS                       R15 R14 K19 ["BackgroundTransparency"]
       55 GETIMPORT                        R15 K27 [Vector2.new]
       57 LOADN                            R16 1
       58 LOADN                            R17 0
       59 CALL                             R15 2 1
       60 SETTABLEKS                       R15 R14 K20 ["AnchorPoint"]
       62 GETIMPORT                        R15 K29 [UDim2.new]
       64 LOADN                            R16 1
       65 LOADN                            R17 0
       66 LOADN                            R18 0
       67 LOADN                            R19 0
       68 CALL                             R15 4 1
       69 SETTABLEKS                       R15 R14 K21 ["Position"]
       71 DUPTABLE                         R15 K33 [{"Layout", "ViewSelector", "Speed"}]
       72 GETUPVAL                         R16 3
       73 GETTABLEKS                       R16 R16 K11 ["createElement"]
       75 LOADK                            R17 K34 ["UIListLayout"]
       76 DUPTABLE                         R18 K38 [{"FillDirection", "ItemLineAlignment", "SortOrder"}]
       77 GETIMPORT                        R19 K40 [Enum.FillDirection.Vertical]
       79 SETTABLEKS                       R19 R18 K35 ["FillDirection"]
       81 GETIMPORT                        R19 K42 [Enum.ItemLineAlignment.Center]
       83 SETTABLEKS                       R19 R18 K36 ["ItemLineAlignment"]
       85 GETIMPORT                        R19 K44 [Enum.SortOrder.LayoutOrder]
       87 SETTABLEKS                       R19 R18 K37 ["SortOrder"]
       89 CALL                             R16 2 1
       90 SETTABLEKS                       R16 R15 K30 ["Layout"]
       92 GETTABLEKS                       R16 R0 K1 ["state"]
       94 GETTABLEKS                       R16 R16 K45 ["viewSelectorActive"]
       96 JUMPIFNOT                        R16 ; [+11]
       97 GETUPVAL                         R16 3
       98 GETTABLEKS                       R16 R16 K11 ["createElement"]
      100 GETUPVAL                         R17 5
      101 DUPTABLE                         R18 K46 [{"LayoutOrder", "Plugin"}]
      102 LOADN                            R19 0
      103 SETTABLEKS                       R19 R18 K43 ["LayoutOrder"]
      105 SETTABLEKS                       R3 R18 K2 ["Plugin"]
      107 CALL                             R16 2 1
      108 SETTABLEKS                       R16 R15 K31 ["ViewSelector"]
      110 GETUPVAL                         R16 3
      111 GETTABLEKS                       R16 R16 K11 ["createElement"]
      113 LOADK                            R17 K17 ["Frame"]
      114 DUPTABLE                         R18 K48 [{"LayoutOrder", "BackgroundTransparency", "Size"}]
      115 LOADN                            R19 1
      116 SETTABLEKS                       R19 R18 K43 ["LayoutOrder"]
      118 LOADN                            R19 1
      119 SETTABLEKS                       R19 R18 K19 ["BackgroundTransparency"]
      121 GETIMPORT                        R19 K29 [UDim2.new]
      123 LOADN                            R20 0
      124 LOADN                            R21 128
      125 LOADN                            R22 0
      126 LOADN                            R23 27
      127 CALL                             R19 4 1
      128 SETTABLEKS                       R19 R18 K47 ["Size"]
      130 DUPTABLE                         R19 K50 [{"Layout", "SpeedSlider"}]
      131 GETUPVAL                         R20 3
      132 GETTABLEKS                       R20 R20 K11 ["createElement"]
      134 LOADK                            R21 K34 ["UIListLayout"]
      135 DUPTABLE                         R22 K53 [{"FillDirection", "ItemLineAlignment", "SortOrder", "HorizontalFlex", "VerticalFlex"}]
      136 GETIMPORT                        R23 K55 [Enum.FillDirection.Horizontal]
      138 SETTABLEKS                       R23 R22 K35 ["FillDirection"]
      140 GETIMPORT                        R23 K42 [Enum.ItemLineAlignment.Center]
      142 SETTABLEKS                       R23 R22 K36 ["ItemLineAlignment"]
      144 GETIMPORT                        R23 K44 [Enum.SortOrder.LayoutOrder]
      146 SETTABLEKS                       R23 R22 K37 ["SortOrder"]
      148 GETIMPORT                        R23 K58 [Enum.UIFlexAlignment.SpaceEvenly]
      150 SETTABLEKS                       R23 R22 K51 ["HorizontalFlex"]
      152 GETIMPORT                        R23 K58 [Enum.UIFlexAlignment.SpaceEvenly]
      154 SETTABLEKS                       R23 R22 K52 ["VerticalFlex"]
      156 CALL                             R20 2 1
      157 SETTABLEKS                       R20 R19 K30 ["Layout"]
      159 GETUPVAL                         R20 3
      160 GETTABLEKS                       R20 R20 K11 ["createElement"]
      162 GETUPVAL                         R21 6
      163 DUPTABLE                         R22 K59 [{"LayoutOrder"}]
      164 LOADN                            R23 0
      165 SETTABLEKS                       R23 R22 K43 ["LayoutOrder"]
      167 CALL                             R20 2 1
      168 SETTABLEKS                       R20 R19 K49 ["SpeedSlider"]
      170 CALL                             R16 3 1
      171 SETTABLEKS                       R16 R15 K32 ["Speed"]
      173 CALL                             R12 3 1
      174 SETTABLEKS                       R12 R11 K15 ["Panel"]
      176 CALL                             R8 3 1
      177 SETTABLEKS                       R8 R7 K9 ["FoundationProvider"]
      179 CALL                             R5 2 -1
      180 RETURN                           R5 -1

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
       82 GETIMPORT                        R16 K31 [game]
       84 LOADK                            R18 K32 ["StudioCameraService"]
       85 NAMECALL                         R16 R16 K33 ["GetService"]
       87 CALL                             R16 2 1
       88 DUPCLOSURE                       R17 K34 [PROTO_7]
       89 CAPTURE                          VAL R16
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R9
       95 SETTABLEKS                       R17 R13 K35 ["init"]
       97 DUPCLOSURE                       R17 K36 [PROTO_8]
       98 SETTABLEKS                       R17 R13 K37 ["willUnmount"]
      100 DUPCLOSURE                       R17 K38 [PROTO_9]
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R14
      107 CAPTURE                          VAL R15
      108 SETTABLEKS                       R17 R13 K39 ["render"]
      110 RETURN                           R13 1
