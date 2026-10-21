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
       16 MOVE                             R2 R1
       17 LOADK                            R3 K9 [".Component-TreeTable"]
       18 NEWTABLE                         R4 0 0
       20 NEWTABLE                         R5 0 3
       22 MOVE                             R6 R1
       23 LOADK                            R7 K10 [">> .Component-TreeTableCell"]
       24 NEWTABLE                         R8 0 0
       26 NEWTABLE                         R9 0 2
       28 MOVE                             R10 R1
       29 LOADK                            R11 K11 ["> .Left ::UIPadding"]
       30 DUPTABLE                         R12 K16 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       31 GETIMPORT                        R13 K19 [UDim.new]
       33 LOADN                            R14 0
       34 LOADN                            R15 1
       35 CALL                             R13 2 1
       36 SETTABLEKS                       R13 R12 K12 ["PaddingTop"]
       38 GETIMPORT                        R13 K19 [UDim.new]
       40 LOADN                            R14 0
       41 LOADN                            R15 1
       42 CALL                             R13 2 1
       43 SETTABLEKS                       R13 R12 K13 ["PaddingBottom"]
       45 GETIMPORT                        R13 K19 [UDim.new]
       47 LOADN                            R14 0
       48 LOADN                            R15 5
       49 CALL                             R13 2 1
       50 SETTABLEKS                       R13 R12 K14 ["PaddingLeft"]
       52 GETIMPORT                        R13 K19 [UDim.new]
       54 LOADN                            R14 0
       55 LOADN                            R15 5
       56 CALL                             R13 2 1
       57 SETTABLEKS                       R13 R12 K15 ["PaddingRight"]
       59 CALL                             R10 2 1
       60 MOVE                             R11 R1
       61 LOADK                            R12 K20 [">> .Arrow"]
       62 DUPTABLE                         R13 K26 [{["BackgroundTransparency"] = 1, ["Image"] = "$ArrowRightImage", ["Size"]}]
       63 GETIMPORT                        R14 K29 [UDim2.fromOffset]
       65 LOADN                            R15 16
       66 LOADN                            R16 16
       67 CALL                             R14 2 1
       68 SETTABLEKS                       R14 R13 K25 ["Size"]
       70 NEWTABLE                         R14 0 1
       72 MOVE                             R15 R1
       73 LOADK                            R16 K30 [".Invisible"]
       74 DUPTABLE                         R17 K32 [{["ImageTransparency"] = 1}]
       75 CALL                             R15 2 -1
       76 SETLIST                          R14 R15 -1 [1]
       78 CALL                             R11 3 -1
       79 SETLIST                          R9 R10 -1 [1]
       81 CALL                             R6 3 1
       82 MOVE                             R7 R1
       83 LOADK                            R8 K33 [".modern"]
       84 NEWTABLE                         R9 0 0
       86 NEWTABLE                         R10 0 4
       88 MOVE                             R11 R1
       89 LOADK                            R12 K34 [">> .Component-TableHeaderBorder"]
       90 DUPTABLE                         R13 K38 [{["BackgroundColor3"] = "$TableHeaderBorder", ["BackgroundTransparency"] = "$TableHeaderBorderTransparency"}]
       91 CALL                             R11 2 1
       92 MOVE                             R12 R1
       93 LOADK                            R13 K10 [">> .Component-TreeTableCell"]
       94 DUPTABLE                         R14 K39 [{["BackgroundTransparency"] = 1}]
       95 NEWTABLE                         R15 0 1
       97 MOVE                             R16 R1
       98 LOADK                            R17 K40 [">> .Component-TreeTableCellText"]
       99 DUPTABLE                         R18 K42 [{"TextTruncate"}]
      100 GETIMPORT                        R19 K45 [Enum.TextTruncate.AtEnd]
      102 SETTABLEKS                       R19 R18 K41 ["TextTruncate"]
      104 CALL                             R16 2 -1
      105 SETLIST                          R15 R16 -1 [1]
      107 CALL                             R12 3 1
      108 MOVE                             R13 R1
      109 LOADK                            R14 K46 [">> .Component-TreeTableCell.Secondary"]
      110 DUPTABLE                         R15 K49 [{["BackgroundColor3"] = "$TableRowEmphasisBackground", ["BackgroundTransparency"] = "$TableRowEmphasisBackgroundTransparency"}]
      111 CALL                             R13 2 1
      112 MOVE                             R14 R1
      113 LOADK                            R15 K50 [".enable-hover >> .Component-TableRow:hover >> .Component-TreeTableCell"]
      114 DUPTABLE                         R16 K53 [{["BackgroundColor3"] = "$TableRowHoverBackground", ["BackgroundTransparency"] = "$TableRowHoverBackgroundTransparency"}]
      115 CALL                             R14 2 -1
      116 SETLIST                          R10 R11 -1 [1]
      118 CALL                             R7 3 1
      119 MOVE                             R8 R1
      120 LOADK                            R9 K54 [".compact"]
      121 NEWTABLE                         R10 0 0
      123 NEWTABLE                         R11 0 1
      125 MOVE                             R12 R1
      126 LOADK                            R13 K10 [">> .Component-TreeTableCell"]
      127 NEWTABLE                         R14 0 0
      129 NEWTABLE                         R15 0 3
      131 MOVE                             R16 R1
      132 LOADK                            R17 K11 ["> .Left ::UIPadding"]
      133 DUPTABLE                         R18 K16 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      134 GETIMPORT                        R19 K19 [UDim.new]
      136 LOADN                            R20 0
      137 LOADN                            R21 0
      138 CALL                             R19 2 1
      139 SETTABLEKS                       R19 R18 K12 ["PaddingTop"]
      141 GETIMPORT                        R19 K19 [UDim.new]
      143 LOADN                            R20 0
      144 LOADN                            R21 0
      145 CALL                             R19 2 1
      146 SETTABLEKS                       R19 R18 K13 ["PaddingBottom"]
      148 GETIMPORT                        R19 K19 [UDim.new]
      150 LOADN                            R20 0
      151 LOADN                            R21 0
      152 CALL                             R19 2 1
      153 SETTABLEKS                       R19 R18 K14 ["PaddingLeft"]
      155 GETIMPORT                        R19 K19 [UDim.new]
      157 LOADN                            R20 0
      158 LOADN                            R21 0
      159 CALL                             R19 2 1
      160 SETTABLEKS                       R19 R18 K15 ["PaddingRight"]
      162 CALL                             R16 2 1
      163 MOVE                             R17 R1
      164 LOADK                            R18 K20 [">> .Arrow"]
      165 DUPTABLE                         R19 K58 [{["Image"] = "rbxasset://studio_svg_textures/Lua/Explorer/Light/Standard/collapsed.png", ["ImageColor3"] = "$SemanticColorContentMuted"}]
      166 CALL                             R17 2 1
      167 MOVE                             R18 R1
      168 LOADK                            R19 K59 [">> TextBox"]
      169 DUPTABLE                         R20 K62 [{["TextSize"] = 16}]
      170 CALL                             R18 2 -1
      171 SETLIST                          R15 R16 -1 [1]
      173 CALL                             R12 3 -1
      174 SETLIST                          R11 R12 -1 [1]
      176 CALL                             R8 3 -1
      177 SETLIST                          R5 R6 -1 [1]
      179 DUPTABLE                         R6 K72 [{["ArrowSize"] = 16, ["CellPadding"] = 5, ["Indent"] = 20, ["CompactCellPadding"] = 0, ["CompactIndent"] = 14}]
      180 CALL                             R2 4 -1
      181 RETURN                           R2 -1
