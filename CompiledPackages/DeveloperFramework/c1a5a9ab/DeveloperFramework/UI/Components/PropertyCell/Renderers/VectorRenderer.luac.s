PROTO_0:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tonumber]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 JUMPIFNOT                        R2 ; [+5]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["GetChildren"]
       10 JUMPIFNOT                        R2 ; [+1]
       11 MOVE                             R1 R0
       12 GETUPVAL                         R3 2
       13 GETUPVAL                         R4 3
       14 GETTABLE                         R2 R3 R4
       15 JUMPIFEQ                         R2 R1 ; [+15]
       17 GETUPVAL                         R2 4
       18 GETUPVAL                         R3 2
       19 CALL                             R2 1 1
       20 GETUPVAL                         R3 3
       21 SETTABLE                         R1 R2 R3
       22 GETUPVAL                         R3 5
       23 GETTABLEKS                       R3 R3 K3 ["OnChanged"]
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R4 R4 K4 ["GetValue"]
       28 MOVE                             R5 R2
       29 CALL                             R4 1 -1
       30 CALL                             R3 -1 0
       31 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Schema"]
        2 NEWTABLE                         R2 0 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["new"]
        7 CALL                             R3 0 1
        8 GETTABLEKS                       R4 R1 K2 ["GetComponents"]
       10 GETTABLEKS                       R5 R0 K3 ["Value"]
       12 CALL                             R4 1 1
       13 GETTABLEKS                       R5 R1 K4 ["Layout"]
       15 JUMPIF                           R5 ; [+2]
       16 GETIMPORT                        R5 K8 [Enum.FillDirection.Horizontal]
       18 GETTABLEKS                       R6 R0 K9 ["HasError"]
       20 LOADNIL                          R7
       21 GETTABLEKS                       R10 R1 K10 ["Components"]
       23 LENGTH                           R9 R10
       24 JUMPIFEQKN                       R9 K11 [1] ; [+2]
       26 LOADB                            R8 0 +1
       27 LOADB                            R8 1
       28 LOADN                            R9 0
       29 GETTABLEKS                       R10 R1 K10 ["Components"]
       31 LOADNIL                          R11
       32 LOADNIL                          R12
       33 FORGPREP                         R10
       34 JUMPIFEQKS                       R14 K12 [""] ; [+23]
       36 GETUPVAL                         R15 1
       37 MOVE                             R17 R14
       38 LOADN                            R18 14
       39 GETIMPORT                        R19 K15 [Enum.Font.SourceSans]
       41 GETIMPORT                        R20 K17 [Vector2.new]
       43 LOADN                            R21 1
       44 LOADN                            R22 1
       45 CALL                             R20 2 -1
       46 NAMECALL                         R15 R15 K18 ["GetTextSize"]
       48 CALL                             R15 -1 1
       49 GETTABLEKS                       R18 R15 K19 ["X"]
       51 FASTCALL2                        MATH_MAX R9 R18 ; [+4]
       53 MOVE                             R17 R9
       54 GETIMPORT                        R16 K22 [math.max]
       56 CALL                             R16 2 1
       57 MOVE                             R9 R16
       58 FORGLOOP                         R10 2 ; [-25]
       60 JUMPIFNOT                        R8 ; [+7]
       61 GETIMPORT                        R10 K25 [UDim2.fromScale]
       63 LOADN                            R11 1
       64 LOADN                            R12 1
       65 CALL                             R10 2 1
       66 MOVE                             R7 R10
       67 JUMP                             ; [+30]
       68 GETIMPORT                        R10 K27 [Enum.FillDirection.Vertical]
       70 JUMPIFNOTEQ                      R5 R10 ; [+11]
       72 GETIMPORT                        R10 K28 [UDim2.new]
       74 LOADN                            R11 1
       75 MINUS                            R13 R9
       76 SUBK                             R12 R13 K29 [5]
       77 LOADN                            R13 0
       78 LOADN                            R14 24
       79 CALL                             R10 4 1
       80 MOVE                             R7 R10
       81 JUMP                             ; [+16]
       82 GETUPVAL                         R10 2
       83 CALL                             R10 0 1
       84 JUMPIFNOT                        R10 ; [+7]
       85 GETIMPORT                        R10 K31 [UDim2.fromOffset]
       87 LOADN                            R11 54
       88 LOADN                            R12 24
       89 CALL                             R10 2 1
       90 MOVE                             R7 R10
       91 JUMP                             ; [+6]
       92 GETIMPORT                        R10 K31 [UDim2.fromOffset]
       94 LOADN                            R11 40
       95 LOADN                            R12 24
       96 CALL                             R10 2 1
       97 MOVE                             R7 R10
       98 GETIMPORT                        R10 K33 [ipairs]
      100 GETTABLEKS                       R11 R1 K10 ["Components"]
      102 CALL                             R10 1 3
      103 FORGPREP_INEXT                   R10
      104 LOADNIL                          R15
      105 JUMPIFEQKS                       R14 K12 [""] ; [+44]
      107 GETUPVAL                         R16 3
      108 GETTABLEKS                       R16 R16 K34 ["createElement"]
      110 GETUPVAL                         R17 4
      111 DUPTABLE                         R18 K40 [{"AutomaticSize", "LayoutOrder", "Size", "Style", "Text"}]
      112 GETIMPORT                        R20 K27 [Enum.FillDirection.Vertical]
      114 JUMPIFNOTEQ                      R5 R20 ; [+4]
      116 GETIMPORT                        R19 K42 [Enum.AutomaticSize.Y]
      118 JUMP                             ; [+2]
      119 GETIMPORT                        R19 K44 [Enum.AutomaticSize.XY]
      121 SETTABLEKS                       R19 R18 K35 ["AutomaticSize"]
      123 NAMECALL                         R19 R3 K45 ["getNextOrder"]
      125 CALL                             R19 1 1
      126 SETTABLEKS                       R19 R18 K36 ["LayoutOrder"]
      128 GETIMPORT                        R20 K27 [Enum.FillDirection.Vertical]
      130 JUMPIFNOTEQ                      R5 R20 ; [+9]
      132 GETIMPORT                        R19 K28 [UDim2.new]
      134 LOADN                            R20 0
      135 MOVE                             R21 R9
      136 LOADN                            R22 0
      137 LOADN                            R23 0
      138 CALL                             R19 4 1
      139 JUMP                             ; [+1]
      140 LOADNIL                          R19
      141 SETTABLEKS                       R19 R18 K37 ["Size"]
      143 LOADK                            R19 K46 ["Label"]
      144 SETTABLEKS                       R19 R18 K38 ["Style"]
      146 SETTABLEKS                       R14 R18 K39 ["Text"]
      148 CALL                             R16 2 1
      149 MOVE                             R15 R16
      150 LOADNIL                          R16
      151 JUMPIFNOT                        R8 ; [+5]
      152 GETTABLEKS                       R17 R1 K47 ["GetChildren"]
      154 JUMPIFNOT                        R17 ; [+2]
      155 GETTABLE                         R16 R4 R13
      156 JUMP                             ; [+16]
      157 GETTABLE                         R18 R4 R13
      158 FASTCALL1                        TYPEOF R18 ; [+2]
      159 GETIMPORT                        R17 K49 [typeof]
      161 CALL                             R17 1 1
      162 JUMPIFEQKS                       R17 K50 ["number"] ; [+3]
      164 GETTABLE                         R16 R4 R13
      165 JUMP                             ; [+7]
      166 GETUPVAL                         R17 5
      167 GETTABLE                         R18 R4 R13
      168 GETTABLEKS                       R20 R1 K52 ["Precision"]
      170 ORK                              R19 R20 K51 [2]
      171 CALL                             R17 2 1
      172 MOVE                             R16 R17
      173 GETUPVAL                         R17 3
      174 GETTABLEKS                       R17 R17 K34 ["createElement"]
      176 GETUPVAL                         R18 6
      177 GETUPVAL                         R19 7
      178 DUPTABLE                         R20 K55 [{"Disabled", "LayoutOrder", "OnFocusLost", "Size", "Text"}]
      179 GETTABLEKS                       R21 R0 K53 ["Disabled"]
      181 SETTABLEKS                       R21 R20 K53 ["Disabled"]
      183 NAMECALL                         R21 R3 K45 ["getNextOrder"]
      185 CALL                             R21 1 1
      186 SETTABLEKS                       R21 R20 K36 ["LayoutOrder"]
      188 NEWCLOSURE                       R21 P0
      189 CAPTURE                          VAL R8
      190 CAPTURE                          VAL R1
      191 CAPTURE                          VAL R4
      192 CAPTURE                          VAL R13
      193 CAPTURE                          UPVAL U8
      194 CAPTURE                          VAL R0
      195 SETTABLEKS                       R21 R20 K54 ["OnFocusLost"]
      197 SETTABLEKS                       R7 R20 K37 ["Size"]
      199 SETTABLEKS                       R16 R20 K39 ["Text"]
      201 GETUPVAL                         R22 9
      202 JUMPIFNOT                        R22 ; [+12]
      203 NEWTABLE                         R21 1 0
      205 GETUPVAL                         R22 10
      206 GETTABLEKS                       R22 R22 K56 ["Tag"]
      208 JUMPIFNOT                        R6 ; [+3]
      209 GETTABLEKS                       R23 R1 K57 ["ErrorStyle"]
      211 JUMP                             ; [+1]
      212 LOADNIL                          R23
      213 SETTABLE                         R23 R21 R22
      214 JUMP                             ; [+11]
      215 DUPTABLE                         R21 K59 [{"StyleModifier"}]
      216 GETTABLEKS                       R23 R0 K9 ["HasError"]
      218 JUMPIFNOT                        R23 ; [+4]
      219 GETUPVAL                         R22 11
      220 GETTABLEKS                       R22 R22 K60 ["Error"]
      222 JUMP                             ; [+1]
      223 LOADNIL                          R22
      224 SETTABLEKS                       R22 R21 K58 ["StyleModifier"]
      226 CALL                             R19 2 -1
      227 CALL                             R17 -1 1
      228 GETIMPORT                        R18 K27 [Enum.FillDirection.Vertical]
      230 JUMPIFNOTEQ                      R5 R18 ; [+42]
      232 MOVE                             R19 R13
      233 LOADK                            R20 K61 [" combined"]
      234 CONCAT                           R18 R19 R20
      235 GETUPVAL                         R19 3
      236 GETTABLEKS                       R19 R19 K34 ["createElement"]
      238 GETUPVAL                         R20 12
      239 DUPTABLE                         R21 K63 [{"AutomaticSize", "LayoutOrder", "Layout", "Size", "Spacing"}]
      240 GETIMPORT                        R22 K64 [Enum.AutomaticSize.X]
      242 SETTABLEKS                       R22 R21 K35 ["AutomaticSize"]
      244 NAMECALL                         R22 R3 K45 ["getNextOrder"]
      246 CALL                             R22 1 1
      247 SETTABLEKS                       R22 R21 K36 ["LayoutOrder"]
      249 GETIMPORT                        R22 K8 [Enum.FillDirection.Horizontal]
      251 SETTABLEKS                       R22 R21 K4 ["Layout"]
      253 GETIMPORT                        R22 K28 [UDim2.new]
      255 LOADN                            R23 1
      256 LOADN                            R24 0
      257 LOADN                            R25 0
      258 LOADN                            R26 24
      259 CALL                             R22 4 1
      260 SETTABLEKS                       R22 R21 K37 ["Size"]
      262 LOADN                            R22 5
      263 SETTABLEKS                       R22 R21 K62 ["Spacing"]
      265 DUPTABLE                         R22 K66 [{"Label", "Input"}]
      266 SETTABLEKS                       R15 R22 K46 ["Label"]
      268 SETTABLEKS                       R17 R22 K65 ["Input"]
      270 CALL                             R19 3 1
      271 SETTABLE                         R19 R2 R18
      272 JUMP                             ; [+8]
      273 MOVE                             R19 R13
      274 LOADK                            R20 K67 [" label"]
      275 CONCAT                           R18 R19 R20
      276 SETTABLE                         R15 R2 R18
      277 MOVE                             R19 R13
      278 LOADK                            R20 K68 [" input"]
      279 CONCAT                           R18 R19 R20
      280 SETTABLE                         R17 R2 R18
      281 FORGLOOP                         R10 2 [inext] ; [-178]
      283 GETUPVAL                         R10 3
      284 GETTABLEKS                       R10 R10 K34 ["createElement"]
      286 GETUPVAL                         R11 12
      287 DUPTABLE                         R12 K70 [{"HorizontalAlignment", "Layout", "Spacing"}]
      288 GETIMPORT                        R13 K72 [Enum.HorizontalAlignment.Left]
      290 SETTABLEKS                       R13 R12 K69 ["HorizontalAlignment"]
      292 SETTABLEKS                       R5 R12 K4 ["Layout"]
      294 LOADN                            R13 5
      295 SETTABLEKS                       R13 R12 K62 ["Spacing"]
      297 MOVE                             R13 R2
      298 CALL                             R10 3 -1
      299 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TextService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["UI"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R1 R1 K8 ["Parent"]
       15 GETIMPORT                        R2 K10 [require]
       17 GETTABLEKS                       R3 R1 K8 ["Parent"]
       19 GETTABLEKS                       R3 R3 K11 ["Roact"]
       21 CALL                             R2 1 1
       22 GETTABLEKS                       R3 R1 K12 ["Util"]
       24 GETIMPORT                        R4 K10 [require]
       26 GETTABLEKS                       R5 R3 K13 ["LayoutOrderIterator"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K10 [require]
       31 GETTABLEKS                       R6 R3 K14 ["numberToString"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K10 [require]
       36 GETTABLEKS                       R7 R1 K8 ["Parent"]
       38 GETTABLEKS                       R7 R7 K15 ["Dash"]
       40 CALL                             R6 1 1
       41 GETTABLEKS                       R7 R6 K16 ["copy"]
       43 GETTABLEKS                       R8 R6 K17 ["join"]
       45 GETTABLEKS                       R10 R1 K8 ["Parent"]
       47 LOADK                            R12 K18 ["React"]
       48 NAMECALL                         R10 R10 K19 ["FindFirstChild"]
       50 CALL                             R10 2 1
       51 JUMPIFNOT                        R10 ; [+8]
       52 GETIMPORT                        R9 K10 [require]
       54 GETTABLEKS                       R10 R1 K8 ["Parent"]
       56 GETTABLEKS                       R10 R10 K18 ["React"]
       58 CALL                             R9 1 1
       59 JUMP                             ; [+1]
       60 LOADNIL                          R9
       61 GETIMPORT                        R10 K10 [require]
       63 GETTABLEKS                       R11 R1 K20 ["Styling"]
       65 GETTABLEKS                       R11 R11 K21 ["supportsStyleSheets"]
       67 CALL                             R10 1 1
       68 GETTABLEKS                       R11 R1 K6 ["UI"]
       70 GETTABLEKS                       R11 R11 K22 ["Components"]
       72 GETIMPORT                        R12 K10 [require]
       74 GETTABLEKS                       R13 R11 K23 ["Pane"]
       76 CALL                             R12 1 1
       77 GETIMPORT                        R13 K10 [require]
       79 GETTABLEKS                       R14 R1 K6 ["UI"]
       81 GETTABLEKS                       R14 R14 K22 ["Components"]
       83 GETTABLEKS                       R14 R14 K24 ["TextInput"]
       85 CALL                             R13 1 1
       86 GETIMPORT                        R14 K10 [require]
       88 GETTABLEKS                       R15 R11 K25 ["TextLabel"]
       90 CALL                             R14 1 1
       91 GETIMPORT                        R15 K10 [require]
       93 GETTABLEKS                       R16 R1 K12 ["Util"]
       95 GETTABLEKS                       R16 R16 K26 ["StyleModifier"]
       97 CALL                             R15 1 1
       98 GETIMPORT                        R16 K10 [require]
      100 GETIMPORT                        R17 K5 [script]
      102 GETTABLEKS                       R17 R17 K8 ["Parent"]
      104 GETTABLEKS                       R17 R17 K8 ["Parent"]
      106 GETTABLEKS                       R17 R17 K27 ["Types"]
      108 CALL                             R16 1 1
      109 GETIMPORT                        R17 K10 [require]
      111 GETTABLEKS                       R18 R1 K28 ["SharedFlags"]
      113 GETTABLEKS                       R18 R18 K29 ["getFFlagDevFrameworkVectorRendererSize"]
      115 CALL                             R17 1 1
      116 DUPCLOSURE                       R18 K30 [PROTO_1]
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R0
      119 CAPTURE                          VAL R17
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R5
      123 CAPTURE                          VAL R13
      124 CAPTURE                          VAL R8
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R15
      129 CAPTURE                          VAL R12
      130 RETURN                           R18 1
