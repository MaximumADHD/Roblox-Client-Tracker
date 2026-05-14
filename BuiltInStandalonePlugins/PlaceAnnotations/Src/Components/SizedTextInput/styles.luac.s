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
       20 DUPTABLE                         R5 K13 [{"AutomaticSize", "BackgroundColor3"}]
       21 GETIMPORT                        R6 K16 [Enum.AutomaticSize.Y]
       23 SETTABLEKS                       R6 R5 K11 ["AutomaticSize"]
       25 LOADK                            R6 K17 ["$FilledInputBackground"]
       26 SETTABLEKS                       R6 R5 K12 ["BackgroundColor3"]
       28 NEWTABLE                         R6 0 4
       30 MOVE                             R7 R2
       31 LOADK                            R8 K18 ["::UICorner"]
       32 DUPTABLE                         R9 K20 [{"CornerRadius"}]
       33 GETIMPORT                        R10 K23 [UDim.new]
       35 LOADN                            R11 0
       36 LOADN                            R12 4
       37 CALL                             R10 2 1
       38 SETTABLEKS                       R10 R9 K19 ["CornerRadius"]
       40 CALL                             R7 2 1
       41 MOVE                             R8 R2
       42 LOADK                            R9 K24 ["::UIFlexItem"]
       43 DUPTABLE                         R10 K26 [{"FlexMode"}]
       44 GETIMPORT                        R11 K29 [Enum.UIFlexMode.Grow]
       46 SETTABLEKS                       R11 R10 K25 ["FlexMode"]
       48 CALL                             R8 2 1
       49 MOVE                             R9 R2
       50 LOADK                            R10 K30 [".Error"]
       51 NEWTABLE                         R11 0 0
       53 NEWTABLE                         R12 0 1
       55 MOVE                             R13 R2
       56 LOADK                            R14 K31 ["::UIStroke"]
       57 DUPTABLE                         R15 K36 [{"Thickness", "ApplyStrokeMode", "Color", "Transparency"}]
       58 LOADN                            R16 1
       59 SETTABLEKS                       R16 R15 K32 ["Thickness"]
       61 GETIMPORT                        R16 K38 [Enum.ApplyStrokeMode.Border]
       63 SETTABLEKS                       R16 R15 K33 ["ApplyStrokeMode"]
       65 LOADK                            R16 K39 ["$ErrorMain"]
       66 SETTABLEKS                       R16 R15 K34 ["Color"]
       68 LOADK                            R16 K40 [0.4]
       69 SETTABLEKS                       R16 R15 K35 ["Transparency"]
       71 CALL                             R13 2 -1
       72 SETLIST                          R12 R13 -1 [1]
       74 CALL                             R9 3 1
       75 MOVE                             R10 R2
       76 LOADK                            R11 K41 ["> ScrollingFrame"]
       77 DUPTABLE                         R12 K46 [{"ScrollingDirection", "ScrollBarThickness", "BorderSizePixel", "BackgroundTransparency"}]
       78 GETIMPORT                        R13 K47 [Enum.ScrollingDirection.Y]
       80 SETTABLEKS                       R13 R12 K42 ["ScrollingDirection"]
       82 LOADN                            R13 4
       83 SETTABLEKS                       R13 R12 K43 ["ScrollBarThickness"]
       85 LOADN                            R13 0
       86 SETTABLEKS                       R13 R12 K44 ["BorderSizePixel"]
       88 LOADN                            R13 1
       89 SETTABLEKS                       R13 R12 K45 ["BackgroundTransparency"]
       91 NEWTABLE                         R13 0 1
       93 MOVE                             R14 R2
       94 LOADK                            R15 K48 ["> TextBox"]
       95 DUPTABLE                         R16 K58 [{"TextColor3", "TextSize", "LineHeight", "BackgroundTransparency", "TextXAlignment", "TextWrapped", "TextScaled", "ClearTextOnFocus", "Font", "RichText"}]
       96 LOADK                            R17 K59 ["$TextPrimary"]
       97 SETTABLEKS                       R17 R16 K49 ["TextColor3"]
       99 LOADK                            R17 K60 ["$FontSizeM"]
      100 SETTABLEKS                       R17 R16 K50 ["TextSize"]
      102 LOADK                            R17 K61 [1.5]
      103 SETTABLEKS                       R17 R16 K51 ["LineHeight"]
      105 LOADN                            R17 1
      106 SETTABLEKS                       R17 R16 K45 ["BackgroundTransparency"]
      108 GETIMPORT                        R17 K63 [Enum.TextXAlignment.Left]
      110 SETTABLEKS                       R17 R16 K52 ["TextXAlignment"]
      112 LOADB                            R17 1
      113 SETTABLEKS                       R17 R16 K53 ["TextWrapped"]
      115 LOADB                            R17 0
      116 SETTABLEKS                       R17 R16 K54 ["TextScaled"]
      118 LOADB                            R17 0
      119 SETTABLEKS                       R17 R16 K55 ["ClearTextOnFocus"]
      121 LOADK                            R17 K64 ["$Font"]
      122 SETTABLEKS                       R17 R16 K56 ["Font"]
      124 LOADB                            R17 1
      125 SETTABLEKS                       R17 R16 K57 ["RichText"]
      127 NEWTABLE                         R17 0 2
      129 MOVE                             R18 R2
      130 LOADK                            R19 K65 ["::UIPadding"]
      131 DUPTABLE                         R20 K68 [{"PaddingLeft", "PaddingRight"}]
      132 GETIMPORT                        R21 K23 [UDim.new]
      134 LOADN                            R22 0
      135 LOADN                            R23 10
      136 CALL                             R21 2 1
      137 SETTABLEKS                       R21 R20 K66 ["PaddingLeft"]
      139 GETIMPORT                        R21 K23 [UDim.new]
      141 LOADN                            R22 0
      142 LOADN                            R23 12
      143 CALL                             R21 2 1
      144 SETTABLEKS                       R21 R20 K67 ["PaddingRight"]
      146 CALL                             R18 2 1
      147 MOVE                             R19 R2
      148 LOADK                            R20 K69 [".Disabled"]
      149 DUPTABLE                         R21 K71 [{"BackgroundTransparency", "TextTransparency"}]
      150 LOADK                            R22 K72 [0.94]
      151 SETTABLEKS                       R22 R21 K45 ["BackgroundTransparency"]
      153 LOADK                            R22 K40 [0.4]
      154 SETTABLEKS                       R22 R21 K70 ["TextTransparency"]
      156 CALL                             R19 2 -1
      157 SETLIST                          R17 R18 -1 [1]
      159 CALL                             R14 3 -1
      160 SETLIST                          R13 R14 -1 [1]
      162 CALL                             R10 3 -1
      163 SETLIST                          R6 R7 -1 [1]
      165 CALL                             R3 3 -1
      166 RETURN                           R3 -1
