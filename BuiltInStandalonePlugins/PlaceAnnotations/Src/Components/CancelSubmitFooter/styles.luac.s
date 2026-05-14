MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K7 ["Styling"]
       20 GETTABLEKS                       R2 R2 K8 ["createStyleRule"]
       22 MOVE                             R3 R2
       23 LOADK                            R4 K9 [".Component-CancelSubmitFooter"]
       24 DUPTABLE                         R5 K11 [{"BackgroundTransparency"}]
       25 LOADN                            R6 1
       26 SETTABLEKS                       R6 R5 K10 ["BackgroundTransparency"]
       28 NEWTABLE                         R6 0 4
       30 MOVE                             R7 R2
       31 LOADK                            R8 K12 ["::UIPadding"]
       32 DUPTABLE                         R9 K14 [{"PaddingTop"}]
       33 GETIMPORT                        R10 K17 [UDim.new]
       35 LOADN                            R11 0
       36 LOADN                            R12 7
       37 CALL                             R10 2 1
       38 SETTABLEKS                       R10 R9 K13 ["PaddingTop"]
       40 CALL                             R7 2 1
       41 MOVE                             R8 R2
       42 LOADK                            R9 K18 [">> TextButton"]
       43 DUPTABLE                         R10 K24 [{"Size", "AutomaticSize", "BorderSizePixel", "TextSize", "Font"}]
       44 GETIMPORT                        R11 K27 [UDim2.fromOffset]
       46 LOADN                            R12 62
       47 LOADN                            R13 28
       48 CALL                             R11 2 1
       49 SETTABLEKS                       R11 R10 K19 ["Size"]
       51 GETIMPORT                        R11 K30 [Enum.AutomaticSize.X]
       53 SETTABLEKS                       R11 R10 K20 ["AutomaticSize"]
       55 LOADN                            R11 0
       56 SETTABLEKS                       R11 R10 K21 ["BorderSizePixel"]
       58 LOADK                            R11 K31 ["$FontSizeM"]
       59 SETTABLEKS                       R11 R10 K22 ["TextSize"]
       61 LOADK                            R11 K32 ["$FontBold"]
       62 SETTABLEKS                       R11 R10 K23 ["Font"]
       64 NEWTABLE                         R11 0 1
       66 MOVE                             R12 R2
       67 LOADK                            R13 K33 ["::UICorner"]
       68 DUPTABLE                         R14 K35 [{"CornerRadius"}]
       69 GETIMPORT                        R15 K17 [UDim.new]
       71 LOADN                            R16 0
       72 LOADN                            R17 8
       73 CALL                             R15 2 1
       74 SETTABLEKS                       R15 R14 K34 ["CornerRadius"]
       76 CALL                             R12 2 -1
       77 SETLIST                          R11 R12 -1 [1]
       79 CALL                             R8 3 1
       80 MOVE                             R9 R2
       81 LOADK                            R10 K36 ["> #SubmitButton"]
       82 DUPTABLE                         R11 K39 [{"TextColor3", "BackgroundTransparency", "BackgroundColor3"}]
       83 LOADK                            R12 K40 ["$SemanticColorContentStaticLight"]
       84 SETTABLEKS                       R12 R11 K37 ["TextColor3"]
       86 LOADN                            R12 0
       87 SETTABLEKS                       R12 R11 K10 ["BackgroundTransparency"]
       89 LOADK                            R12 K41 ["$PrimaryMain"]
       90 SETTABLEKS                       R12 R11 K38 ["BackgroundColor3"]
       92 NEWTABLE                         R12 0 3
       94 MOVE                             R13 R2
       95 LOADK                            R14 K42 [".Disabled"]
       96 DUPTABLE                         R15 K43 [{"BackgroundColor3", "TextColor3"}]
       97 LOADK                            R16 K44 ["$SemanticColorContentDisabled"]
       98 SETTABLEKS                       R16 R15 K38 ["BackgroundColor3"]
      100 LOADK                            R16 K45 ["$TextDisabled"]
      101 SETTABLEKS                       R16 R15 K37 ["TextColor3"]
      103 CALL                             R13 2 1
      104 MOVE                             R14 R2
      105 LOADK                            R15 K46 [":hover"]
      106 DUPTABLE                         R16 K47 [{"BackgroundColor3"}]
      107 LOADK                            R17 K48 ["$PrimaryHoverBackground"]
      108 SETTABLEKS                       R17 R16 K38 ["BackgroundColor3"]
      110 CALL                             R14 2 1
      111 MOVE                             R15 R2
      112 LOADK                            R16 K49 [":press"]
      113 DUPTABLE                         R17 K47 [{"BackgroundColor3"}]
      114 GETIMPORT                        R18 K52 [Color3.fromHex]
      116 LOADK                            R19 K53 ["#005D92"]
      117 CALL                             R18 1 1
      118 SETTABLEKS                       R18 R17 K38 ["BackgroundColor3"]
      120 CALL                             R15 2 -1
      121 SETLIST                          R12 R13 -1 [1]
      123 CALL                             R9 3 1
      124 MOVE                             R10 R2
      125 LOADK                            R11 K54 ["> #CancelButton"]
      126 DUPTABLE                         R12 K55 [{"TextColor3", "BackgroundColor3", "BackgroundTransparency"}]
      127 LOADK                            R13 K56 ["$TextPrimary"]
      128 SETTABLEKS                       R13 R12 K37 ["TextColor3"]
      130 LOADK                            R13 K57 ["$SemanticColorActionSecondaryFill"]
      131 SETTABLEKS                       R13 R12 K38 ["BackgroundColor3"]
      133 LOADK                            R13 K58 ["$SemanticColorActionSecondaryFillTransparency"]
      134 SETTABLEKS                       R13 R12 K10 ["BackgroundTransparency"]
      136 NEWTABLE                         R13 0 2
      138 MOVE                             R14 R2
      139 LOADK                            R15 K46 [":hover"]
      140 DUPTABLE                         R16 K11 [{"BackgroundTransparency"}]
      141 LOADK                            R17 K59 ["$SemanticColorActionSecondaryFillHoverTransparency"]
      142 SETTABLEKS                       R17 R16 K10 ["BackgroundTransparency"]
      144 CALL                             R14 2 1
      145 MOVE                             R15 R2
      146 LOADK                            R16 K49 [":press"]
      147 DUPTABLE                         R17 K11 [{"BackgroundTransparency"}]
      148 LOADK                            R18 K60 ["$SemanticColorActionSecondaryFillPressTransparency"]
      149 SETTABLEKS                       R18 R17 K10 ["BackgroundTransparency"]
      151 CALL                             R15 2 -1
      152 SETLIST                          R13 R14 -1 [1]
      154 CALL                             R10 3 -1
      155 SETLIST                          R6 R7 -1 [1]
      157 CALL                             R3 3 -1
      158 RETURN                           R3 -1
