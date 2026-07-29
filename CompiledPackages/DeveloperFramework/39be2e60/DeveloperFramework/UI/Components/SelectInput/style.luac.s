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
       56 DUPTABLE                         R9 K32 [{["Padding"] = 10, ["BackgroundStyle"], ["ErrorTextStyle"], ["DropdownMenu"], ["Size"], ["ArrowOffset"] = 10, ["ArrowSize"], ["ArrowImage"] = "rbxasset://textures/StudioToolbox/ArrowDownIconWhite.png", ["ArrowColor"], ["IconOffset"] = 10, ["IconSize"], ["PlaceholderTextColor"], ["Text"]}]
       57 GETTABLEKS                       R10 R5 K33 ["Dictionary"]
       59 GETTABLEKS                       R10 R10 K34 ["join"]
       61 MOVE                             R11 R8
       62 NEWTABLE                         R12 4 0
       64 GETTABLEKS                       R13 R3 K35 ["InputFieldBackground"]
       66 SETTABLEKS                       R13 R12 K36 ["Color"]
       68 GETTABLEKS                       R13 R7 K37 ["Hover"]
       70 DUPTABLE                         R14 K39 [{"BorderColor", "Color"}]
       71 GETTABLEKS                       R15 R3 K40 ["DialogMainButton"]
       73 SETTABLEKS                       R15 R14 K38 ["BorderColor"]
       75 GETTABLEKS                       R15 R3 K35 ["InputFieldBackground"]
       77 SETTABLEKS                       R15 R14 K36 ["Color"]
       79 SETTABLE                         R14 R12 R13
       80 GETTABLEKS                       R13 R7 K41 ["Error"]
       82 DUPTABLE                         R14 K42 [{"BorderColor"}]
       83 GETTABLEKS                       R15 R3 K43 ["ErrorText"]
       85 SETTABLEKS                       R15 R14 K38 ["BorderColor"]
       87 SETTABLE                         R14 R12 R13
       88 CALL                             R10 2 1
       89 SETTABLEKS                       R10 R9 K19 ["BackgroundStyle"]
       91 DUPTABLE                         R10 K49 [{["Font"], ["TextColor"], ["TextSize"] = 18, ["TextXAlignment"]}]
       92 GETIMPORT                        R11 K52 [Enum.Font.SourceSans]
       94 SETTABLEKS                       R11 R10 K44 ["Font"]
       96 GETTABLEKS                       R11 R3 K43 ["ErrorText"]
       98 SETTABLEKS                       R11 R10 K45 ["TextColor"]
      100 GETIMPORT                        R11 K54 [Enum.TextXAlignment.Left]
      102 SETTABLEKS                       R11 R10 K48 ["TextXAlignment"]
      104 SETTABLEKS                       R10 R9 K20 ["ErrorTextStyle"]
      106 DUPTABLE                         R10 K59 [{["BackgroundStyle"], ["Width"] = 240, ["MaxHeight"] = 240, ["Offset"]}]
      107 SETTABLEKS                       R8 R10 K19 ["BackgroundStyle"]
      109 GETIMPORT                        R11 K62 [Vector2.new]
      111 LOADN                            R12 0
      112 LOADN                            R13 0
      113 CALL                             R11 2 1
      114 SETTABLEKS                       R11 R10 K58 ["Offset"]
      116 SETTABLEKS                       R10 R9 K21 ["DropdownMenu"]
      118 GETIMPORT                        R10 K64 [UDim2.new]
      120 LOADN                            R11 0
      121 LOADN                            R12 240
      122 LOADN                            R13 0
      123 LOADN                            R14 32
      124 CALL                             R10 4 1
      125 SETTABLEKS                       R10 R9 K22 ["Size"]
      127 GETIMPORT                        R10 K64 [UDim2.new]
      129 LOADN                            R11 0
      130 LOADN                            R12 12
      131 LOADN                            R13 0
      132 LOADN                            R14 12
      133 CALL                             R10 4 1
      134 SETTABLEKS                       R10 R9 K24 ["ArrowSize"]
      136 GETTABLEKS                       R10 R3 K65 ["MainText"]
      138 SETTABLEKS                       R10 R9 K27 ["ArrowColor"]
      140 GETIMPORT                        R10 K67 [UDim2.fromOffset]
      142 LOADN                            R11 16
      143 LOADN                            R12 16
      144 CALL                             R10 2 1
      145 SETTABLEKS                       R10 R9 K29 ["IconSize"]
      147 GETTABLEKS                       R10 R3 K68 ["DimmedText"]
      149 SETTABLEKS                       R10 R9 K30 ["PlaceholderTextColor"]
      151 DUPTABLE                         R10 K49 [{["Font"], ["TextColor"], ["TextSize"] = 18, ["TextXAlignment"]}]
      152 GETIMPORT                        R11 K52 [Enum.Font.SourceSans]
      154 SETTABLEKS                       R11 R10 K44 ["Font"]
      156 GETTABLEKS                       R11 R3 K65 ["MainText"]
      158 SETTABLEKS                       R11 R10 K45 ["TextColor"]
      160 GETIMPORT                        R11 K54 [Enum.TextXAlignment.Left]
      162 SETTABLEKS                       R11 R10 K48 ["TextXAlignment"]
      164 SETTABLEKS                       R10 R9 K31 ["Text"]
      166 RETURN                           R9 1
