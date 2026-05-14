PROTO_0:
        0 GETIMPORT                        R1 K2 [string.find]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["%."]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+2]
        6 LENGTH                           R2 R0
        7 ADDK                             R1 R2 K4 [1]
        8 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+3]
        2 LOADN                            R1 0
        3 RETURN                           R1 1
        4 FASTCALL1                        MATH_ABS R0 ; [+3]
        5 MOVE                             R4 R0
        6 GETIMPORT                        R3 K3 [math.abs]
        8 CALL                             R3 1 1
        9 FASTCALL1                        MATH_LOG10 R3 ; [+2]
       10 GETIMPORT                        R2 K5 [math.log10]
       12 CALL                             R2 1 1
       13 FASTCALL1                        MATH_FLOOR R2 ; [+2]
       14 GETIMPORT                        R1 K7 [math.floor]
       16 CALL                             R1 1 1
       17 ADDK                             R3 R1 K8 [1]
       18 MINUS                            R2 R3
       19 RETURN                           R2 1

PROTO_2:
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+3]
        2 LOADN                            R3 0
        3 JUMP                             ; [+15]
        4 FASTCALL1                        MATH_ABS R0 ; [+3]
        5 MOVE                             R7 R0
        6 GETIMPORT                        R6 K3 [math.abs]
        8 CALL                             R6 1 1
        9 FASTCALL1                        MATH_LOG10 R6 ; [+2]
       10 GETIMPORT                        R5 K5 [math.log10]
       12 CALL                             R5 1 1
       13 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       14 GETIMPORT                        R4 K7 [math.floor]
       16 CALL                             R4 1 1
       17 ADDK                             R5 R4 K8 [1]
       18 MINUS                            R3 R5
       19 LOADN                            R5 10
       20 ADD                              R6 R1 R3
       21 POW                              R4 R5 R6
       22 LOADNIL                          R5
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K9 ["Truncate"]
       26 JUMPIFNOTEQ                      R2 R6 ; [+8]
       28 MUL                              R7 R0 R4
       29 FASTCALL1                        MATH_MODF R7 ; [+2]
       30 GETIMPORT                        R6 K11 [math.modf]
       32 CALL                             R6 1 1
       33 MOVE                             R5 R6
       34 JUMP                             ; [+7]
       35 MUL                              R8 R0 R4
       36 ADDK                             R7 R8 K12 [0.5]
       37 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       38 GETIMPORT                        R6 K7 [math.floor]
       40 CALL                             R6 1 1
       41 MOVE                             R5 R6
       42 DIV                              R6 R5 R4
       43 RETURN                           R6 1

PROTO_3:
        0 MOVE                             R2 R0
        1 GETIMPORT                        R3 K2 [string.format]
        3 LOADK                            R4 K3 ["%%1%s%%2"]
        4 MOVE                             R5 R1
        5 CALL                             R3 2 1
        6 GETIMPORT                        R4 K5 [string.gsub]
        8 MOVE                             R5 R2
        9 LOADK                            R6 K6 ["^(-?%d+)(%d%d%d)"]
       10 MOVE                             R7 R3
       11 CALL                             R4 3 2
       12 MOVE                             R2 R4
       13 JUMPIFEQKN                       R5 K7 [0] ; [+2]
       15 JUMPBACK                         ; [-10]
       16 RETURN                           R2 1

