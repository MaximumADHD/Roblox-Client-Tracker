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
       19 DUPTABLE                         R6 K15 [{"AlwaysOnTop", "Adornee", "Scale", "Color3", "Render"}]
       20 LOADB                            R7 0
       21 SETTABLEKS                       R7 R6 K10 ["AlwaysOnTop"]
       23 GETTABLEKS                       R7 R0 K0 ["Part"]
       25 SETTABLEKS                       R7 R6 K11 ["Adornee"]
       27 LOADK                            R8 K16 [{1, 1, 1}]
       28 MUL                              R7 R8 R3
       29 SETTABLEKS                       R7 R6 K12 ["Scale"]
       31 GETTABLEKS                       R7 R0 K13 ["Color3"]
       33 SETTABLEKS                       R7 R6 K13 ["Color3"]
       35 GETUPVAL                         R7 2
       36 SETTABLEKS                       R7 R6 K14 ["Render"]
       38 CALL                             R4 2 -1
       39 RETURN                           R4 -1

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
       25 NEWTABLE                         R4 0 0
       27 LOADN                            R7 253
       28 LOADN                            R5 3
       29 LOADN                            R6 1
       30 FORNPREP                         R5
       31 LOADN                            R11 0
       32 LOADN                            R13 253
       33 FASTCALL3                        VECTOR R11 R7 R13
       35 MOVE                             R12 R7
       36 GETIMPORT                        R10 K11 [Vector3.new]
       38 CALL                             R10 3 1
       39 GETTABLEKS                       R10 R10 K12 ["Unit"]
       41 FASTCALL2                        TABLE_INSERT R4 R10 ; [+4]
       43 MOVE                             R9 R4
       44 GETIMPORT                        R8 K15 [table.insert]
       46 CALL                             R8 2 0
       47 FORNLOOP                         R5
       48 LOADN                            R7 253
       49 LOADN                            R5 3
       50 LOADN                            R6 1
       51 FORNPREP                         R5
       52 LOADN                            R11 0
       53 LOADN                            R12 3
       54 FASTCALL3                        VECTOR R11 R12 R7
       56 MOVE                             R13 R7
       57 GETIMPORT                        R10 K11 [Vector3.new]
       59 CALL                             R10 3 1
       60 GETTABLEKS                       R10 R10 K12 ["Unit"]
       62 FASTCALL2                        TABLE_INSERT R4 R10 ; [+4]
       64 MOVE                             R9 R4
       65 GETIMPORT                        R8 K15 [table.insert]
       67 CALL                             R8 2 0
       68 FORNLOOP                         R5
       69 LOADN                            R7 3
       70 LOADN                            R5 253
       71 LOADN                            R6 255
       72 FORNPREP                         R5
       73 LOADN                            R11 0
       74 LOADN                            R13 3
       75 FASTCALL3                        VECTOR R11 R7 R13
       77 MOVE                             R12 R7
       78 GETIMPORT                        R10 K11 [Vector3.new]
       80 CALL                             R10 3 1
       81 GETTABLEKS                       R10 R10 K12 ["Unit"]
       83 FASTCALL2                        TABLE_INSERT R4 R10 ; [+4]
       85 MOVE                             R9 R4
       86 GETIMPORT                        R8 K15 [table.insert]
       88 CALL                             R8 2 0
       89 FORNLOOP                         R5
       90 LOADN                            R7 3
       91 LOADN                            R5 253
       92 LOADN                            R6 255
       93 FORNPREP                         R5
       94 LOADN                            R11 0
       95 LOADN                            R12 253
       96 FASTCALL3                        VECTOR R11 R12 R7
       98 MOVE                             R13 R7
       99 GETIMPORT                        R10 K11 [Vector3.new]
      101 CALL                             R10 3 1
      102 GETTABLEKS                       R10 R10 K12 ["Unit"]
      104 FASTCALL2                        TABLE_INSERT R4 R10 ; [+4]
      106 MOVE                             R9 R4
      107 GETIMPORT                        R8 K15 [table.insert]
      109 CALL                             R8 2 0
      110 FORNLOOP                         R5
      111 NEWTABLE                         R5 0 0
      113 LOADN                            R8 253
      114 LOADN                            R6 3
      115 LOADN                            R7 1
      116 FORNPREP                         R6
      117 LOADN                            R12 253
      118 LOADN                            R13 0
      119 FASTCALL3                        VECTOR R12 R13 R8
      121 MOVE                             R14 R8
      122 GETIMPORT                        R11 K11 [Vector3.new]
      124 CALL                             R11 3 1
      125 GETTABLEKS                       R11 R11 K12 ["Unit"]
      127 FASTCALL2                        TABLE_INSERT R5 R11 ; [+4]
      129 MOVE                             R10 R5
      130 GETIMPORT                        R9 K15 [table.insert]
      132 CALL                             R9 2 0
      133 FORNLOOP                         R6
      134 LOADN                            R8 253
      135 LOADN                            R6 3
      136 LOADN                            R7 1
      137 FORNPREP                         R6
      138 LOADN                            R13 0
      139 LOADN                            R14 3
      140 FASTCALL3                        VECTOR R8 R13 R14
      142 MOVE                             R12 R8
      143 GETIMPORT                        R11 K11 [Vector3.new]
      145 CALL                             R11 3 1
      146 GETTABLEKS                       R11 R11 K12 ["Unit"]
      148 FASTCALL2                        TABLE_INSERT R5 R11 ; [+4]
      150 MOVE                             R10 R5
      151 GETIMPORT                        R9 K15 [table.insert]
      153 CALL                             R9 2 0
      154 FORNLOOP                         R6
      155 LOADN                            R8 3
      156 LOADN                            R6 253
      157 LOADN                            R7 255
      158 FORNPREP                         R6
      159 LOADN                            R12 3
      160 LOADN                            R13 0
      161 FASTCALL3                        VECTOR R12 R13 R8
      163 MOVE                             R14 R8
      164 GETIMPORT                        R11 K11 [Vector3.new]
      166 CALL                             R11 3 1
      167 GETTABLEKS                       R11 R11 K12 ["Unit"]
      169 FASTCALL2                        TABLE_INSERT R5 R11 ; [+4]
      171 MOVE                             R10 R5
      172 GETIMPORT                        R9 K15 [table.insert]
      174 CALL                             R9 2 0
      175 FORNLOOP                         R6
      176 LOADN                            R8 3
      177 LOADN                            R6 253
      178 LOADN                            R7 255
      179 FORNPREP                         R6
      180 LOADN                            R13 0
      181 LOADN                            R14 253
      182 FASTCALL3                        VECTOR R8 R13 R14
      184 MOVE                             R12 R8
      185 GETIMPORT                        R11 K11 [Vector3.new]
      187 CALL                             R11 3 1
      188 GETTABLEKS                       R11 R11 K12 ["Unit"]
      190 FASTCALL2                        TABLE_INSERT R5 R11 ; [+4]
      192 MOVE                             R10 R5
      193 GETIMPORT                        R9 K15 [table.insert]
      195 CALL                             R9 2 0
      196 FORNLOOP                         R6
      197 NEWTABLE                         R6 0 0
      199 LOADN                            R9 253
      200 LOADN                            R7 3
      201 LOADN                            R8 1
      202 FORNPREP                         R7
      203 LOADN                            R13 253
      204 LOADN                            R15 0
      205 FASTCALL3                        VECTOR R13 R9 R15
      207 MOVE                             R14 R9
      208 GETIMPORT                        R12 K11 [Vector3.new]
      210 CALL                             R12 3 1
      211 GETTABLEKS                       R12 R12 K12 ["Unit"]
      213 FASTCALL2                        TABLE_INSERT R6 R12 ; [+4]
      215 MOVE                             R11 R6
      216 GETIMPORT                        R10 K15 [table.insert]
      218 CALL                             R10 2 0
      219 FORNLOOP                         R7
      220 LOADN                            R9 253
      221 LOADN                            R7 3
      222 LOADN                            R8 1
      223 FORNPREP                         R7
      224 LOADN                            R14 3
      225 LOADN                            R15 0
      226 FASTCALL3                        VECTOR R9 R14 R15
      228 MOVE                             R13 R9
      229 GETIMPORT                        R12 K11 [Vector3.new]
      231 CALL                             R12 3 1
      232 GETTABLEKS                       R12 R12 K12 ["Unit"]
      234 FASTCALL2                        TABLE_INSERT R6 R12 ; [+4]
      236 MOVE                             R11 R6
      237 GETIMPORT                        R10 K15 [table.insert]
      239 CALL                             R10 2 0
      240 FORNLOOP                         R7
      241 LOADN                            R9 3
      242 LOADN                            R7 253
      243 LOADN                            R8 255
      244 FORNPREP                         R7
      245 LOADN                            R13 3
      246 LOADN                            R15 0
      247 FASTCALL3                        VECTOR R13 R9 R15
      249 MOVE                             R14 R9
      250 GETIMPORT                        R12 K11 [Vector3.new]
      252 CALL                             R12 3 1
      253 GETTABLEKS                       R12 R12 K12 ["Unit"]
      255 FASTCALL2                        TABLE_INSERT R6 R12 ; [+4]
      257 MOVE                             R11 R6
      258 GETIMPORT                        R10 K15 [table.insert]
      260 CALL                             R10 2 0
      261 FORNLOOP                         R7
      262 LOADN                            R9 3
      263 LOADN                            R7 253
      264 LOADN                            R8 255
      265 FORNPREP                         R7
      266 LOADN                            R14 253
      267 LOADN                            R15 0
      268 FASTCALL3                        VECTOR R9 R14 R15
      270 MOVE                             R13 R9
      271 GETIMPORT                        R12 K11 [Vector3.new]
      273 CALL                             R12 3 1
      274 GETTABLEKS                       R12 R12 K12 ["Unit"]
      276 FASTCALL2                        TABLE_INSERT R6 R12 ; [+4]
      278 MOVE                             R11 R6
      279 GETIMPORT                        R10 K15 [table.insert]
      281 CALL                             R10 2 0
      282 FORNLOOP                         R7
      283 DUPCLOSURE                       R7 K16 [PROTO_0]
      284 CAPTURE                          VAL R4
      285 CAPTURE                          VAL R6
      286 CAPTURE                          VAL R5
      287 DUPCLOSURE                       R8 K17 [PROTO_1]
      288 CAPTURE                          VAL R2
      289 CAPTURE                          VAL R3
      290 CAPTURE                          VAL R7
      291 RETURN                           R8 1
