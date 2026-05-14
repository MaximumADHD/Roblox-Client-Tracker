MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Styling"]
       13 GETTABLEKS                       R2 R2 K8 ["createStyleRule"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K9 ["SharedFlags"]
       20 GETTABLEKS                       R3 R3 K10 ["getFFlagLuaStartPageTableContextMenu"]
       22 CALL                             R2 1 1
       23 CALL                             R2 0 1
       24 MOVE                             R3 R1
       25 LOADK                            R4 K11 [".Component-TreeTable"]
       26 NEWTABLE                         R5 0 0
       28 NEWTABLE                         R6 0 3
       30 MOVE                             R7 R1
       31 LOADK                            R8 K12 [">> .Component-TreeTableCell"]
       32 NEWTABLE                         R9 0 0
       34 NEWTABLE                         R10 0 2
       36 MOVE                             R11 R1
       37 LOADK                            R12 K13 ["> .Left ::UIPadding"]
       38 DUPTABLE                         R13 K18 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       39 GETIMPORT                        R14 K21 [UDim.new]
       41 LOADN                            R15 0
       42 LOADN                            R16 1
       43 CALL                             R14 2 1
       44 SETTABLEKS                       R14 R13 K14 ["PaddingTop"]
       46 GETIMPORT                        R14 K21 [UDim.new]
       48 LOADN                            R15 0
       49 LOADN                            R16 1
       50 CALL                             R14 2 1
       51 SETTABLEKS                       R14 R13 K15 ["PaddingBottom"]
       53 GETIMPORT                        R14 K21 [UDim.new]
       55 LOADN                            R15 0
       56 LOADN                            R16 5
       57 CALL                             R14 2 1
       58 SETTABLEKS                       R14 R13 K16 ["PaddingLeft"]
       60 GETIMPORT                        R14 K21 [UDim.new]
       62 LOADN                            R15 0
       63 LOADN                            R16 5
       64 CALL                             R14 2 1
       65 SETTABLEKS                       R14 R13 K17 ["PaddingRight"]
       67 CALL                             R11 2 1
       68 MOVE                             R12 R1
       69 LOADK                            R13 K22 [">> .Arrow"]
       70 DUPTABLE                         R14 K26 [{"BackgroundTransparency", "Image", "Size"}]
       71 LOADN                            R15 1
       72 SETTABLEKS                       R15 R14 K23 ["BackgroundTransparency"]
       74 LOADK                            R15 K27 ["$ArrowRightImage"]
       75 SETTABLEKS                       R15 R14 K24 ["Image"]
       77 GETIMPORT                        R15 K30 [UDim2.fromOffset]
       79 LOADN                            R16 16
       80 LOADN                            R17 16
       81 CALL                             R15 2 1
       82 SETTABLEKS                       R15 R14 K25 ["Size"]
       84 NEWTABLE                         R15 0 1
       86 MOVE                             R16 R1
       87 LOADK                            R17 K31 [".Invisible"]
       88 DUPTABLE                         R18 K33 [{"ImageTransparency"}]
       89 LOADN                            R19 1
       90 SETTABLEKS                       R19 R18 K32 ["ImageTransparency"]
       92 CALL                             R16 2 -1
       93 SETLIST                          R15 R16 -1 [1]
       95 CALL                             R12 3 -1
       96 SETLIST                          R10 R11 -1 [1]
       98 CALL                             R7 3 1
       99 MOVE                             R8 R1
      100 LOADK                            R9 K34 [".modern"]
      101 NEWTABLE                         R10 0 0
      103 NEWTABLE                         R11 0 4
      105 MOVE                             R12 R1
      106 LOADK                            R13 K35 [">> .Component-TableHeaderBorder"]
      107 DUPTABLE                         R14 K37 [{"BackgroundColor3", "BackgroundTransparency"}]
      108 LOADK                            R15 K38 ["$TableHeaderBorder"]
      109 SETTABLEKS                       R15 R14 K36 ["BackgroundColor3"]
      111 LOADK                            R15 K39 ["$TableHeaderBorderTransparency"]
      112 SETTABLEKS                       R15 R14 K23 ["BackgroundTransparency"]
      114 CALL                             R12 2 1
      115 MOVE                             R13 R1
      116 LOADK                            R14 K12 [">> .Component-TreeTableCell"]
      117 DUPTABLE                         R15 K40 [{"BackgroundTransparency"}]
      118 LOADN                            R16 1
      119 SETTABLEKS                       R16 R15 K23 ["BackgroundTransparency"]
      121 NEWTABLE                         R16 0 1
      123 MOVE                             R17 R1
      124 LOADK                            R18 K41 [">> .Component-TreeTableCellText"]
      125 DUPTABLE                         R19 K43 [{"TextTruncate"}]
      126 GETIMPORT                        R20 K46 [Enum.TextTruncate.AtEnd]
      128 SETTABLEKS                       R20 R19 K42 ["TextTruncate"]
      130 CALL                             R17 2 -1
      131 SETLIST                          R16 R17 -1 [1]
      133 CALL                             R13 3 1
      134 MOVE                             R14 R1
      135 LOADK                            R15 K47 [">> .Component-TreeTableCell.Secondary"]
      136 DUPTABLE                         R16 K37 [{"BackgroundColor3", "BackgroundTransparency"}]
      137 LOADK                            R17 K48 ["$TableRowEmphasisBackground"]
      138 SETTABLEKS                       R17 R16 K36 ["BackgroundColor3"]
      140 LOADK                            R17 K49 ["$TableRowEmphasisBackgroundTransparency"]
      141 SETTABLEKS                       R17 R16 K23 ["BackgroundTransparency"]
      143 CALL                             R14 2 1
      144 JUMPIFNOT                        R2 ; [+11]
      145 MOVE                             R15 R1
      146 LOADK                            R16 K50 [".enable-hover >> .Component-TableRow:hover >> .Component-TreeTableCell"]
      147 DUPTABLE                         R17 K37 [{"BackgroundColor3", "BackgroundTransparency"}]
      148 LOADK                            R18 K51 ["$TableRowHoverBackground"]
      149 SETTABLEKS                       R18 R17 K36 ["BackgroundColor3"]
      151 LOADK                            R18 K52 ["$TableRowHoverBackgroundTransparency"]
      152 SETTABLEKS                       R18 R17 K23 ["BackgroundTransparency"]
      154 CALL                             R15 2 1
      155 JUMP                             ; [+10]
      156 MOVE                             R15 R1
      157 LOADK                            R16 K53 [">> .Component-TableRow:hover >> .Component-TreeTableCell"]
      158 DUPTABLE                         R17 K37 [{"BackgroundColor3", "BackgroundTransparency"}]
      159 LOADK                            R18 K51 ["$TableRowHoverBackground"]
      160 SETTABLEKS                       R18 R17 K36 ["BackgroundColor3"]
      162 LOADK                            R18 K52 ["$TableRowHoverBackgroundTransparency"]
      163 SETTABLEKS                       R18 R17 K23 ["BackgroundTransparency"]
      165 CALL                             R15 2 1
      166 SETLIST                          R11 R12 4 [1]
      168 CALL                             R8 3 1
      169 MOVE                             R9 R1
      170 LOADK                            R10 K54 [".compact"]
      171 NEWTABLE                         R11 0 0
      173 NEWTABLE                         R12 0 1
      175 MOVE                             R13 R1
      176 LOADK                            R14 K12 [">> .Component-TreeTableCell"]
      177 NEWTABLE                         R15 0 0
      179 NEWTABLE                         R16 0 3
      181 MOVE                             R17 R1
      182 LOADK                            R18 K13 ["> .Left ::UIPadding"]
      183 DUPTABLE                         R19 K18 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      184 GETIMPORT                        R20 K21 [UDim.new]
      186 LOADN                            R21 0
      187 LOADN                            R22 0
      188 CALL                             R20 2 1
      189 SETTABLEKS                       R20 R19 K14 ["PaddingTop"]
      191 GETIMPORT                        R20 K21 [UDim.new]
      193 LOADN                            R21 0
      194 LOADN                            R22 0
      195 CALL                             R20 2 1
      196 SETTABLEKS                       R20 R19 K15 ["PaddingBottom"]
      198 GETIMPORT                        R20 K21 [UDim.new]
      200 LOADN                            R21 0
      201 LOADN                            R22 0
      202 CALL                             R20 2 1
      203 SETTABLEKS                       R20 R19 K16 ["PaddingLeft"]
      205 GETIMPORT                        R20 K21 [UDim.new]
      207 LOADN                            R21 0
      208 LOADN                            R22 0
      209 CALL                             R20 2 1
      210 SETTABLEKS                       R20 R19 K17 ["PaddingRight"]
      212 CALL                             R17 2 1
      213 MOVE                             R18 R1
      214 LOADK                            R19 K22 [">> .Arrow"]
      215 DUPTABLE                         R20 K56 [{"Image", "ImageColor3"}]
      216 LOADK                            R21 K57 ["rbxasset://studio_svg_textures/Lua/Explorer/Light/Standard/collapsed.png"]
      217 SETTABLEKS                       R21 R20 K24 ["Image"]
      219 LOADK                            R21 K58 ["$SemanticColorContentMuted"]
      220 SETTABLEKS                       R21 R20 K55 ["ImageColor3"]
      222 CALL                             R18 2 1
      223 MOVE                             R19 R1
      224 LOADK                            R20 K59 [">> TextBox"]
      225 DUPTABLE                         R21 K61 [{"TextSize"}]
      226 LOADN                            R22 16
      227 SETTABLEKS                       R22 R21 K60 ["TextSize"]
      229 CALL                             R19 2 -1
      230 SETLIST                          R16 R17 -1 [1]
      232 CALL                             R13 3 -1
      233 SETLIST                          R12 R13 -1 [1]
      235 CALL                             R9 3 -1
      236 SETLIST                          R6 R7 -1 [1]
      238 DUPTABLE                         R7 K67 [{"ArrowSize", "CellPadding", "Indent", "CompactCellPadding", "CompactIndent"}]
      239 LOADN                            R8 16
      240 SETTABLEKS                       R8 R7 K62 ["ArrowSize"]
      242 LOADN                            R8 5
      243 SETTABLEKS                       R8 R7 K63 ["CellPadding"]
      245 LOADN                            R8 20
      246 SETTABLEKS                       R8 R7 K64 ["Indent"]
      248 LOADN                            R8 0
      249 SETTABLEKS                       R8 R7 K65 ["CompactCellPadding"]
      251 LOADN                            R8 14
      252 SETTABLEKS                       R8 R7 K66 ["CompactIndent"]
      254 CALL                             R3 4 -1
      255 RETURN                           R3 -1
