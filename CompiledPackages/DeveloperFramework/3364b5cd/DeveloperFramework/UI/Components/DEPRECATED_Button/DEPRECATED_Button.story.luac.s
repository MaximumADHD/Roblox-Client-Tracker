PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["provide"]
        3 NEWTABLE                         R2 0 1
        5 GETUPVAL                         R3 1
        6 SETLIST                          R2 R3 1 [1]
        8 DUPTABLE                         R3 K2 [{"Child"}]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R4 R5 K3 ["createElement"]
       12 GETUPVAL                         R5 3
       13 DUPTABLE                         R6 K10 [{"Style", "Text", "StyleModifier", "Size", "LayoutOrder", "OnClick"}]
       14 LOADK                            R7 K11 ["Round"]
       15 SETTABLEKS                       R7 R6 K4 ["Style"]
       17 LOADK                            R7 K12 ["Cancel"]
       18 SETTABLEKS                       R7 R6 K5 ["Text"]
       20 GETTABLEKS                       R9 R0 K13 ["controls"]
       22 GETTABLEKS                       R8 R9 K14 ["isDisabled"]
       24 JUMPIFNOT                        R8 ; [+4]
       25 GETUPVAL                         R8 4
       26 GETTABLEKS                       R7 R8 K15 ["Disabled"]
       28 JUMP                             ; [+1]
       29 LOADNIL                          R7
       30 SETTABLEKS                       R7 R6 K6 ["StyleModifier"]
       32 GETIMPORT                        R7 K18 [UDim2.fromOffset]
       34 LOADN                            R8 120
       35 LOADN                            R9 32
       36 CALL                             R7 2 1
       37 SETTABLEKS                       R7 R6 K7 ["Size"]
       39 LOADN                            R7 2
       40 SETTABLEKS                       R7 R6 K8 ["LayoutOrder"]
       42 GETUPVAL                         R7 5
       43 SETTABLEKS                       R7 R6 K9 ["OnClick"]
       45 NEWTABLE                         R7 0 1
       47 GETUPVAL                         R9 2
       48 GETTABLEKS                       R8 R9 K3 ["createElement"]
       50 GETUPVAL                         R9 6
       51 DUPTABLE                         R10 K20 [{"Cursor"}]
       52 LOADK                            R11 K21 ["PointingHand"]
       53 SETTABLEKS                       R11 R10 K19 ["Cursor"]
       55 CALL                             R8 2 -1
       56 SETLIST                          R7 R8 -1 [1]
       58 CALL                             R4 3 1
       59 SETTABLEKS                       R4 R3 K1 ["Child"]
       61 CALL                             R1 2 -1
       62 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["provide"]
        3 NEWTABLE                         R2 0 1
        5 GETUPVAL                         R3 1
        6 SETLIST                          R2 R3 1 [1]
        8 DUPTABLE                         R3 K2 [{"Child"}]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R4 R5 K3 ["createElement"]
       12 GETUPVAL                         R5 3
       13 DUPTABLE                         R6 K10 [{"Style", "Text", "StyleModifier", "Size", "LayoutOrder", "OnClick"}]
       14 LOADK                            R7 K11 ["RoundSubtle"]
       15 SETTABLEKS                       R7 R6 K4 ["Style"]
       17 LOADK                            R7 K12 ["Save"]
       18 SETTABLEKS                       R7 R6 K5 ["Text"]
       20 GETTABLEKS                       R9 R0 K13 ["controls"]
       22 GETTABLEKS                       R8 R9 K14 ["isDisabled"]
       24 JUMPIFNOT                        R8 ; [+4]
       25 GETUPVAL                         R8 4
       26 GETTABLEKS                       R7 R8 K15 ["Disabled"]
       28 JUMP                             ; [+1]
       29 LOADNIL                          R7
       30 SETTABLEKS                       R7 R6 K6 ["StyleModifier"]
       32 GETIMPORT                        R7 K18 [UDim2.fromOffset]
       34 LOADN                            R8 120
       35 LOADN                            R9 32
       36 CALL                             R7 2 1
       37 SETTABLEKS                       R7 R6 K7 ["Size"]
       39 LOADN                            R7 3
       40 SETTABLEKS                       R7 R6 K8 ["LayoutOrder"]
       42 GETUPVAL                         R7 5
       43 SETTABLEKS                       R7 R6 K9 ["OnClick"]
       45 NEWTABLE                         R7 0 1
       47 GETUPVAL                         R9 2
       48 GETTABLEKS                       R8 R9 K3 ["createElement"]
       50 GETUPVAL                         R9 6
       51 DUPTABLE                         R10 K20 [{"Cursor"}]
       52 LOADK                            R11 K21 ["PointingHand"]
       53 SETTABLEKS                       R11 R10 K19 ["Cursor"]
       55 CALL                             R8 2 -1
       56 SETLIST                          R7 R8 -1 [1]
       58 CALL                             R4 3 1
       59 SETTABLEKS                       R4 R3 K1 ["Child"]
       61 CALL                             R1 2 -1
       62 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["provide"]
        3 NEWTABLE                         R2 0 1
        5 GETUPVAL                         R3 1
        6 SETLIST                          R2 R3 1 [1]
        8 DUPTABLE                         R3 K2 [{"Child"}]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R4 R5 K3 ["createElement"]
       12 GETUPVAL                         R5 3
       13 DUPTABLE                         R6 K10 [{"Style", "Text", "StyleModifier", "Size", "LayoutOrder", "OnClick"}]
       14 LOADK                            R7 K11 ["RoundPrimary"]
       15 SETTABLEKS                       R7 R6 K4 ["Style"]
       17 LOADK                            R7 K12 ["Save"]
       18 SETTABLEKS                       R7 R6 K5 ["Text"]
       20 GETTABLEKS                       R9 R0 K13 ["controls"]
       22 GETTABLEKS                       R8 R9 K14 ["isDisabled"]
       24 JUMPIFNOT                        R8 ; [+4]
       25 GETUPVAL                         R8 4
       26 GETTABLEKS                       R7 R8 K15 ["Disabled"]
       28 JUMP                             ; [+1]
       29 LOADNIL                          R7
       30 SETTABLEKS                       R7 R6 K6 ["StyleModifier"]
       32 GETIMPORT                        R7 K18 [UDim2.fromOffset]
       34 LOADN                            R8 120
       35 LOADN                            R9 32
       36 CALL                             R7 2 1
       37 SETTABLEKS                       R7 R6 K7 ["Size"]
       39 LOADN                            R7 3
       40 SETTABLEKS                       R7 R6 K8 ["LayoutOrder"]
       42 GETUPVAL                         R7 5
       43 SETTABLEKS                       R7 R6 K9 ["OnClick"]
       45 NEWTABLE                         R7 0 1
       47 GETUPVAL                         R9 2
       48 GETTABLEKS                       R8 R9 K3 ["createElement"]
       50 GETUPVAL                         R9 6
       51 DUPTABLE                         R10 K20 [{"Cursor"}]
       52 LOADK                            R11 K21 ["PointingHand"]
       53 SETTABLEKS                       R11 R10 K19 ["Cursor"]
       55 CALL                             R8 2 -1
       56 SETLIST                          R7 R8 -1 [1]
       58 CALL                             R4 3 1
       59 SETTABLEKS                       R4 R3 K1 ["Child"]
       61 CALL                             R1 2 -1
       62 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["provide"]
        3 NEWTABLE                         R2 0 1
        5 GETUPVAL                         R3 1
        6 SETLIST                          R2 R3 1 [1]
        8 DUPTABLE                         R3 K2 [{"Child"}]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R4 R5 K3 ["createElement"]
       12 GETUPVAL                         R5 3
       13 DUPTABLE                         R6 K9 [{"Style", "StyleModifier", "Size", "LayoutOrder", "OnClick"}]
       14 LOADK                            R7 K10 ["Close"]
       15 SETTABLEKS                       R7 R6 K4 ["Style"]
       17 GETTABLEKS                       R9 R0 K11 ["controls"]
       19 GETTABLEKS                       R8 R9 K12 ["isDisabled"]
       21 JUMPIFNOT                        R8 ; [+4]
       22 GETUPVAL                         R8 4
       23 GETTABLEKS                       R7 R8 K13 ["Disabled"]
       25 JUMP                             ; [+1]
       26 LOADNIL                          R7
       27 SETTABLEKS                       R7 R6 K5 ["StyleModifier"]
       29 GETIMPORT                        R7 K16 [UDim2.fromOffset]
       31 LOADN                            R8 22
       32 LOADN                            R9 22
       33 CALL                             R7 2 1
       34 SETTABLEKS                       R7 R6 K6 ["Size"]
       36 LOADN                            R7 1
       37 SETTABLEKS                       R7 R6 K7 ["LayoutOrder"]
       39 GETUPVAL                         R7 5
       40 SETTABLEKS                       R7 R6 K8 ["OnClick"]
       42 CALL                             R4 2 1
       43 SETTABLEKS                       R4 R3 K1 ["Child"]
       45 CALL                             R1 2 -1
       46 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["provide"]
        3 NEWTABLE                         R2 0 1
        5 GETUPVAL                         R3 1
        6 SETLIST                          R2 R3 1 [1]
        8 DUPTABLE                         R3 K2 [{"Child"}]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R4 R5 K3 ["createElement"]
       12 GETUPVAL                         R5 3
       13 DUPTABLE                         R6 K9 [{"Style", "StyleModifier", "Size", "LayoutOrder", "OnClick"}]
       14 LOADK                            R7 K10 ["Round"]
       15 SETTABLEKS                       R7 R6 K4 ["Style"]
       17 GETTABLEKS                       R9 R0 K11 ["controls"]
       19 GETTABLEKS                       R8 R9 K12 ["isDisabled"]
       21 JUMPIFNOT                        R8 ; [+4]
       22 GETUPVAL                         R8 4
       23 GETTABLEKS                       R7 R8 K13 ["Disabled"]
       25 JUMP                             ; [+1]
       26 LOADNIL                          R7
       27 SETTABLEKS                       R7 R6 K5 ["StyleModifier"]
       29 GETIMPORT                        R7 K16 [UDim2.fromOffset]
       31 LOADN                            R8 24
       32 LOADN                            R9 24
       33 CALL                             R7 2 1
       34 SETTABLEKS                       R7 R6 K6 ["Size"]
       36 LOADN                            R7 3
       37 SETTABLEKS                       R7 R6 K7 ["LayoutOrder"]
       39 GETUPVAL                         R7 5
       40 SETTABLEKS                       R7 R6 K8 ["OnClick"]
       42 DUPTABLE                         R7 K18 [{"Settings"}]
       43 GETUPVAL                         R9 2
       44 GETTABLEKS                       R8 R9 K3 ["createElement"]
       46 GETUPVAL                         R9 6
       47 DUPTABLE                         R10 K19 [{"Style"}]
       48 LOADK                            R11 K17 ["Settings"]
       49 SETTABLEKS                       R11 R10 K4 ["Style"]
       51 CALL                             R8 2 1
       52 SETTABLEKS                       R8 R7 K17 ["Settings"]
       54 CALL                             R4 3 1
       55 SETTABLEKS                       R4 R3 K1 ["Child"]
       57 CALL                             R1 2 -1
       58 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["provide"]
        3 NEWTABLE                         R2 0 1
        5 GETUPVAL                         R3 1
        6 SETLIST                          R2 R3 1 [1]
        8 DUPTABLE                         R3 K2 [{"Child"}]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R4 R5 K3 ["createElement"]
       12 GETUPVAL                         R5 3
       13 DUPTABLE                         R6 K9 [{"Style", "StyleModifier", "Size", "LayoutOrder", "OnClick"}]
       14 LOADK                            R7 K10 ["RoundPrimary"]
       15 SETTABLEKS                       R7 R6 K4 ["Style"]
       17 GETTABLEKS                       R9 R0 K11 ["controls"]
       19 GETTABLEKS                       R8 R9 K12 ["isDisabled"]
       21 JUMPIFNOT                        R8 ; [+4]
       22 GETUPVAL                         R8 4
       23 GETTABLEKS                       R7 R8 K13 ["Disabled"]
       25 JUMP                             ; [+1]
       26 LOADNIL                          R7
       27 SETTABLEKS                       R7 R6 K5 ["StyleModifier"]
       29 GETIMPORT                        R7 K16 [UDim2.fromOffset]
       31 LOADN                            R8 120
       32 LOADN                            R9 32
       33 CALL                             R7 2 1
       34 SETTABLEKS                       R7 R6 K6 ["Size"]
       36 LOADN                            R7 4
       37 SETTABLEKS                       R7 R6 K7 ["LayoutOrder"]
       39 GETUPVAL                         R7 5
       40 SETTABLEKS                       R7 R6 K8 ["OnClick"]
       42 DUPTABLE                         R7 K18 [{"Pane"}]
       43 GETUPVAL                         R9 2
       44 GETTABLEKS                       R8 R9 K3 ["createElement"]
       46 GETUPVAL                         R9 6
       47 DUPTABLE                         R10 K21 [{"Layout", "Padding"}]
       48 GETIMPORT                        R11 K25 [Enum.FillDirection.Horizontal]
       50 SETTABLEKS                       R11 R10 K19 ["Layout"]
       52 DUPTABLE                         R11 K28 [{"Left", "Right"}]
       53 LOADN                            R12 10
       54 SETTABLEKS                       R12 R11 K26 ["Left"]
       56 LOADN                            R12 5
       57 SETTABLEKS                       R12 R11 K27 ["Right"]
       59 SETTABLEKS                       R11 R10 K20 ["Padding"]
       61 DUPTABLE                         R11 K31 [{"Settings", "Text"}]
       62 GETUPVAL                         R13 2
       63 GETTABLEKS                       R12 R13 K3 ["createElement"]
       65 GETUPVAL                         R13 7
       66 DUPTABLE                         R14 K32 [{"Style", "LayoutOrder"}]
       67 LOADK                            R15 K29 ["Settings"]
       68 SETTABLEKS                       R15 R14 K4 ["Style"]
       70 LOADN                            R15 1
       71 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
       73 CALL                             R12 2 1
       74 SETTABLEKS                       R12 R11 K29 ["Settings"]
       76 GETUPVAL                         R13 2
       77 GETTABLEKS                       R12 R13 K3 ["createElement"]
       79 LOADK                            R13 K33 ["TextLabel"]
       80 DUPTABLE                         R14 K39 [{"LayoutOrder", "Text", "BackgroundTransparency", "Size", "TextXAlignment", "Font", "TextSize", "TextColor3"}]
       81 LOADN                            R15 2
       82 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
       84 LOADK                            R15 K29 ["Settings"]
       85 SETTABLEKS                       R15 R14 K30 ["Text"]
       87 LOADN                            R15 1
       88 SETTABLEKS                       R15 R14 K34 ["BackgroundTransparency"]
       90 GETIMPORT                        R15 K41 [UDim2.fromScale]
       92 LOADN                            R16 1
       93 LOADN                            R17 1
       94 CALL                             R15 2 1
       95 SETTABLEKS                       R15 R14 K6 ["Size"]
       97 GETIMPORT                        R15 K42 [Enum.TextXAlignment.Left]
       99 SETTABLEKS                       R15 R14 K35 ["TextXAlignment"]
      101 GETIMPORT                        R15 K44 [Enum.Font.SourceSans]
      103 SETTABLEKS                       R15 R14 K36 ["Font"]
      105 LOADN                            R15 18
      106 SETTABLEKS                       R15 R14 K37 ["TextSize"]
      108 GETIMPORT                        R15 K47 [Color3.new]
      110 LOADN                            R16 1
      111 LOADN                            R17 1
      112 LOADN                            R18 1
      113 CALL                             R15 3 1
      114 SETTABLEKS                       R15 R14 K38 ["TextColor3"]
      116 CALL                             R12 2 1
      117 SETTABLEKS                       R12 R11 K30 ["Text"]
      119 CALL                             R8 3 1
      120 SETTABLEKS                       R8 R7 K17 ["Pane"]
      122 CALL                             R4 3 1
      123 SETTABLEKS                       R4 R3 K1 ["Child"]
      125 CALL                             R1 2 -1
      126 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["provide"]
        3 NEWTABLE                         R2 0 1
        5 GETUPVAL                         R3 1
        6 SETLIST                          R2 R3 1 [1]
        8 DUPTABLE                         R3 K2 [{"Child"}]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R4 R5 K3 ["createElement"]
       12 GETUPVAL                         R5 3
       13 DUPTABLE                         R6 K11 [{"Icon", "Style", "StyleModifier", "Size", "LayoutOrder", "OnClick", "Text"}]
       14 LOADK                            R7 K12 ["rbxasset://textures/AnimationEditor/btn_manage.png"]
       15 SETTABLEKS                       R7 R6 K4 ["Icon"]
       17 LOADK                            R7 K13 ["Round"]
       18 SETTABLEKS                       R7 R6 K5 ["Style"]
       20 GETTABLEKS                       R9 R0 K14 ["controls"]
       22 GETTABLEKS                       R8 R9 K15 ["isDisabled"]
       24 JUMPIFNOT                        R8 ; [+4]
       25 GETUPVAL                         R8 4
       26 GETTABLEKS                       R7 R8 K16 ["Disabled"]
       28 JUMP                             ; [+1]
       29 LOADNIL                          R7
       30 SETTABLEKS                       R7 R6 K6 ["StyleModifier"]
       32 GETIMPORT                        R7 K19 [UDim2.fromOffset]
       34 LOADN                            R8 24
       35 LOADN                            R9 24
       36 CALL                             R7 2 1
       37 SETTABLEKS                       R7 R6 K7 ["Size"]
       39 LOADN                            R7 3
       40 SETTABLEKS                       R7 R6 K8 ["LayoutOrder"]
       42 GETUPVAL                         R7 5
       43 SETTABLEKS                       R7 R6 K9 ["OnClick"]
       45 LOADK                            R7 K20 ["Settings"]
       46 SETTABLEKS                       R7 R6 K10 ["Text"]
       48 CALL                             R4 2 1
       49 SETTABLEKS                       R4 R3 K1 ["Child"]
       51 CALL                             R1 2 -1
       52 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R4 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R6 R0 K2 ["UI"]
       27 GETTABLEKS                       R5 R6 K9 ["Components"]
       29 GETTABLEKS                       R4 R5 K10 ["DEPRECATED_Button"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K6 [require]
       34 GETTABLEKS                       R7 R0 K2 ["UI"]
       36 GETTABLEKS                       R6 R7 K9 ["Components"]
       38 GETTABLEKS                       R5 R6 K11 ["Pane"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K6 [require]
       43 GETTABLEKS                       R8 R0 K2 ["UI"]
       45 GETTABLEKS                       R7 R8 K9 ["Components"]
       47 GETTABLEKS                       R6 R7 K12 ["HoverArea"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K6 [require]
       52 GETTABLEKS                       R9 R0 K2 ["UI"]
       54 GETTABLEKS                       R8 R9 K9 ["Components"]
       56 GETTABLEKS                       R7 R8 K13 ["Image"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K6 [require]
       61 GETTABLEKS                       R9 R0 K14 ["Style"]
       63 GETTABLEKS                       R8 R9 K15 ["ComponentSymbols"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K6 [require]
       68 GETTABLEKS                       R10 R0 K14 ["Style"]
       70 GETTABLEKS                       R9 R10 K16 ["ThemeSwitcher"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K6 [require]
       75 GETTABLEKS                       R12 R0 K14 ["Style"]
       77 GETTABLEKS                       R11 R12 K17 ["Themes"]
       79 GETTABLEKS                       R10 R11 K18 ["BaseTheme"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K6 [require]
       84 GETTABLEKS                       R12 R0 K19 ["Util"]
       86 GETTABLEKS                       R11 R12 K20 ["StyleModifier"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K6 [require]
       91 GETTABLEKS                       R13 R0 K14 ["Style"]
       93 GETTABLEKS                       R12 R13 K21 ["StyleKey"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K6 [require]
       98 GETTABLEKS                       R14 R0 K4 ["Parent"]
      100 GETTABLEKS                       R13 R14 K22 ["Dash"]
      102 CALL                             R12 1 1
      103 GETTABLEKS                       R13 R12 K23 ["join"]
      105 GETTABLEKS                       R14 R8 K24 ["new"]
      107 CALL                             R14 0 1
      108 NEWTABLE                         R17 1 0
      110 GETTABLEKS                       R18 R7 K13 ["Image"]
      112 MOVE                             R19 R13
      113 GETTABLEKS                       R21 R7 K13 ["Image"]
      115 GETTABLE                         R20 R9 R21
      116 NEWTABLE                         R21 2 0
      118 DUPTABLE                         R22 K27 [{"Image", "Color", "Size"}]
      119 LOADK                            R23 K28 ["rbxasset://textures/AnimationEditor/btn_manage.png"]
      120 SETTABLEKS                       R23 R22 K13 ["Image"]
      122 GETTABLEKS                       R23 R11 K29 ["MainText"]
      124 SETTABLEKS                       R23 R22 K25 ["Color"]
      126 GETIMPORT                        R23 K32 [UDim2.fromOffset]
      128 LOADN                            R24 24
      129 LOADN                            R25 24
      130 CALL                             R23 2 1
      131 SETTABLEKS                       R23 R22 K26 ["Size"]
      133 SETTABLEKS                       R22 R21 K33 ["&Settings"]
      135 DUPTABLE                         R22 K34 [{"Color"}]
      136 GETTABLEKS                       R23 R11 K35 ["DialogMainButtonText"]
      138 SETTABLEKS                       R23 R22 K25 ["Color"]
      140 SETTABLEKS                       R22 R21 K36 ["&SettingsPrimary"]
      142 CALL                             R19 2 1
      143 SETTABLE                         R19 R17 R18
      144 NAMECALL                         R15 R14 K37 ["extend"]
      146 CALL                             R15 2 0
      147 DUPCLOSURE                       R15 K38 [PROTO_0]
      148 DUPTABLE                         R16 K41 [{"controls", "stories"}]
      149 DUPTABLE                         R17 K43 [{"isDisabled"}]
      150 LOADB                            R18 0
      151 SETTABLEKS                       R18 R17 K42 ["isDisabled"]
      153 SETTABLEKS                       R17 R16 K39 ["controls"]
      155 DUPTABLE                         R17 K50 [{"Round", "RoundSubtle", "RoundPrimary", "CloseButton", "RoundPrimaryWithImage", "RoundWithImage"}]
      156 DUPCLOSURE                       R18 K51 [PROTO_1]
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R14
      159 CAPTURE                          VAL R1
      160 CAPTURE                          VAL R3
      161 CAPTURE                          VAL R10
      162 CAPTURE                          VAL R15
      163 CAPTURE                          VAL R5
      164 SETTABLEKS                       R18 R17 K44 ["Round"]
      166 DUPCLOSURE                       R18 K52 [PROTO_2]
      167 CAPTURE                          VAL R2
      168 CAPTURE                          VAL R14
      169 CAPTURE                          VAL R1
      170 CAPTURE                          VAL R3
      171 CAPTURE                          VAL R10
      172 CAPTURE                          VAL R15
      173 CAPTURE                          VAL R5
      174 SETTABLEKS                       R18 R17 K45 ["RoundSubtle"]
      176 DUPCLOSURE                       R18 K53 [PROTO_3]
      177 CAPTURE                          VAL R2
      178 CAPTURE                          VAL R14
      179 CAPTURE                          VAL R1
      180 CAPTURE                          VAL R3
      181 CAPTURE                          VAL R10
      182 CAPTURE                          VAL R15
      183 CAPTURE                          VAL R5
      184 SETTABLEKS                       R18 R17 K46 ["RoundPrimary"]
      186 DUPCLOSURE                       R18 K54 [PROTO_4]
      187 CAPTURE                          VAL R2
      188 CAPTURE                          VAL R14
      189 CAPTURE                          VAL R1
      190 CAPTURE                          VAL R3
      191 CAPTURE                          VAL R10
      192 CAPTURE                          VAL R15
      193 SETTABLEKS                       R18 R17 K47 ["CloseButton"]
      195 DUPCLOSURE                       R18 K55 [PROTO_5]
      196 CAPTURE                          VAL R2
      197 CAPTURE                          VAL R14
      198 CAPTURE                          VAL R1
      199 CAPTURE                          VAL R3
      200 CAPTURE                          VAL R10
      201 CAPTURE                          VAL R15
      202 CAPTURE                          VAL R6
      203 SETTABLEKS                       R18 R17 K48 ["RoundPrimaryWithImage"]
      205 DUPCLOSURE                       R18 K56 [PROTO_6]
      206 CAPTURE                          VAL R2
      207 CAPTURE                          VAL R14
      208 CAPTURE                          VAL R1
      209 CAPTURE                          VAL R3
      210 CAPTURE                          VAL R10
      211 CAPTURE                          VAL R15
      212 CAPTURE                          VAL R4
      213 CAPTURE                          VAL R6
      214 SETTABLEKS                       R18 R17 K49 ["RoundWithImage"]
      216 SETTABLEKS                       R17 R16 K40 ["stories"]
      218 GETTABLEKS                       R17 R16 K40 ["stories"]
      220 DUPCLOSURE                       R18 K57 [PROTO_7]
      221 CAPTURE                          VAL R2
      222 CAPTURE                          VAL R14
      223 CAPTURE                          VAL R1
      224 CAPTURE                          VAL R3
      225 CAPTURE                          VAL R10
      226 CAPTURE                          VAL R15
      227 SETTABLEKS                       R18 R17 K58 ["RoundWithIcon"]
      229 RETURN                           R16 1
