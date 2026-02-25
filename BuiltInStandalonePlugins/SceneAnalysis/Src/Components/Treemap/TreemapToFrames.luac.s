PROTO_0:
        0 LOADN                            R5 0
        1 LOADN                            R6 1
        2 FASTCALL3                        MATH_CLAMP R0 R5 R6
        4 MOVE                             R4 R0
        5 GETIMPORT                        R3 K2 [math.clamp]
        7 CALL                             R3 3 1
        8 MOVE                             R0 R3
        9 LOADN                            R5 0
       10 LOADN                            R6 1
       11 FASTCALL3                        MATH_CLAMP R1 R5 R6
       13 MOVE                             R4 R1
       14 GETIMPORT                        R3 K2 [math.clamp]
       16 CALL                             R3 3 1
       17 MOVE                             R1 R3
       18 LOADN                            R5 0
       19 LOADN                            R6 1
       20 FASTCALL3                        MATH_CLAMP R2 R5 R6
       22 MOVE                             R4 R2
       23 GETIMPORT                        R3 K2 [math.clamp]
       25 CALL                             R3 3 1
       26 MOVE                             R2 R3
       27 GETIMPORT                        R3 K5 [Color3.fromHSV]
       29 MOVE                             R4 R0
       30 MOVE                             R5 R1
       31 MOVE                             R6 R2
       32 CALL                             R3 3 -1
       33 RETURN                           R3 -1

PROTO_1:
        0 NAMECALL                         R2 R0 K0 ["ToHSV"]
        2 CALL                             R2 1 3
        3 MODK                             R6 R1 K1 [10]
        4 DIVK                             R5 R6 K1 [10]
        5 MULK                             R6 R5 K2 [0.1]
        6 ADD                              R2 R2 R6
        7 LOADN                            R6 1
        8 JUMPIFNOTLT                      R6 R2 ; [+2]
       10 SUBK                             R2 R2 K3 [1]
       11 GETIMPORT                        R6 K6 [Color3.fromHSV]
       13 MOVE                             R7 R2
       14 MOVE                             R8 R3
       15 MOVE                             R9 R4
       16 CALL                             R6 3 -1
       17 RETURN                           R6 -1

