PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["provide"]
        3 NEWTABLE                         R1 0 1
        5 GETUPVAL                         R2 1
        6 SETLIST                          R1 R2 1 [1]
        8 DUPTABLE                         R2 K2 [{"Main"}]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R3 R4 K3 ["createElement"]
       12 GETUPVAL                         R4 3
       13 DUPTABLE                         R5 K7 [{"Padding", "AutomaticSize", "BackgroundColor3"}]
       14 LOADN                            R6 20
       15 SETTABLEKS                       R6 R5 K4 ["Padding"]
       17 GETIMPORT                        R6 K10 [Enum.AutomaticSize.Y]
       19 SETTABLEKS                       R6 R5 K5 ["AutomaticSize"]
       21 GETIMPORT                        R6 K13 [Color3.fromRGB]
       23 LOADN                            R7 128
       24 LOADN                            R8 128
       25 LOADN                            R9 128
       26 CALL                             R6 3 1
       27 SETTABLEKS                       R6 R5 K6 ["BackgroundColor3"]
       29 DUPTABLE                         R6 K15 [{"RedElement"}]
       30 GETUPVAL                         R8 2
       31 GETTABLEKS                       R7 R8 K3 ["createElement"]
       33 GETUPVAL                         R8 4
       34 DUPTABLE                         R9 K19 [{"Size", "Padding", "Background", "BackgroundStyle"}]
       35 GETIMPORT                        R10 K22 [UDim2.new]
       37 LOADN                            R11 1
       38 LOADN                            R12 0
       39 LOADN                            R13 0
       40 LOADN                            R14 100
       41 CALL                             R10 4 1
       42 SETTABLEKS                       R10 R9 K16 ["Size"]
       44 DUPTABLE                         R10 K24 [{"Right"}]
       45 LOADN                            R11 20
       46 SETTABLEKS                       R11 R10 K23 ["Right"]
       48 SETTABLEKS                       R10 R9 K4 ["Padding"]
       50 GETUPVAL                         R10 5
       51 SETTABLEKS                       R10 R9 K17 ["Background"]
       53 LOADK                            R10 K25 ["Red"]
       54 SETTABLEKS                       R10 R9 K18 ["BackgroundStyle"]
       56 DUPTABLE                         R10 K28 [{"Image", "TextContainer"}]
       57 GETUPVAL                         R12 2
       58 GETTABLEKS                       R11 R12 K3 ["createElement"]
       60 GETUPVAL                         R12 4
       61 DUPTABLE                         R13 K31 [{"Size", "Position", "AnchorPoint", "Background", "BackgroundStyle"}]
       62 GETIMPORT                        R14 K33 [UDim2.fromOffset]
       64 LOADN                            R15 80
       65 LOADN                            R16 80
       66 CALL                             R14 2 1
       67 SETTABLEKS                       R14 R13 K16 ["Size"]
       69 GETIMPORT                        R14 K35 [UDim2.fromScale]
       71 LOADN                            R15 1
       72 LOADK                            R16 K36 [0.5]
       73 CALL                             R14 2 1
       74 SETTABLEKS                       R14 R13 K29 ["Position"]
       76 GETIMPORT                        R14 K38 [Vector2.new]
       78 LOADN                            R15 1
       79 LOADK                            R16 K36 [0.5]
       80 CALL                             R14 2 1
       81 SETTABLEKS                       R14 R13 K30 ["AnchorPoint"]
       83 GETUPVAL                         R14 6
       84 SETTABLEKS                       R14 R13 K17 ["Background"]
       86 LOADK                            R14 K39 ["WarningIcon"]
       87 SETTABLEKS                       R14 R13 K18 ["BackgroundStyle"]
       89 CALL                             R11 2 1
       90 SETTABLEKS                       R11 R10 K26 ["Image"]
       92 GETUPVAL                         R12 2
       93 GETTABLEKS                       R11 R12 K3 ["createElement"]
       95 GETUPVAL                         R12 4
       96 DUPTABLE                         R13 K40 [{"Padding"}]
       97 DUPTABLE                         R14 K42 [{"Left"}]
       98 LOADN                            R15 40
       99 SETTABLEKS                       R15 R14 K41 ["Left"]
      101 SETTABLEKS                       R14 R13 K4 ["Padding"]
      103 DUPTABLE                         R14 K44 [{"Text"}]
      104 GETUPVAL                         R16 2
      105 GETTABLEKS                       R15 R16 K3 ["createElement"]
      107 LOADK                            R16 K45 ["TextLabel"]
      108 DUPTABLE                         R17 K51 [{"BackgroundTransparency", "Size", "TextXAlignment", "Text", "Font", "TextSize", "TextColor3"}]
      109 LOADN                            R18 1
      110 SETTABLEKS                       R18 R17 K46 ["BackgroundTransparency"]
      112 GETIMPORT                        R18 K22 [UDim2.new]
      114 LOADN                            R19 1
      115 LOADN                            R20 0
      116 LOADN                            R21 1
      117 LOADN                            R22 0
      118 CALL                             R18 4 1
      119 SETTABLEKS                       R18 R17 K16 ["Size"]
      121 GETIMPORT                        R18 K52 [Enum.TextXAlignment.Left]
      123 SETTABLEKS                       R18 R17 K47 ["TextXAlignment"]
      125 LOADK                            R18 K53 ["This is test text."]
      126 SETTABLEKS                       R18 R17 K43 ["Text"]
      128 GETIMPORT                        R18 K55 [Enum.Font.SourceSans]
      130 SETTABLEKS                       R18 R17 K48 ["Font"]
      132 LOADN                            R18 24
      133 SETTABLEKS                       R18 R17 K49 ["TextSize"]
      135 GETIMPORT                        R18 K56 [Color3.new]
      137 LOADN                            R19 1
      138 LOADN                            R20 1
      139 LOADN                            R21 1
      140 CALL                             R18 3 1
      141 SETTABLEKS                       R18 R17 K50 ["TextColor3"]
      143 CALL                             R15 2 1
      144 SETTABLEKS                       R15 R14 K43 ["Text"]
      146 CALL                             R11 3 1
      147 SETTABLEKS                       R11 R10 K27 ["TextContainer"]
      149 CALL                             R7 3 1
      150 SETTABLEKS                       R7 R6 K14 ["RedElement"]
      152 CALL                             R3 3 1
      153 SETTABLEKS                       R3 R2 K1 ["Main"]
      155 CALL                             R0 2 -1
      156 RETURN                           R0 -1

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
       29 GETTABLEKS                       R4 R5 K10 ["Container"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K6 [require]
       34 GETTABLEKS                       R7 R0 K2 ["UI"]
       36 GETTABLEKS                       R6 R7 K9 ["Components"]
       38 GETTABLEKS                       R5 R6 K11 ["Box"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K6 [require]
       43 GETTABLEKS                       R8 R0 K2 ["UI"]
       45 GETTABLEKS                       R7 R8 K9 ["Components"]
       47 GETTABLEKS                       R6 R7 K12 ["Image"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K6 [require]
       52 GETTABLEKS                       R9 R0 K2 ["UI"]
       54 GETTABLEKS                       R8 R9 K9 ["Components"]
       56 GETTABLEKS                       R7 R8 K13 ["Pane"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K6 [require]
       61 GETTABLEKS                       R9 R0 K14 ["Style"]
       63 GETTABLEKS                       R8 R9 K15 ["ComponentSymbols"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K6 [require]
       68 GETTABLEKS                       R11 R0 K14 ["Style"]
       70 GETTABLEKS                       R10 R11 K16 ["Themes"]
       72 GETTABLEKS                       R9 R10 K17 ["BaseTheme"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K6 [require]
       77 GETTABLEKS                       R11 R0 K4 ["Parent"]
       79 GETTABLEKS                       R10 R11 K18 ["Dash"]
       81 CALL                             R9 1 1
       82 GETTABLEKS                       R10 R9 K19 ["join"]
       84 GETIMPORT                        R11 K6 [require]
       86 GETTABLEKS                       R13 R0 K14 ["Style"]
       88 GETTABLEKS                       R12 R13 K20 ["ThemeSwitcher"]
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
      142 DUPTABLE                         R20 K31 [{"Image"}]
      143 LOADK                            R21 K32 ["rbxasset://textures/ui/ErrorIcon.png"]
      144 SETTABLEKS                       R21 R20 K12 ["Image"]
      146 SETTABLEKS                       R20 R19 K33 ["&WarningIcon"]
      148 CALL                             R17 2 1
      149 SETTABLE                         R17 R15 R16
      150 NAMECALL                         R13 R12 K34 ["extend"]
      152 CALL                             R13 2 0
      153 DUPCLOSURE                       R13 K35 [PROTO_0]
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R12
      156 CAPTURE                          VAL R1
      157 CAPTURE                          VAL R6
      158 CAPTURE                          VAL R3
      159 CAPTURE                          VAL R4
      160 CAPTURE                          VAL R5
      161 RETURN                           R13 1
