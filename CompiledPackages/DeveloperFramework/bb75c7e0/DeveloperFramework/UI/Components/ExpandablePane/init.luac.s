PROTO_0:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R2 R0 K0 ["AutomaticSize"]
        3 GETIMPORT                        R3 K3 [Enum.AutomaticSize.X]
        5 JUMPIFNOTEQ                      R2 R3 ; [+3]
        7 LOADK                            R1 K4 ["X-FitX"]
        8 JUMP                             ; [+15]
        9 GETTABLEKS                       R2 R0 K0 ["AutomaticSize"]
       11 GETIMPORT                        R3 K6 [Enum.AutomaticSize.Y]
       13 JUMPIFNOTEQ                      R2 R3 ; [+3]
       15 LOADK                            R1 K7 ["X-FitY"]
       16 JUMP                             ; [+7]
       17 GETTABLEKS                       R2 R0 K0 ["AutomaticSize"]
       19 GETIMPORT                        R3 K9 [Enum.AutomaticSize.XY]
       21 JUMPIFNOTEQ                      R2 R3 ; [+2]
       23 LOADK                            R1 K10 ["X-Fit"]
       24 LOADNIL                          R2
       25 GETTABLEKS                       R3 R0 K11 ["HorizontalAlignment"]
       27 GETIMPORT                        R4 K13 [Enum.HorizontalAlignment.Left]
       29 JUMPIFNOTEQ                      R3 R4 ; [+3]
       31 LOADK                            R2 K14 ["X-Left"]
       32 JUMP                             ; [+15]
       33 GETTABLEKS                       R3 R0 K11 ["HorizontalAlignment"]
       35 GETIMPORT                        R4 K16 [Enum.HorizontalAlignment.Center]
       37 JUMPIFNOTEQ                      R3 R4 ; [+3]
       39 LOADK                            R2 K17 ["X-Center"]
       40 JUMP                             ; [+7]
       41 GETTABLEKS                       R3 R0 K11 ["HorizontalAlignment"]
       43 GETIMPORT                        R4 K19 [Enum.HorizontalAlignment.Right]
       45 JUMPIFNOTEQ                      R3 R4 ; [+2]
       47 LOADK                            R2 K20 ["X-Right"]
       48 LOADNIL                          R3
       49 GETTABLEKS                       R4 R0 K21 ["VerticalAlignment"]
       51 GETIMPORT                        R5 K23 [Enum.VerticalAlignment.Top]
       53 JUMPIFNOTEQ                      R4 R5 ; [+3]
       55 LOADK                            R3 K24 ["X-Top"]
       56 JUMP                             ; [+15]
       57 GETTABLEKS                       R4 R0 K21 ["VerticalAlignment"]
       59 GETIMPORT                        R5 K25 [Enum.VerticalAlignment.Center]
       61 JUMPIFNOTEQ                      R4 R5 ; [+3]
       63 LOADK                            R3 K26 ["X-Middle"]
       64 JUMP                             ; [+7]
       65 GETTABLEKS                       R4 R0 K21 ["VerticalAlignment"]
       67 GETIMPORT                        R5 K28 [Enum.VerticalAlignment.Bottom]
       69 JUMPIFNOTEQ                      R4 R5 ; [+2]
       71 LOADK                            R3 K29 ["X-Bottom"]
       72 LOADNIL                          R4
       73 GETTABLEKS                       R5 R0 K30 ["Layout"]
       75 GETIMPORT                        R6 K33 [Enum.FillDirection.Vertical]
       77 JUMPIFNOTEQ                      R5 R6 ; [+3]
       79 LOADK                            R4 K34 ["X-Column"]
       80 JUMP                             ; [+7]
       81 GETTABLEKS                       R5 R0 K30 ["Layout"]
       83 GETIMPORT                        R6 K36 [Enum.FillDirection.Horizontal]
       85 JUMPIFNOTEQ                      R5 R6 ; [+2]
       87 LOADK                            R4 K37 ["X-Row"]
       88 JUMPIFNOT                        R4 ; [+6]
       89 GETTABLEKS                       R5 R0 K38 ["Spacing"]
       91 JUMPIFNOT                        R5 ; [+3]
       92 MOVE                             R5 R4
       93 LOADK                            R6 K39 ["M"]
       94 CONCAT                           R4 R5 R6
       95 LOADNIL                          R5
       96 GETTABLEKS                       R6 R0 K40 ["Padding"]
       98 JUMPIFNOT                        R6 ; [+1]
       99 LOADK                            R5 K41 ["X-Pad"]
      100 GETUPVAL                         R6 0
      101 MOVE                             R7 R1
      102 MOVE                             R8 R2
      103 MOVE                             R9 R3
      104 MOVE                             R10 R4
      105 MOVE                             R11 R5
      106 CALL                             R6 5 -1
      107 RETURN                           R6 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R3 0
        3 JUMPIFNOT                        R3 ; [+6]
        4 GETTABLEKS                       R2 R1 K1 ["Style"]
        6 JUMPIF                           R2 ; [+5]
        7 NEWTABLE                         R2 0 0
        9 JUMP                             ; [+2]
       10 GETTABLEKS                       R2 R1 K2 ["Stylizer"]
       12 GETTABLEKS                       R3 R1 K3 ["AlwaysExpanded"]
       14 JUMPIF                           R3 ; [+2]
       15 GETTABLEKS                       R3 R1 K4 ["Expanded"]
       17 GETUPVAL                         R5 0
       18 JUMPIFNOT                        R5 ; [+6]
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R6 R7 K6 ["Tag"]
       22 GETTABLE                         R5 R1 R6
       23 ORK                              R4 R5 K5 ["X-ColumnM X-FitY"]
       24 JUMP                             ; [+1]
       25 LOADNIL                          R4
       26 GETUPVAL                         R6 0
       27 JUMPIFNOT                        R6 ; [+36]
       28 GETUPVAL                         R5 2
       29 GETUPVAL                         R8 1
       30 GETTABLEKS                       R7 R8 K6 ["Tag"]
       32 GETTABLE                         R6 R1 R7
       33 GETUPVAL                         R8 3
       34 GETTABLEKS                       R7 R8 K7 ["getTagFromDeprecatedProps"]
       36 DUPTABLE                         R8 K14 [{"AutomaticSize", "Padding", "Spacing", "HorizontalAlignment", "VerticalAlignment", "Layout"}]
       37 GETTABLEKS                       R9 R1 K8 ["AutomaticSize"]
       39 SETTABLEKS                       R9 R8 K8 ["AutomaticSize"]
       41 GETTABLEKS                       R9 R1 K15 ["ContentPadding"]
       43 SETTABLEKS                       R9 R8 K9 ["Padding"]
       45 GETTABLEKS                       R9 R1 K16 ["ContentSpacing"]
       47 SETTABLEKS                       R9 R8 K10 ["Spacing"]
       49 GETTABLEKS                       R9 R1 K11 ["HorizontalAlignment"]
       51 SETTABLEKS                       R9 R8 K11 ["HorizontalAlignment"]
       53 GETTABLEKS                       R9 R1 K12 ["VerticalAlignment"]
       55 SETTABLEKS                       R9 R8 K12 ["VerticalAlignment"]
       57 GETTABLEKS                       R9 R1 K13 ["Layout"]
       59 SETTABLEKS                       R9 R8 K13 ["Layout"]
       61 CALL                             R7 1 -1
       62 CALL                             R5 -1 1
       63 JUMP                             ; [+1]
       64 LOADNIL                          R5
       65 GETUPVAL                         R6 4
       66 MOVE                             R7 R1
       67 GETUPVAL                         R9 0
       68 JUMPIFNOT                        R9 ; [+15]
       69 NEWTABLE                         R8 1 0
       71 GETUPVAL                         R10 1
       72 GETTABLEKS                       R9 R10 K6 ["Tag"]
       74 GETUPVAL                         R10 2
       75 LOADK                            R11 K17 ["Component-ExpandablePane"]
       76 MOVE                             R12 R4
       77 JUMPIFNOT                        R3 ; [+2]
       78 LOADK                            R13 K4 ["Expanded"]
       79 JUMP                             ; [+1]
       80 LOADNIL                          R13
       81 CALL                             R10 3 1
       82 SETTABLE                         R10 R8 R9
       83 JUMP                             ; [+19]
       84 DUPTABLE                         R8 K20 [{"BackgroundColor", "BorderColor", "Layout", "Padding", "Style"}]
       85 GETTABLEKS                       R9 R2 K18 ["BackgroundColor"]
       87 SETTABLEKS                       R9 R8 K18 ["BackgroundColor"]
       89 GETTABLEKS                       R9 R2 K19 ["BorderColor"]
       91 SETTABLEKS                       R9 R8 K19 ["BorderColor"]
       93 GETIMPORT                        R9 K24 [Enum.FillDirection.Vertical]
       95 SETTABLEKS                       R9 R8 K13 ["Layout"]
       97 GETTABLEKS                       R9 R2 K9 ["Padding"]
       99 SETTABLEKS                       R9 R8 K9 ["Padding"]
      101 SETTABLEKS                       R2 R8 K1 ["Style"]
      103 CALL                             R6 2 1
      104 GETUPVAL                         R7 5
      105 MOVE                             R8 R6
      106 NEWTABLE                         R9 0 12
      108 GETUPVAL                         R11 6
      109 GETTABLEKS                       R10 R11 K25 ["Children"]
      111 LOADK                            R11 K3 ["AlwaysExpanded"]
      112 LOADK                            R12 K15 ["ContentPadding"]
      113 LOADK                            R13 K4 ["Expanded"]
      114 LOADK                            R14 K26 ["HeaderComponent"]
      115 LOADK                            R15 K27 ["HeaderComponentProps"]
      116 LOADK                            R16 K28 ["HeaderOverride"]
      117 LOADK                            R17 K11 ["HorizontalAlignment"]
      118 LOADK                            R18 K29 ["OnExpandedChanged"]
      119 LOADK                            R19 K30 ["Text"]
      120 LOADK                            R20 K16 ["ContentSpacing"]
      121 LOADK                            R21 K31 ["PutHeaderLast"]
      122 SETLIST                          R9 R10 12 [1]
      124 CALL                             R7 2 1
      125 MOVE                             R6 R7
      126 GETUPVAL                         R8 0
      127 JUMPIFNOT                        R8 ; [+2]
      128 LOADNIL                          R7
      129 JUMP                             ; [+8]
      130 GETUPVAL                         R7 7
      131 GETTABLEKS                       R8 R1 K15 ["ContentPadding"]
      133 GETTABLEKS                       R10 R2 K32 ["Content"]
      135 GETTABLEKS                       R9 R10 K9 ["Padding"]
      137 CALL                             R7 2 1
      138 GETUPVAL                         R9 0
      139 JUMPIFNOT                        R9 ; [+2]
      140 LOADNIL                          R8
      141 JUMP                             ; [+8]
      142 GETUPVAL                         R8 7
      143 GETTABLEKS                       R9 R1 K16 ["ContentSpacing"]
      145 GETTABLEKS                       R11 R2 K32 ["Content"]
      147 GETTABLEKS                       R10 R11 K10 ["Spacing"]
      149 CALL                             R8 2 1
      150 GETTABLEKS                       R10 R1 K31 ["PutHeaderLast"]
      152 JUMPIFNOT                        R10 ; [+2]
      153 LOADN                            R9 1
      154 JUMP                             ; [+1]
      155 LOADN                            R9 2
      156 GETUPVAL                         R11 6
      157 GETTABLEKS                       R10 R11 K33 ["createElement"]
      159 GETUPVAL                         R11 8
      160 MOVE                             R12 R6
      161 DUPTABLE                         R13 K35 [{"Header", "Content"}]
      162 GETTABLEKS                       R14 R1 K28 ["HeaderOverride"]
      164 JUMPIF                           R14 ; [+3]
      165 NAMECALL                         R14 R0 K36 ["_renderHeader"]
      167 CALL                             R14 1 1
      168 SETTABLEKS                       R14 R13 K34 ["Header"]
      170 MOVE                             R14 R3
      171 JUMPIFNOT                        R14 ; [+43]
      172 GETUPVAL                         R15 6
      173 GETTABLEKS                       R14 R15 K33 ["createElement"]
      175 GETUPVAL                         R15 8
      176 GETUPVAL                         R17 0
      177 JUMPIFNOT                        R17 ; [+9]
      178 NEWTABLE                         R16 2 0
      180 SETTABLEKS                       R9 R16 K37 ["LayoutOrder"]
      182 GETUPVAL                         R18 1
      183 GETTABLEKS                       R17 R18 K6 ["Tag"]
      185 SETTABLE                         R5 R16 R17
      186 JUMP                             ; [+23]
      187 DUPTABLE                         R16 K38 [{"AutomaticSize", "Layout", "LayoutOrder", "Padding", "Spacing", "HorizontalAlignment", "VerticalAlignment"}]
      188 GETIMPORT                        R17 K40 [Enum.AutomaticSize.Y]
      190 SETTABLEKS                       R17 R16 K8 ["AutomaticSize"]
      192 GETTABLEKS                       R17 R1 K13 ["Layout"]
      194 SETTABLEKS                       R17 R16 K13 ["Layout"]
      196 SETTABLEKS                       R9 R16 K37 ["LayoutOrder"]
      198 SETTABLEKS                       R7 R16 K9 ["Padding"]
      200 SETTABLEKS                       R8 R16 K10 ["Spacing"]
      202 GETTABLEKS                       R17 R1 K11 ["HorizontalAlignment"]
      204 SETTABLEKS                       R17 R16 K11 ["HorizontalAlignment"]
      206 GETTABLEKS                       R17 R1 K12 ["VerticalAlignment"]
      208 SETTABLEKS                       R17 R16 K12 ["VerticalAlignment"]
      210 GETUPVAL                         R19 6
      211 GETTABLEKS                       R18 R19 K25 ["Children"]
      213 GETTABLE                         R17 R1 R18
      214 CALL                             R14 3 1
      215 SETTABLEKS                       R14 R13 K32 ["Content"]
      217 CALL                             R10 3 -1
      218 RETURN                           R10 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R3 0
        3 JUMPIFNOT                        R3 ; [+11]
        4 GETTABLEKS                       R3 R1 K1 ["Style"]
        6 JUMPIF                           R3 ; [+2]
        7 NEWTABLE                         R3 0 0
        9 GETTABLEKS                       R2 R3 K2 ["Header"]
       11 JUMPIF                           R2 ; [+7]
       12 NEWTABLE                         R2 0 0
       14 JUMP                             ; [+4]
       15 GETTABLEKS                       R3 R1 K3 ["Stylizer"]
       17 GETTABLEKS                       R2 R3 K2 ["Header"]
       19 GETUPVAL                         R4 0
       20 JUMPIFNOT                        R4 ; [+2]
       21 GETUPVAL                         R3 1
       22 JUMP                             ; [+4]
       23 GETTABLEKS                       R4 R2 K4 ["Arrow"]
       25 GETTABLEKS                       R3 R4 K5 ["Size"]
       27 GETUPVAL                         R5 0
       28 JUMPIFNOT                        R5 ; [+2]
       29 GETUPVAL                         R4 2
       30 JUMP                             ; [+2]
       31 GETTABLEKS                       R4 R2 K6 ["Spacing"]
       33 GETUPVAL                         R6 0
       34 JUMPIFNOT                        R6 ; [+2]
       35 ADD                              R5 R3 R4
       36 JUMP                             ; [+5]
       37 GETTABLEKS                       R7 R3 K7 ["X"]
       39 GETTABLEKS                       R6 R7 K8 ["Offset"]
       41 ADD                              R5 R6 R4
       42 GETTABLEKS                       R6 R1 K9 ["Text"]
       44 JUMPIFNOT                        R6 ; [+35]
       45 GETTABLEKS                       R6 R2 K9 ["Text"]
       47 GETUPVAL                         R8 0
       48 JUMPIFNOT                        R8 ; [+6]
       49 GETUPVAL                         R7 3
       50 LOADK                            R9 K10 ["TextLabelFont"]
       51 NAMECALL                         R7 R7 K11 ["GetAttribute"]
       53 CALL                             R7 2 1
       54 JUMP                             ; [+2]
       55 GETTABLEKS                       R7 R6 K12 ["Font"]
       57 GETUPVAL                         R9 0
       58 JUMPIFNOT                        R9 ; [+6]
       59 GETUPVAL                         R8 3
       60 LOADK                            R10 K13 ["TextLabelTitleSize"]
       61 NAMECALL                         R8 R8 K11 ["GetAttribute"]
       63 CALL                             R8 2 1
       64 JUMP                             ; [+2]
       65 GETTABLEKS                       R8 R6 K14 ["TextSize"]
       67 GETUPVAL                         R9 4
       68 GETTABLEKS                       R11 R1 K9 ["Text"]
       70 MOVE                             R12 R8
       71 MOVE                             R13 R7
       72 GETUPVAL                         R14 5
       73 NAMECALL                         R9 R9 K15 ["GetTextSize"]
       75 CALL                             R9 5 1
       76 GETTABLEKS                       R11 R9 K7 ["X"]
       78 ADD                              R10 R11 R4
       79 ADD                              R5 R5 R10
       80 RETURN                           R5 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R3 0
        3 JUMPIFNOT                        R3 ; [+11]
        4 GETTABLEKS                       R3 R1 K1 ["Style"]
        6 JUMPIF                           R3 ; [+2]
        7 NEWTABLE                         R3 0 0
        9 GETTABLEKS                       R2 R3 K2 ["Header"]
       11 JUMPIF                           R2 ; [+7]
       12 NEWTABLE                         R2 0 0
       14 JUMP                             ; [+4]
       15 GETTABLEKS                       R3 R1 K3 ["Stylizer"]
       17 GETTABLEKS                       R2 R3 K2 ["Header"]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R3 R4 K4 ["new"]
       22 CALL                             R3 0 1
       23 NEWTABLE                         R4 4 0
       25 GETTABLEKS                       R5 R1 K5 ["AlwaysExpanded"]
       27 JUMPIF                           R5 ; [+42]
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R5 R6 K6 ["createElement"]
       31 GETUPVAL                         R6 3
       32 GETUPVAL                         R8 0
       33 JUMPIFNOT                        R8 ; [+13]
       34 NEWTABLE                         R7 2 0
       36 NAMECALL                         R8 R3 K7 ["getNextOrder"]
       38 CALL                             R8 1 1
       39 SETTABLEKS                       R8 R7 K8 ["LayoutOrder"]
       41 GETUPVAL                         R9 4
       42 GETTABLEKS                       R8 R9 K9 ["Tag"]
       44 LOADK                            R9 K10 ["Arrow"]
       45 SETTABLE                         R9 R7 R8
       46 JUMP                             ; [+20]
       47 DUPTABLE                         R7 K12 [{"LayoutOrder", "Style", "StyleModifier"}]
       48 NAMECALL                         R8 R3 K7 ["getNextOrder"]
       50 CALL                             R8 1 1
       51 SETTABLEKS                       R8 R7 K8 ["LayoutOrder"]
       53 GETTABLEKS                       R8 R2 K10 ["Arrow"]
       55 SETTABLEKS                       R8 R7 K1 ["Style"]
       57 GETTABLEKS                       R9 R1 K13 ["Expanded"]
       59 JUMPIFNOT                        R9 ; [+4]
       60 GETUPVAL                         R9 5
       61 GETTABLEKS                       R8 R9 K14 ["Selected"]
       63 JUMPIF                           R8 ; [+1]
       64 LOADNIL                          R8
       65 SETTABLEKS                       R8 R7 K11 ["StyleModifier"]
       67 CALL                             R5 2 1
       68 SETTABLEKS                       R5 R4 K15 ["Image"]
       70 GETTABLEKS                       R5 R1 K16 ["Text"]
       72 JUMPIFNOT                        R5 ; [+47]
       73 GETUPVAL                         R6 2
       74 GETTABLEKS                       R5 R6 K6 ["createElement"]
       76 GETUPVAL                         R6 6
       77 GETUPVAL                         R8 0
       78 JUMPIFNOT                        R8 ; [+17]
       79 NEWTABLE                         R7 4 0
       81 NAMECALL                         R8 R3 K7 ["getNextOrder"]
       83 CALL                             R8 1 1
       84 SETTABLEKS                       R8 R7 K8 ["LayoutOrder"]
       86 GETTABLEKS                       R8 R1 K16 ["Text"]
       88 SETTABLEKS                       R8 R7 K16 ["Text"]
       90 GETUPVAL                         R9 4
       91 GETTABLEKS                       R8 R9 K9 ["Tag"]
       93 LOADK                            R9 K17 ["Title Wrap X-Fit"]
       94 SETTABLE                         R9 R7 R8
       95 JUMP                             ; [+21]
       96 DUPTABLE                         R7 K20 [{"AutomaticSize", "LayoutOrder", "Style", "Text", "TextWrapped"}]
       97 GETIMPORT                        R8 K23 [Enum.AutomaticSize.XY]
       99 SETTABLEKS                       R8 R7 K18 ["AutomaticSize"]
      101 NAMECALL                         R8 R3 K7 ["getNextOrder"]
      103 CALL                             R8 1 1
      104 SETTABLEKS                       R8 R7 K8 ["LayoutOrder"]
      106 GETTABLEKS                       R8 R2 K16 ["Text"]
      108 SETTABLEKS                       R8 R7 K1 ["Style"]
      110 GETTABLEKS                       R8 R1 K16 ["Text"]
      112 SETTABLEKS                       R8 R7 K16 ["Text"]
      114 LOADB                            R8 1
      115 SETTABLEKS                       R8 R7 K19 ["TextWrapped"]
      117 CALL                             R5 2 1
      118 SETTABLEKS                       R5 R4 K24 ["Title"]
      120 GETTABLEKS                       R5 R1 K25 ["HeaderComponent"]
      122 JUMPIFNOT                        R5 ; [+38]
      123 LOADNIL                          R5
      124 GETTABLEKS                       R7 R1 K26 ["HeaderComponentProps"]
      126 GETTABLEKS                       R6 R7 K27 ["Size"]
      128 JUMPIF                           R6 ; [+11]
      129 NAMECALL                         R6 R0 K28 ["_computeHeaderComponentFitWidth"]
      131 CALL                             R6 1 1
      132 GETIMPORT                        R7 K30 [UDim2.new]
      134 LOADN                            R8 1
      135 MINUS                            R9 R6
      136 LOADN                            R10 1
      137 LOADN                            R11 0
      138 CALL                             R7 4 1
      139 MOVE                             R5 R7
      140 GETUPVAL                         R6 7
      141 GETTABLEKS                       R7 R1 K26 ["HeaderComponentProps"]
      143 DUPTABLE                         R8 K31 [{"LayoutOrder", "Size"}]
      144 NAMECALL                         R9 R3 K7 ["getNextOrder"]
      146 CALL                             R9 1 1
      147 SETTABLEKS                       R9 R8 K8 ["LayoutOrder"]
      149 SETTABLEKS                       R5 R8 K27 ["Size"]
      151 CALL                             R6 2 1
      152 GETUPVAL                         R8 2
      153 GETTABLEKS                       R7 R8 K6 ["createElement"]
      155 GETTABLEKS                       R8 R1 K25 ["HeaderComponent"]
      157 MOVE                             R9 R6
      158 CALL                             R7 2 1
      159 SETTABLEKS                       R7 R4 K25 ["HeaderComponent"]
      161 LOADNIL                          R5
      162 GETTABLEKS                       R6 R1 K27 ["Size"]
      164 JUMPIFNOT                        R6 ; [+3]
      165 GETTABLEKS                       R5 R1 K27 ["Size"]
      167 JUMP                             ; [+43]
      168 GETUPVAL                         R6 0
      169 JUMPIF                           R6 ; [+41]
      170 GETTABLEKS                       R5 R2 K27 ["Size"]
      172 GETTABLEKS                       R6 R2 K32 ["Height"]
      174 FASTCALL1                        TYPEOF R6 ; [+3]
      175 MOVE                             R8 R6
      176 GETIMPORT                        R7 K34 [typeof]
      178 CALL                             R7 1 1
      179 JUMPIFNOTEQKS                    R7 K35 ["number"] ; [+15]
      181 GETIMPORT                        R7 K30 [UDim2.new]
      183 GETTABLEKS                       R9 R2 K27 ["Size"]
      185 GETTABLEKS                       R8 R9 K36 ["X"]
      187 GETIMPORT                        R9 K38 [UDim.new]
      189 LOADN                            R10 0
      190 MOVE                             R11 R6
      191 CALL                             R9 2 -1
      192 CALL                             R7 -1 1
      193 MOVE                             R5 R7
      194 JUMP                             ; [+16]
      195 FASTCALL1                        TYPEOF R6 ; [+3]
      196 MOVE                             R8 R6
      197 GETIMPORT                        R7 K34 [typeof]
      199 CALL                             R7 1 1
      200 JUMPIFNOTEQKS                    R7 K37 ["UDim"] ; [+10]
      202 GETIMPORT                        R7 K30 [UDim2.new]
      204 GETTABLEKS                       R9 R2 K27 ["Size"]
      206 GETTABLEKS                       R8 R9 K36 ["X"]
      208 MOVE                             R9 R6
      209 CALL                             R7 2 1
      210 MOVE                             R5 R7
      211 GETUPVAL                         R7 0
      212 JUMPIFNOT                        R7 ; [+10]
      213 GETUPVAL                         R6 8
      214 MOVE                             R7 R2
      215 NEWTABLE                         R8 0 2
      217 LOADK                            R9 K10 ["Arrow"]
      218 LOADK                            R10 K16 ["Text"]
      219 SETLIST                          R8 R9 2 [1]
      221 CALL                             R6 2 1
      222 JUMP                             ; [+1]
      223 LOADNIL                          R6
      224 GETTABLEKS                       R8 R1 K39 ["PutHeaderLast"]
      226 JUMPIFNOT                        R8 ; [+2]
      227 LOADN                            R7 2
      228 JUMP                             ; [+1]
      229 LOADN                            R7 1
      230 GETUPVAL                         R9 2
      231 GETTABLEKS                       R8 R9 K6 ["createElement"]
      233 GETUPVAL                         R9 9
      234 GETUPVAL                         R11 0
      235 JUMPIFNOT                        R11 ; [+14]
      236 NEWTABLE                         R10 4 0
      238 SETTABLEKS                       R7 R10 K8 ["LayoutOrder"]
      240 GETTABLEKS                       R11 R1 K40 ["OnExpandedChanged"]
      242 SETTABLEKS                       R11 R10 K41 ["OnClick"]
      244 GETUPVAL                         R12 4
      245 GETTABLEKS                       R11 R12 K9 ["Tag"]
      247 LOADK                            R12 K42 ["Header X-Fit X-RowM X-Middle"]
      248 SETTABLE                         R12 R10 R11
      249 JUMP                             ; [+31]
      250 DUPTABLE                         R10 K48 [{"HorizontalAlignment", "LayoutOrder", "Layout", "OnClick", "Padding", "Size", "Style", "Spacing", "VerticalAlignment"}]
      251 GETTABLEKS                       R11 R2 K43 ["HorizontalAlignment"]
      253 SETTABLEKS                       R11 R10 K43 ["HorizontalAlignment"]
      255 SETTABLEKS                       R7 R10 K8 ["LayoutOrder"]
      257 GETIMPORT                        R11 K51 [Enum.FillDirection.Horizontal]
      259 SETTABLEKS                       R11 R10 K44 ["Layout"]
      261 GETTABLEKS                       R11 R1 K40 ["OnExpandedChanged"]
      263 SETTABLEKS                       R11 R10 K41 ["OnClick"]
      265 GETTABLEKS                       R11 R2 K45 ["Padding"]
      267 SETTABLEKS                       R11 R10 K45 ["Padding"]
      269 SETTABLEKS                       R5 R10 K27 ["Size"]
      271 SETTABLEKS                       R6 R10 K1 ["Style"]
      273 GETTABLEKS                       R11 R2 K46 ["Spacing"]
      275 SETTABLEKS                       R11 R10 K46 ["Spacing"]
      277 GETTABLEKS                       R11 R2 K47 ["VerticalAlignment"]
      279 SETTABLEKS                       R11 R10 K47 ["VerticalAlignment"]
      281 MOVE                             R11 R4
      282 CALL                             R8 3 -1
      283 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TextService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R2 K5 [script]
        9 LOADK                            R4 K6 ["UI"]
       10 NAMECALL                         R2 R2 K7 ["FindFirstAncestor"]
       12 CALL                             R2 2 1
       13 GETTABLEKS                       R1 R2 K8 ["Parent"]
       15 GETIMPORT                        R2 K10 [require]
       17 GETTABLEKS                       R4 R1 K8 ["Parent"]
       19 GETTABLEKS                       R3 R4 K11 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K10 [require]
       24 GETTABLEKS                       R5 R1 K6 ["UI"]
       26 GETTABLEKS                       R4 R5 K12 ["ContextServices"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K13 ["withContext"]
       31 GETTABLEKS                       R6 R1 K8 ["Parent"]
       33 LOADK                            R8 K14 ["React"]
       34 NAMECALL                         R6 R6 K15 ["FindFirstChild"]
       36 CALL                             R6 2 1
       37 JUMPIFNOT                        R6 ; [+8]
       38 GETIMPORT                        R5 K10 [require]
       40 GETTABLEKS                       R7 R1 K8 ["Parent"]
       42 GETTABLEKS                       R6 R7 K14 ["React"]
       44 CALL                             R5 1 1
       45 JUMP                             ; [+1]
       46 LOADNIL                          R5
       47 GETIMPORT                        R6 K10 [require]
       49 GETTABLEKS                       R8 R1 K16 ["Styling"]
       51 GETTABLEKS                       R7 R8 K17 ["supportsStyleSheets"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K10 [require]
       56 GETTABLEKS                       R9 R1 K16 ["Styling"]
       58 GETTABLEKS                       R8 R9 K18 ["joinTags"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K10 [require]
       63 GETTABLEKS                       R12 R1 K6 ["UI"]
       65 GETTABLEKS                       R11 R12 K19 ["Components"]
       67 GETTABLEKS                       R10 R11 K20 ["TextLabel"]
       69 GETTABLEKS                       R9 R10 K21 ["styles"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K10 [require]
       74 GETIMPORT                        R11 K5 [script]
       76 GETTABLEKS                       R10 R11 K21 ["styles"]
       78 CALL                             R9 1 1
       79 LOADK                            R12 K22 ["ArrowSize"]
       80 NAMECALL                         R10 R9 K23 ["GetAttribute"]
       82 CALL                             R10 2 1
       83 LOADK                            R13 K24 ["Spacing"]
       84 NAMECALL                         R11 R9 K23 ["GetAttribute"]
       86 CALL                             R11 2 1
       87 GETIMPORT                        R12 K10 [require]
       89 GETTABLEKS                       R15 R1 K6 ["UI"]
       91 GETTABLEKS                       R14 R15 K19 ["Components"]
       93 GETTABLEKS                       R13 R14 K25 ["Image"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K10 [require]
       98 GETTABLEKS                       R16 R1 K6 ["UI"]
      100 GETTABLEKS                       R15 R16 K19 ["Components"]
      102 GETTABLEKS                       R14 R15 K26 ["Pane"]
      104 CALL                             R13 1 1
      105 GETIMPORT                        R14 K10 [require]
      107 GETTABLEKS                       R17 R1 K6 ["UI"]
      109 GETTABLEKS                       R16 R17 K19 ["Components"]
      111 GETTABLEKS                       R15 R16 K20 ["TextLabel"]
      113 CALL                             R14 1 1
      114 GETIMPORT                        R15 K10 [require]
      116 GETTABLEKS                       R17 R1 K27 ["Util"]
      118 GETTABLEKS                       R16 R17 K28 ["prioritize"]
      120 CALL                             R15 1 1
      121 GETIMPORT                        R16 K10 [require]
      123 GETTABLEKS                       R18 R1 K27 ["Util"]
      125 GETTABLEKS                       R17 R18 K29 ["LayoutOrderIterator"]
      127 CALL                             R16 1 1
      128 GETIMPORT                        R17 K10 [require]
      130 GETTABLEKS                       R19 R1 K27 ["Util"]
      132 GETTABLEKS                       R18 R19 K30 ["StyleModifier"]
      134 CALL                             R17 1 1
      135 GETIMPORT                        R18 K10 [require]
      137 GETTABLEKS                       R20 R1 K27 ["Util"]
      139 GETTABLEKS                       R19 R20 K31 ["Typecheck"]
      141 CALL                             R18 1 1
      142 GETIMPORT                        R19 K10 [require]
      144 GETTABLEKS                       R21 R1 K8 ["Parent"]
      146 GETTABLEKS                       R20 R21 K32 ["Dash"]
      148 CALL                             R19 1 1
      149 GETTABLEKS                       R20 R19 K33 ["join"]
      151 GETTABLEKS                       R21 R19 K34 ["omit"]
      153 GETIMPORT                        R22 K37 [Vector2.new]
      155 CALL                             R22 0 1
      156 GETTABLEKS                       R23 R2 K38 ["PureComponent"]
      158 LOADK                            R25 K39 ["ExpandablePane"]
      159 NAMECALL                         R23 R23 K40 ["extend"]
      161 CALL                             R23 2 1
      162 GETTABLEKS                       R24 R18 K41 ["wrap"]
      164 MOVE                             R25 R23
      165 GETIMPORT                        R26 K5 [script]
      167 CALL                             R24 2 0
      168 MOVE                             R24 R20
      169 DUPTABLE                         R25 K50 [{"AlwaysExpanded", "AutomaticSize", "Expanded", "HeaderComponentProps", "Layout", "HorizontalAlignment", "VerticalAlignment", "PutHeaderLast"}]
      170 LOADB                            R26 0
      171 SETTABLEKS                       R26 R25 K42 ["AlwaysExpanded"]
      173 JUMPIFNOT                        R6 ; [+2]
      174 LOADNIL                          R26
      175 JUMP                             ; [+2]
      176 GETIMPORT                        R26 K53 [Enum.AutomaticSize.Y]
      178 SETTABLEKS                       R26 R25 K43 ["AutomaticSize"]
      180 LOADB                            R26 0
      181 SETTABLEKS                       R26 R25 K44 ["Expanded"]
      183 NEWTABLE                         R26 0 0
      185 SETTABLEKS                       R26 R25 K45 ["HeaderComponentProps"]
      187 JUMPIFNOT                        R6 ; [+2]
      188 LOADNIL                          R26
      189 JUMP                             ; [+2]
      190 GETIMPORT                        R26 K56 [Enum.FillDirection.Vertical]
      192 SETTABLEKS                       R26 R25 K46 ["Layout"]
      194 JUMPIFNOT                        R6 ; [+2]
      195 LOADNIL                          R26
      196 JUMP                             ; [+2]
      197 GETIMPORT                        R26 K58 [Enum.HorizontalAlignment.Center]
      199 SETTABLEKS                       R26 R25 K47 ["HorizontalAlignment"]
      201 JUMPIFNOT                        R6 ; [+2]
      202 LOADNIL                          R26
      203 JUMP                             ; [+2]
      204 GETIMPORT                        R26 K59 [Enum.VerticalAlignment.Center]
      206 SETTABLEKS                       R26 R25 K48 ["VerticalAlignment"]
      208 LOADB                            R26 0
      209 SETTABLEKS                       R26 R25 K49 ["PutHeaderLast"]
      211 JUMPIFNOT                        R6 ; [+7]
      212 NEWTABLE                         R26 1 0
      214 GETTABLEKS                       R27 R5 K60 ["Tag"]
      216 LOADK                            R28 K61 ["X-Pad X-ColumnM X-FitY"]
      217 SETTABLE                         R28 R26 R27
      218 JUMP                             ; [+1]
      219 LOADNIL                          R26
      220 CALL                             R24 2 1
      221 SETTABLEKS                       R24 R23 K62 ["defaultProps"]
      223 DUPCLOSURE                       R24 K63 [PROTO_0]
      224 CAPTURE                          VAL R7
      225 SETTABLEKS                       R24 R23 K64 ["getTagFromDeprecatedProps"]
      227 NEWCLOSURE                       R24 P1
      228 CAPTURE                          VAL R6
      229 CAPTURE                          VAL R5
      230 CAPTURE                          VAL R7
      231 CAPTURE                          REF R23
      232 CAPTURE                          VAL R20
      233 CAPTURE                          VAL R21
      234 CAPTURE                          VAL R2
      235 CAPTURE                          VAL R15
      236 CAPTURE                          VAL R13
      237 SETTABLEKS                       R24 R23 K65 ["render"]
      239 DUPCLOSURE                       R24 K66 [PROTO_2]
      240 CAPTURE                          VAL R6
      241 CAPTURE                          VAL R10
      242 CAPTURE                          VAL R11
      243 CAPTURE                          VAL R8
      244 CAPTURE                          VAL R0
      245 CAPTURE                          VAL R22
      246 SETTABLEKS                       R24 R23 K67 ["_computeHeaderComponentFitWidth"]
      248 DUPCLOSURE                       R24 K68 [PROTO_3]
      249 CAPTURE                          VAL R6
      250 CAPTURE                          VAL R16
      251 CAPTURE                          VAL R2
      252 CAPTURE                          VAL R12
      253 CAPTURE                          VAL R5
      254 CAPTURE                          VAL R17
      255 CAPTURE                          VAL R14
      256 CAPTURE                          VAL R20
      257 CAPTURE                          VAL R21
      258 CAPTURE                          VAL R13
      259 SETTABLEKS                       R24 R23 K69 ["_renderHeader"]
      261 JUMPIF                           R6 ; [+10]
      262 MOVE                             R24 R4
      263 DUPTABLE                         R25 K71 [{"Stylizer"}]
      264 GETTABLEKS                       R26 R3 K70 ["Stylizer"]
      266 SETTABLEKS                       R26 R25 K70 ["Stylizer"]
      268 CALL                             R24 1 1
      269 MOVE                             R25 R23
      270 CALL                             R24 1 1
      271 MOVE                             R23 R24
      272 CLOSEUPVALS                      R23
      273 RETURN                           R23 1
