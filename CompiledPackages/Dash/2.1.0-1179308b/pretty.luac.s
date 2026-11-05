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
        1 DUPTABLE                         R3 K5 [{[1], ["indent"] = "\t", ["depth"] = 2}]
        2 NEWTABLE                         R4 0 0
        4 SETTABLEKS                       R4 R3 K0 ["visited"]
        6 MOVE                             R4 R0
        7 DUPTABLE                         R5 K7 [{"depth", "cycles"}]
        8 GETTABLEKS                       R7 R0 K3 ["depth"]
       10 JUMPIFNOT                        R7 ; [+4]
       11 GETTABLEKS                       R7 R0 K3 ["depth"]
       13 SUBK                             R6 R7 K8 [1]
       14 JUMPIF                           R6 ; [+1]
       15 LOADNIL                          R6
       16 SETTABLEKS                       R6 R5 K3 ["depth"]
       18 GETTABLEKS                       R6 R0 K6 ["cycles"]
       20 JUMPIF                           R6 ; [+25]
       21 GETUPVAL                         R6 1
       22 MOVE                             R7 R1
       23 GETTABLEKS                       R8 R0 K3 ["depth"]
       25 DUPTABLE                         R9 K13 [{[1], ["refs"], ["nextRef"] = 0, ["depth"], ["omit"]}]
       26 NEWTABLE                         R10 0 0
       28 SETTABLEKS                       R10 R9 K0 ["visited"]
       30 NEWTABLE                         R10 0 0
       32 SETTABLEKS                       R10 R9 K9 ["refs"]
       34 GETTABLEKS                       R10 R0 K3 ["depth"]
       36 SETTABLEKS                       R10 R9 K3 ["depth"]
       38 GETTABLEKS                       R10 R0 K12 ["omit"]
       40 JUMPIF                           R10 ; [+2]
       41 NEWTABLE                         R10 0 0
       43 SETTABLEKS                       R10 R9 K12 ["omit"]
       45 CALL                             R6 3 1
       46 SETTABLEKS                       R6 R5 K6 ["cycles"]
       48 CALL                             R2 3 1
       49 RETURN                           R2 1

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
       10 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+254]
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
       33 GETTABLEKS                       R7 R2 K8 ["cycles"]
       35 GETTABLEKS                       R7 R7 K9 ["refs"]
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
       52 GETTABLEKS                       R6 R2 K8 ["cycles"]
       54 GETTABLEKS                       R6 R6 K9 ["refs"]
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
       74 DUPTABLE                         R10 K20 [{["noQuotes"] = True, ["multiline"] = False}]
       75 CALL                             R8 2 1
       76 LOADN                            R9 0
       77 LOADB                            R10 1
       78 GETUPVAL                         R12 2
       79 MOVE                             R13 R0
       80 CALL                             R12 1 1
       81 GETUPVAL                         R13 3
       82 MOVE                             R14 R12
       83 DUPCLOSURE                       R15 K21 [PROTO_2]
       84 CALL                             R13 2 0
       85 MOVE                             R11 R12
       86 LENGTH                           R12 R0
       87 LOADN                            R13 0
       88 JUMPIFNOTLT                      R13 R12 ; [+11]
       90 GETTABLEKS                       R12 R2 K22 ["arrayLength"]
       92 JUMPIFNOT                        R12 ; [+7]
       93 LOADK                            R12 K23 ["#%d %s"]
       94 LENGTH                           R14 R0
       95 GETTABLEN                        R15 R7 1
       96 NAMECALL                         R12 R12 K14 ["format"]
       98 CALL                             R12 3 1
       99 SETTABLEN                        R12 R7 1
      100 GETIMPORT                        R12 K25 [ipairs]
      102 MOVE                             R13 R11
      103 CALL                             R12 1 3
      104 FORGPREP_INEXT                   R12
      105 FASTCALL1                        TYPE R16 ; [+3]
      106 MOVE                             R18 R16
      107 GETIMPORT                        R17 K1 [type]
      109 CALL                             R17 1 1
      110 JUMPIFNOTEQKS                    R17 K26 ["number"] ; [+5]
      112 ADDK                             R17 R9 K27 [1]
      113 JUMPIFNOTEQ                      R16 R17 ; [+2]
      115 MOVE                             R9 R16
      116 GETTABLEKS                       R17 R2 K28 ["omit"]
      118 JUMPIFNOT                        R17 ; [+6]
      119 GETUPVAL                         R17 4
      120 GETTABLEKS                       R18 R2 K28 ["omit"]
      122 MOVE                             R19 R16
      123 CALL                             R17 2 1
      124 JUMPIF                           R17 ; [+112]
      125 GETTABLE                         R17 R0 R16
      126 LOADB                            R18 0
      127 FASTCALL1                        TYPE R16 ; [+3]
      128 MOVE                             R20 R16
      129 GETIMPORT                        R19 K1 [type]
      131 CALL                             R19 1 1
      132 JUMPIFNOTEQKS                    R19 K26 ["number"] ; [+9]
      134 LOADB                            R18 0
      135 LOADN                            R19 1
      136 JUMPIFNOTLE                      R19 R16 ; [+5]
      138 JUMPIFLE                         R16 R9 ; [+2]
      140 LOADB                            R18 0 +1
      141 LOADB                            R18 1
      142 JUMPIFNOT                        R10 ; [+2]
      143 LOADB                            R10 0
      144 JUMP                             ; [+6]
      145 LENGTH                           R19 R7
      146 LENGTH                           R23 R7
      147 GETTABLE                         R21 R7 R23
      148 MOVE                             R22 R4
      149 CONCAT                           R20 R21 R22
      150 SETTABLE                         R20 R7 R19
      151 JUMPIFNOT                        R3 ; [+59]
      152 JUMPIFNOT                        R18 ; [+12]
      153 GETUPVAL                         R19 5
      154 MOVE                             R20 R7
      155 GETUPVAL                         R21 6
      156 GETUPVAL                         R22 7
      157 MOVE                             R23 R17
      158 MOVE                             R24 R2
      159 CALL                             R22 2 1
      160 GETTABLEKS                       R23 R2 K29 ["indent"]
      162 CALL                             R21 2 -1
      163 CALL                             R19 -1 0
      164 JUMP                             ; [+72]
      165 GETUPVAL                         R19 7
      166 MOVE                             R20 R16
      167 MOVE                             R21 R8
      168 CALL                             R19 2 1
      169 GETTABLEKS                       R21 R2 K29 ["indent"]
      171 GETUPVAL                         R22 8
      172 MOVE                             R23 R19
      173 NEWCLOSURE                       R24 P1
      174 CAPTURE                          VAL R21
      175 CALL                             R22 2 1
      176 MOVE                             R20 R22
      177 GETUPVAL                         R21 7
      178 MOVE                             R22 R17
      179 MOVE                             R23 R2
      180 CALL                             R21 2 1
      181 GETUPVAL                         R22 9
      182 MOVE                             R23 R21
      183 LOADN                            R24 2
      184 CALL                             R22 2 1
      185 GETTABLEKS                       R24 R2 K29 ["indent"]
      187 GETUPVAL                         R25 8
      188 MOVE                             R26 R22
      189 NEWCLOSURE                       R27 P1
      190 CAPTURE                          VAL R24
      191 CALL                             R25 2 1
      192 MOVE                             R23 R25
      193 LENGTH                           R24 R20
      194 LOADK                            R25 K30 ["%s = %s"]
      195 LENGTH                           R28 R20
      196 GETTABLE                         R27 R20 R28
      197 GETTABLEN                        R28 R21 1
      198 NAMECALL                         R25 R25 K14 ["format"]
      200 CALL                             R25 3 1
      201 SETTABLE                         R25 R20 R24
      202 GETUPVAL                         R24 5
      203 MOVE                             R25 R7
      204 MOVE                             R26 R20
      205 CALL                             R24 2 0
      206 GETUPVAL                         R24 5
      207 MOVE                             R25 R7
      208 MOVE                             R26 R23
      209 CALL                             R24 2 0
      210 JUMP                             ; [+26]
      211 JUMPIFNOT                        R18 ; [+10]
      212 LENGTH                           R19 R7
      213 LENGTH                           R23 R7
      214 GETTABLE                         R21 R7 R23
      215 GETUPVAL                         R22 10
      216 MOVE                             R23 R17
      217 MOVE                             R24 R2
      218 CALL                             R22 2 1
      219 CONCAT                           R20 R21 R22
      220 SETTABLE                         R20 R7 R19
      221 JUMP                             ; [+15]
      222 LENGTH                           R19 R7
      223 LENGTH                           R25 R7
      224 GETTABLE                         R21 R7 R25
      225 GETUPVAL                         R25 10
      226 MOVE                             R26 R16
      227 MOVE                             R27 R8
      228 CALL                             R25 2 1
      229 MOVE                             R22 R25
      230 LOADK                            R23 K31 [" = "]
      231 GETUPVAL                         R24 10
      232 MOVE                             R25 R17
      233 MOVE                             R26 R2
      234 CALL                             R24 2 1
      235 CONCAT                           R20 R21 R24
      236 SETTABLE                         R20 R7 R19
      237 FORGLOOP                         R12 2 [inext] ; [-133]
      239 MOVE                             R12 R10
      240 JUMPIFNOT                        R3 ; [+15]
      241 JUMPIFNOT                        R12 ; [+7]
      242 LENGTH                           R13 R7
      243 LENGTH                           R17 R7
      244 GETTABLE                         R15 R7 R17
      245 LOADK                            R16 K32 ["}"]
      246 CONCAT                           R14 R15 R16
      247 SETTABLE                         R14 R7 R13
      248 RETURN                           R7 1
      249 FASTCALL2K                       TABLE_INSERT R7 K32 ; [+4]
      251 MOVE                             R14 R7
      252 LOADK                            R15 K32 ["}"]
      253 GETUPVAL                         R13 11
      254 CALL                             R13 2 0
      255 RETURN                           R7 1
      256 LENGTH                           R13 R7
      257 LOADK                            R14 K33 ["%s}"]
      258 LENGTH                           R17 R7
      259 GETTABLE                         R16 R7 R17
      260 NAMECALL                         R14 R14 K14 ["format"]
      262 CALL                             R14 2 1
      263 SETTABLE                         R14 R7 R13
      264 RETURN                           R7 1
      265 FASTCALL1                        TYPE R0 ; [+3]
      266 MOVE                             R3 R0
      267 GETIMPORT                        R2 K1 [type]
      269 CALL                             R2 1 1
      270 JUMPIFNOTEQKS                    R2 K34 ["string"] ; [+15]
      272 JUMPIFNOT                        R1 ; [+13]
      273 GETTABLEKS                       R2 R1 K17 ["noQuotes"]
      275 JUMPIF                           R2 ; [+10]
      276 NEWTABLE                         R2 0 1
      278 LOADK                            R3 K35 ["\"%s\""]
      279 MOVE                             R5 R0
      280 NAMECALL                         R3 R3 K14 ["format"]
      282 CALL                             R3 2 -1
      283 SETLIST                          R2 R3 -1 [1]
      285 RETURN                           R2 1
      286 NEWTABLE                         R2 0 1
      288 FASTCALL1                        TOSTRING R0 ; [+3]
      289 MOVE                             R4 R0
      290 GETIMPORT                        R3 K37 [tostring]
      292 CALL                             R3 1 1
      293 SETLIST                          R2 R3 1 [1]
      295 RETURN                           R2 1

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