PROTO_2:
        0 NAMECALL                         R2 R0 K0 ["ToHSV"]
        2 CALL                             R2 1 3
        3 MODK                             R6 R1 K1 [10]
        4 DIVK                             R5 R6 K1 [10]
        5 SUBK                             R4 R4 K2 [0.1]
        6 MULK                             R6 R5 K2 [0.1]
        7 ADD                              R4 R4 R6
        8 LOADN                            R6 0
        9 JUMPIFNOTLT                      R4 R6 ; [+2]
       11 LOADN                            R4 0
       12 LOADN                            R6 1
       13 JUMPIFNOTLT                      R6 R4 ; [+2]
       15 LOADN                            R4 1
       16 GETIMPORT                        R6 K5 [Color3.fromHSV]
       18 MOVE                             R7 R2
       19 MOVE                             R8 R3
       20 MOVE                             R9 R4
       21 CALL                             R6 3 -1
       22 RETURN                           R6 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 ADDK                             R1 R1 K0 [1]
        2 SETUPVAL                         R1 0
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R3 1
        5 LENGTH                           R2 R3
        6 JUMPIFNOTLT                      R2 R1 ; [+3]
        8 LOADN                            R1 1
        9 SETUPVAL                         R1 0
       10 GETUPVAL                         R2 1
       11 GETUPVAL                         R3 0
       12 GETTABLE                         R1 R2 R3
       13 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["rectangle"]
        2 JUMPIFNOTEQKNIL                  R3 ; [+2]
        4 RETURN                           R0 0
        5 GETIMPORT                        R3 K3 [Instance.new]
        7 LOADK                            R4 K4 ["Frame"]
        8 CALL                             R3 1 1
        9 GETTABLEKS                       R5 R0 K5 ["original"]
       11 GETTABLEKS                       R4 R5 K6 ["name"]
       13 JUMPIFNOT                        R4 ; [+6]
       14 GETTABLEKS                       R5 R0 K5 ["original"]
       16 GETTABLEKS                       R4 R5 K6 ["name"]
       18 SETTABLEKS                       R4 R3 K7 ["Name"]
       20 GETIMPORT                        R4 K9 [UDim2.new]
       22 LOADN                            R5 0
       23 GETTABLEKS                       R8 R0 K0 ["rectangle"]
       25 GETTABLEKS                       R7 R8 K11 ["x"]
       27 ADDK                             R6 R7 K10 [1]
       28 LOADN                            R7 0
       29 GETTABLEKS                       R10 R0 K0 ["rectangle"]
       31 GETTABLEKS                       R9 R10 K12 ["y"]
       33 ADDK                             R8 R9 K10 [1]
       34 CALL                             R4 4 1
       35 SETTABLEKS                       R4 R3 K13 ["Position"]
       37 GETIMPORT                        R4 K9 [UDim2.new]
       39 LOADN                            R5 0
       40 GETTABLEKS                       R8 R0 K0 ["rectangle"]
       42 GETTABLEKS                       R7 R8 K15 ["width"]
       44 SUBK                             R6 R7 K14 [2]
       45 LOADN                            R7 0
       46 GETTABLEKS                       R10 R0 K0 ["rectangle"]
       48 GETTABLEKS                       R9 R10 K16 ["height"]
       50 SUBK                             R8 R9 K14 [2]
       51 CALL                             R4 4 1
       52 SETTABLEKS                       R4 R3 K17 ["Size"]
       54 LOADN                            R4 1
       55 SETTABLEKS                       R4 R3 K18 ["BorderSizePixel"]
       57 LOADN                            R4 0
       58 SETTABLEKS                       R4 R3 K19 ["BackgroundTransparency"]
       60 GETUPVAL                         R4 0
       61 SETTABLEKS                       R4 R3 K20 ["BorderColor3"]
       63 SETTABLEKS                       R2 R3 K21 ["BackgroundColor3"]
       65 LOADB                            R4 0
       66 SETTABLEKS                       R4 R3 K22 ["ClipsDescendants"]
       68 LOADN                            R4 0
       69 SETTABLEKS                       R4 R3 K23 ["Transparency"]
       71 LOADN                            R4 0
       72 SETTABLEKS                       R4 R3 K19 ["BackgroundTransparency"]
       74 GETUPVAL                         R5 1
       75 FASTCALL2                        TABLE_INSERT R5 R3 ; [+4]
       77 MOVE                             R6 R3
       78 GETIMPORT                        R4 K26 [table.insert]
       80 CALL                             R4 2 0
       81 GETIMPORT                        R4 K3 [Instance.new]
       83 LOADK                            R5 K4 ["Frame"]
       84 CALL                             R4 1 1
       85 GETIMPORT                        R5 K9 [UDim2.new]
       87 LOADN                            R6 0
       88 GETTABLEKS                       R9 R0 K0 ["rectangle"]
       90 GETTABLEKS                       R8 R9 K11 ["x"]
       92 ADDK                             R7 R8 K10 [1]
       93 LOADN                            R8 0
       94 GETTABLEKS                       R11 R0 K0 ["rectangle"]
       96 GETTABLEKS                       R10 R11 K12 ["y"]
       98 ADDK                             R9 R10 K10 [1]
       99 CALL                             R5 4 1
      100 SETTABLEKS                       R5 R4 K13 ["Position"]
      102 GETIMPORT                        R5 K9 [UDim2.new]
      104 LOADN                            R6 0
      105 GETTABLEKS                       R9 R0 K0 ["rectangle"]
      107 GETTABLEKS                       R8 R9 K15 ["width"]
      109 SUBK                             R7 R8 K14 [2]
      110 LOADN                            R8 0
      111 LOADN                            R9 19
      112 CALL                             R5 4 1
      113 SETTABLEKS                       R5 R4 K17 ["Size"]
      115 LOADN                            R5 0
      116 SETTABLEKS                       R5 R4 K19 ["BackgroundTransparency"]
      118 GETUPVAL                         R5 2
      119 SETTABLEKS                       R5 R4 K21 ["BackgroundColor3"]
      121 GETUPVAL                         R6 1
      122 FASTCALL2                        TABLE_INSERT R6 R4 ; [+4]
      124 MOVE                             R7 R4
      125 GETIMPORT                        R5 K26 [table.insert]
      127 CALL                             R5 2 0
      128 LOADN                            R5 0
      129 GETTABLEKS                       R7 R0 K5 ["original"]
      131 GETTABLEKS                       R6 R7 K6 ["name"]
      133 JUMPIFNOT                        R6 ; [+21]
      134 GETIMPORT                        R8 K29 [game]
      136 GETTABLEKS                       R7 R8 K30 ["TextService"]
      138 GETTABLEKS                       R10 R0 K5 ["original"]
      140 GETTABLEKS                       R9 R10 K6 ["name"]
      142 LOADN                            R10 14
      143 GETUPVAL                         R11 3
      144 GETIMPORT                        R12 K32 [Vector2.new]
      146 LOADN                            R13 200
      147 LOADN                            R14 200
      148 CALL                             R12 2 -1
      149 NAMECALL                         R7 R7 K33 ["GetTextSize"]
      151 CALL                             R7 -1 1
      152 GETTABLEKS                       R6 R7 K34 ["X"]
      154 ADDK                             R5 R6 K27 [4]
      155 GETTABLEKS                       R7 R0 K0 ["rectangle"]
      157 GETTABLEKS                       R6 R7 K15 ["width"]
      159 ADDK                             R7 R5 K14 [2]
      160 JUMPIFNOTLT                      R7 R6 ; [+85]
      162 GETTABLEKS                       R7 R0 K0 ["rectangle"]
      164 GETTABLEKS                       R6 R7 K16 ["height"]
      166 LOADN                            R7 16
      167 JUMPIFNOTLT                      R7 R6 ; [+78]
      169 GETIMPORT                        R6 K3 [Instance.new]
      171 LOADK                            R7 K35 ["TextLabel"]
      172 CALL                             R6 1 1
      173 GETIMPORT                        R7 K39 [Enum.TextXAlignment.Left]
      175 SETTABLEKS                       R7 R6 K37 ["TextXAlignment"]
      177 GETIMPORT                        R7 K42 [Enum.TextYAlignment.Top]
      179 SETTABLEKS                       R7 R6 K40 ["TextYAlignment"]
      181 LOADN                            R7 1
      182 SETTABLEKS                       R7 R6 K19 ["BackgroundTransparency"]
      184 GETTABLEKS                       R8 R0 K5 ["original"]
      186 GETTABLEKS                       R7 R8 K6 ["name"]
      188 JUMPIFNOT                        R7 ; [+6]
      189 GETTABLEKS                       R8 R0 K5 ["original"]
      191 GETTABLEKS                       R7 R8 K6 ["name"]
      193 SETTABLEKS                       R7 R6 K43 ["Text"]
      195 GETUPVAL                         R7 4
      196 SETTABLEKS                       R7 R6 K44 ["Font"]
      198 LOADN                            R7 14
      199 SETTABLEKS                       R7 R6 K45 ["TextSize"]
      201 GETUPVAL                         R7 5
      202 SETTABLEKS                       R7 R6 K46 ["TextColor3"]
      204 LOADB                            R7 0
      205 SETTABLEKS                       R7 R6 K22 ["ClipsDescendants"]
      207 GETIMPORT                        R7 K9 [UDim2.new]
      209 LOADN                            R8 0
      210 GETTABLEKS                       R10 R0 K0 ["rectangle"]
      212 GETTABLEKS                       R9 R10 K15 ["width"]
      214 LOADN                            R10 0
      215 LOADN                            R11 14
      216 CALL                             R7 4 1
      217 SETTABLEKS                       R7 R6 K17 ["Size"]
      219 GETTABLEKS                       R9 R3 K13 ["Position"]
      221 GETIMPORT                        R10 K9 [UDim2.new]
      223 LOADN                            R11 0
      224 LOADN                            R12 0
      225 LOADN                            R13 0
      226 LOADN                            R14 1
      227 CALL                             R10 4 1
      228 ADD                              R8 R9 R10
      229 GETIMPORT                        R9 K9 [UDim2.new]
      231 LOADN                            R10 0
      232 LOADN                            R11 2
      233 LOADN                            R12 0
      234 LOADN                            R13 2
      235 CALL                             R9 4 1
      236 ADD                              R7 R8 R9
      237 SETTABLEKS                       R7 R6 K13 ["Position"]
      239 GETUPVAL                         R8 6
      240 FASTCALL2                        TABLE_INSERT R8 R6 ; [+4]
      242 MOVE                             R9 R6
      243 GETIMPORT                        R7 K26 [table.insert]
      245 CALL                             R7 2 0
      246 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R4 R0 K0 ["rectangle"]
        2 JUMPIFNOTEQKNIL                  R4 ; [+2]
        4 RETURN                           R0 0
        5 GETIMPORT                        R4 K3 [Instance.new]
        7 LOADK                            R5 K4 ["Frame"]
        8 CALL                             R4 1 1
        9 GETTABLEKS                       R6 R0 K5 ["original"]
       11 GETTABLEKS                       R5 R6 K6 ["name"]
       13 JUMPIFNOT                        R5 ; [+6]
       14 GETTABLEKS                       R6 R0 K5 ["original"]
       16 GETTABLEKS                       R5 R6 K6 ["name"]
       18 SETTABLEKS                       R5 R4 K7 ["Name"]
       20 GETIMPORT                        R5 K9 [UDim2.new]
       22 LOADN                            R6 0
       23 GETTABLEKS                       R9 R0 K0 ["rectangle"]
       25 GETTABLEKS                       R8 R9 K11 ["x"]
       27 ADDK                             R7 R8 K10 [1]
       28 LOADN                            R8 0
       29 GETTABLEKS                       R11 R0 K0 ["rectangle"]
       31 GETTABLEKS                       R10 R11 K12 ["y"]
       33 ADDK                             R9 R10 K10 [1]
       34 CALL                             R5 4 1
       35 SETTABLEKS                       R5 R4 K13 ["Position"]
       37 GETIMPORT                        R5 K9 [UDim2.new]
       39 LOADN                            R6 0
       40 GETTABLEKS                       R9 R0 K0 ["rectangle"]
       42 GETTABLEKS                       R8 R9 K15 ["width"]
       44 SUBK                             R7 R8 K14 [2]
       45 LOADN                            R8 0
       46 GETTABLEKS                       R11 R0 K0 ["rectangle"]
       48 GETTABLEKS                       R10 R11 K16 ["height"]
       50 SUBK                             R9 R10 K14 [2]
       51 CALL                             R5 4 1
       52 SETTABLEKS                       R5 R4 K17 ["Size"]
       54 LOADN                            R5 1
       55 SETTABLEKS                       R5 R4 K18 ["BorderSizePixel"]
       57 NAMECALL                         R5 R2 K19 ["ToHSV"]
       59 CALL                             R5 1 3
       60 SETTABLEKS                       R2 R4 K20 ["BackgroundColor3"]
       62 MOVE                             R9 R5
       63 MOVE                             R10 R6
       64 MUL                              R11 R7 R3
       65 LOADN                            R14 0
       66 LOADN                            R15 1
       67 FASTCALL3                        MATH_CLAMP R9 R14 R15
       69 MOVE                             R13 R9
       70 GETIMPORT                        R12 K23 [math.clamp]
       72 CALL                             R12 3 1
       73 MOVE                             R9 R12
       74 LOADN                            R14 0
       75 LOADN                            R15 1
       76 FASTCALL3                        MATH_CLAMP R10 R14 R15
       78 MOVE                             R13 R10
       79 GETIMPORT                        R12 K23 [math.clamp]
       81 CALL                             R12 3 1
       82 MOVE                             R10 R12
       83 LOADN                            R14 0
       84 LOADN                            R15 1
       85 FASTCALL3                        MATH_CLAMP R11 R14 R15
       87 MOVE                             R13 R11
       88 GETIMPORT                        R12 K23 [math.clamp]
       90 CALL                             R12 3 1
       91 MOVE                             R11 R12
       92 GETIMPORT                        R12 K26 [Color3.fromHSV]
       94 MOVE                             R13 R9
       95 MOVE                             R14 R10
       96 MOVE                             R15 R11
       97 CALL                             R12 3 1
       98 MOVE                             R8 R12
       99 SETTABLEKS                       R8 R4 K27 ["BorderColor3"]
      101 LOADB                            R8 0
      102 SETTABLEKS                       R8 R4 K28 ["ClipsDescendants"]
      104 LOADN                            R8 0
      105 SETTABLEKS                       R8 R4 K29 ["Transparency"]
      107 LOADN                            R8 0
      108 SETTABLEKS                       R8 R4 K30 ["Rotation"]
      110 FASTCALL2                        TABLE_INSERT R1 R4 ; [+5]
      112 MOVE                             R9 R1
      113 MOVE                             R10 R4
      114 GETIMPORT                        R8 K33 [table.insert]
      116 CALL                             R8 2 0
      117 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R4 R0 K0 ["rectangle"]
        2 JUMPIFNOTEQKNIL                  R4 ; [+2]
        4 RETURN                           R0 0
        5 GETIMPORT                        R4 K3 [Instance.new]
        7 LOADK                            R5 K4 ["Frame"]
        8 CALL                             R4 1 1
        9 GETTABLEKS                       R6 R0 K5 ["original"]
       11 GETTABLEKS                       R5 R6 K6 ["name"]
       13 JUMPIFNOT                        R5 ; [+6]
       14 GETTABLEKS                       R6 R0 K5 ["original"]
       16 GETTABLEKS                       R5 R6 K6 ["name"]
       18 SETTABLEKS                       R5 R4 K7 ["Name"]
       20 GETIMPORT                        R5 K9 [UDim2.new]
       22 LOADN                            R6 0
       23 GETTABLEKS                       R8 R0 K0 ["rectangle"]
       25 GETTABLEKS                       R7 R8 K10 ["x"]
       27 LOADN                            R8 0
       28 GETTABLEKS                       R10 R0 K0 ["rectangle"]
       30 GETTABLEKS                       R9 R10 K11 ["y"]
       32 CALL                             R5 4 1
       33 SETTABLEKS                       R5 R4 K12 ["Position"]
       35 GETIMPORT                        R5 K9 [UDim2.new]
       37 LOADN                            R6 0
       38 GETTABLEKS                       R8 R0 K0 ["rectangle"]
       40 GETTABLEKS                       R7 R8 K13 ["width"]
       42 LOADN                            R8 0
       43 GETTABLEKS                       R10 R0 K0 ["rectangle"]
       45 GETTABLEKS                       R9 R10 K14 ["height"]
       47 CALL                             R5 4 1
       48 SETTABLEKS                       R5 R4 K15 ["Size"]
       50 LOADB                            R5 0
       51 SETTABLEKS                       R5 R4 K16 ["ClipsDescendants"]
       53 LOADN                            R5 1
       54 SETTABLEKS                       R5 R4 K17 ["Transparency"]
       56 LOADN                            R5 0
       57 GETTABLEKS                       R7 R0 K5 ["original"]
       59 GETTABLEKS                       R6 R7 K6 ["name"]
       61 JUMPIFNOT                        R6 ; [+20]
       62 GETIMPORT                        R7 K19 [game]
       64 GETTABLEKS                       R6 R7 K20 ["TextService"]
       66 GETTABLEKS                       R9 R0 K5 ["original"]
       68 GETTABLEKS                       R8 R9 K6 ["name"]
       70 LOADN                            R9 14
       71 GETUPVAL                         R10 0
       72 GETIMPORT                        R11 K22 [Vector2.new]
       74 LOADN                            R12 200
       75 LOADN                            R13 200
       76 CALL                             R11 2 -1
       77 NAMECALL                         R6 R6 K23 ["GetTextSize"]
       79 CALL                             R6 -1 1
       80 GETTABLEKS                       R5 R6 K24 ["X"]
       82 GETTABLEKS                       R7 R0 K0 ["rectangle"]
       84 GETTABLEKS                       R6 R7 K13 ["width"]
       86 ADDK                             R7 R5 K25 [2]
       87 JUMPIFNOTLT                      R7 R6 ; [+94]
       89 GETTABLEKS                       R7 R0 K0 ["rectangle"]
       91 GETTABLEKS                       R6 R7 K14 ["height"]
       93 LOADN                            R7 16
       94 JUMPIFNOTLT                      R7 R6 ; [+87]
       96 GETIMPORT                        R6 K3 [Instance.new]
       98 LOADK                            R7 K26 ["TextLabel"]
       99 CALL                             R6 1 1
      100 GETIMPORT                        R7 K30 [Enum.TextXAlignment.Right]
      102 SETTABLEKS                       R7 R6 K28 ["TextXAlignment"]
      104 GETIMPORT                        R7 K33 [Enum.TextYAlignment.Bottom]
      106 SETTABLEKS                       R7 R6 K31 ["TextYAlignment"]
      108 LOADN                            R7 1
      109 SETTABLEKS                       R7 R6 K34 ["BackgroundTransparency"]
      111 GETTABLEKS                       R8 R0 K5 ["original"]
      113 GETTABLEKS                       R7 R8 K6 ["name"]
      115 JUMPIFNOT                        R7 ; [+6]
      116 GETTABLEKS                       R8 R0 K5 ["original"]
      118 GETTABLEKS                       R7 R8 K6 ["name"]
      120 SETTABLEKS                       R7 R6 K35 ["Text"]
      122 GETUPVAL                         R7 0
      123 SETTABLEKS                       R7 R6 K36 ["Font"]
      125 GETUPVAL                         R7 1
      126 SETTABLEKS                       R7 R6 K37 ["TextColor3"]
      128 LOADN                            R7 14
      129 SETTABLEKS                       R7 R6 K38 ["TextSize"]
      131 LOADB                            R7 1
      132 SETTABLEKS                       R7 R6 K16 ["ClipsDescendants"]
      134 GETIMPORT                        R7 K9 [UDim2.new]
      136 LOADN                            R8 0
      137 GETTABLEKS                       R10 R0 K0 ["rectangle"]
      139 GETTABLEKS                       R9 R10 K13 ["width"]
      141 LOADN                            R10 0
      142 LOADN                            R11 14
      143 CALL                             R7 4 1
      144 SETTABLEKS                       R7 R6 K15 ["Size"]
      146 GETIMPORT                        R8 K9 [UDim2.new]
      148 LOADN                            R9 0
      149 GETTABLEKS                       R11 R0 K0 ["rectangle"]
      151 GETTABLEKS                       R10 R11 K10 ["x"]
      153 LOADN                            R11 0
      154 GETTABLEKS                       R15 R0 K0 ["rectangle"]
      156 GETTABLEKS                       R14 R15 K11 ["y"]
      158 GETTABLEKS                       R16 R0 K0 ["rectangle"]
      160 GETTABLEKS                       R15 R16 K14 ["height"]
      162 ADD                              R13 R14 R15
      163 SUBK                             R12 R13 K39 [14]
      164 CALL                             R8 4 1
      165 GETIMPORT                        R9 K9 [UDim2.new]
      167 LOADN                            R10 0
      168 LOADN                            R11 252
      169 LOADN                            R12 0
      170 LOADN                            R13 254
      171 CALL                             R9 4 1
      172 ADD                              R7 R8 R9
      173 SETTABLEKS                       R7 R6 K12 ["Position"]
      175 GETUPVAL                         R8 2
      176 FASTCALL2                        TABLE_INSERT R8 R6 ; [+4]
      178 MOVE                             R9 R6
      179 GETIMPORT                        R7 K42 [table.insert]
      181 CALL                             R7 2 0
      182 NAMECALL                         R7 R3 K43 ["ToHSV"]
      184 CALL                             R7 1 3
      185 MODK                             R11 R2 K44 [10]
      186 DIVK                             R10 R11 K44 [10]
      187 MULK                             R11 R10 K45 [0.1]
      188 ADD                              R7 R7 R11
      189 LOADN                            R11 1
      190 JUMPIFNOTLT                      R11 R7 ; [+2]
      192 SUBK                             R7 R7 K46 [1]
      193 GETIMPORT                        R11 K49 [Color3.fromHSV]
      195 MOVE                             R12 R7
      196 MOVE                             R13 R8
      197 MOVE                             R14 R9
      198 CALL                             R11 3 1
      199 MOVE                             R6 R11
      200 GETUPVAL                         R7 3
      201 MOVE                             R8 R0
      202 GETUPVAL                         R9 4
      203 MOVE                             R10 R6
      204 LOADK                            R11 K50 [0.7]
      205 CALL                             R7 4 0
      206 GETTABLEKS                       R7 R0 K51 ["children"]
      208 JUMPIFNOT                        R7 ; [+36]
      209 GETTABLEKS                       R7 R0 K51 ["children"]
      211 LOADNIL                          R8
      212 LOADNIL                          R9
      213 FORGPREP                         R7
      214 NAMECALL                         R13 R6 K43 ["ToHSV"]
      216 CALL                             R13 1 3
      217 MODK                             R17 R10 K44 [10]
      218 DIVK                             R16 R17 K44 [10]
      219 SUBK                             R15 R15 K45 [0.1]
      220 MULK                             R17 R16 K45 [0.1]
      221 ADD                              R15 R15 R17
      222 LOADN                            R17 0
      223 JUMPIFNOTLT                      R15 R17 ; [+2]
      225 LOADN                            R15 0
      226 LOADN                            R17 1
      227 JUMPIFNOTLT                      R17 R15 ; [+2]
      229 LOADN                            R15 1
      230 GETIMPORT                        R17 K49 [Color3.fromHSV]
      232 MOVE                             R18 R13
      233 MOVE                             R19 R14
      234 MOVE                             R20 R15
      235 CALL                             R17 3 1
      236 MOVE                             R12 R17
      237 GETUPVAL                         R13 3
      238 MOVE                             R14 R11
      239 GETUPVAL                         R15 5
      240 MOVE                             R16 R12
      241 LOADK                            R17 K52 [0.9]
      242 CALL                             R13 4 0
      243 FORGLOOP                         R7 2 ; [-30]
      245 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R2 K3 [Enum.Font.SourceSans]
        2 GETIMPORT                        R3 K5 [Enum.Font.SourceSansBold]
        4 GETIMPORT                        R4 K8 [Color3.new]
        6 LOADN                            R5 0
        7 LOADN                            R6 0
        8 LOADN                            R7 0
        9 CALL                             R4 3 1
       10 GETIMPORT                        R5 K8 [Color3.new]
       12 LOADN                            R6 1
       13 LOADN                            R7 1
       14 LOADN                            R8 1
       15 CALL                             R5 3 1
       16 GETIMPORT                        R6 K8 [Color3.new]
       18 LOADK                            R7 K9 [0.152941176470588]
       19 LOADK                            R8 K10 [0.16078431372549]
       20 LOADK                            R9 K11 [0.180392156862745]
       21 CALL                             R6 3 1
       22 LOADN                            R7 0
       23 LOADN                            R8 1
       24 NEWTABLE                         R9 0 0
       26 GETIMPORT                        R10 K13 [Instance.new]
       28 LOADK                            R11 K14 ["Frame"]
       29 CALL                             R10 1 1
       30 LOADN                            R11 1
       31 SETTABLEKS                       R11 R10 K15 ["BackgroundTransparency"]
       33 LOADN                            R11 0
       34 SETTABLEKS                       R11 R10 K16 ["BorderSizePixel"]
       36 GETIMPORT                        R11 K18 [UDim2.new]
       38 LOADN                            R12 1
       39 LOADN                            R13 0
       40 LOADN                            R14 1
       41 LOADN                            R15 0
       42 CALL                             R11 4 1
       43 SETTABLEKS                       R11 R10 K19 ["Size"]
       45 NEWTABLE                         R11 0 0
       47 NEWTABLE                         R12 0 0
       49 NEWTABLE                         R13 0 0
       51 NEWTABLE                         R14 0 0
       53 NEWTABLE                         R9 0 0
       55 LOADN                            R17 0
       56 LOADN                            R15 1
       57 LOADK                            R16 K20 [0.1]
       58 FORNPREP                         R15
       59 ADDK                             R18 R17 K21 [0.3]
       60 MODK                             R18 R18 K22 [1]
       61 MOVE                             R20 R9
       62 GETIMPORT                        R21 K24 [Color3.fromHSV]
       64 ADDK                             R22 R17 K25 [0.5]
       65 LOADK                            R23 K21 [0.3]
       66 LOADK                            R24 K26 [0.8]
       67 CALL                             R21 3 -1
       68 FASTCALL                         TABLE_INSERT ; [+2]
       69 GETIMPORT                        R19 K29 [table.insert]
       71 CALL                             R19 -1 0
       72 FORNLOOP                         R15
       73 DUPCLOSURE                       R15 K30 [PROTO_1]
       74 DUPCLOSURE                       R16 K31 [PROTO_2]
       75 GETIMPORT                        R17 K8 [Color3.new]
       77 LOADN                            R18 0
       78 LOADN                            R19 0
       79 LOADN                            R20 0
       80 CALL                             R17 3 1
       81 NEWCLOSURE                       R18 P2
       82 CAPTURE                          REF R8
       83 CAPTURE                          REF R9
       84 NEWCLOSURE                       R19 P3
       85 CAPTURE                          VAL R17
       86 CAPTURE                          VAL R11
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R14
       92 DUPCLOSURE                       R20 K32 [PROTO_5]
       93 NEWCLOSURE                       R21 P5
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R14
       97 CAPTURE                          VAL R20
       98 CAPTURE                          VAL R12
       99 CAPTURE                          VAL R13
      100 GETTABLEKS                       R22 R1 K33 ["children"]
      102 JUMPIFNOT                        R22 ; [+39]
      103 GETTABLEKS                       R22 R1 K33 ["children"]
      105 LOADNIL                          R23
      106 LOADNIL                          R24
      107 FORGPREP                         R22
      108 ADDK                             R7 R7 K34 [0.01]
      109 LOADK                            R27 K20 [0.1]
      110 JUMPIFNOTLT                      R27 R7 ; [+2]
      112 LOADN                            R7 0
      113 ADDK                             R8 R8 K22 [1]
      114 LENGTH                           R28 R9
      115 JUMPIFNOTLT                      R28 R8 ; [+2]
      117 LOADN                            R8 1
      118 GETTABLE                         R27 R9 R8
      119 MOVE                             R28 R19
      120 MOVE                             R29 R26
      121 MOVE                             R30 R10
      122 MOVE                             R31 R27
      123 CALL                             R28 3 0
      124 GETTABLEKS                       R28 R26 K33 ["children"]
      126 JUMPIFNOT                        R28 ; [+13]
      127 GETTABLEKS                       R28 R26 K33 ["children"]
      129 LOADNIL                          R29
      130 LOADNIL                          R30
      131 FORGPREP                         R28
      132 MOVE                             R33 R21
      133 MOVE                             R34 R32
      134 MOVE                             R35 R10
      135 MOVE                             R36 R31
      136 MOVE                             R37 R27
      137 CALL                             R33 4 0
      138 FORGLOOP                         R28 2 ; [-7]
      140 FORGLOOP                         R22 2 ; [-33]
      142 MOVE                             R22 R11
      143 LOADNIL                          R23
      144 LOADNIL                          R24
      145 FORGPREP                         R22
      146 SETTABLEKS                       R10 R26 K35 ["Parent"]
      148 FORGLOOP                         R22 2 ; [-3]
      150 MOVE                             R22 R12
      151 LOADNIL                          R23
      152 LOADNIL                          R24
      153 FORGPREP                         R22
      154 SETTABLEKS                       R10 R26 K35 ["Parent"]
      156 FORGLOOP                         R22 2 ; [-3]
      158 MOVE                             R22 R13
      159 LOADNIL                          R23
      160 LOADNIL                          R24
      161 FORGPREP                         R22
      162 SETTABLEKS                       R10 R26 K35 ["Parent"]
      164 FORGLOOP                         R22 2 ; [-3]
      166 MOVE                             R22 R14
      167 LOADNIL                          R23
      168 LOADNIL                          R24
      169 FORGPREP                         R22
      170 SETTABLEKS                       R10 R26 K35 ["Parent"]
      172 FORGLOOP                         R22 2 ; [-3]
      174 CLOSEUPVALS                      R8
      175 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 GETIMPORT                        R1 K1 [script]
        5 LOADK                            R3 K2 ["SceneAnalysis"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R6 R1 K6 ["Src"]
       13 GETTABLEKS                       R5 R6 K7 ["Components"]
       15 GETTABLEKS                       R4 R5 K8 ["Treemap"]
       17 GETTABLEKS                       R3 R4 K9 ["TreemapTypes"]
       19 CALL                             R2 1 1
       20 DUPCLOSURE                       R3 K10 [PROTO_0]
       21 DUPCLOSURE                       R4 K11 [PROTO_7]
       22 SETTABLEKS                       R4 R0 K12 ["RenderTreemap"]
       24 RETURN                           R0 1
