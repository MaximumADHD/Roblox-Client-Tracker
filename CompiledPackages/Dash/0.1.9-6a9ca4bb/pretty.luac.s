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
       10 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+321]
       12 GETUPVAL                         R2 0
       13 DUPTABLE                         R3 K8 [{["visited"], ["indent"] = "\t", ["depth"] = 2}]
       14 NEWTABLE                         R4 0 0
       16 SETTABLEKS                       R4 R3 K3 ["visited"]
       18 MOVE                             R4 R1
       19 DUPTABLE                         R5 K10 [{"depth", "cycles"}]
       20 GETTABLEKS                       R7 R1 K6 ["depth"]
       22 JUMPIFNOT                        R7 ; [+4]
       23 GETTABLEKS                       R7 R1 K6 ["depth"]
       25 SUBK                             R6 R7 K11 [1]
       26 JUMPIF                           R6 ; [+1]
       27 LOADNIL                          R6
       28 SETTABLEKS                       R6 R5 K6 ["depth"]
       30 GETTABLEKS                       R6 R1 K9 ["cycles"]
       32 JUMPIF                           R6 ; [+25]
       33 GETUPVAL                         R6 1
       34 MOVE                             R7 R0
       35 GETTABLEKS                       R8 R1 K6 ["depth"]
       37 DUPTABLE                         R9 K16 [{["visited"], ["refs"], ["nextRef"] = 0, ["depth"], ["omit"]}]
       38 NEWTABLE                         R10 0 0
       40 SETTABLEKS                       R10 R9 K3 ["visited"]
       42 NEWTABLE                         R10 0 0
       44 SETTABLEKS                       R10 R9 K12 ["refs"]
       46 GETTABLEKS                       R10 R1 K6 ["depth"]
       48 SETTABLEKS                       R10 R9 K6 ["depth"]
       50 GETTABLEKS                       R10 R1 K15 ["omit"]
       52 JUMPIF                           R10 ; [+2]
       53 NEWTABLE                         R10 0 0
       55 SETTABLEKS                       R10 R9 K15 ["omit"]
       57 CALL                             R6 3 1
       58 SETTABLEKS                       R6 R5 K9 ["cycles"]
       60 CALL                             R2 3 1
       61 GETTABLEKS                       R3 R2 K6 ["depth"]
       63 JUMPIFNOTEQKN                    R3 K17 [-1] ; [+7]
       65 NEWTABLE                         R3 0 1
       67 LOADK                            R4 K18 ["..."]
       68 SETLIST                          R3 R4 1 [1]
       70 RETURN                           R3 1
       71 GETTABLEKS                       R4 R2 K3 ["visited"]
       73 GETTABLE                         R3 R4 R0
       74 JUMPIFNOT                        R3 ; [+12]
       75 NEWTABLE                         R3 0 1
       77 LOADK                            R5 K19 ["&"]
       78 GETTABLEKS                       R7 R2 K9 ["cycles"]
       80 GETTABLEKS                       R7 R7 K12 ["refs"]
       82 GETTABLE                         R6 R7 R0
       83 CONCAT                           R4 R5 R6
       84 SETLIST                          R3 R4 1 [1]
       86 RETURN                           R3 1
       87 GETTABLEKS                       R3 R2 K3 ["visited"]
       89 LOADB                            R4 1
       90 SETTABLE                         R4 R3 R0
       91 GETTABLEKS                       R3 R2 K20 ["multiline"]
       93 JUMPIFNOT                        R3 ; [+2]
       94 LOADK                            R4 K21 [","]
       95 JUMP                             ; [+1]
       96 LOADK                            R4 K22 [", "]
       97 GETTABLEKS                       R6 R2 K9 ["cycles"]
       99 GETTABLEKS                       R6 R6 K12 ["refs"]
      101 GETTABLE                         R5 R6 R0
      102 JUMPIFNOT                        R5 ; [+6]
      103 LOADK                            R6 K23 ["<%s>"]
      104 MOVE                             R8 R5
      105 NAMECALL                         R6 R6 K24 ["format"]
      107 CALL                             R6 2 1
      108 JUMPIF                           R6 ; [+1]
      109 LOADK                            R6 K25 [""]
      110 NEWTABLE                         R7 0 1
      112 MOVE                             R9 R6
      113 LOADK                            R10 K26 ["{"]
      114 CONCAT                           R8 R9 R10
      115 SETLIST                          R7 R8 1 [1]
      117 GETUPVAL                         R8 2
      118 MOVE                             R9 R2
      119 DUPTABLE                         R10 K30 [{["noQuotes"] = True, ["multiline"] = False}]
      120 CALL                             R8 2 1
      121 LOADN                            R9 0
      122 LOADB                            R10 1
      123 GETIMPORT                        R11 K32 [ipairs]
      125 MOVE                             R12 R0
      126 CALL                             R11 1 3
      127 FORGPREP_INEXT                   R11
      128 GETTABLEKS                       R16 R2 K15 ["omit"]
      130 JUMPIFNOT                        R16 ; [+6]
      131 GETUPVAL                         R16 3
      132 GETTABLEKS                       R17 R2 K15 ["omit"]
      134 MOVE                             R18 R14
      135 CALL                             R16 2 1
      136 JUMPIF                           R16 ; [+39]
      137 JUMPIFNOT                        R10 ; [+2]
      138 LOADB                            R10 0
      139 JUMP                             ; [+6]
      140 LENGTH                           R16 R7
      141 LENGTH                           R20 R7
      142 GETTABLE                         R18 R7 R20
      143 MOVE                             R19 R4
      144 CONCAT                           R17 R18 R19
      145 SETTABLE                         R17 R7 R16
      146 GETTABLEKS                       R16 R2 K20 ["multiline"]
      148 JUMPIFNOT                        R16 ; [+17]
      149 GETUPVAL                         R17 4
      150 MOVE                             R18 R15
      151 MOVE                             R19 R2
      152 CALL                             R17 2 1
      153 GETTABLEKS                       R18 R2 K4 ["indent"]
      155 GETUPVAL                         R19 5
      156 MOVE                             R20 R17
      157 NEWCLOSURE                       R21 P0
      158 CAPTURE                          VAL R18
      159 CALL                             R19 2 1
      160 MOVE                             R16 R19
      161 GETUPVAL                         R17 6
      162 MOVE                             R18 R7
      163 MOVE                             R19 R16
      164 CALL                             R17 2 0
      165 JUMP                             ; [+9]
      166 LENGTH                           R16 R7
      167 LENGTH                           R20 R7
      168 GETTABLE                         R18 R7 R20
      169 GETUPVAL                         R19 7
      170 MOVE                             R20 R15
      171 MOVE                             R21 R2
      172 CALL                             R19 2 1
      173 CONCAT                           R17 R18 R19
      174 SETTABLE                         R17 R7 R16
      175 MOVE                             R9 R14
      176 FORGLOOP                         R11 2 [inext] ; [-49]
      178 LENGTH                           R11 R0
      179 LOADN                            R12 0
      180 JUMPIFNOTLT                      R12 R11 ; [+11]
      182 GETTABLEKS                       R11 R2 K33 ["arrayLength"]
      184 JUMPIFNOT                        R11 ; [+7]
      185 LOADK                            R11 K34 ["#%d %s"]
      186 LENGTH                           R13 R0
      187 GETTABLEN                        R14 R7 1
      188 NAMECALL                         R11 R11 K24 ["format"]
      190 CALL                             R11 3 1
      191 SETTABLEN                        R11 R7 1
      192 GETUPVAL                         R11 8
      193 MOVE                             R12 R0
      194 CALL                             R11 1 1
      195 GETUPVAL                         R12 9
      196 MOVE                             R13 R11
      197 DUPCLOSURE                       R14 K35 [PROTO_2]
      198 CALL                             R12 2 0
      199 GETIMPORT                        R12 K32 [ipairs]
      201 MOVE                             R13 R11
      202 CALL                             R12 1 3
      203 FORGPREP_INEXT                   R12
      204 GETTABLE                         R17 R0 R16
      205 FASTCALL1                        TYPEOF R16 ; [+3]
      206 MOVE                             R19 R16
      207 GETIMPORT                        R18 K37 [typeof]
      209 CALL                             R18 1 1
      210 JUMPIFNOTEQKS                    R18 K38 ["number"] ; [+9]
      212 MODK                             R18 R16 K11 [1]
      213 JUMPIFNOTEQKN                    R18 K14 [0] ; [+6]
      215 LOADN                            R18 1
      216 JUMPIFNOTLE                      R18 R16 ; [+3]
      218 JUMPIFLE                         R16 R9 ; [+84]
      220 GETTABLEKS                       R18 R2 K15 ["omit"]
      222 JUMPIFNOT                        R18 ; [+6]
      223 GETUPVAL                         R18 3
      224 GETTABLEKS                       R19 R2 K15 ["omit"]
      226 MOVE                             R20 R16
      227 CALL                             R18 2 1
      228 JUMPIF                           R18 ; [+74]
      229 JUMPIFNOT                        R10 ; [+2]
      230 LOADB                            R10 0
      231 JUMP                             ; [+6]
      232 LENGTH                           R18 R7
      233 LENGTH                           R22 R7
      234 GETTABLE                         R20 R7 R22
      235 MOVE                             R21 R4
      236 CONCAT                           R19 R20 R21
      237 SETTABLE                         R19 R7 R18
      238 GETTABLEKS                       R18 R2 K20 ["multiline"]
      240 JUMPIFNOT                        R18 ; [+46]
      241 GETUPVAL                         R18 4
      242 MOVE                             R19 R16
      243 MOVE                             R20 R8
      244 CALL                             R18 2 1
      245 GETTABLEKS                       R20 R2 K4 ["indent"]
      247 GETUPVAL                         R21 5
      248 MOVE                             R22 R18
      249 NEWCLOSURE                       R23 P0
      250 CAPTURE                          VAL R20
      251 CALL                             R21 2 1
      252 MOVE                             R19 R21
      253 GETUPVAL                         R20 4
      254 MOVE                             R21 R17
      255 MOVE                             R22 R2
      256 CALL                             R20 2 1
      257 GETUPVAL                         R21 10
      258 MOVE                             R22 R20
      259 LOADN                            R23 2
      260 CALL                             R21 2 1
      261 GETTABLEKS                       R23 R2 K4 ["indent"]
      263 GETUPVAL                         R24 5
      264 MOVE                             R25 R21
      265 NEWCLOSURE                       R26 P0
      266 CAPTURE                          VAL R23
      267 CALL                             R24 2 1
      268 MOVE                             R22 R24
      269 LENGTH                           R23 R19
      270 LOADK                            R24 K39 ["%s = %s"]
      271 LENGTH                           R27 R19
      272 GETTABLE                         R26 R19 R27
      273 GETTABLEN                        R27 R20 1
      274 NAMECALL                         R24 R24 K24 ["format"]
      276 CALL                             R24 3 1
      277 SETTABLE                         R24 R19 R23
      278 GETUPVAL                         R23 6
      279 MOVE                             R24 R7
      280 MOVE                             R25 R19
      281 CALL                             R23 2 0
      282 GETUPVAL                         R23 6
      283 MOVE                             R24 R7
      284 MOVE                             R25 R22
      285 CALL                             R23 2 0
      286 JUMP                             ; [+16]
      287 LENGTH                           R18 R7
      288 LOADK                            R19 K40 ["%s%s = %s"]
      289 LENGTH                           R22 R7
      290 GETTABLE                         R21 R7 R22
      291 GETUPVAL                         R22 7
      292 MOVE                             R23 R16
      293 MOVE                             R24 R8
      294 CALL                             R22 2 1
      295 GETUPVAL                         R23 7
      296 MOVE                             R24 R17
      297 MOVE                             R25 R2
      298 CALL                             R23 2 -1
      299 NAMECALL                         R19 R19 K24 ["format"]
      301 CALL                             R19 -1 1
      302 SETTABLE                         R19 R7 R18
      303 FORGLOOP                         R12 2 [inext] ; [-100]
      305 GETTABLEKS                       R12 R2 K20 ["multiline"]
      307 JUMPIFNOT                        R12 ; [+15]
      308 JUMPIFNOT                        R10 ; [+7]
      309 LENGTH                           R12 R7
      310 LENGTH                           R16 R7
      311 GETTABLE                         R14 R7 R16
      312 LOADK                            R15 K41 ["}"]
      313 CONCAT                           R13 R14 R15
      314 SETTABLE                         R13 R7 R12
      315 RETURN                           R7 1
      316 FASTCALL2K                       TABLE_INSERT R7 K41 ; [+4]
      318 MOVE                             R13 R7
      319 LOADK                            R14 K41 ["}"]
      320 GETUPVAL                         R12 11
      321 CALL                             R12 2 0
      322 RETURN                           R7 1
      323 LENGTH                           R12 R7
      324 LOADK                            R13 K42 ["%s}"]
      325 LENGTH                           R16 R7
      326 GETTABLE                         R15 R7 R16
      327 NAMECALL                         R13 R13 K24 ["format"]
      329 CALL                             R13 2 1
      330 SETTABLE                         R13 R7 R12
      331 RETURN                           R7 1
      332 FASTCALL1                        TYPE R0 ; [+3]
      333 MOVE                             R3 R0
      334 GETIMPORT                        R2 K1 [type]
      336 CALL                             R2 1 1
      337 JUMPIFNOTEQKS                    R2 K43 ["string"] ; [+14]
      339 GETTABLEKS                       R2 R1 K27 ["noQuotes"]
      341 JUMPIF                           R2 ; [+10]
      342 NEWTABLE                         R2 0 1
      344 LOADK                            R3 K44 ["\"%s\""]
      345 MOVE                             R5 R0
      346 NAMECALL                         R3 R3 K24 ["format"]
      348 CALL                             R3 2 -1
      349 SETLIST                          R2 R3 -1 [1]
      351 RETURN                           R2 1
      352 NEWTABLE                         R2 0 1
      354 FASTCALL1                        TOSTRING R0 ; [+3]
      355 MOVE                             R4 R0
      356 GETIMPORT                        R3 K46 [tostring]
      358 CALL                             R3 1 1
      359 SETLIST                          R2 R3 1 [1]
      361 RETURN                           R2 1

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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
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
