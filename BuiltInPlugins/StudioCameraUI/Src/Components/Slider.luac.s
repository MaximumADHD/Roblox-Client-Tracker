PROTO_0:
        0 GETUPVAL                         R2 0
        1 LOADN                            R3 1
        2 FASTCALL3                        MATH_LERP R2 R3 R0
        4 MOVE                             R4 R0
        5 GETIMPORT                        R1 K2 [math.lerp]
        7 CALL                             R1 3 1
        8 RETURN                           R1 1

PROTO_1:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R0
        2 NAMECALL                         R2 R1 K0 ["map"]
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_2:
        0 SUB                              R4 R2 R0
        1 SUB                              R5 R1 R0
        2 DIV                              R3 R4 R5
        3 RETURN                           R3 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["dragging"]
        2 JUMPIF                           R1 ; [+2]
        3 GETTABLEKS                       R1 R0 K1 ["mouseOver"]
        5 RETURN                           R1 1

PROTO_4:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["%.1f"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["current"]
        6 GETTABLEKS                       R2 R0 K1 ["AbsolutePosition"]
        8 GETTABLEKS                       R2 R2 K2 ["X"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K4 ["CORNER_RADIUS"]
       13 GETTABLEKS                       R4 R4 K5 ["Offset"]
       15 MULK                             R3 R4 K3 [2]
       16 ADD                              R1 R2 R3
       17 GETTABLEKS                       R3 R0 K1 ["AbsolutePosition"]
       19 GETTABLEKS                       R3 R3 K2 ["X"]
       21 GETTABLEKS                       R4 R0 K6 ["AbsoluteSize"]
       23 GETTABLEKS                       R4 R4 K2 ["X"]
       25 ADD                              R2 R3 R4
       26 GETUPVAL                         R5 3
       27 NAMECALL                         R5 R5 K7 ["GetMouseLocation"]
       29 CALL                             R5 1 1
       30 GETTABLEKS                       R5 R5 K2 ["X"]
       32 SUB                              R6 R5 R1
       33 SUB                              R7 R2 R1
       34 DIV                              R4 R6 R7
       35 LOADN                            R5 0
       36 LOADN                            R6 1
       37 FASTCALL                         MATH_CLAMP ; [+2]
       38 GETIMPORT                        R3 K10 [math.clamp]
       40 CALL                             R3 3 1
       41 GETUPVAL                         R5 4
       42 GETTABLEKS                       R5 R5 K11 ["Min"]
       44 GETUPVAL                         R6 4
       45 GETTABLEKS                       R6 R6 K12 ["Max"]
       47 GETUPVAL                         R10 4
       48 GETTABLEKS                       R10 R10 K14 ["Exponent"]
       50 ORK                              R9 R10 K13 [1]
       51 FASTCALL2                        MATH_POW R3 R9 ; [+4]
       53 MOVE                             R8 R3
       54 GETIMPORT                        R7 K16 [math.pow]
       56 CALL                             R7 2 1
       57 FASTCALL                         MATH_LERP ; [+2]
       58 GETIMPORT                        R4 K18 [math.lerp]
       60 CALL                             R4 3 1
       61 GETUPVAL                         R5 4
       62 GETTABLEKS                       R5 R5 K19 ["SetValue"]
       64 GETUPVAL                         R8 4
       65 GETTABLEKS                       R8 R8 K11 ["Min"]
       67 GETUPVAL                         R9 4
       68 GETTABLEKS                       R9 R9 K12 ["Max"]
       70 FASTCALL3                        MATH_CLAMP R4 R8 R9
       72 MOVE                             R7 R4
       73 GETIMPORT                        R6 K10 [math.clamp]
       75 CALL                             R6 3 1
       76 CALL                             R5 1 0
       77 GETUPVAL                         R5 5
       78 GETTABLEKS                       R5 R5 K20 ["RenderStepped"]
       80 NAMECALL                         R5 R5 K21 ["Wait"]
       82 CALL                             R5 1 0
       83 GETUPVAL                         R5 3
       84 GETIMPORT                        R7 K25 [Enum.UserInputType.MouseButton1]
       86 NAMECALL                         R5 R5 K26 ["IsMouseButtonPressed"]
       88 CALL                             R5 2 1
       89 JUMPIFNOT                        R5 ; [+1]
       90 JUMPBACK                         ; [-88]
       91 GETUPVAL                         R0 0
       92 LOADB                            R1 0
       93 CALL                             R0 1 0
       94 RETURN                           R0 0

PROTO_8:
        0 JUMPIFNOT                        R0 ; [+2]
        1 LOADK                            R1 K0 [0.1]
        2 RETURN                           R1 1
        3 LOADN                            R1 1
        4 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K1 ["CORNER_RADIUS"]
        3 GETTABLEKS                       R2 R2 K2 ["Offset"]
        5 MULK                             R1 R2 K0 [2]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K3 ["Size"]
        9 GETTABLEKS                       R2 R2 K4 ["X"]
       11 GETTABLEKS                       R2 R2 K2 ["Offset"]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K5 ["Min"]
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K6 ["Max"]
       19 SUB                              R7 R0 R5
       20 SUB                              R8 R6 R5
       21 DIV                              R4 R7 R8
       22 LOADN                            R5 0
       23 LOADN                            R6 1
       24 FASTCALL                         MATH_CLAMP ; [+2]
       25 GETIMPORT                        R3 K9 [math.clamp]
       27 CALL                             R3 3 1
       28 GETUPVAL                         R11 1
       29 GETTABLEKS                       R11 R11 K11 ["Exponent"]
       31 ORK                              R10 R11 K10 [1]
       32 DIVRK                            R9 K10 [1] R10
       33 FASTCALL2                        MATH_POW R3 R9 ; [+4]
       35 MOVE                             R8 R3
       36 GETIMPORT                        R7 K13 [math.pow]
       38 CALL                             R7 2 1
       39 FASTCALL3                        MATH_LERP R1 R2 R7
       41 MOVE                             R5 R1
       42 MOVE                             R6 R2
       43 GETIMPORT                        R4 K15 [math.lerp]
       45 CALL                             R4 3 1
       46 GETIMPORT                        R5 K18 [UDim2.new]
       48 LOADN                            R6 0
       49 FASTCALL3                        MATH_CLAMP R4 R1 R2
       51 MOVE                             R8 R4
       52 MOVE                             R9 R1
       53 MOVE                             R10 R2
       54 GETIMPORT                        R7 K9 [math.clamp]
       56 CALL                             R7 3 1
       57 LOADN                            R8 1
       58 LOADN                            R9 0
       59 CALL                             R5 4 -1
       60 RETURN                           R5 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useBinding"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useBinding"]
        8 LOADB                            R4 0
        9 CALL                             R3 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K1 ["joinBindings"]
       13 DUPTABLE                         R6 K4 [{"mouseOver", "dragging"}]
       14 SETTABLEKS                       R1 R6 K2 ["mouseOver"]
       16 SETTABLEKS                       R3 R6 K3 ["dragging"]
       18 CALL                             R5 1 1
       19 DUPCLOSURE                       R7 K5 [PROTO_3]
       20 NAMECALL                         R5 R5 K6 ["map"]
       22 CALL                             R5 2 1
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K7 ["useRef"]
       26 LOADNIL                          R7
       27 CALL                             R6 1 1
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R7 R7 K8 ["createElement"]
       31 LOADK                            R8 K9 ["TextButton"]
       32 NEWTABLE                         R9 16 0
       34 SETTABLEKS                       R6 R9 K10 ["ref"]
       36 GETTABLEKS                       R10 R0 K11 ["Size"]
       38 SETTABLEKS                       R10 R9 K11 ["Size"]
       40 GETTABLEKS                       R10 R0 K12 ["LayoutOrder"]
       42 SETTABLEKS                       R10 R9 K12 ["LayoutOrder"]
       44 GETTABLEKS                       R10 R0 K13 ["ZIndex"]
       46 SETTABLEKS                       R10 R9 K13 ["ZIndex"]
       48 LOADB                            R10 0
       49 SETTABLEKS                       R10 R9 K14 ["AutoButtonColor"]
       51 GETUPVAL                         R10 1
       52 GETTABLEKS                       R10 R10 K15 ["WHITE"]
       54 SETTABLEKS                       R10 R9 K16 ["BackgroundColor3"]
       56 GETIMPORT                        R10 K20 [Enum.Font.SourceSans]
       58 SETTABLEKS                       R10 R9 K18 ["Font"]
       60 GETTABLEKS                       R11 R0 K21 ["Transparency"]
       62 LOADK                            R15 K22 [0.6]
       63 NEWCLOSURE                       R14 P1
       64 CAPTURE                          VAL R15
       65 NAMECALL                         R12 R11 K6 ["map"]
       67 CALL                             R12 2 1
       68 MOVE                             R10 R12
       69 SETTABLEKS                       R10 R9 K23 ["BackgroundTransparency"]
       71 GETTABLEKS                       R11 R0 K21 ["Transparency"]
       73 LOADK                            R15 K24 [0.1]
       74 NEWCLOSURE                       R14 P1
       75 CAPTURE                          VAL R15
       76 NAMECALL                         R12 R11 K6 ["map"]
       78 CALL                             R12 2 1
       79 MOVE                             R10 R12
       80 SETTABLEKS                       R10 R9 K25 ["TextTransparency"]
       82 LOADB                            R10 1
       83 SETTABLEKS                       R10 R9 K26 ["ClipsDescendants"]
       85 LOADN                            R10 16
       86 SETTABLEKS                       R10 R9 K27 ["TextSize"]
       88 GETUPVAL                         R10 1
       89 GETTABLEKS                       R10 R10 K28 ["BLACK"]
       91 SETTABLEKS                       R10 R9 K29 ["TextColor3"]
       93 GETTABLEKS                       R10 R0 K30 ["Value"]
       95 DUPCLOSURE                       R12 K31 [PROTO_4]
       96 NAMECALL                         R10 R10 K6 ["map"]
       98 CALL                             R10 2 1
       99 SETTABLEKS                       R10 R9 K32 ["Text"]
      101 GETUPVAL                         R10 0
      102 GETTABLEKS                       R10 R10 K33 ["Event"]
      104 GETTABLEKS                       R10 R10 K34 ["MouseEnter"]
      106 GETUPVAL                         R11 0
      107 GETTABLEKS                       R11 R11 K35 ["useCallback"]
      109 NEWCLOSURE                       R12 P3
      110 CAPTURE                          VAL R2
      111 NEWTABLE                         R13 0 1
      113 MOVE                             R14 R2
      114 SETLIST                          R13 R14 1 [1]
      116 CALL                             R11 2 1
      117 SETTABLE                         R11 R9 R10
      118 GETUPVAL                         R10 0
      119 GETTABLEKS                       R10 R10 K33 ["Event"]
      121 GETTABLEKS                       R10 R10 K36 ["MouseLeave"]
      123 GETUPVAL                         R11 0
      124 GETTABLEKS                       R11 R11 K35 ["useCallback"]
      126 NEWCLOSURE                       R12 P4
      127 CAPTURE                          VAL R2
      128 NEWTABLE                         R13 0 1
      130 MOVE                             R14 R2
      131 SETLIST                          R13 R14 1 [1]
      133 CALL                             R11 2 1
      134 SETTABLE                         R11 R9 R10
      135 GETUPVAL                         R10 0
      136 GETTABLEKS                       R10 R10 K33 ["Event"]
      138 GETTABLEKS                       R10 R10 K37 ["MouseButton1Down"]
      140 GETUPVAL                         R11 0
      141 GETTABLEKS                       R11 R11 K35 ["useCallback"]
      143 NEWCLOSURE                       R12 P5
      144 CAPTURE                          VAL R4
      145 CAPTURE                          VAL R6
      146 CAPTURE                          UPVAL U1
      147 CAPTURE                          UPVAL U2
      148 CAPTURE                          VAL R0
      149 CAPTURE                          UPVAL U3
      150 NEWTABLE                         R13 0 5
      152 MOVE                             R14 R6
      153 MOVE                             R15 R4
      154 GETTABLEKS                       R16 R0 K38 ["SetValue"]
      156 GETTABLEKS                       R17 R0 K39 ["Min"]
      158 GETTABLEKS                       R18 R0 K40 ["Max"]
      160 SETLIST                          R13 R14 5 [1]
      162 CALL                             R11 2 1
      163 SETTABLE                         R11 R9 R10
      164 DUPTABLE                         R10 K44 [{"UICorner", "UIStroke", "Slider"}]
      165 GETUPVAL                         R11 0
      166 GETTABLEKS                       R11 R11 K8 ["createElement"]
      168 LOADK                            R12 K41 ["UICorner"]
      169 DUPTABLE                         R13 K46 [{"CornerRadius"}]
      170 GETUPVAL                         R14 1
      171 GETTABLEKS                       R14 R14 K47 ["CORNER_RADIUS"]
      173 SETTABLEKS                       R14 R13 K45 ["CornerRadius"]
      175 CALL                             R11 2 1
      176 SETTABLEKS                       R11 R10 K41 ["UICorner"]
      178 GETUPVAL                         R11 0
      179 GETTABLEKS                       R11 R11 K8 ["createElement"]
      181 LOADK                            R12 K42 ["UIStroke"]
      182 DUPTABLE                         R13 K50 [{"ApplyStrokeMode", "Color", "Transparency"}]
      183 GETIMPORT                        R14 K52 [Enum.ApplyStrokeMode.Border]
      185 SETTABLEKS                       R14 R13 K48 ["ApplyStrokeMode"]
      187 GETUPVAL                         R14 1
      188 GETTABLEKS                       R14 R14 K15 ["WHITE"]
      190 SETTABLEKS                       R14 R13 K49 ["Color"]
      192 DUPCLOSURE                       R16 K53 [PROTO_8]
      193 NAMECALL                         R14 R5 K6 ["map"]
      195 CALL                             R14 2 1
      196 SETTABLEKS                       R14 R13 K21 ["Transparency"]
      198 CALL                             R11 2 1
      199 SETTABLEKS                       R11 R10 K42 ["UIStroke"]
      201 GETUPVAL                         R11 0
      202 GETTABLEKS                       R11 R11 K8 ["createElement"]
      204 LOADK                            R12 K54 ["Frame"]
      205 DUPTABLE                         R13 K55 [{"BackgroundColor3", "Size"}]
      206 GETUPVAL                         R14 1
      207 GETTABLEKS                       R14 R14 K15 ["WHITE"]
      209 SETTABLEKS                       R14 R13 K16 ["BackgroundColor3"]
      211 GETTABLEKS                       R14 R0 K30 ["Value"]
      213 NEWCLOSURE                       R16 P7
      214 CAPTURE                          UPVAL U1
      215 CAPTURE                          VAL R0
      216 NAMECALL                         R14 R14 K6 ["map"]
      218 CALL                             R14 2 1
      219 SETTABLEKS                       R14 R13 K11 ["Size"]
      221 DUPTABLE                         R14 K56 [{"UICorner"}]
      222 GETUPVAL                         R15 0
      223 GETTABLEKS                       R15 R15 K8 ["createElement"]
      225 LOADK                            R16 K41 ["UICorner"]
      226 DUPTABLE                         R17 K46 [{"CornerRadius"}]
      227 GETUPVAL                         R18 1
      228 GETTABLEKS                       R18 R18 K47 ["CORNER_RADIUS"]
      230 SETTABLEKS                       R18 R17 K45 ["CornerRadius"]
      232 CALL                             R15 2 1
      233 SETTABLEKS                       R15 R14 K41 ["UICorner"]
      235 CALL                             R11 3 1
      236 SETTABLEKS                       R11 R10 K43 ["Slider"]
      238 CALL                             R7 3 -1
      239 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UserInputService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["RunService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["StudioCameraUI"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R2 K11 ["Packages"]
       23 GETTABLEKS                       R4 R4 K12 ["React"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R2 K13 ["Src"]
       30 GETTABLEKS                       R5 R5 K14 ["Util"]
       32 GETTABLEKS                       R5 R5 K15 ["Constants"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K16 [PROTO_1]
       36 DUPCLOSURE                       R6 K17 [PROTO_2]
       37 DUPCLOSURE                       R7 K18 [PROTO_10]
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R1
       42 RETURN                           R7 1