PROTO_4:
        0 GETTABLEN                        R3 R0 1
        1 FASTCALL1                        MATH_ABS R1 ; [+3]
        2 MOVE                             R5 R1
        3 GETIMPORT                        R4 K2 [math.abs]
        5 CALL                             R4 1 1
        6 LENGTH                           R7 R0
        7 LOADN                            R5 2
        8 LOADN                            R6 255
        9 FORNPREP                         R5
       10 GETTABLE                         R8 R0 R7
       11 LOADNIL                          R9
       12 GETUPVAL                         R10 0
       13 GETTABLEKS                       R10 R10 K3 ["Truncate"]
       15 JUMPIFNOTEQ                      R2 R10 ; [+3]
       17 GETTABLEN                        R9 R8 1
       18 JUMP                             ; [+6]
       19 GETTABLEN                        R10 R8 1
       20 SUBK                             R14 R7 K5 [1]
       21 GETTABLE                         R13 R0 R14
       22 GETTABLEN                        R12 R13 1
       23 DIVK                             R11 R12 K4 [2]
       24 SUB                              R9 R10 R11
       25 JUMPIFNOTLE                      R9 R4 ; [+3]
       27 MOVE                             R3 R8
       28 RETURN                           R3 1
       29 FORNLOOP                         R5
       30 RETURN                           R3 1

