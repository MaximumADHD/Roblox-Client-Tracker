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
       19 LOADK                            R4 K10 [".Component-TextInfo"]
       20 NEWTABLE                         R5 0 0
       22 NEWTABLE                         R6 0 6
       24 MOVE                             R7 R2
       25 LOADK                            R8 K11 ["::UIListLayout"]
       26 DUPTABLE                         R9 K13 [{"Padding"}]
       27 GETIMPORT                        R10 K16 [UDim.new]
       29 LOADN                            R11 0
       30 LOADN                            R12 8
       31 CALL                             R10 2 1
       32 SETTABLEKS                       R10 R9 K12 ["Padding"]
       34 CALL                             R7 2 1
       35 MOVE                             R8 R2
       36 LOADK                            R9 K17 [">> .TitleText"]
       37 DUPTABLE                         R10 K20 [{"TextColor3", "Font"}]
       38 LOADK                            R11 K21 ["$TextPrimary"]
       39 SETTABLEKS                       R11 R10 K18 ["TextColor3"]
       41 GETIMPORT                        R11 K24 [Enum.Font.SourceSansSemibold]
       43 SETTABLEKS                       R11 R10 K19 ["Font"]
       45 CALL                             R8 2 1
       46 MOVE                             R9 R2
       47 LOADK                            R10 K25 [">> .SubtitleText"]
       48 DUPTABLE                         R11 K20 [{"TextColor3", "Font"}]
       49 LOADK                            R12 K26 ["$TextSecondary"]
       50 SETTABLEKS                       R12 R11 K18 ["TextColor3"]
       52 GETIMPORT                        R12 K24 [Enum.Font.SourceSansSemibold]
       54 SETTABLEKS                       R12 R11 K19 ["Font"]
       56 CALL                             R9 2 1
       57 MOVE                             R10 R2
       58 LOADK                            R11 K27 [">> .LoadingIconContainer"]
       59 DUPTABLE                         R12 K29 [{"Size"}]
       60 LOADK                            R13 K30 ["$IconSize"]
       61 SETTABLEKS                       R13 R12 K28 ["Size"]
       63 CALL                             R10 2 1
       64 MOVE                             R11 R2
       65 LOADK                            R12 K31 [">> .LoadingIcon"]
       66 DUPTABLE                         R13 K36 [{"Size", "Image", "BackgroundTransparency", "AnchorPoint", "Position"}]
       67 LOADK                            R14 K30 ["$IconSize"]
       68 SETTABLEKS                       R14 R13 K28 ["Size"]
       70 LOADK                            R14 K37 ["$LoadingSpinnerImage"]
       71 SETTABLEKS                       R14 R13 K32 ["Image"]
       73 LOADN                            R14 1
       74 SETTABLEKS                       R14 R13 K33 ["BackgroundTransparency"]
       76 GETIMPORT                        R14 K39 [Vector2.new]
       78 LOADK                            R15 K40 [0.5]
       79 LOADK                            R16 K40 [0.5]
       80 CALL                             R14 2 1
       81 SETTABLEKS                       R14 R13 K34 ["AnchorPoint"]
       83 GETIMPORT                        R14 K42 [UDim2.new]
       85 LOADK                            R15 K40 [0.5]
       86 LOADN                            R16 0
       87 LOADK                            R17 K40 [0.5]
       88 LOADN                            R18 0
       89 CALL                             R14 4 1
       90 SETTABLEKS                       R14 R13 K35 ["Position"]
       92 CALL                             R11 2 1
       93 MOVE                             R12 R2
       94 LOADK                            R13 K43 [">> .StatusTextFrame"]
       95 DUPTABLE                         R14 K29 [{"Size"}]
       96 GETIMPORT                        R15 K42 [UDim2.new]
       98 LOADN                            R16 1
       99 LOADN                            R17 0
      100 LOADN                            R18 0
      101 LOADN                            R19 20
      102 CALL                             R15 4 1
      103 SETTABLEKS                       R15 R14 K28 ["Size"]
      105 NEWTABLE                         R15 0 2
      107 MOVE                             R16 R2
      108 LOADK                            R17 K11 ["::UIListLayout"]
      109 DUPTABLE                         R18 K45 [{"Padding", "VerticalAlignment"}]
      110 GETIMPORT                        R19 K16 [UDim.new]
      112 LOADN                            R20 0
      113 LOADN                            R21 4
      114 CALL                             R19 2 1
      115 SETTABLEKS                       R19 R18 K12 ["Padding"]
      117 GETIMPORT                        R19 K47 [Enum.VerticalAlignment.Center]
      119 SETTABLEKS                       R19 R18 K44 ["VerticalAlignment"]
      121 CALL                             R16 2 1
      122 MOVE                             R17 R2
      123 LOADK                            R18 K48 [">> .StatusText"]
      124 DUPTABLE                         R19 K50 [{"TextColor3", "TextYAlignment"}]
      125 LOADK                            R20 K21 ["$TextPrimary"]
      126 SETTABLEKS                       R20 R19 K18 ["TextColor3"]
      128 GETIMPORT                        R20 K51 [Enum.TextYAlignment.Center]
      130 SETTABLEKS                       R20 R19 K49 ["TextYAlignment"]
      132 CALL                             R17 2 -1
      133 SETLIST                          R15 R16 -1 [1]
      135 CALL                             R12 3 -1
      136 SETLIST                          R6 R7 -1 [1]
      138 DUPTABLE                         R7 K54 [{"IconSize", "IconToContentPadding"}]
      139 GETIMPORT                        R8 K56 [UDim2.fromOffset]
      141 LOADN                            R9 16
      142 LOADN                            R10 16
      143 CALL                             R8 2 1
      144 SETTABLEKS                       R8 R7 K52 ["IconSize"]
      146 GETIMPORT                        R8 K16 [UDim.new]
      148 LOADN                            R9 0
      149 LOADN                            R10 8
      150 CALL                             R8 2 1
      151 SETTABLEKS                       R8 R7 K53 ["IconToContentPadding"]
      153 CALL                             R3 4 -1
      154 RETURN                           R3 -1
