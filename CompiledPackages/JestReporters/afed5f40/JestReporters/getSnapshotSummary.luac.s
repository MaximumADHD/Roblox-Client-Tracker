PROTO_0:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["bold"]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["red"]
        7 GETVARARGS                       R2 -1
        8 CALL                             R1 -1 -1
        9 CALL                             R0 -1 -1
       10 RETURN                           R0 -1

PROTO_1:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["bold"]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["yellow"]
        7 GETVARARGS                       R2 -1
        8 CALL                             R1 -1 -1
        9 CALL                             R0 -1 -1
       10 RETURN                           R0 -1

PROTO_2:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["bold"]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["green"]
        7 GETVARARGS                       R2 -1
        8 CALL                             R1 -1 -1
        9 CALL                             R0 -1 -1
       10 RETURN                           R0 -1

PROTO_3:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["bold"]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["green"]
        7 GETVARARGS                       R2 -1
        8 CALL                             R1 -1 -1
        9 CALL                             R0 -1 -1
       10 RETURN                           R0 -1

PROTO_4:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["bold"]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["green"]
        7 GETVARARGS                       R2 -1
        8 CALL                             R1 -1 -1
        9 CALL                             R0 -1 -1
       10 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["    "]
        2 LOADK                            R5 K1 [" • "]
        3 GETUPVAL                         R6 1
        4 GETUPVAL                         R7 2
        5 MOVE                             R8 R0
        6 CALL                             R6 2 1
        7 CONCAT                           R3 R4 R6
        8 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       10 GETIMPORT                        R1 K4 [table.insert]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["    "]
        2 LOADK                            R5 K1 [" • "]
        3 MOVE                             R6 R0
        4 CONCAT                           R3 R4 R6
        5 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
        7 GETIMPORT                        R1 K4 [table.insert]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["  "]
        2 LOADK                            R5 K1 [" ↳ "]
        3 GETUPVAL                         R6 1
        4 GETUPVAL                         R7 2
        5 GETTABLEKS                       R8 R0 K2 ["filePath"]
        7 CALL                             R6 2 1
        8 CONCAT                           R3 R4 R6
        9 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       11 GETIMPORT                        R1 K5 [table.insert]
       13 CALL                             R1 2 0
       14 GETUPVAL                         R1 3
       15 GETTABLEKS                       R1 R1 K6 ["forEach"]
       17 GETTABLEKS                       R2 R0 K7 ["keys"]
       19 NEWCLOSURE                       R3 P0
       20 CAPTURE                          UPVAL U0
       21 CALL                             R1 2 0
       22 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R5 R3
        3 GETUPVAL                         R6 0
        4 LOADK                            R7 K0 ["Snapshot Summary"]
        5 CALL                             R6 1 -1
        6 FASTCALL                         TABLE_INSERT ; [+2]
        7 GETIMPORT                        R4 K3 [table.insert]
        9 CALL                             R4 -1 0
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K4 ["toJSBoolean"]
       13 GETTABLEKS                       R5 R0 K5 ["added"]
       15 CALL                             R4 1 1
       16 JUMPIFNOT                        R4 ; [+24]
       17 GETUPVAL                         R7 2
       18 LOADK                            R9 K6 [" › "]
       19 GETUPVAL                         R10 3
       20 LOADK                            R11 K7 ["snapshot"]
       21 GETTABLEKS                       R12 R0 K5 ["added"]
       23 CALL                             R10 2 1
       24 LOADK                            R11 K8 [" written "]
       25 CONCAT                           R8 R9 R11
       26 CALL                             R7 1 1
       27 LOADK                            R8 K9 ["from "]
       28 GETUPVAL                         R9 3
       29 LOADK                            R10 K10 ["test suite"]
       30 GETTABLEKS                       R11 R0 K11 ["filesAdded"]
       32 CALL                             R9 2 1
       33 LOADK                            R10 K12 ["."]
       34 CONCAT                           R6 R7 R10
       35 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       37 MOVE                             R5 R3
       38 GETIMPORT                        R4 K3 [table.insert]
       40 CALL                             R4 2 0
       41 GETUPVAL                         R4 1
       42 GETTABLEKS                       R4 R4 K4 ["toJSBoolean"]
       44 GETTABLEKS                       R5 R0 K13 ["unmatched"]
       46 CALL                             R4 1 1
       47 JUMPIFNOT                        R4 ; [+30]
       48 GETUPVAL                         R7 4
       49 LOADK                            R9 K6 [" › "]
       50 GETUPVAL                         R10 3
       51 LOADK                            R11 K7 ["snapshot"]
       52 GETTABLEKS                       R12 R0 K13 ["unmatched"]
       54 CALL                             R10 2 1
       55 LOADK                            R11 K14 [" failed"]
       56 CONCAT                           R8 R9 R11
       57 CALL                             R7 1 1
       58 LOADK                            R8 K15 [" from "]
       59 GETUPVAL                         R9 3
       60 LOADK                            R10 K10 ["test suite"]
       61 GETTABLEKS                       R11 R0 K16 ["filesUnmatched"]
       63 CALL                             R9 2 1
       64 LOADK                            R10 K17 [". "]
       65 GETUPVAL                         R11 5
       66 LOADK                            R13 K18 ["Inspect your code changes or "]
       67 MOVE                             R14 R2
       68 LOADK                            R15 K19 [" to update them."]
       69 CONCAT                           R12 R13 R15
       70 CALL                             R11 1 1
       71 CONCAT                           R6 R7 R11
       72 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       74 MOVE                             R5 R3
       75 GETIMPORT                        R4 K3 [table.insert]
       77 CALL                             R4 2 0
       78 GETUPVAL                         R4 1
       79 GETTABLEKS                       R4 R4 K4 ["toJSBoolean"]
       81 GETTABLEKS                       R5 R0 K20 ["updated"]
       83 CALL                             R4 1 1
       84 JUMPIFNOT                        R4 ; [+24]
       85 GETUPVAL                         R7 6
       86 LOADK                            R9 K6 [" › "]
       87 GETUPVAL                         R10 3
       88 LOADK                            R11 K7 ["snapshot"]
       89 GETTABLEKS                       R12 R0 K20 ["updated"]
       91 CALL                             R10 2 1
       92 LOADK                            R11 K21 [" updated "]
       93 CONCAT                           R8 R9 R11
       94 CALL                             R7 1 1
       95 LOADK                            R8 K9 ["from "]
       96 GETUPVAL                         R9 3
       97 LOADK                            R10 K10 ["test suite"]
       98 GETTABLEKS                       R11 R0 K22 ["filesUpdated"]
      100 CALL                             R9 2 1
      101 LOADK                            R10 K12 ["."]
      102 CONCAT                           R6 R7 R10
      103 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
      105 MOVE                             R5 R3
      106 GETIMPORT                        R4 K3 [table.insert]
      108 CALL                             R4 2 0
      109 GETUPVAL                         R4 1
      110 GETTABLEKS                       R4 R4 K4 ["toJSBoolean"]
      112 GETTABLEKS                       R5 R0 K23 ["filesRemoved"]
      114 CALL                             R4 1 1
      115 JUMPIFNOT                        R4 ; [+66]
      116 GETTABLEKS                       R4 R0 K24 ["didUpdate"]
      118 JUMPIFNOT                        R4 ; [+25]
      119 GETUPVAL                         R7 7
      120 LOADK                            R9 K6 [" › "]
      121 GETUPVAL                         R10 3
      122 LOADK                            R11 K25 ["snapshot file"]
      123 GETTABLEKS                       R12 R0 K23 ["filesRemoved"]
      125 CALL                             R10 2 1
      126 LOADK                            R11 K26 [" removed "]
      127 CONCAT                           R8 R9 R11
      128 CALL                             R7 1 1
      129 LOADK                            R8 K9 ["from "]
      130 GETUPVAL                         R9 3
      131 LOADK                            R10 K10 ["test suite"]
      132 GETTABLEKS                       R11 R0 K23 ["filesRemoved"]
      134 CALL                             R9 2 1
      135 LOADK                            R10 K12 ["."]
      136 CONCAT                           R6 R7 R10
      137 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
      139 MOVE                             R5 R3
      140 GETIMPORT                        R4 K3 [table.insert]
      142 CALL                             R4 2 0
      143 JUMP                             ; [+38]
      144 GETUPVAL                         R7 8
      145 LOADK                            R9 K6 [" › "]
      146 GETUPVAL                         R10 3
      147 LOADK                            R11 K25 ["snapshot file"]
      148 GETTABLEKS                       R12 R0 K23 ["filesRemoved"]
      150 CALL                             R10 2 1
      151 LOADK                            R11 K27 [" obsolete "]
      152 CONCAT                           R8 R9 R11
      153 CALL                             R7 1 1
      154 LOADK                            R8 K9 ["from "]
      155 GETUPVAL                         R9 3
      156 LOADK                            R10 K10 ["test suite"]
      157 GETTABLEKS                       R11 R0 K23 ["filesRemoved"]
      159 CALL                             R9 2 1
      160 LOADK                            R10 K17 [". "]
      161 GETUPVAL                         R11 5
      162 LOADK                            R13 K28 ["To remove "]
      163 GETTABLEKS                       R15 R0 K23 ["filesRemoved"]
      165 JUMPIFNOTEQKN                    R15 K29 [1] ; [+3]
      167 LOADK                            R14 K30 ["it"]
      168 JUMP                             ; [+1]
      169 LOADK                            R14 K31 ["them all"]
      170 LOADK                            R15 K32 [", "]
      171 MOVE                             R16 R2
      172 LOADK                            R17 K12 ["."]
      173 CONCAT                           R12 R13 R17
      174 CALL                             R11 1 1
      175 CONCAT                           R6 R7 R11
      176 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
      178 MOVE                             R5 R3
      179 GETIMPORT                        R4 K3 [table.insert]
      181 CALL                             R4 2 0
      182 GETTABLEKS                       R4 R0 K33 ["filesRemovedList"]
      184 JUMPIFNOT                        R4 ; [+44]
      185 GETTABLEKS                       R5 R0 K33 ["filesRemovedList"]
      187 LENGTH                           R4 R5
      188 LOADN                            R5 0
      189 JUMPIFNOTLT                      R5 R4 ; [+39]
      191 GETTABLEKS                       R5 R0 K33 ["filesRemovedList"]
      193 GETTABLEN                        R4 R5 1
      194 GETIMPORT                        R5 K35 [table.pack]
      196 GETTABLEKS                       R7 R0 K33 ["filesRemovedList"]
      198 FASTCALL2K                       TABLE_UNPACK R7 K36 ; [+4]
      200 LOADK                            R8 K36 [2]
      201 GETIMPORT                        R6 K38 [table.unpack]
      203 CALL                             R6 2 -1
      204 CALL                             R5 -1 1
      205 LOADK                            R9 K39 ["  "]
      206 LOADK                            R10 K40 [" ↳ "]
      207 LOADK                            R11 K41 [" "]
      208 LOADK                            R12 K42 [" • "]
      209 GETUPVAL                         R13 9
      210 MOVE                             R14 R1
      211 MOVE                             R15 R4
      212 CALL                             R13 2 1
      213 CONCAT                           R8 R9 R13
      214 FASTCALL2                        TABLE_INSERT R3 R8 ; [+4]
      216 MOVE                             R7 R3
      217 GETIMPORT                        R6 K3 [table.insert]
      219 CALL                             R6 2 0
      220 GETUPVAL                         R6 10
      221 GETTABLEKS                       R6 R6 K43 ["forEach"]
      223 MOVE                             R7 R5
      224 NEWCLOSURE                       R8 P0
      225 CAPTURE                          VAL R3
      226 CAPTURE                          UPVAL U9
      227 CAPTURE                          VAL R1
      228 CALL                             R6 2 0
      229 GETUPVAL                         R4 1
      230 GETTABLEKS                       R4 R4 K4 ["toJSBoolean"]
      232 GETTABLEKS                       R5 R0 K44 ["unchecked"]
      234 CALL                             R4 1 1
      235 JUMPIFNOT                        R4 ; [+68]
      236 GETTABLEKS                       R4 R0 K24 ["didUpdate"]
      238 JUMPIFNOT                        R4 ; [+26]
      239 GETUPVAL                         R7 7
      240 LOADK                            R9 K6 [" › "]
      241 GETUPVAL                         R10 3
      242 LOADK                            R11 K7 ["snapshot"]
      243 GETTABLEKS                       R12 R0 K44 ["unchecked"]
      245 CALL                             R10 2 1
      246 LOADK                            R11 K26 [" removed "]
      247 CONCAT                           R8 R9 R11
      248 CALL                             R7 1 1
      249 LOADK                            R8 K9 ["from "]
      250 GETUPVAL                         R9 3
      251 LOADK                            R10 K10 ["test suite"]
      252 GETTABLEKS                       R12 R0 K45 ["uncheckedKeysByFile"]
      254 LENGTH                           R11 R12
      255 CALL                             R9 2 1
      256 LOADK                            R10 K12 ["."]
      257 CONCAT                           R6 R7 R10
      258 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
      260 MOVE                             R5 R3
      261 GETIMPORT                        R4 K3 [table.insert]
      263 CALL                             R4 2 0
      264 JUMP                             ; [+39]
      265 GETUPVAL                         R7 8
      266 LOADK                            R9 K6 [" › "]
      267 GETUPVAL                         R10 3
      268 LOADK                            R11 K7 ["snapshot"]
      269 GETTABLEKS                       R12 R0 K44 ["unchecked"]
      271 CALL                             R10 2 1
      272 LOADK                            R11 K27 [" obsolete "]
      273 CONCAT                           R8 R9 R11
      274 CALL                             R7 1 1
      275 LOADK                            R8 K9 ["from "]
      276 GETUPVAL                         R9 3
      277 LOADK                            R10 K10 ["test suite"]
      278 GETTABLEKS                       R12 R0 K45 ["uncheckedKeysByFile"]
      280 LENGTH                           R11 R12
      281 CALL                             R9 2 1
      282 LOADK                            R10 K17 [". "]
      283 GETUPVAL                         R11 5
      284 LOADK                            R13 K28 ["To remove "]
      285 GETTABLEKS                       R15 R0 K44 ["unchecked"]
      287 JUMPIFNOTEQKN                    R15 K29 [1] ; [+3]
      289 LOADK                            R14 K30 ["it"]
      290 JUMP                             ; [+1]
      291 LOADK                            R14 K31 ["them all"]
      292 LOADK                            R15 K32 [", "]
      293 MOVE                             R16 R2
      294 LOADK                            R17 K12 ["."]
      295 CONCAT                           R12 R13 R17
      296 CALL                             R11 1 1
      297 CONCAT                           R6 R7 R11
      298 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
      300 MOVE                             R5 R3
      301 GETIMPORT                        R4 K3 [table.insert]
      303 CALL                             R4 2 0
      304 GETUPVAL                         R4 10
      305 GETTABLEKS                       R4 R4 K43 ["forEach"]
      307 GETTABLEKS                       R5 R0 K45 ["uncheckedKeysByFile"]
      309 NEWCLOSURE                       R6 P1
      310 CAPTURE                          VAL R3
      311 CAPTURE                          UPVAL U9
      312 CAPTURE                          VAL R1
      313 CAPTURE                          UPVAL U10
      314 CALL                             R4 2 0
      315 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 NEWTABLE                         R2 1 0
        9 GETIMPORT                        R3 K4 [require]
       11 GETTABLEKS                       R4 R1 K5 ["LuauPolyfill"]
       13 CALL                             R3 1 1
       14 GETTABLEKS                       R4 R3 K6 ["Array"]
       16 GETTABLEKS                       R5 R3 K7 ["Boolean"]
       18 GETIMPORT                        R6 K4 [require]
       20 GETTABLEKS                       R7 R1 K8 ["ChalkLua"]
       22 CALL                             R6 1 1
       23 GETIMPORT                        R7 K4 [require]
       25 GETTABLEKS                       R8 R1 K9 ["JestTestResult"]
       27 CALL                             R7 1 1
       28 GETIMPORT                        R8 K4 [require]
       30 GETTABLEKS                       R9 R1 K10 ["JestTypes"]
       32 CALL                             R8 1 1
       33 GETIMPORT                        R9 K4 [require]
       35 GETTABLEKS                       R10 R1 K11 ["JestUtil"]
       37 CALL                             R9 1 1
       38 GETTABLEKS                       R9 R9 K12 ["pluralize"]
       40 GETIMPORT                        R10 K4 [require]
       42 GETTABLEKS                       R11 R0 K13 ["utils"]
       44 CALL                             R10 1 1
       45 GETTABLEKS                       R10 R10 K14 ["formatTestPath"]
       47 DUPCLOSURE                       R11 K15 [PROTO_0]
       48 CAPTURE                          VAL R6
       49 DUPCLOSURE                       R12 K16 [PROTO_1]
       50 CAPTURE                          VAL R6
       51 DUPCLOSURE                       R13 K17 [PROTO_2]
       52 CAPTURE                          VAL R6
       53 GETTABLEKS                       R14 R6 K18 ["dim"]
       55 DUPCLOSURE                       R15 K19 [PROTO_3]
       56 CAPTURE                          VAL R6
       57 GETTABLEKS                       R16 R6 K20 ["bold"]
       59 DUPCLOSURE                       R17 K21 [PROTO_4]
       60 CAPTURE                          VAL R6
       61 DUPCLOSURE                       R18 K22 [PROTO_8]
       62 CAPTURE                          VAL R16
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R13
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R11
       67 CAPTURE                          VAL R14
       68 CAPTURE                          VAL R17
       69 CAPTURE                          VAL R15
       70 CAPTURE                          VAL R12
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R4
       73 SETTABLEKS                       R18 R2 K23 ["default"]
       75 RETURN                           R2 1
