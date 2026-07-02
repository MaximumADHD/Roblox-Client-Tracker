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
       66 DUPTABLE                         R11 K30 [{["Size"], ["BackgroundColor3"] = "$BackgroundPaper", ["BorderSizePixel"] = 0}]
       67 GETIMPORT                        R12 K33 [UDim2.new]
       69 LOADN                            R13 1
       70 LOADN                            R14 0
       71 LOADN                            R15 1
       72 LOADN                            R16 0
       73 CALL                             R12 4 1
       74 SETTABLEKS                       R12 R11 K25 ["Size"]
       76 NEWTABLE                         R12 0 2
       78 MOVE                             R13 R3
       79 LOADK                            R14 K34 [">> .Component-NotificationTrayScrollingFrame"]
       80 DUPTABLE                         R15 K43 [{["Size"], ["Position"], ["CanvasSize"], ["AutomaticCanvasSize"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ScrollBarThickness"], ["ScrollBarImageColor3"] = "$NotificationScrollBarColor", ["ScrollingDirection"]}]
       81 GETIMPORT                        R16 K33 [UDim2.new]
       83 LOADN                            R17 1
       84 MINUS                            R18 R8
       85 LOADN                            R19 1
       86 MINUS                            R20 R4
       87 CALL                             R16 4 1
       88 SETTABLEKS                       R16 R15 K25 ["Size"]
       90 GETIMPORT                        R16 K33 [UDim2.new]
       92 LOADN                            R17 0
       93 LOADN                            R18 0
       94 LOADN                            R19 0
       95 MOVE                             R20 R4
       96 CALL                             R16 4 1
       97 SETTABLEKS                       R16 R15 K35 ["Position"]
       99 GETIMPORT                        R16 K33 [UDim2.new]
      101 LOADN                            R17 1
      102 LOADN                            R18 0
      103 LOADN                            R19 1
      104 MOVE                             R20 R4
      105 CALL                             R16 4 1
      106 SETTABLEKS                       R16 R15 K36 ["CanvasSize"]
      108 GETIMPORT                        R16 K47 [Enum.AutomaticSize.Y]
      110 SETTABLEKS                       R16 R15 K37 ["AutomaticCanvasSize"]
      112 SETTABLEKS                       R6 R15 K39 ["ScrollBarThickness"]
      114 GETIMPORT                        R16 K48 [Enum.ScrollingDirection.Y]
      116 SETTABLEKS                       R16 R15 K42 ["ScrollingDirection"]
      118 NEWTABLE                         R16 0 2
      120 MOVE                             R17 R3
      121 LOADK                            R18 K49 ["::UIListLayout"]
      122 DUPTABLE                         R19 K56 [{["FillDirection"], ["HorizontalAlignment"], ["SortOrder"], ["VerticalAlignment"], ["Padding"] = "$Margin"}]
      123 GETIMPORT                        R20 K58 [Enum.FillDirection.Vertical]
      125 SETTABLEKS                       R20 R19 K50 ["FillDirection"]
      127 GETIMPORT                        R20 K60 [Enum.HorizontalAlignment.Left]
      129 SETTABLEKS                       R20 R19 K51 ["HorizontalAlignment"]
      131 GETIMPORT                        R20 K62 [Enum.SortOrder.LayoutOrder]
      133 SETTABLEKS                       R20 R19 K52 ["SortOrder"]
      135 GETIMPORT                        R20 K64 [Enum.VerticalAlignment.Top]
      137 SETTABLEKS                       R20 R19 K53 ["VerticalAlignment"]
      139 CALL                             R17 2 1
      140 MOVE                             R18 R3
      141 LOADK                            R19 K65 ["::UIPadding"]
      142 DUPTABLE                         R20 K70 [{"PaddingTop", "PaddingLeft", "PaddingBottom", "PaddingRight"}]
      143 GETIMPORT                        R21 K72 [UDim.new]
      145 LOADN                            R22 0
      146 LOADN                            R23 4
      147 CALL                             R21 2 1
      148 SETTABLEKS                       R21 R20 K66 ["PaddingTop"]
      150 GETIMPORT                        R21 K72 [UDim.new]
      152 LOADN                            R22 0
      153 SUBK                             R23 R5 K19 [2]
      154 CALL                             R21 2 1
      155 SETTABLEKS                       R21 R20 K67 ["PaddingLeft"]
      157 GETIMPORT                        R21 K72 [UDim.new]
      159 LOADN                            R22 0
      160 SUBK                             R23 R5 K19 [2]
      161 CALL                             R21 2 1
      162 SETTABLEKS                       R21 R20 K68 ["PaddingBottom"]
      164 GETIMPORT                        R21 K72 [UDim.new]
      166 LOADN                            R22 0
      167 SUBK                             R23 R7 K19 [2]
      168 CALL                             R21 2 1
      169 SETTABLEKS                       R21 R20 K69 ["PaddingRight"]
      171 CALL                             R18 2 -1
      172 SETLIST                          R16 R17 -1 [1]
      174 CALL                             R13 3 1
      175 MOVE                             R14 R3
      176 LOADK                            R15 K73 [">> .Component-NotificationTrayLoading"]
      177 DUPTABLE                         R16 K74 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1}]
      178 GETIMPORT                        R17 K33 [UDim2.new]
      180 LOADN                            R18 1
      181 LOADN                            R19 0
      182 LOADN                            R20 0
      183 LOADN                            R21 0
      184 CALL                             R17 4 1
      185 SETTABLEKS                       R17 R16 K25 ["Size"]
      187 GETIMPORT                        R17 K47 [Enum.AutomaticSize.Y]
      189 SETTABLEKS                       R17 R16 K45 ["AutomaticSize"]
      191 NEWTABLE                         R17 0 1
      193 MOVE                             R18 R3
      194 LOADK                            R19 K65 ["::UIPadding"]
      195 DUPTABLE                         R20 K75 [{"PaddingTop", "PaddingBottom"}]
      196 GETIMPORT                        R21 K72 [UDim.new]
      198 LOADN                            R22 0
      199 LOADN                            R23 12
      200 CALL                             R21 2 1
      201 SETTABLEKS                       R21 R20 K66 ["PaddingTop"]
      203 GETIMPORT                        R21 K72 [UDim.new]
      205 LOADN                            R22 0
      206 LOADN                            R23 12
      207 CALL                             R21 2 1
      208 SETTABLEKS                       R21 R20 K68 ["PaddingBottom"]
      210 CALL                             R18 2 -1
      211 SETLIST                          R17 R18 -1 [1]
      213 CALL                             R14 3 -1
      214 SETLIST                          R12 R13 -1 [1]
      216 CALL                             R9 3 -1
      217 RETURN                           R9 -1
