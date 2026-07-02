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
       23 LOADK                            R4 K9 [".Component-ErrorAlert"]
       24 DUPTABLE                         R5 K14 [{["BackgroundTransparency"] = 1, ["Size"], ["AutomaticSize"]}]
       25 GETIMPORT                        R6 K17 [UDim2.fromScale]
       27 LOADN                            R7 1
       28 LOADN                            R8 0
       29 CALL                             R6 2 1
       30 SETTABLEKS                       R6 R5 K12 ["Size"]
       32 GETIMPORT                        R6 K20 [Enum.AutomaticSize.Y]
       34 SETTABLEKS                       R6 R5 K13 ["AutomaticSize"]
       36 NEWTABLE                         R6 0 5
       38 MOVE                             R7 R2
       39 LOADK                            R8 K21 ["::UIListLayout"]
       40 DUPTABLE                         R9 K29 [{["FillDirection"], ["HorizontalAlignment"], ["VerticalAlignment"], ["Padding"], ["Wraps"] = True, ["SortOrder"]}]
       41 GETIMPORT                        R10 K31 [Enum.FillDirection.Horizontal]
       43 SETTABLEKS                       R10 R9 K22 ["FillDirection"]
       45 GETIMPORT                        R10 K33 [Enum.HorizontalAlignment.Left]
       47 SETTABLEKS                       R10 R9 K23 ["HorizontalAlignment"]
       49 GETIMPORT                        R10 K35 [Enum.VerticalAlignment.Center]
       51 SETTABLEKS                       R10 R9 K24 ["VerticalAlignment"]
       53 GETIMPORT                        R10 K38 [UDim.new]
       55 LOADN                            R11 0
       56 LOADN                            R12 8
       57 CALL                             R10 2 1
       58 SETTABLEKS                       R10 R9 K25 ["Padding"]
       60 GETIMPORT                        R10 K40 [Enum.SortOrder.LayoutOrder]
       62 SETTABLEKS                       R10 R9 K28 ["SortOrder"]
       64 CALL                             R7 2 1
       65 MOVE                             R8 R2
       66 LOADK                            R9 K41 [">> #Icon"]
       67 DUPTABLE                         R10 K42 [{["BackgroundTransparency"] = 1}]
       68 CALL                             R8 2 1
       69 MOVE                             R9 R2
       70 LOADK                            R10 K43 [">> ImageButton"]
       71 DUPTABLE                         R11 K42 [{["BackgroundTransparency"] = 1}]
       72 CALL                             R9 2 1
       73 MOVE                             R10 R2
       74 LOADK                            R11 K44 [">> #Text"]
       75 DUPTABLE                         R12 K52 [{["BackgroundTransparency"] = 1, ["AutomaticSize"], ["TextSize"] = "$FontSizeS", ["TextWrapped"] = True, ["TextXAlignment"], ["RichText"] = True, ["TextColor3"] = "$TextError"}]
       76 GETIMPORT                        R13 K54 [Enum.AutomaticSize.XY]
       78 SETTABLEKS                       R13 R12 K13 ["AutomaticSize"]
       80 GETIMPORT                        R13 K55 [Enum.TextXAlignment.Left]
       82 SETTABLEKS                       R13 R12 K48 ["TextXAlignment"]
       84 NEWTABLE                         R13 0 1
       86 MOVE                             R14 R2
       87 LOADK                            R15 K56 ["::UIFlexItem"]
       88 DUPTABLE                         R16 K58 [{"FlexMode"}]
       89 GETIMPORT                        R17 K61 [Enum.UIFlexMode.Shrink]
       91 SETTABLEKS                       R17 R16 K57 ["FlexMode"]
       93 CALL                             R14 2 -1
       94 SETLIST                          R13 R14 -1 [1]
       96 CALL                             R10 3 1
       97 MOVE                             R11 R2
       98 LOADK                            R12 K62 [".Popup"]
       99 DUPTABLE                         R13 K68 [{["AutomaticSize"], ["ZIndex"] = 100, ["Size"], ["BackgroundTransparency"] = 0, ["BackgroundColor3"] = "$FilledInputBackground"}]
      100 GETIMPORT                        R14 K54 [Enum.AutomaticSize.XY]
      102 SETTABLEKS                       R14 R13 K13 ["AutomaticSize"]
      104 GETIMPORT                        R14 K70 [UDim2.fromOffset]
      106 LOADN                            R15 1
      107 LOADN                            R16 0
      108 CALL                             R14 2 1
      109 SETTABLEKS                       R14 R13 K12 ["Size"]
      111 NEWTABLE                         R14 0 3
      113 MOVE                             R15 R2
      114 LOADK                            R16 K71 ["::UIPadding"]
      115 DUPTABLE                         R17 K76 [{"PaddingLeft", "PaddingTop", "PaddingBottom", "PaddingRight"}]
      116 GETIMPORT                        R18 K38 [UDim.new]
      118 LOADN                            R19 0
      119 LOADN                            R20 12
      120 CALL                             R18 2 1
      121 SETTABLEKS                       R18 R17 K72 ["PaddingLeft"]
      123 GETIMPORT                        R18 K38 [UDim.new]
      125 LOADN                            R19 0
      126 LOADN                            R20 8
      127 CALL                             R18 2 1
      128 SETTABLEKS                       R18 R17 K73 ["PaddingTop"]
      130 GETIMPORT                        R18 K38 [UDim.new]
      132 LOADN                            R19 0
      133 LOADN                            R20 8
      134 CALL                             R18 2 1
      135 SETTABLEKS                       R18 R17 K74 ["PaddingBottom"]
      137 GETIMPORT                        R18 K38 [UDim.new]
      139 LOADN                            R19 0
      140 LOADN                            R20 8
      141 CALL                             R18 2 1
      142 SETTABLEKS                       R18 R17 K75 ["PaddingRight"]
      144 CALL                             R15 2 1
      145 MOVE                             R16 R2
      146 LOADK                            R17 K77 ["::UICorner"]
      147 DUPTABLE                         R18 K79 [{"CornerRadius"}]
      148 GETIMPORT                        R19 K38 [UDim.new]
      150 LOADN                            R20 0
      151 LOADN                            R21 4
      152 CALL                             R19 2 1
      153 SETTABLEKS                       R19 R18 K78 ["CornerRadius"]
      155 CALL                             R16 2 1
      156 MOVE                             R17 R2
      157 LOADK                            R18 K80 ["> TextLabel"]
      158 DUPTABLE                         R19 K81 [{"AutomaticSize"}]
      159 GETIMPORT                        R20 K54 [Enum.AutomaticSize.XY]
      161 SETTABLEKS                       R20 R19 K13 ["AutomaticSize"]
      163 CALL                             R17 2 -1
      164 SETLIST                          R14 R15 -1 [1]
      166 CALL                             R11 3 -1
      167 SETLIST                          R6 R7 -1 [1]
      169 CALL                             R3 3 -1
      170 RETURN                           R3 -1
