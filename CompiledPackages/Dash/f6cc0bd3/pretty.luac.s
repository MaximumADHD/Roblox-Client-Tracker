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
        4 MOVE                             R1 R2
        5 FASTCALL1                        TYPE R0 ; [+3]
        6 MOVE                             R3 R0
        7 GETIMPORT                        R2 K1 [type]
        9 CALL                             R2 1 1
       10 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+260]
       12 GETUPVAL                         R2 0
       13 MOVE                             R3 R1
       14 MOVE                             R4 R0
       15 CALL                             R2 2 1
       16 GETTABLEKS                       R3 R2 K3 ["depth"]
       18 JUMPIFNOTEQKN                    R3 K4 [-1] ; [+7]
       20 NEWTABLE                         R3 0 1
       22 LOADK                            R4 K5 ["..."]
       23 SETLIST                          R3 R4 1 [1]
       25 RETURN                           R3 1
       26 GETTABLEKS                       R4 R2 K6 ["visited"]
       28 GETTABLE                         R3 R4 R0
       29 JUMPIFNOT                        R3 ; [+12]
       30 NEWTABLE                         R3 0 1
       32 LOADK                            R5 K7 ["&"]
       33 GETTABLEKS                       R8 R2 K8 ["cycles"]
       35 GETTABLEKS                       R7 R8 K9 ["refs"]
       37 GETTABLE                         R6 R7 R0
       38 CONCAT                           R4 R5 R6
       39 SETLIST                          R3 R4 1 [1]
       41 RETURN                           R3 1
       42 GETTABLEKS                       R3 R2 K6 ["visited"]
       44 LOADB                            R4 1
       45 SETTABLE                         R4 R3 R0
       46 GETTABLEKS                       R3 R2 K10 ["multiline"]
       48 JUMPIFNOT                        R3 ; [+2]
       49 LOADK                            R4 K11 [","]
       50 JUMP                             ; [+1]
       51 LOADK                            R4 K12 [", "]
       52 GETTABLEKS                       R7 R2 K8 ["cycles"]
       54 GETTABLEKS                       R6 R7 K9 ["refs"]
       56 GETTABLE                         R5 R6 R0
       57 JUMPIFNOT                        R5 ; [+6]
       58 LOADK                            R6 K13 ["<%s>"]
       59 MOVE                             R8 R5
       60 NAMECALL                         R6 R6 K14 ["format"]
       62 CALL                             R6 2 1
       63 JUMPIF                           R6 ; [+1]
       64 LOADK                            R6 K15 [""]
       65 NEWTABLE                         R7 0 1
       67 MOVE                             R9 R6
       68 LOADK                            R10 K16 ["{"]
       69 CONCAT                           R8 R9 R10
       70 SETLIST                          R7 R8 1 [1]
       72 GETUPVAL                         R8 1
       73 MOVE                             R9 R2
       74 DUPTABLE                         R10 K18 [{"noQuotes", "multiline"}]
       75 LOADB                            R11 1
       76 SETTABLEKS                       R11 R10 K17 ["noQuotes"]
       78 LOADB                            R11 0
       79 SETTABLEKS                       R11 R10 K10 ["multiline"]
       81 CALL                             R8 2 1
       82 LOADN                            R9 0
       83 LOADB                            R10 1
       84 GETUPVAL                         R12 2
       85 MOVE                             R13 R0
       86 CALL                             R12 1 1
       87 GETUPVAL                         R13 3
       88 MOVE                             R14 R12
       89 DUPCLOSURE                       R15 K19 [PROTO_2]
       90 CALL                             R13 2 0
       91 MOVE                             R11 R12
       92 LENGTH                           R12 R0
       93 LOADN                            R13 0
       94 JUMPIFNOTLT                      R13 R12 ; [+11]
       96 GETTABLEKS                       R12 R2 K20 ["arrayLength"]
       98 JUMPIFNOT                        R12 ; [+7]
       99 LOADK                            R12 K21 ["#%d %s"]
      100 LENGTH                           R14 R0
      101 GETTABLEN                        R15 R7 1
      102 NAMECALL                         R12 R12 K14 ["format"]
      104 CALL                             R12 3 1
      105 SETTABLEN                        R12 R7 1
      106 GETIMPORT                        R12 K23 [ipairs]
      108 MOVE                             R13 R11
      109 CALL                             R12 1 3
      110 FORGPREP_INEXT                   R12
      111 FASTCALL1                        TYPE R16 ; [+3]
      112 MOVE                             R18 R16
      113 GETIMPORT                        R17 K1 [type]
      115 CALL                             R17 1 1
      116 JUMPIFNOTEQKS                    R17 K24 ["number"] ; [+5]
      118 ADDK                             R17 R9 K25 [1]
      119 JUMPIFNOTEQ                      R16 R17 ; [+2]
      121 MOVE                             R9 R16
      122 GETTABLEKS                       R17 R2 K26 ["omit"]
      124 JUMPIFNOT                        R17 ; [+6]
      125 GETUPVAL                         R17 4
      126 GETTABLEKS                       R18 R2 K26 ["omit"]
      128 MOVE                             R19 R16
      129 CALL                             R17 2 1
      130 JUMPIF                           R17 ; [+112]
      131 GETTABLE                         R17 R0 R16
      132 LOADB                            R18 0
      133 FASTCALL1                        TYPE R16 ; [+3]
      134 MOVE                             R20 R16
      135 GETIMPORT                        R19 K1 [type]
      137 CALL                             R19 1 1
      138 JUMPIFNOTEQKS                    R19 K24 ["number"] ; [+9]
      140 LOADB                            R18 0
      141 LOADN                            R19 1
      142 JUMPIFNOTLE                      R19 R16 ; [+5]
      144 JUMPIFLE                         R16 R9 ; [+2]
      146 LOADB                            R18 0 +1
      147 LOADB                            R18 1
      148 JUMPIFNOT                        R10 ; [+2]
      149 LOADB                            R10 0
      150 JUMP                             ; [+6]
      151 LENGTH                           R19 R7
      152 LENGTH                           R23 R7
      153 GETTABLE                         R21 R7 R23
      154 MOVE                             R22 R4
      155 CONCAT                           R20 R21 R22
      156 SETTABLE                         R20 R7 R19
      157 JUMPIFNOT                        R3 ; [+59]
      158 JUMPIFNOT                        R18 ; [+12]
      159 GETUPVAL                         R19 5
      160 MOVE                             R20 R7
      161 GETUPVAL                         R21 6
      162 GETUPVAL                         R22 7
      163 MOVE                             R23 R17
      164 MOVE                             R24 R2
      165 CALL                             R22 2 1
      166 GETTABLEKS                       R23 R2 K27 ["indent"]
      168 CALL                             R21 2 -1
      169 CALL                             R19 -1 0
      170 JUMP                             ; [+72]
      171 GETUPVAL                         R19 7
      172 MOVE                             R20 R16
      173 MOVE                             R21 R8
      174 CALL                             R19 2 1
      175 GETTABLEKS                       R21 R2 K27 ["indent"]
      177 GETUPVAL                         R22 8
      178 MOVE                             R23 R19
      179 NEWCLOSURE                       R24 P1
      180 CAPTURE                          VAL R21
      181 CALL                             R22 2 1
      182 MOVE                             R20 R22
      183 GETUPVAL                         R21 7
      184 MOVE                             R22 R17
      185 MOVE                             R23 R2
      186 CALL                             R21 2 1
      187 GETUPVAL                         R22 9
      188 MOVE                             R23 R21
      189 LOADN                            R24 2
      190 CALL                             R22 2 1
      191 GETTABLEKS                       R24 R2 K27 ["indent"]
      193 GETUPVAL                         R25 8
      194 MOVE                             R26 R22
      195 NEWCLOSURE                       R27 P1
      196 CAPTURE                          VAL R24
      197 CALL                             R25 2 1
      198 MOVE                             R23 R25
      199 LENGTH                           R24 R20
      200 LOADK                            R25 K28 ["%s = %s"]
      201 LENGTH                           R28 R20
      202 GETTABLE                         R27 R20 R28
      203 GETTABLEN                        R28 R21 1
      204 NAMECALL                         R25 R25 K14 ["format"]
      206 CALL                             R25 3 1
      207 SETTABLE                         R25 R20 R24
      208 GETUPVAL                         R24 5
      209 MOVE                             R25 R7
      210 MOVE                             R26 R20
      211 CALL                             R24 2 0
      212 GETUPVAL                         R24 5
      213 MOVE                             R25 R7
      214 MOVE                             R26 R23
      215 CALL                             R24 2 0
      216 JUMP                             ; [+26]
      217 JUMPIFNOT                        R18 ; [+10]
      218 LENGTH                           R19 R7
      219 LENGTH                           R23 R7
      220 GETTABLE                         R21 R7 R23
      221 GETUPVAL                         R22 10
      222 MOVE                             R23 R17
      223 MOVE                             R24 R2
      224 CALL                             R22 2 1
      225 CONCAT                           R20 R21 R22
      226 SETTABLE                         R20 R7 R19
      227 JUMP                             ; [+15]
      228 LENGTH                           R19 R7
      229 LENGTH                           R25 R7
      230 GETTABLE                         R21 R7 R25
      231 GETUPVAL                         R25 10
      232 MOVE                             R26 R16
      233 MOVE                             R27 R8
      234 CALL                             R25 2 1
      235 MOVE                             R22 R25
      236 LOADK                            R23 K29 [" = "]
      237 GETUPVAL                         R24 10
      238 MOVE                             R25 R17
      239 MOVE                             R26 R2
      240 CALL                             R24 2 1
      241 CONCAT                           R20 R21 R24
      242 SETTABLE                         R20 R7 R19
      243 FORGLOOP                         R12 2 [inext] ; [-133]
      245 MOVE                             R12 R10
      246 JUMPIFNOT                        R3 ; [+15]
      247 JUMPIFNOT                        R12 ; [+7]
      248 LENGTH                           R13 R7
      249 LENGTH                           R17 R7
      250 GETTABLE                         R15 R7 R17
      251 LOADK                            R16 K30 ["}"]
      252 CONCAT                           R14 R15 R16
      253 SETTABLE                         R14 R7 R13
      254 RETURN                           R7 1
      255 FASTCALL2K                       TABLE_INSERT R7 K30 ; [+4]
      257 MOVE                             R14 R7
      258 LOADK                            R15 K30 ["}"]
      259 GETUPVAL                         R13 11
      260 CALL                             R13 2 0
      261 RETURN                           R7 1
      262 LENGTH                           R13 R7
      263 LOADK                            R14 K31 ["%s}"]
      264 LENGTH                           R17 R7
      265 GETTABLE                         R16 R7 R17
      266 NAMECALL                         R14 R14 K14 ["format"]
      268 CALL                             R14 2 1
      269 SETTABLE                         R14 R7 R13
      270 RETURN                           R7 1
      271 FASTCALL1                        TYPE R0 ; [+3]
      272 MOVE                             R3 R0
      273 GETIMPORT                        R2 K1 [type]
      275 CALL                             R2 1 1
      276 JUMPIFNOTEQKS                    R2 K32 ["string"] ; [+15]
      278 JUMPIFNOT                        R1 ; [+13]
      279 GETTABLEKS                       R2 R1 K17 ["noQuotes"]
      281 JUMPIF                           R2 ; [+10]
      282 NEWTABLE                         R2 0 1
      284 LOADK                            R3 K33 ["\"%s\""]
      285 MOVE                             R5 R0
      286 NAMECALL                         R3 R3 K14 ["format"]
      288 CALL                             R3 2 -1
      289 SETLIST                          R2 R3 -1 [1]
      291 RETURN                           R2 1
      292 NEWTABLE                         R2 0 1
      294 FASTCALL1                        TOSTRING R0 ; [+3]
      295 MOVE                             R4 R0
      296 GETIMPORT                        R3 K35 [tostring]
      298 CALL                             R3 1 1
      299 SETLIST                          R2 R3 1 [1]
      301 RETURN                           R2 1

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
