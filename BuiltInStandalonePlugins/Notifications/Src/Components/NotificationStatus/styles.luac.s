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
       47 DUPTABLE                         R9 K21 [{["Size"], ["BackgroundTransparency"] = 1, ["AutomaticSize"]}]
       48 GETIMPORT                        R10 K24 [UDim2.fromScale]
       50 LOADN                            R11 1
       51 LOADN                            R12 1
       52 CALL                             R10 2 1
       53 SETTABLEKS                       R10 R9 K17 ["Size"]
       55 GETIMPORT                        R10 K27 [Enum.AutomaticSize.Y]
       57 SETTABLEKS                       R10 R9 K20 ["AutomaticSize"]
       59 NEWTABLE                         R10 0 4
       61 MOVE                             R11 R3
       62 LOADK                            R12 K28 ["::UIPadding"]
       63 DUPTABLE                         R13 K30 [{"PaddingTop"}]
       64 GETIMPORT                        R14 K33 [UDim.new]
       66 LOADN                            R15 0
       67 MOVE                             R16 R6
       68 CALL                             R14 2 1
       69 SETTABLEKS                       R14 R13 K29 ["PaddingTop"]
       71 CALL                             R11 2 1
       72 MOVE                             R12 R3
       73 LOADK                            R13 K34 ["::UIListLayout"]
       74 DUPTABLE                         R14 K41 [{["FillDirection"], ["SortOrder"], ["HorizontalAlignment"], ["VerticalAlignment"], ["Padding"] = "$MarginSmall"}]
       75 GETIMPORT                        R15 K43 [Enum.FillDirection.Horizontal]
       77 SETTABLEKS                       R15 R14 K35 ["FillDirection"]
       79 GETIMPORT                        R15 K45 [Enum.SortOrder.LayoutOrder]
       81 SETTABLEKS                       R15 R14 K36 ["SortOrder"]
       83 GETIMPORT                        R15 K47 [Enum.HorizontalAlignment.Right]
       85 SETTABLEKS                       R15 R14 K37 ["HorizontalAlignment"]
       87 GETIMPORT                        R15 K49 [Enum.VerticalAlignment.Top]
       89 SETTABLEKS                       R15 R14 K38 ["VerticalAlignment"]
       91 CALL                             R12 2 1
       92 MOVE                             R13 R3
       93 LOADK                            R14 K50 ["> #Indicator"]
       94 DUPTABLE                         R15 K54 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Size"] = "$CardStatusIndicatorSize"}]
       95 CALL                             R13 2 1
       96 MOVE                             R14 R3
       97 LOADK                            R15 K55 ["> #ElapsedTime"]
       98 DUPTABLE                         R16 K60 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["TextColor3"] = "$TextSecondary", ["TextSize"], ["Font"]}]
       99 GETIMPORT                        R17 K62 [Enum.AutomaticSize.XY]
      101 SETTABLEKS                       R17 R16 K20 ["AutomaticSize"]
      103 SETTABLEKS                       R4 R16 K58 ["TextSize"]
      105 GETIMPORT                        R17 K64 [Enum.Font.SourceSans]
      107 SETTABLEKS                       R17 R16 K59 ["Font"]
      109 CALL                             R14 2 -1
      110 SETLIST                          R10 R11 -1 [1]
      112 CALL                             R7 3 -1
      113 RETURN                           R7 -1
