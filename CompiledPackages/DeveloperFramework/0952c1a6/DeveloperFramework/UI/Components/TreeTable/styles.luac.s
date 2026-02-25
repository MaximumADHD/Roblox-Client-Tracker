MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Styling"]
       13 GETTABLEKS                       R2 R3 K8 ["createStyleRule"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K9 ["SharedFlags"]
       20 GETTABLEKS                       R3 R4 K10 ["getFFlagLuaStartPageTableContextMenu"]
       22 CALL                             R2 1 1
       23 CALL                             R2 0 1
       24 GETIMPORT                        R3 K6 [require]
       26 GETTABLEKS                       R5 R0 K9 ["SharedFlags"]
       28 GETTABLEKS                       R4 R5 K11 ["getFFlagDevFrameworkCompactTreeTable"]
       30 CALL                             R3 1 1
       31 CALL                             R3 0 1
       32 MOVE                             R4 R1
       33 LOADK                            R5 K12 [".Component-TreeTable"]
       34 NEWTABLE                         R6 0 0
       36 NEWTABLE                         R7 0 3
       38 MOVE                             R8 R1
       39 LOADK                            R9 K13 [">> .Component-TreeTableCell"]
       40 NEWTABLE                         R10 0 0
       42 NEWTABLE                         R11 0 2
       44 MOVE                             R12 R1
       45 LOADK                            R13 K14 ["> .Left ::UIPadding"]
       46 DUPTABLE                         R14 K19 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       47 GETIMPORT                        R15 K22 [UDim.new]
       49 LOADN                            R16 0
       50 LOADN                            R17 1
       51 CALL                             R15 2 1
       52 SETTABLEKS                       R15 R14 K15 ["PaddingTop"]
       54 GETIMPORT                        R15 K22 [UDim.new]
       56 LOADN                            R16 0
       57 LOADN                            R17 1
       58 CALL                             R15 2 1
       59 SETTABLEKS                       R15 R14 K16 ["PaddingBottom"]
       61 GETIMPORT                        R15 K22 [UDim.new]
       63 LOADN                            R16 0
       64 LOADN                            R17 5
       65 CALL                             R15 2 1
       66 SETTABLEKS                       R15 R14 K17 ["PaddingLeft"]
       68 GETIMPORT                        R15 K22 [UDim.new]
       70 LOADN                            R16 0
       71 LOADN                            R17 5
       72 CALL                             R15 2 1
       73 SETTABLEKS                       R15 R14 K18 ["PaddingRight"]
       75 CALL                             R12 2 1
       76 MOVE                             R13 R1
       77 LOADK                            R14 K23 [">> .Arrow"]
       78 DUPTABLE                         R15 K27 [{"BackgroundTransparency", "Image", "Size"}]
       79 LOADN                            R16 1
       80 SETTABLEKS                       R16 R15 K24 ["BackgroundTransparency"]
       82 LOADK                            R16 K28 ["$ArrowRightImage"]
       83 SETTABLEKS                       R16 R15 K25 ["Image"]
       85 GETIMPORT                        R16 K31 [UDim2.fromOffset]
       87 LOADN                            R17 16
       88 LOADN                            R18 16
       89 CALL                             R16 2 1
       90 SETTABLEKS                       R16 R15 K26 ["Size"]
       92 NEWTABLE                         R16 0 1
       94 MOVE                             R17 R1
       95 LOADK                            R18 K32 [".Invisible"]
       96 DUPTABLE                         R19 K34 [{"ImageTransparency"}]
       97 LOADN                            R20 1
       98 SETTABLEKS                       R20 R19 K33 ["ImageTransparency"]
      100 CALL                             R17 2 -1
      101 SETLIST                          R16 R17 -1 [1]
      103 CALL                             R13 3 -1
      104 SETLIST                          R11 R12 -1 [1]
      106 CALL                             R8 3 1
      107 MOVE                             R9 R1
      108 LOADK                            R10 K35 [".modern"]
      109 NEWTABLE                         R11 0 0
      111 NEWTABLE                         R12 0 4
      113 MOVE                             R13 R1
      114 LOADK                            R14 K36 [">> .Component-TableHeaderBorder"]
      115 DUPTABLE                         R15 K38 [{"BackgroundColor3", "BackgroundTransparency"}]
      116 LOADK                            R16 K39 ["$TableHeaderBorder"]
      117 SETTABLEKS                       R16 R15 K37 ["BackgroundColor3"]
      119 LOADK                            R16 K40 ["$TableHeaderBorderTransparency"]
      120 SETTABLEKS                       R16 R15 K24 ["BackgroundTransparency"]
      122 CALL                             R13 2 1
      123 MOVE                             R14 R1
      124 LOADK                            R15 K13 [">> .Component-TreeTableCell"]
      125 DUPTABLE                         R16 K41 [{"BackgroundTransparency"}]
      126 LOADN                            R17 1
      127 SETTABLEKS                       R17 R16 K24 ["BackgroundTransparency"]
      129 NEWTABLE                         R17 0 1
      131 MOVE                             R18 R1
      132 LOADK                            R19 K42 [">> .Component-TreeTableCellText"]
      133 DUPTABLE                         R20 K44 [{"TextTruncate"}]
      134 GETIMPORT                        R21 K47 [Enum.TextTruncate.AtEnd]
      136 SETTABLEKS                       R21 R20 K43 ["TextTruncate"]
      138 CALL                             R18 2 -1
      139 SETLIST                          R17 R18 -1 [1]
      141 CALL                             R14 3 1
      142 MOVE                             R15 R1
      143 LOADK                            R16 K48 [">> .Component-TreeTableCell.Secondary"]
      144 DUPTABLE                         R17 K38 [{"BackgroundColor3", "BackgroundTransparency"}]
      145 LOADK                            R18 K49 ["$TableRowEmphasisBackground"]
      146 SETTABLEKS                       R18 R17 K37 ["BackgroundColor3"]
      148 LOADK                            R18 K50 ["$TableRowEmphasisBackgroundTransparency"]
      149 SETTABLEKS                       R18 R17 K24 ["BackgroundTransparency"]
      151 CALL                             R15 2 1
      152 JUMPIFNOT                        R2 ; [+11]
      153 MOVE                             R16 R1
      154 LOADK                            R17 K51 [".enable-hover >> .Component-TableRow:hover >> .Component-TreeTableCell"]
      155 DUPTABLE                         R18 K38 [{"BackgroundColor3", "BackgroundTransparency"}]
      156 LOADK                            R19 K52 ["$TableRowHoverBackground"]
      157 SETTABLEKS                       R19 R18 K37 ["BackgroundColor3"]
      159 LOADK                            R19 K53 ["$TableRowHoverBackgroundTransparency"]
      160 SETTABLEKS                       R19 R18 K24 ["BackgroundTransparency"]
      162 CALL                             R16 2 1
      163 JUMP                             ; [+10]
      164 MOVE                             R16 R1
      165 LOADK                            R17 K54 [">> .Component-TableRow:hover >> .Component-TreeTableCell"]
      166 DUPTABLE                         R18 K38 [{"BackgroundColor3", "BackgroundTransparency"}]
      167 LOADK                            R19 K52 ["$TableRowHoverBackground"]
      168 SETTABLEKS                       R19 R18 K37 ["BackgroundColor3"]
      170 LOADK                            R19 K53 ["$TableRowHoverBackgroundTransparency"]
      171 SETTABLEKS                       R19 R18 K24 ["BackgroundTransparency"]
      173 CALL                             R16 2 1
      174 SETLIST                          R12 R13 4 [1]
      176 CALL                             R9 3 1
      177 JUMPIFNOT                        R3 ; [+68]
      178 MOVE                             R10 R1
      179 LOADK                            R11 K55 [".compact"]
      180 NEWTABLE                         R12 0 0
      182 NEWTABLE                         R13 0 1
      184 MOVE                             R14 R1
      185 LOADK                            R15 K13 [">> .Component-TreeTableCell"]
      186 NEWTABLE                         R16 0 0
      188 NEWTABLE                         R17 0 3
      190 MOVE                             R18 R1
      191 LOADK                            R19 K14 ["> .Left ::UIPadding"]
      192 DUPTABLE                         R20 K19 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      193 GETIMPORT                        R21 K22 [UDim.new]
      195 LOADN                            R22 0
      196 LOADN                            R23 0
      197 CALL                             R21 2 1
      198 SETTABLEKS                       R21 R20 K15 ["PaddingTop"]
      200 GETIMPORT                        R21 K22 [UDim.new]
      202 LOADN                            R22 0
      203 LOADN                            R23 0
      204 CALL                             R21 2 1
      205 SETTABLEKS                       R21 R20 K16 ["PaddingBottom"]
      207 GETIMPORT                        R21 K22 [UDim.new]
      209 LOADN                            R22 0
      210 LOADN                            R23 0
      211 CALL                             R21 2 1
      212 SETTABLEKS                       R21 R20 K17 ["PaddingLeft"]
      214 GETIMPORT                        R21 K22 [UDim.new]
      216 LOADN                            R22 0
      217 LOADN                            R23 0
      218 CALL                             R21 2 1
      219 SETTABLEKS                       R21 R20 K18 ["PaddingRight"]
      221 CALL                             R18 2 1
      222 MOVE                             R19 R1
      223 LOADK                            R20 K23 [">> .Arrow"]
      224 DUPTABLE                         R21 K57 [{"Image", "ImageColor3"}]
      225 LOADK                            R22 K58 ["rbxasset://studio_svg_textures/Lua/Explorer/Light/Standard/collapsed.png"]
      226 SETTABLEKS                       R22 R21 K25 ["Image"]
      228 LOADK                            R22 K59 ["$SemanticColorContentMuted"]
      229 SETTABLEKS                       R22 R21 K56 ["ImageColor3"]
      231 CALL                             R19 2 1
      232 MOVE                             R20 R1
      233 LOADK                            R21 K60 [">> TextBox"]
      234 DUPTABLE                         R22 K62 [{"TextSize"}]
      235 LOADN                            R23 16
      236 SETTABLEKS                       R23 R22 K61 ["TextSize"]
      238 CALL                             R20 2 -1
      239 SETLIST                          R17 R18 -1 [1]
      241 CALL                             R14 3 -1
      242 SETLIST                          R13 R14 -1 [1]
      244 CALL                             R10 3 1
      245 JUMP                             ; [+1]
      246 LOADNIL                          R10
      247 SETLIST                          R7 R8 3 [1]
      249 DUPTABLE                         R8 K68 [{"ArrowSize", "CellPadding", "Indent", "CompactCellPadding", "CompactIndent"}]
      250 LOADN                            R9 16
      251 SETTABLEKS                       R9 R8 K63 ["ArrowSize"]
      253 LOADN                            R9 5
      254 SETTABLEKS                       R9 R8 K64 ["CellPadding"]
      256 LOADN                            R9 20
      257 SETTABLEKS                       R9 R8 K65 ["Indent"]
      259 LOADN                            R9 0
      260 SETTABLEKS                       R9 R8 K66 ["CompactCellPadding"]
      262 LOADN                            R9 14
      263 SETTABLEKS                       R9 R8 K67 ["CompactIndent"]
      265 CALL                             R4 4 -1
      266 RETURN                           R4 -1
