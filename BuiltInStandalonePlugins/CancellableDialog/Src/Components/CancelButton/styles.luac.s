MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CancellableDialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Component-CancelButton"]
       20 NEWTABLE                         R5 0 0
       22 NEWTABLE                         R6 0 1
       24 MOVE                             R7 R2
       25 LOADK                            R8 K11 [">> .Cancel-Button"]
       26 DUPTABLE                         R9 K23 [{["Font"], ["TextSize"] = "$NormalTextSize", ["TextColor3"] = "$TextContrast", ["TextXAlignment"], ["BackgroundTransparency"] = "$NotTransparent", ["BackgroundColor3"] = "$Gray70", ["TextTransparency"] = "$NotTransparent"}]
       27 GETIMPORT                        R10 K26 [Enum.Font.SourceSans]
       29 SETTABLEKS                       R10 R9 K12 ["Font"]
       31 GETIMPORT                        R10 K28 [Enum.TextXAlignment.Center]
       33 SETTABLEKS                       R10 R9 K17 ["TextXAlignment"]
       35 NEWTABLE                         R10 0 4
       37 MOVE                             R11 R2
       38 LOADK                            R12 K29 ["::UIPadding"]
       39 DUPTABLE                         R13 K34 [{"PaddingTop", "PaddingRight", "PaddingBottom", "PaddingLeft"}]
       40 GETIMPORT                        R14 K37 [UDim.new]
       42 LOADN                            R15 0
       43 LOADN                            R16 4
       44 CALL                             R14 2 1
       45 SETTABLEKS                       R14 R13 K30 ["PaddingTop"]
       47 GETIMPORT                        R14 K37 [UDim.new]
       49 LOADN                            R15 0
       50 LOADN                            R16 16
       51 CALL                             R14 2 1
       52 SETTABLEKS                       R14 R13 K31 ["PaddingRight"]
       54 GETIMPORT                        R14 K37 [UDim.new]
       56 LOADN                            R15 0
       57 LOADN                            R16 4
       58 CALL                             R14 2 1
       59 SETTABLEKS                       R14 R13 K32 ["PaddingBottom"]
       61 GETIMPORT                        R14 K37 [UDim.new]
       63 LOADN                            R15 0
       64 LOADN                            R16 16
       65 CALL                             R14 2 1
       66 SETTABLEKS                       R14 R13 K33 ["PaddingLeft"]
       68 CALL                             R11 2 1
       69 MOVE                             R12 R2
       70 LOADK                            R13 K38 [".Enabled :hover"]
       71 DUPTABLE                         R14 K40 [{["BackgroundColor3"] = "$Gray60"}]
       72 CALL                             R12 2 1
       73 MOVE                             R13 R2
       74 LOADK                            R14 K41 [".Disabled"]
       75 DUPTABLE                         R15 K43 [{["TextTransparency"] = "$TextDisabledTransparency"}]
       76 CALL                             R13 2 1
       77 MOVE                             R14 R2
       78 LOADK                            R15 K44 ["::UIStroke"]
       79 DUPTABLE                         R16 K52 [{["ApplyStrokeMode"], ["Thickness"] = "$CancelButtonBorderSizePixel", ["Transparency"] = "$CancelButtonBorderTransparency", ["Color"] = "$CancelButtonBorderColor3"}]
       80 GETIMPORT                        R17 K54 [Enum.ApplyStrokeMode.Border]
       82 SETTABLEKS                       R17 R16 K45 ["ApplyStrokeMode"]
       84 CALL                             R14 2 -1
       85 SETLIST                          R10 R11 -1 [1]
       87 CALL                             R7 3 -1
       88 SETLIST                          R6 R7 -1 [1]
       90 CALL                             R3 3 -1
       91 RETURN                           R3 -1
