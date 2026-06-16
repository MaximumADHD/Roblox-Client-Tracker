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
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["number"] ; [+13]
        7 FASTCALL1                        TYPE R1 ; [+3]
        8 MOVE                             R3 R1
        9 GETIMPORT                        R2 K1 [type]
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
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R1
        5 DUPCLOSURE                       R4 K0 [PROTO_2]
        6 CALL                             R2 2 0
        7 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R3 K3 [{"visited", "indent", "depth"}]
        2 NEWTABLE                         R4 0 0
        4 SETTABLEKS                       R4 R3 K0 ["visited"]
        6 LOADK                            R4 K4 ["\t"]
        7 SETTABLEKS                       R4 R3 K1 ["indent"]
        9 LOADN                            R4 2
       10 SETTABLEKS                       R4 R3 K2 ["depth"]
       12 MOVE                             R4 R0
       13 DUPTABLE                         R5 K6 [{"depth", "cycles"}]
       14 GETTABLEKS                       R7 R0 K2 ["depth"]
       16 JUMPIFNOT                        R7 ; [+4]
       17 GETTABLEKS                       R7 R0 K2 ["depth"]
       19 SUBK                             R6 R7 K7 [1]
       20 JUMPIF                           R6 ; [+1]
       21 LOADNIL                          R6
       22 SETTABLEKS                       R6 R5 K2 ["depth"]
       24 GETTABLEKS                       R6 R0 K5 ["cycles"]
       26 JUMPIF                           R6 ; [+28]
       27 GETUPVAL                         R6 1
       28 MOVE                             R7 R1
       29 GETTABLEKS                       R8 R0 K2 ["depth"]
       31 DUPTABLE                         R9 K11 [{"visited", "refs", "nextRef", "depth", "omit"}]
       32 NEWTABLE                         R10 0 0
       34 SETTABLEKS                       R10 R9 K0 ["visited"]
       36 NEWTABLE                         R10 0 0
       38 SETTABLEKS                       R10 R9 K8 ["refs"]
       40 LOADN                            R10 0
       41 SETTABLEKS                       R10 R9 K9 ["nextRef"]
       43 GETTABLEKS                       R10 R0 K2 ["depth"]
       45 SETTABLEKS                       R10 R9 K2 ["depth"]
       47 GETTABLEKS                       R10 R0 K10 ["omit"]
       49 JUMPIF                           R10 ; [+2]
       50 NEWTABLE                         R10 0 0
       52 SETTABLEKS                       R10 R9 K10 ["omit"]
       54 CALL                             R6 3 1
       55 SETTABLEKS                       R6 R5 K5 ["cycles"]
       57 CALL                             R2 3 1
       58 RETURN                           R2 1

PROTO_5:
        0 JUMPIFNOT                        R1 ; [+15]
        1 JUMPIFNOT                        R2 ; [+7]
        2 LENGTH                           R3 R0
        3 LENGTH                           R7 R0
        4 GETTABLE                         R5 R0 R7
        5 LOADK                            R6 K0 ["}"]
        6 CONCAT                           R4 R5 R6
        7 SETTABLE                         R4 R0 R3
        8 RETURN                           R0 0
        9 FASTCALL2K                       TABLE_INSERT R0 K0 ; [+4]
       11 MOVE                             R4 R0
       12 LOADK                            R5 K0 ["}"]
       13 GETUPVAL                         R3 0
       14 CALL                             R3 2 0
       15 RETURN                           R0 0
       16 LENGTH                           R3 R0
       17 LOADK                            R4 K1 ["%s}"]
       18 LENGTH                           R7 R0
       19 GETTABLE                         R6 R0 R7
       20 NAMECALL                         R4 R4 K2 ["format"]
       22 CALL                             R4 2 1
       23 SETTABLE                         R4 R0 R3
       24 RETURN                           R0 0

