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
       70 DUPTABLE                         R14 K28 [{["BackgroundTransparency"] = 1, ["Image"] = "$ArrowRightImage", ["Size"]}]
       71 GETIMPORT                        R15 K31 [UDim2.fromOffset]
       73 LOADN                            R16 16
       74 LOADN                            R17 16
       75 CALL                             R15 2 1
       76 SETTABLEKS                       R15 R14 K27 ["Size"]
       78 NEWTABLE                         R15 0 1
       80 MOVE                             R16 R1
       81 LOADK                            R17 K32 [".Invisible"]
       82 DUPTABLE                         R18 K34 [{["ImageTransparency"] = 1}]
       83 CALL                             R16 2 -1
       84 SETLIST                          R15 R16 -1 [1]
       86 CALL                             R12 3 -1
       87 SETLIST                          R10 R11 -1 [1]
       89 CALL                             R7 3 1
       90 MOVE                             R8 R1
       91 LOADK                            R9 K35 [".modern"]
       92 NEWTABLE                         R10 0 0
       94 NEWTABLE                         R11 0 4
       96 MOVE                             R12 R1
       97 LOADK                            R13 K36 [">> .Component-TableHeaderBorder"]
       98 DUPTABLE                         R14 K40 [{["BackgroundColor3"] = "$TableHeaderBorder", ["BackgroundTransparency"] = "$TableHeaderBorderTransparency"}]
       99 CALL                             R12 2 1
      100 MOVE                             R13 R1
      101 LOADK                            R14 K12 [">> .Component-TreeTableCell"]
      102 DUPTABLE                         R15 K41 [{["BackgroundTransparency"] = 1}]
      103 NEWTABLE                         R16 0 1
      105 MOVE                             R17 R1
      106 LOADK                            R18 K42 [">> .Component-TreeTableCellText"]
      107 DUPTABLE                         R19 K44 [{"TextTruncate"}]
      108 GETIMPORT                        R20 K47 [Enum.TextTruncate.AtEnd]
      110 SETTABLEKS                       R20 R19 K43 ["TextTruncate"]
      112 CALL                             R17 2 -1
      113 SETLIST                          R16 R17 -1 [1]
      115 CALL                             R13 3 1
      116 MOVE                             R14 R1
      117 LOADK                            R15 K48 [">> .Component-TreeTableCell.Secondary"]
      118 DUPTABLE                         R16 K51 [{["BackgroundColor3"] = "$TableRowEmphasisBackground", ["BackgroundTransparency"] = "$TableRowEmphasisBackgroundTransparency"}]
      119 CALL                             R14 2 1
      120 JUMPIFNOT                        R2 ; [+5]
      121 MOVE                             R15 R1
      122 LOADK                            R16 K52 [".enable-hover >> .Component-TableRow:hover >> .Component-TreeTableCell"]
      123 DUPTABLE                         R17 K55 [{["BackgroundColor3"] = "$TableRowHoverBackground", ["BackgroundTransparency"] = "$TableRowHoverBackgroundTransparency"}]
      124 CALL                             R15 2 1
      125 JUMP                             ; [+4]
      126 MOVE                             R15 R1
      127 LOADK                            R16 K56 [">> .Component-TableRow:hover >> .Component-TreeTableCell"]
      128 DUPTABLE                         R17 K55 [{["BackgroundColor3"] = "$TableRowHoverBackground", ["BackgroundTransparency"] = "$TableRowHoverBackgroundTransparency"}]
      129 CALL                             R15 2 1
      130 SETLIST                          R11 R12 4 [1]
      132 CALL                             R8 3 1
      133 MOVE                             R9 R1
      134 LOADK                            R10 K57 [".compact"]
      135 NEWTABLE                         R11 0 0
      137 NEWTABLE                         R12 0 1
      139 MOVE                             R13 R1
      140 LOADK                            R14 K12 [">> .Component-TreeTableCell"]
      141 NEWTABLE                         R15 0 0
      143 NEWTABLE                         R16 0 3
      145 MOVE                             R17 R1
      146 LOADK                            R18 K13 ["> .Left ::UIPadding"]
      147 DUPTABLE                         R19 K18 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      148 GETIMPORT                        R20 K21 [UDim.new]
      150 LOADN                            R21 0
      151 LOADN                            R22 0
      152 CALL                             R20 2 1
      153 SETTABLEKS                       R20 R19 K14 ["PaddingTop"]
      155 GETIMPORT                        R20 K21 [UDim.new]
      157 LOADN                            R21 0
      158 LOADN                            R22 0
      159 CALL                             R20 2 1
      160 SETTABLEKS                       R20 R19 K15 ["PaddingBottom"]
      162 GETIMPORT                        R20 K21 [UDim.new]
      164 LOADN                            R21 0
      165 LOADN                            R22 0
      166 CALL                             R20 2 1
      167 SETTABLEKS                       R20 R19 K16 ["PaddingLeft"]
      169 GETIMPORT                        R20 K21 [UDim.new]
      171 LOADN                            R21 0
      172 LOADN                            R22 0
      173 CALL                             R20 2 1
      174 SETTABLEKS                       R20 R19 K17 ["PaddingRight"]
      176 CALL                             R17 2 1
      177 MOVE                             R18 R1
      178 LOADK                            R19 K22 [">> .Arrow"]
      179 DUPTABLE                         R20 K61 [{["Image"] = "rbxasset://studio_svg_textures/Lua/Explorer/Light/Standard/collapsed.png", ["ImageColor3"] = "$SemanticColorContentMuted"}]
      180 CALL                             R18 2 1
      181 MOVE                             R19 R1
      182 LOADK                            R20 K62 [">> TextBox"]
      183 DUPTABLE                         R21 K65 [{["TextSize"] = 16}]
      184 CALL                             R19 2 -1
      185 SETLIST                          R16 R17 -1 [1]
      187 CALL                             R13 3 -1
      188 SETLIST                          R12 R13 -1 [1]
      190 CALL                             R9 3 -1
      191 SETLIST                          R6 R7 -1 [1]
      193 DUPTABLE                         R7 K75 [{["ArrowSize"] = 16, ["CellPadding"] = 5, ["Indent"] = 20, ["CompactCellPadding"] = 0, ["CompactIndent"] = 14}]
      194 CALL                             R3 4 -1
      195 RETURN                           R3 -1
