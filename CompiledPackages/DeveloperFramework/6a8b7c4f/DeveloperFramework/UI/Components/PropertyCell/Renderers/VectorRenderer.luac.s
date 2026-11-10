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
       67 JUMP                             ; [+20]
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
       81 JUMP                             ; [+6]
       82 GETIMPORT                        R10 K31 [UDim2.fromOffset]
       84 LOADN                            R11 54
       85 LOADN                            R12 24
       86 CALL                             R10 2 1
       87 MOVE                             R7 R10
       88 GETIMPORT                        R10 K33 [ipairs]
       90 GETTABLEKS                       R11 R1 K10 ["Components"]
       92 CALL                             R10 1 3
       93 FORGPREP_INEXT                   R10
       94 LOADNIL                          R15
       95 JUMPIFEQKS                       R14 K12 [""] ; [+41]
       97 GETUPVAL                         R16 2
       98 GETTABLEKS                       R16 R16 K34 ["createElement"]
      100 GETUPVAL                         R17 3
      101 DUPTABLE                         R18 K41 [{["AutomaticSize"], ["LayoutOrder"], ["Size"], ["Style"] = "Label", ["Text"]}]
      102 GETIMPORT                        R20 K27 [Enum.FillDirection.Vertical]
      104 JUMPIFNOTEQ                      R5 R20 ; [+4]
      106 GETIMPORT                        R19 K43 [Enum.AutomaticSize.Y]
      108 JUMP                             ; [+2]
      109 GETIMPORT                        R19 K45 [Enum.AutomaticSize.XY]
      111 SETTABLEKS                       R19 R18 K35 ["AutomaticSize"]
      113 NAMECALL                         R19 R3 K46 ["getNextOrder"]
      115 CALL                             R19 1 1
      116 SETTABLEKS                       R19 R18 K36 ["LayoutOrder"]
      118 GETIMPORT                        R20 K27 [Enum.FillDirection.Vertical]
      120 JUMPIFNOTEQ                      R5 R20 ; [+9]
      122 GETIMPORT                        R19 K28 [UDim2.new]
      124 LOADN                            R20 0
      125 MOVE                             R21 R9
      126 LOADN                            R22 0
      127 LOADN                            R23 0
      128 CALL                             R19 4 1
      129 JUMP                             ; [+1]
      130 LOADNIL                          R19
      131 SETTABLEKS                       R19 R18 K37 ["Size"]
      133 SETTABLEKS                       R14 R18 K40 ["Text"]
      135 CALL                             R16 2 1
      136 MOVE                             R15 R16
      137 LOADNIL                          R16
      138 JUMPIFNOT                        R8 ; [+5]
      139 GETTABLEKS                       R17 R1 K47 ["GetChildren"]
      141 JUMPIFNOT                        R17 ; [+2]
      142 GETTABLE                         R16 R4 R13
      143 JUMP                             ; [+16]
      144 GETTABLE                         R18 R4 R13
      145 FASTCALL1                        TYPEOF R18 ; [+2]
      146 GETIMPORT                        R17 K49 [typeof]
      148 CALL                             R17 1 1
      149 JUMPIFEQKS                       R17 K50 ["number"] ; [+3]
      151 GETTABLE                         R16 R4 R13
      152 JUMP                             ; [+7]
      153 GETUPVAL                         R17 4
      154 GETTABLE                         R18 R4 R13
      155 GETTABLEKS                       R20 R1 K52 ["Precision"]
      157 ORK                              R19 R20 K51 [2]
      158 CALL                             R17 2 1
      159 MOVE                             R16 R17
      160 GETUPVAL                         R17 2
      161 GETTABLEKS                       R17 R17 K34 ["createElement"]
      163 GETUPVAL                         R18 5
      164 GETUPVAL                         R19 6
      165 DUPTABLE                         R20 K55 [{"Disabled", "LayoutOrder", "OnFocusLost", "Size", "Text"}]
      166 GETTABLEKS                       R21 R0 K53 ["Disabled"]
      168 SETTABLEKS                       R21 R20 K53 ["Disabled"]
      170 NAMECALL                         R21 R3 K46 ["getNextOrder"]
      172 CALL                             R21 1 1
      173 SETTABLEKS                       R21 R20 K36 ["LayoutOrder"]
      175 NEWCLOSURE                       R21 P0
      176 CAPTURE                          VAL R8
      177 CAPTURE                          VAL R1
      178 CAPTURE                          VAL R4
      179 CAPTURE                          VAL R13
      180 CAPTURE                          UPVAL U7
      181 CAPTURE                          VAL R0
      182 SETTABLEKS                       R21 R20 K54 ["OnFocusLost"]
      184 SETTABLEKS                       R7 R20 K37 ["Size"]
      186 SETTABLEKS                       R16 R20 K40 ["Text"]
      188 GETUPVAL                         R22 8
      189 JUMPIFNOT                        R22 ; [+12]
      190 NEWTABLE                         R21 1 0
      192 GETUPVAL                         R22 9
      193 GETTABLEKS                       R22 R22 K56 ["Tag"]
      195 JUMPIFNOT                        R6 ; [+3]
      196 GETTABLEKS                       R23 R1 K57 ["ErrorStyle"]
      198 JUMP                             ; [+1]
      199 LOADNIL                          R23
      200 SETTABLE                         R23 R21 R22
      201 JUMP                             ; [+11]
      202 DUPTABLE                         R21 K59 [{"StyleModifier"}]
      203 GETTABLEKS                       R23 R0 K9 ["HasError"]
      205 JUMPIFNOT                        R23 ; [+4]
      206 GETUPVAL                         R22 10
      207 GETTABLEKS                       R22 R22 K60 ["Error"]
      209 JUMP                             ; [+1]
      210 LOADNIL                          R22
      211 SETTABLEKS                       R22 R21 K58 ["StyleModifier"]
      213 CALL                             R19 2 -1
      214 CALL                             R17 -1 1
      215 GETIMPORT                        R18 K27 [Enum.FillDirection.Vertical]
      217 JUMPIFNOTEQ                      R5 R18 ; [+39]
      219 MOVE                             R19 R13
      220 LOADK                            R20 K61 [" combined"]
      221 CONCAT                           R18 R19 R20
      222 GETUPVAL                         R19 2
      223 GETTABLEKS                       R19 R19 K34 ["createElement"]
      225 GETUPVAL                         R20 11
      226 DUPTABLE                         R21 K63 [{["AutomaticSize"], ["LayoutOrder"], ["Layout"], ["Size"], ["Spacing"] = 5}]
      227 GETIMPORT                        R22 K64 [Enum.AutomaticSize.X]
      229 SETTABLEKS                       R22 R21 K35 ["AutomaticSize"]
      231 NAMECALL                         R22 R3 K46 ["getNextOrder"]
      233 CALL                             R22 1 1
      234 SETTABLEKS                       R22 R21 K36 ["LayoutOrder"]
      236 GETIMPORT                        R22 K8 [Enum.FillDirection.Horizontal]
      238 SETTABLEKS                       R22 R21 K4 ["Layout"]
      240 GETIMPORT                        R22 K28 [UDim2.new]
      242 LOADN                            R23 1
      243 LOADN                            R24 0
      244 LOADN                            R25 0
      245 LOADN                            R26 24
      246 CALL                             R22 4 1
      247 SETTABLEKS                       R22 R21 K37 ["Size"]
      249 DUPTABLE                         R22 K66 [{"Label", "Input"}]
      250 SETTABLEKS                       R15 R22 K39 ["Label"]
      252 SETTABLEKS                       R17 R22 K65 ["Input"]
      254 CALL                             R19 3 1
      255 SETTABLE                         R19 R2 R18
      256 JUMP                             ; [+8]
      257 MOVE                             R19 R13
      258 LOADK                            R20 K67 [" label"]
      259 CONCAT                           R18 R19 R20
      260 SETTABLE                         R15 R2 R18
      261 MOVE                             R19 R13
      262 LOADK                            R20 K68 [" input"]
      263 CONCAT                           R18 R19 R20
      264 SETTABLE                         R17 R2 R18
      265 FORGLOOP                         R10 2 [inext] ; [-172]
      267 GETUPVAL                         R10 2
      268 GETTABLEKS                       R10 R10 K34 ["createElement"]
      270 GETUPVAL                         R11 11
      271 DUPTABLE                         R12 K70 [{["HorizontalAlignment"], ["Layout"], ["Spacing"] = 5}]
      272 GETIMPORT                        R13 K72 [Enum.HorizontalAlignment.Left]
      274 SETTABLEKS                       R13 R12 K69 ["HorizontalAlignment"]
      276 SETTABLEKS                       R5 R12 K4 ["Layout"]
      278 MOVE                             R13 R2
      279 CALL                             R10 3 -1
      280 RETURN                           R10 -1

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
      109 DUPCLOSURE                       R17 K28 [PROTO_1]
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R0
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R14
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R13
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R10
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R15
      121 CAPTURE                          VAL R12
      122 RETURN                           R17 1