PROTO_6:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 FASTCALL1                        TYPE R0 ; [+3]
        5 MOVE                             R4 R0
        6 GETIMPORT                        R3 K1 [type]
        8 CALL                             R3 1 1
        9 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+260]
       11 GETUPVAL                         R3 0
       12 MOVE                             R4 R2
       13 MOVE                             R5 R0
       14 CALL                             R3 2 1
       15 GETTABLEKS                       R4 R3 K3 ["depth"]
       17 JUMPIFNOTEQKN                    R4 K4 [-1] ; [+7]
       19 NEWTABLE                         R4 0 1
       21 LOADK                            R5 K5 ["..."]
       22 SETLIST                          R4 R5 1 [1]
       24 RETURN                           R4 1
       25 GETTABLEKS                       R5 R3 K6 ["visited"]
       27 GETTABLE                         R4 R5 R0
       28 JUMPIFNOT                        R4 ; [+12]
       29 NEWTABLE                         R4 0 1
       31 LOADK                            R6 K7 ["&"]
       32 GETTABLEKS                       R8 R3 K8 ["cycles"]
       34 GETTABLEKS                       R8 R8 K9 ["refs"]
       36 GETTABLE                         R7 R8 R0
       37 CONCAT                           R5 R6 R7
       38 SETLIST                          R4 R5 1 [1]
       40 RETURN                           R4 1
       41 GETTABLEKS                       R4 R3 K6 ["visited"]
       43 LOADB                            R5 1
       44 SETTABLE                         R5 R4 R0
       45 GETTABLEKS                       R4 R3 K10 ["multiline"]
       47 JUMPIFNOT                        R4 ; [+2]
       48 LOADK                            R5 K11 [","]
       49 JUMP                             ; [+1]
       50 LOADK                            R5 K12 [", "]
       51 GETTABLEKS                       R7 R3 K8 ["cycles"]
       53 GETTABLEKS                       R7 R7 K9 ["refs"]
       55 GETTABLE                         R6 R7 R0
       56 JUMPIFNOT                        R6 ; [+6]
       57 LOADK                            R7 K13 ["<%s>"]
       58 MOVE                             R9 R6
       59 NAMECALL                         R7 R7 K14 ["format"]
       61 CALL                             R7 2 1
       62 JUMPIF                           R7 ; [+1]
       63 LOADK                            R7 K15 [""]
       64 NEWTABLE                         R8 0 1
       66 MOVE                             R10 R7
       67 LOADK                            R11 K16 ["{"]
       68 CONCAT                           R9 R10 R11
       69 SETLIST                          R8 R9 1 [1]
       71 GETUPVAL                         R9 1
       72 MOVE                             R10 R3
       73 DUPTABLE                         R11 K18 [{"noQuotes", "multiline"}]
       74 LOADB                            R12 1
       75 SETTABLEKS                       R12 R11 K17 ["noQuotes"]
       77 LOADB                            R12 0
       78 SETTABLEKS                       R12 R11 K10 ["multiline"]
       80 CALL                             R9 2 1
       81 LOADN                            R10 0
       82 LOADB                            R11 1
       83 GETUPVAL                         R13 2
       84 MOVE                             R14 R0
       85 CALL                             R13 1 1
       86 GETUPVAL                         R14 3
       87 MOVE                             R15 R13
       88 DUPCLOSURE                       R16 K19 [PROTO_2]
       89 CALL                             R14 2 0
       90 MOVE                             R12 R13
       91 LENGTH                           R13 R0
       92 LOADN                            R14 0
       93 JUMPIFNOTLT                      R14 R13 ; [+11]
       95 GETTABLEKS                       R13 R3 K20 ["arrayLength"]
       97 JUMPIFNOT                        R13 ; [+7]
       98 LOADK                            R13 K21 ["#%d %s"]
       99 LENGTH                           R15 R0
      100 GETTABLEN                        R16 R8 1
      101 NAMECALL                         R13 R13 K14 ["format"]
      103 CALL                             R13 3 1
      104 SETTABLEN                        R13 R8 1
      105 GETIMPORT                        R13 K23 [ipairs]
      107 MOVE                             R14 R12
      108 CALL                             R13 1 3
      109 FORGPREP_INEXT                   R13
      110 FASTCALL1                        TYPE R17 ; [+3]
      111 MOVE                             R19 R17
      112 GETIMPORT                        R18 K1 [type]
      114 CALL                             R18 1 1
      115 JUMPIFNOTEQKS                    R18 K24 ["number"] ; [+5]
      117 ADDK                             R18 R10 K25 [1]
      118 JUMPIFNOTEQ                      R17 R18 ; [+2]
      120 MOVE                             R10 R17
      121 GETTABLEKS                       R18 R3 K26 ["omit"]
      123 JUMPIFNOT                        R18 ; [+6]
      124 GETUPVAL                         R18 4
      125 GETTABLEKS                       R19 R3 K26 ["omit"]
      127 MOVE                             R20 R17
      128 CALL                             R18 2 1
      129 JUMPIF                           R18 ; [+112]
      130 GETTABLE                         R18 R0 R17
      131 LOADB                            R19 0
      132 FASTCALL1                        TYPE R17 ; [+3]
      133 MOVE                             R21 R17
      134 GETIMPORT                        R20 K1 [type]
      136 CALL                             R20 1 1
      137 JUMPIFNOTEQKS                    R20 K24 ["number"] ; [+9]
      139 LOADB                            R19 0
      140 LOADN                            R20 1
      141 JUMPIFNOTLE                      R20 R17 ; [+5]
      143 JUMPIFLE                         R17 R10 ; [+2]
      145 LOADB                            R19 0 +1
      146 LOADB                            R19 1
      147 JUMPIFNOT                        R11 ; [+2]
      148 LOADB                            R11 0
      149 JUMP                             ; [+6]
      150 LENGTH                           R20 R8
      151 LENGTH                           R24 R8
      152 GETTABLE                         R22 R8 R24
      153 MOVE                             R23 R5
      154 CONCAT                           R21 R22 R23
      155 SETTABLE                         R21 R8 R20
      156 JUMPIFNOT                        R4 ; [+59]
      157 JUMPIFNOT                        R19 ; [+12]
      158 GETUPVAL                         R20 5
      159 MOVE                             R21 R8
      160 GETUPVAL                         R22 6
      161 GETUPVAL                         R23 7
      162 MOVE                             R24 R18
      163 MOVE                             R25 R3
      164 CALL                             R23 2 1
      165 GETTABLEKS                       R24 R3 K27 ["indent"]
      167 CALL                             R22 2 -1
      168 CALL                             R20 -1 0
      169 JUMP                             ; [+72]
      170 GETUPVAL                         R20 7
      171 MOVE                             R21 R17
      172 MOVE                             R22 R9
      173 CALL                             R20 2 1
      174 GETTABLEKS                       R22 R3 K27 ["indent"]
      176 GETUPVAL                         R23 8
      177 MOVE                             R24 R20
      178 NEWCLOSURE                       R25 P1
      179 CAPTURE                          VAL R22
      180 CALL                             R23 2 1
      181 MOVE                             R21 R23
      182 GETUPVAL                         R22 7
      183 MOVE                             R23 R18
      184 MOVE                             R24 R3
      185 CALL                             R22 2 1
      186 GETUPVAL                         R23 9
      187 MOVE                             R24 R22
      188 LOADN                            R25 2
      189 CALL                             R23 2 1
      190 GETTABLEKS                       R25 R3 K27 ["indent"]
      192 GETUPVAL                         R26 8
      193 MOVE                             R27 R23
      194 NEWCLOSURE                       R28 P1
      195 CAPTURE                          VAL R25
      196 CALL                             R26 2 1
      197 MOVE                             R24 R26
      198 LENGTH                           R25 R21
      199 LOADK                            R26 K28 ["%s = %s"]
      200 LENGTH                           R29 R21
      201 GETTABLE                         R28 R21 R29
      202 GETTABLEN                        R29 R22 1
      203 NAMECALL                         R26 R26 K14 ["format"]
      205 CALL                             R26 3 1
      206 SETTABLE                         R26 R21 R25
      207 GETUPVAL                         R25 5
      208 MOVE                             R26 R8
      209 MOVE                             R27 R21
      210 CALL                             R25 2 0
      211 GETUPVAL                         R25 5
      212 MOVE                             R26 R8
      213 MOVE                             R27 R24
      214 CALL                             R25 2 0
      215 JUMP                             ; [+26]
      216 JUMPIFNOT                        R19 ; [+10]
      217 LENGTH                           R20 R8
      218 LENGTH                           R24 R8
      219 GETTABLE                         R22 R8 R24
      220 GETUPVAL                         R23 10
      221 MOVE                             R24 R18
      222 MOVE                             R25 R3
      223 CALL                             R23 2 1
      224 CONCAT                           R21 R22 R23
      225 SETTABLE                         R21 R8 R20
      226 JUMP                             ; [+15]
      227 LENGTH                           R20 R8
      228 LENGTH                           R26 R8
      229 GETTABLE                         R22 R8 R26
      230 GETUPVAL                         R26 10
      231 MOVE                             R27 R17
      232 MOVE                             R28 R9
      233 CALL                             R26 2 1
      234 MOVE                             R23 R26
      235 LOADK                            R24 K29 [" = "]
      236 GETUPVAL                         R25 10
      237 MOVE                             R26 R18
      238 MOVE                             R27 R3
      239 CALL                             R25 2 1
      240 CONCAT                           R21 R22 R25
      241 SETTABLE                         R21 R8 R20
      242 FORGLOOP                         R13 2 [inext] ; [-133]
      244 MOVE                             R13 R11
      245 JUMPIFNOT                        R4 ; [+15]
      246 JUMPIFNOT                        R13 ; [+7]
      247 LENGTH                           R14 R8
      248 LENGTH                           R18 R8
      249 GETTABLE                         R16 R8 R18
      250 LOADK                            R17 K30 ["}"]
      251 CONCAT                           R15 R16 R17
      252 SETTABLE                         R15 R8 R14
      253 RETURN                           R8 1
      254 FASTCALL2K                       TABLE_INSERT R8 K30 ; [+4]
      256 MOVE                             R15 R8
      257 LOADK                            R16 K30 ["}"]
      258 GETUPVAL                         R14 11
      259 CALL                             R14 2 0
      260 RETURN                           R8 1
      261 LENGTH                           R14 R8
      262 LOADK                            R15 K31 ["%s}"]
      263 LENGTH                           R18 R8
      264 GETTABLE                         R17 R8 R18
      265 NAMECALL                         R15 R15 K14 ["format"]
      267 CALL                             R15 2 1
      268 SETTABLE                         R15 R8 R14
      269 RETURN                           R8 1
      270 FASTCALL1                        TYPE R0 ; [+3]
      271 MOVE                             R4 R0
      272 GETIMPORT                        R3 K1 [type]
      274 CALL                             R3 1 1
      275 JUMPIFNOTEQKS                    R3 K32 ["string"] ; [+15]
      277 JUMPIFNOT                        R2 ; [+13]
      278 GETTABLEKS                       R3 R2 K17 ["noQuotes"]
      280 JUMPIF                           R3 ; [+10]
      281 NEWTABLE                         R3 0 1
      283 LOADK                            R4 K33 ["\"%s\""]
      284 MOVE                             R6 R0
      285 NAMECALL                         R4 R4 K14 ["format"]
      287 CALL                             R4 2 -1
      288 SETLIST                          R3 R4 -1 [1]
      290 RETURN                           R3 1
      291 NEWTABLE                         R3 0 1
      293 FASTCALL1                        TOSTRING R0 ; [+3]
      294 MOVE                             R5 R0
      295 GETIMPORT                        R4 K35 [tostring]
      297 CALL                             R4 1 1
      298 SETLIST                          R3 R4 1 [1]
      300 RETURN                           R3 1

PROTO_7:
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
       58 DUPCLOSURE                       R14 K22 [PROTO_3]
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R12
       61 DUPCLOSURE                       R15 K23 [PROTO_4]
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R4
       64 DUPCLOSURE                       R16 K24 [PROTO_5]
       65 CAPTURE                          VAL R11
       66 LOADNIL                          R17
       67 NEWCLOSURE                       R18 P4
       68 CAPTURE                          VAL R15
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R12
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R13
       75 CAPTURE                          VAL R18
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R9
       78 CAPTURE                          REF R17
       79 CAPTURE                          VAL R11
       80 DUPCLOSURE                       R17 K25 [PROTO_7]
       81 CAPTURE                          VAL R10
       82 CAPTURE                          VAL R18
       83 CLOSEUPVALS                      R17
       84 RETURN                           R17 1
