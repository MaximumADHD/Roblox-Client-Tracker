MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K2 ["UI"]
       13 GETTABLEKS                       R2 R2 K7 ["Components"]
       15 GETTABLEKS                       R2 R2 K8 ["UIFolderData"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K6 [require]
       20 GETTABLEKS                       R3 R1 K9 ["RoundBox"]
       22 GETTABLEKS                       R3 R3 K10 ["style"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K11 ["Style"]
       29 GETTABLEKS                       R4 R4 K12 ["StyleKey"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K6 [require]
       34 GETTABLEKS                       R5 R0 K13 ["Util"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K6 [require]
       39 GETTABLEKS                       R6 R0 K4 ["Parent"]
       41 GETTABLEKS                       R6 R6 K14 ["Cryo"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R4 K15 ["deepCopy"]
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R8 R0 K13 ["Util"]
       50 GETTABLEKS                       R8 R8 K16 ["StyleModifier"]
       52 CALL                             R7 1 1
       53 MOVE                             R8 R6
       54 MOVE                             R9 R2
       55 CALL                             R8 1 1
       56 DUPTABLE                         R9 K30 [{"Padding", "BackgroundStyle", "ErrorTextStyle", "DropdownMenu", "Size", "ArrowOffset", "ArrowSize", "ArrowImage", "ArrowColor", "IconOffset", "IconSize", "PlaceholderTextColor", "Text"}]
       57 LOADN                            R10 10
       58 SETTABLEKS                       R10 R9 K17 ["Padding"]
       60 GETTABLEKS                       R10 R5 K31 ["Dictionary"]
       62 GETTABLEKS                       R10 R10 K32 ["join"]
       64 MOVE                             R11 R8
       65 NEWTABLE                         R12 4 0
       67 GETTABLEKS                       R13 R3 K33 ["InputFieldBackground"]
       69 SETTABLEKS                       R13 R12 K34 ["Color"]
       71 GETTABLEKS                       R13 R7 K35 ["Hover"]
       73 DUPTABLE                         R14 K37 [{"BorderColor", "Color"}]
       74 GETTABLEKS                       R15 R3 K38 ["DialogMainButton"]
       76 SETTABLEKS                       R15 R14 K36 ["BorderColor"]
       78 GETTABLEKS                       R15 R3 K33 ["InputFieldBackground"]
       80 SETTABLEKS                       R15 R14 K34 ["Color"]
       82 SETTABLE                         R14 R12 R13
       83 GETTABLEKS                       R13 R7 K39 ["Error"]
       85 DUPTABLE                         R14 K40 [{"BorderColor"}]
       86 GETTABLEKS                       R15 R3 K41 ["ErrorText"]
       88 SETTABLEKS                       R15 R14 K36 ["BorderColor"]
       90 SETTABLE                         R14 R12 R13
       91 CALL                             R10 2 1
       92 SETTABLEKS                       R10 R9 K18 ["BackgroundStyle"]
       94 DUPTABLE                         R10 K46 [{"Font", "TextColor", "TextSize", "TextXAlignment"}]
       95 GETIMPORT                        R11 K49 [Enum.Font.SourceSans]
       97 SETTABLEKS                       R11 R10 K42 ["Font"]
       99 GETTABLEKS                       R11 R3 K41 ["ErrorText"]
      101 SETTABLEKS                       R11 R10 K43 ["TextColor"]
      103 LOADN                            R11 18
      104 SETTABLEKS                       R11 R10 K44 ["TextSize"]
      106 GETIMPORT                        R11 K51 [Enum.TextXAlignment.Left]
      108 SETTABLEKS                       R11 R10 K45 ["TextXAlignment"]
      110 SETTABLEKS                       R10 R9 K19 ["ErrorTextStyle"]
      112 DUPTABLE                         R10 K55 [{"BackgroundStyle", "Width", "MaxHeight", "Offset"}]
      113 SETTABLEKS                       R8 R10 K18 ["BackgroundStyle"]
      115 LOADN                            R11 240
      116 SETTABLEKS                       R11 R10 K52 ["Width"]
      118 LOADN                            R11 240
      119 SETTABLEKS                       R11 R10 K53 ["MaxHeight"]
      121 GETIMPORT                        R11 K58 [Vector2.new]
      123 LOADN                            R12 0
      124 LOADN                            R13 0
      125 CALL                             R11 2 1
      126 SETTABLEKS                       R11 R10 K54 ["Offset"]
      128 SETTABLEKS                       R10 R9 K20 ["DropdownMenu"]
      130 GETIMPORT                        R10 K60 [UDim2.new]
      132 LOADN                            R11 0
      133 LOADN                            R12 240
      134 LOADN                            R13 0
      135 LOADN                            R14 32
      136 CALL                             R10 4 1
      137 SETTABLEKS                       R10 R9 K21 ["Size"]
      139 LOADN                            R10 10
      140 SETTABLEKS                       R10 R9 K22 ["ArrowOffset"]
      142 GETIMPORT                        R10 K60 [UDim2.new]
      144 LOADN                            R11 0
      145 LOADN                            R12 12
      146 LOADN                            R13 0
      147 LOADN                            R14 12
      148 CALL                             R10 4 1
      149 SETTABLEKS                       R10 R9 K23 ["ArrowSize"]
      151 LOADK                            R10 K61 ["rbxasset://textures/StudioToolbox/ArrowDownIconWhite.png"]
      152 SETTABLEKS                       R10 R9 K24 ["ArrowImage"]
      154 GETTABLEKS                       R10 R3 K62 ["MainText"]
      156 SETTABLEKS                       R10 R9 K25 ["ArrowColor"]
      158 LOADN                            R10 10
      159 SETTABLEKS                       R10 R9 K26 ["IconOffset"]
      161 GETIMPORT                        R10 K64 [UDim2.fromOffset]
      163 LOADN                            R11 16
      164 LOADN                            R12 16
      165 CALL                             R10 2 1
      166 SETTABLEKS                       R10 R9 K27 ["IconSize"]
      168 GETTABLEKS                       R10 R3 K65 ["DimmedText"]
      170 SETTABLEKS                       R10 R9 K28 ["PlaceholderTextColor"]
      172 DUPTABLE                         R10 K46 [{"Font", "TextColor", "TextSize", "TextXAlignment"}]
      173 GETIMPORT                        R11 K49 [Enum.Font.SourceSans]
      175 SETTABLEKS                       R11 R10 K42 ["Font"]
      177 GETTABLEKS                       R11 R3 K62 ["MainText"]
      179 SETTABLEKS                       R11 R10 K43 ["TextColor"]
      181 LOADN                            R11 18
      182 SETTABLEKS                       R11 R10 K44 ["TextSize"]
      184 GETIMPORT                        R11 K51 [Enum.TextXAlignment.Left]
      186 SETTABLEKS                       R11 R10 K45 ["TextXAlignment"]
      188 SETTABLEKS                       R10 R9 K29 ["Text"]
      190 RETURN                           R9 1
