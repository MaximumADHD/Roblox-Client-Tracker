PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CONCAT                           R1 R2 R3
        3 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["number"] ; [+13]
        7 FASTCALL1                        TYPEOF R1 ; [+3]
        8 MOVE                             R3 R1
        9 GETIMPORT                        R2 K1 [typeof]
       11 CALL                             R2 1 1
       12 JUMPIFNOTEQKS                    R2 K2 ["number"] ; [+6]
       14 JUMPIFLT                         R0 R1 ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 RETURN                           R2 1
       19 FASTCALL1                        TOSTRING R0 ; [+3]
       20 MOVE                             R4 R0
       21 GETIMPORT                        R3 K4 [tostring]
       23 CALL                             R3 1 1
       24 FASTCALL1                        TOSTRING R1 ; [+3]
       25 MOVE                             R5 R1
       26 GETIMPORT                        R4 K4 [tostring]
       28 CALL                             R4 1 1
       29 JUMPIFLT                         R3 R4 ; [+2]
       31 LOADB                            R2 0 +1
       32 LOADB                            R2 1
       33 RETURN                           R2 1

PROTO_3:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R1 R2
        5 FASTCALL1                        TYPE R0 ; [+3]
        6 MOVE                             R3 R0
        7 GETIMPORT                        R2 K1 [type]
        9 CALL                             R2 1 1
       10 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+336]
       12 GETUPVAL                         R2 0
       13 DUPTABLE                         R3 K6 [{"visited", "indent", "depth"}]
       14 NEWTABLE                         R4 0 0
       16 SETTABLEKS                       R4 R3 K3 ["visited"]
       18 LOADK                            R4 K7 ["\t"]
       19 SETTABLEKS                       R4 R3 K4 ["indent"]
       21 LOADN                            R4 2
       22 SETTABLEKS                       R4 R3 K5 ["depth"]
       24 MOVE                             R4 R1
       25 DUPTABLE                         R5 K9 [{"depth", "cycles"}]
       26 GETTABLEKS                       R7 R1 K5 ["depth"]
       28 JUMPIFNOT                        R7 ; [+4]
       29 GETTABLEKS                       R7 R1 K5 ["depth"]
       31 SUBK                             R6 R7 K10 [1]
       32 JUMPIF                           R6 ; [+1]
       33 LOADNIL                          R6
       34 SETTABLEKS                       R6 R5 K5 ["depth"]
       36 GETTABLEKS                       R6 R1 K8 ["cycles"]
       38 JUMPIF                           R6 ; [+28]
       39 GETUPVAL                         R6 1
       40 MOVE                             R7 R0
       41 GETTABLEKS                       R8 R1 K5 ["depth"]
       43 DUPTABLE                         R9 K14 [{"visited", "refs", "nextRef", "depth", "omit"}]
       44 NEWTABLE                         R10 0 0
       46 SETTABLEKS                       R10 R9 K3 ["visited"]
       48 NEWTABLE                         R10 0 0
       50 SETTABLEKS                       R10 R9 K11 ["refs"]
       52 LOADN                            R10 0
       53 SETTABLEKS                       R10 R9 K12 ["nextRef"]
       55 GETTABLEKS                       R10 R1 K5 ["depth"]
       57 SETTABLEKS                       R10 R9 K5 ["depth"]
       59 GETTABLEKS                       R10 R1 K13 ["omit"]
       61 JUMPIF                           R10 ; [+2]
       62 NEWTABLE                         R10 0 0
       64 SETTABLEKS                       R10 R9 K13 ["omit"]
       66 CALL                             R6 3 1
       67 SETTABLEKS                       R6 R5 K8 ["cycles"]
       69 CALL                             R2 3 1
       70 GETTABLEKS                       R3 R2 K5 ["depth"]
       72 JUMPIFNOTEQKN                    R3 K15 [-1] ; [+7]
       74 NEWTABLE                         R3 0 1
       76 LOADK                            R4 K16 ["..."]
       77 SETLIST                          R3 R4 1 [1]
       79 RETURN                           R3 1
       80 GETTABLEKS                       R4 R2 K3 ["visited"]
       82 GETTABLE                         R3 R4 R0
       83 JUMPIFNOT                        R3 ; [+12]
       84 NEWTABLE                         R3 0 1
       86 LOADK                            R5 K17 ["&"]
       87 GETTABLEKS                       R8 R2 K8 ["cycles"]
       89 GETTABLEKS                       R7 R8 K11 ["refs"]
       91 GETTABLE                         R6 R7 R0
       92 CONCAT                           R4 R5 R6
       93 SETLIST                          R3 R4 1 [1]
       95 RETURN                           R3 1
       96 GETTABLEKS                       R3 R2 K3 ["visited"]
       98 LOADB                            R4 1
       99 SETTABLE                         R4 R3 R0
      100 GETTABLEKS                       R3 R2 K18 ["multiline"]
      102 JUMPIFNOT                        R3 ; [+2]
      103 LOADK                            R4 K19 [","]
      104 JUMP                             ; [+1]
      105 LOADK                            R4 K20 [", "]
      106 GETTABLEKS                       R7 R2 K8 ["cycles"]
      108 GETTABLEKS                       R6 R7 K11 ["refs"]
      110 GETTABLE                         R5 R6 R0
      111 JUMPIFNOT                        R5 ; [+6]
      112 LOADK                            R6 K21 ["<%s>"]
      113 MOVE                             R8 R5
      114 NAMECALL                         R6 R6 K22 ["format"]
      116 CALL                             R6 2 1
      117 JUMPIF                           R6 ; [+1]
      118 LOADK                            R6 K23 [""]
      119 NEWTABLE                         R7 0 1
      121 MOVE                             R9 R6
      122 LOADK                            R10 K24 ["{"]
      123 CONCAT                           R8 R9 R10
      124 SETLIST                          R7 R8 1 [1]
      126 GETUPVAL                         R8 2
      127 MOVE                             R9 R2
      128 DUPTABLE                         R10 K26 [{"noQuotes", "multiline"}]
      129 LOADB                            R11 1
      130 SETTABLEKS                       R11 R10 K25 ["noQuotes"]
      132 LOADB                            R11 0
      133 SETTABLEKS                       R11 R10 K18 ["multiline"]
      135 CALL                             R8 2 1
      136 LOADN                            R9 0
      137 LOADB                            R10 1
      138 GETIMPORT                        R11 K28 [ipairs]
      140 MOVE                             R12 R0
      141 CALL                             R11 1 3
      142 FORGPREP_INEXT                   R11
      143 GETTABLEKS                       R16 R2 K13 ["omit"]
      145 JUMPIFNOT                        R16 ; [+6]
      146 GETUPVAL                         R16 3
      147 GETTABLEKS                       R17 R2 K13 ["omit"]
      149 MOVE                             R18 R14
      150 CALL                             R16 2 1
      151 JUMPIF                           R16 ; [+39]
      152 JUMPIFNOT                        R10 ; [+2]
      153 LOADB                            R10 0
      154 JUMP                             ; [+6]
      155 LENGTH                           R16 R7
      156 LENGTH                           R20 R7
      157 GETTABLE                         R18 R7 R20
      158 MOVE                             R19 R4
      159 CONCAT                           R17 R18 R19
      160 SETTABLE                         R17 R7 R16
      161 GETTABLEKS                       R16 R2 K18 ["multiline"]
      163 JUMPIFNOT                        R16 ; [+17]
      164 GETUPVAL                         R17 4
      165 MOVE                             R18 R15
      166 MOVE                             R19 R2
      167 CALL                             R17 2 1
      168 GETTABLEKS                       R18 R2 K4 ["indent"]
      170 GETUPVAL                         R19 5
      171 MOVE                             R20 R17
      172 NEWCLOSURE                       R21 P0
      173 CAPTURE                          VAL R18
      174 CALL                             R19 2 1
      175 MOVE                             R16 R19
      176 GETUPVAL                         R17 6
      177 MOVE                             R18 R7
      178 MOVE                             R19 R16
      179 CALL                             R17 2 0
      180 JUMP                             ; [+9]
      181 LENGTH                           R16 R7
      182 LENGTH                           R20 R7
      183 GETTABLE                         R18 R7 R20
      184 GETUPVAL                         R19 7
      185 MOVE                             R20 R15
      186 MOVE                             R21 R2
      187 CALL                             R19 2 1
      188 CONCAT                           R17 R18 R19
      189 SETTABLE                         R17 R7 R16
      190 MOVE                             R9 R14
      191 FORGLOOP                         R11 2 [inext] ; [-49]
      193 LENGTH                           R11 R0
      194 LOADN                            R12 0
      195 JUMPIFNOTLT                      R12 R11 ; [+11]
      197 GETTABLEKS                       R11 R2 K29 ["arrayLength"]
      199 JUMPIFNOT                        R11 ; [+7]
      200 LOADK                            R11 K30 ["#%d %s"]
      201 LENGTH                           R13 R0
      202 GETTABLEN                        R14 R7 1
      203 NAMECALL                         R11 R11 K22 ["format"]
      205 CALL                             R11 3 1
      206 SETTABLEN                        R11 R7 1
      207 GETUPVAL                         R11 8
      208 MOVE                             R12 R0
      209 CALL                             R11 1 1
      210 GETUPVAL                         R12 9
      211 MOVE                             R13 R11
      212 DUPCLOSURE                       R14 K31 [PROTO_2]
      213 CALL                             R12 2 0
      214 GETIMPORT                        R12 K28 [ipairs]
      216 MOVE                             R13 R11
      217 CALL                             R12 1 3
      218 FORGPREP_INEXT                   R12
      219 GETTABLE                         R17 R0 R16
      220 FASTCALL1                        TYPEOF R16 ; [+3]
      221 MOVE                             R19 R16
      222 GETIMPORT                        R18 K33 [typeof]
      224 CALL                             R18 1 1
      225 JUMPIFNOTEQKS                    R18 K34 ["number"] ; [+9]
      227 MODK                             R18 R16 K10 [1]
      228 JUMPIFNOTEQKN                    R18 K35 [0] ; [+6]
      230 LOADN                            R18 1
      231 JUMPIFNOTLE                      R18 R16 ; [+3]
      233 JUMPIFLE                         R16 R9 ; [+84]
      235 GETTABLEKS                       R18 R2 K13 ["omit"]
      237 JUMPIFNOT                        R18 ; [+6]
      238 GETUPVAL                         R18 3
      239 GETTABLEKS                       R19 R2 K13 ["omit"]
      241 MOVE                             R20 R16
      242 CALL                             R18 2 1
      243 JUMPIF                           R18 ; [+74]
      244 JUMPIFNOT                        R10 ; [+2]
      245 LOADB                            R10 0
      246 JUMP                             ; [+6]
      247 LENGTH                           R18 R7
      248 LENGTH                           R22 R7
      249 GETTABLE                         R20 R7 R22
      250 MOVE                             R21 R4
      251 CONCAT                           R19 R20 R21
      252 SETTABLE                         R19 R7 R18
      253 GETTABLEKS                       R18 R2 K18 ["multiline"]
      255 JUMPIFNOT                        R18 ; [+46]
      256 GETUPVAL                         R18 4
      257 MOVE                             R19 R16
      258 MOVE                             R20 R8
      259 CALL                             R18 2 1
      260 GETTABLEKS                       R20 R2 K4 ["indent"]
      262 GETUPVAL                         R21 5
      263 MOVE                             R22 R18
      264 NEWCLOSURE                       R23 P0
      265 CAPTURE                          VAL R20
      266 CALL                             R21 2 1
      267 MOVE                             R19 R21
      268 GETUPVAL                         R20 4
      269 MOVE                             R21 R17
      270 MOVE                             R22 R2
      271 CALL                             R20 2 1
      272 GETUPVAL                         R21 10
      273 MOVE                             R22 R20
      274 LOADN                            R23 2
      275 CALL                             R21 2 1
      276 GETTABLEKS                       R23 R2 K4 ["indent"]
      278 GETUPVAL                         R24 5
      279 MOVE                             R25 R21
      280 NEWCLOSURE                       R26 P0
      281 CAPTURE                          VAL R23
      282 CALL                             R24 2 1
      283 MOVE                             R22 R24
      284 LENGTH                           R23 R19
      285 LOADK                            R24 K36 ["%s = %s"]
      286 LENGTH                           R27 R19
      287 GETTABLE                         R26 R19 R27
      288 GETTABLEN                        R27 R20 1
      289 NAMECALL                         R24 R24 K22 ["format"]
      291 CALL                             R24 3 1
      292 SETTABLE                         R24 R19 R23
      293 GETUPVAL                         R23 6
      294 MOVE                             R24 R7
      295 MOVE                             R25 R19
      296 CALL                             R23 2 0
      297 GETUPVAL                         R23 6
      298 MOVE                             R24 R7
      299 MOVE                             R25 R22
      300 CALL                             R23 2 0
      301 JUMP                             ; [+16]
      302 LENGTH                           R18 R7
      303 LOADK                            R19 K37 ["%s%s = %s"]
      304 LENGTH                           R22 R7
      305 GETTABLE                         R21 R7 R22
      306 GETUPVAL                         R22 7
      307 MOVE                             R23 R16
      308 MOVE                             R24 R8
      309 CALL                             R22 2 1
      310 GETUPVAL                         R23 7
      311 MOVE                             R24 R17
      312 MOVE                             R25 R2
      313 CALL                             R23 2 -1
      314 NAMECALL                         R19 R19 K22 ["format"]
      316 CALL                             R19 -1 1
      317 SETTABLE                         R19 R7 R18
      318 FORGLOOP                         R12 2 [inext] ; [-100]
      320 GETTABLEKS                       R12 R2 K18 ["multiline"]
      322 JUMPIFNOT                        R12 ; [+15]
      323 JUMPIFNOT                        R10 ; [+7]
      324 LENGTH                           R12 R7
      325 LENGTH                           R16 R7
      326 GETTABLE                         R14 R7 R16
      327 LOADK                            R15 K38 ["}"]
      328 CONCAT                           R13 R14 R15
      329 SETTABLE                         R13 R7 R12
      330 RETURN                           R7 1
      331 FASTCALL2K                       TABLE_INSERT R7 K38 ; [+4]
      333 MOVE                             R13 R7
      334 LOADK                            R14 K38 ["}"]
      335 GETUPVAL                         R12 11
      336 CALL                             R12 2 0
      337 RETURN                           R7 1
      338 LENGTH                           R12 R7
      339 LOADK                            R13 K39 ["%s}"]
      340 LENGTH                           R16 R7
      341 GETTABLE                         R15 R7 R16
      342 NAMECALL                         R13 R13 K22 ["format"]
      344 CALL                             R13 2 1
      345 SETTABLE                         R13 R7 R12
      346 RETURN                           R7 1
      347 FASTCALL1                        TYPE R0 ; [+3]
      348 MOVE                             R3 R0
      349 GETIMPORT                        R2 K1 [type]
      351 CALL                             R2 1 1
      352 JUMPIFNOTEQKS                    R2 K40 ["string"] ; [+14]
      354 GETTABLEKS                       R2 R1 K25 ["noQuotes"]
      356 JUMPIF                           R2 ; [+10]
      357 NEWTABLE                         R2 0 1
      359 LOADK                            R3 K41 ["\"%s\""]
      360 MOVE                             R5 R0
      361 NAMECALL                         R3 R3 K22 ["format"]
      363 CALL                             R3 2 -1
      364 SETLIST                          R2 R3 -1 [1]
      366 RETURN                           R2 1
      367 NEWTABLE                         R2 0 1
      369 FASTCALL1                        TOSTRING R0 ; [+3]
      370 MOVE                             R4 R0
      371 GETIMPORT                        R3 K43 [tostring]
      373 CALL                             R3 1 1
      374 SETLIST                          R2 R3 1 [1]
      376 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 1
        5 LOADK                            R4 K0 ["\n"]
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Types"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R3 R0 K6 ["append"]
       14 CALL                             R2 1 1
       15 GETIMPORT                        R3 K4 [require]
       17 GETTABLEKS                       R4 R0 K7 ["assign"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K4 [require]
       22 GETTABLEKS                       R5 R0 K8 ["cycles"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K4 [require]
       27 GETTABLEKS                       R6 R0 K9 ["includes"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K4 [require]
       32 GETTABLEKS                       R7 R0 K10 ["join"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K4 [require]
       37 GETTABLEKS                       R8 R0 K11 ["map"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K4 [require]
       42 GETTABLEKS                       R9 R0 K12 ["keys"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K4 [require]
       47 GETTABLEKS                       R10 R0 K13 ["slice"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R10 K16 [table.concat]
       52 GETIMPORT                        R11 K18 [table.insert]
       54 GETIMPORT                        R12 K20 [table.sort]
       56 DUPCLOSURE                       R13 K21 [PROTO_1]
       57 CAPTURE                          VAL R7
       58 LOADNIL                          R14
       59 NEWCLOSURE                       R15 P1
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R15
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R2
       67 CAPTURE                          REF R14
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R12
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R11
       72 DUPCLOSURE                       R14 K22 [PROTO_4]
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R15
       75 CLOSEUPVALS                      R14
       76 RETURN                           R14 1
