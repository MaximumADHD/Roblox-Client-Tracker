PROTO_0:
        0 NEWTABLE                         R7 0 0
        2 LENGTH                           R8 R1
        3 MUL                              R11 R0 R3
        4 GETIMPORT                        R14 K4 [math.random]
        6 CALL                             R14 0 1
        7 MULK                             R13 R14 K1 [2]
        8 SUBK                             R12 R13 K0 [1]
        9 MUL                              R10 R11 R12
       10 ADD                              R9 R0 R10
       11 LOADN                            R12 1
       12 MOVE                             R10 R8
       13 LOADN                            R11 1
       14 FORNPREP                         R10
       15 GETTABLE                         R15 R1 R12
       16 GETTABLE                         R14 R15 R2
       17 GETTABLEN                        R13 R14 1
       18 JUMPIFNOTLE                      R13 R9 ; [+13]
       20 GETTABLE                         R15 R1 R12
       21 GETTABLE                         R14 R15 R2
       22 GETTABLEN                        R13 R14 2
       23 JUMPIFNOTLE                      R9 R13 ; [+8]
       25 GETTABLE                         R15 R1 R12
       26 FASTCALL2                        TABLE_INSERT R7 R15 ; [+4]
       28 MOVE                             R14 R7
       29 GETIMPORT                        R13 K7 [table.insert]
       31 CALL                             R13 2 0
       32 FORNLOOP                         R10
       33 LENGTH                           R10 R7
       34 JUMPIFNOTEQKN                    R10 K8 [0] ; [+24]
       36 JUMPIFNOT                        R4 ; [+22]
       37 GETTABLE                         R11 R5 R2
       38 GETTABLEN                        R10 R11 1
       39 JUMPIFNOTLT                      R9 R10 ; [+7]
       41 NEWTABLE                         R10 0 1
       43 MOVE                             R11 R5
       44 SETLIST                          R10 R11 1 [1]
       46 RETURN                           R10 1
       47 GETTABLE                         R11 R6 R2
       48 GETTABLEN                        R10 R11 2
       49 JUMPIFNOTLT                      R10 R9 ; [+7]
       51 NEWTABLE                         R10 0 1
       53 MOVE                             R11 R6
       54 SETLIST                          R10 R11 1 [1]
       56 RETURN                           R10 1
       57 LOADNIL                          R10
       58 RETURN                           R10 1
       59 RETURN                           R7 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["priority"]
        2 GETTABLEKS                       R4 R1 K0 ["priority"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["Unit"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["MaterialUnit"]
        5 GETTABLEKS                       R3 R3 K2 ["Percentage"]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 GETTABLEKS                       R2 R0 K3 ["MaterialList"]
       13 GETTABLEKS                       R3 R0 K4 ["FillMaterial"]
       15 GETTABLEKS                       R4 R0 K5 ["FallbackMaterial"]
       17 GETIMPORT                        R5 K8 [table.create]
       19 LOADK                            R6 K9 [1050624]
       20 MOVE                             R7 R4
       21 CALL                             R5 2 1
       22 GETTABLEKS                       R6 R0 K10 ["Min"]
       24 GETTABLEKS                       R7 R0 K11 ["Max"]
       26 NEWTABLE                         R8 0 0
       28 GETIMPORT                        R9 K13 [ipairs]
       30 MOVE                             R10 R2
       31 CALL                             R9 1 3
       32 FORGPREP_INEXT                   R9
       33 NEWTABLE                         R14 4 0
       35 JUMPIFNOT                        R1 ; [+49]
       36 LOADB                            R16 0
       37 GETTABLEKS                       R17 R13 K14 ["MinHeight"]
       39 LOADN                            R18 1
       40 JUMPIFNOTLE                      R17 R18 ; [+8]
       42 GETTABLEKS                       R17 R13 K14 ["MinHeight"]
       44 LOADN                            R18 0
       45 JUMPIFLE                         R18 R17 ; [+2]
       47 LOADB                            R16 0 +1
       48 LOADB                            R16 1
       49 FASTCALL2K                       ASSERT R16 K15 ; [+4]
       51 LOADK                            R17 K15 ["invalid minimum height input!"]
       52 GETIMPORT                        R15 K17 [assert]
       54 CALL                             R15 2 0
       55 LOADB                            R16 0
       56 GETTABLEKS                       R17 R13 K18 ["MaxHeight"]
       58 LOADN                            R18 1
       59 JUMPIFNOTLE                      R17 R18 ; [+8]
       61 GETTABLEKS                       R17 R13 K18 ["MaxHeight"]
       63 LOADN                            R18 0
       64 JUMPIFLE                         R18 R17 ; [+2]
       66 LOADB                            R16 0 +1
       67 LOADB                            R16 1
       68 FASTCALL2K                       ASSERT R16 K19 ; [+4]
       70 LOADK                            R17 K19 ["invalid maximum height input!"]
       71 GETIMPORT                        R15 K17 [assert]
       73 CALL                             R15 2 0
       74 NEWTABLE                         R15 0 2
       76 GETTABLEKS                       R16 R13 K14 ["MinHeight"]
       78 GETTABLEKS                       R17 R13 K18 ["MaxHeight"]
       80 SETLIST                          R15 R16 2 [1]
       82 SETTABLEKS                       R15 R14 K20 ["heightRange"]
       84 JUMP                             ; [+48]
       85 LOADB                            R16 0
       86 GETTABLEKS                       R17 R13 K14 ["MinHeight"]
       88 GETTABLEKS                       R18 R13 K18 ["MaxHeight"]
       90 JUMPIFNOTLE                      R17 R18 ; [+8]
       92 GETTABLEKS                       R17 R13 K14 ["MinHeight"]
       94 LOADN                            R18 0
       95 JUMPIFLE                         R18 R17 ; [+2]
       97 LOADB                            R16 0 +1
       98 LOADB                            R16 1
       99 FASTCALL2K                       ASSERT R16 K15 ; [+4]
      101 LOADK                            R17 K15 ["invalid minimum height input!"]
      102 GETIMPORT                        R15 K17 [assert]
      104 CALL                             R15 2 0
      105 NEWTABLE                         R15 0 2
      107 GETTABLEKS                       R16 R13 K14 ["MinHeight"]
      109 GETTABLEKS                       R17 R13 K18 ["MaxHeight"]
      111 SETLIST                          R15 R16 2 [1]
      113 SETTABLEKS                       R15 R14 K20 ["heightRange"]
      115 GETTABLEKS                       R17 R13 K14 ["MinHeight"]
      117 FASTCALL2                        MATH_MIN R6 R17 ; [+4]
      119 MOVE                             R16 R6
      120 GETIMPORT                        R15 K23 [math.min]
      122 CALL                             R15 2 1
      123 MOVE                             R6 R15
      124 GETTABLEKS                       R17 R13 K18 ["MaxHeight"]
      126 FASTCALL2                        MATH_MAX R7 R17 ; [+4]
      128 MOVE                             R16 R7
      129 GETIMPORT                        R15 K25 [math.max]
      131 CALL                             R15 2 1
      132 MOVE                             R7 R15
      133 GETTABLEKS                       R17 R13 K26 ["MinSlope"]
      135 GETTABLEKS                       R18 R13 K27 ["MaxSlope"]
      137 JUMPIFLE                         R17 R18 ; [+2]
      139 LOADB                            R16 0 +1
      140 LOADB                            R16 1
      141 FASTCALL2K                       ASSERT R16 K28 ; [+4]
      143 LOADK                            R17 K28 ["invalid slope input!"]
      144 GETIMPORT                        R15 K17 [assert]
      146 CALL                             R15 2 0
      147 LOADB                            R16 0
      148 GETTABLEKS                       R17 R13 K26 ["MinSlope"]
      150 LOADN                            R18 90
      151 JUMPIFNOTLE                      R17 R18 ; [+8]
      153 GETTABLEKS                       R17 R13 K26 ["MinSlope"]
      155 LOADN                            R18 0
      156 JUMPIFLE                         R18 R17 ; [+2]
      158 LOADB                            R16 0 +1
      159 LOADB                            R16 1
      160 FASTCALL2K                       ASSERT R16 K29 ; [+4]
      162 LOADK                            R17 K29 ["invalid minimum slope input!"]
      163 GETIMPORT                        R15 K17 [assert]
      165 CALL                             R15 2 0
      166 LOADB                            R16 0
      167 GETTABLEKS                       R17 R13 K27 ["MaxSlope"]
      169 LOADN                            R18 90
      170 JUMPIFNOTLE                      R17 R18 ; [+8]
      172 GETTABLEKS                       R17 R13 K27 ["MaxSlope"]
      174 LOADN                            R18 0
      175 JUMPIFLE                         R18 R17 ; [+2]
      177 LOADB                            R16 0 +1
      178 LOADB                            R16 1
      179 FASTCALL2K                       ASSERT R16 K30 ; [+4]
      181 LOADK                            R17 K30 ["invalid maximum slope input!"]
      182 GETIMPORT                        R15 K17 [assert]
      184 CALL                             R15 2 0
      185 NEWTABLE                         R15 0 2
      187 GETTABLEKS                       R18 R13 K26 ["MinSlope"]
      189 DIVK                             R17 R18 K32 [180]
      190 MULK                             R16 R17 K31 [3.14159265358979]
      191 GETTABLEKS                       R19 R13 K27 ["MaxSlope"]
      193 DIVK                             R18 R19 K32 [180]
      194 MULK                             R17 R18 K31 [3.14159265358979]
      195 SETLIST                          R15 R16 2 [1]
      197 SETTABLEKS                       R15 R14 K33 ["slopeRange"]
      199 GETTABLEKS                       R15 R13 K34 ["Material"]
      201 SETTABLEKS                       R15 R14 K35 ["value"]
      203 GETTABLEKS                       R15 R13 K36 ["Priority"]
      205 SETTABLEKS                       R15 R14 K37 ["priority"]
      207 FASTCALL2                        TABLE_INSERT R8 R14 ; [+5]
      209 MOVE                             R16 R8
      210 MOVE                             R17 R14
      211 GETIMPORT                        R15 K39 [table.insert]
      213 CALL                             R15 2 0
      214 FORGLOOP                         R9 2 [inext] ; [-182]
      216 GETIMPORT                        R9 K41 [table.sort]
      218 MOVE                             R10 R8
      219 GETUPVAL                         R11 1
      220 CALL                             R9 2 0
      221 LOADN                            R11 1
      222 LOADN                            R9 1024
      223 LOADN                            R10 1
      224 FORNPREP                         R9
      225 SUBK                             R13 R11 K43 [1]
      226 DIVK                             R12 R13 K42 [1023]
      227 LOADNIL                          R13
      228 JUMPIFNOT                        R1 ; [+9]
      229 GETUPVAL                         R14 2
      230 MOVE                             R15 R12
      231 MOVE                             R16 R8
      232 LOADK                            R17 K20 ["heightRange"]
      233 LOADN                            R18 0
      234 LOADB                            R19 0
      235 CALL                             R14 5 1
      236 MOVE                             R13 R14
      237 JUMP                             ; [+10]
      238 GETUPVAL                         R14 2
      239 SUB                              R17 R7 R6
      240 MUL                              R16 R12 R17
      241 ADD                              R15 R16 R6
      242 MOVE                             R16 R8
      243 LOADK                            R17 K20 ["heightRange"]
      244 LOADN                            R18 0
      245 LOADB                            R19 0
      246 CALL                             R14 5 1
      247 MOVE                             R13 R14
      248 LOADN                            R16 1
      249 LOADN                            R14 1024
      250 LOADN                            R15 1
      251 FORNPREP                         R14
      252 JUMPIFNOT                        R13 ; [+3]
      253 LENGTH                           R17 R13
      254 JUMPIFNOTEQKN                    R17 K44 [0] ; [+5]
      256 MULK                             R18 R11 K45 [1024]
      257 ADD                              R17 R18 R16
      258 SETTABLE                         R4 R5 R17
      259 JUMP                             ; [+23]
      260 SUBK                             R19 R16 K43 [1]
      261 DIVK                             R18 R19 K42 [1023]
      262 MULK                             R17 R18 K46 [1.5707963267949]
      263 GETUPVAL                         R18 2
      264 MOVE                             R19 R17
      265 MOVE                             R20 R13
      266 LOADK                            R21 K33 ["slopeRange"]
      267 LOADN                            R22 0
      268 LOADB                            R23 0
      269 CALL                             R18 5 1
      270 JUMPIFNOT                        R18 ; [+8]
      271 LENGTH                           R20 R18
      272 LOADN                            R21 0
      273 JUMPIFNOTLT                      R21 R20 ; [+5]
      275 GETTABLEN                        R19 R18 1
      276 GETTABLEKS                       R19 R19 K35 ["value"]
      278 JUMP                             ; [+1]
      279 MOVE                             R19 R4
      280 MULK                             R21 R11 K45 [1024]
      281 ADD                              R20 R21 R16
      282 SETTABLE                         R19 R5 R20
      283 FORNLOOP                         R14
      284 FORNLOOP                         R9
      285 NEWTABLE                         R10 16 0
      287 GETUPVAL                         R11 3
      288 FASTCALL2                        SETMETATABLE R10 R11 ; [+3]
      290 GETIMPORT                        R9 K48 [setmetatable]
      292 CALL                             R9 2 1
      293 SETTABLEKS                       R5 R9 K49 ["_lut"]
      295 SETTABLEKS                       R1 R9 K50 ["_isPercentage"]
      297 NEWTABLE                         R10 0 2
      299 LOADN                            R11 1024
      300 LOADN                            R12 1024
      301 SETLIST                          R10 R11 2 [1]
      303 SETTABLEKS                       R10 R9 K51 ["_resolution"]
      305 GETTABLEKS                       R10 R9 K50 ["_isPercentage"]
      307 JUMPIFNOT                        R10 ; [+5]
      308 GETTABLEKS                       R10 R9 K52 ["_getValuePercentage"]
      310 SETTABLEKS                       R10 R9 K53 ["GetValue"]
      312 JUMP                             ; [+4]
      313 GETTABLEKS                       R10 R9 K54 ["_getValueStud"]
      315 SETTABLEKS                       R10 R9 K53 ["GetValue"]
      317 GETTABLEKS                       R10 R9 K50 ["_isPercentage"]
      319 JUMPIFNOT                        R10 ; [+5]
      320 GETTABLEKS                       R10 R9 K55 ["_getValuePercentageSlopeIndex"]
      322 SETTABLEKS                       R10 R9 K56 ["GetValueByIndex"]
      324 JUMP                             ; [+4]
      325 GETTABLEKS                       R10 R9 K57 ["_getValueStudSlopeIndex"]
      327 SETTABLEKS                       R10 R9 K56 ["GetValueByIndex"]
      329 SETTABLEKS                       R7 R9 K58 ["_maxHeight"]
      331 SETTABLEKS                       R6 R9 K59 ["_minHeight"]
      333 SUB                              R10 R7 R6
      334 SETTABLEKS                       R10 R9 K60 ["_heightRange"]
      336 SETTABLEKS                       R4 R9 K61 ["fallbackMaterial"]
      338 SETTABLEKS                       R3 R9 K62 ["fillMaterial"]
      340 GETTABLEKS                       R10 R9 K63 ["_getSlopeIndex"]
      342 SETTABLEKS                       R10 R9 K64 ["GetSlopeIndex"]
      344 RETURN                           R9 1

PROTO_3:
        0 DIVK                             R6 R1 K2 [1.5707963267949]
        1 MULK                             R5 R6 K1 [1023]
        2 ADDK                             R4 R5 K0 [1]
        3 FASTCALL1                        MATH_FLOOR R4 ; [+2]
        4 GETIMPORT                        R3 K5 [math.floor]
        6 CALL                             R3 1 1
        7 LOADN                            R4 1
        8 LOADN                            R5 1024
        9 FASTCALL                         MATH_CLAMP ; [+2]
       10 GETIMPORT                        R2 K7 [math.clamp]
       12 CALL                             R2 3 1
       13 RETURN                           R2 1

PROTO_4:
        0 DIV                              R8 R1 R2
        1 MULK                             R7 R8 K1 [1023]
        2 ADDK                             R6 R7 K0 [1]
        3 FASTCALL1                        MATH_FLOOR R6 ; [+2]
        4 GETIMPORT                        R5 K4 [math.floor]
        6 CALL                             R5 1 1
        7 LOADN                            R6 0
        8 LOADN                            R7 1025
        9 FASTCALL                         MATH_CLAMP ; [+2]
       10 GETIMPORT                        R4 K6 [math.clamp]
       12 CALL                             R4 3 1
       13 DIVK                             R9 R3 K7 [1.5707963267949]
       14 MULK                             R8 R9 K1 [1023]
       15 ADDK                             R7 R8 K0 [1]
       16 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       17 GETIMPORT                        R6 K4 [math.floor]
       19 CALL                             R6 1 1
       20 LOADN                            R7 1
       21 LOADN                            R8 1024
       22 FASTCALL                         MATH_CLAMP ; [+2]
       23 GETIMPORT                        R5 K6 [math.clamp]
       25 CALL                             R5 3 1
       26 GETTABLEKS                       R7 R0 K8 ["_lut"]
       28 MULK                             R9 R4 K9 [1024]
       29 ADD                              R8 R9 R5
       30 GETTABLE                         R6 R7 R8
       31 RETURN                           R6 1

PROTO_5:
        0 GETUPVAL                         R11 0
        1 GETTABLEKS                       R11 R11 K2 ["VoxelResolution"]
        3 MUL                              R10 R1 R11
        4 GETTABLEKS                       R11 R0 K3 ["_minHeight"]
        6 SUB                              R9 R10 R11
        7 GETTABLEKS                       R10 R0 K4 ["_heightRange"]
        9 DIV                              R8 R9 R10
       10 MULK                             R7 R8 K1 [1023]
       11 ADDK                             R6 R7 K0 [1]
       12 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       13 GETIMPORT                        R5 K7 [math.floor]
       15 CALL                             R5 1 1
       16 LOADN                            R6 0
       17 LOADN                            R7 1025
       18 FASTCALL                         MATH_CLAMP ; [+2]
       19 GETIMPORT                        R4 K9 [math.clamp]
       21 CALL                             R4 3 1
       22 DIVK                             R9 R3 K10 [1.5707963267949]
       23 MULK                             R8 R9 K1 [1023]
       24 ADDK                             R7 R8 K0 [1]
       25 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       26 GETIMPORT                        R6 K7 [math.floor]
       28 CALL                             R6 1 1
       29 LOADN                            R7 1
       30 LOADN                            R8 1024
       31 FASTCALL                         MATH_CLAMP ; [+2]
       32 GETIMPORT                        R5 K9 [math.clamp]
       34 CALL                             R5 3 1
       35 GETTABLEKS                       R7 R0 K11 ["_lut"]
       37 MULK                             R9 R4 K12 [1024]
       38 ADD                              R8 R9 R5
       39 GETTABLE                         R6 R7 R8
       40 RETURN                           R6 1

PROTO_6:
        0 DIV                              R8 R1 R2
        1 MULK                             R7 R8 K1 [1023]
        2 ADDK                             R6 R7 K0 [1]
        3 FASTCALL1                        MATH_FLOOR R6 ; [+2]
        4 GETIMPORT                        R5 K4 [math.floor]
        6 CALL                             R5 1 1
        7 LOADN                            R6 0
        8 LOADN                            R7 1025
        9 FASTCALL                         MATH_CLAMP ; [+2]
       10 GETIMPORT                        R4 K6 [math.clamp]
       12 CALL                             R4 3 1
       13 GETTABLEKS                       R6 R0 K7 ["_lut"]
       15 MULK                             R8 R4 K8 [1024]
       16 ADD                              R7 R8 R3
       17 GETTABLE                         R5 R6 R7
       18 RETURN                           R5 1

PROTO_7:
        0 GETUPVAL                         R11 0
        1 GETTABLEKS                       R11 R11 K2 ["VoxelResolution"]
        3 MUL                              R10 R1 R11
        4 GETTABLEKS                       R11 R0 K3 ["_minHeight"]
        6 SUB                              R9 R10 R11
        7 GETTABLEKS                       R10 R0 K4 ["_heightRange"]
        9 DIV                              R8 R9 R10
       10 MULK                             R7 R8 K1 [1023]
       11 ADDK                             R6 R7 K0 [1]
       12 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       13 GETIMPORT                        R5 K7 [math.floor]
       15 CALL                             R5 1 1
       16 LOADN                            R6 0
       17 LOADN                            R7 1025
       18 FASTCALL                         MATH_CLAMP ; [+2]
       19 GETIMPORT                        R4 K9 [math.clamp]
       21 CALL                             R4 3 1
       22 GETTABLEKS                       R6 R0 K10 ["_lut"]
       24 MULK                             R8 R4 K11 [1024]
       25 ADD                              R7 R8 R3
       26 GETTABLE                         R5 R6 R7
       27 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 GETIMPORT                        R1 K2 [script]
        7 LOADK                            R3 K3 ["TerrainEditor"]
        8 NAMECALL                         R1 R1 K4 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R3 R1 K7 ["Src"]
       15 GETTABLEKS                       R3 R3 K8 ["Types"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Src"]
       22 GETTABLEKS                       R4 R4 K9 ["Resources"]
       24 GETTABLEKS                       R4 R4 K10 ["Constants"]
       26 CALL                             R3 1 1
       27 DUPCLOSURE                       R4 K11 [PROTO_0]
       28 DUPCLOSURE                       R5 K12 [PROTO_1]
       29 DUPCLOSURE                       R6 K13 [PROTO_2]
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R5
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R0
       34 SETTABLEKS                       R6 R0 K14 ["new"]
       36 DUPCLOSURE                       R6 K15 [PROTO_3]
       37 SETTABLEKS                       R6 R0 K16 ["_getSlopeIndex"]
       39 DUPCLOSURE                       R6 K17 [PROTO_4]
       40 SETTABLEKS                       R6 R0 K18 ["_getValuePercentage"]
       42 DUPCLOSURE                       R6 K19 [PROTO_5]
       43 CAPTURE                          VAL R3
       44 SETTABLEKS                       R6 R0 K20 ["_getValueStud"]
       46 DUPCLOSURE                       R6 K21 [PROTO_6]
       47 SETTABLEKS                       R6 R0 K22 ["_getValuePercentageSlopeIndex"]
       49 DUPCLOSURE                       R6 K23 [PROTO_7]
       50 CAPTURE                          VAL R3
       51 SETTABLEKS                       R6 R0 K24 ["_getValueStudSlopeIndex"]
       53 RETURN                           R0 1
