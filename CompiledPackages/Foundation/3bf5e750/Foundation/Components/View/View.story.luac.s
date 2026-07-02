PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 DUPTABLE                         R4 K6 [{["AutomaticSize"], ["GroupTransparency"], ["padding"] = 10, ["stroke"]}]
        7 GETIMPORT                        R5 K9 [Enum.AutomaticSize.XY]
        9 SETTABLEKS                       R5 R4 K1 ["AutomaticSize"]
       11 GETTABLEKS                       R5 R0 K2 ["GroupTransparency"]
       13 SETTABLEKS                       R5 R4 K2 ["GroupTransparency"]
       15 DUPTABLE                         R5 K14 [{["Color"], ["Transparency"], ["Thickness"] = 2}]
       16 GETTABLEKS                       R6 R1 K10 ["Color"]
       18 GETTABLEKS                       R6 R6 K15 ["Stroke"]
       20 GETTABLEKS                       R6 R6 K16 ["Emphasis"]
       22 GETTABLEKS                       R6 R6 K17 ["Color3"]
       24 SETTABLEKS                       R6 R5 K10 ["Color"]
       26 GETTABLEKS                       R6 R1 K10 ["Color"]
       28 GETTABLEKS                       R6 R6 K15 ["Stroke"]
       30 GETTABLEKS                       R6 R6 K16 ["Emphasis"]
       32 GETTABLEKS                       R6 R6 K11 ["Transparency"]
       34 SETTABLEKS                       R6 R5 K11 ["Transparency"]
       36 SETTABLEKS                       R5 R4 K5 ["stroke"]
       38 NEWTABLE                         R5 0 1
       40 GETUPVAL                         R6 1
       41 GETTABLEKS                       R6 R6 K0 ["createElement"]
       43 GETUPVAL                         R7 2
       44 DUPTABLE                         R8 K22 [{["Size"], ["backgroundStyle"], ["tag"] = "row align-x-center align-y-center"}]
       45 GETIMPORT                        R9 K25 [UDim2.fromOffset]
       47 LOADN                            R10 100
       48 LOADN                            R11 100
       49 CALL                             R9 2 1
       50 SETTABLEKS                       R9 R8 K18 ["Size"]
       52 GETTABLEKS                       R9 R1 K10 ["Color"]
       54 GETTABLEKS                       R9 R9 K26 ["Surface"]
       56 GETTABLEKS                       R9 R9 K27 ["Surface_200"]
       58 SETTABLEKS                       R9 R8 K19 ["backgroundStyle"]
       60 NEWTABLE                         R9 0 1
       62 GETUPVAL                         R10 1
       63 GETTABLEKS                       R10 R10 K0 ["createElement"]
       65 GETUPVAL                         R11 3
       66 DUPTABLE                         R12 K32 [{["textStyle"], ["fontStyle"], ["Text"] = "View"}]
       67 GETTABLEKS                       R13 R1 K10 ["Color"]
       69 GETTABLEKS                       R13 R13 K33 ["Content"]
       71 GETTABLEKS                       R13 R13 K16 ["Emphasis"]
       73 SETTABLEKS                       R13 R12 K28 ["textStyle"]
       75 DUPTABLE                         R13 K39 [{["Font"], ["FontSize"] = 24, ["LineHeight"] = 1}]
       76 GETIMPORT                        R14 K41 [Enum.Font.BuilderSansMedium]
       78 SETTABLEKS                       R14 R13 K34 ["Font"]
       80 SETTABLEKS                       R13 R12 K29 ["fontStyle"]
       82 CALL                             R10 2 -1
       83 SETLIST                          R9 R10 -1 [1]
       85 CALL                             R6 3 -1
       86 SETLIST                          R5 R6 -1 [1]
       88 CALL                             R2 3 -1
       89 RETURN                           R2 -1

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
       15 DUPTABLE                         R7 K10 [{["Size"], ["LayoutOrder"] = 2, ["GroupTransparency"], ["backgroundStyle"], ["layout"], ["onStateChanged"]}]
       16 GETIMPORT                        R8 K13 [UDim2.fromOffset]
       18 LOADN                            R9 120
       19 LOADN                            R10 120
       20 CALL                             R8 2 1
       21 SETTABLEKS                       R8 R7 K3 ["Size"]
       23 GETTABLEKS                       R8 R0 K6 ["GroupTransparency"]
       25 SETTABLEKS                       R8 R7 K6 ["GroupTransparency"]
       27 GETTABLEKS                       R8 R3 K14 ["Color"]
       29 GETTABLEKS                       R8 R8 K15 ["Extended"]
       31 GETTABLEKS                       R8 R8 K16 ["Purple"]
       33 GETTABLEKS                       R8 R8 K17 ["Purple_500"]
       35 SETTABLEKS                       R8 R7 K7 ["backgroundStyle"]
       37 DUPTABLE                         R8 K21 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment"}]
       38 GETIMPORT                        R9 K24 [Enum.FillDirection.Vertical]
       40 SETTABLEKS                       R9 R8 K18 ["FillDirection"]
       42 GETIMPORT                        R9 K26 [Enum.HorizontalAlignment.Center]
       44 SETTABLEKS                       R9 R8 K19 ["HorizontalAlignment"]
       46 GETIMPORT                        R9 K27 [Enum.VerticalAlignment.Center]
       48 SETTABLEKS                       R9 R8 K20 ["VerticalAlignment"]
       50 SETTABLEKS                       R8 R7 K8 ["layout"]
       52 SETTABLEKS                       R4 R7 K9 ["onStateChanged"]
       54 NEWTABLE                         R8 0 1
       56 GETUPVAL                         R9 0
       57 GETTABLEKS                       R9 R9 K2 ["createElement"]
       59 GETUPVAL                         R10 4
       60 DUPTABLE                         R11 K30 [{"textStyle", "Text"}]
       61 GETTABLEKS                       R12 R3 K14 ["Color"]
       63 GETTABLEKS                       R12 R12 K31 ["Content"]
       65 GETTABLEKS                       R12 R12 K32 ["Emphasis"]
       67 SETTABLEKS                       R12 R11 K28 ["textStyle"]
       69 DUPCLOSURE                       R14 K33 [PROTO_2]
       70 NAMECALL                         R12 R1 K34 ["map"]
       72 CALL                             R12 2 1
       73 SETTABLEKS                       R12 R11 K29 ["Text"]
       75 CALL                             R9 2 -1
       76 SETLIST                          R8 R9 -1 [1]
       78 CALL                             R5 3 -1
       79 RETURN                           R5 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETTABLEKS                       R1 R1 K1 ["transparency"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["createElement"]
        7 GETUPVAL                         R3 1
        8 DUPTABLE                         R4 K5 [{["tag"] = "auto-xy row gap-large"}]
        9 DUPTABLE                         R5 K8 [{"Basic", "GuiState"}]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K2 ["createElement"]
       13 GETUPVAL                         R7 2
       14 DUPTABLE                         R8 K10 [{"GroupTransparency"}]
       15 SETTABLEKS                       R1 R8 K9 ["GroupTransparency"]
       17 CALL                             R6 2 1
       18 SETTABLEKS                       R6 R5 K6 ["Basic"]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K2 ["createElement"]
       23 GETUPVAL                         R7 3
       24 DUPTABLE                         R8 K10 [{"GroupTransparency"}]
       25 SETTABLEKS                       R1 R8 K9 ["GroupTransparency"]
       27 CALL                             R6 2 1
       28 SETTABLEKS                       R6 R5 K7 ["GuiState"]
       30 CALL                             R2 3 -1
       31 RETURN                           R2 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R4 K9 ["ControlState"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Components"]
       25 GETTABLEKS                       R5 R5 K11 ["Text"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Components"]
       32 GETTABLEKS                       R6 R6 K12 ["View"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K13 ["Providers"]
       39 GETTABLEKS                       R7 R7 K14 ["Style"]
       41 GETTABLEKS                       R7 R7 K15 ["useTokens"]
       43 CALL                             R6 1 1
       44 DUPCLOSURE                       R7 K16 [PROTO_0]
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R4
       49 DUPCLOSURE                       R8 K17 [PROTO_3]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R4
       55 DUPTABLE                         R9 K21 [{["summary"] = "View", ["stories"], ["controls"]}]
       56 DUPTABLE                         R10 K23 [{"Basic"}]
       57 DUPTABLE                         R11 K27 [{["name"] = "Basic Use", ["story"]}]
       58 DUPCLOSURE                       R12 K28 [PROTO_4]
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R8
       63 SETTABLEKS                       R12 R11 K26 ["story"]
       65 SETTABLEKS                       R11 R10 K22 ["Basic"]
       67 SETTABLEKS                       R10 R9 K19 ["stories"]
       69 DUPTABLE                         R10 K30 [{"transparency"}]
       70 NEWTABLE                         R11 0 3
       72 LOADN                            R12 0
       73 LOADK                            R13 K31 [0.25]
       74 LOADK                            R14 K32 [0.75]
       75 SETLIST                          R11 R12 3 [1]
       77 SETTABLEKS                       R11 R10 K29 ["transparency"]
       79 SETTABLEKS                       R10 R9 K20 ["controls"]
       81 RETURN                           R9 1
