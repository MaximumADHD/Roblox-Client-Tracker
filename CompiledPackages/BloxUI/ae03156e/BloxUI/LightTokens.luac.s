MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K20 [{"Surface_0", "Surface_100", "Surface_200", "Surface_300", "ContentEmphasis", "ContentDefault", "ContentMuted", "ActionEmphasisBg", "ActionEmphasisFg", "StrokeDefault", "StateHover", "StatePress", "ActionEmphasisHover", "ActionEmphasisPress", "ActionStandardBg", "SystemEmphasis", "White", "Black", "Font", "FontSemiBold"}]
        2 GETIMPORT                        R1 K23 [Color3.fromRGB]
        4 LOADN                            R2 255
        5 LOADN                            R3 255
        6 LOADN                            R4 255
        7 CALL                             R1 3 1
        8 SETTABLEKS                       R1 R0 K0 ["Surface_0"]
       10 GETIMPORT                        R1 K23 [Color3.fromRGB]
       12 LOADN                            R2 244
       13 LOADN                            R3 244
       14 LOADN                            R4 246
       15 CALL                             R1 3 1
       16 SETTABLEKS                       R1 R0 K1 ["Surface_100"]
       18 GETIMPORT                        R1 K23 [Color3.fromRGB]
       20 LOADN                            R2 233
       21 LOADN                            R3 234
       22 LOADN                            R4 238
       23 CALL                             R1 3 1
       24 SETTABLEKS                       R1 R0 K2 ["Surface_200"]
       26 GETIMPORT                        R1 K23 [Color3.fromRGB]
       28 LOADN                            R2 222
       29 LOADN                            R3 224
       30 LOADN                            R4 230
       31 CALL                             R1 3 1
       32 SETTABLEKS                       R1 R0 K3 ["Surface_300"]
       34 GETIMPORT                        R1 K23 [Color3.fromRGB]
       36 LOADN                            R2 39
       37 LOADN                            R3 41
       38 LOADN                            R4 48
       39 CALL                             R1 3 1
       40 SETTABLEKS                       R1 R0 K4 ["ContentEmphasis"]
       42 GETIMPORT                        R1 K23 [Color3.fromRGB]
       44 LOADN                            R2 82
       45 LOADN                            R3 84
       46 LOADN                            R4 96
       47 CALL                             R1 3 1
       48 SETTABLEKS                       R1 R0 K5 ["ContentDefault"]
       50 GETIMPORT                        R1 K23 [Color3.fromRGB]
       52 LOADN                            R2 115
       53 LOADN                            R3 120
       54 LOADN                            R4 140
       55 CALL                             R1 3 1
       56 SETTABLEKS                       R1 R0 K6 ["ContentMuted"]
       58 GETIMPORT                        R1 K23 [Color3.fromRGB]
       60 LOADN                            R2 51
       61 LOADN                            R3 95
       62 LOADN                            R4 255
       63 CALL                             R1 3 1
       64 SETTABLEKS                       R1 R0 K7 ["ActionEmphasisBg"]
       66 GETIMPORT                        R1 K23 [Color3.fromRGB]
       68 LOADN                            R2 255
       69 LOADN                            R3 255
       70 LOADN                            R4 255
       71 CALL                             R1 3 1
       72 SETTABLEKS                       R1 R0 K8 ["ActionEmphasisFg"]
       74 GETIMPORT                        R1 K23 [Color3.fromRGB]
       76 LOADN                            R2 210
       77 LOADN                            R3 212
       78 LOADN                            R4 218
       79 CALL                             R1 3 1
       80 SETTABLEKS                       R1 R0 K9 ["StrokeDefault"]
       82 GETIMPORT                        R1 K23 [Color3.fromRGB]
       84 LOADN                            R2 207
       85 LOADN                            R3 209
       86 LOADN                            R4 216
       87 CALL                             R1 3 1
       88 SETTABLEKS                       R1 R0 K10 ["StateHover"]
       90 GETIMPORT                        R1 K23 [Color3.fromRGB]
       92 LOADN                            R2 196
       93 LOADN                            R3 199
       94 LOADN                            R4 207
       95 CALL                             R1 3 1
       96 SETTABLEKS                       R1 R0 K11 ["StatePress"]
       98 GETIMPORT                        R1 K23 [Color3.fromRGB]
      100 LOADN                            R2 82
      101 LOADN                            R3 119
      102 LOADN                            R4 255
      103 CALL                             R1 3 1
      104 SETTABLEKS                       R1 R0 K12 ["ActionEmphasisHover"]
      106 GETIMPORT                        R1 K23 [Color3.fromRGB]
      108 LOADN                            R2 41
      109 LOADN                            R3 76
      110 LOADN                            R4 204
      111 CALL                             R1 3 1
      112 SETTABLEKS                       R1 R0 K13 ["ActionEmphasisPress"]
      114 GETIMPORT                        R1 K23 [Color3.fromRGB]
      116 LOADN                            R2 51
      117 LOADN                            R3 95
      118 LOADN                            R4 255
      119 CALL                             R1 3 1
      120 SETTABLEKS                       R1 R0 K14 ["ActionStandardBg"]
      122 GETIMPORT                        R1 K23 [Color3.fromRGB]
      124 LOADN                            R2 51
      125 LOADN                            R3 95
      126 LOADN                            R4 255
      127 CALL                             R1 3 1
      128 SETTABLEKS                       R1 R0 K15 ["SystemEmphasis"]
      130 GETIMPORT                        R1 K23 [Color3.fromRGB]
      132 LOADN                            R2 255
      133 LOADN                            R3 255
      134 LOADN                            R4 255
      135 CALL                             R1 3 1
      136 SETTABLEKS                       R1 R0 K16 ["White"]
      138 GETIMPORT                        R1 K23 [Color3.fromRGB]
      140 LOADN                            R2 0
      141 LOADN                            R3 0
      142 LOADN                            R4 0
      143 CALL                             R1 3 1
      144 SETTABLEKS                       R1 R0 K17 ["Black"]
      146 GETIMPORT                        R1 K25 [Font.new]
      148 LOADK                            R2 K26 ["rbxasset://fonts/families/BuilderSans.json"]
      149 GETIMPORT                        R3 K30 [Enum.FontWeight.Medium]
      151 GETIMPORT                        R4 K33 [Enum.FontStyle.Normal]
      153 CALL                             R1 3 1
      154 SETTABLEKS                       R1 R0 K18 ["Font"]
      156 GETIMPORT                        R1 K25 [Font.new]
      158 LOADK                            R2 K26 ["rbxasset://fonts/families/BuilderSans.json"]
      159 GETIMPORT                        R3 K35 [Enum.FontWeight.SemiBold]
      161 GETIMPORT                        R4 K33 [Enum.FontStyle.Normal]
      163 CALL                             R1 3 1
      164 SETTABLEKS                       R1 R0 K19 ["FontSemiBold"]
      166 RETURN                           R0 1
