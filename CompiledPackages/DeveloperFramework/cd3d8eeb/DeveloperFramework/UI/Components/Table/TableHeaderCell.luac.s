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
       22 GETUPVAL                         R10 0
       23 GETTABLEKS                       R10 R10 K9 ["createElement"]
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
       44 GETUPVAL                         R14 4
       45 GETTABLEKS                       R14 R14 K17 ["Tag"]
       47 GETUPVAL                         R15 5
       48 LOADK                            R16 K18 ["Main X-PadS"]
       49 JUMPIFNOTEQKS                    R9 K19 ["modern"] ; [+3]
       51 LOADK                            R17 K20 ["X-Transparent"]
       52 JUMP                             ; [+1]
       53 LOADK                            R17 K21 ["X-Border"]
       54 CALL                             R15 2 1
       55 SETTABLE                         R15 R13 R14
       56 JUMP                             ; [+29]
       57 DUPTABLE                         R13 K28 [{["LayoutOrder"], ["BorderColor3"], ["BorderSizePixel"] = 1, ["Padding"], ["Style"] = "SubtleBox", ["StyleModifier"], ["Size"]}]
       58 SETTABLEKS                       R5 R13 K10 ["LayoutOrder"]
       60 GETTABLEKS                       R14 R6 K29 ["Border"]
       62 SETTABLEKS                       R14 R13 K22 ["BorderColor3"]
       64 GETTABLEKS                       R14 R6 K30 ["HeaderCellPadding"]
       66 SETTABLEKS                       R14 R13 K25 ["Padding"]
       68 JUMPIFNOT                        R7 ; [+3]
       69 GETTABLEKS                       R14 R1 K27 ["StyleModifier"]
       71 JUMPIF                           R14 ; [+1]
       72 LOADNIL                          R14
       73 SETTABLEKS                       R14 R13 K27 ["StyleModifier"]
       75 GETIMPORT                        R14 K13 [UDim2.new]
       77 GETTABLEKS                       R15 R4 K14 ["Scale"]
       79 GETTABLEKS                       R16 R4 K15 ["Offset"]
       81 LOADN                            R17 1
       82 LOADN                            R18 0
       83 CALL                             R14 4 1
       84 SETTABLEKS                       R14 R13 K16 ["Size"]
       86 GETTABLEKS                       R14 R1 K31 ["WrapperProps"]
       88 CALL                             R12 2 1
       89 DUPTABLE                         R13 K34 [{"Text", "Icon", "Tooltip"}]
       90 GETUPVAL                         R14 0
       91 GETTABLEKS                       R14 R14 K9 ["createElement"]
       93 GETUPVAL                         R15 6
       94 GETUPVAL                         R17 3
       95 JUMPIFNOT                        R17 ; [+29]
       96 NEWTABLE                         R16 4 0
       98 SETTABLEKS                       R2 R16 K32 ["Text"]
      100 GETUPVAL                         R17 4
      101 GETTABLEKS                       R17 R17 K17 ["Tag"]
      103 GETUPVAL                         R18 5
      104 LOADK                            R19 K35 ["Left Truncate"]
      105 JUMPIFNOTEQKS                    R9 K19 ["modern"] ; [+3]
      107 LOADK                            R20 K36 ["BuilderSans Bold"]
      108 JUMP                             ; [+1]
      109 LOADNIL                          R20
      110 CALL                             R18 2 1
      111 SETTABLE                         R18 R16 R17
      112 GETIMPORT                        R17 K13 [UDim2.new]
      114 LOADN                            R18 1
      115 JUMPIFNOT                        R3 ; [+2]
      116 LOADN                            R19 -18
      117 JUMP                             ; [+1]
      118 LOADN                            R19 0
      119 LOADN                            R20 1
      120 LOADN                            R21 0
      121 CALL                             R17 4 1
      122 SETTABLEKS                       R17 R16 K16 ["Size"]
      124 JUMP                             ; [+23]
      125 DUPTABLE                         R16 K39 [{"Text", "Size", "TextXAlignment", "TextTruncate"}]
      126 SETTABLEKS                       R2 R16 K32 ["Text"]
      128 GETIMPORT                        R17 K13 [UDim2.new]
      130 LOADN                            R18 1
      131 JUMPIFNOT                        R3 ; [+2]
      132 LOADN                            R19 -18
      133 JUMP                             ; [+1]
      134 LOADN                            R19 0
      135 LOADN                            R20 1
      136 LOADN                            R21 0
      137 CALL                             R17 4 1
      138 SETTABLEKS                       R17 R16 K16 ["Size"]
      140 GETIMPORT                        R17 K42 [Enum.TextXAlignment.Left]
      142 SETTABLEKS                       R17 R16 K37 ["TextXAlignment"]
      144 GETIMPORT                        R17 K44 [Enum.TextTruncate.AtEnd]
      146 SETTABLEKS                       R17 R16 K38 ["TextTruncate"]
      148 CALL                             R14 2 1
      149 SETTABLEKS                       R14 R13 K32 ["Text"]
      151 MOVE                             R14 R3
      152 JUMPIFNOT                        R14 ; [+59]
      153 GETUPVAL                         R14 0
      154 GETTABLEKS                       R14 R14 K9 ["createElement"]
      156 GETUPVAL                         R15 7
      157 GETUPVAL                         R16 8
      158 DUPTABLE                         R17 K51 [{["ImageColor3"], ["Image"] = "rbxasset://textures/DeveloperFramework/Table/sort_arrow.png", ["Size"], ["Position"], ["Rotation"], ["AnchorPoint"]}]
      159 GETUPVAL                         R19 3
      160 JUMPIFNOT                        R19 ; [+2]
      161 LOADNIL                          R18
      162 JUMP                             ; [+2]
      163 GETTABLEKS                       R18 R6 K52 ["IconColor"]
      165 SETTABLEKS                       R18 R17 K45 ["ImageColor3"]
      167 GETIMPORT                        R18 K54 [UDim2.fromOffset]
      169 LOADN                            R19 6
      170 LOADN                            R20 8
      171 CALL                             R18 2 1
      172 SETTABLEKS                       R18 R17 K16 ["Size"]
      174 GETIMPORT                        R18 K13 [UDim2.new]
      176 LOADN                            R19 1
      177 LOADN                            R20 -10
      178 LOADK                            R21 K55 [0.5]
      179 LOADN                            R22 -4
      180 CALL                             R18 4 1
      181 SETTABLEKS                       R18 R17 K48 ["Position"]
      183 GETIMPORT                        R19 K58 [Enum.SortDirection.Descending]
      185 JUMPIFNOTEQ                      R3 R19 ; [+3]
      187 LOADN                            R18 -90
      188 JUMP                             ; [+1]
      189 LOADN                            R18 90
      190 SETTABLEKS                       R18 R17 K49 ["Rotation"]
      192 GETIMPORT                        R18 K60 [Vector2.new]
      194 LOADN                            R19 1
      195 LOADN                            R20 0
      196 CALL                             R18 2 1
      197 SETTABLEKS                       R18 R17 K50 ["AnchorPoint"]
      199 GETUPVAL                         R19 3
      200 JUMPIFNOT                        R19 ; [+8]
      201 NEWTABLE                         R18 1 0
      203 GETUPVAL                         R19 4
      204 GETTABLEKS                       R19 R19 K17 ["Tag"]
      206 LOADK                            R20 K61 ["Primary"]
      207 SETTABLE                         R20 R18 R19
      208 JUMP                             ; [+1]
      209 LOADNIL                          R18
      210 CALL                             R16 2 -1
      211 CALL                             R14 -1 1
      212 SETTABLEKS                       R14 R13 K33 ["Icon"]
      214 MOVE                             R14 R8
      215 JUMPIFNOT                        R14 ; [+9]
      216 GETUPVAL                         R14 0
      217 GETTABLEKS                       R14 R14 K9 ["createElement"]
      219 GETUPVAL                         R15 9
      220 DUPTABLE                         R16 K62 [{"Text"}]
      221 OR                               R17 R8 R2
      222 SETTABLEKS                       R17 R16 K32 ["Text"]
      224 CALL                             R14 2 1
      225 SETTABLEKS                       R14 R13 K7 ["Tooltip"]
      227 CALL                             R10 3 -1
      228 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["Dash"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["assign"]
       25 GETTABLEKS                       R4 R2 K10 ["join"]
       27 GETTABLEKS                       R5 R0 K2 ["UI"]
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R5 K11 ["Components"]
       33 GETTABLEKS                       R7 R7 K12 ["Pane"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R8 R5 K11 ["Components"]
       40 GETTABLEKS                       R8 R8 K13 ["TextLabel"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K6 [require]
       45 GETTABLEKS                       R9 R5 K11 ["Components"]
       47 GETTABLEKS                       R9 R9 K14 ["Image"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K6 [require]
       52 GETTABLEKS                       R10 R5 K11 ["Components"]
       54 GETTABLEKS                       R10 R10 K15 ["Tooltip"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K6 [require]
       59 GETTABLEKS                       R11 R0 K16 ["Wrappers"]
       61 GETTABLEKS                       R11 R11 K17 ["withControl"]
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
       79 GETTABLEKS                       R13 R0 K4 ["Parent"]
       81 GETTABLEKS                       R13 R13 K21 ["React"]
       83 CALL                             R12 1 1
       84 JUMP                             ; [+1]
       85 LOADNIL                          R12
       86 GETIMPORT                        R13 K6 [require]
       88 GETTABLEKS                       R14 R0 K23 ["Styling"]
       90 GETTABLEKS                       R14 R14 K24 ["supportsStyleSheets"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K6 [require]
       95 GETTABLEKS                       R15 R0 K23 ["Styling"]
       97 GETTABLEKS                       R15 R15 K25 ["joinTags"]
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
