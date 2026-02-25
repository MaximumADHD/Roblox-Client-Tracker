PROTO_0:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R0 R1 K0 ["bold"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["red"]
        7 GETVARARGS                       R2 -1
        8 CALL                             R1 -1 -1
        9 CALL                             R0 -1 -1
       10 RETURN                           R0 -1

PROTO_1:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R0 R1 K0 ["bold"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["yellow"]
        7 GETVARARGS                       R2 -1
        8 CALL                             R1 -1 -1
        9 CALL                             R0 -1 -1
       10 RETURN                           R0 -1

PROTO_2:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R0 R1 K0 ["bold"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["green"]
        7 GETVARARGS                       R2 -1
        8 CALL                             R1 -1 -1
        9 CALL                             R0 -1 -1
       10 RETURN                           R0 -1

PROTO_3:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R0 R1 K0 ["bold"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["green"]
        7 GETVARARGS                       R2 -1
        8 CALL                             R1 -1 -1
        9 CALL                             R0 -1 -1
       10 RETURN                           R0 -1

PROTO_4:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R0 R1 K0 ["bold"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["green"]
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
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R1 R2 K6 ["forEach"]
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
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R4 R5 K4 ["toJSBoolean"]
       13 GETTABLEKS                       R5 R0 K5 ["added"]
       15 CALL                             R4 1 1
       16 JUMPIFNOT                        R4 ; [+27]
       17 GETUPVAL                         R11 2
       18 LOADK                            R13 K6 [" › "]
       19 GETUPVAL                         R16 3
       20 LOADK                            R17 K7 ["snapshot"]
       21 GETTABLEKS                       R18 R0 K5 ["added"]
       23 CALL                             R16 2 1
       24 MOVE                             R14 R16
       25 LOADK                            R15 K8 [" written "]
       26 CONCAT                           R12 R13 R15
       27 CALL                             R11 1 1
       28 MOVE                             R7 R11
       29 LOADK                            R8 K9 ["from "]
       30 GETUPVAL                         R11 3
       31 LOADK                            R12 K10 ["test suite"]
       32 GETTABLEKS                       R13 R0 K11 ["filesAdded"]
       34 CALL                             R11 2 1
       35 MOVE                             R9 R11
       36 LOADK                            R10 K12 ["."]
       37 CONCAT                           R6 R7 R10
       38 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       40 MOVE                             R5 R3
       41 GETIMPORT                        R4 K3 [table.insert]
       43 CALL                             R4 2 0
       44 GETUPVAL                         R5 1
       45 GETTABLEKS                       R4 R5 K4 ["toJSBoolean"]
       47 GETTABLEKS                       R5 R0 K13 ["unmatched"]
       49 CALL                             R4 1 1
       50 JUMPIFNOT                        R4 ; [+33]
       51 GETUPVAL                         R12 4
       52 LOADK                            R14 K6 [" › "]
       53 GETUPVAL                         R17 3
       54 LOADK                            R18 K7 ["snapshot"]
       55 GETTABLEKS                       R19 R0 K13 ["unmatched"]
       57 CALL                             R17 2 1
       58 MOVE                             R15 R17
       59 LOADK                            R16 K14 [" failed"]
       60 CONCAT                           R13 R14 R16
       61 CALL                             R12 1 1
       62 MOVE                             R7 R12
       63 LOADK                            R8 K15 [" from "]
       64 GETUPVAL                         R12 3
       65 LOADK                            R13 K10 ["test suite"]
       66 GETTABLEKS                       R14 R0 K16 ["filesUnmatched"]
       68 CALL                             R12 2 1
       69 MOVE                             R9 R12
       70 LOADK                            R10 K17 [". "]
       71 GETUPVAL                         R11 5
       72 LOADK                            R13 K18 ["Inspect your code changes or "]
       73 MOVE                             R14 R2
       74 LOADK                            R15 K19 [" to update them."]
       75 CONCAT                           R12 R13 R15
       76 CALL                             R11 1 1
       77 CONCAT                           R6 R7 R11
       78 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       80 MOVE                             R5 R3
       81 GETIMPORT                        R4 K3 [table.insert]
       83 CALL                             R4 2 0
       84 GETUPVAL                         R5 1
       85 GETTABLEKS                       R4 R5 K4 ["toJSBoolean"]
       87 GETTABLEKS                       R5 R0 K20 ["updated"]
       89 CALL                             R4 1 1
       90 JUMPIFNOT                        R4 ; [+27]
       91 GETUPVAL                         R11 6
       92 LOADK                            R13 K6 [" › "]
       93 GETUPVAL                         R16 3
       94 LOADK                            R17 K7 ["snapshot"]
       95 GETTABLEKS                       R18 R0 K20 ["updated"]
       97 CALL                             R16 2 1
       98 MOVE                             R14 R16
       99 LOADK                            R15 K21 [" updated "]
      100 CONCAT                           R12 R13 R15
      101 CALL                             R11 1 1
      102 MOVE                             R7 R11
      103 LOADK                            R8 K9 ["from "]
      104 GETUPVAL                         R11 3
      105 LOADK                            R12 K10 ["test suite"]
      106 GETTABLEKS                       R13 R0 K22 ["filesUpdated"]
      108 CALL                             R11 2 1
      109 MOVE                             R9 R11
      110 LOADK                            R10 K12 ["."]
      111 CONCAT                           R6 R7 R10
      112 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
      114 MOVE                             R5 R3
      115 GETIMPORT                        R4 K3 [table.insert]
      117 CALL                             R4 2 0
      118 GETUPVAL                         R5 1
      119 GETTABLEKS                       R4 R5 K4 ["toJSBoolean"]
      121 GETTABLEKS                       R5 R0 K23 ["filesRemoved"]
      123 CALL                             R4 1 1
      124 JUMPIFNOT                        R4 ; [+72]
      125 GETTABLEKS                       R4 R0 K24 ["didUpdate"]
      127 JUMPIFNOT                        R4 ; [+28]
      128 GETUPVAL                         R11 7
      129 LOADK                            R13 K6 [" › "]
      130 GETUPVAL                         R16 3
      131 LOADK                            R17 K25 ["snapshot file"]
      132 GETTABLEKS                       R18 R0 K23 ["filesRemoved"]
      134 CALL                             R16 2 1
      135 MOVE                             R14 R16
      136 LOADK                            R15 K26 [" removed "]
      137 CONCAT                           R12 R13 R15
      138 CALL                             R11 1 1
      139 MOVE                             R7 R11
      140 LOADK                            R8 K9 ["from "]
      141 GETUPVAL                         R11 3
      142 LOADK                            R12 K10 ["test suite"]
      143 GETTABLEKS                       R13 R0 K23 ["filesRemoved"]
      145 CALL                             R11 2 1
      146 MOVE                             R9 R11
      147 LOADK                            R10 K12 ["."]
      148 CONCAT                           R6 R7 R10
      149 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
      151 MOVE                             R5 R3
      152 GETIMPORT                        R4 K3 [table.insert]
      154 CALL                             R4 2 0
      155 JUMP                             ; [+41]
      156 GETUPVAL                         R12 8
      157 LOADK                            R14 K6 [" › "]
      158 GETUPVAL                         R17 3
      159 LOADK                            R18 K25 ["snapshot file"]
      160 GETTABLEKS                       R19 R0 K23 ["filesRemoved"]
      162 CALL                             R17 2 1
      163 MOVE                             R15 R17
      164 LOADK                            R16 K27 [" obsolete "]
      165 CONCAT                           R13 R14 R16
      166 CALL                             R12 1 1
      167 MOVE                             R7 R12
      168 LOADK                            R8 K9 ["from "]
      169 GETUPVAL                         R12 3
      170 LOADK                            R13 K10 ["test suite"]
      171 GETTABLEKS                       R14 R0 K23 ["filesRemoved"]
      173 CALL                             R12 2 1
      174 MOVE                             R9 R12
      175 LOADK                            R10 K17 [". "]
      176 GETUPVAL                         R11 5
      177 LOADK                            R13 K28 ["To remove "]
      178 GETTABLEKS                       R18 R0 K23 ["filesRemoved"]
      180 JUMPIFNOTEQKN                    R18 K29 [1] ; [+3]
      182 LOADK                            R14 K30 ["it"]
      183 JUMP                             ; [+1]
      184 LOADK                            R14 K31 ["them all"]
      185 LOADK                            R15 K32 [", "]
      186 MOVE                             R16 R2
      187 LOADK                            R17 K12 ["."]
      188 CONCAT                           R12 R13 R17
      189 CALL                             R11 1 1
      190 CONCAT                           R6 R7 R11
      191 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
      193 MOVE                             R5 R3
      194 GETIMPORT                        R4 K3 [table.insert]
      196 CALL                             R4 2 0
      197 GETTABLEKS                       R4 R0 K33 ["filesRemovedList"]
      199 JUMPIFNOT                        R4 ; [+44]
      200 GETTABLEKS                       R5 R0 K33 ["filesRemovedList"]
      202 LENGTH                           R4 R5
      203 LOADN                            R5 0
      204 JUMPIFNOTLT                      R5 R4 ; [+39]
      206 GETTABLEKS                       R5 R0 K33 ["filesRemovedList"]
      208 GETTABLEN                        R4 R5 1
      209 GETIMPORT                        R5 K35 [table.pack]
      211 GETTABLEKS                       R7 R0 K33 ["filesRemovedList"]
      213 FASTCALL2K                       TABLE_UNPACK R7 K36 ; [+4]
      215 LOADK                            R8 K36 [2]
      216 GETIMPORT                        R6 K38 [table.unpack]
      218 CALL                             R6 2 -1
      219 CALL                             R5 -1 1
      220 LOADK                            R9 K39 ["  "]
      221 LOADK                            R10 K40 [" ↳ "]
      222 LOADK                            R11 K41 [" "]
      223 LOADK                            R12 K42 [" • "]
      224 GETUPVAL                         R13 9
      225 MOVE                             R14 R1
      226 MOVE                             R15 R4
      227 CALL                             R13 2 1
      228 CONCAT                           R8 R9 R13
      229 FASTCALL2                        TABLE_INSERT R3 R8 ; [+4]
      231 MOVE                             R7 R3
      232 GETIMPORT                        R6 K3 [table.insert]
      234 CALL                             R6 2 0
      235 GETUPVAL                         R7 10
      236 GETTABLEKS                       R6 R7 K43 ["forEach"]
      238 MOVE                             R7 R5
      239 NEWCLOSURE                       R8 P0
      240 CAPTURE                          VAL R3
      241 CAPTURE                          UPVAL U9
      242 CAPTURE                          VAL R1
      243 CALL                             R6 2 0
      244 GETUPVAL                         R5 1
      245 GETTABLEKS                       R4 R5 K4 ["toJSBoolean"]
      247 GETTABLEKS                       R5 R0 K44 ["unchecked"]
      249 CALL                             R4 1 1
      250 JUMPIFNOT                        R4 ; [+74]
      251 GETTABLEKS                       R4 R0 K24 ["didUpdate"]
      253 JUMPIFNOT                        R4 ; [+29]
      254 GETUPVAL                         R11 7
      255 LOADK                            R13 K6 [" › "]
      256 GETUPVAL                         R16 3
      257 LOADK                            R17 K7 ["snapshot"]
      258 GETTABLEKS                       R18 R0 K44 ["unchecked"]
      260 CALL                             R16 2 1
      261 MOVE                             R14 R16
      262 LOADK                            R15 K26 [" removed "]
      263 CONCAT                           R12 R13 R15
      264 CALL                             R11 1 1
      265 MOVE                             R7 R11
      266 LOADK                            R8 K9 ["from "]
      267 GETUPVAL                         R11 3
      268 LOADK                            R12 K10 ["test suite"]
      269 GETTABLEKS                       R14 R0 K45 ["uncheckedKeysByFile"]
      271 LENGTH                           R13 R14
      272 CALL                             R11 2 1
      273 MOVE                             R9 R11
      274 LOADK                            R10 K12 ["."]
      275 CONCAT                           R6 R7 R10
      276 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
      278 MOVE                             R5 R3
      279 GETIMPORT                        R4 K3 [table.insert]
      281 CALL                             R4 2 0
      282 JUMP                             ; [+42]
      283 GETUPVAL                         R12 8
      284 LOADK                            R14 K6 [" › "]
      285 GETUPVAL                         R17 3
      286 LOADK                            R18 K7 ["snapshot"]
      287 GETTABLEKS                       R19 R0 K44 ["unchecked"]
      289 CALL                             R17 2 1
      290 MOVE                             R15 R17
      291 LOADK                            R16 K27 [" obsolete "]
      292 CONCAT                           R13 R14 R16
      293 CALL                             R12 1 1
      294 MOVE                             R7 R12
      295 LOADK                            R8 K9 ["from "]
      296 GETUPVAL                         R12 3
      297 LOADK                            R13 K10 ["test suite"]
      298 GETTABLEKS                       R15 R0 K45 ["uncheckedKeysByFile"]
      300 LENGTH                           R14 R15
      301 CALL                             R12 2 1
      302 MOVE                             R9 R12
      303 LOADK                            R10 K17 [". "]
      304 GETUPVAL                         R11 5
      305 LOADK                            R13 K28 ["To remove "]
      306 GETTABLEKS                       R18 R0 K44 ["unchecked"]
      308 JUMPIFNOTEQKN                    R18 K29 [1] ; [+3]
      310 LOADK                            R14 K30 ["it"]
      311 JUMP                             ; [+1]
      312 LOADK                            R14 K31 ["them all"]
      313 LOADK                            R15 K32 [", "]
      314 MOVE                             R16 R2
      315 LOADK                            R17 K12 ["."]
      316 CONCAT                           R12 R13 R17
      317 CALL                             R11 1 1
      318 CONCAT                           R6 R7 R11
      319 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
      321 MOVE                             R5 R3
      322 GETIMPORT                        R4 K3 [table.insert]
      324 CALL                             R4 2 0
      325 GETUPVAL                         R5 10
      326 GETTABLEKS                       R4 R5 K43 ["forEach"]
      328 GETTABLEKS                       R5 R0 K45 ["uncheckedKeysByFile"]
      330 NEWCLOSURE                       R6 P1
      331 CAPTURE                          VAL R3
      332 CAPTURE                          UPVAL U9
      333 CAPTURE                          VAL R1
      334 CAPTURE                          UPVAL U10
      335 CALL                             R4 2 0
      336 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
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
       33 GETIMPORT                        R10 K4 [require]
       35 GETTABLEKS                       R11 R1 K11 ["JestUtil"]
       37 CALL                             R10 1 1
       38 GETTABLEKS                       R9 R10 K12 ["pluralize"]
       40 GETIMPORT                        R11 K4 [require]
       42 GETTABLEKS                       R12 R0 K13 ["utils"]
       44 CALL                             R11 1 1
       45 GETTABLEKS                       R10 R11 K14 ["formatTestPath"]
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
