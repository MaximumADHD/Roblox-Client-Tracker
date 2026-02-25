MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CancellableDialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R3 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Component-CancelButton"]
       20 NEWTABLE                         R5 0 0
       22 NEWTABLE                         R6 0 1
       24 MOVE                             R7 R2
       25 LOADK                            R8 K11 [">> .Cancel-Button"]
       26 DUPTABLE                         R9 K19 [{"Font", "TextSize", "TextColor3", "TextXAlignment", "BackgroundTransparency", "BackgroundColor3", "TextTransparency"}]
       27 GETIMPORT                        R10 K22 [Enum.Font.SourceSans]
       29 SETTABLEKS                       R10 R9 K12 ["Font"]
       31 LOADK                            R10 K23 ["$NormalTextSize"]
       32 SETTABLEKS                       R10 R9 K13 ["TextSize"]
       34 LOADK                            R10 K24 ["$TextContrast"]
       35 SETTABLEKS                       R10 R9 K14 ["TextColor3"]
       37 GETIMPORT                        R10 K26 [Enum.TextXAlignment.Center]
       39 SETTABLEKS                       R10 R9 K15 ["TextXAlignment"]
       41 LOADK                            R10 K27 ["$NotTransparent"]
       42 SETTABLEKS                       R10 R9 K16 ["BackgroundTransparency"]
       44 LOADK                            R10 K28 ["$Gray70"]
       45 SETTABLEKS                       R10 R9 K17 ["BackgroundColor3"]
       47 LOADK                            R10 K27 ["$NotTransparent"]
       48 SETTABLEKS                       R10 R9 K18 ["TextTransparency"]
       50 NEWTABLE                         R10 0 4
       52 MOVE                             R11 R2
       53 LOADK                            R12 K29 ["::UIPadding"]
       54 DUPTABLE                         R13 K34 [{"PaddingTop", "PaddingRight", "PaddingBottom", "PaddingLeft"}]
       55 GETIMPORT                        R14 K37 [UDim.new]
       57 LOADN                            R15 0
       58 LOADN                            R16 4
       59 CALL                             R14 2 1
       60 SETTABLEKS                       R14 R13 K30 ["PaddingTop"]
       62 GETIMPORT                        R14 K37 [UDim.new]
       64 LOADN                            R15 0
       65 LOADN                            R16 16
       66 CALL                             R14 2 1
       67 SETTABLEKS                       R14 R13 K31 ["PaddingRight"]
       69 GETIMPORT                        R14 K37 [UDim.new]
       71 LOADN                            R15 0
       72 LOADN                            R16 4
       73 CALL                             R14 2 1
       74 SETTABLEKS                       R14 R13 K32 ["PaddingBottom"]
       76 GETIMPORT                        R14 K37 [UDim.new]
       78 LOADN                            R15 0
       79 LOADN                            R16 16
       80 CALL                             R14 2 1
       81 SETTABLEKS                       R14 R13 K33 ["PaddingLeft"]
       83 CALL                             R11 2 1
       84 MOVE                             R12 R2
       85 LOADK                            R13 K38 [".Enabled :hover"]
       86 DUPTABLE                         R14 K39 [{"BackgroundColor3"}]
       87 LOADK                            R15 K40 ["$Gray60"]
       88 SETTABLEKS                       R15 R14 K17 ["BackgroundColor3"]
       90 CALL                             R12 2 1
       91 MOVE                             R13 R2
       92 LOADK                            R14 K41 [".Disabled"]
       93 DUPTABLE                         R15 K42 [{"TextTransparency"}]
       94 LOADK                            R16 K43 ["$TextDisabledTransparency"]
       95 SETTABLEKS                       R16 R15 K18 ["TextTransparency"]
       97 CALL                             R13 2 1
       98 MOVE                             R14 R2
       99 LOADK                            R15 K44 ["::UIStroke"]
      100 DUPTABLE                         R16 K49 [{"ApplyStrokeMode", "Thickness", "Transparency", "Color"}]
      101 GETIMPORT                        R17 K51 [Enum.ApplyStrokeMode.Border]
      103 SETTABLEKS                       R17 R16 K45 ["ApplyStrokeMode"]
      105 LOADK                            R17 K52 ["$CancelButtonBorderSizePixel"]
      106 SETTABLEKS                       R17 R16 K46 ["Thickness"]
      108 LOADK                            R17 K53 ["$CancelButtonBorderTransparency"]
      109 SETTABLEKS                       R17 R16 K47 ["Transparency"]
      111 LOADK                            R17 K54 ["$CancelButtonBorderColor3"]
      112 SETTABLEKS                       R17 R16 K48 ["Color"]
      114 CALL                             R14 2 -1
      115 SETLIST                          R10 R11 -1 [1]
      117 CALL                             R7 3 -1
      118 SETLIST                          R6 R7 -1 [1]
      120 CALL                             R3 3 -1
      121 RETURN                           R3 -1
