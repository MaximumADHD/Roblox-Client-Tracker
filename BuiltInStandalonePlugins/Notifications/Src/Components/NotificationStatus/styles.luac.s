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
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K7 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Resources"]
       24 GETTABLEKS                       R3 R3 K9 ["PluginStyles"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R3 R1 K10 ["Styling"]
       29 GETTABLEKS                       R3 R3 K11 ["createStyleRule"]
       31 LOADK                            R6 K12 ["CardElapsedTimeTextSize"]
       32 NAMECALL                         R4 R2 K13 ["GetAttribute"]
       34 CALL                             R4 2 1
       35 LOADK                            R7 K14 ["CardSubjectTextSize"]
       36 NAMECALL                         R5 R2 K13 ["GetAttribute"]
       38 CALL                             R5 2 1
       39 SUB                              R7 R5 R4
       40 DIVK                             R6 R7 K15 [2]
       41 LOADN                            R7 0
       42 JUMPIFNOTLT                      R6 R7 ; [+2]
       44 LOADN                            R6 0
       45 MOVE                             R7 R3
       46 LOADK                            R8 K16 [".Component-InnerNotificationStatus"]
       47 DUPTABLE                         R9 K20 [{"Size", "BackgroundTransparency", "AutomaticSize"}]
       48 GETIMPORT                        R10 K23 [UDim2.fromScale]
       50 LOADN                            R11 1
       51 LOADN                            R12 1
       52 CALL                             R10 2 1
       53 SETTABLEKS                       R10 R9 K17 ["Size"]
       55 LOADN                            R10 1
       56 SETTABLEKS                       R10 R9 K18 ["BackgroundTransparency"]
       58 GETIMPORT                        R10 K26 [Enum.AutomaticSize.Y]
       60 SETTABLEKS                       R10 R9 K19 ["AutomaticSize"]
       62 NEWTABLE                         R10 0 4
       64 MOVE                             R11 R3
       65 LOADK                            R12 K27 ["::UIPadding"]
       66 DUPTABLE                         R13 K29 [{"PaddingTop"}]
       67 GETIMPORT                        R14 K32 [UDim.new]
       69 LOADN                            R15 0
       70 MOVE                             R16 R6
       71 CALL                             R14 2 1
       72 SETTABLEKS                       R14 R13 K28 ["PaddingTop"]
       74 CALL                             R11 2 1
       75 MOVE                             R12 R3
       76 LOADK                            R13 K33 ["::UIListLayout"]
       77 DUPTABLE                         R14 K39 [{"FillDirection", "SortOrder", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
       78 GETIMPORT                        R15 K41 [Enum.FillDirection.Horizontal]
       80 SETTABLEKS                       R15 R14 K34 ["FillDirection"]
       82 GETIMPORT                        R15 K43 [Enum.SortOrder.LayoutOrder]
       84 SETTABLEKS                       R15 R14 K35 ["SortOrder"]
       86 GETIMPORT                        R15 K45 [Enum.HorizontalAlignment.Right]
       88 SETTABLEKS                       R15 R14 K36 ["HorizontalAlignment"]
       90 GETIMPORT                        R15 K47 [Enum.VerticalAlignment.Top]
       92 SETTABLEKS                       R15 R14 K37 ["VerticalAlignment"]
       94 LOADK                            R15 K48 ["$MarginSmall"]
       95 SETTABLEKS                       R15 R14 K38 ["Padding"]
       97 CALL                             R12 2 1
       98 MOVE                             R13 R3
       99 LOADK                            R14 K49 ["> #Indicator"]
      100 DUPTABLE                         R15 K51 [{"BackgroundTransparency", "BorderSizePixel", "Size"}]
      101 LOADN                            R16 1
      102 SETTABLEKS                       R16 R15 K18 ["BackgroundTransparency"]
      104 LOADN                            R16 0
      105 SETTABLEKS                       R16 R15 K50 ["BorderSizePixel"]
      107 LOADK                            R16 K52 ["$CardStatusIndicatorSize"]
      108 SETTABLEKS                       R16 R15 K17 ["Size"]
      110 CALL                             R13 2 1
      111 MOVE                             R14 R3
      112 LOADK                            R15 K53 ["> #ElapsedTime"]
      113 DUPTABLE                         R16 K57 [{"AutomaticSize", "BackgroundTransparency", "TextColor3", "TextSize", "Font"}]
      114 GETIMPORT                        R17 K59 [Enum.AutomaticSize.XY]
      116 SETTABLEKS                       R17 R16 K19 ["AutomaticSize"]
      118 LOADN                            R17 1
      119 SETTABLEKS                       R17 R16 K18 ["BackgroundTransparency"]
      121 LOADK                            R17 K60 ["$TextSecondary"]
      122 SETTABLEKS                       R17 R16 K54 ["TextColor3"]
      124 SETTABLEKS                       R4 R16 K55 ["TextSize"]
      126 GETIMPORT                        R17 K62 [Enum.Font.SourceSans]
      128 SETTABLEKS                       R17 R16 K56 ["Font"]
      130 CALL                             R14 2 -1
      131 SETLIST                          R10 R11 -1 [1]
      133 CALL                             R7 3 -1
      134 RETURN                           R7 -1
