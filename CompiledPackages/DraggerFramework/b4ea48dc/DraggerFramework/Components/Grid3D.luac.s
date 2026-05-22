PROTO_0:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R1 R0 K0 ["AddLines"]
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 NEWTABLE                         R2 0 0
        4 GETTABLEKS                       R3 R1 K1 ["Position"]
        6 GETTABLEKS                       R4 R1 K2 ["UnitA"]
        8 GETTABLEKS                       R5 R1 K3 ["UnitB"]
       10 GETTABLEKS                       R6 R1 K4 ["MinA"]
       12 GETTABLEKS                       R7 R1 K5 ["MaxA"]
       14 GETTABLEKS                       R8 R1 K6 ["MinB"]
       16 GETTABLEKS                       R9 R1 K7 ["MaxB"]
       18 GETTABLEKS                       R10 R1 K8 ["Radius"]
       20 JUMPIFNOT                        R10 ; [+119]
       21 SUBK                             R14 R6 K9 [0.001]
       22 FASTCALL1                        MATH_CEIL R14 ; [+2]
       23 GETIMPORT                        R13 K12 [math.ceil]
       25 CALL                             R13 1 1
       26 ADDK                             R15 R7 K9 [0.001]
       27 FASTCALL1                        MATH_FLOOR R15 ; [+2]
       28 GETIMPORT                        R14 K14 [math.floor]
       30 CALL                             R14 1 1
       31 MOVE                             R11 R14
       32 LOADN                            R12 1
       33 FORNPREP                         R11
       34 MUL                              R16 R10 R10
       35 MUL                              R17 R13 R13
       36 SUB                              R15 R16 R17
       37 FASTCALL1                        MATH_SQRT R15 ; [+2]
       38 GETIMPORT                        R14 K16 [math.sqrt]
       40 CALL                             R14 1 1
       41 GETTABLEKS                       R15 R1 K17 ["ExcludeA"]
       43 JUMPIFEQ                         R13 R15 ; [+35]
       45 MUL                              R16 R4 R13
       46 ADD                              R15 R3 R16
       47 MINUS                            R18 R14
       48 FASTCALL2                        MATH_MAX R8 R18 ; [+4]
       50 MOVE                             R17 R8
       51 GETIMPORT                        R16 K19 [math.max]
       53 CALL                             R16 2 1
       54 FASTCALL2                        MATH_MIN R9 R14 ; [+5]
       56 MOVE                             R18 R9
       57 MOVE                             R19 R14
       58 GETIMPORT                        R17 K21 [math.min]
       60 CALL                             R17 2 1
       61 JUMPIFNOTLT                      R16 R17 ; [+17]
       63 MUL                              R21 R5 R16
       64 ADD                              R20 R15 R21
       65 FASTCALL2                        TABLE_INSERT R2 R20 ; [+4]
       67 MOVE                             R19 R2
       68 GETIMPORT                        R18 K24 [table.insert]
       70 CALL                             R18 2 0
       71 MUL                              R21 R5 R17
       72 ADD                              R20 R15 R21
       73 FASTCALL2                        TABLE_INSERT R2 R20 ; [+4]
       75 MOVE                             R19 R2
       76 GETIMPORT                        R18 K24 [table.insert]
       78 CALL                             R18 2 0
       79 FORNLOOP                         R11
       80 SUBK                             R14 R8 K9 [0.001]
       81 FASTCALL1                        MATH_CEIL R14 ; [+2]
       82 GETIMPORT                        R13 K12 [math.ceil]
       84 CALL                             R13 1 1
       85 ADDK                             R15 R9 K9 [0.001]
       86 FASTCALL1                        MATH_FLOOR R15 ; [+2]
       87 GETIMPORT                        R14 K14 [math.floor]
       89 CALL                             R14 1 1
       90 MOVE                             R11 R14
       91 LOADN                            R12 1
       92 FORNPREP                         R11
       93 MUL                              R16 R10 R10
       94 MUL                              R17 R13 R13
       95 SUB                              R15 R16 R17
       96 FASTCALL1                        MATH_SQRT R15 ; [+2]
       97 GETIMPORT                        R14 K16 [math.sqrt]
       99 CALL                             R14 1 1
      100 GETTABLEKS                       R15 R1 K25 ["ExcludeB"]
      102 JUMPIFEQ                         R13 R15 ; [+35]
      104 MUL                              R16 R5 R13
      105 ADD                              R15 R3 R16
      106 MINUS                            R18 R14
      107 FASTCALL2                        MATH_MAX R6 R18 ; [+4]
      109 MOVE                             R17 R6
      110 GETIMPORT                        R16 K19 [math.max]
      112 CALL                             R16 2 1
      113 FASTCALL2                        MATH_MIN R7 R14 ; [+5]
      115 MOVE                             R18 R7
      116 MOVE                             R19 R14
      117 GETIMPORT                        R17 K21 [math.min]
      119 CALL                             R17 2 1
      120 JUMPIFNOTLT                      R16 R17 ; [+17]
      122 MUL                              R21 R4 R16
      123 ADD                              R20 R15 R21
      124 FASTCALL2                        TABLE_INSERT R2 R20 ; [+4]
      126 MOVE                             R19 R2
      127 GETIMPORT                        R18 K24 [table.insert]
      129 CALL                             R18 2 0
      130 MUL                              R21 R4 R17
      131 ADD                              R20 R15 R21
      132 FASTCALL2                        TABLE_INSERT R2 R20 ; [+4]
      134 MOVE                             R19 R2
      135 GETIMPORT                        R18 K24 [table.insert]
      137 CALL                             R18 2 0
      138 FORNLOOP                         R11
      139 JUMP                             ; [+103]
      140 SUBK                             R12 R6 K9 [0.001]
      141 FASTCALL1                        MATH_CEIL R12 ; [+2]
      142 GETIMPORT                        R11 K12 [math.ceil]
      144 CALL                             R11 1 1
      145 ADDK                             R13 R7 K9 [0.001]
      146 FASTCALL1                        MATH_FLOOR R13 ; [+2]
      147 GETIMPORT                        R12 K14 [math.floor]
      149 CALL                             R12 1 1
      150 SUBK                             R14 R8 K9 [0.001]
      151 FASTCALL1                        MATH_CEIL R14 ; [+2]
      152 GETIMPORT                        R13 K12 [math.ceil]
      154 CALL                             R13 1 1
      155 ADDK                             R15 R9 K9 [0.001]
      156 FASTCALL1                        MATH_FLOOR R15 ; [+2]
      157 GETIMPORT                        R14 K14 [math.floor]
      159 CALL                             R14 1 1
      160 LOADN                            R15 1
      161 SUB                              R16 R12 R11
      162 LOADN                            R17 0
      163 JUMPIFLT                         R17 R16 ; [+5]
      165 SUB                              R16 R14 R13
      166 LOADN                            R17 0
      167 JUMPIFNOTLT                      R17 R16 ; [+21]
      169 SUB                              R17 R12 R11
      170 SUB                              R18 R14 R13
      171 FASTCALL2                        MATH_MAX R17 R18 ; [+3]
      173 GETIMPORT                        R16 K19 [math.max]
      175 CALL                             R16 2 1
      176 LOADN                            R17 2
      177 DIVK                             R20 R16 K26 [1024]
      178 FASTCALL2K                       MATH_LOG R20 K27 ; [+4]
      180 LOADK                            R21 K27 [2]
      181 GETIMPORT                        R19 K29 [math.log]
      183 CALL                             R19 2 1
      184 FASTCALL1                        MATH_FLOOR R19 ; [+2]
      185 GETIMPORT                        R18 K14 [math.floor]
      187 CALL                             R18 1 1
      188 POW                              R15 R17 R18
      189 MOVE                             R18 R11
      190 MOVE                             R16 R12
      191 MOVE                             R17 R15
      192 FORNPREP                         R16
      193 GETTABLEKS                       R19 R1 K17 ["ExcludeA"]
      195 JUMPIFEQ                         R18 R19 ; [+19]
      197 MUL                              R20 R4 R18
      198 ADD                              R19 R3 R20
      199 MUL                              R23 R5 R8
      200 ADD                              R22 R19 R23
      201 FASTCALL2                        TABLE_INSERT R2 R22 ; [+4]
      203 MOVE                             R21 R2
      204 GETIMPORT                        R20 K24 [table.insert]
      206 CALL                             R20 2 0
      207 MUL                              R23 R5 R9
      208 ADD                              R22 R19 R23
      209 FASTCALL2                        TABLE_INSERT R2 R22 ; [+4]
      211 MOVE                             R21 R2
      212 GETIMPORT                        R20 K24 [table.insert]
      214 CALL                             R20 2 0
      215 FORNLOOP                         R16
      216 MOVE                             R18 R13
      217 MOVE                             R16 R14
      218 MOVE                             R17 R15
      219 FORNPREP                         R16
      220 GETTABLEKS                       R19 R1 K25 ["ExcludeB"]
      222 JUMPIFEQ                         R18 R19 ; [+19]
      224 MUL                              R20 R5 R18
      225 ADD                              R19 R3 R20
      226 MUL                              R23 R4 R6
      227 ADD                              R22 R19 R23
      228 FASTCALL2                        TABLE_INSERT R2 R22 ; [+4]
      230 MOVE                             R21 R2
      231 GETIMPORT                        R20 K24 [table.insert]
      233 CALL                             R20 2 0
      234 MUL                              R23 R4 R7
      235 ADD                              R22 R19 R23
      236 FASTCALL2                        TABLE_INSERT R2 R22 ; [+4]
      238 MOVE                             R21 R2
      239 GETIMPORT                        R20 K24 [table.insert]
      241 CALL                             R20 2 0
      242 FORNLOOP                         R16
      243 NEWCLOSURE                       R11 P0
      244 CAPTURE                          VAL R2
      245 GETUPVAL                         R12 0
      246 GETTABLEKS                       R12 R12 K30 ["createFragment"]
      248 DUPTABLE                         R13 K33 [{"OnTop", "NotOnTop"}]
      249 GETUPVAL                         R14 0
      250 GETTABLEKS                       R14 R14 K34 ["createElement"]
      252 GETUPVAL                         R15 1
      253 DUPTABLE                         R16 K39 [{"Color3", "AlwaysOnTop", "Transparency", "Render"}]
      254 GETTABLEKS                       R17 R1 K35 ["Color3"]
      256 SETTABLEKS                       R17 R16 K35 ["Color3"]
      258 LOADB                            R17 1
      259 SETTABLEKS                       R17 R16 K36 ["AlwaysOnTop"]
      261 GETTABLEKS                       R17 R1 K40 ["Dim"]
      263 SETTABLEKS                       R17 R16 K37 ["Transparency"]
      265 SETTABLEKS                       R11 R16 K38 ["Render"]
      267 CALL                             R14 2 1
      268 SETTABLEKS                       R14 R13 K31 ["OnTop"]
      270 GETUPVAL                         R14 0
      271 GETTABLEKS                       R14 R14 K34 ["createElement"]
      273 GETUPVAL                         R15 1
      274 DUPTABLE                         R16 K39 [{"Color3", "AlwaysOnTop", "Transparency", "Render"}]
      275 GETTABLEKS                       R17 R1 K35 ["Color3"]
      277 SETTABLEKS                       R17 R16 K35 ["Color3"]
      279 LOADB                            R17 0
      280 SETTABLEKS                       R17 R16 K36 ["AlwaysOnTop"]
      282 LOADK                            R17 K41 [0.4]
      283 SETTABLEKS                       R17 R16 K37 ["Transparency"]
      285 SETTABLEKS                       R11 R16 K38 ["Render"]
      287 CALL                             R14 2 1
      288 SETTABLEKS                       R14 R13 K32 ["NotOnTop"]
      290 CALL                             R12 1 -1
      291 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R1 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["Packages"]
       15 GETTABLEKS                       R3 R3 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K4 [require]
       20 GETTABLEKS                       R4 R0 K7 ["Components"]
       22 GETTABLEKS                       R4 R4 K8 ["WireframeHandleAdornment"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R2 K9 ["PureComponent"]
       27 LOADK                            R6 K10 ["Grid3D"]
       28 NAMECALL                         R4 R4 K11 ["extend"]
       30 CALL                             R4 2 1
       31 DUPTABLE                         R5 K13 [{"Dim"}]
       32 LOADK                            R6 K14 [0.85]
       33 SETTABLEKS                       R6 R5 K12 ["Dim"]
       35 SETTABLEKS                       R5 R4 K15 ["defaultProps"]
       37 DUPCLOSURE                       R5 K16 [PROTO_1]
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R3
       40 SETTABLEKS                       R5 R4 K17 ["render"]
       42 RETURN                           R4 1
