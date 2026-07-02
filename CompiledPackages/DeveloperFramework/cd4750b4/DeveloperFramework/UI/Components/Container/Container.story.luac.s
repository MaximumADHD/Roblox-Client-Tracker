PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["provide"]
        3 NEWTABLE                         R1 0 1
        5 GETUPVAL                         R2 1
        6 SETLIST                          R1 R2 1 [1]
        8 DUPTABLE                         R2 K2 [{"Main"}]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K3 ["createElement"]
       12 GETUPVAL                         R4 3
       13 DUPTABLE                         R5 K8 [{["Padding"] = 20, ["AutomaticSize"], ["BackgroundColor3"]}]
       14 GETIMPORT                        R6 K11 [Enum.AutomaticSize.Y]
       16 SETTABLEKS                       R6 R5 K6 ["AutomaticSize"]
       18 GETIMPORT                        R6 K14 [Color3.fromRGB]
       20 LOADN                            R7 128
       21 LOADN                            R8 128
       22 LOADN                            R9 128
       23 CALL                             R6 3 1
       24 SETTABLEKS                       R6 R5 K7 ["BackgroundColor3"]
       26 DUPTABLE                         R6 K16 [{"RedElement"}]
       27 GETUPVAL                         R7 2
       28 GETTABLEKS                       R7 R7 K3 ["createElement"]
       30 GETUPVAL                         R8 4
       31 DUPTABLE                         R9 K21 [{["Size"], ["Padding"], ["Background"], ["BackgroundStyle"] = "Red"}]
       32 GETIMPORT                        R10 K24 [UDim2.new]
       34 LOADN                            R11 1
       35 LOADN                            R12 0
       36 LOADN                            R13 0
       37 LOADN                            R14 100
       38 CALL                             R10 4 1
       39 SETTABLEKS                       R10 R9 K17 ["Size"]
       41 DUPTABLE                         R10 K26 [{["Right"] = 20}]
       42 SETTABLEKS                       R10 R9 K4 ["Padding"]
       44 GETUPVAL                         R10 5
       45 SETTABLEKS                       R10 R9 K18 ["Background"]
       47 DUPTABLE                         R10 K29 [{"Image", "TextContainer"}]
       48 GETUPVAL                         R11 2
       49 GETTABLEKS                       R11 R11 K3 ["createElement"]
       51 GETUPVAL                         R12 4
       52 DUPTABLE                         R13 K33 [{["Size"], ["Position"], ["AnchorPoint"], ["Background"], ["BackgroundStyle"] = "WarningIcon"}]
       53 GETIMPORT                        R14 K35 [UDim2.fromOffset]
       55 LOADN                            R15 80
       56 LOADN                            R16 80
       57 CALL                             R14 2 1
       58 SETTABLEKS                       R14 R13 K17 ["Size"]
       60 GETIMPORT                        R14 K37 [UDim2.fromScale]
       62 LOADN                            R15 1
       63 LOADK                            R16 K38 [0.5]
       64 CALL                             R14 2 1
       65 SETTABLEKS                       R14 R13 K30 ["Position"]
       67 GETIMPORT                        R14 K40 [Vector2.new]
       69 LOADN                            R15 1
       70 LOADK                            R16 K38 [0.5]
       71 CALL                             R14 2 1
       72 SETTABLEKS                       R14 R13 K31 ["AnchorPoint"]
       74 GETUPVAL                         R14 6
       75 SETTABLEKS                       R14 R13 K18 ["Background"]
       77 CALL                             R11 2 1
       78 SETTABLEKS                       R11 R10 K27 ["Image"]
       80 GETUPVAL                         R11 2
       81 GETTABLEKS                       R11 R11 K3 ["createElement"]
       83 GETUPVAL                         R12 4
       84 DUPTABLE                         R13 K41 [{"Padding"}]
       85 DUPTABLE                         R14 K44 [{["Left"] = 40}]
       86 SETTABLEKS                       R14 R13 K4 ["Padding"]
       88 DUPTABLE                         R14 K46 [{"Text"}]
       89 GETUPVAL                         R15 2
       90 GETTABLEKS                       R15 R15 K3 ["createElement"]
       92 LOADK                            R16 K47 ["TextLabel"]
       93 DUPTABLE                         R17 K56 [{["BackgroundTransparency"] = 1, ["Size"], ["TextXAlignment"], ["Text"] = "This is test text.", ["Font"], ["TextSize"] = 24, ["TextColor3"]}]
       94 GETIMPORT                        R18 K24 [UDim2.new]
       96 LOADN                            R19 1
       97 LOADN                            R20 0
       98 LOADN                            R21 1
       99 LOADN                            R22 0
      100 CALL                             R18 4 1
      101 SETTABLEKS                       R18 R17 K17 ["Size"]
      103 GETIMPORT                        R18 K57 [Enum.TextXAlignment.Left]
      105 SETTABLEKS                       R18 R17 K50 ["TextXAlignment"]
      107 GETIMPORT                        R18 K59 [Enum.Font.SourceSans]
      109 SETTABLEKS                       R18 R17 K52 ["Font"]
      111 GETIMPORT                        R18 K60 [Color3.new]
      113 LOADN                            R19 1
      114 LOADN                            R20 1
      115 LOADN                            R21 1
      116 CALL                             R18 3 1
      117 SETTABLEKS                       R18 R17 K55 ["TextColor3"]
      119 CALL                             R15 2 1
      120 SETTABLEKS                       R15 R14 K45 ["Text"]
      122 CALL                             R11 3 1
      123 SETTABLEKS                       R11 R10 K28 ["TextContainer"]
      125 CALL                             R7 3 1
      126 SETTABLEKS                       R7 R6 K15 ["RedElement"]
      128 CALL                             R3 3 1
      129 SETTABLEKS                       R3 R2 K1 ["Main"]
      131 CALL                             R0 2 -1
      132 RETURN                           R0 -1

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
       29 GETTABLEKS                       R4 R4 K10 ["Container"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K6 [require]
       34 GETTABLEKS                       R5 R0 K2 ["UI"]
       36 GETTABLEKS                       R5 R5 K9 ["Components"]
       38 GETTABLEKS                       R5 R5 K11 ["Box"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K6 [require]
       43 GETTABLEKS                       R6 R0 K2 ["UI"]
       45 GETTABLEKS                       R6 R6 K9 ["Components"]
       47 GETTABLEKS                       R6 R6 K12 ["Image"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K6 [require]
       52 GETTABLEKS                       R7 R0 K2 ["UI"]
       54 GETTABLEKS                       R7 R7 K9 ["Components"]
       56 GETTABLEKS                       R7 R7 K13 ["Pane"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K6 [require]
       61 GETTABLEKS                       R8 R0 K14 ["Style"]
       63 GETTABLEKS                       R8 R8 K15 ["ComponentSymbols"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K6 [require]
       68 GETTABLEKS                       R9 R0 K14 ["Style"]
       70 GETTABLEKS                       R9 R9 K16 ["Themes"]
       72 GETTABLEKS                       R9 R9 K17 ["BaseTheme"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K6 [require]
       77 GETTABLEKS                       R10 R0 K4 ["Parent"]
       79 GETTABLEKS                       R10 R10 K18 ["Dash"]
       81 CALL                             R9 1 1
       82 GETTABLEKS                       R10 R9 K19 ["join"]
       84 GETIMPORT                        R11 K6 [require]
       86 GETTABLEKS                       R12 R0 K14 ["Style"]
       88 GETTABLEKS                       R12 R12 K20 ["ThemeSwitcher"]
       90 CALL                             R11 1 1
       91 GETTABLEKS                       R12 R11 K21 ["new"]
       93 CALL                             R12 0 1
       94 NEWTABLE                         R15 2 0
       96 GETTABLEKS                       R16 R7 K11 ["Box"]
       98 MOVE                             R17 R10
       99 GETTABLEKS                       R19 R7 K11 ["Box"]
      101 GETTABLE                         R18 R8 R19
      102 NEWTABLE                         R19 4 0
      104 LOADN                            R20 0
      105 SETTABLEKS                       R20 R19 K22 ["Transparency"]
      107 LOADN                            R20 0
      108 SETTABLEKS                       R20 R19 K23 ["BorderSize"]
      110 DUPTABLE                         R20 K25 [{"Color"}]
      111 GETIMPORT                        R21 K27 [Color3.new]
      113 LOADN                            R22 0
      114 LOADN                            R23 0
      115 LOADN                            R24 0
      116 CALL                             R21 3 1
      117 SETTABLEKS                       R21 R20 K24 ["Color"]
      119 SETTABLEKS                       R20 R19 K28 ["&Black"]
      121 DUPTABLE                         R20 K25 [{"Color"}]
      122 GETIMPORT                        R21 K27 [Color3.new]
      124 LOADK                            R22 K29 [0.3]
      125 LOADN                            R23 0
      126 LOADN                            R24 0
      127 CALL                             R21 3 1
      128 SETTABLEKS                       R21 R20 K24 ["Color"]
      130 SETTABLEKS                       R20 R19 K30 ["&Red"]
      132 CALL                             R17 2 1
      133 SETTABLE                         R17 R15 R16
      134 GETTABLEKS                       R16 R7 K12 ["Image"]
      136 MOVE                             R17 R10
      137 GETTABLEKS                       R19 R7 K12 ["Image"]
      139 GETTABLE                         R18 R8 R19
      140 NEWTABLE                         R19 1 0
      142 DUPTABLE                         R20 K32 [{["Image"] = "rbxasset://textures/ui/ErrorIcon.png"}]
      143 SETTABLEKS                       R20 R19 K33 ["&WarningIcon"]
      145 CALL                             R17 2 1
      146 SETTABLE                         R17 R15 R16
      147 NAMECALL                         R13 R12 K34 ["extend"]
      149 CALL                             R13 2 0
      150 DUPCLOSURE                       R13 K35 [PROTO_0]
      151 CAPTURE                          VAL R2
      152 CAPTURE                          VAL R12
      153 CAPTURE                          VAL R1
      154 CAPTURE                          VAL R6
      155 CAPTURE                          VAL R3
      156 CAPTURE                          VAL R4
      157 CAPTURE                          VAL R5
      158 RETURN                           R13 1
