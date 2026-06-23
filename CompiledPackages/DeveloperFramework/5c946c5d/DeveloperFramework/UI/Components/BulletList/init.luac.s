PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R1 K2 ["ItemOffset"]
        6 GETTABLEKS                       R3 R1 K3 ["MarkerSize"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["numberMin"]
       11 LOADN                            R6 0
       12 CALL                             R5 1 1
       13 MOVE                             R6 R3
       14 CALL                             R5 1 1
       15 FASTCALL2K                       ASSERT R5 K5 ; [+4]
       17 LOADK                            R6 K5 ["MarkerSize style must be a number >= 0"]
       18 GETIMPORT                        R4 K7 [assert]
       20 CALL                             R4 2 0
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K8 ["number"]
       24 MOVE                             R6 R2
       25 CALL                             R5 1 1
       26 FASTCALL2K                       ASSERT R5 K9 ; [+4]
       28 LOADK                            R6 K9 ["ItemOffset style must be a number"]
       29 GETIMPORT                        R4 K7 [assert]
       31 CALL                             R4 2 0
       32 ADD                              R4 R3 R2
       33 RETURN                           R4 1

PROTO_1:
        0 LOADNIL                          R2
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R4 1
        3 FASTCALL1                        TYPE R0 ; [+3]
        4 MOVE                             R6 R0
        5 GETIMPORT                        R5 K1 [type]
        7 CALL                             R5 1 1
        8 JUMPIFNOTEQKS                    R5 K2 ["string"] ; [+40]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R5 R5 K3 ["createElement"]
       13 GETUPVAL                         R6 3
       14 DUPTABLE                         R7 K14 [{"AutomaticSize", "Font", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextTruncate", "TextWrapped", "TextXAlignment"}]
       15 GETIMPORT                        R8 K17 [Enum.AutomaticSize.Y]
       17 SETTABLEKS                       R8 R7 K4 ["AutomaticSize"]
       19 GETUPVAL                         R8 4
       20 SETTABLEKS                       R8 R7 K5 ["Font"]
       22 LOADN                            R8 2
       23 SETTABLEKS                       R8 R7 K6 ["LayoutOrder"]
       25 GETUPVAL                         R8 5
       26 SETTABLEKS                       R8 R7 K7 ["Size"]
       28 SETTABLEKS                       R0 R7 K8 ["Text"]
       30 GETUPVAL                         R8 6
       31 SETTABLEKS                       R8 R7 K9 ["TextColor"]
       33 GETUPVAL                         R8 7
       34 SETTABLEKS                       R8 R7 K10 ["TextSize"]
       36 GETUPVAL                         R8 8
       37 SETTABLEKS                       R8 R7 K11 ["TextTruncate"]
       39 GETUPVAL                         R8 9
       40 SETTABLEKS                       R8 R7 K12 ["TextWrapped"]
       42 GETIMPORT                        R8 K19 [Enum.TextXAlignment.Left]
       44 SETTABLEKS                       R8 R7 K13 ["TextXAlignment"]
       46 CALL                             R5 2 1
       47 MOVE                             R2 R5
       48 JUMP                             ; [+104]
       49 FASTCALL1                        TYPEOF R0 ; [+3]
       50 MOVE                             R6 R0
       51 GETIMPORT                        R5 K21 [typeof]
       53 CALL                             R5 1 1
       54 JUMPIFNOTEQKS                    R5 K22 ["table"] ; [+78]
       56 GETTABLEKS                       R5 R0 K8 ["Text"]
       58 JUMPIFNOT                        R5 ; [+74]
       59 GETUPVAL                         R6 10
       60 GETIMPORT                        R7 K24 [string.format]
       62 LOADK                            R8 K25 ["&%s"]
       63 GETTABLEKS                       R9 R0 K26 ["Style"]
       65 CALL                             R7 2 1
       66 GETTABLE                         R5 R6 R7
       67 MOVE                             R7 R5
       68 GETIMPORT                        R8 K24 [string.format]
       70 LOADK                            R9 K27 ["BulletList Style '%s' was not found"]
       71 GETTABLEKS                       R10 R0 K26 ["Style"]
       73 CALL                             R8 2 -1
       74 FASTCALL                         ASSERT ; [+2]
       75 GETIMPORT                        R6 K29 [assert]
       77 CALL                             R6 -1 0
       78 GETIMPORT                        R6 K32 [UDim2.new]
       80 LOADN                            R7 1
       81 GETTABLEKS                       R9 R5 K33 ["ItemOffset"]
       83 MINUS                            R8 R9
       84 LOADN                            R9 0
       85 LOADN                            R10 0
       86 CALL                             R6 4 1
       87 GETTABLEKS                       R7 R5 K34 ["ItemIndentation"]
       89 OR                               R3 R7 R3
       90 GETTABLEKS                       R7 R5 K35 ["MarkerStyle"]
       92 OR                               R4 R7 R4
       93 GETUPVAL                         R7 2
       94 GETTABLEKS                       R7 R7 K3 ["createElement"]
       96 GETUPVAL                         R8 3
       97 DUPTABLE                         R9 K36 [{"AutomaticSize", "Font", "LayoutOrder", "Size", "Text", "TextColor", "TextWrapped", "TextSize", "TextTruncate", "TextXAlignment"}]
       98 GETIMPORT                        R10 K17 [Enum.AutomaticSize.Y]
      100 SETTABLEKS                       R10 R9 K4 ["AutomaticSize"]
      102 GETUPVAL                         R10 4
      103 SETTABLEKS                       R10 R9 K5 ["Font"]
      105 LOADN                            R10 2
      106 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
      108 SETTABLEKS                       R6 R9 K7 ["Size"]
      110 GETTABLEKS                       R10 R0 K8 ["Text"]
      112 SETTABLEKS                       R10 R9 K8 ["Text"]
      114 GETUPVAL                         R10 6
      115 SETTABLEKS                       R10 R9 K9 ["TextColor"]
      117 GETUPVAL                         R10 9
      118 SETTABLEKS                       R10 R9 K12 ["TextWrapped"]
      120 GETUPVAL                         R10 7
      121 SETTABLEKS                       R10 R9 K10 ["TextSize"]
      123 GETUPVAL                         R10 8
      124 SETTABLEKS                       R10 R9 K11 ["TextTruncate"]
      126 GETIMPORT                        R10 K19 [Enum.TextXAlignment.Left]
      128 SETTABLEKS                       R10 R9 K13 ["TextXAlignment"]
      130 CALL                             R7 2 1
      131 MOVE                             R2 R7
      132 JUMP                             ; [+20]
      133 GETUPVAL                         R5 2
      134 GETTABLEKS                       R5 R5 K3 ["createElement"]
      136 GETUPVAL                         R6 11
      137 DUPTABLE                         R7 K37 [{"AutomaticSize", "LayoutOrder", "Size"}]
      138 GETIMPORT                        R8 K17 [Enum.AutomaticSize.Y]
      140 SETTABLEKS                       R8 R7 K4 ["AutomaticSize"]
      142 LOADN                            R8 2
      143 SETTABLEKS                       R8 R7 K6 ["LayoutOrder"]
      145 GETUPVAL                         R8 5
      146 SETTABLEKS                       R8 R7 K7 ["Size"]
      148 DUPTABLE                         R8 K39 [{"ContentElement"}]
      149 SETTABLEKS                       R0 R8 K38 ["ContentElement"]
      151 CALL                             R5 3 1
      152 MOVE                             R2 R5
      153 GETUPVAL                         R5 2
      154 GETTABLEKS                       R5 R5 K3 ["createElement"]
      156 GETUPVAL                         R6 11
      157 GETUPVAL                         R7 12
      158 GETTABLEKS                       R7 R7 K40 ["join"]
      160 DUPTABLE                         R8 K47 [{"key", "AutomaticSize", "LayoutOrder", "HorizontalAlignment", "VerticalAlignment", "Layout", "Spacing", "Padding"}]
      161 GETUPVAL                         R10 13
      162 JUMPIFNOT                        R10 ; [+8]
      163 GETUPVAL                         R10 14
      164 JUMPIFNOT                        R10 ; [+6]
      165 FASTCALL1                        TOSTRING R1 ; [+3]
      166 MOVE                             R10 R1
      167 GETIMPORT                        R9 K49 [tostring]
      169 CALL                             R9 1 1
      170 JUMP                             ; [+1]
      171 LOADNIL                          R9
      172 SETTABLEKS                       R9 R8 K41 ["key"]
      174 GETIMPORT                        R9 K51 [Enum.AutomaticSize.XY]
      176 SETTABLEKS                       R9 R8 K4 ["AutomaticSize"]
      178 SETTABLEKS                       R1 R8 K6 ["LayoutOrder"]
      180 GETIMPORT                        R9 K52 [Enum.HorizontalAlignment.Left]
      182 SETTABLEKS                       R9 R8 K42 ["HorizontalAlignment"]
      184 GETIMPORT                        R9 K54 [Enum.VerticalAlignment.Top]
      186 SETTABLEKS                       R9 R8 K43 ["VerticalAlignment"]
      188 GETIMPORT                        R9 K57 [Enum.FillDirection.Horizontal]
      190 SETTABLEKS                       R9 R8 K44 ["Layout"]
      192 GETUPVAL                         R9 15
      193 SETTABLEKS                       R9 R8 K45 ["Spacing"]
      195 JUMPIFNOT                        R3 ; [+4]
      196 DUPTABLE                         R9 K58 [{"Left"}]
      197 SETTABLEKS                       R3 R9 K18 ["Left"]
      199 JUMP                             ; [+1]
      200 LOADNIL                          R9
      201 SETTABLEKS                       R9 R8 K46 ["Padding"]
      203 GETUPVAL                         R10 16
      204 JUMPIFNOT                        R10 ; [+8]
      205 NEWTABLE                         R9 1 0
      207 GETUPVAL                         R10 17
      208 GETTABLEKS                       R10 R10 K59 ["Tag"]
      210 LOADK                            R11 K60 ["ListItem"]
      211 SETTABLE                         R11 R9 R10
      212 JUMP                             ; [+2]
      213 NEWTABLE                         R9 0 0
      215 CALL                             R7 2 1
      216 DUPTABLE                         R8 K63 [{"Marker", "Content"}]
      217 GETUPVAL                         R9 2
      218 GETTABLEKS                       R9 R9 K3 ["createElement"]
      220 GETUPVAL                         R10 11
      221 DUPTABLE                         R11 K64 [{"LayoutOrder", "Size"}]
      222 LOADN                            R12 1
      223 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
      225 GETIMPORT                        R12 K66 [UDim2.fromOffset]
      227 GETUPVAL                         R13 18
      228 GETUPVAL                         R14 19
      229 CALL                             R12 2 1
      230 SETTABLEKS                       R12 R11 K7 ["Size"]
      232 DUPTABLE                         R12 K68 [{"Image"}]
      233 GETUPVAL                         R13 2
      234 GETTABLEKS                       R13 R13 K3 ["createElement"]
      236 GETUPVAL                         R14 20
      237 DUPTABLE                         R15 K71 [{"Image", "ImageColor3", "LayoutOrder", "Position", "Size"}]
      238 SETTABLEKS                       R4 R15 K67 ["Image"]
      240 GETUPVAL                         R16 6
      241 SETTABLEKS                       R16 R15 K69 ["ImageColor3"]
      243 LOADN                            R16 1
      244 SETTABLEKS                       R16 R15 K6 ["LayoutOrder"]
      246 GETIMPORT                        R16 K73 [UDim2.fromScale]
      248 LOADN                            R17 0
      249 LOADK                            R18 K74 [0.5]
      250 CALL                             R16 2 1
      251 SETTABLEKS                       R16 R15 K70 ["Position"]
      253 GETIMPORT                        R16 K66 [UDim2.fromOffset]
      255 GETUPVAL                         R17 18
      256 GETUPVAL                         R18 18
      257 CALL                             R16 2 1
      258 SETTABLEKS                       R16 R15 K7 ["Size"]
      260 CALL                             R13 2 1
      261 SETTABLEKS                       R13 R12 K67 ["Image"]
      263 CALL                             R9 3 1
      264 SETTABLEKS                       R9 R8 K61 ["Marker"]
      266 SETTABLEKS                       R2 R8 K62 ["Content"]
      268 CALL                             R5 3 -1
      269 RETURN                           R5 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["TextWrapped"]
        4 GETTABLEKS                       R3 R1 K2 ["TextTruncate"]
        6 GETTABLEKS                       R4 R1 K3 ["Items"]
        8 GETTABLEKS                       R5 R1 K4 ["Stylizer"]
       10 GETTABLEKS                       R6 R5 K5 ["Font"]
       12 GETTABLEKS                       R7 R5 K6 ["ItemIndentation"]
       14 GETTABLEKS                       R8 R5 K7 ["MarkerImage"]
       16 GETTABLEKS                       R9 R5 K8 ["MarkerSize"]
       18 GETTABLEKS                       R10 R5 K9 ["TextColor"]
       20 GETTABLEKS                       R11 R5 K10 ["TextSize"]
       22 GETTABLEKS                       R12 R5 K11 ["LineHeight"]
       24 GETTABLEKS                       R13 R5 K12 ["Padding"]
       26 NAMECALL                         R14 R0 K13 ["calculateItemOffset"]
       28 CALL                             R14 1 1
       29 GETIMPORT                        R15 K16 [UDim2.new]
       31 LOADN                            R16 1
       32 MINUS                            R17 R14
       33 LOADN                            R18 0
       34 LOADN                            R19 0
       35 CALL                             R15 4 1
       36 GETUPVAL                         R17 0
       37 GETTABLEKS                       R17 R17 K17 ["numberMin"]
       39 LOADN                            R18 0
       40 CALL                             R17 1 1
       41 MOVE                             R18 R9
       42 CALL                             R17 1 1
       43 FASTCALL2K                       ASSERT R17 K18 ; [+4]
       45 LOADK                            R18 K18 ["MarkerSize style must be a number >= 0"]
       46 GETIMPORT                        R16 K20 [assert]
       48 CALL                             R16 2 0
       49 GETUPVAL                         R17 0
       50 GETTABLEKS                       R17 R17 K17 ["numberMin"]
       52 LOADN                            R18 0
       53 CALL                             R17 1 1
       54 MOVE                             R18 R11
       55 CALL                             R17 1 1
       56 FASTCALL2K                       ASSERT R17 K21 ; [+4]
       58 LOADK                            R18 K21 ["TextSize style must be a number >= 0"]
       59 GETIMPORT                        R16 K20 [assert]
       61 CALL                             R16 2 0
       62 GETUPVAL                         R16 1
       63 MOVE                             R17 R4
       64 NEWCLOSURE                       R18 P0
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R8
       67 CAPTURE                          UPVAL U2
       68 CAPTURE                          UPVAL U3
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R15
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R11
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R5
       76 CAPTURE                          UPVAL U4
       77 CAPTURE                          UPVAL U5
       78 CAPTURE                          UPVAL U6
       79 CAPTURE                          UPVAL U7
       80 CAPTURE                          VAL R13
       81 CAPTURE                          UPVAL U8
       82 CAPTURE                          UPVAL U9
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R12
       85 CAPTURE                          UPVAL U10
       86 CALL                             R16 2 1
       87 GETTABLEKS                       R17 R1 K22 ["Size"]
       89 GETTABLEKS                       R18 R1 K23 ["Position"]
       91 GETIMPORT                        R19 K27 [Enum.AutomaticSize.XY]
       93 JUMPIFNOT                        R17 ; [+16]
       94 GETTABLEKS                       R20 R17 K28 ["X"]
       96 GETTABLEKS                       R20 R20 K29 ["Scale"]
       98 LOADN                            R21 0
       99 JUMPIFLT                         R21 R20 ; [+8]
      101 GETTABLEKS                       R20 R17 K28 ["X"]
      103 GETTABLEKS                       R20 R20 K30 ["Offset"]
      105 LOADN                            R21 0
      106 JUMPIFNOTLT                      R21 R20 ; [+3]
      108 GETIMPORT                        R19 K32 [Enum.AutomaticSize.Y]
      110 GETUPVAL                         R20 2
      111 GETTABLEKS                       R20 R20 K33 ["createElement"]
      113 GETUPVAL                         R21 4
      114 GETUPVAL                         R22 5
      115 GETTABLEKS                       R22 R22 K34 ["join"]
      117 DUPTABLE                         R23 K39 [{"AutomaticSize", "BackgroundTransparency", "HorizontalAlignment", "Layout", "LayoutOrder", "Position", "Size"}]
      118 SETTABLEKS                       R19 R23 K25 ["AutomaticSize"]
      120 LOADN                            R24 1
      121 SETTABLEKS                       R24 R23 K35 ["BackgroundTransparency"]
      123 GETIMPORT                        R24 K41 [Enum.HorizontalAlignment.Left]
      125 SETTABLEKS                       R24 R23 K36 ["HorizontalAlignment"]
      127 GETIMPORT                        R24 K44 [Enum.FillDirection.Vertical]
      129 SETTABLEKS                       R24 R23 K37 ["Layout"]
      131 GETTABLEKS                       R25 R1 K38 ["LayoutOrder"]
      133 ORK                              R24 R25 K45 [1]
      134 SETTABLEKS                       R24 R23 K38 ["LayoutOrder"]
      136 SETTABLEKS                       R18 R23 K23 ["Position"]
      138 SETTABLEKS                       R17 R23 K22 ["Size"]
      140 GETUPVAL                         R25 8
      141 JUMPIFNOT                        R25 ; [+8]
      142 NEWTABLE                         R24 1 0
      144 GETUPVAL                         R25 9
      145 GETTABLEKS                       R25 R25 K46 ["Tag"]
      147 LOADK                            R26 K47 ["List"]
      148 SETTABLE                         R26 R24 R25
      149 JUMP                             ; [+2]
      150 NEWTABLE                         R24 0 0
      152 CALL                             R22 2 1
      153 MOVE                             R23 R16
      154 CALL                             R20 3 -1
      155 RETURN                           R20 -1

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
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Util"]
       29 GETTABLEKS                       R5 R5 K11 ["Typecheck"]
       31 GETTABLEKS                       R5 R5 K12 ["t"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R6 R0 K10 ["Util"]
       38 GETTABLEKS                       R6 R6 K11 ["Typecheck"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K6 [require]
       43 GETTABLEKS                       R7 R0 K13 ["Styling"]
       45 GETTABLEKS                       R7 R7 K14 ["supportsStyleSheets"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K6 [require]
       50 GETTABLEKS                       R8 R0 K10 ["Util"]
       52 GETTABLEKS                       R8 R8 K15 ["React"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K6 [require]
       57 GETTABLEKS                       R9 R0 K4 ["Parent"]
       59 GETTABLEKS                       R9 R9 K16 ["Dash"]
       61 CALL                             R8 1 1
       62 GETTABLEKS                       R9 R8 K17 ["map"]
       64 GETTABLEKS                       R10 R0 K2 ["UI"]
       66 GETIMPORT                        R11 K6 [require]
       68 GETTABLEKS                       R12 R10 K18 ["Components"]
       70 GETTABLEKS                       R12 R12 K19 ["Pane"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K6 [require]
       75 GETTABLEKS                       R13 R10 K18 ["Components"]
       77 GETTABLEKS                       R13 R13 K20 ["Image"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K6 [require]
       82 GETTABLEKS                       R14 R10 K18 ["Components"]
       84 GETTABLEKS                       R14 R14 K21 ["TextLabel"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K6 [require]
       89 GETTABLEKS                       R15 R0 K22 ["SharedFlags"]
       91 GETTABLEKS                       R15 R15 K23 ["getFFlagDevFrameworkFixMissingKeyErrors"]
       93 CALL                             R14 1 1
       94 CALL                             R14 0 1
       95 GETIMPORT                        R15 K6 [require]
       97 GETTABLEKS                       R16 R0 K10 ["Util"]
       99 GETTABLEKS                       R16 R16 K24 ["isRoact17"]
      101 CALL                             R15 1 1
      102 MOVE                             R16 R1
      103 CALL                             R15 1 1
      104 GETTABLEKS                       R16 R1 K25 ["PureComponent"]
      106 LOADK                            R18 K26 ["BulletList"]
      107 NAMECALL                         R16 R16 K27 ["extend"]
      109 CALL                             R16 2 1
      110 GETTABLEKS                       R17 R5 K28 ["wrap"]
      112 MOVE                             R18 R16
      113 GETIMPORT                        R19 K1 [script]
      115 CALL                             R17 2 0
      116 DUPCLOSURE                       R17 K29 [PROTO_0]
      117 CAPTURE                          VAL R4
      118 SETTABLEKS                       R17 R16 K30 ["calculateItemOffset"]
      120 DUPCLOSURE                       R17 K31 [PROTO_2]
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R13
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R14
      128 CAPTURE                          VAL R15
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R7
      131 CAPTURE                          VAL R12
      132 SETTABLEKS                       R17 R16 K32 ["render"]
      134 MOVE                             R17 R3
      135 DUPTABLE                         R18 K34 [{"Stylizer"}]
      136 GETTABLEKS                       R19 R2 K33 ["Stylizer"]
      138 SETTABLEKS                       R19 R18 K33 ["Stylizer"]
      140 CALL                             R17 1 1
      141 MOVE                             R18 R16
      142 CALL                             R17 1 1
      143 MOVE                             R16 R17
      144 RETURN                           R16 1
