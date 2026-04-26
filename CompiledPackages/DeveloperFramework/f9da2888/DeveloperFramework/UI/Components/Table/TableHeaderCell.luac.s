PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Name"]
        4 GETTABLEKS                       R3 R1 K2 ["Order"]
        6 GETTABLEKS                       R4 R1 K3 ["Width"]
        8 GETTABLEKS                       R5 R1 K4 ["ColumnIndex"]
       10 GETTABLEKS                       R6 R1 K5 ["Style"]
       12 GETTABLEKS                       R8 R1 K6 ["OnPress"]
       14 JUMPIFNOTEQKNIL                  R8 ; [+2]
       16 LOADB                            R7 0 +1
       17 LOADB                            R7 1
       18 GETTABLEKS                       R8 R1 K7 ["Tooltip"]
       20 GETTABLEKS                       R9 R1 K8 ["Variant"]
       22 GETUPVAL                         R11 0
       23 GETTABLEKS                       R10 R11 K9 ["createElement"]
       25 GETUPVAL                         R11 1
       26 GETUPVAL                         R12 2
       27 GETUPVAL                         R14 3
       28 JUMPIFNOT                        R14 ; [+28]
       29 NEWTABLE                         R13 4 0
       31 SETTABLEKS                       R5 R13 K10 ["LayoutOrder"]
       33 GETIMPORT                        R14 K13 [UDim2.new]
       35 GETTABLEKS                       R15 R4 K14 ["Scale"]
       37 GETTABLEKS                       R16 R4 K15 ["Offset"]
       39 LOADN                            R17 1
       40 LOADN                            R18 0
       41 CALL                             R14 4 1
       42 SETTABLEKS                       R14 R13 K16 ["Size"]
       44 GETUPVAL                         R15 4
       45 GETTABLEKS                       R14 R15 K17 ["Tag"]
       47 GETUPVAL                         R15 5
       48 LOADK                            R16 K18 ["Main X-PadS"]
       49 JUMPIFNOTEQKS                    R9 K19 ["modern"] ; [+3]
       51 LOADK                            R17 K20 ["X-Transparent"]
       52 JUMP                             ; [+1]
       53 LOADK                            R17 K21 ["X-Border"]
       54 CALL                             R15 2 1
       55 SETTABLE                         R15 R13 R14
       56 JUMP                             ; [+35]
       57 DUPTABLE                         R13 K26 [{"LayoutOrder", "BorderColor3", "BorderSizePixel", "Padding", "Style", "StyleModifier", "Size"}]
       58 SETTABLEKS                       R5 R13 K10 ["LayoutOrder"]
       60 GETTABLEKS                       R14 R6 K27 ["Border"]
       62 SETTABLEKS                       R14 R13 K22 ["BorderColor3"]
       64 LOADN                            R14 1
       65 SETTABLEKS                       R14 R13 K23 ["BorderSizePixel"]
       67 GETTABLEKS                       R14 R6 K28 ["HeaderCellPadding"]
       69 SETTABLEKS                       R14 R13 K24 ["Padding"]
       71 LOADK                            R14 K29 ["SubtleBox"]
       72 SETTABLEKS                       R14 R13 K5 ["Style"]
       74 JUMPIFNOT                        R7 ; [+3]
       75 GETTABLEKS                       R14 R1 K25 ["StyleModifier"]
       77 JUMPIF                           R14 ; [+1]
       78 LOADNIL                          R14
       79 SETTABLEKS                       R14 R13 K25 ["StyleModifier"]
       81 GETIMPORT                        R14 K13 [UDim2.new]
       83 GETTABLEKS                       R15 R4 K14 ["Scale"]
       85 GETTABLEKS                       R16 R4 K15 ["Offset"]
       87 LOADN                            R17 1
       88 LOADN                            R18 0
       89 CALL                             R14 4 1
       90 SETTABLEKS                       R14 R13 K16 ["Size"]
       92 GETTABLEKS                       R14 R1 K30 ["WrapperProps"]
       94 CALL                             R12 2 1
       95 DUPTABLE                         R13 K33 [{"Text", "Icon", "Tooltip"}]
       96 GETUPVAL                         R15 0
       97 GETTABLEKS                       R14 R15 K9 ["createElement"]
       99 GETUPVAL                         R15 6
      100 GETUPVAL                         R17 3
      101 JUMPIFNOT                        R17 ; [+29]
      102 NEWTABLE                         R16 4 0
      104 SETTABLEKS                       R2 R16 K31 ["Text"]
      106 GETUPVAL                         R18 4
      107 GETTABLEKS                       R17 R18 K17 ["Tag"]
      109 GETUPVAL                         R18 5
      110 LOADK                            R19 K34 ["Left Truncate"]
      111 JUMPIFNOTEQKS                    R9 K19 ["modern"] ; [+3]
      113 LOADK                            R20 K35 ["BuilderSans Bold"]
      114 JUMP                             ; [+1]
      115 LOADNIL                          R20
      116 CALL                             R18 2 1
      117 SETTABLE                         R18 R16 R17
      118 GETIMPORT                        R17 K13 [UDim2.new]
      120 LOADN                            R18 1
      121 JUMPIFNOT                        R3 ; [+2]
      122 LOADN                            R19 238
      123 JUMP                             ; [+1]
      124 LOADN                            R19 0
      125 LOADN                            R20 1
      126 LOADN                            R21 0
      127 CALL                             R17 4 1
      128 SETTABLEKS                       R17 R16 K16 ["Size"]
      130 JUMP                             ; [+23]
      131 DUPTABLE                         R16 K38 [{"Text", "Size", "TextXAlignment", "TextTruncate"}]
      132 SETTABLEKS                       R2 R16 K31 ["Text"]
      134 GETIMPORT                        R17 K13 [UDim2.new]
      136 LOADN                            R18 1
      137 JUMPIFNOT                        R3 ; [+2]
      138 LOADN                            R19 238
      139 JUMP                             ; [+1]
      140 LOADN                            R19 0
      141 LOADN                            R20 1
      142 LOADN                            R21 0
      143 CALL                             R17 4 1
      144 SETTABLEKS                       R17 R16 K16 ["Size"]
      146 GETIMPORT                        R17 K41 [Enum.TextXAlignment.Left]
      148 SETTABLEKS                       R17 R16 K36 ["TextXAlignment"]
      150 GETIMPORT                        R17 K43 [Enum.TextTruncate.AtEnd]
      152 SETTABLEKS                       R17 R16 K37 ["TextTruncate"]
      154 CALL                             R14 2 1
      155 SETTABLEKS                       R14 R13 K31 ["Text"]
      157 MOVE                             R14 R3
      158 JUMPIFNOT                        R14 ; [+62]
      159 GETUPVAL                         R15 0
      160 GETTABLEKS                       R14 R15 K9 ["createElement"]
      162 GETUPVAL                         R15 7
      163 GETUPVAL                         R16 8
      164 DUPTABLE                         R17 K49 [{"ImageColor3", "Image", "Size", "Position", "Rotation", "AnchorPoint"}]
      165 GETUPVAL                         R19 3
      166 JUMPIFNOT                        R19 ; [+2]
      167 LOADNIL                          R18
      168 JUMP                             ; [+2]
      169 GETTABLEKS                       R18 R6 K50 ["IconColor"]
      171 SETTABLEKS                       R18 R17 K44 ["ImageColor3"]
      173 LOADK                            R18 K51 ["rbxasset://textures/DeveloperFramework/Table/sort_arrow.png"]
      174 SETTABLEKS                       R18 R17 K45 ["Image"]
      176 GETIMPORT                        R18 K53 [UDim2.fromOffset]
      178 LOADN                            R19 6
      179 LOADN                            R20 8
      180 CALL                             R18 2 1
      181 SETTABLEKS                       R18 R17 K16 ["Size"]
      183 GETIMPORT                        R18 K13 [UDim2.new]
      185 LOADN                            R19 1
      186 LOADN                            R20 246
      187 LOADK                            R21 K54 [0.5]
      188 LOADN                            R22 252
      189 CALL                             R18 4 1
      190 SETTABLEKS                       R18 R17 K46 ["Position"]
      192 GETIMPORT                        R19 K57 [Enum.SortDirection.Descending]
      194 JUMPIFNOTEQ                      R3 R19 ; [+3]
      196 LOADN                            R18 166
      197 JUMP                             ; [+1]
      198 LOADN                            R18 90
      199 SETTABLEKS                       R18 R17 K47 ["Rotation"]
      201 GETIMPORT                        R18 K59 [Vector2.new]
      203 LOADN                            R19 1
      204 LOADN                            R20 0
      205 CALL                             R18 2 1
      206 SETTABLEKS                       R18 R17 K48 ["AnchorPoint"]
      208 GETUPVAL                         R19 3
      209 JUMPIFNOT                        R19 ; [+8]
      210 NEWTABLE                         R18 1 0
      212 GETUPVAL                         R20 4
      213 GETTABLEKS                       R19 R20 K17 ["Tag"]
      215 LOADK                            R20 K60 ["Primary"]
      216 SETTABLE                         R20 R18 R19
      217 JUMP                             ; [+1]
      218 LOADNIL                          R18
      219 CALL                             R16 2 -1
      220 CALL                             R14 -1 1
      221 SETTABLEKS                       R14 R13 K32 ["Icon"]
      223 MOVE                             R14 R8
      224 JUMPIFNOT                        R14 ; [+9]
      225 GETUPVAL                         R15 0
      226 GETTABLEKS                       R14 R15 K9 ["createElement"]
      228 GETUPVAL                         R15 9
      229 DUPTABLE                         R16 K61 [{"Text"}]
      230 OR                               R17 R8 R2
      231 SETTABLEKS                       R17 R16 K31 ["Text"]
      233 CALL                             R14 2 1
      234 SETTABLEKS                       R14 R13 K7 ["Tooltip"]
      236 CALL                             R10 3 -1
      237 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R4 K8 ["Dash"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["assign"]
       25 GETTABLEKS                       R4 R2 K10 ["join"]
       27 GETTABLEKS                       R5 R0 K2 ["UI"]
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R8 R5 K11 ["Components"]
       33 GETTABLEKS                       R7 R8 K12 ["Pane"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R9 R5 K11 ["Components"]
       40 GETTABLEKS                       R8 R9 K13 ["TextLabel"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K6 [require]
       45 GETTABLEKS                       R10 R5 K11 ["Components"]
       47 GETTABLEKS                       R9 R10 K14 ["Image"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K6 [require]
       52 GETTABLEKS                       R11 R5 K11 ["Components"]
       54 GETTABLEKS                       R10 R11 K15 ["Tooltip"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K6 [require]
       59 GETTABLEKS                       R12 R0 K16 ["Wrappers"]
       61 GETTABLEKS                       R11 R12 K17 ["withControl"]
       63 CALL                             R10 1 1
       64 GETTABLEKS                       R11 R1 K18 ["PureComponent"]
       66 LOADK                            R13 K19 ["TableHeaderCell"]
       67 NAMECALL                         R11 R11 K20 ["extend"]
       69 CALL                             R11 2 1
       70 GETTABLEKS                       R13 R0 K4 ["Parent"]
       72 LOADK                            R15 K21 ["React"]
       73 NAMECALL                         R13 R13 K22 ["FindFirstChild"]
       75 CALL                             R13 2 1
       76 JUMPIFNOT                        R13 ; [+8]
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R14 R0 K4 ["Parent"]
       81 GETTABLEKS                       R13 R14 K21 ["React"]
       83 CALL                             R12 1 1
       84 JUMP                             ; [+1]
       85 LOADNIL                          R12
       86 GETIMPORT                        R13 K6 [require]
       88 GETTABLEKS                       R15 R0 K23 ["Styling"]
       90 GETTABLEKS                       R14 R15 K24 ["supportsStyleSheets"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K6 [require]
       95 GETTABLEKS                       R16 R0 K23 ["Styling"]
       97 GETTABLEKS                       R15 R16 K25 ["joinTags"]
       99 CALL                             R14 1 1
      100 DUPCLOSURE                       R15 K26 [PROTO_0]
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R13
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R14
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R9
      111 SETTABLEKS                       R15 R11 K27 ["render"]
      113 MOVE                             R15 R10
      114 MOVE                             R16 R11
      115 CALL                             R15 1 -1
      116 RETURN                           R15 -1
