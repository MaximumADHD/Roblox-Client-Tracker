PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 DUPTABLE                         R4 K5 [{"AutomaticSize", "GroupTransparency", "padding", "stroke"}]
        7 GETIMPORT                        R5 K8 [Enum.AutomaticSize.XY]
        9 SETTABLEKS                       R5 R4 K1 ["AutomaticSize"]
       11 GETTABLEKS                       R5 R0 K2 ["GroupTransparency"]
       13 SETTABLEKS                       R5 R4 K2 ["GroupTransparency"]
       15 LOADN                            R5 10
       16 SETTABLEKS                       R5 R4 K3 ["padding"]
       18 DUPTABLE                         R5 K12 [{"Color", "Transparency", "Thickness"}]
       19 GETTABLEKS                       R6 R1 K9 ["Color"]
       21 GETTABLEKS                       R6 R6 K13 ["Stroke"]
       23 GETTABLEKS                       R6 R6 K14 ["Emphasis"]
       25 GETTABLEKS                       R6 R6 K15 ["Color3"]
       27 SETTABLEKS                       R6 R5 K9 ["Color"]
       29 GETTABLEKS                       R6 R1 K9 ["Color"]
       31 GETTABLEKS                       R6 R6 K13 ["Stroke"]
       33 GETTABLEKS                       R6 R6 K14 ["Emphasis"]
       35 GETTABLEKS                       R6 R6 K10 ["Transparency"]
       37 SETTABLEKS                       R6 R5 K10 ["Transparency"]
       39 LOADN                            R6 2
       40 SETTABLEKS                       R6 R5 K11 ["Thickness"]
       42 SETTABLEKS                       R5 R4 K4 ["stroke"]
       44 NEWTABLE                         R5 0 1
       46 GETUPVAL                         R6 1
       47 GETTABLEKS                       R6 R6 K0 ["createElement"]
       49 GETUPVAL                         R7 2
       50 DUPTABLE                         R8 K19 [{"Size", "backgroundStyle", "tag"}]
       51 GETIMPORT                        R9 K22 [UDim2.new]
       53 LOADN                            R10 0
       54 LOADN                            R11 100
       55 LOADN                            R12 0
       56 LOADN                            R13 100
       57 CALL                             R9 4 1
       58 SETTABLEKS                       R9 R8 K16 ["Size"]
       60 GETTABLEKS                       R9 R1 K9 ["Color"]
       62 GETTABLEKS                       R9 R9 K23 ["Surface"]
       64 GETTABLEKS                       R9 R9 K24 ["Surface_200"]
       66 SETTABLEKS                       R9 R8 K17 ["backgroundStyle"]
       68 LOADK                            R9 K25 ["row align-x-center align-y-center"]
       69 SETTABLEKS                       R9 R8 K18 ["tag"]
       71 NEWTABLE                         R9 0 1
       73 GETUPVAL                         R10 1
       74 GETTABLEKS                       R10 R10 K0 ["createElement"]
       76 GETUPVAL                         R11 3
       77 DUPTABLE                         R12 K29 [{"textStyle", "fontStyle", "Text"}]
       78 GETTABLEKS                       R13 R1 K9 ["Color"]
       80 GETTABLEKS                       R13 R13 K30 ["Content"]
       82 GETTABLEKS                       R13 R13 K14 ["Emphasis"]
       84 SETTABLEKS                       R13 R12 K26 ["textStyle"]
       86 DUPTABLE                         R13 K34 [{"Font", "FontSize", "LineHeight"}]
       87 GETIMPORT                        R14 K36 [Enum.Font.BuilderSansMedium]
       89 SETTABLEKS                       R14 R13 K31 ["Font"]
       91 LOADN                            R14 24
       92 SETTABLEKS                       R14 R13 K32 ["FontSize"]
       94 LOADN                            R14 1
       95 SETTABLEKS                       R14 R13 K33 ["LineHeight"]
       97 SETTABLEKS                       R13 R12 K27 ["fontStyle"]
       99 LOADK                            R13 K37 ["View"]
      100 SETTABLEKS                       R13 R12 K28 ["Text"]
      102 CALL                             R10 2 -1
      103 SETLIST                          R9 R10 -1 [1]
      105 CALL                             R6 3 -1
      106 SETLIST                          R5 R6 -1 [1]
      108 CALL                             R2 3 -1
      109 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tostring]
        4 CALL                             R1 1 1
        5 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useBinding"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Initialize"]
        6 CALL                             R1 1 2
        7 GETUPVAL                         R3 2
        8 CALL                             R3 0 1
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R2
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K2 ["createElement"]
       14 GETUPVAL                         R6 3
       15 DUPTABLE                         R7 K9 [{"Size", "LayoutOrder", "GroupTransparency", "backgroundStyle", "layout", "onStateChanged"}]
       16 GETIMPORT                        R8 K12 [UDim2.new]
       18 LOADN                            R9 0
       19 LOADN                            R10 120
       20 LOADN                            R11 0
       21 LOADN                            R12 120
       22 CALL                             R8 4 1
       23 SETTABLEKS                       R8 R7 K3 ["Size"]
       25 LOADN                            R8 2
       26 SETTABLEKS                       R8 R7 K4 ["LayoutOrder"]
       28 GETTABLEKS                       R8 R0 K5 ["GroupTransparency"]
       30 SETTABLEKS                       R8 R7 K5 ["GroupTransparency"]
       32 GETTABLEKS                       R8 R3 K13 ["Color"]
       34 GETTABLEKS                       R8 R8 K14 ["Extended"]
       36 GETTABLEKS                       R8 R8 K15 ["Purple"]
       38 GETTABLEKS                       R8 R8 K16 ["Purple_500"]
       40 SETTABLEKS                       R8 R7 K6 ["backgroundStyle"]
       42 DUPTABLE                         R8 K20 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment"}]
       43 GETIMPORT                        R9 K23 [Enum.FillDirection.Vertical]
       45 SETTABLEKS                       R9 R8 K17 ["FillDirection"]
       47 GETIMPORT                        R9 K25 [Enum.HorizontalAlignment.Center]
       49 SETTABLEKS                       R9 R8 K18 ["HorizontalAlignment"]
       51 GETIMPORT                        R9 K26 [Enum.VerticalAlignment.Center]
       53 SETTABLEKS                       R9 R8 K19 ["VerticalAlignment"]
       55 SETTABLEKS                       R8 R7 K7 ["layout"]
       57 SETTABLEKS                       R4 R7 K8 ["onStateChanged"]
       59 NEWTABLE                         R8 0 1
       61 GETUPVAL                         R9 0
       62 GETTABLEKS                       R9 R9 K2 ["createElement"]
       64 GETUPVAL                         R10 4
       65 DUPTABLE                         R11 K29 [{"textStyle", "Text"}]
       66 GETTABLEKS                       R12 R3 K13 ["Color"]
       68 GETTABLEKS                       R12 R12 K30 ["Content"]
       70 GETTABLEKS                       R12 R12 K31 ["Emphasis"]
       72 SETTABLEKS                       R12 R11 K27 ["textStyle"]
       74 DUPCLOSURE                       R14 K32 [PROTO_2]
       75 NAMECALL                         R12 R1 K33 ["map"]
       77 CALL                             R12 2 1
       78 SETTABLEKS                       R12 R11 K28 ["Text"]
       80 CALL                             R9 2 -1
       81 SETLIST                          R8 R9 -1 [1]
       83 CALL                             R5 3 -1
       84 RETURN                           R5 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETTABLEKS                       R1 R1 K1 ["transparency"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["createElement"]
        7 GETUPVAL                         R3 1
        8 DUPTABLE                         R4 K4 [{"tag"}]
        9 LOADK                            R5 K5 ["auto-xy row gap-large"]
       10 SETTABLEKS                       R5 R4 K3 ["tag"]
       12 DUPTABLE                         R5 K8 [{"Basic", "GuiState"}]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K2 ["createElement"]
       16 GETUPVAL                         R7 2
       17 DUPTABLE                         R8 K10 [{"GroupTransparency"}]
       18 SETTABLEKS                       R1 R8 K9 ["GroupTransparency"]
       20 CALL                             R6 2 1
       21 SETTABLEKS                       R6 R5 K6 ["Basic"]
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K2 ["createElement"]
       26 GETUPVAL                         R7 3
       27 DUPTABLE                         R8 K10 [{"GroupTransparency"}]
       28 SETTABLEKS                       R1 R8 K9 ["GroupTransparency"]
       30 CALL                             R6 2 1
       31 SETTABLEKS                       R6 R5 K7 ["GuiState"]
       33 CALL                             R2 3 -1
       34 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["View"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["Text"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Enums"]
       32 GETTABLEKS                       R6 R6 K12 ["ControlState"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K13 ["Providers"]
       39 GETTABLEKS                       R7 R7 K14 ["Style"]
       41 GETTABLEKS                       R7 R7 K15 ["useTokens"]
       43 CALL                             R6 1 1
       44 DUPCLOSURE                       R7 K16 [PROTO_0]
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R4
       49 DUPCLOSURE                       R8 K17 [PROTO_3]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R4
       55 DUPTABLE                         R9 K21 [{"summary", "stories", "controls"}]
       56 LOADK                            R10 K9 ["View"]
       57 SETTABLEKS                       R10 R9 K18 ["summary"]
       59 DUPTABLE                         R10 K23 [{"Basic"}]
       60 DUPTABLE                         R11 K26 [{"name", "story"}]
       61 LOADK                            R12 K27 ["Basic Use"]
       62 SETTABLEKS                       R12 R11 K24 ["name"]
       64 DUPCLOSURE                       R12 K28 [PROTO_4]
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R8
       69 SETTABLEKS                       R12 R11 K25 ["story"]
       71 SETTABLEKS                       R11 R10 K22 ["Basic"]
       73 SETTABLEKS                       R10 R9 K19 ["stories"]
       75 DUPTABLE                         R10 K30 [{"transparency"}]
       76 NEWTABLE                         R11 0 3
       78 LOADN                            R12 0
       79 LOADK                            R13 K31 [0.25]
       80 LOADK                            R14 K32 [0.75]
       81 SETLIST                          R11 R12 3 [1]
       83 SETTABLEKS                       R11 R10 K29 ["transparency"]
       85 SETTABLEKS                       R10 R9 K20 ["controls"]
       87 RETURN                           R9 1
