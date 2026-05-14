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
       31 LOADK                            R6 K12 ["HeaderSize"]
       32 NAMECALL                         R4 R2 K13 ["GetAttribute"]
       34 CALL                             R4 2 1
       35 GETTABLEKS                       R4 R4 K14 ["Height"]
       37 GETTABLEKS                       R4 R4 K15 ["Offset"]
       39 LOADK                            R7 K16 ["Margin"]
       40 NAMECALL                         R5 R2 K13 ["GetAttribute"]
       42 CALL                             R5 2 1
       43 GETTABLEKS                       R5 R5 K15 ["Offset"]
       45 LOADK                            R8 K17 ["ScrollBarWidth"]
       46 NAMECALL                         R6 R2 K13 ["GetAttribute"]
       48 CALL                             R6 2 1
       49 LOADK                            R9 K18 ["ScrollBarGutter"]
       50 NAMECALL                         R7 R2 K13 ["GetAttribute"]
       52 CALL                             R7 2 1
       53 SUB                              R11 R7 R6
       54 SUBK                             R10 R11 K20 [1]
       55 DIVK                             R9 R10 K19 [2]
       56 FASTCALL1                        MATH_FLOOR R9 ; [+2]
       57 GETIMPORT                        R8 K23 [math.floor]
       59 CALL                             R8 1 1
       60 LOADN                            R9 0
       61 JUMPIFNOTLT                      R8 R9 ; [+2]
       63 LOADN                            R8 0
       64 MOVE                             R9 R3
       65 LOADK                            R10 K24 [".Component-NotificationTray"]
       66 DUPTABLE                         R11 K28 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
       67 GETIMPORT                        R12 K31 [UDim2.new]
       69 LOADN                            R13 1
       70 LOADN                            R14 0
       71 LOADN                            R15 1
       72 LOADN                            R16 0
       73 CALL                             R12 4 1
       74 SETTABLEKS                       R12 R11 K25 ["Size"]
       76 LOADK                            R12 K32 ["$BackgroundPaper"]
       77 SETTABLEKS                       R12 R11 K26 ["BackgroundColor3"]
       79 LOADN                            R12 0
       80 SETTABLEKS                       R12 R11 K27 ["BorderSizePixel"]
       82 NEWTABLE                         R12 0 2
       84 MOVE                             R13 R3
       85 LOADK                            R14 K33 [">> .Component-NotificationTrayScrollingFrame"]
       86 DUPTABLE                         R15 K41 [{"Size", "Position", "CanvasSize", "AutomaticCanvasSize", "BackgroundTransparency", "BorderSizePixel", "ScrollBarThickness", "ScrollBarImageColor3", "ScrollingDirection"}]
       87 GETIMPORT                        R16 K31 [UDim2.new]
       89 LOADN                            R17 1
       90 MINUS                            R18 R8
       91 LOADN                            R19 1
       92 MINUS                            R20 R4
       93 CALL                             R16 4 1
       94 SETTABLEKS                       R16 R15 K25 ["Size"]
       96 GETIMPORT                        R16 K31 [UDim2.new]
       98 LOADN                            R17 0
       99 LOADN                            R18 0
      100 LOADN                            R19 0
      101 MOVE                             R20 R4
      102 CALL                             R16 4 1
      103 SETTABLEKS                       R16 R15 K34 ["Position"]
      105 GETIMPORT                        R16 K31 [UDim2.new]
      107 LOADN                            R17 1
      108 LOADN                            R18 0
      109 LOADN                            R19 1
      110 MOVE                             R20 R4
      111 CALL                             R16 4 1
      112 SETTABLEKS                       R16 R15 K35 ["CanvasSize"]
      114 GETIMPORT                        R16 K45 [Enum.AutomaticSize.Y]
      116 SETTABLEKS                       R16 R15 K36 ["AutomaticCanvasSize"]
      118 LOADN                            R16 1
      119 SETTABLEKS                       R16 R15 K37 ["BackgroundTransparency"]
      121 LOADN                            R16 0
      122 SETTABLEKS                       R16 R15 K27 ["BorderSizePixel"]
      124 SETTABLEKS                       R6 R15 K38 ["ScrollBarThickness"]
      126 LOADK                            R16 K46 ["$NotificationScrollBarColor"]
      127 SETTABLEKS                       R16 R15 K39 ["ScrollBarImageColor3"]
      129 GETIMPORT                        R16 K47 [Enum.ScrollingDirection.Y]
      131 SETTABLEKS                       R16 R15 K40 ["ScrollingDirection"]
      133 NEWTABLE                         R16 0 2
      135 MOVE                             R17 R3
      136 LOADK                            R18 K48 ["::UIListLayout"]
      137 DUPTABLE                         R19 K54 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment", "Padding"}]
      138 GETIMPORT                        R20 K56 [Enum.FillDirection.Vertical]
      140 SETTABLEKS                       R20 R19 K49 ["FillDirection"]
      142 GETIMPORT                        R20 K58 [Enum.HorizontalAlignment.Left]
      144 SETTABLEKS                       R20 R19 K50 ["HorizontalAlignment"]
      146 GETIMPORT                        R20 K60 [Enum.SortOrder.LayoutOrder]
      148 SETTABLEKS                       R20 R19 K51 ["SortOrder"]
      150 GETIMPORT                        R20 K62 [Enum.VerticalAlignment.Top]
      152 SETTABLEKS                       R20 R19 K52 ["VerticalAlignment"]
      154 LOADK                            R20 K63 ["$Margin"]
      155 SETTABLEKS                       R20 R19 K53 ["Padding"]
      157 CALL                             R17 2 1
      158 MOVE                             R18 R3
      159 LOADK                            R19 K64 ["::UIPadding"]
      160 DUPTABLE                         R20 K69 [{"PaddingTop", "PaddingLeft", "PaddingBottom", "PaddingRight"}]
      161 GETIMPORT                        R21 K71 [UDim.new]
      163 LOADN                            R22 0
      164 LOADN                            R23 4
      165 CALL                             R21 2 1
      166 SETTABLEKS                       R21 R20 K65 ["PaddingTop"]
      168 GETIMPORT                        R21 K71 [UDim.new]
      170 LOADN                            R22 0
      171 SUBK                             R23 R5 K19 [2]
      172 CALL                             R21 2 1
      173 SETTABLEKS                       R21 R20 K66 ["PaddingLeft"]
      175 GETIMPORT                        R21 K71 [UDim.new]
      177 LOADN                            R22 0
      178 SUBK                             R23 R5 K19 [2]
      179 CALL                             R21 2 1
      180 SETTABLEKS                       R21 R20 K67 ["PaddingBottom"]
      182 GETIMPORT                        R21 K71 [UDim.new]
      184 LOADN                            R22 0
      185 SUBK                             R23 R7 K19 [2]
      186 CALL                             R21 2 1
      187 SETTABLEKS                       R21 R20 K68 ["PaddingRight"]
      189 CALL                             R18 2 -1
      190 SETLIST                          R16 R17 -1 [1]
      192 CALL                             R13 3 1
      193 MOVE                             R14 R3
      194 LOADK                            R15 K72 [">> .Component-NotificationTrayLoading"]
      195 DUPTABLE                         R16 K73 [{"Size", "AutomaticSize", "BackgroundTransparency"}]
      196 GETIMPORT                        R17 K31 [UDim2.new]
      198 LOADN                            R18 1
      199 LOADN                            R19 0
      200 LOADN                            R20 0
      201 LOADN                            R21 0
      202 CALL                             R17 4 1
      203 SETTABLEKS                       R17 R16 K25 ["Size"]
      205 GETIMPORT                        R17 K45 [Enum.AutomaticSize.Y]
      207 SETTABLEKS                       R17 R16 K43 ["AutomaticSize"]
      209 LOADN                            R17 1
      210 SETTABLEKS                       R17 R16 K37 ["BackgroundTransparency"]
      212 NEWTABLE                         R17 0 1
      214 MOVE                             R18 R3
      215 LOADK                            R19 K64 ["::UIPadding"]
      216 DUPTABLE                         R20 K74 [{"PaddingTop", "PaddingBottom"}]
      217 GETIMPORT                        R21 K71 [UDim.new]
      219 LOADN                            R22 0
      220 LOADN                            R23 12
      221 CALL                             R21 2 1
      222 SETTABLEKS                       R21 R20 K65 ["PaddingTop"]
      224 GETIMPORT                        R21 K71 [UDim.new]
      226 LOADN                            R22 0
      227 LOADN                            R23 12
      228 CALL                             R21 2 1
      229 SETTABLEKS                       R21 R20 K67 ["PaddingBottom"]
      231 CALL                             R18 2 -1
      232 SETLIST                          R17 R18 -1 [1]
      234 CALL                             R14 3 -1
      235 SETLIST                          R12 R13 -1 [1]
      237 CALL                             R9 3 -1
      238 RETURN                           R9 -1
