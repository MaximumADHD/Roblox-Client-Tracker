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
        8 JUMPIFNOTEQKS                    R5 K2 ["string"] ; [+37]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R5 R5 K3 ["createElement"]
       13 GETUPVAL                         R6 3
       14 DUPTABLE                         R7 K15 [{["AutomaticSize"], ["Font"], ["LayoutOrder"] = 2, ["Size"], ["Text"], ["TextColor"], ["TextSize"], ["TextTruncate"], ["TextWrapped"], ["TextXAlignment"]}]
       15 GETIMPORT                        R8 K18 [Enum.AutomaticSize.Y]
       17 SETTABLEKS                       R8 R7 K4 ["AutomaticSize"]
       19 GETUPVAL                         R8 4
       20 SETTABLEKS                       R8 R7 K5 ["Font"]
       22 GETUPVAL                         R8 5
       23 SETTABLEKS                       R8 R7 K8 ["Size"]
       25 SETTABLEKS                       R0 R7 K9 ["Text"]
       27 GETUPVAL                         R8 6
       28 SETTABLEKS                       R8 R7 K10 ["TextColor"]
       30 GETUPVAL                         R8 7
       31 SETTABLEKS                       R8 R7 K11 ["TextSize"]
       33 GETUPVAL                         R8 8
       34 SETTABLEKS                       R8 R7 K12 ["TextTruncate"]
       36 GETUPVAL                         R8 9
       37 SETTABLEKS                       R8 R7 K13 ["TextWrapped"]
       39 GETIMPORT                        R8 K20 [Enum.TextXAlignment.Left]
       41 SETTABLEKS                       R8 R7 K14 ["TextXAlignment"]
       43 CALL                             R5 2 1
       44 MOVE                             R2 R5
       45 JUMP                             ; [+98]
       46 FASTCALL1                        TYPEOF R0 ; [+3]
       47 MOVE                             R6 R0
       48 GETIMPORT                        R5 K22 [typeof]
       50 CALL                             R5 1 1
       51 JUMPIFNOTEQKS                    R5 K23 ["table"] ; [+75]
       53 GETTABLEKS                       R5 R0 K9 ["Text"]
       55 JUMPIFNOT                        R5 ; [+71]
       56 GETUPVAL                         R6 10
       57 GETIMPORT                        R7 K25 [string.format]
       59 LOADK                            R8 K26 ["&%s"]
       60 GETTABLEKS                       R9 R0 K27 ["Style"]
       62 CALL                             R7 2 1
       63 GETTABLE                         R5 R6 R7
       64 MOVE                             R7 R5
       65 GETIMPORT                        R8 K25 [string.format]
       67 LOADK                            R9 K28 ["BulletList Style '%s' was not found"]
       68 GETTABLEKS                       R10 R0 K27 ["Style"]
       70 CALL                             R8 2 -1
       71 FASTCALL                         ASSERT ; [+2]
       72 GETIMPORT                        R6 K30 [assert]
       74 CALL                             R6 -1 0
       75 GETIMPORT                        R6 K33 [UDim2.new]
       77 LOADN                            R7 1
       78 GETTABLEKS                       R9 R5 K34 ["ItemOffset"]
       80 MINUS                            R8 R9
       81 LOADN                            R9 0
       82 LOADN                            R10 0
       83 CALL                             R6 4 1
       84 GETTABLEKS                       R7 R5 K35 ["ItemIndentation"]
       86 OR                               R3 R7 R3
       87 GETTABLEKS                       R7 R5 K36 ["MarkerStyle"]
       89 OR                               R4 R7 R4
       90 GETUPVAL                         R7 2
       91 GETTABLEKS                       R7 R7 K3 ["createElement"]
       93 GETUPVAL                         R8 3
       94 DUPTABLE                         R9 K37 [{["AutomaticSize"], ["Font"], ["LayoutOrder"] = 2, ["Size"], ["Text"], ["TextColor"], ["TextWrapped"], ["TextSize"], ["TextTruncate"], ["TextXAlignment"]}]
       95 GETIMPORT                        R10 K18 [Enum.AutomaticSize.Y]
       97 SETTABLEKS                       R10 R9 K4 ["AutomaticSize"]
       99 GETUPVAL                         R10 4
      100 SETTABLEKS                       R10 R9 K5 ["Font"]
      102 SETTABLEKS                       R6 R9 K8 ["Size"]
      104 GETTABLEKS                       R10 R0 K9 ["Text"]
      106 SETTABLEKS                       R10 R9 K9 ["Text"]
      108 GETUPVAL                         R10 6
      109 SETTABLEKS                       R10 R9 K10 ["TextColor"]
      111 GETUPVAL                         R10 9
      112 SETTABLEKS                       R10 R9 K13 ["TextWrapped"]
      114 GETUPVAL                         R10 7
      115 SETTABLEKS                       R10 R9 K11 ["TextSize"]
      117 GETUPVAL                         R10 8
      118 SETTABLEKS                       R10 R9 K12 ["TextTruncate"]
      120 GETIMPORT                        R10 K20 [Enum.TextXAlignment.Left]
      122 SETTABLEKS                       R10 R9 K14 ["TextXAlignment"]
      124 CALL                             R7 2 1
      125 MOVE                             R2 R7
      126 JUMP                             ; [+17]
      127 GETUPVAL                         R5 2
      128 GETTABLEKS                       R5 R5 K3 ["createElement"]
      130 GETUPVAL                         R6 11
      131 DUPTABLE                         R7 K38 [{["AutomaticSize"], ["LayoutOrder"] = 2, ["Size"]}]
      132 GETIMPORT                        R8 K18 [Enum.AutomaticSize.Y]
      134 SETTABLEKS                       R8 R7 K4 ["AutomaticSize"]
      136 GETUPVAL                         R8 5
      137 SETTABLEKS                       R8 R7 K8 ["Size"]
      139 DUPTABLE                         R8 K40 [{"ContentElement"}]
      140 SETTABLEKS                       R0 R8 K39 ["ContentElement"]
      142 CALL                             R5 3 1
      143 MOVE                             R2 R5
      144 GETUPVAL                         R5 2
      145 GETTABLEKS                       R5 R5 K3 ["createElement"]
      147 GETUPVAL                         R6 11
      148 GETUPVAL                         R7 12
      149 GETTABLEKS                       R7 R7 K41 ["join"]
      151 DUPTABLE                         R8 K48 [{"key", "AutomaticSize", "LayoutOrder", "HorizontalAlignment", "VerticalAlignment", "Layout", "Spacing", "Padding"}]
      152 GETUPVAL                         R10 13
      153 JUMPIFNOT                        R10 ; [+8]
      154 GETUPVAL                         R10 14
      155 JUMPIFNOT                        R10 ; [+6]
      156 FASTCALL1                        TOSTRING R1 ; [+3]
      157 MOVE                             R10 R1
      158 GETIMPORT                        R9 K50 [tostring]
      160 CALL                             R9 1 1
      161 JUMP                             ; [+1]
      162 LOADNIL                          R9
      163 SETTABLEKS                       R9 R8 K42 ["key"]
      165 GETIMPORT                        R9 K52 [Enum.AutomaticSize.XY]
      167 SETTABLEKS                       R9 R8 K4 ["AutomaticSize"]
      169 SETTABLEKS                       R1 R8 K6 ["LayoutOrder"]
      171 GETIMPORT                        R9 K53 [Enum.HorizontalAlignment.Left]
      173 SETTABLEKS                       R9 R8 K43 ["HorizontalAlignment"]
      175 GETIMPORT                        R9 K55 [Enum.VerticalAlignment.Top]
      177 SETTABLEKS                       R9 R8 K44 ["VerticalAlignment"]
      179 GETIMPORT                        R9 K58 [Enum.FillDirection.Horizontal]
      181 SETTABLEKS                       R9 R8 K45 ["Layout"]
      183 GETUPVAL                         R9 15
      184 SETTABLEKS                       R9 R8 K46 ["Spacing"]
      186 JUMPIFNOT                        R3 ; [+4]
      187 DUPTABLE                         R9 K59 [{"Left"}]
      188 SETTABLEKS                       R3 R9 K19 ["Left"]
      190 JUMP                             ; [+1]
      191 LOADNIL                          R9
      192 SETTABLEKS                       R9 R8 K47 ["Padding"]
      194 GETUPVAL                         R10 16
      195 JUMPIFNOT                        R10 ; [+8]
      196 NEWTABLE                         R9 1 0
      198 GETUPVAL                         R10 17
      199 GETTABLEKS                       R10 R10 K60 ["Tag"]
      201 LOADK                            R11 K61 ["ListItem"]
      202 SETTABLE                         R11 R9 R10
      203 JUMP                             ; [+2]
      204 NEWTABLE                         R9 0 0
      206 CALL                             R7 2 1
      207 DUPTABLE                         R8 K64 [{"Marker", "Content"}]
      208 GETUPVAL                         R9 2
      209 GETTABLEKS                       R9 R9 K3 ["createElement"]
      211 GETUPVAL                         R10 11
      212 DUPTABLE                         R11 K66 [{["LayoutOrder"] = 1, ["Size"]}]
      213 GETIMPORT                        R12 K68 [UDim2.fromOffset]
      215 GETUPVAL                         R13 18
      216 GETUPVAL                         R14 19
      217 CALL                             R12 2 1
      218 SETTABLEKS                       R12 R11 K8 ["Size"]
      220 DUPTABLE                         R12 K70 [{"Image"}]
      221 GETUPVAL                         R13 2
      222 GETTABLEKS                       R13 R13 K3 ["createElement"]
      224 GETUPVAL                         R14 20
      225 DUPTABLE                         R15 K73 [{["Image"], ["ImageColor3"], ["LayoutOrder"] = 1, ["Position"], ["Size"]}]
      226 SETTABLEKS                       R4 R15 K69 ["Image"]
      228 GETUPVAL                         R16 6
      229 SETTABLEKS                       R16 R15 K71 ["ImageColor3"]
      231 GETIMPORT                        R16 K75 [UDim2.fromScale]
      233 LOADN                            R17 0
      234 LOADK                            R18 K76 [0.5]
      235 CALL                             R16 2 1
      236 SETTABLEKS                       R16 R15 K72 ["Position"]
      238 GETIMPORT                        R16 K68 [UDim2.fromOffset]
      240 GETUPVAL                         R17 18
      241 GETUPVAL                         R18 18
      242 CALL                             R16 2 1
      243 SETTABLEKS                       R16 R15 K8 ["Size"]
      245 CALL                             R13 2 1
      246 SETTABLEKS                       R13 R12 K69 ["Image"]
      248 CALL                             R9 3 1
      249 SETTABLEKS                       R9 R8 K62 ["Marker"]
      251 SETTABLEKS                       R2 R8 K63 ["Content"]
      253 CALL                             R5 3 -1
      254 RETURN                           R5 -1

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
      117 DUPTABLE                         R23 K40 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"], ["Position"], ["Size"]}]
      118 SETTABLEKS                       R19 R23 K25 ["AutomaticSize"]
      120 GETIMPORT                        R24 K42 [Enum.HorizontalAlignment.Left]
      122 SETTABLEKS                       R24 R23 K37 ["HorizontalAlignment"]
      124 GETIMPORT                        R24 K45 [Enum.FillDirection.Vertical]
      126 SETTABLEKS                       R24 R23 K38 ["Layout"]
      128 GETTABLEKS                       R25 R1 K39 ["LayoutOrder"]
      130 ORK                              R24 R25 K36 [1]
      131 SETTABLEKS                       R24 R23 K39 ["LayoutOrder"]
      133 SETTABLEKS                       R18 R23 K23 ["Position"]
      135 SETTABLEKS                       R17 R23 K22 ["Size"]
      137 GETUPVAL                         R25 8
      138 JUMPIFNOT                        R25 ; [+8]
      139 NEWTABLE                         R24 1 0
      141 GETUPVAL                         R25 9
      142 GETTABLEKS                       R25 R25 K46 ["Tag"]
      144 LOADK                            R26 K47 ["List"]
      145 SETTABLE                         R26 R24 R25
      146 JUMP                             ; [+2]
      147 NEWTABLE                         R24 0 0
      149 CALL                             R22 2 1
      150 MOVE                             R23 R16
      151 CALL                             R20 3 -1
      152 RETURN                           R20 -1

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
