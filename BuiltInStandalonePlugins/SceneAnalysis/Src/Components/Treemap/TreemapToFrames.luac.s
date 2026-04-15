PROTO_0:
        0 GETIMPORT                        R3 K2 [Color3.new]
        2 LOADN                            R4 0
        3 LOADN                            R5 0
        4 LOADN                            R6 0
        5 CALL                             R3 3 1
        6 LOADK                            R4 K3 [0.5]
        7 NAMECALL                         R1 R0 K4 ["Lerp"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K1 ["Size"]
        2 ORK                              R2 R3 K0 [0]
        3 JUMPIFEQKS                       R1 K2 ["count"] ; [+3]
        5 JUMPIFNOTEQKS                    R1 K3 ["instanceCount"] ; [+7]
        7 FASTCALL1                        TOSTRING R2 ; [+3]
        8 MOVE                             R4 R2
        9 GETIMPORT                        R3 K5 [tostring]
       11 CALL                             R3 1 1
       12 RETURN                           R3 1
       13 GETUPVAL                         R3 0
       14 MOVE                             R4 R2
       15 CALL                             R3 1 -1
       16 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+5]
        4 NEWTABLE                         R1 0 0
        6 GETUPVAL                         R2 0
        7 SETTABLE                         R1 R2 R0
        8 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["original"]
        2 JUMPIFNOT                        R1 ; [+10]
        3 GETTABLEKS                       R2 R0 K0 ["original"]
        5 GETTABLEKS                       R1 R2 K1 ["Color"]
        7 JUMPIFNOT                        R1 ; [+5]
        8 GETTABLEKS                       R2 R0 K0 ["original"]
       10 GETTABLEKS                       R1 R2 K1 ["Color"]
       12 RETURN                           R1 1
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R4 R0 K3 ["colorRampIndex"]
       16 ORK                              R3 R4 K2 [1]
       17 GETTABLE                         R1 R2 R3
       18 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["rectangle"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R2 R0 K1 ["Children"]
        7 JUMPIFNOT                        R2 ; [+18]
        8 GETTABLEKS                       R3 R0 K1 ["Children"]
       10 LENGTH                           R2 R3
       11 LOADN                            R3 0
       12 JUMPIFNOTLT                      R3 R2 ; [+13]
       14 GETTABLEKS                       R2 R0 K1 ["Children"]
       16 LOADNIL                          R3
       17 LOADNIL                          R4
       18 FORGPREP                         R2
       19 GETUPVAL                         R7 0
       20 MOVE                             R8 R6
       21 MOVE                             R9 R1
       22 CALL                             R7 2 0
       23 FORGLOOP                         R2 2 ; [-5]
       25 RETURN                           R0 0
       26 FASTCALL2                        TABLE_INSERT R1 R0 ; [+5]
       28 MOVE                             R3 R1
       29 MOVE                             R4 R0
       30 GETIMPORT                        R2 K4 [table.insert]
       32 CALL                             R2 2 0
       33 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R4 R0 K1 ["layoutSize"]
        2 ORK                              R3 R4 K0 [0]
        3 GETTABLEKS                       R5 R1 K1 ["layoutSize"]
        5 ORK                              R4 R5 K0 [0]
        6 JUMPIFLT                         R4 R3 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 RETURN                           R2 1

PROTO_6:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 GETIMPORT                        R2 K2 [table.sort]
        8 MOVE                             R3 R1
        9 DUPCLOSURE                       R4 K3 [PROTO_5]
       10 CALL                             R2 2 0
       11 LENGTH                           R2 R1
       12 GETUPVAL                         R4 1
       13 LENGTH                           R3 R4
       14 MOVE                             R4 R1
       15 LOADNIL                          R5
       16 LOADNIL                          R6
       17 FORGPREP                         R4
       18 DIV                              R11 R7 R2
       19 MUL                              R10 R11 R3
       20 FASTCALL1                        MATH_CEIL R10 ; [+2]
       21 GETIMPORT                        R9 K6 [math.ceil]
       23 CALL                             R9 1 1
       24 LOADN                            R12 1
       25 FASTCALL3                        MATH_CLAMP R9 R12 R3
       27 MOVE                             R11 R9
       28 MOVE                             R13 R3
       29 GETIMPORT                        R10 K8 [math.clamp]
       31 CALL                             R10 3 1
       32 SETTABLEKS                       R10 R8 K9 ["colorRampIndex"]
       34 FORGLOOP                         R4 2 ; [-17]
       36 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R2
        2 JUMPIFNOTEQKNIL                  R3 ; [+5]
        4 NEWTABLE                         R3 0 0
        6 GETUPVAL                         R4 0
        7 SETTABLE                         R3 R4 R2
        8 GETTABLE                         R4 R3 R1
        9 JUMPIFNOTEQKNIL                  R4 ; [+4]
       11 NEWTABLE                         R4 0 0
       13 SETTABLE                         R4 R3 R1
       14 GETTABLE                         R5 R4 R0
       15 JUMPIFNOTEQKNIL                  R5 ; [+30]
       17 GETIMPORT                        R7 K1 [game]
       19 GETTABLEKS                       R6 R7 K2 ["TextService"]
       21 MOVE                             R8 R0
       22 MOVE                             R9 R1
       23 MOVE                             R10 R2
       24 GETIMPORT                        R11 K5 [Vector2.new]
       26 LOADN                            R12 208
       27 LOADN                            R13 208
       28 CALL                             R11 2 -1
       29 NAMECALL                         R6 R6 K6 ["GetTextSize"]
       31 CALL                             R6 -1 1
       32 MOVE                             R5 R6
       33 GETUPVAL                         R6 1
       34 ADDK                             R6 R6 K7 [1]
       35 SETUPVAL                         R6 1
       36 SETTABLE                         R5 R4 R0
       37 GETUPVAL                         R6 1
       38 LOADN                            R7 232
       39 JUMPIFNOTLT                      R7 R6 ; [+6]
       41 LOADN                            R6 0
       42 SETUPVAL                         R6 1
       43 NEWTABLE                         R6 0 0
       45 SETUPVAL                         R6 0
       46 RETURN                           R5 1

PROTO_8:
        0 ORK                              R4 R3 K0 [-1]
        1 GETIMPORT                        R5 K3 [Instance.new]
        3 LOADK                            R6 K4 ["Frame"]
        4 CALL                             R5 1 1
        5 GETIMPORT                        R6 K6 [UDim2.new]
        7 GETTABLEKS                       R9 R0 K7 ["Position"]
        9 GETTABLEKS                       R8 R9 K8 ["X"]
       11 GETTABLEKS                       R7 R8 K9 ["Scale"]
       13 GETTABLEKS                       R11 R0 K7 ["Position"]
       15 GETTABLEKS                       R10 R11 K8 ["X"]
       17 GETTABLEKS                       R9 R10 K10 ["Offset"]
       19 ADD                              R8 R9 R4
       20 GETTABLEKS                       R11 R0 K7 ["Position"]
       22 GETTABLEKS                       R10 R11 K11 ["Y"]
       24 GETTABLEKS                       R9 R10 K9 ["Scale"]
       26 GETTABLEKS                       R13 R0 K7 ["Position"]
       28 GETTABLEKS                       R12 R13 K11 ["Y"]
       30 GETTABLEKS                       R11 R12 K10 ["Offset"]
       32 ADD                              R10 R11 R4
       33 CALL                             R6 4 1
       34 SETTABLEKS                       R6 R5 K7 ["Position"]
       36 GETIMPORT                        R6 K6 [UDim2.new]
       38 GETTABLEKS                       R9 R0 K12 ["Size"]
       40 GETTABLEKS                       R8 R9 K8 ["X"]
       42 GETTABLEKS                       R7 R8 K9 ["Scale"]
       44 GETTABLEKS                       R11 R0 K12 ["Size"]
       46 GETTABLEKS                       R10 R11 K8 ["X"]
       48 GETTABLEKS                       R9 R10 K10 ["Offset"]
       50 MULK                             R10 R4 K13 [2]
       51 SUB                              R8 R9 R10
       52 GETTABLEKS                       R11 R0 K12 ["Size"]
       54 GETTABLEKS                       R10 R11 K11 ["Y"]
       56 GETTABLEKS                       R9 R10 K9 ["Scale"]
       58 GETTABLEKS                       R13 R0 K12 ["Size"]
       60 GETTABLEKS                       R12 R13 K11 ["Y"]
       62 GETTABLEKS                       R11 R12 K10 ["Offset"]
       64 MULK                             R12 R4 K13 [2]
       65 SUB                              R10 R11 R12
       66 CALL                             R6 4 1
       67 SETTABLEKS                       R6 R5 K12 ["Size"]
       69 LOADN                            R6 1
       70 SETTABLEKS                       R6 R5 K14 ["BackgroundTransparency"]
       72 LOADN                            R6 0
       73 SETTABLEKS                       R6 R5 K15 ["BorderSizePixel"]
       75 GETIMPORT                        R6 K3 [Instance.new]
       77 LOADK                            R7 K16 ["UICorner"]
       78 CALL                             R6 1 1
       79 GETIMPORT                        R7 K18 [UDim.new]
       81 LOADN                            R8 0
       82 LOADN                            R9 3
       83 CALL                             R7 2 1
       84 SETTABLEKS                       R7 R6 K19 ["CornerRadius"]
       86 SETTABLEKS                       R5 R6 K20 ["Parent"]
       88 GETIMPORT                        R7 K3 [Instance.new]
       90 LOADK                            R8 K21 ["UIStroke"]
       91 CALL                             R7 1 1
       92 SETTABLEKS                       R1 R7 K22 ["Color"]
       94 SETTABLEKS                       R2 R7 K23 ["Thickness"]
       96 SETTABLEKS                       R5 R7 K20 ["Parent"]
       98 RETURN                           R5 1

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["original"]
        2 GETTABLEKS                       R2 R3 K1 ["Id"]
        4 JUMPIFNOTEQKNIL                  R2 ; [+3]
        6 LOADB                            R2 0
        7 RETURN                           R2 1
        8 MOVE                             R2 R1
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 GETTABLEKS                       R8 R0 K0 ["original"]
       14 GETTABLEKS                       R7 R8 K1 ["Id"]
       16 JUMPIFNOTEQ                      R7 R6 ; [+3]
       18 LOADB                            R7 1
       19 RETURN                           R7 1
       20 FORGLOOP                         R2 2 ; [-9]
       22 LOADB                            R2 0
       23 RETURN                           R2 1

PROTO_10:
        0 GETTABLEKS                       R6 R1 K0 ["rectangle"]
        2 JUMPIFNOTEQKNIL                  R6 ; [+2]
        4 RETURN                           R0 0
        5 GETIMPORT                        R6 K3 [Instance.new]
        7 LOADK                            R7 K4 ["Frame"]
        8 CALL                             R6 1 1
        9 GETTABLEKS                       R8 R1 K5 ["original"]
       11 GETTABLEKS                       R7 R8 K6 ["Name"]
       13 JUMPIFNOT                        R7 ; [+6]
       14 GETTABLEKS                       R8 R1 K5 ["original"]
       16 GETTABLEKS                       R7 R8 K6 ["Name"]
       18 SETTABLEKS                       R7 R6 K6 ["Name"]
       20 GETUPVAL                         R9 0
       21 GETTABLE                         R8 R9 R4
       22 JUMPIFNOTEQKNIL                  R8 ; [+5]
       24 NEWTABLE                         R8 0 0
       26 GETUPVAL                         R9 0
       27 SETTABLE                         R8 R9 R4
       28 MOVE                             R7 R8
       29 ADDK                             R9 R4 K7 [1]
       30 GETUPVAL                         R11 0
       31 GETTABLE                         R10 R11 R9
       32 JUMPIFNOTEQKNIL                  R10 ; [+5]
       34 NEWTABLE                         R10 0 0
       36 GETUPVAL                         R11 0
       37 SETTABLE                         R10 R11 R9
       38 MOVE                             R8 R10
       39 GETUPVAL                         R10 1
       40 GETTABLEKS                       R9 R10 K8 ["cellGap"]
       42 GETIMPORT                        R10 K10 [UDim2.new]
       44 LOADN                            R11 0
       45 GETTABLEKS                       R14 R1 K0 ["rectangle"]
       47 GETTABLEKS                       R13 R14 K11 ["x"]
       49 ADD                              R12 R13 R9
       50 LOADN                            R13 0
       51 GETTABLEKS                       R16 R1 K0 ["rectangle"]
       53 GETTABLEKS                       R15 R16 K12 ["y"]
       55 ADD                              R14 R15 R9
       56 CALL                             R10 4 1
       57 SETTABLEKS                       R10 R6 K13 ["Position"]
       59 GETIMPORT                        R10 K10 [UDim2.new]
       61 LOADN                            R11 0
       62 GETTABLEKS                       R14 R1 K0 ["rectangle"]
       64 GETTABLEKS                       R13 R14 K14 ["width"]
       66 SUB                              R12 R13 R9
       67 LOADN                            R13 0
       68 GETTABLEKS                       R16 R1 K0 ["rectangle"]
       70 GETTABLEKS                       R15 R16 K15 ["height"]
       72 SUB                              R14 R15 R9
       73 CALL                             R10 4 1
       74 SETTABLEKS                       R10 R6 K16 ["Size"]
       76 LOADN                            R10 1
       77 SETTABLEKS                       R10 R6 K17 ["BorderSizePixel"]
       79 GETIMPORT                        R10 K19 [Color3.new]
       81 LOADN                            R11 0
       82 LOADN                            R12 0
       83 LOADN                            R13 0
       84 CALL                             R10 3 1
       85 SETTABLEKS                       R10 R6 K20 ["BorderColor3"]
       87 LOADN                            R10 0
       88 SETTABLEKS                       R10 R6 K21 ["BackgroundTransparency"]
       90 GETIMPORT                        R10 K3 [Instance.new]
       92 LOADK                            R11 K22 ["UICorner"]
       93 CALL                             R10 1 1
       94 GETIMPORT                        R11 K24 [UDim.new]
       96 LOADN                            R12 0
       97 GETUPVAL                         R14 1
       98 GETTABLEKS                       R13 R14 K25 ["cornerRadius"]
      100 CALL                             R11 2 1
      101 SETTABLEKS                       R11 R10 K26 ["CornerRadius"]
      103 SETTABLEKS                       R6 R10 K27 ["Parent"]
      105 GETTABLEKS                       R12 R1 K5 ["original"]
      107 JUMPIFNOT                        R12 ; [+10]
      108 GETTABLEKS                       R13 R1 K5 ["original"]
      110 GETTABLEKS                       R12 R13 K28 ["Color"]
      112 JUMPIFNOT                        R12 ; [+5]
      113 GETTABLEKS                       R12 R1 K5 ["original"]
      115 GETTABLEKS                       R11 R12 K28 ["Color"]
      117 JUMP                             ; [+5]
      118 GETUPVAL                         R12 2
      119 GETTABLEKS                       R14 R1 K29 ["colorRampIndex"]
      121 ORK                              R13 R14 K7 [1]
      122 GETTABLE                         R11 R12 R13
      123 GETIMPORT                        R12 K19 [Color3.new]
      125 LOADN                            R13 0
      126 LOADN                            R14 0
      127 LOADN                            R15 0
      128 CALL                             R12 3 1
      129 SETTABLEKS                       R12 R6 K30 ["BackgroundColor3"]
      131 GETTABLEKS                       R12 R1 K31 ["Children"]
      133 JUMPIFNOT                        R12 ; [+8]
      134 GETTABLEKS                       R14 R1 K31 ["Children"]
      136 LENGTH                           R13 R14
      137 LOADN                            R14 0
      138 JUMPIFLT                         R14 R13 ; [+2]
      140 LOADB                            R12 0 +1
      141 LOADB                            R12 1
      142 LOADB                            R13 0
      143 SETTABLEKS                       R13 R6 K32 ["ClipsDescendants"]
      145 LOADN                            R13 0
      146 SETTABLEKS                       R13 R6 K33 ["Transparency"]
      148 LOADN                            R13 0
      149 SETTABLEKS                       R13 R6 K21 ["BackgroundTransparency"]
      151 GETTABLEKS                       R15 R1 K5 ["original"]
      153 GETTABLEKS                       R14 R15 K34 ["Id"]
      155 JUMPIFNOTEQKNIL                  R14 ; [+3]
      157 LOADB                            R13 0
      158 JUMP                             ; [+15]
      159 MOVE                             R14 R3
      160 LOADNIL                          R15
      161 LOADNIL                          R16
      162 FORGPREP                         R14
      163 GETTABLEKS                       R20 R1 K5 ["original"]
      165 GETTABLEKS                       R19 R20 K34 ["Id"]
      167 JUMPIFNOTEQ                      R19 R18 ; [+3]
      169 LOADB                            R13 1
      170 JUMP                             ; [+3]
      171 FORGLOOP                         R14 2 ; [-9]
      173 LOADB                            R13 0
      174 MOVE                             R14 R13
      175 JUMPIFNOT                        R14 ; [+1]
      176 NOT                              R14 R5
      177 MOVE                             R15 R3
      178 JUMPIFNOT                        R15 ; [+6]
      179 LENGTH                           R16 R3
      180 LOADN                            R17 0
      181 JUMPIFLT                         R17 R16 ; [+2]
      183 LOADB                            R15 0 +1
      184 LOADB                            R15 1
      185 MOVE                             R16 R15
      186 JUMPIFNOT                        R16 ; [+3]
      187 NOT                              R16 R13
      188 JUMPIFNOT                        R16 ; [+1]
      189 NOT                              R16 R5
      190 SETTABLEKS                       R16 R1 K35 ["_dimmed"]
      192 FASTCALL2                        TABLE_INSERT R7 R6 ; [+5]
      194 MOVE                             R18 R7
      195 MOVE                             R19 R6
      196 GETIMPORT                        R17 K38 [table.insert]
      198 CALL                             R17 2 0
      199 JUMPIFNOT                        R14 ; [+19]
      200 GETTABLEKS                       R18 R0 K39 ["_selectionLayer"]
      202 GETUPVAL                         R19 3
      203 MOVE                             R20 R6
      204 GETIMPORT                        R21 K19 [Color3.new]
      206 LOADN                            R22 1
      207 LOADN                            R23 1
      208 LOADN                            R24 1
      209 CALL                             R21 3 1
      210 GETUPVAL                         R23 1
      211 GETTABLEKS                       R22 R23 K40 ["selectionOutlineThickness"]
      213 CALL                             R19 3 1
      214 FASTCALL2                        TABLE_INSERT R18 R19 ; [+3]
      216 GETIMPORT                        R17 K38 [table.insert]
      218 CALL                             R17 2 0
      219 SETTABLEKS                       R6 R1 K41 ["frame"]
      221 GETTABLEKS                       R19 R1 K0 ["rectangle"]
      223 GETTABLEKS                       R18 R19 K15 ["height"]
      225 GETUPVAL                         R21 1
      226 GETTABLEKS                       R20 R21 K42 ["textLabelHeight"]
      228 ADD                              R19 R20 R9
      229 JUMPIFLT                         R19 R18 ; [+2]
      231 LOADB                            R17 0 +1
      232 LOADB                            R17 1
      233 JUMPIFNOT                        R17 ; [+464]
      234 GETTABLEKS                       R19 R1 K0 ["rectangle"]
      236 GETTABLEKS                       R18 R19 K14 ["width"]
      238 GETUPVAL                         R20 1
      239 GETTABLEKS                       R19 R20 K43 ["minWidth"]
      241 JUMPIFNOTLT                      R19 R18 ; [+456]
      243 GETTABLEKS                       R19 R1 K0 ["rectangle"]
      245 GETTABLEKS                       R18 R19 K15 ["height"]
      247 GETUPVAL                         R20 1
      248 GETTABLEKS                       R19 R20 K44 ["minHeight"]
      250 JUMPIFNOTLT                      R19 R18 ; [+447]
      252 GETIMPORT                        R18 K3 [Instance.new]
      254 LOADK                            R19 K4 ["Frame"]
      255 CALL                             R18 1 1
      256 GETIMPORT                        R19 K10 [UDim2.new]
      258 LOADN                            R20 0
      259 GETTABLEKS                       R23 R1 K0 ["rectangle"]
      261 GETTABLEKS                       R22 R23 K11 ["x"]
      263 ADD                              R21 R22 R9
      264 LOADN                            R22 0
      265 GETTABLEKS                       R25 R1 K0 ["rectangle"]
      267 GETTABLEKS                       R24 R25 K12 ["y"]
      269 ADD                              R23 R24 R9
      270 CALL                             R19 4 1
      271 SETTABLEKS                       R19 R18 K13 ["Position"]
      273 GETIMPORT                        R19 K10 [UDim2.new]
      275 LOADN                            R20 0
      276 GETTABLEKS                       R23 R1 K0 ["rectangle"]
      278 GETTABLEKS                       R22 R23 K14 ["width"]
      280 SUB                              R21 R22 R9
      281 LOADN                            R22 0
      282 GETUPVAL                         R24 1
      283 GETTABLEKS                       R23 R24 K45 ["headerBarHeight"]
      285 CALL                             R19 4 1
      286 SETTABLEKS                       R19 R18 K16 ["Size"]
      288 LOADN                            R19 0
      289 SETTABLEKS                       R19 R18 K21 ["BackgroundTransparency"]
      291 LOADN                            R19 1
      292 SETTABLEKS                       R19 R18 K17 ["BorderSizePixel"]
      294 GETIMPORT                        R19 K19 [Color3.new]
      296 LOADN                            R20 0
      297 LOADN                            R21 0
      298 LOADN                            R22 0
      299 CALL                             R19 3 1
      300 SETTABLEKS                       R19 R18 K20 ["BorderColor3"]
      302 GETIMPORT                        R19 K3 [Instance.new]
      304 LOADK                            R20 K22 ["UICorner"]
      305 CALL                             R19 1 1
      306 GETIMPORT                        R20 K24 [UDim.new]
      308 LOADN                            R21 0
      309 GETUPVAL                         R23 1
      310 GETTABLEKS                       R22 R23 K25 ["cornerRadius"]
      312 CALL                             R20 2 1
      313 SETTABLEKS                       R20 R19 K26 ["CornerRadius"]
      315 SETTABLEKS                       R18 R19 K27 ["Parent"]
      317 GETUPVAL                         R21 4
      318 GETTABLEKS                       R20 R21 K46 ["darkenForHeader"]
      320 MOVE                             R21 R11
      321 CALL                             R20 1 1
      322 JUMPIFNOT                        R16 ; [+11]
      323 GETIMPORT                        R23 K19 [Color3.new]
      325 LOADN                            R24 0
      326 LOADN                            R25 0
      327 LOADN                            R26 0
      328 CALL                             R23 3 1
      329 LOADK                            R24 K47 [0.5]
      330 NAMECALL                         R21 R20 K48 ["Lerp"]
      332 CALL                             R21 3 1
      333 JUMP                             ; [+1]
      334 MOVE                             R21 R20
      335 SETTABLEKS                       R21 R18 K30 ["BackgroundColor3"]
      337 FASTCALL2                        TABLE_INSERT R8 R18 ; [+5]
      339 MOVE                             R22 R8
      340 MOVE                             R23 R18
      341 GETIMPORT                        R21 K38 [table.insert]
      343 CALL                             R21 2 0
      344 SETTABLEKS                       R18 R1 K49 ["headerFrame"]
      346 GETIMPORT                        R21 K3 [Instance.new]
      348 LOADK                            R22 K50 ["TextLabel"]
      349 CALL                             R21 1 1
      350 GETIMPORT                        R22 K54 [Enum.TextXAlignment.Center]
      352 SETTABLEKS                       R22 R21 K52 ["TextXAlignment"]
      354 GETIMPORT                        R22 K56 [Enum.TextYAlignment.Center]
      356 SETTABLEKS                       R22 R21 K55 ["TextYAlignment"]
      358 LOADN                            R22 1
      359 SETTABLEKS                       R22 R21 K21 ["BackgroundTransparency"]
      361 GETTABLEKS                       R23 R1 K5 ["original"]
      363 GETTABLEKS                       R22 R23 K6 ["Name"]
      365 JUMPIFNOT                        R22 ; [+8]
      366 GETUPVAL                         R22 5
      367 GETTABLEKS                       R24 R1 K5 ["original"]
      369 GETTABLEKS                       R23 R24 K6 ["Name"]
      371 CALL                             R22 1 1
      372 SETTABLEKS                       R22 R21 K57 ["Text"]
      374 GETUPVAL                         R23 1
      375 GETTABLEKS                       R22 R23 K58 ["fontBold"]
      377 SETTABLEKS                       R22 R21 K59 ["Font"]
      379 GETUPVAL                         R23 1
      380 GETTABLEKS                       R22 R23 K60 ["textLineHeight"]
      382 SETTABLEKS                       R22 R21 K61 ["TextSize"]
      384 JUMPIFNOT                        R16 ; [+15]
      385 GETUPVAL                         R24 1
      386 GETTABLEKS                       R23 R24 K62 ["headerFontColor"]
      388 GETIMPORT                        R26 K19 [Color3.new]
      390 LOADN                            R27 0
      391 LOADN                            R28 0
      392 LOADN                            R29 0
      393 CALL                             R26 3 1
      394 LOADK                            R27 K47 [0.5]
      395 NAMECALL                         R24 R23 K48 ["Lerp"]
      397 CALL                             R24 3 1
      398 MOVE                             R22 R24
      399 JUMP                             ; [+3]
      400 GETUPVAL                         R23 1
      401 GETTABLEKS                       R22 R23 K62 ["headerFontColor"]
      403 SETTABLEKS                       R22 R21 K63 ["TextColor3"]
      405 LOADB                            R22 0
      406 SETTABLEKS                       R22 R21 K32 ["ClipsDescendants"]
      408 LOADB                            R22 0
      409 SETTABLEKS                       R22 R21 K64 ["TextScaled"]
      411 GETIMPORT                        R22 K67 [Enum.TextTruncate.AtEnd]
      413 SETTABLEKS                       R22 R21 K65 ["TextTruncate"]
      415 GETIMPORT                        R22 K10 [UDim2.new]
      417 LOADN                            R23 0
      418 GETTABLEKS                       R27 R1 K0 ["rectangle"]
      420 GETTABLEKS                       R26 R27 K14 ["width"]
      422 SUB                              R25 R26 R9
      423 GETUPVAL                         R27 1
      424 GETTABLEKS                       R26 R27 K68 ["textPadding"]
      426 SUB                              R24 R25 R26
      427 LOADN                            R25 0
      428 GETUPVAL                         R27 1
      429 GETTABLEKS                       R26 R27 K45 ["headerBarHeight"]
      431 CALL                             R22 4 1
      432 SETTABLEKS                       R22 R21 K16 ["Size"]
      434 GETIMPORT                        R22 K10 [UDim2.new]
      436 LOADN                            R23 0
      437 GETTABLEKS                       R27 R1 K0 ["rectangle"]
      439 GETTABLEKS                       R26 R27 K11 ["x"]
      441 ADD                              R25 R26 R9
      442 ADD                              R24 R25 R9
      443 LOADN                            R25 0
      444 GETTABLEKS                       R28 R1 K0 ["rectangle"]
      446 GETTABLEKS                       R27 R28 K12 ["y"]
      448 ADD                              R26 R27 R9
      449 CALL                             R22 4 1
      450 SETTABLEKS                       R22 R21 K13 ["Position"]
      452 GETUPVAL                         R23 6
      453 FASTCALL2                        TABLE_INSERT R23 R21 ; [+4]
      455 MOVE                             R24 R21
      456 GETIMPORT                        R22 K38 [table.insert]
      458 CALL                             R22 2 0
      459 JUMPIF                           R12 ; [+238]
      460 GETTABLEKS                       R25 R1 K0 ["rectangle"]
      462 GETTABLEKS                       R24 R25 K12 ["y"]
      464 ADD                              R23 R24 R9
      465 GETUPVAL                         R25 1
      466 GETTABLEKS                       R24 R25 K45 ["headerBarHeight"]
      468 ADD                              R22 R23 R24
      469 GETTABLEKS                       R26 R1 K0 ["rectangle"]
      471 GETTABLEKS                       R25 R26 K15 ["height"]
      473 SUB                              R24 R25 R9
      474 GETUPVAL                         R26 1
      475 GETTABLEKS                       R25 R26 K45 ["headerBarHeight"]
      477 SUB                              R23 R24 R25
      478 GETUPVAL                         R25 1
      479 GETTABLEKS                       R24 R25 K68 ["textPadding"]
      481 JUMPIFNOTLT                      R24 R23 ; [+216]
      483 GETIMPORT                        R24 K3 [Instance.new]
      485 LOADK                            R25 K4 ["Frame"]
      486 CALL                             R24 1 1
      487 GETIMPORT                        R25 K10 [UDim2.new]
      489 LOADN                            R26 0
      490 GETTABLEKS                       R29 R1 K0 ["rectangle"]
      492 GETTABLEKS                       R28 R29 K11 ["x"]
      494 ADD                              R27 R28 R9
      495 LOADN                            R28 0
      496 ADD                              R29 R22 R9
      497 CALL                             R25 4 1
      498 SETTABLEKS                       R25 R24 K13 ["Position"]
      500 GETIMPORT                        R25 K10 [UDim2.new]
      502 LOADN                            R26 0
      503 GETTABLEKS                       R29 R1 K0 ["rectangle"]
      505 GETTABLEKS                       R28 R29 K14 ["width"]
      507 SUB                              R27 R28 R9
      508 LOADN                            R28 0
      509 SUB                              R29 R23 R9
      510 CALL                             R25 4 1
      511 SETTABLEKS                       R25 R24 K16 ["Size"]
      513 LOADN                            R25 1
      514 SETTABLEKS                       R25 R24 K17 ["BorderSizePixel"]
      516 GETIMPORT                        R25 K19 [Color3.new]
      518 LOADN                            R26 0
      519 LOADN                            R27 0
      520 LOADN                            R28 0
      521 CALL                             R25 3 1
      522 SETTABLEKS                       R25 R24 K20 ["BorderColor3"]
      524 JUMPIFNOT                        R16 ; [+11]
      525 GETIMPORT                        R27 K19 [Color3.new]
      527 LOADN                            R28 0
      528 LOADN                            R29 0
      529 LOADN                            R30 0
      530 CALL                             R27 3 1
      531 LOADK                            R28 K47 [0.5]
      532 NAMECALL                         R25 R11 K48 ["Lerp"]
      534 CALL                             R25 3 1
      535 JUMP                             ; [+1]
      536 MOVE                             R25 R11
      537 SETTABLEKS                       R25 R24 K30 ["BackgroundColor3"]
      539 LOADB                            R25 0
      540 SETTABLEKS                       R25 R24 K32 ["ClipsDescendants"]
      542 GETIMPORT                        R25 K3 [Instance.new]
      544 LOADK                            R26 K22 ["UICorner"]
      545 CALL                             R25 1 1
      546 GETIMPORT                        R26 K24 [UDim.new]
      548 LOADN                            R27 0
      549 GETUPVAL                         R29 1
      550 GETTABLEKS                       R28 R29 K25 ["cornerRadius"]
      552 CALL                             R26 2 1
      553 SETTABLEKS                       R26 R25 K26 ["CornerRadius"]
      555 SETTABLEKS                       R24 R25 K27 ["Parent"]
      557 FASTCALL2                        TABLE_INSERT R8 R24 ; [+5]
      559 MOVE                             R27 R8
      560 MOVE                             R28 R24
      561 GETIMPORT                        R26 K38 [table.insert]
      563 CALL                             R26 2 0
      564 GETUPVAL                         R28 7
      565 LOADK                            R29 K69 ["XXX..."]
      566 GETUPVAL                         R31 1
      567 GETTABLEKS                       R30 R31 K60 ["textLineHeight"]
      569 GETUPVAL                         R32 1
      570 GETTABLEKS                       R31 R32 K58 ["fontBold"]
      572 CALL                             R28 3 1
      573 GETTABLEKS                       R27 R28 K70 ["X"]
      575 GETUPVAL                         R30 1
      576 GETTABLEKS                       R29 R30 K68 ["textPadding"]
      578 MULK                             R28 R29 K71 [2]
      579 ADD                              R26 R27 R28
      580 GETUPVAL                         R29 1
      581 GETTABLEKS                       R28 R29 K60 ["textLineHeight"]
      583 ADD                              R27 R28 R9
      584 JUMPIFNOTLT                      R27 R23 ; [+113]
      586 GETTABLEKS                       R28 R1 K0 ["rectangle"]
      588 GETTABLEKS                       R27 R28 K14 ["width"]
      590 JUMPIFNOTLT                      R26 R27 ; [+107]
      592 GETUPVAL                         R31 1
      593 GETTABLEKS                       R30 R31 K60 ["textLineHeight"]
      595 SUB                              R29 R23 R30
      596 DIVK                             R28 R29 K71 [2]
      597 ADD                              R27 R22 R28
      598 GETIMPORT                        R28 K3 [Instance.new]
      600 LOADK                            R29 K50 ["TextLabel"]
      601 CALL                             R28 1 1
      602 GETIMPORT                        R29 K54 [Enum.TextXAlignment.Center]
      604 SETTABLEKS                       R29 R28 K52 ["TextXAlignment"]
      606 GETIMPORT                        R29 K56 [Enum.TextYAlignment.Center]
      608 SETTABLEKS                       R29 R28 K55 ["TextYAlignment"]
      610 LOADN                            R29 1
      611 SETTABLEKS                       R29 R28 K21 ["BackgroundTransparency"]
      613 GETTABLEKS                       R30 R1 K73 ["formattedValue"]
      615 ORK                              R29 R30 K72 [""]
      616 SETTABLEKS                       R29 R28 K57 ["Text"]
      618 GETUPVAL                         R30 1
      619 GETTABLEKS                       R29 R30 K58 ["fontBold"]
      621 SETTABLEKS                       R29 R28 K59 ["Font"]
      623 JUMPIFNOT                        R16 ; [+15]
      624 GETUPVAL                         R31 1
      625 GETTABLEKS                       R30 R31 K74 ["fontColor"]
      627 GETIMPORT                        R33 K19 [Color3.new]
      629 LOADN                            R34 0
      630 LOADN                            R35 0
      631 LOADN                            R36 0
      632 CALL                             R33 3 1
      633 LOADK                            R34 K47 [0.5]
      634 NAMECALL                         R31 R30 K48 ["Lerp"]
      636 CALL                             R31 3 1
      637 MOVE                             R29 R31
      638 JUMP                             ; [+3]
      639 GETUPVAL                         R30 1
      640 GETTABLEKS                       R29 R30 K74 ["fontColor"]
      642 SETTABLEKS                       R29 R28 K63 ["TextColor3"]
      644 GETUPVAL                         R30 1
      645 GETTABLEKS                       R29 R30 K60 ["textLineHeight"]
      647 SETTABLEKS                       R29 R28 K61 ["TextSize"]
      649 LOADB                            R29 0
      650 SETTABLEKS                       R29 R28 K32 ["ClipsDescendants"]
      652 GETIMPORT                        R29 K67 [Enum.TextTruncate.AtEnd]
      654 SETTABLEKS                       R29 R28 K65 ["TextTruncate"]
      656 GETIMPORT                        R29 K10 [UDim2.new]
      658 LOADN                            R30 0
      659 GETTABLEKS                       R33 R1 K0 ["rectangle"]
      661 GETTABLEKS                       R32 R33 K14 ["width"]
      663 GETUPVAL                         R35 1
      664 GETTABLEKS                       R34 R35 K68 ["textPadding"]
      666 MULK                             R33 R34 K71 [2]
      667 SUB                              R31 R32 R33
      668 LOADN                            R32 0
      669 GETUPVAL                         R34 1
      670 GETTABLEKS                       R33 R34 K60 ["textLineHeight"]
      672 CALL                             R29 4 1
      673 SETTABLEKS                       R29 R28 K16 ["Size"]
      675 GETIMPORT                        R29 K10 [UDim2.new]
      677 LOADN                            R30 0
      678 GETTABLEKS                       R33 R1 K0 ["rectangle"]
      680 GETTABLEKS                       R32 R33 K11 ["x"]
      682 GETUPVAL                         R34 1
      683 GETTABLEKS                       R33 R34 K68 ["textPadding"]
      685 ADD                              R31 R32 R33
      686 LOADN                            R32 0
      687 MOVE                             R33 R27
      688 CALL                             R29 4 1
      689 SETTABLEKS                       R29 R28 K13 ["Position"]
      691 GETUPVAL                         R30 6
      692 FASTCALL2                        TABLE_INSERT R30 R28 ; [+4]
      694 MOVE                             R31 R28
      695 GETIMPORT                        R29 K38 [table.insert]
      697 CALL                             R29 2 0
      698 GETTABLEKS                       R18 R1 K31 ["Children"]
      700 JUMPIFNOT                        R18 ; [+27]
      701 GETTABLEKS                       R18 R1 K31 ["Children"]
      703 LOADNIL                          R19
      704 LOADNIL                          R20
      705 FORGPREP                         R18
      706 GETTABLEKS                       R23 R22 K75 ["showHeader"]
      708 JUMPIFNOT                        R23 ; [+9]
      709 MOVE                             R25 R22
      710 MOVE                             R26 R2
      711 MOVE                             R27 R3
      712 ADDK                             R28 R4 K7 [1]
      713 OR                               R29 R13 R5
      714 NAMECALL                         R23 R0 K76 ["renderHeaderNode"]
      716 CALL                             R23 6 0
      717 JUMP                             ; [+8]
      718 MOVE                             R25 R22
      719 MOVE                             R26 R2
      720 MOVE                             R27 R3
      721 ADDK                             R28 R4 K7 [1]
      722 OR                               R29 R13 R5
      723 NAMECALL                         R23 R0 K77 ["renderStandardNode"]
      725 CALL                             R23 6 0
      726 FORGLOOP                         R18 2 ; [-21]
      728 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R6 R1 K0 ["rectangle"]
        2 JUMPIFNOTEQKNIL                  R6 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R8 0
        6 GETTABLE                         R7 R8 R4
        7 JUMPIFNOTEQKNIL                  R7 ; [+5]
        9 NEWTABLE                         R7 0 0
       11 GETUPVAL                         R8 0
       12 SETTABLE                         R7 R8 R4
       13 MOVE                             R6 R7
       14 GETIMPORT                        R7 K3 [Instance.new]
       16 LOADK                            R8 K4 ["Frame"]
       17 CALL                             R7 1 1
       18 GETTABLEKS                       R9 R1 K5 ["original"]
       20 GETTABLEKS                       R8 R9 K6 ["Name"]
       22 JUMPIFNOT                        R8 ; [+6]
       23 GETTABLEKS                       R9 R1 K5 ["original"]
       25 GETTABLEKS                       R8 R9 K6 ["Name"]
       27 SETTABLEKS                       R8 R7 K6 ["Name"]
       29 GETIMPORT                        R8 K8 [UDim2.new]
       31 LOADN                            R9 0
       32 GETTABLEKS                       R11 R1 K0 ["rectangle"]
       34 GETTABLEKS                       R10 R11 K9 ["x"]
       36 LOADN                            R11 0
       37 GETTABLEKS                       R13 R1 K0 ["rectangle"]
       39 GETTABLEKS                       R12 R13 K10 ["y"]
       41 CALL                             R8 4 1
       42 SETTABLEKS                       R8 R7 K11 ["Position"]
       44 GETIMPORT                        R8 K8 [UDim2.new]
       46 LOADN                            R9 0
       47 GETTABLEKS                       R11 R1 K0 ["rectangle"]
       49 GETTABLEKS                       R10 R11 K12 ["width"]
       51 LOADN                            R11 0
       52 GETTABLEKS                       R13 R1 K0 ["rectangle"]
       54 GETTABLEKS                       R12 R13 K13 ["height"]
       56 CALL                             R8 4 1
       57 SETTABLEKS                       R8 R7 K14 ["Size"]
       59 LOADB                            R8 0
       60 SETTABLEKS                       R8 R7 K15 ["ClipsDescendants"]
       62 LOADN                            R8 1
       63 SETTABLEKS                       R8 R7 K16 ["Transparency"]
       65 SETTABLEKS                       R7 R1 K17 ["frame"]
       67 FASTCALL2                        TABLE_INSERT R6 R7 ; [+5]
       69 MOVE                             R9 R6
       70 MOVE                             R10 R7
       71 GETIMPORT                        R8 K20 [table.insert]
       73 CALL                             R8 2 0
       74 GETTABLEKS                       R10 R1 K5 ["original"]
       76 GETTABLEKS                       R9 R10 K21 ["Id"]
       78 JUMPIFNOTEQKNIL                  R9 ; [+3]
       80 LOADB                            R8 0
       81 JUMP                             ; [+15]
       82 MOVE                             R9 R3
       83 LOADNIL                          R10
       84 LOADNIL                          R11
       85 FORGPREP                         R9
       86 GETTABLEKS                       R15 R1 K5 ["original"]
       88 GETTABLEKS                       R14 R15 K21 ["Id"]
       90 JUMPIFNOTEQ                      R14 R13 ; [+3]
       92 LOADB                            R8 1
       93 JUMP                             ; [+3]
       94 FORGLOOP                         R9 2 ; [-9]
       96 LOADB                            R8 0
       97 MOVE                             R9 R8
       98 JUMPIFNOT                        R9 ; [+1]
       99 NOT                              R9 R5
      100 MOVE                             R10 R3
      101 JUMPIFNOT                        R10 ; [+6]
      102 LENGTH                           R11 R3
      103 LOADN                            R12 0
      104 JUMPIFLT                         R12 R11 ; [+2]
      106 LOADB                            R10 0 +1
      107 LOADB                            R10 1
      108 MOVE                             R11 R10
      109 JUMPIFNOT                        R11 ; [+3]
      110 NOT                              R11 R8
      111 JUMPIFNOT                        R11 ; [+1]
      112 NOT                              R11 R5
      113 SETTABLEKS                       R11 R1 K22 ["_dimmed"]
      115 LOADB                            R12 1
      116 SETTABLEKS                       R12 R1 K23 ["_isStandardNode"]
      118 GETUPVAL                         R15 1
      119 GETTABLEKS                       R14 R15 K25 ["textLineHeight"]
      121 MULK                             R13 R14 K24 [2]
      122 GETUPVAL                         R15 1
      123 GETTABLEKS                       R14 R15 K26 ["textLineGap"]
      125 ADD                              R12 R13 R14
      126 GETUPVAL                         R15 2
      127 LOADK                            R16 K27 ["XXX..."]
      128 GETUPVAL                         R18 1
      129 GETTABLEKS                       R17 R18 K25 ["textLineHeight"]
      131 GETUPVAL                         R19 1
      132 GETTABLEKS                       R18 R19 K28 ["fontBold"]
      134 CALL                             R15 3 1
      135 GETTABLEKS                       R14 R15 K29 ["X"]
      137 GETUPVAL                         R17 1
      138 GETTABLEKS                       R16 R17 K30 ["textPadding"]
      140 MULK                             R15 R16 K24 [2]
      141 ADD                              R13 R14 R15
      142 GETTABLEKS                       R15 R1 K0 ["rectangle"]
      144 GETTABLEKS                       R14 R15 K12 ["width"]
      146 JUMPIFNOTLT                      R13 R14 ; [+214]
      148 GETTABLEKS                       R15 R1 K0 ["rectangle"]
      150 GETTABLEKS                       R14 R15 K13 ["height"]
      152 GETUPVAL                         R17 1
      153 GETTABLEKS                       R16 R17 K31 ["cellGap"]
      155 ADD                              R15 R12 R16
      156 JUMPIFNOTLT                      R15 R14 ; [+204]
      158 GETTABLEKS                       R16 R1 K0 ["rectangle"]
      160 GETTABLEKS                       R15 R16 K10 ["y"]
      162 GETTABLEKS                       R19 R1 K0 ["rectangle"]
      164 GETTABLEKS                       R18 R19 K13 ["height"]
      166 SUB                              R17 R18 R12
      167 DIVK                             R16 R17 K24 [2]
      168 ADD                              R14 R15 R16
      169 JUMPIFNOT                        R11 ; [+15]
      170 GETUPVAL                         R17 1
      171 GETTABLEKS                       R16 R17 K32 ["fontColor"]
      173 GETIMPORT                        R19 K34 [Color3.new]
      175 LOADN                            R20 0
      176 LOADN                            R21 0
      177 LOADN                            R22 0
      178 CALL                             R19 3 1
      179 LOADK                            R20 K35 [0.5]
      180 NAMECALL                         R17 R16 K36 ["Lerp"]
      182 CALL                             R17 3 1
      183 MOVE                             R15 R17
      184 JUMP                             ; [+3]
      185 GETUPVAL                         R16 1
      186 GETTABLEKS                       R15 R16 K32 ["fontColor"]
      188 GETIMPORT                        R16 K3 [Instance.new]
      190 LOADK                            R17 K37 ["TextLabel"]
      191 CALL                             R16 1 1
      192 GETIMPORT                        R17 K41 [Enum.TextXAlignment.Center]
      194 SETTABLEKS                       R17 R16 K39 ["TextXAlignment"]
      196 GETIMPORT                        R17 K44 [Enum.TextYAlignment.Bottom]
      198 SETTABLEKS                       R17 R16 K42 ["TextYAlignment"]
      200 LOADN                            R17 1
      201 SETTABLEKS                       R17 R16 K45 ["BackgroundTransparency"]
      203 GETUPVAL                         R17 3
      204 GETTABLEKS                       R20 R1 K5 ["original"]
      206 GETTABLEKS                       R19 R20 K6 ["Name"]
      208 ORK                              R18 R19 K46 [""]
      209 CALL                             R17 1 1
      210 SETTABLEKS                       R17 R16 K47 ["Text"]
      212 GETUPVAL                         R18 1
      213 GETTABLEKS                       R17 R18 K28 ["fontBold"]
      215 SETTABLEKS                       R17 R16 K48 ["Font"]
      217 SETTABLEKS                       R15 R16 K49 ["TextColor3"]
      219 GETUPVAL                         R18 1
      220 GETTABLEKS                       R17 R18 K25 ["textLineHeight"]
      222 SETTABLEKS                       R17 R16 K50 ["TextSize"]
      224 LOADB                            R17 0
      225 SETTABLEKS                       R17 R16 K15 ["ClipsDescendants"]
      227 GETIMPORT                        R17 K53 [Enum.TextTruncate.AtEnd]
      229 SETTABLEKS                       R17 R16 K51 ["TextTruncate"]
      231 GETIMPORT                        R17 K8 [UDim2.new]
      233 LOADN                            R18 0
      234 GETTABLEKS                       R21 R1 K0 ["rectangle"]
      236 GETTABLEKS                       R20 R21 K12 ["width"]
      238 GETUPVAL                         R23 1
      239 GETTABLEKS                       R22 R23 K30 ["textPadding"]
      241 MULK                             R21 R22 K24 [2]
      242 SUB                              R19 R20 R21
      243 LOADN                            R20 0
      244 GETUPVAL                         R22 1
      245 GETTABLEKS                       R21 R22 K25 ["textLineHeight"]
      247 CALL                             R17 4 1
      248 SETTABLEKS                       R17 R16 K14 ["Size"]
      250 GETIMPORT                        R17 K8 [UDim2.new]
      252 LOADN                            R18 0
      253 GETTABLEKS                       R21 R1 K0 ["rectangle"]
      255 GETTABLEKS                       R20 R21 K9 ["x"]
      257 GETUPVAL                         R22 1
      258 GETTABLEKS                       R21 R22 K30 ["textPadding"]
      260 ADD                              R19 R20 R21
      261 LOADN                            R20 0
      262 MOVE                             R21 R14
      263 CALL                             R17 4 1
      264 SETTABLEKS                       R17 R16 K11 ["Position"]
      266 GETUPVAL                         R18 4
      267 FASTCALL2                        TABLE_INSERT R18 R16 ; [+4]
      269 MOVE                             R19 R16
      270 GETIMPORT                        R17 K20 [table.insert]
      272 CALL                             R17 2 0
      273 GETIMPORT                        R17 K3 [Instance.new]
      275 LOADK                            R18 K37 ["TextLabel"]
      276 CALL                             R17 1 1
      277 GETIMPORT                        R18 K41 [Enum.TextXAlignment.Center]
      279 SETTABLEKS                       R18 R17 K39 ["TextXAlignment"]
      281 GETIMPORT                        R18 K55 [Enum.TextYAlignment.Top]
      283 SETTABLEKS                       R18 R17 K42 ["TextYAlignment"]
      285 LOADN                            R18 1
      286 SETTABLEKS                       R18 R17 K45 ["BackgroundTransparency"]
      288 GETTABLEKS                       R19 R1 K56 ["formattedValue"]
      290 ORK                              R18 R19 K46 [""]
      291 SETTABLEKS                       R18 R17 K47 ["Text"]
      293 GETUPVAL                         R19 1
      294 GETTABLEKS                       R18 R19 K28 ["fontBold"]
      296 SETTABLEKS                       R18 R17 K48 ["Font"]
      298 SETTABLEKS                       R15 R17 K49 ["TextColor3"]
      300 GETUPVAL                         R19 1
      301 GETTABLEKS                       R18 R19 K25 ["textLineHeight"]
      303 SETTABLEKS                       R18 R17 K50 ["TextSize"]
      305 LOADB                            R18 0
      306 SETTABLEKS                       R18 R17 K15 ["ClipsDescendants"]
      308 GETIMPORT                        R18 K53 [Enum.TextTruncate.AtEnd]
      310 SETTABLEKS                       R18 R17 K51 ["TextTruncate"]
      312 GETIMPORT                        R18 K8 [UDim2.new]
      314 LOADN                            R19 0
      315 GETTABLEKS                       R22 R1 K0 ["rectangle"]
      317 GETTABLEKS                       R21 R22 K12 ["width"]
      319 GETUPVAL                         R24 1
      320 GETTABLEKS                       R23 R24 K30 ["textPadding"]
      322 MULK                             R22 R23 K24 [2]
      323 SUB                              R20 R21 R22
      324 LOADN                            R21 0
      325 GETUPVAL                         R23 1
      326 GETTABLEKS                       R22 R23 K25 ["textLineHeight"]
      328 CALL                             R18 4 1
      329 SETTABLEKS                       R18 R17 K14 ["Size"]
      331 GETIMPORT                        R18 K8 [UDim2.new]
      333 LOADN                            R19 0
      334 GETTABLEKS                       R22 R1 K0 ["rectangle"]
      336 GETTABLEKS                       R21 R22 K9 ["x"]
      338 GETUPVAL                         R23 1
      339 GETTABLEKS                       R22 R23 K30 ["textPadding"]
      341 ADD                              R20 R21 R22
      342 LOADN                            R21 0
      343 GETUPVAL                         R25 1
      344 GETTABLEKS                       R24 R25 K25 ["textLineHeight"]
      346 ADD                              R23 R14 R24
      347 GETUPVAL                         R25 1
      348 GETTABLEKS                       R24 R25 K26 ["textLineGap"]
      350 ADD                              R22 R23 R24
      351 CALL                             R18 4 1
      352 SETTABLEKS                       R18 R17 K11 ["Position"]
      354 GETUPVAL                         R19 4
      355 FASTCALL2                        TABLE_INSERT R19 R17 ; [+4]
      357 MOVE                             R20 R17
      358 GETIMPORT                        R18 K20 [table.insert]
      360 CALL                             R18 2 0
      361 JUMPIFNOT                        R9 ; [+94]
      362 GETUPVAL                         R14 5
      363 MOVE                             R15 R7
      364 GETIMPORT                        R16 K34 [Color3.new]
      366 LOADN                            R17 1
      367 LOADN                            R18 1
      368 LOADN                            R19 1
      369 CALL                             R16 3 1
      370 GETUPVAL                         R18 1
      371 GETTABLEKS                       R17 R18 K57 ["selectionOutlineThickness"]
      373 CALL                             R14 3 1
      374 GETIMPORT                        R15 K8 [UDim2.new]
      376 GETTABLEKS                       R18 R14 K11 ["Position"]
      378 GETTABLEKS                       R17 R18 K29 ["X"]
      380 GETTABLEKS                       R16 R17 K58 ["Scale"]
      382 GETTABLEKS                       R20 R14 K11 ["Position"]
      384 GETTABLEKS                       R19 R20 K29 ["X"]
      386 GETTABLEKS                       R18 R19 K59 ["Offset"]
      388 GETUPVAL                         R20 1
      389 GETTABLEKS                       R19 R20 K60 ["selectionOutlineNudge"]
      391 ADD                              R17 R18 R19
      392 GETTABLEKS                       R20 R14 K11 ["Position"]
      394 GETTABLEKS                       R19 R20 K61 ["Y"]
      396 GETTABLEKS                       R18 R19 K58 ["Scale"]
      398 GETTABLEKS                       R22 R14 K11 ["Position"]
      400 GETTABLEKS                       R21 R22 K61 ["Y"]
      402 GETTABLEKS                       R20 R21 K59 ["Offset"]
      404 GETUPVAL                         R22 1
      405 GETTABLEKS                       R21 R22 K60 ["selectionOutlineNudge"]
      407 ADD                              R19 R20 R21
      408 CALL                             R15 4 1
      409 SETTABLEKS                       R15 R14 K11 ["Position"]
      411 GETIMPORT                        R15 K8 [UDim2.new]
      413 GETTABLEKS                       R18 R14 K14 ["Size"]
      415 GETTABLEKS                       R17 R18 K29 ["X"]
      417 GETTABLEKS                       R16 R17 K58 ["Scale"]
      419 GETTABLEKS                       R20 R14 K14 ["Size"]
      421 GETTABLEKS                       R19 R20 K29 ["X"]
      423 GETTABLEKS                       R18 R19 K59 ["Offset"]
      425 GETUPVAL                         R20 1
      426 GETTABLEKS                       R19 R20 K60 ["selectionOutlineNudge"]
      428 SUB                              R17 R18 R19
      429 GETTABLEKS                       R20 R14 K14 ["Size"]
      431 GETTABLEKS                       R19 R20 K61 ["Y"]
      433 GETTABLEKS                       R18 R19 K58 ["Scale"]
      435 GETTABLEKS                       R22 R14 K14 ["Size"]
      437 GETTABLEKS                       R21 R22 K61 ["Y"]
      439 GETTABLEKS                       R20 R21 K59 ["Offset"]
      441 GETUPVAL                         R22 1
      442 GETTABLEKS                       R21 R22 K60 ["selectionOutlineNudge"]
      444 SUB                              R19 R20 R21
      445 CALL                             R15 4 1
      446 SETTABLEKS                       R15 R14 K14 ["Size"]
      448 GETTABLEKS                       R16 R0 K62 ["_selectionLayer"]
      450 FASTCALL2                        TABLE_INSERT R16 R14 ; [+4]
      452 MOVE                             R17 R14
      453 GETIMPORT                        R15 K20 [table.insert]
      455 CALL                             R15 2 0
      456 MOVE                             R16 R1
      457 MOVE                             R17 R6
      458 MOVE                             R18 R11
      459 NAMECALL                         R14 R0 K63 ["fillTinybox"]
      461 CALL                             R14 4 0
      462 GETTABLEKS                       R14 R1 K64 ["Children"]
      464 JUMPIFNOT                        R14 ; [+27]
      465 GETTABLEKS                       R14 R1 K64 ["Children"]
      467 LOADNIL                          R15
      468 LOADNIL                          R16
      469 FORGPREP                         R14
      470 GETTABLEKS                       R19 R18 K65 ["showHeader"]
      472 JUMPIFNOT                        R19 ; [+9]
      473 MOVE                             R21 R18
      474 MOVE                             R22 R2
      475 MOVE                             R23 R3
      476 ADDK                             R24 R4 K66 [1]
      477 OR                               R25 R8 R5
      478 NAMECALL                         R19 R0 K67 ["renderHeaderNode"]
      480 CALL                             R19 6 0
      481 JUMP                             ; [+8]
      482 MOVE                             R21 R18
      483 MOVE                             R22 R2
      484 MOVE                             R23 R3
      485 ADDK                             R24 R4 K66 [1]
      486 OR                               R25 R8 R5
      487 NAMECALL                         R19 R0 K68 ["renderStandardNode"]
      489 CALL                             R19 6 0
      490 FORGLOOP                         R14 2 ; [-21]
      492 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R4 R1 K0 ["rectangle"]
        2 JUMPIFNOTEQKNIL                  R4 ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R5 R1 K0 ["rectangle"]
        7 GETTABLEKS                       R4 R5 K1 ["width"]
        9 LOADN                            R5 3
       10 JUMPIFLT                         R4 R5 ; [+8]
       12 GETTABLEKS                       R5 R1 K0 ["rectangle"]
       14 GETTABLEKS                       R4 R5 K2 ["height"]
       16 LOADN                            R5 3
       17 JUMPIFNOTLT                      R4 R5 ; [+2]
       19 RETURN                           R0 0
       20 GETIMPORT                        R4 K5 [Instance.new]
       22 LOADK                            R5 K6 ["Frame"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R6 R1 K7 ["original"]
       26 GETTABLEKS                       R5 R6 K8 ["Name"]
       28 JUMPIFNOT                        R5 ; [+6]
       29 GETTABLEKS                       R6 R1 K7 ["original"]
       31 GETTABLEKS                       R5 R6 K8 ["Name"]
       33 SETTABLEKS                       R5 R4 K8 ["Name"]
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R5 R6 K9 ["cellGap"]
       38 GETIMPORT                        R6 K11 [UDim2.new]
       40 LOADN                            R7 0
       41 GETTABLEKS                       R10 R1 K0 ["rectangle"]
       43 GETTABLEKS                       R9 R10 K12 ["x"]
       45 ADD                              R8 R9 R5
       46 LOADN                            R9 0
       47 GETTABLEKS                       R12 R1 K0 ["rectangle"]
       49 GETTABLEKS                       R11 R12 K13 ["y"]
       51 ADD                              R10 R11 R5
       52 CALL                             R6 4 1
       53 SETTABLEKS                       R6 R4 K14 ["Position"]
       55 GETIMPORT                        R6 K11 [UDim2.new]
       57 LOADN                            R7 0
       58 GETTABLEKS                       R10 R1 K0 ["rectangle"]
       60 GETTABLEKS                       R9 R10 K1 ["width"]
       62 SUB                              R8 R9 R5
       63 LOADN                            R9 0
       64 GETTABLEKS                       R12 R1 K0 ["rectangle"]
       66 GETTABLEKS                       R11 R12 K2 ["height"]
       68 SUB                              R10 R11 R5
       69 CALL                             R6 4 1
       70 SETTABLEKS                       R6 R4 K15 ["Size"]
       72 LOADN                            R6 1
       73 SETTABLEKS                       R6 R4 K16 ["BorderSizePixel"]
       75 GETIMPORT                        R6 K18 [Color3.new]
       77 LOADN                            R7 0
       78 LOADN                            R8 0
       79 LOADN                            R9 0
       80 CALL                             R6 3 1
       81 SETTABLEKS                       R6 R4 K19 ["BorderColor3"]
       83 GETIMPORT                        R6 K5 [Instance.new]
       85 LOADK                            R7 K20 ["UICorner"]
       86 CALL                             R6 1 1
       87 GETIMPORT                        R7 K22 [UDim.new]
       89 LOADN                            R8 0
       90 GETUPVAL                         R10 0
       91 GETTABLEKS                       R9 R10 K23 ["cornerRadius"]
       93 CALL                             R7 2 1
       94 SETTABLEKS                       R7 R6 K24 ["CornerRadius"]
       96 SETTABLEKS                       R4 R6 K25 ["Parent"]
       98 GETTABLEKS                       R8 R1 K7 ["original"]
      100 JUMPIFNOT                        R8 ; [+10]
      101 GETTABLEKS                       R9 R1 K7 ["original"]
      103 GETTABLEKS                       R8 R9 K26 ["Color"]
      105 JUMPIFNOT                        R8 ; [+5]
      106 GETTABLEKS                       R8 R1 K7 ["original"]
      108 GETTABLEKS                       R7 R8 K26 ["Color"]
      110 JUMP                             ; [+5]
      111 GETUPVAL                         R8 1
      112 GETTABLEKS                       R10 R1 K28 ["colorRampIndex"]
      114 ORK                              R9 R10 K27 [1]
      115 GETTABLE                         R7 R8 R9
      116 JUMPIFNOT                        R3 ; [+11]
      117 GETIMPORT                        R10 K18 [Color3.new]
      119 LOADN                            R11 0
      120 LOADN                            R12 0
      121 LOADN                            R13 0
      122 CALL                             R10 3 1
      123 LOADK                            R11 K29 [0.5]
      124 NAMECALL                         R8 R7 K30 ["Lerp"]
      126 CALL                             R8 3 1
      127 JUMP                             ; [+1]
      128 MOVE                             R8 R7
      129 SETTABLEKS                       R8 R4 K31 ["BackgroundColor3"]
      131 LOADB                            R8 0
      132 SETTABLEKS                       R8 R4 K32 ["ClipsDescendants"]
      134 FASTCALL2                        TABLE_INSERT R2 R4 ; [+5]
      136 MOVE                             R9 R2
      137 MOVE                             R10 R4
      138 GETIMPORT                        R8 K35 [table.insert]
      140 CALL                             R8 2 0
      141 SETTABLEKS                       R4 R1 K36 ["frame"]
      143 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R4 R0 K0 ["original"]
        2 GETTABLEKS                       R6 R4 K2 ["Size"]
        4 ORK                              R5 R6 K1 [0]
        5 JUMPIFEQKS                       R1 K3 ["count"] ; [+3]
        7 JUMPIFNOTEQKS                    R1 K4 ["instanceCount"] ; [+8]
        9 FASTCALL1                        TOSTRING R5 ; [+3]
       10 MOVE                             R7 R5
       11 GETIMPORT                        R6 K6 [tostring]
       13 CALL                             R6 1 1
       14 MOVE                             R3 R6
       15 JUMP                             ; [+4]
       16 GETUPVAL                         R6 0
       17 MOVE                             R7 R5
       18 CALL                             R6 1 1
       19 MOVE                             R3 R6
       20 SETTABLEKS                       R3 R0 K7 ["formattedValue"]
       22 SETTABLEKS                       R2 R0 K8 ["totalSize"]
       24 GETTABLEKS                       R3 R0 K9 ["Children"]
       26 JUMPIFNOT                        R3 ; [+12]
       27 GETTABLEKS                       R3 R0 K9 ["Children"]
       29 LOADNIL                          R4
       30 LOADNIL                          R5
       31 FORGPREP                         R3
       32 GETUPVAL                         R8 1
       33 MOVE                             R9 R7
       34 MOVE                             R10 R1
       35 MOVE                             R11 R2
       36 CALL                             R8 3 0
       37 FORGLOOP                         R3 2 ; [-6]
       39 RETURN                           R0 0

PROTO_14:
        0 MOVE                             R5 R4
        1 JUMPIF                           R5 ; [+1]
        2 GETUPVAL                         R5 1
        3 SETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R1 K0 ["layoutSize"]
        6 JUMPIF                           R5 ; [+4]
        7 GETTABLEKS                       R5 R1 K1 ["Size"]
        9 JUMPIF                           R5 ; [+1]
       10 LOADN                            R5 0
       11 LOADN                            R6 0
       12 JUMPIFNOTLE                      R5 R6 ; [+15]
       14 GETTABLEKS                       R6 R1 K2 ["Children"]
       16 JUMPIFNOT                        R6 ; [+11]
       17 GETTABLEKS                       R6 R1 K2 ["Children"]
       19 LOADNIL                          R7
       20 LOADNIL                          R8
       21 FORGPREP                         R6
       22 GETTABLEKS                       R12 R10 K0 ["layoutSize"]
       24 ORK                              R11 R12 K3 [0]
       25 ADD                              R5 R5 R11
       26 FORGLOOP                         R6 2 ; [-5]
       28 GETUPVAL                         R6 2
       29 MOVE                             R7 R1
       30 MOVE                             R8 R3
       31 MOVE                             R9 R5
       32 CALL                             R6 3 0
       33 GETUPVAL                         R6 3
       34 MOVE                             R7 R1
       35 CALL                             R6 1 0
       36 GETTABLEKS                       R6 R0 K4 ["_hoverOutline"]
       38 JUMPIFNOT                        R6 ; [+8]
       39 GETTABLEKS                       R6 R0 K4 ["_hoverOutline"]
       41 NAMECALL                         R6 R6 K5 ["Destroy"]
       43 CALL                             R6 1 0
       44 LOADNIL                          R6
       45 SETTABLEKS                       R6 R0 K4 ["_hoverOutline"]
       47 GETIMPORT                        R6 K8 [Instance.new]
       49 LOADK                            R7 K9 ["Frame"]
       50 CALL                             R6 1 1
       51 LOADN                            R7 1
       52 SETTABLEKS                       R7 R6 K10 ["BackgroundTransparency"]
       54 LOADN                            R7 0
       55 SETTABLEKS                       R7 R6 K11 ["BorderSizePixel"]
       57 GETIMPORT                        R7 K13 [UDim2.new]
       59 LOADN                            R8 1
       60 LOADN                            R9 0
       61 LOADN                            R10 1
       62 LOADN                            R11 0
       63 CALL                             R7 4 1
       64 SETTABLEKS                       R7 R6 K1 ["Size"]
       66 NEWTABLE                         R7 0 0
       68 SETUPVAL                         R7 4
       69 NEWTABLE                         R7 0 0
       71 SETUPVAL                         R7 5
       72 NEWTABLE                         R7 0 0
       74 SETTABLEKS                       R7 R0 K14 ["_selectionLayer"]
       76 NEWTABLE                         R7 0 0
       78 GETTABLEKS                       R8 R1 K2 ["Children"]
       80 JUMPIFNOT                        R8 ; [+62]
       81 GETTABLEKS                       R8 R1 K2 ["Children"]
       83 LOADNIL                          R9
       84 LOADNIL                          R10
       85 FORGPREP                         R8
       86 DUPTABLE                         R15 K18 [{"name", "size", "color"}]
       87 GETTABLEKS                       R17 R12 K19 ["original"]
       89 GETTABLEKS                       R16 R17 K20 ["Name"]
       91 SETTABLEKS                       R16 R15 K15 ["name"]
       93 GETTABLEKS                       R16 R12 K0 ["layoutSize"]
       95 SETTABLEKS                       R16 R15 K16 ["size"]
       97 GETTABLEKS                       R17 R12 K19 ["original"]
       99 JUMPIFNOT                        R17 ; [+10]
      100 GETTABLEKS                       R18 R12 K19 ["original"]
      102 GETTABLEKS                       R17 R18 K21 ["Color"]
      104 JUMPIFNOT                        R17 ; [+5]
      105 GETTABLEKS                       R17 R12 K19 ["original"]
      107 GETTABLEKS                       R16 R17 K21 ["Color"]
      109 JUMP                             ; [+5]
      110 GETUPVAL                         R17 0
      111 GETTABLEKS                       R19 R12 K23 ["colorRampIndex"]
      113 ORK                              R18 R19 K22 [1]
      114 GETTABLE                         R16 R17 R18
      115 SETTABLEKS                       R16 R15 K17 ["color"]
      117 FASTCALL2                        TABLE_INSERT R7 R15 ; [+4]
      119 MOVE                             R14 R7
      120 GETIMPORT                        R13 K26 [table.insert]
      122 CALL                             R13 2 0
      123 GETTABLEKS                       R13 R12 K27 ["showHeader"]
      125 JUMPIFNOT                        R13 ; [+8]
      126 MOVE                             R15 R12
      127 MOVE                             R16 R6
      128 MOVE                             R17 R2
      129 LOADN                            R18 1
      130 NAMECALL                         R13 R0 K28 ["renderHeaderNode"]
      132 CALL                             R13 5 0
      133 JUMP                             ; [+7]
      134 MOVE                             R15 R12
      135 MOVE                             R16 R6
      136 MOVE                             R17 R2
      137 LOADN                            R18 1
      138 NAMECALL                         R13 R0 K29 ["renderStandardNode"]
      140 CALL                             R13 5 0
      141 FORGLOOP                         R8 2 ; [-56]
      143 GETUPVAL                         R8 5
      144 LOADNIL                          R9
      145 LOADNIL                          R10
      146 FORGPREP                         R8
      147 MOVE                             R13 R12
      148 LOADNIL                          R14
      149 LOADNIL                          R15
      150 FORGPREP                         R13
      151 SETTABLEKS                       R6 R17 K30 ["Parent"]
      153 FORGLOOP                         R13 2 ; [-3]
      155 FORGLOOP                         R8 2 ; [-9]
      157 GETIMPORT                        R8 K8 [Instance.new]
      159 LOADK                            R9 K9 ["Frame"]
      160 CALL                             R8 1 1
      161 LOADN                            R9 1
      162 SETTABLEKS                       R9 R8 K10 ["BackgroundTransparency"]
      164 LOADN                            R9 0
      165 SETTABLEKS                       R9 R8 K11 ["BorderSizePixel"]
      167 GETIMPORT                        R9 K13 [UDim2.new]
      169 LOADN                            R10 1
      170 LOADN                            R11 0
      171 LOADN                            R12 1
      172 LOADN                            R13 0
      173 CALL                             R9 4 1
      174 SETTABLEKS                       R9 R8 K1 ["Size"]
      176 SETTABLEKS                       R6 R8 K30 ["Parent"]
      178 SETTABLEKS                       R8 R0 K31 ["_hoverLayer"]
      180 GETTABLEKS                       R9 R0 K14 ["_selectionLayer"]
      182 LOADNIL                          R10
      183 LOADNIL                          R11
      184 FORGPREP                         R9
      185 SETTABLEKS                       R6 R13 K30 ["Parent"]
      187 FORGLOOP                         R9 2 ; [-3]
      189 GETUPVAL                         R9 4
      190 LOADNIL                          R10
      191 LOADNIL                          R11
      192 FORGPREP                         R9
      193 SETTABLEKS                       R6 R13 K30 ["Parent"]
      195 FORGLOOP                         R9 2 ; [-3]
      197 NEWTABLE                         R9 0 0
      199 SETUPVAL                         R9 4
      200 NEWTABLE                         R9 0 0
      202 SETUPVAL                         R9 5
      203 RETURN                           R6 2

PROTO_15:
        0 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R4 R0 K0 ["_lastHoveredNode"]
        2 JUMPIFNOTEQ                      R1 R4 ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R4 R0 K1 ["_hoverOutline"]
        7 JUMPIFNOT                        R4 ; [+8]
        8 GETTABLEKS                       R4 R0 K1 ["_hoverOutline"]
       10 NAMECALL                         R4 R4 K2 ["Destroy"]
       12 CALL                             R4 1 0
       13 LOADNIL                          R4
       14 SETTABLEKS                       R4 R0 K1 ["_hoverOutline"]
       16 SETTABLEKS                       R1 R0 K0 ["_lastHoveredNode"]
       18 JUMPIFNOT                        R1 ; [+101]
       19 GETTABLEKS                       R4 R1 K3 ["frame"]
       21 JUMPIFNOT                        R4 ; [+98]
       22 GETTABLEKS                       R4 R0 K4 ["_hoverLayer"]
       24 JUMPIFNOT                        R4 ; [+95]
       25 GETTABLEKS                       R5 R1 K5 ["_dimmed"]
       27 JUMPIFNOT                        R5 ; [+13]
       28 GETUPVAL                         R5 0
       29 GETIMPORT                        R8 K8 [Color3.new]
       31 LOADN                            R9 0
       32 LOADN                            R10 0
       33 LOADN                            R11 0
       34 CALL                             R8 3 1
       35 LOADK                            R9 K9 [0.5]
       36 NAMECALL                         R6 R5 K10 ["Lerp"]
       38 CALL                             R6 3 1
       39 MOVE                             R4 R6
       40 JUMP                             ; [+1]
       41 GETUPVAL                         R4 0
       42 GETUPVAL                         R5 1
       43 GETTABLEKS                       R6 R1 K3 ["frame"]
       45 MOVE                             R7 R4
       46 LOADN                            R8 1
       47 LOADN                            R9 1
       48 CALL                             R5 4 1
       49 GETTABLEKS                       R6 R1 K11 ["_isStandardNode"]
       51 JUMPIFNOT                        R6 ; [+62]
       52 GETIMPORT                        R6 K13 [UDim2.new]
       54 GETTABLEKS                       R9 R5 K14 ["Position"]
       56 GETTABLEKS                       R8 R9 K15 ["X"]
       58 GETTABLEKS                       R7 R8 K16 ["Scale"]
       60 GETTABLEKS                       R11 R5 K14 ["Position"]
       62 GETTABLEKS                       R10 R11 K15 ["X"]
       64 GETTABLEKS                       R9 R10 K18 ["Offset"]
       66 ADDK                             R8 R9 K17 [1]
       67 GETTABLEKS                       R11 R5 K14 ["Position"]
       69 GETTABLEKS                       R10 R11 K19 ["Y"]
       71 GETTABLEKS                       R9 R10 K16 ["Scale"]
       73 GETTABLEKS                       R13 R5 K14 ["Position"]
       75 GETTABLEKS                       R12 R13 K19 ["Y"]
       77 GETTABLEKS                       R11 R12 K18 ["Offset"]
       79 ADDK                             R10 R11 K17 [1]
       80 CALL                             R6 4 1
       81 SETTABLEKS                       R6 R5 K14 ["Position"]
       83 GETIMPORT                        R6 K13 [UDim2.new]
       85 GETTABLEKS                       R9 R5 K20 ["Size"]
       87 GETTABLEKS                       R8 R9 K15 ["X"]
       89 GETTABLEKS                       R7 R8 K16 ["Scale"]
       91 GETTABLEKS                       R11 R5 K20 ["Size"]
       93 GETTABLEKS                       R10 R11 K15 ["X"]
       95 GETTABLEKS                       R9 R10 K18 ["Offset"]
       97 SUBK                             R8 R9 K17 [1]
       98 GETTABLEKS                       R11 R5 K20 ["Size"]
      100 GETTABLEKS                       R10 R11 K19 ["Y"]
      102 GETTABLEKS                       R9 R10 K16 ["Scale"]
      104 GETTABLEKS                       R13 R5 K20 ["Size"]
      106 GETTABLEKS                       R12 R13 K19 ["Y"]
      108 GETTABLEKS                       R11 R12 K18 ["Offset"]
      110 SUBK                             R10 R11 K17 [1]
      111 CALL                             R6 4 1
      112 SETTABLEKS                       R6 R5 K20 ["Size"]
      114 GETTABLEKS                       R6 R0 K4 ["_hoverLayer"]
      116 SETTABLEKS                       R6 R5 K21 ["Parent"]
      118 SETTABLEKS                       R5 R0 K1 ["_hoverOutline"]
      120 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 GETIMPORT                        R1 K2 [Color3.new]
        5 LOADN                            R2 1
        6 LOADN                            R3 1
        7 LOADN                            R4 1
        8 CALL                             R1 3 1
        9 DUPCLOSURE                       R2 K3 [PROTO_0]
       10 GETIMPORT                        R3 K5 [script]
       12 LOADK                            R5 K6 ["SceneAnalysis"]
       13 NAMECALL                         R3 R3 K7 ["FindFirstAncestor"]
       15 CALL                             R3 2 1
       16 GETIMPORT                        R4 K9 [require]
       18 GETTABLEKS                       R8 R3 K10 ["Src"]
       20 GETTABLEKS                       R7 R8 K11 ["Components"]
       22 GETTABLEKS                       R6 R7 K12 ["Treemap"]
       24 GETTABLEKS                       R5 R6 K13 ["TreemapTypes"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K9 [require]
       29 GETTABLEKS                       R8 R3 K10 ["Src"]
       31 GETTABLEKS                       R7 R8 K14 ["Util"]
       33 GETTABLEKS                       R6 R7 K15 ["formatSize"]
       35 CALL                             R5 1 1
       36 DUPCLOSURE                       R6 K16 [PROTO_1]
       37 CAPTURE                          VAL R5
       38 NEWTABLE                         R7 0 0
       40 LOADN                            R8 0
       41 DUPTABLE                         R9 K35 [{"cellGap", "cornerRadius", "headerBarHeight", "textPadding", "textLineHeight", "textLineGap", "selectionOutlineThickness", "selectionOutlineNudge", "edgePadding", "textLabelHeight", "fontSize", "font", "fontBold", "fontColor", "headerFontColor", "headerColor", "minWidth", "minHeight"}]
       42 LOADN                            R10 2
       43 SETTABLEKS                       R10 R9 K17 ["cellGap"]
       45 LOADN                            R10 2
       46 SETTABLEKS                       R10 R9 K18 ["cornerRadius"]
       48 LOADN                            R10 22
       49 SETTABLEKS                       R10 R9 K19 ["headerBarHeight"]
       51 LOADN                            R10 4
       52 SETTABLEKS                       R10 R9 K20 ["textPadding"]
       54 LOADN                            R10 16
       55 SETTABLEKS                       R10 R9 K21 ["textLineHeight"]
       57 LOADN                            R10 2
       58 SETTABLEKS                       R10 R9 K22 ["textLineGap"]
       60 LOADN                            R10 2
       61 SETTABLEKS                       R10 R9 K23 ["selectionOutlineThickness"]
       63 LOADN                            R10 2
       64 SETTABLEKS                       R10 R9 K24 ["selectionOutlineNudge"]
       66 LOADN                            R10 1
       67 SETTABLEKS                       R10 R9 K25 ["edgePadding"]
       69 LOADN                            R10 11
       70 SETTABLEKS                       R10 R9 K26 ["textLabelHeight"]
       72 LOADN                            R10 11
       73 SETTABLEKS                       R10 R9 K27 ["fontSize"]
       75 GETIMPORT                        R10 K39 [Enum.Font.SourceSans]
       77 SETTABLEKS                       R10 R9 K28 ["font"]
       79 GETIMPORT                        R10 K41 [Enum.Font.SourceSansBold]
       81 SETTABLEKS                       R10 R9 K29 ["fontBold"]
       83 GETIMPORT                        R10 K2 [Color3.new]
       85 LOADN                            R11 1
       86 LOADN                            R12 1
       87 LOADN                            R13 1
       88 CALL                             R10 3 1
       89 SETTABLEKS                       R10 R9 K30 ["fontColor"]
       91 GETIMPORT                        R10 K2 [Color3.new]
       93 LOADN                            R11 1
       94 LOADN                            R12 1
       95 LOADN                            R13 1
       96 CALL                             R10 3 1
       97 SETTABLEKS                       R10 R9 K31 ["headerFontColor"]
       99 GETIMPORT                        R10 K2 [Color3.new]
      101 LOADK                            R11 K42 [0.152941176470588]
      102 LOADK                            R12 K43 [0.16078431372549]
      103 LOADK                            R13 K44 [0.180392156862745]
      104 CALL                             R10 3 1
      105 SETTABLEKS                       R10 R9 K32 ["headerColor"]
      107 LOADN                            R10 20
      108 SETTABLEKS                       R10 R9 K33 ["minWidth"]
      110 LOADN                            R10 20
      111 SETTABLEKS                       R10 R9 K34 ["minHeight"]
      113 NEWTABLE                         R10 0 0
      115 NEWTABLE                         R11 0 0
      117 NEWTABLE                         R12 0 0
      119 SETTABLEKS                       R12 R0 K45 ["_selectionLayer"]
      121 LOADNIL                          R12
      122 SETTABLEKS                       R12 R0 K46 ["_hoverOutline"]
      124 NEWCLOSURE                       R12 P2
      125 CAPTURE                          REF R10
      126 GETIMPORT                        R13 K9 [require]
      128 GETTABLEKS                       R16 R3 K10 ["Src"]
      130 GETTABLEKS                       R15 R16 K47 ["Resources"]
      132 GETTABLEKS                       R14 R15 K48 ["ColorRamps"]
      134 CALL                             R13 1 1
      135 GETTABLEKS                       R14 R13 K49 ["Default"]
      137 MOVE                             R15 R14
      138 NEWCLOSURE                       R16 P3
      139 CAPTURE                          REF R15
      140 GETIMPORT                        R17 K9 [require]
      142 GETTABLEKS                       R20 R3 K10 ["Src"]
      144 GETTABLEKS                       R19 R20 K14 ["Util"]
      146 GETTABLEKS                       R18 R19 K50 ["abridgePath"]
      148 CALL                             R17 1 1
      149 DUPCLOSURE                       R18 K51 [PROTO_4]
      150 CAPTURE                          VAL R18
      151 NEWCLOSURE                       R19 P5
      152 CAPTURE                          VAL R18
      153 CAPTURE                          REF R15
      154 NEWCLOSURE                       R20 P6
      155 CAPTURE                          REF R7
      156 CAPTURE                          REF R8
      157 DUPCLOSURE                       R21 K52 [PROTO_8]
      158 DUPCLOSURE                       R22 K53 [PROTO_9]
      159 NEWCLOSURE                       R23 P9
      160 CAPTURE                          REF R10
      161 CAPTURE                          VAL R9
      162 CAPTURE                          REF R15
      163 CAPTURE                          VAL R21
      164 CAPTURE                          VAL R13
      165 CAPTURE                          VAL R17
      166 CAPTURE                          REF R11
      167 CAPTURE                          VAL R20
      168 SETTABLEKS                       R23 R0 K54 ["renderHeaderNode"]
      170 NEWCLOSURE                       R23 P10
      171 CAPTURE                          REF R10
      172 CAPTURE                          VAL R9
      173 CAPTURE                          VAL R20
      174 CAPTURE                          VAL R17
      175 CAPTURE                          REF R11
      176 CAPTURE                          VAL R21
      177 SETTABLEKS                       R23 R0 K55 ["renderStandardNode"]
      179 NEWCLOSURE                       R23 P11
      180 CAPTURE                          VAL R9
      181 CAPTURE                          REF R15
      182 SETTABLEKS                       R23 R0 K56 ["fillTinybox"]
      184 DUPCLOSURE                       R23 K57 [PROTO_13]
      185 CAPTURE                          VAL R5
      186 CAPTURE                          VAL R23
      187 NEWCLOSURE                       R24 P13
      188 CAPTURE                          REF R15
      189 CAPTURE                          VAL R14
      190 CAPTURE                          VAL R23
      191 CAPTURE                          VAL R19
      192 CAPTURE                          REF R11
      193 CAPTURE                          REF R10
      194 SETTABLEKS                       R24 R0 K58 ["renderTreemap"]
      196 DUPCLOSURE                       R24 K59 [PROTO_15]
      197 SETTABLEKS                       R24 R0 K60 ["highlightGlowNode"]
      199 DUPCLOSURE                       R24 K61 [PROTO_16]
      200 CAPTURE                          VAL R1
      201 CAPTURE                          VAL R21
      202 SETTABLEKS                       R24 R0 K62 ["animateTreemap"]
      204 SETTABLEKS                       R9 R0 K63 ["settings"]
      206 DUPTABLE                         R24 K67 [{"formatNodeValue", "abridgePath", "collectRenderableNodes", "assignColorsByRank"}]
      207 SETTABLEKS                       R6 R24 K64 ["formatNodeValue"]
      209 SETTABLEKS                       R17 R24 K50 ["abridgePath"]
      211 SETTABLEKS                       R18 R24 K65 ["collectRenderableNodes"]
      213 SETTABLEKS                       R19 R24 K66 ["assignColorsByRank"]
      215 SETTABLEKS                       R24 R0 K68 ["_testOnly"]
      217 CLOSEUPVALS                      R7
      218 RETURN                           R0 1