PROTO_5:
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+3]
        2 LOADK                            R3 K1 ["0"]
        3 RETURN                           R3 1
        4 GETGLOBAL                        R3 K2 ["roundingBehaviour"]
        6 JUMPIFNOTEQKNIL                  R3 ; [+6]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K3 ["RoundToClosest"]
       11 SETGLOBAL                        R3 K2 ["roundingBehaviour"]
       13 JUMPIFNOTEQKNIL                  R2 ; [+2]
       15 LOADN                            R2 3
       16 GETIMPORT                        R3 K6 [string.lower]
       18 MOVE                             R4 R1
       19 CALL                             R3 1 1
       20 LOADK                            R5 K7 ["_"]
       21 LOADK                            R6 K8 ["-"]
       22 NAMECALL                         R3 R3 K9 ["gsub"]
       24 CALL                             R3 3 1
       25 MOVE                             R1 R3
       26 GETUPVAL                         R4 1
       27 GETTABLE                         R3 R4 R1
       28 JUMPIF                           R3 ; [+3]
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R3 R4 K10 ["en-us"]
       32 GETUPVAL                         R4 2
       33 MOVE                             R5 R3
       34 MOVE                             R6 R0
       35 GETGLOBAL                        R7 K2 ["roundingBehaviour"]
       37 CALL                             R4 3 1
       38 GETTABLEN                        R5 R4 1
       39 GETTABLEN                        R6 R4 2
       40 DIV                              R8 R0 R5
       41 MOVE                             R9 R2
       42 GETGLOBAL                        R10 K2 ["roundingBehaviour"]
       44 JUMPIFNOTEQKN                    R8 K0 [0] ; [+3]
       46 LOADN                            R11 0
       47 JUMP                             ; [+15]
       48 FASTCALL1                        MATH_ABS R8 ; [+3]
       49 MOVE                             R15 R8
       50 GETIMPORT                        R14 K13 [math.abs]
       52 CALL                             R14 1 1
       53 FASTCALL1                        MATH_LOG10 R14 ; [+2]
       54 GETIMPORT                        R13 K15 [math.log10]
       56 CALL                             R13 1 1
       57 FASTCALL1                        MATH_FLOOR R13 ; [+2]
       58 GETIMPORT                        R12 K17 [math.floor]
       60 CALL                             R12 1 1
       61 ADDK                             R13 R12 K18 [1]
       62 MINUS                            R11 R13
       63 LOADN                            R13 10
       64 ADD                              R14 R9 R11
       65 POW                              R12 R13 R14
       66 LOADNIL                          R13
       67 GETUPVAL                         R14 0
       68 GETTABLEKS                       R14 R14 K19 ["Truncate"]
       70 JUMPIFNOTEQ                      R10 R14 ; [+8]
       72 MUL                              R15 R8 R12
       73 FASTCALL1                        MATH_MODF R15 ; [+2]
       74 GETIMPORT                        R14 K21 [math.modf]
       76 CALL                             R14 1 1
       77 MOVE                             R13 R14
       78 JUMP                             ; [+7]
       79 MUL                              R16 R8 R12
       80 ADDK                             R15 R16 K22 [0.5]
       81 FASTCALL1                        MATH_FLOOR R15 ; [+2]
       82 GETIMPORT                        R14 K17 [math.floor]
       84 CALL                             R14 1 1
       85 MOVE                             R13 R14
       86 DIV                              R7 R13 R12
       87 LOADNIL                          R8
       88 GETGLOBAL                        R9 K2 ["roundingBehaviour"]
       90 GETUPVAL                         R10 0
       91 GETTABLEKS                       R10 R10 K19 ["Truncate"]
       93 JUMPIFNOTEQ                      R9 R10 ; [+8]
       95 MULK                             R10 R7 K23 [10]
       96 FASTCALL1                        MATH_MODF R10 ; [+2]
       97 GETIMPORT                        R9 K21 [math.modf]
       99 CALL                             R9 1 1
      100 DIVK                             R8 R9 K23 [10]
      101 JUMP                             ; [+7]
      102 MULK                             R11 R7 K23 [10]
      103 ADDK                             R10 R11 K22 [0.5]
      104 FASTCALL1                        MATH_FLOOR R10 ; [+2]
      105 GETIMPORT                        R9 K17 [math.floor]
      107 CALL                             R9 1 1
      108 DIVK                             R8 R9 K23 [10]
      109 FASTCALL1                        TOSTRING R8 ; [+3]
      110 MOVE                             R10 R8
      111 GETIMPORT                        R9 K25 [tostring]
      113 CALL                             R9 1 1
      114 GETIMPORT                        R10 K27 [string.find]
      116 MOVE                             R11 R9
      117 LOADK                            R12 K28 ["%."]
      118 CALL                             R10 2 1
      119 JUMPIF                           R10 ; [+2]
      120 LENGTH                           R11 R9
      121 ADDK                             R10 R11 K18 [1]
      122 LOADN                            R13 1
      123 SUBK                             R14 R10 K18 [1]
      124 FASTCALL3                        STRING_SUB R9 R13 R14
      126 MOVE                             R12 R9
      127 GETIMPORT                        R11 K30 [string.sub]
      129 CALL                             R11 3 1
      130 ADDK                             R14 R10 K18 [1]
      131 LENGTH                           R15 R9
      132 FASTCALL3                        STRING_SUB R9 R14 R15
      134 MOVE                             R13 R9
      135 GETIMPORT                        R12 K30 [string.sub]
      137 CALL                             R12 3 1
      138 GETTABLEKS                       R13 R3 K31 ["groupDelimiter"]
      140 JUMPIFNOT                        R13 ; [+6]
      141 GETUPVAL                         R13 3
      142 MOVE                             R14 R11
      143 GETTABLEKS                       R15 R3 K31 ["groupDelimiter"]
      145 CALL                             R13 2 1
      146 MOVE                             R11 R13
      147 LENGTH                           R13 R12
      148 LOADN                            R14 0
      149 JUMPIFNOTLT                      R14 R13 ; [+8]
      151 MOVE                             R14 R11
      152 GETTABLEKS                       R15 R3 K32 ["decimalSeparator"]
      154 MOVE                             R16 R12
      155 MOVE                             R17 R6
      156 CONCAT                           R13 R14 R17
      157 RETURN                           R13 1
      158 MOVE                             R14 R11
      159 MOVE                             R15 R6
      160 CONCAT                           R13 R14 R15
      161 RETURN                           R13 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 LOADN                            R1 1
        4 SETTABLEKS                       R1 R0 K0 ["RoundToClosest"]
        6 LOADN                            R1 2
        7 SETTABLEKS                       R1 R0 K1 ["Truncate"]
        9 NEWTABLE                         R1 0 0
       11 NEWTABLE                         R2 2 4
       13 LOADK                            R7 K2 ["."]
       14 SETTABLEKS                       R7 R2 K3 ["decimalSeparator"]
       16 LOADK                            R7 K4 [","]
       17 SETTABLEKS                       R7 R2 K5 ["groupDelimiter"]
       19 NEWTABLE                         R3 0 2
       21 LOADN                            R4 1
       22 LOADK                            R5 K6 [""]
       23 SETLIST                          R3 R4 2 [1]
       25 NEWTABLE                         R4 0 2
       27 LOADN                            R5 232
       28 LOADK                            R6 K7 ["K"]
       29 SETLIST                          R4 R5 2 [1]
       31 NEWTABLE                         R5 0 2
       33 LOADK                            R6 K8 [1000000]
       34 LOADK                            R7 K9 ["M"]
       35 SETLIST                          R5 R6 2 [1]
       37 NEWTABLE                         R6 0 2
       39 LOADK                            R7 K10 [1000000000]
       40 LOADK                            R8 K11 ["B"]
       41 SETLIST                          R6 R7 2 [1]
       43 SETLIST                          R2 R3 4 [1]
       45 SETTABLEKS                       R2 R1 K12 ["en-us"]
       47 NEWTABLE                         R2 2 3
       49 LOADK                            R6 K4 [","]
       50 SETTABLEKS                       R6 R2 K3 ["decimalSeparator"]
       52 LOADK                            R6 K2 ["."]
       53 SETTABLEKS                       R6 R2 K5 ["groupDelimiter"]
       55 NEWTABLE                         R3 0 2
       57 LOADN                            R4 1
       58 LOADK                            R5 K6 [""]
       59 SETLIST                          R3 R4 2 [1]
       61 NEWTABLE                         R4 0 2
       63 LOADN                            R5 232
       64 LOADK                            R6 K13 [" mil"]
       65 SETLIST                          R4 R5 2 [1]
       67 NEWTABLE                         R5 0 2
       69 LOADK                            R6 K8 [1000000]
       70 LOADK                            R7 K14 [" M"]
       71 SETLIST                          R5 R6 2 [1]
       73 SETLIST                          R2 R3 3 [1]
       75 SETTABLEKS                       R2 R1 K15 ["es-es"]
       77 NEWTABLE                         R2 2 4
       79 LOADK                            R7 K4 [","]
       80 SETTABLEKS                       R7 R2 K3 ["decimalSeparator"]
       82 LOADK                            R7 K16 [" "]
       83 SETTABLEKS                       R7 R2 K5 ["groupDelimiter"]
       85 NEWTABLE                         R3 0 2
       87 LOADN                            R4 1
       88 LOADK                            R5 K6 [""]
       89 SETLIST                          R3 R4 2 [1]
       91 NEWTABLE                         R4 0 2
       93 LOADN                            R5 232
       94 LOADK                            R6 K17 [" k"]
       95 SETLIST                          R4 R5 2 [1]
       97 NEWTABLE                         R5 0 2
       99 LOADK                            R6 K8 [1000000]
      100 LOADK                            R7 K14 [" M"]
      101 SETLIST                          R5 R6 2 [1]
      103 NEWTABLE                         R6 0 2
      105 LOADK                            R7 K10 [1000000000]
      106 LOADK                            R8 K18 [" Md"]
      107 SETLIST                          R6 R7 2 [1]
      109 SETLIST                          R2 R3 4 [1]
      111 SETTABLEKS                       R2 R1 K19 ["fr-fr"]
      113 NEWTABLE                         R2 2 4
      115 LOADK                            R7 K4 [","]
      116 SETTABLEKS                       R7 R2 K3 ["decimalSeparator"]
      118 LOADK                            R7 K16 [" "]
      119 SETTABLEKS                       R7 R2 K5 ["groupDelimiter"]
      121 NEWTABLE                         R3 0 2
      123 LOADN                            R4 1
      124 LOADK                            R5 K6 [""]
      125 SETLIST                          R3 R4 2 [1]
      127 NEWTABLE                         R4 0 2
      129 LOADN                            R5 232
      130 LOADK                            R6 K20 [" Tsd."]
      131 SETLIST                          R4 R5 2 [1]
      133 NEWTABLE                         R5 0 2
      135 LOADK                            R6 K8 [1000000]
      136 LOADK                            R7 K21 [" Mio."]
      137 SETLIST                          R5 R6 2 [1]
      139 NEWTABLE                         R6 0 2
      141 LOADK                            R7 K10 [1000000000]
      142 LOADK                            R8 K22 [" Mrd."]
      143 SETLIST                          R6 R7 2 [1]
      145 SETLIST                          R2 R3 4 [1]
      147 SETTABLEKS                       R2 R1 K23 ["de-de"]
      149 NEWTABLE                         R2 2 4
      151 LOADK                            R7 K4 [","]
      152 SETTABLEKS                       R7 R2 K3 ["decimalSeparator"]
      154 LOADK                            R7 K2 ["."]
      155 SETTABLEKS                       R7 R2 K5 ["groupDelimiter"]
      157 NEWTABLE                         R3 0 2
      159 LOADN                            R4 1
      160 LOADK                            R5 K6 [""]
      161 SETLIST                          R3 R4 2 [1]
      163 NEWTABLE                         R4 0 2
      165 LOADN                            R5 232
      166 LOADK                            R6 K13 [" mil"]
      167 SETLIST                          R4 R5 2 [1]
      169 NEWTABLE                         R5 0 2
      171 LOADK                            R6 K8 [1000000]
      172 LOADK                            R7 K24 [" mi"]
      173 SETLIST                          R5 R6 2 [1]
      175 NEWTABLE                         R6 0 2
      177 LOADK                            R7 K10 [1000000000]
      178 LOADK                            R8 K25 [" bi"]
      179 SETLIST                          R6 R7 2 [1]
      181 SETLIST                          R2 R3 4 [1]
      183 SETTABLEKS                       R2 R1 K26 ["pt-br"]
      185 NEWTABLE                         R2 2 4
      187 LOADK                            R7 K2 ["."]
      188 SETTABLEKS                       R7 R2 K3 ["decimalSeparator"]
      190 LOADK                            R7 K4 [","]
      191 SETTABLEKS                       R7 R2 K5 ["groupDelimiter"]
      193 NEWTABLE                         R3 0 2
      195 LOADN                            R4 1
      196 LOADK                            R5 K6 [""]
      197 SETLIST                          R3 R4 2 [1]
      199 NEWTABLE                         R4 0 2
      201 LOADN                            R5 232
      202 LOADK                            R6 K27 ["千"]
      203 SETLIST                          R4 R5 2 [1]
      205 NEWTABLE                         R5 0 2
      207 LOADN                            R6 16
      208 LOADK                            R7 K28 ["万"]
      209 SETLIST                          R5 R6 2 [1]
      211 NEWTABLE                         R6 0 2
      213 LOADK                            R7 K29 [100000000]
      214 LOADK                            R8 K30 ["亿"]
      215 SETLIST                          R6 R7 2 [1]
      217 SETLIST                          R2 R3 4 [1]
      219 SETTABLEKS                       R2 R1 K31 ["zh-cn"]
      221 NEWTABLE                         R2 2 4
      223 LOADK                            R7 K2 ["."]
      224 SETTABLEKS                       R7 R2 K3 ["decimalSeparator"]
      226 LOADK                            R7 K4 [","]
      227 SETTABLEKS                       R7 R2 K5 ["groupDelimiter"]
      229 NEWTABLE                         R3 0 2
      231 LOADN                            R4 1
      232 LOADK                            R5 K6 [""]
      233 SETLIST                          R3 R4 2 [1]
      235 NEWTABLE                         R4 0 2
      237 LOADN                            R5 232
      238 LOADK                            R6 K27 ["千"]
      239 SETLIST                          R4 R5 2 [1]
      241 NEWTABLE                         R5 0 2
      243 LOADN                            R6 16
      244 LOADK                            R7 K28 ["万"]
      245 SETLIST                          R5 R6 2 [1]
      247 NEWTABLE                         R6 0 2
      249 LOADK                            R7 K29 [100000000]
      250 LOADK                            R8 K30 ["亿"]
      251 SETLIST                          R6 R7 2 [1]
      253 SETLIST                          R2 R3 4 [1]
      255 SETTABLEKS                       R2 R1 K32 ["zh-cjv"]
      257 NEWTABLE                         R2 2 4
      259 LOADK                            R7 K2 ["."]
      260 SETTABLEKS                       R7 R2 K3 ["decimalSeparator"]
      262 LOADK                            R7 K4 [","]
      263 SETTABLEKS                       R7 R2 K5 ["groupDelimiter"]
      265 NEWTABLE                         R3 0 2
      267 LOADN                            R4 1
      268 LOADK                            R5 K6 [""]
      269 SETLIST                          R3 R4 2 [1]
      271 NEWTABLE                         R4 0 2
      273 LOADN                            R5 232
      274 LOADK                            R6 K27 ["千"]
      275 SETLIST                          R4 R5 2 [1]
      277 NEWTABLE                         R5 0 2
      279 LOADN                            R6 16
      280 LOADK                            R7 K33 ["萬"]
      281 SETLIST                          R5 R6 2 [1]
      283 NEWTABLE                         R6 0 2
      285 LOADK                            R7 K29 [100000000]
      286 LOADK                            R8 K34 ["億"]
      287 SETLIST                          R6 R7 2 [1]
      289 SETLIST                          R2 R3 4 [1]
      291 SETTABLEKS                       R2 R1 K35 ["zh-tw"]
      293 NEWTABLE                         R2 2 4
      295 LOADK                            R7 K2 ["."]
      296 SETTABLEKS                       R7 R2 K3 ["decimalSeparator"]
      298 LOADK                            R7 K4 [","]
      299 SETTABLEKS                       R7 R2 K5 ["groupDelimiter"]
      301 NEWTABLE                         R3 0 2
      303 LOADN                            R4 1
      304 LOADK                            R5 K6 [""]
      305 SETLIST                          R3 R4 2 [1]
      307 NEWTABLE                         R4 0 2
      309 LOADN                            R5 232
      310 LOADK                            R6 K36 ["천"]
      311 SETLIST                          R4 R5 2 [1]
      313 NEWTABLE                         R5 0 2
      315 LOADN                            R6 16
      316 LOADK                            R7 K37 ["만"]
      317 SETLIST                          R5 R6 2 [1]
      319 NEWTABLE                         R6 0 2
      321 LOADK                            R7 K29 [100000000]
      322 LOADK                            R8 K38 ["억"]
      323 SETLIST                          R6 R7 2 [1]
      325 SETLIST                          R2 R3 4 [1]
      327 SETTABLEKS                       R2 R1 K39 ["ko-kr"]
      329 NEWTABLE                         R2 2 4
      331 LOADK                            R7 K2 ["."]
      332 SETTABLEKS                       R7 R2 K3 ["decimalSeparator"]
      334 LOADK                            R7 K4 [","]
      335 SETTABLEKS                       R7 R2 K5 ["groupDelimiter"]
      337 NEWTABLE                         R3 0 2
      339 LOADN                            R4 1
      340 LOADK                            R5 K6 [""]
      341 SETLIST                          R3 R4 2 [1]
      343 NEWTABLE                         R4 0 2
      345 LOADN                            R5 232
      346 LOADK                            R6 K27 ["千"]
      347 SETLIST                          R4 R5 2 [1]
      349 NEWTABLE                         R5 0 2
      351 LOADN                            R6 16
      352 LOADK                            R7 K28 ["万"]
      353 SETLIST                          R5 R6 2 [1]
      355 NEWTABLE                         R6 0 2
      357 LOADK                            R7 K29 [100000000]
      358 LOADK                            R8 K34 ["億"]
      359 SETLIST                          R6 R7 2 [1]
      361 SETLIST                          R2 R3 4 [1]
      363 SETTABLEKS                       R2 R1 K40 ["ja-jp"]
      365 NEWTABLE                         R2 2 4
      367 LOADK                            R7 K4 [","]
      368 SETTABLEKS                       R7 R2 K3 ["decimalSeparator"]
      370 LOADK                            R7 K16 [" "]
      371 SETTABLEKS                       R7 R2 K5 ["groupDelimiter"]
      373 NEWTABLE                         R3 0 2
      375 LOADN                            R4 1
      376 LOADK                            R5 K6 [""]
      377 SETLIST                          R3 R4 2 [1]
      379 NEWTABLE                         R4 0 2
      381 LOADN                            R5 232
      382 LOADK                            R6 K41 [" mila"]
      383 SETLIST                          R4 R5 2 [1]
      385 NEWTABLE                         R5 0 2
      387 LOADK                            R6 K8 [1000000]
      388 LOADK                            R7 K42 [" Mln"]
      389 SETLIST                          R5 R6 2 [1]
      391 NEWTABLE                         R6 0 2
      393 LOADK                            R7 K10 [1000000000]
      394 LOADK                            R8 K43 [" Mld"]
      395 SETLIST                          R6 R7 2 [1]
      397 SETLIST                          R2 R3 4 [1]
      399 SETTABLEKS                       R2 R1 K44 ["it-it"]
      401 NEWTABLE                         R2 2 4
      403 LOADK                            R7 K4 [","]
      404 SETTABLEKS                       R7 R2 K3 ["decimalSeparator"]
      406 LOADK                            R7 K2 ["."]
      407 SETTABLEKS                       R7 R2 K5 ["groupDelimiter"]
      409 NEWTABLE                         R3 0 2
      411 LOADN                            R4 1
      412 LOADK                            R5 K6 [""]
      413 SETLIST                          R3 R4 2 [1]
      415 NEWTABLE                         R4 0 2
      417 LOADN                            R5 232
      418 LOADK                            R6 K45 [" тыс"]
      419 SETLIST                          R4 R5 2 [1]
      421 NEWTABLE                         R5 0 2
      423 LOADK                            R6 K8 [1000000]
      424 LOADK                            R7 K46 [" млн"]
      425 SETLIST                          R5 R6 2 [1]
      427 NEWTABLE                         R6 0 2
      429 LOADK                            R7 K10 [1000000000]
      430 LOADK                            R8 K47 [" млрд"]
      431 SETLIST                          R6 R7 2 [1]
      433 SETLIST                          R2 R3 4 [1]
      435 SETTABLEKS                       R2 R1 K48 ["ru-ru"]
      437 NEWTABLE                         R2 2 4
      439 LOADK                            R7 K4 [","]
      440 SETTABLEKS                       R7 R2 K3 ["decimalSeparator"]
      442 LOADK                            R7 K2 ["."]
      443 SETTABLEKS                       R7 R2 K5 ["groupDelimiter"]
      445 NEWTABLE                         R3 0 2
      447 LOADN                            R4 1
      448 LOADK                            R5 K6 [""]
      449 SETLIST                          R3 R4 2 [1]
      451 NEWTABLE                         R4 0 2
      453 LOADN                            R5 232
      454 LOADK                            R6 K49 [" rb"]
      455 SETLIST                          R4 R5 2 [1]
      457 NEWTABLE                         R5 0 2
      459 LOADK                            R6 K8 [1000000]
      460 LOADK                            R7 K50 [" jt"]
      461 SETLIST                          R5 R6 2 [1]
      463 NEWTABLE                         R6 0 2
      465 LOADK                            R7 K10 [1000000000]
      466 LOADK                            R8 K14 [" M"]
      467 SETLIST                          R6 R7 2 [1]
      469 SETLIST                          R2 R3 4 [1]
      471 SETTABLEKS                       R2 R1 K51 ["id-id"]
      473 NEWTABLE                         R2 2 4
      475 LOADK                            R7 K2 ["."]
      476 SETTABLEKS                       R7 R2 K3 ["decimalSeparator"]
      478 LOADK                            R7 K16 [" "]
      479 SETTABLEKS                       R7 R2 K5 ["groupDelimiter"]
      481 NEWTABLE                         R3 0 2
      483 LOADN                            R4 1
      484 LOADK                            R5 K6 [""]
      485 SETLIST                          R3 R4 2 [1]
      487 NEWTABLE                         R4 0 2
      489 LOADN                            R5 232
      490 LOADK                            R6 K52 [" N"]
      491 SETLIST                          R4 R5 2 [1]
      493 NEWTABLE                         R5 0 2
      495 LOADK                            R6 K8 [1000000]
      496 LOADK                            R7 K53 [" Tr"]
      497 SETLIST                          R5 R6 2 [1]
      499 NEWTABLE                         R6 0 2
      501 LOADK                            R7 K10 [1000000000]
      502 LOADK                            R8 K54 [" T"]
      503 SETLIST                          R6 R7 2 [1]
      505 SETLIST                          R2 R3 4 [1]
      507 SETTABLEKS                       R2 R1 K55 ["vi-vn"]
      509 NEWTABLE                         R2 2 4
      511 LOADK                            R7 K4 [","]
      512 SETTABLEKS                       R7 R2 K3 ["decimalSeparator"]
      514 LOADK                            R7 K2 ["."]
      515 SETTABLEKS                       R7 R2 K5 ["groupDelimiter"]
      517 NEWTABLE                         R3 0 2
      519 LOADN                            R4 1
      520 LOADK                            R5 K6 [""]
      521 SETLIST                          R3 R4 2 [1]
      523 NEWTABLE                         R4 0 2
      525 LOADN                            R5 232
      526 LOADK                            R6 K56 [" B"]
      527 SETLIST                          R4 R5 2 [1]
      529 NEWTABLE                         R5 0 2
      531 LOADK                            R6 K8 [1000000]
      532 LOADK                            R7 K57 [" Mn"]
      533 SETLIST                          R5 R6 2 [1]
      535 NEWTABLE                         R6 0 2
      537 LOADK                            R7 K10 [1000000000]
      538 LOADK                            R8 K58 [" Mr"]
      539 SETLIST                          R6 R7 2 [1]
      541 SETLIST                          R2 R3 4 [1]
      543 SETTABLEKS                       R2 R1 K59 ["tr-tr"]
      545 GETTABLEKS                       R2 R1 K12 ["en-us"]
      547 SETTABLEKS                       R2 R1 K60 ["en-gb"]
      549 GETTABLEKS                       R2 R1 K15 ["es-es"]
      551 SETTABLEKS                       R2 R1 K61 ["es-mx"]
      553 GETTABLEKS                       R2 R1 K12 ["en-us"]
      555 SETTABLEKS                       R2 R1 K62 ["th-th"]
      557 DUPCLOSURE                       R2 K63 [PROTO_0]
      558 DUPCLOSURE                       R3 K64 [PROTO_1]
      559 DUPCLOSURE                       R4 K65 [PROTO_2]
      560 CAPTURE                          VAL R0
      561 DUPCLOSURE                       R5 K66 [PROTO_3]
      562 DUPCLOSURE                       R6 K67 [PROTO_4]
      563 CAPTURE                          VAL R0
      564 DUPCLOSURE                       R7 K68 [PROTO_5]
      565 CAPTURE                          VAL R0
      566 CAPTURE                          VAL R1
      567 CAPTURE                          VAL R6
      568 CAPTURE                          VAL R5
      569 RETURN                           R7 1
