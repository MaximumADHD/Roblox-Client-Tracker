MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Component-TextInput"]
       20 DUPTABLE                         R5 K14 [{["AutomaticSize"], ["BackgroundColor3"] = "$FilledInputBackground"}]
       21 GETIMPORT                        R6 K17 [Enum.AutomaticSize.Y]
       23 SETTABLEKS                       R6 R5 K11 ["AutomaticSize"]
       25 NEWTABLE                         R6 0 4
       27 MOVE                             R7 R2
       28 LOADK                            R8 K18 ["::UICorner"]
       29 DUPTABLE                         R9 K20 [{"CornerRadius"}]
       30 GETIMPORT                        R10 K23 [UDim.new]
       32 LOADN                            R11 0
       33 LOADN                            R12 4
       34 CALL                             R10 2 1
       35 SETTABLEKS                       R10 R9 K19 ["CornerRadius"]
       37 CALL                             R7 2 1
       38 MOVE                             R8 R2
       39 LOADK                            R9 K24 ["::UIFlexItem"]
       40 DUPTABLE                         R10 K26 [{"FlexMode"}]
       41 GETIMPORT                        R11 K29 [Enum.UIFlexMode.Grow]
       43 SETTABLEKS                       R11 R10 K25 ["FlexMode"]
       45 CALL                             R8 2 1
       46 MOVE                             R9 R2
       47 LOADK                            R10 K30 [".Error"]
       48 NEWTABLE                         R11 0 0
       50 NEWTABLE                         R12 0 1
       52 MOVE                             R13 R2
       53 LOADK                            R14 K31 ["::UIStroke"]
       54 DUPTABLE                         R15 K39 [{["Thickness"] = 1, ["ApplyStrokeMode"], ["Color"] = "$ErrorMain", ["Transparency"] = 0.4}]
       55 GETIMPORT                        R16 K41 [Enum.ApplyStrokeMode.Border]
       57 SETTABLEKS                       R16 R15 K34 ["ApplyStrokeMode"]
       59 CALL                             R13 2 -1
       60 SETLIST                          R12 R13 -1 [1]
       62 CALL                             R9 3 1
       63 MOVE                             R10 R2
       64 LOADK                            R11 K42 ["> ScrollingFrame"]
       65 DUPTABLE                         R12 K49 [{["ScrollingDirection"], ["ScrollBarThickness"] = 4, ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1}]
       66 GETIMPORT                        R13 K50 [Enum.ScrollingDirection.Y]
       68 SETTABLEKS                       R13 R12 K43 ["ScrollingDirection"]
       70 NEWTABLE                         R13 0 1
       72 MOVE                             R14 R2
       73 LOADK                            R15 K51 ["> TextBox"]
       74 DUPTABLE                         R16 K67 [{["TextColor3"] = "$TextPrimary", ["TextSize"] = "$FontSizeM", ["LineHeight"] = 1.5, ["BackgroundTransparency"] = 1, ["TextXAlignment"], ["TextWrapped"] = True, ["TextScaled"] = False, ["ClearTextOnFocus"] = False, ["Font"] = "$Font", ["RichText"] = True}]
       75 GETIMPORT                        R17 K69 [Enum.TextXAlignment.Left]
       77 SETTABLEKS                       R17 R16 K58 ["TextXAlignment"]
       79 NEWTABLE                         R17 0 2
       81 MOVE                             R18 R2
       82 LOADK                            R19 K70 ["::UIPadding"]
       83 DUPTABLE                         R20 K73 [{"PaddingLeft", "PaddingRight"}]
       84 GETIMPORT                        R21 K23 [UDim.new]
       86 LOADN                            R22 0
       87 LOADN                            R23 10
       88 CALL                             R21 2 1
       89 SETTABLEKS                       R21 R20 K71 ["PaddingLeft"]
       91 GETIMPORT                        R21 K23 [UDim.new]
       93 LOADN                            R22 0
       94 LOADN                            R23 12
       95 CALL                             R21 2 1
       96 SETTABLEKS                       R21 R20 K72 ["PaddingRight"]
       98 CALL                             R18 2 1
       99 MOVE                             R19 R2
      100 LOADK                            R20 K74 [".Disabled"]
      101 DUPTABLE                         R21 K77 [{["BackgroundTransparency"] = 0.94, ["TextTransparency"] = 0.4}]
      102 CALL                             R19 2 -1
      103 SETLIST                          R17 R18 -1 [1]
      105 CALL                             R14 3 -1
      106 SETLIST                          R13 R14 -1 [1]
      108 CALL                             R10 3 -1
      109 SETLIST                          R6 R7 -1 [1]
      111 CALL                             R3 3 -1
      112 RETURN                           R3 -1
