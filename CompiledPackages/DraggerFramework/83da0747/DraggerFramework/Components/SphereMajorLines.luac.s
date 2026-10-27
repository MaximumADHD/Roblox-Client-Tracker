PROTO_0:
        0 GETUPVAL                         R3 0
        1 LOADB                            R4 1
        2 NAMECALL                         R1 R0 K0 ["AddPath"]
        4 CALL                             R1 3 0
        5 GETUPVAL                         R3 1
        6 LOADB                            R4 1
        7 NAMECALL                         R1 R0 K0 ["AddPath"]
        9 CALL                             R1 3 0
       10 GETUPVAL                         R3 2
       11 LOADB                            R4 1
       12 NAMECALL                         R1 R0 K0 ["AddPath"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Part"]
        2 GETTABLEKS                       R2 R1 K1 ["Size"]
        4 GETTABLEKS                       R5 R2 K3 ["X"]
        6 GETTABLEKS                       R6 R2 K4 ["Y"]
        8 GETTABLEKS                       R7 R2 K5 ["Z"]
       10 FASTCALL                         MATH_MIN ; [+2]
       11 GETIMPORT                        R4 K8 [math.min]
       13 CALL                             R4 3 1
       14 MULK                             R3 R4 K2 [0.5]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K9 ["createElement"]
       18 GETUPVAL                         R5 1
       19 DUPTABLE                         R6 K16 [{["AlwaysOnTop"] = False, ["Adornee"], ["Scale"], ["Color3"], ["Render"]}]
       20 GETTABLEKS                       R7 R0 K0 ["Part"]
       22 SETTABLEKS                       R7 R6 K12 ["Adornee"]
       24 LOADK                            R8 K17 [{1, 1, 1}]
       25 MUL                              R7 R8 R3
       26 SETTABLEKS                       R7 R6 K13 ["Scale"]
       28 GETTABLEKS                       R7 R0 K14 ["Color3"]
       30 SETTABLEKS                       R7 R6 K14 ["Color3"]
       32 GETUPVAL                         R7 2
       33 SETTABLEKS                       R7 R6 K15 ["Render"]
       35 CALL                             R4 2 -1
       36 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K2 ["Parent"]
       11 GETTABLEKS                       R2 R2 K5 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Components"]
       18 GETTABLEKS                       R3 R3 K7 ["WireframeHandleAdornment"]
       20 CALL                             R2 1 1
       21 NEWTABLE                         R3 0 0
       23 LOADN                            R6 -3
       24 LOADN                            R4 3
       25 LOADN                            R5 1
       26 FORNPREP                         R4
       27 LOADN                            R10 0
       28 LOADN                            R12 -3
       29 FASTCALL3                        VECTOR R10 R6 R12
       31 MOVE                             R11 R6
       32 GETIMPORT                        R9 K10 [Vector3.new]
       34 CALL                             R9 3 1
       35 GETTABLEKS                       R9 R9 K11 ["Unit"]
       37 FASTCALL2                        TABLE_INSERT R3 R9 ; [+4]
       39 MOVE                             R8 R3
       40 GETIMPORT                        R7 K14 [table.insert]
       42 CALL                             R7 2 0
       43 FORNLOOP                         R4
       44 LOADN                            R6 -3
       45 LOADN                            R4 3
       46 LOADN                            R5 1
       47 FORNPREP                         R4
       48 LOADN                            R10 0
       49 LOADN                            R11 3
       50 FASTCALL3                        VECTOR R10 R11 R6
       52 MOVE                             R12 R6
       53 GETIMPORT                        R9 K10 [Vector3.new]
       55 CALL                             R9 3 1
       56 GETTABLEKS                       R9 R9 K11 ["Unit"]
       58 FASTCALL2                        TABLE_INSERT R3 R9 ; [+4]
       60 MOVE                             R8 R3
       61 GETIMPORT                        R7 K14 [table.insert]
       63 CALL                             R7 2 0
       64 FORNLOOP                         R4
       65 LOADN                            R6 3
       66 LOADN                            R4 -3
       67 LOADN                            R5 -1
       68 FORNPREP                         R4
       69 LOADN                            R10 0
       70 LOADN                            R12 3
       71 FASTCALL3                        VECTOR R10 R6 R12
       73 MOVE                             R11 R6
       74 GETIMPORT                        R9 K10 [Vector3.new]
       76 CALL                             R9 3 1
       77 GETTABLEKS                       R9 R9 K11 ["Unit"]
       79 FASTCALL2                        TABLE_INSERT R3 R9 ; [+4]
       81 MOVE                             R8 R3
       82 GETIMPORT                        R7 K14 [table.insert]
       84 CALL                             R7 2 0
       85 FORNLOOP                         R4
       86 LOADN                            R6 3
       87 LOADN                            R4 -3
       88 LOADN                            R5 -1
       89 FORNPREP                         R4
       90 LOADN                            R10 0
       91 LOADN                            R11 -3
       92 FASTCALL3                        VECTOR R10 R11 R6
       94 MOVE                             R12 R6
       95 GETIMPORT                        R9 K10 [Vector3.new]
       97 CALL                             R9 3 1
       98 GETTABLEKS                       R9 R9 K11 ["Unit"]
      100 FASTCALL2                        TABLE_INSERT R3 R9 ; [+4]
      102 MOVE                             R8 R3
      103 GETIMPORT                        R7 K14 [table.insert]
      105 CALL                             R7 2 0
      106 FORNLOOP                         R4
      107 NEWTABLE                         R4 0 0
      109 LOADN                            R7 -3
      110 LOADN                            R5 3
      111 LOADN                            R6 1
      112 FORNPREP                         R5
      113 LOADN                            R11 -3
      114 LOADN                            R12 0
      115 FASTCALL3                        VECTOR R11 R12 R7
      117 MOVE                             R13 R7
      118 GETIMPORT                        R10 K10 [Vector3.new]
      120 CALL                             R10 3 1
      121 GETTABLEKS                       R10 R10 K11 ["Unit"]
      123 FASTCALL2                        TABLE_INSERT R4 R10 ; [+4]
      125 MOVE                             R9 R4
      126 GETIMPORT                        R8 K14 [table.insert]
      128 CALL                             R8 2 0
      129 FORNLOOP                         R5
      130 LOADN                            R7 -3
      131 LOADN                            R5 3
      132 LOADN                            R6 1
      133 FORNPREP                         R5
      134 LOADN                            R12 0
      135 LOADN                            R13 3
      136 FASTCALL3                        VECTOR R7 R12 R13
      138 MOVE                             R11 R7
      139 GETIMPORT                        R10 K10 [Vector3.new]
      141 CALL                             R10 3 1
      142 GETTABLEKS                       R10 R10 K11 ["Unit"]
      144 FASTCALL2                        TABLE_INSERT R4 R10 ; [+4]
      146 MOVE                             R9 R4
      147 GETIMPORT                        R8 K14 [table.insert]
      149 CALL                             R8 2 0
      150 FORNLOOP                         R5
      151 LOADN                            R7 3
      152 LOADN                            R5 -3
      153 LOADN                            R6 -1
      154 FORNPREP                         R5
      155 LOADN                            R11 3
      156 LOADN                            R12 0
      157 FASTCALL3                        VECTOR R11 R12 R7
      159 MOVE                             R13 R7
      160 GETIMPORT                        R10 K10 [Vector3.new]
      162 CALL                             R10 3 1
      163 GETTABLEKS                       R10 R10 K11 ["Unit"]
      165 FASTCALL2                        TABLE_INSERT R4 R10 ; [+4]
      167 MOVE                             R9 R4
      168 GETIMPORT                        R8 K14 [table.insert]
      170 CALL                             R8 2 0
      171 FORNLOOP                         R5
      172 LOADN                            R7 3
      173 LOADN                            R5 -3
      174 LOADN                            R6 -1
      175 FORNPREP                         R5
      176 LOADN                            R12 0
      177 LOADN                            R13 -3
      178 FASTCALL3                        VECTOR R7 R12 R13
      180 MOVE                             R11 R7
      181 GETIMPORT                        R10 K10 [Vector3.new]
      183 CALL                             R10 3 1
      184 GETTABLEKS                       R10 R10 K11 ["Unit"]
      186 FASTCALL2                        TABLE_INSERT R4 R10 ; [+4]
      188 MOVE                             R9 R4
      189 GETIMPORT                        R8 K14 [table.insert]
      191 CALL                             R8 2 0
      192 FORNLOOP                         R5
      193 NEWTABLE                         R5 0 0
      195 LOADN                            R8 -3
      196 LOADN                            R6 3
      197 LOADN                            R7 1
      198 FORNPREP                         R6
      199 LOADN                            R12 -3
      200 LOADN                            R14 0
      201 FASTCALL3                        VECTOR R12 R8 R14
      203 MOVE                             R13 R8
      204 GETIMPORT                        R11 K10 [Vector3.new]
      206 CALL                             R11 3 1
      207 GETTABLEKS                       R11 R11 K11 ["Unit"]
      209 FASTCALL2                        TABLE_INSERT R5 R11 ; [+4]
      211 MOVE                             R10 R5
      212 GETIMPORT                        R9 K14 [table.insert]
      214 CALL                             R9 2 0
      215 FORNLOOP                         R6
      216 LOADN                            R8 -3
      217 LOADN                            R6 3
      218 LOADN                            R7 1
      219 FORNPREP                         R6
      220 LOADN                            R13 3
      221 LOADN                            R14 0
      222 FASTCALL3                        VECTOR R8 R13 R14
      224 MOVE                             R12 R8
      225 GETIMPORT                        R11 K10 [Vector3.new]
      227 CALL                             R11 3 1
      228 GETTABLEKS                       R11 R11 K11 ["Unit"]
      230 FASTCALL2                        TABLE_INSERT R5 R11 ; [+4]
      232 MOVE                             R10 R5
      233 GETIMPORT                        R9 K14 [table.insert]
      235 CALL                             R9 2 0
      236 FORNLOOP                         R6
      237 LOADN                            R8 3
      238 LOADN                            R6 -3
      239 LOADN                            R7 -1
      240 FORNPREP                         R6
      241 LOADN                            R12 3
      242 LOADN                            R14 0
      243 FASTCALL3                        VECTOR R12 R8 R14
      245 MOVE                             R13 R8
      246 GETIMPORT                        R11 K10 [Vector3.new]
      248 CALL                             R11 3 1
      249 GETTABLEKS                       R11 R11 K11 ["Unit"]
      251 FASTCALL2                        TABLE_INSERT R5 R11 ; [+4]
      253 MOVE                             R10 R5
      254 GETIMPORT                        R9 K14 [table.insert]
      256 CALL                             R9 2 0
      257 FORNLOOP                         R6
      258 LOADN                            R8 3
      259 LOADN                            R6 -3
      260 LOADN                            R7 -1
      261 FORNPREP                         R6
      262 LOADN                            R13 -3
      263 LOADN                            R14 0
      264 FASTCALL3                        VECTOR R8 R13 R14
      266 MOVE                             R12 R8
      267 GETIMPORT                        R11 K10 [Vector3.new]
      269 CALL                             R11 3 1
      270 GETTABLEKS                       R11 R11 K11 ["Unit"]
      272 FASTCALL2                        TABLE_INSERT R5 R11 ; [+4]
      274 MOVE                             R10 R5
      275 GETIMPORT                        R9 K14 [table.insert]
      277 CALL                             R9 2 0
      278 FORNLOOP                         R6
      279 DUPCLOSURE                       R6 K15 [PROTO_0]
      280 CAPTURE                          VAL R3
      281 CAPTURE                          VAL R5
      282 CAPTURE                          VAL R4
      283 DUPCLOSURE                       R7 K16 [PROTO_1]
      284 CAPTURE                          VAL R1
      285 CAPTURE                          VAL R2
      286 CAPTURE                          VAL R6
      287 RETURN                           R7 1
