PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["provide"]
        3 NEWTABLE                         R2 0 1
        5 GETUPVAL                         R3 1
        6 SETLIST                          R2 R3 1 [1]
        8 DUPTABLE                         R3 K2 [{"Child"}]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K3 ["createElement"]
       12 GETUPVAL                         R5 3
       13 DUPTABLE                         R6 K13 [{["Style"] = "Round", ["Text"] = "Cancel", ["StyleModifier"], ["Size"], ["LayoutOrder"] = 2, ["OnClick"]}]
       14 GETTABLEKS                       R8 R0 K14 ["controls"]
       16 GETTABLEKS                       R8 R8 K15 ["isDisabled"]
       18 JUMPIFNOT                        R8 ; [+4]
       19 GETUPVAL                         R7 4
       20 GETTABLEKS                       R7 R7 K16 ["Disabled"]
       22 JUMP                             ; [+1]
       23 LOADNIL                          R7
       24 SETTABLEKS                       R7 R6 K8 ["StyleModifier"]
       26 GETIMPORT                        R7 K19 [UDim2.fromOffset]
       28 LOADN                            R8 120
       29 LOADN                            R9 32
       30 CALL                             R7 2 1
       31 SETTABLEKS                       R7 R6 K9 ["Size"]
       33 GETUPVAL                         R7 5
       34 SETTABLEKS                       R7 R6 K12 ["OnClick"]
       36 NEWTABLE                         R7 0 1
       38 GETUPVAL                         R8 2
       39 GETTABLEKS                       R8 R8 K3 ["createElement"]
       41 GETUPVAL                         R9 6
       42 DUPTABLE                         R10 K22 [{["Cursor"] = "PointingHand"}]
       43 CALL                             R8 2 -1
       44 SETLIST                          R7 R8 -1 [1]
       46 CALL                             R4 3 1
       47 SETTABLEKS                       R4 R3 K1 ["Child"]
       49 CALL                             R1 2 -1
       50 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["provide"]
        3 NEWTABLE                         R2 0 1
        5 GETUPVAL                         R3 1
        6 SETLIST                          R2 R3 1 [1]
        8 DUPTABLE                         R3 K2 [{"Child"}]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K3 ["createElement"]
       12 GETUPVAL                         R5 3
       13 DUPTABLE                         R6 K13 [{["Style"] = "RoundSubtle", ["Text"] = "Save", ["StyleModifier"], ["Size"], ["LayoutOrder"] = 3, ["OnClick"]}]
       14 GETTABLEKS                       R8 R0 K14 ["controls"]
       16 GETTABLEKS                       R8 R8 K15 ["isDisabled"]
       18 JUMPIFNOT                        R8 ; [+4]
       19 GETUPVAL                         R7 4
       20 GETTABLEKS                       R7 R7 K16 ["Disabled"]
       22 JUMP                             ; [+1]
       23 LOADNIL                          R7
       24 SETTABLEKS                       R7 R6 K8 ["StyleModifier"]
       26 GETIMPORT                        R7 K19 [UDim2.fromOffset]
       28 LOADN                            R8 120
       29 LOADN                            R9 32
       30 CALL                             R7 2 1
       31 SETTABLEKS                       R7 R6 K9 ["Size"]
       33 GETUPVAL                         R7 5
       34 SETTABLEKS                       R7 R6 K12 ["OnClick"]
       36 NEWTABLE                         R7 0 1
       38 GETUPVAL                         R8 2
       39 GETTABLEKS                       R8 R8 K3 ["createElement"]
       41 GETUPVAL                         R9 6
       42 DUPTABLE                         R10 K22 [{["Cursor"] = "PointingHand"}]
       43 CALL                             R8 2 -1
       44 SETLIST                          R7 R8 -1 [1]
       46 CALL                             R4 3 1
       47 SETTABLEKS                       R4 R3 K1 ["Child"]
       49 CALL                             R1 2 -1
       50 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["provide"]
        3 NEWTABLE                         R2 0 1
        5 GETUPVAL                         R3 1
        6 SETLIST                          R2 R3 1 [1]
        8 DUPTABLE                         R3 K2 [{"Child"}]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K3 ["createElement"]
       12 GETUPVAL                         R5 3
       13 DUPTABLE                         R6 K13 [{["Style"] = "RoundPrimary", ["Text"] = "Save", ["StyleModifier"], ["Size"], ["LayoutOrder"] = 3, ["OnClick"]}]
       14 GETTABLEKS                       R8 R0 K14 ["controls"]
       16 GETTABLEKS                       R8 R8 K15 ["isDisabled"]
       18 JUMPIFNOT                        R8 ; [+4]
       19 GETUPVAL                         R7 4
       20 GETTABLEKS                       R7 R7 K16 ["Disabled"]
       22 JUMP                             ; [+1]
       23 LOADNIL                          R7
       24 SETTABLEKS                       R7 R6 K8 ["StyleModifier"]
       26 GETIMPORT                        R7 K19 [UDim2.fromOffset]
       28 LOADN                            R8 120
       29 LOADN                            R9 32
       30 CALL                             R7 2 1
       31 SETTABLEKS                       R7 R6 K9 ["Size"]
       33 GETUPVAL                         R7 5
       34 SETTABLEKS                       R7 R6 K12 ["OnClick"]
       36 NEWTABLE                         R7 0 1
       38 GETUPVAL                         R8 2
       39 GETTABLEKS                       R8 R8 K3 ["createElement"]
       41 GETUPVAL                         R9 6
       42 DUPTABLE                         R10 K22 [{["Cursor"] = "PointingHand"}]
       43 CALL                             R8 2 -1
       44 SETLIST                          R7 R8 -1 [1]
       46 CALL                             R4 3 1
       47 SETTABLEKS                       R4 R3 K1 ["Child"]
       49 CALL                             R1 2 -1
       50 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["provide"]
        3 NEWTABLE                         R2 0 1
        5 GETUPVAL                         R3 1
        6 SETLIST                          R2 R3 1 [1]
        8 DUPTABLE                         R3 K2 [{"Child"}]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K3 ["createElement"]
       12 GETUPVAL                         R5 3
       13 DUPTABLE                         R6 K11 [{["Style"] = "Close", ["StyleModifier"], ["Size"], ["LayoutOrder"] = 1, ["OnClick"]}]
       14 GETTABLEKS                       R8 R0 K12 ["controls"]
       16 GETTABLEKS                       R8 R8 K13 ["isDisabled"]
       18 JUMPIFNOT                        R8 ; [+4]
       19 GETUPVAL                         R7 4
       20 GETTABLEKS                       R7 R7 K14 ["Disabled"]
       22 JUMP                             ; [+1]
       23 LOADNIL                          R7
       24 SETTABLEKS                       R7 R6 K6 ["StyleModifier"]
       26 GETIMPORT                        R7 K17 [UDim2.fromOffset]
       28 LOADN                            R8 22
       29 LOADN                            R9 22
       30 CALL                             R7 2 1
       31 SETTABLEKS                       R7 R6 K7 ["Size"]
       33 GETUPVAL                         R7 5
       34 SETTABLEKS                       R7 R6 K10 ["OnClick"]
       36 CALL                             R4 2 1
       37 SETTABLEKS                       R4 R3 K1 ["Child"]
       39 CALL                             R1 2 -1
       40 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["provide"]
        3 NEWTABLE                         R2 0 1
        5 GETUPVAL                         R3 1
        6 SETLIST                          R2 R3 1 [1]
        8 DUPTABLE                         R3 K2 [{"Child"}]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K3 ["createElement"]
       12 GETUPVAL                         R5 3
       13 DUPTABLE                         R6 K11 [{["Style"] = "Round", ["StyleModifier"], ["Size"], ["LayoutOrder"] = 3, ["OnClick"]}]
       14 GETTABLEKS                       R8 R0 K12 ["controls"]
       16 GETTABLEKS                       R8 R8 K13 ["isDisabled"]
       18 JUMPIFNOT                        R8 ; [+4]
       19 GETUPVAL                         R7 4
       20 GETTABLEKS                       R7 R7 K14 ["Disabled"]
       22 JUMP                             ; [+1]
       23 LOADNIL                          R7
       24 SETTABLEKS                       R7 R6 K6 ["StyleModifier"]
       26 GETIMPORT                        R7 K17 [UDim2.fromOffset]
       28 LOADN                            R8 24
       29 LOADN                            R9 24
       30 CALL                             R7 2 1
       31 SETTABLEKS                       R7 R6 K7 ["Size"]
       33 GETUPVAL                         R7 5
       34 SETTABLEKS                       R7 R6 K10 ["OnClick"]
       36 DUPTABLE                         R7 K19 [{"Settings"}]
       37 GETUPVAL                         R8 2
       38 GETTABLEKS                       R8 R8 K3 ["createElement"]
       40 GETUPVAL                         R9 6
       41 DUPTABLE                         R10 K20 [{["Style"] = "Settings"}]
       42 CALL                             R8 2 1
       43 SETTABLEKS                       R8 R7 K18 ["Settings"]
       45 CALL                             R4 3 1
       46 SETTABLEKS                       R4 R3 K1 ["Child"]
       48 CALL                             R1 2 -1
       49 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["provide"]
        3 NEWTABLE                         R2 0 1
        5 GETUPVAL                         R3 1
        6 SETLIST                          R2 R3 1 [1]
        8 DUPTABLE                         R3 K2 [{"Child"}]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K3 ["createElement"]
       12 GETUPVAL                         R5 3
       13 DUPTABLE                         R6 K11 [{["Style"] = "RoundPrimary", ["StyleModifier"], ["Size"], ["LayoutOrder"] = 4, ["OnClick"]}]
       14 GETTABLEKS                       R8 R0 K12 ["controls"]
       16 GETTABLEKS                       R8 R8 K13 ["isDisabled"]
       18 JUMPIFNOT                        R8 ; [+4]
       19 GETUPVAL                         R7 4
       20 GETTABLEKS                       R7 R7 K14 ["Disabled"]
       22 JUMP                             ; [+1]
       23 LOADNIL                          R7
       24 SETTABLEKS                       R7 R6 K6 ["StyleModifier"]
       26 GETIMPORT                        R7 K17 [UDim2.fromOffset]
       28 LOADN                            R8 120
       29 LOADN                            R9 32
       30 CALL                             R7 2 1
       31 SETTABLEKS                       R7 R6 K7 ["Size"]
       33 GETUPVAL                         R7 5
       34 SETTABLEKS                       R7 R6 K10 ["OnClick"]
       36 DUPTABLE                         R7 K19 [{"Pane"}]
       37 GETUPVAL                         R8 2
       38 GETTABLEKS                       R8 R8 K3 ["createElement"]
       40 GETUPVAL                         R9 6
       41 DUPTABLE                         R10 K22 [{"Layout", "Padding"}]
       42 GETIMPORT                        R11 K26 [Enum.FillDirection.Horizontal]
       44 SETTABLEKS                       R11 R10 K20 ["Layout"]
       46 DUPTABLE                         R11 K31 [{["Left"] = 10, ["Right"] = 5}]
       47 SETTABLEKS                       R11 R10 K21 ["Padding"]
       49 DUPTABLE                         R11 K34 [{"Settings", "Text"}]
       50 GETUPVAL                         R12 2
       51 GETTABLEKS                       R12 R12 K3 ["createElement"]
       53 GETUPVAL                         R13 7
       54 DUPTABLE                         R14 K36 [{["Style"] = "Settings", ["LayoutOrder"] = 1}]
       55 CALL                             R12 2 1
       56 SETTABLEKS                       R12 R11 K32 ["Settings"]
       58 GETUPVAL                         R12 2
       59 GETTABLEKS                       R12 R12 K3 ["createElement"]
       61 LOADK                            R13 K37 ["TextLabel"]
       62 DUPTABLE                         R14 K45 [{["LayoutOrder"] = 2, ["Text"] = "Settings", ["BackgroundTransparency"] = 1, ["Size"], ["TextXAlignment"], ["Font"], ["TextSize"] = 18, ["TextColor3"]}]
       63 GETIMPORT                        R15 K47 [UDim2.fromScale]
       65 LOADN                            R16 1
       66 LOADN                            R17 1
       67 CALL                             R15 2 1
       68 SETTABLEKS                       R15 R14 K7 ["Size"]
       70 GETIMPORT                        R15 K48 [Enum.TextXAlignment.Left]
       72 SETTABLEKS                       R15 R14 K40 ["TextXAlignment"]
       74 GETIMPORT                        R15 K50 [Enum.Font.SourceSans]
       76 SETTABLEKS                       R15 R14 K41 ["Font"]
       78 GETIMPORT                        R15 K53 [Color3.new]
       80 LOADN                            R16 1
       81 LOADN                            R17 1
       82 LOADN                            R18 1
       83 CALL                             R15 3 1
       84 SETTABLEKS                       R15 R14 K44 ["TextColor3"]
       86 CALL                             R12 2 1
       87 SETTABLEKS                       R12 R11 K33 ["Text"]
       89 CALL                             R8 3 1
       90 SETTABLEKS                       R8 R7 K18 ["Pane"]
       92 CALL                             R4 3 1
       93 SETTABLEKS                       R4 R3 K1 ["Child"]
       95 CALL                             R1 2 -1
       96 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["provide"]
        3 NEWTABLE                         R2 0 1
        5 GETUPVAL                         R3 1
        6 SETLIST                          R2 R3 1 [1]
        8 DUPTABLE                         R3 K2 [{"Child"}]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K3 ["createElement"]
       12 GETUPVAL                         R5 3
       13 DUPTABLE                         R6 K15 [{["Icon"] = "rbxasset://textures/AnimationEditor/btn_manage.png", ["Style"] = "Round", ["StyleModifier"], ["Size"], ["LayoutOrder"] = 3, ["OnClick"], ["Text"] = "Settings"}]
       14 GETTABLEKS                       R8 R0 K16 ["controls"]
       16 GETTABLEKS                       R8 R8 K17 ["isDisabled"]
       18 JUMPIFNOT                        R8 ; [+4]
       19 GETUPVAL                         R7 4
       20 GETTABLEKS                       R7 R7 K18 ["Disabled"]
       22 JUMP                             ; [+1]
       23 LOADNIL                          R7
       24 SETTABLEKS                       R7 R6 K8 ["StyleModifier"]
       26 GETIMPORT                        R7 K21 [UDim2.fromOffset]
       28 LOADN                            R8 24
       29 LOADN                            R9 24
       30 CALL                             R7 2 1
       31 SETTABLEKS                       R7 R6 K9 ["Size"]
       33 GETUPVAL                         R7 5
       34 SETTABLEKS                       R7 R6 K12 ["OnClick"]
       36 CALL                             R4 2 1
       37 SETTABLEKS                       R4 R3 K1 ["Child"]
       39 CALL                             R1 2 -1
       40 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R4 R0 K2 ["UI"]
       27 GETTABLEKS                       R4 R4 K9 ["Components"]
       29 GETTABLEKS                       R4 R4 K10 ["DEPRECATED_Button"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K6 [require]
       34 GETTABLEKS                       R5 R0 K2 ["UI"]
       36 GETTABLEKS                       R5 R5 K9 ["Components"]
       38 GETTABLEKS                       R5 R5 K11 ["Pane"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K6 [require]
       43 GETTABLEKS                       R6 R0 K2 ["UI"]
       45 GETTABLEKS                       R6 R6 K9 ["Components"]
       47 GETTABLEKS                       R6 R6 K12 ["HoverArea"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K6 [require]
       52 GETTABLEKS                       R7 R0 K2 ["UI"]
       54 GETTABLEKS                       R7 R7 K9 ["Components"]
       56 GETTABLEKS                       R7 R7 K13 ["Image"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K6 [require]
       61 GETTABLEKS                       R8 R0 K14 ["Style"]
       63 GETTABLEKS                       R8 R8 K15 ["ComponentSymbols"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K6 [require]
       68 GETTABLEKS                       R9 R0 K14 ["Style"]
       70 GETTABLEKS                       R9 R9 K16 ["ThemeSwitcher"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K6 [require]
       75 GETTABLEKS                       R10 R0 K14 ["Style"]
       77 GETTABLEKS                       R10 R10 K17 ["Themes"]
       79 GETTABLEKS                       R10 R10 K18 ["BaseTheme"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K6 [require]
       84 GETTABLEKS                       R11 R0 K19 ["Util"]
       86 GETTABLEKS                       R11 R11 K20 ["StyleModifier"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K6 [require]
       91 GETTABLEKS                       R12 R0 K14 ["Style"]
       93 GETTABLEKS                       R12 R12 K21 ["StyleKey"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K6 [require]
       98 GETTABLEKS                       R13 R0 K4 ["Parent"]
      100 GETTABLEKS                       R13 R13 K22 ["Dash"]
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
      118 DUPTABLE                         R22 K28 [{["Image"] = "rbxasset://textures/AnimationEditor/btn_manage.png", ["Color"], ["Size"]}]
      119 GETTABLEKS                       R23 R11 K29 ["MainText"]
      121 SETTABLEKS                       R23 R22 K26 ["Color"]
      123 GETIMPORT                        R23 K32 [UDim2.fromOffset]
      125 LOADN                            R24 24
      126 LOADN                            R25 24
      127 CALL                             R23 2 1
      128 SETTABLEKS                       R23 R22 K27 ["Size"]
      130 SETTABLEKS                       R22 R21 K33 ["&Settings"]
      132 DUPTABLE                         R22 K34 [{"Color"}]
      133 GETTABLEKS                       R23 R11 K35 ["DialogMainButtonText"]
      135 SETTABLEKS                       R23 R22 K26 ["Color"]
      137 SETTABLEKS                       R22 R21 K36 ["&SettingsPrimary"]
      139 CALL                             R19 2 1
      140 SETTABLE                         R19 R17 R18
      141 NAMECALL                         R15 R14 K37 ["extend"]
      143 CALL                             R15 2 0
      144 DUPCLOSURE                       R15 K38 [PROTO_0]
      145 DUPTABLE                         R16 K41 [{"controls", "stories"}]
      146 DUPTABLE                         R17 K44 [{["isDisabled"] = False}]
      147 SETTABLEKS                       R17 R16 K39 ["controls"]
      149 DUPTABLE                         R17 K51 [{"Round", "RoundSubtle", "RoundPrimary", "CloseButton", "RoundPrimaryWithImage", "RoundWithImage"}]
      150 DUPCLOSURE                       R18 K52 [PROTO_1]
      151 CAPTURE                          VAL R2
      152 CAPTURE                          VAL R14
      153 CAPTURE                          VAL R1
      154 CAPTURE                          VAL R3
      155 CAPTURE                          VAL R10
      156 CAPTURE                          VAL R15
      157 CAPTURE                          VAL R5
      158 SETTABLEKS                       R18 R17 K45 ["Round"]
      160 DUPCLOSURE                       R18 K53 [PROTO_2]
      161 CAPTURE                          VAL R2
      162 CAPTURE                          VAL R14
      163 CAPTURE                          VAL R1
      164 CAPTURE                          VAL R3
      165 CAPTURE                          VAL R10
      166 CAPTURE                          VAL R15
      167 CAPTURE                          VAL R5
      168 SETTABLEKS                       R18 R17 K46 ["RoundSubtle"]
      170 DUPCLOSURE                       R18 K54 [PROTO_3]
      171 CAPTURE                          VAL R2
      172 CAPTURE                          VAL R14
      173 CAPTURE                          VAL R1
      174 CAPTURE                          VAL R3
      175 CAPTURE                          VAL R10
      176 CAPTURE                          VAL R15
      177 CAPTURE                          VAL R5
      178 SETTABLEKS                       R18 R17 K47 ["RoundPrimary"]
      180 DUPCLOSURE                       R18 K55 [PROTO_4]
      181 CAPTURE                          VAL R2
      182 CAPTURE                          VAL R14
      183 CAPTURE                          VAL R1
      184 CAPTURE                          VAL R3
      185 CAPTURE                          VAL R10
      186 CAPTURE                          VAL R15
      187 SETTABLEKS                       R18 R17 K48 ["CloseButton"]
      189 DUPCLOSURE                       R18 K56 [PROTO_5]
      190 CAPTURE                          VAL R2
      191 CAPTURE                          VAL R14
      192 CAPTURE                          VAL R1
      193 CAPTURE                          VAL R3
      194 CAPTURE                          VAL R10
      195 CAPTURE                          VAL R15
      196 CAPTURE                          VAL R6
      197 SETTABLEKS                       R18 R17 K49 ["RoundPrimaryWithImage"]
      199 DUPCLOSURE                       R18 K57 [PROTO_6]
      200 CAPTURE                          VAL R2
      201 CAPTURE                          VAL R14
      202 CAPTURE                          VAL R1
      203 CAPTURE                          VAL R3
      204 CAPTURE                          VAL R10
      205 CAPTURE                          VAL R15
      206 CAPTURE                          VAL R4
      207 CAPTURE                          VAL R6
      208 SETTABLEKS                       R18 R17 K50 ["RoundWithImage"]
      210 SETTABLEKS                       R17 R16 K40 ["stories"]
      212 GETTABLEKS                       R17 R16 K40 ["stories"]
      214 DUPCLOSURE                       R18 K58 [PROTO_7]
      215 CAPTURE                          VAL R2
      216 CAPTURE                          VAL R14
      217 CAPTURE                          VAL R1
      218 CAPTURE                          VAL R3
      219 CAPTURE                          VAL R10
      220 CAPTURE                          VAL R15
      221 SETTABLEKS                       R18 R17 K59 ["RoundWithIcon"]
      223 RETURN                           R16 1
