PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Tokens"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["Typography"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 DUPTABLE                         R3 K24 [{"Color", "Config", "DarkMode", "Ease", "FontSize", "FontWeight", "Gap", "Gutter", "IconSize", "InputSize", "Inverse", "LetterSpacing", "LightMode", "LineHeight", "Margin", "Padding", "Platform", "Radius", "Size", "Stroke", "Time", "ToggleSize", "Typography"}]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K25 ["withExtended"]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K26 ["Dark"]
       17 CALL                             R5 0 -1
       18 CALL                             R4 -1 1
       19 SETTABLEKS                       R4 R3 K2 ["Color"]
       21 DUPTABLE                         R4 K31 [{"ColorMode", "Text", "Theme", "UI"}]
       22 DUPTABLE                         R5 K37 [{["Name"] = "Dark", ["IsDark"] = "true", ["IsLight"] = "false"}]
       23 SETTABLEKS                       R5 R4 K27 ["ColorMode"]
       25 DUPTABLE                         R5 K46 [{["Font"] = "rbxasset://fonts/families/BuilderSans.json", ["Interval"], ["InverseScale"] = 0.7936507936507936, ["NominalScale"] = 1.26, ["Scale"]}]
       26 LOADK                            R7 K47 [5.04]
       27 MUL                              R6 R7 R0
       28 SETTABLEKS                       R6 R5 K40 ["Interval"]
       30 SETTABLEKS                       R0 R5 K45 ["Scale"]
       32 SETTABLEKS                       R5 R4 K28 ["Text"]
       34 DUPTABLE                         R5 K54 [{["Name"] = "KineticEnergy", ["Text"], ["IsClassic"] = "false", ["IsDefault"] = "false", ["IsFoundation"] = "false", ["IsKids"] = "false", ["IsUIBlox"] = "false"}]
       35 DUPTABLE                         R6 K55 [{["Font"] = "rbxasset://fonts/families/BuilderSans.json", ["FontWeight"], ["NominalScale"] = 1.26}]
       36 DUPTABLE                         R7 K68 [{["FontWeight_300"] = "Light", ["FontWeight_400"] = "Regular", ["FontWeight_500"] = "Medium", ["FontWeight_600"] = "SemiBold", ["FontWeight_700"] = "Bold", ["FontWeight_800"] = "ExtraBold"}]
       37 SETTABLEKS                       R7 R6 K7 ["FontWeight"]
       39 SETTABLEKS                       R6 R5 K28 ["Text"]
       41 SETTABLEKS                       R5 R4 K29 ["Theme"]
       43 DUPTABLE                         R5 K72 [{["Interval"] = 4, ["Scale"], ["StrokeBase"] = 1}]
       44 SETTABLEKS                       R0 R5 K45 ["Scale"]
       46 SETTABLEKS                       R5 R4 K30 ["UI"]
       48 SETTABLEKS                       R4 R3 K3 ["Config"]
       50 GETUPVAL                         R4 1
       51 GETTABLEKS                       R4 R4 K26 ["Dark"]
       53 CALL                             R4 0 1
       54 SETTABLEKS                       R4 R3 K4 ["DarkMode"]
       56 GETTABLEKS                       R4 R1 K5 ["Ease"]
       58 SETTABLEKS                       R4 R3 K5 ["Ease"]
       60 GETTABLEKS                       R4 R2 K6 ["FontSize"]
       62 SETTABLEKS                       R4 R3 K6 ["FontSize"]
       64 GETTABLEKS                       R4 R2 K7 ["FontWeight"]
       66 SETTABLEKS                       R4 R3 K7 ["FontWeight"]
       68 GETTABLEKS                       R4 R1 K8 ["Gap"]
       70 SETTABLEKS                       R4 R3 K8 ["Gap"]
       72 GETTABLEKS                       R4 R1 K9 ["Gutter"]
       74 SETTABLEKS                       R4 R3 K9 ["Gutter"]
       76 GETTABLEKS                       R4 R1 K10 ["IconSize"]
       78 SETTABLEKS                       R4 R3 K10 ["IconSize"]
       80 GETTABLEKS                       R4 R1 K11 ["InputSize"]
       82 SETTABLEKS                       R4 R3 K11 ["InputSize"]
       84 GETUPVAL                         R4 1
       85 GETTABLEKS                       R4 R4 K57 ["Light"]
       87 CALL                             R4 0 1
       88 SETTABLEKS                       R4 R3 K12 ["Inverse"]
       90 GETTABLEKS                       R4 R1 K13 ["LetterSpacing"]
       92 SETTABLEKS                       R4 R3 K13 ["LetterSpacing"]
       94 GETUPVAL                         R4 1
       95 GETTABLEKS                       R4 R4 K57 ["Light"]
       97 CALL                             R4 0 1
       98 SETTABLEKS                       R4 R3 K14 ["LightMode"]
      100 GETTABLEKS                       R4 R2 K15 ["LineHeight"]
      102 SETTABLEKS                       R4 R3 K15 ["LineHeight"]
      104 GETTABLEKS                       R4 R1 K16 ["Margin"]
      106 SETTABLEKS                       R4 R3 K16 ["Margin"]
      108 GETTABLEKS                       R4 R1 K17 ["Padding"]
      110 SETTABLEKS                       R4 R3 K17 ["Padding"]
      112 GETTABLEKS                       R4 R1 K18 ["Platform"]
      114 SETTABLEKS                       R4 R3 K18 ["Platform"]
      116 GETTABLEKS                       R4 R1 K19 ["Radius"]
      118 SETTABLEKS                       R4 R3 K19 ["Radius"]
      120 GETTABLEKS                       R4 R1 K20 ["Size"]
      122 SETTABLEKS                       R4 R3 K20 ["Size"]
      124 GETTABLEKS                       R4 R1 K21 ["Stroke"]
      126 SETTABLEKS                       R4 R3 K21 ["Stroke"]
      128 GETTABLEKS                       R4 R1 K22 ["Time"]
      130 SETTABLEKS                       R4 R3 K22 ["Time"]
      132 GETTABLEKS                       R4 R1 K23 ["ToggleSize"]
      134 SETTABLEKS                       R4 R3 K23 ["ToggleSize"]
      136 GETTABLEKS                       R4 R2 K1 ["Typography"]
      138 SETTABLEKS                       R4 R3 K1 ["Typography"]
      140 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["Shared"]
       11 CALL                             R0 1 1
       12 GETIMPORT                        R1 K1 [require]
       14 GETIMPORT                        R2 K3 [script]
       16 GETTABLEKS                       R2 R2 K4 ["Parent"]
       18 GETTABLEKS                       R2 R2 K6 ["Colors"]
       20 CALL                             R1 1 1
       21 DUPCLOSURE                       R2 K7 [PROTO_0]
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R1
       24 RETURN                           R2 1
