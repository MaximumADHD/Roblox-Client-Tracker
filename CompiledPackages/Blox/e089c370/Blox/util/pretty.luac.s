PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 RETURN                           R0 1

PROTO_1:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+11]
        7 GETIMPORT                        R2 K4 [string.format]
        9 LOADK                            R3 K5 ["%q"]
       10 FASTCALL1                        TOSTRING R0 ; [+3]
       11 MOVE                             R5 R0
       12 GETIMPORT                        R4 K7 [tostring]
       14 CALL                             R4 1 1
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1
       17 FASTCALL1                        TYPE R0 ; [+3]
       18 MOVE                             R3 R0
       19 GETIMPORT                        R2 K1 [type]
       21 CALL                             R2 1 1
       22 JUMPIFEQKS                       R2 K8 ["table"] ; [+188]
       24 FASTCALL1                        TYPEOF R0 ; [+3]
       25 MOVE                             R3 R0
       26 GETIMPORT                        R2 K10 [typeof]
       28 CALL                             R2 1 1
       29 JUMPIFNOTEQKS                    R2 K11 ["Instance"] ; [+175]
       31 LOADK                            R2 K12 [""]
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R5 R0 K13 ["ClassName"]
       35 GETTABLE                         R3 R4 R5
       36 NAMECALL                         R4 R0 K14 ["GetAttributes"]
       38 CALL                             R4 1 3
       39 FORGPREP                         R4
       40 MOVE                             R9 R2
       41 LOADK                            R11 K15 [" %*=%*"]
       42 MOVE                             R13 R7
       43 FASTCALL1                        TOSTRING R8 ; [+3]
       44 MOVE                             R15 R8
       45 GETIMPORT                        R14 K7 [tostring]
       47 CALL                             R14 1 1
       48 NAMECALL                         R11 R11 K3 ["format"]
       50 CALL                             R11 3 1
       51 MOVE                             R10 R11
       52 CONCAT                           R2 R9 R10
       53 FORGLOOP                         R4 2 ; [-14]
       55 NAMECALL                         R4 R0 K16 ["GetTags"]
       57 CALL                             R4 1 1
       58 LENGTH                           R5 R4
       59 LOADN                            R6 0
       60 JUMPIFNOTLT                      R6 R5 ; [+13]
       62 MOVE                             R5 R2
       63 LOADK                            R7 K17 [" Tags=\"%*\""]
       64 GETIMPORT                        R9 K19 [table.concat]
       66 MOVE                             R10 R4
       67 LOADK                            R11 K20 [" "]
       68 CALL                             R9 2 1
       69 NAMECALL                         R7 R7 K3 ["format"]
       71 CALL                             R7 2 1
       72 MOVE                             R6 R7
       73 CONCAT                           R2 R5 R6
       74 JUMPIFNOT                        R3 ; [+44]
       75 NEWTABLE                         R5 0 0
       77 MOVE                             R6 R3
       78 LOADNIL                          R7
       79 LOADNIL                          R8
       80 FORGPREP                         R6
       81 GETIMPORT                        R11 K22 [pcall]
       83 NEWCLOSURE                       R12 P0
       84 CAPTURE                          VAL R0
       85 CAPTURE                          VAL R10
       86 CALL                             R11 1 2
       87 JUMPIFNOT                        R11 ; [+17]
       88 LOADK                            R16 K23 ["%*=\"%*\""]
       89 MOVE                             R18 R10
       90 FASTCALL1                        TOSTRING R12 ; [+3]
       91 MOVE                             R20 R12
       92 GETIMPORT                        R19 K7 [tostring]
       94 CALL                             R19 1 1
       95 NAMECALL                         R16 R16 K3 ["format"]
       97 CALL                             R16 3 1
       98 MOVE                             R15 R16
       99 FASTCALL2                        TABLE_INSERT R5 R15 ; [+4]
      101 MOVE                             R14 R5
      102 GETIMPORT                        R13 K25 [table.insert]
      104 CALL                             R13 2 0
      105 FORGLOOP                         R6 2 ; [-25]
      107 LENGTH                           R6 R5
      108 LOADN                            R7 0
      109 JUMPIFNOTLT                      R7 R6 ; [+9]
      111 MOVE                             R6 R2
      112 LOADK                            R7 K20 [" "]
      113 GETIMPORT                        R8 K19 [table.concat]
      115 MOVE                             R9 R5
      116 LOADK                            R10 K20 [" "]
      117 CALL                             R8 2 1
      118 CONCAT                           R2 R6 R8
      119 NAMECALL                         R5 R0 K26 ["GetChildren"]
      121 CALL                             R5 1 1
      122 LENGTH                           R6 R5
      123 JUMPIFNOTEQKN                    R6 K27 [0] ; [+12]
      125 LOADK                            R7 K28 ["<%* \"%*\"%*/>"]
      126 GETTABLEKS                       R9 R0 K13 ["ClassName"]
      128 GETTABLEKS                       R10 R0 K29 ["Name"]
      130 MOVE                             R11 R2
      131 NAMECALL                         R7 R7 K3 ["format"]
      133 CALL                             R7 4 1
      134 MOVE                             R6 R7
      135 RETURN                           R6 1
      136 NEWTABLE                         R6 0 0
      138 LOADK                            R10 K30 ["<%* \"%*\"%*>"]
      139 GETTABLEKS                       R12 R0 K13 ["ClassName"]
      141 GETTABLEKS                       R13 R0 K29 ["Name"]
      143 MOVE                             R14 R2
      144 NAMECALL                         R10 R10 K3 ["format"]
      146 CALL                             R10 4 1
      147 MOVE                             R9 R10
      148 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      150 MOVE                             R8 R6
      151 GETIMPORT                        R7 K25 [table.insert]
      153 CALL                             R7 2 0
      154 MOVE                             R7 R5
      155 LOADNIL                          R8
      156 LOADNIL                          R9
      157 FORGPREP                         R7
      158 GETIMPORT                        R18 K32 [string.rep]
      160 LOADK                            R19 K33 ["  "]
      161 ADDK                             R20 R1 K34 [1]
      162 CALL                             R18 2 1
      163 MOVE                             R15 R18
      164 GETUPVAL                         R18 1
      165 MOVE                             R19 R11
      166 ADDK                             R20 R1 K34 [1]
      167 CALL                             R18 2 1
      168 MOVE                             R16 R18
      169 LOADK                            R17 K35 [","]
      170 CONCAT                           R14 R15 R17
      171 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
      173 MOVE                             R13 R6
      174 GETIMPORT                        R12 K25 [table.insert]
      176 CALL                             R12 2 0
      177 FORGLOOP                         R7 2 ; [-20]
      179 GETIMPORT                        R12 K32 [string.rep]
      181 LOADK                            R13 K33 ["  "]
      182 MOVE                             R14 R1
      183 CALL                             R12 2 1
      184 MOVE                             R10 R12
      185 LOADK                            R12 K36 ["</%*>"]
      186 GETTABLEKS                       R14 R0 K13 ["ClassName"]
      188 NAMECALL                         R12 R12 K3 ["format"]
      190 CALL                             R12 2 1
      191 MOVE                             R11 R12
      192 CONCAT                           R9 R10 R11
      193 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      195 MOVE                             R8 R6
      196 GETIMPORT                        R7 K25 [table.insert]
      198 CALL                             R7 2 0
      199 GETIMPORT                        R7 K19 [table.concat]
      201 MOVE                             R8 R6
      202 LOADK                            R9 K37 ["\n"]
      203 CALL                             R7 2 -1
      204 RETURN                           R7 -1
      205 FASTCALL1                        TOSTRING R0 ; [+3]
      206 MOVE                             R3 R0
      207 GETIMPORT                        R2 K7 [tostring]
      209 CALL                             R2 1 1
      210 RETURN                           R2 1
      211 GETIMPORT                        R2 K39 [next]
      213 MOVE                             R3 R0
      214 CALL                             R2 1 1
      215 JUMPIFNOTEQKNIL                  R2 ; [+3]
      217 LOADK                            R2 K40 ["{}"]
      218 RETURN                           R2 1
      219 GETTABLEKS                       R2 R0 K41 ["$$store"]
      221 JUMPIFEQKNIL                     R2 ; [+23]
      223 LOADK                            R3 K42 ["<cursor>(%*) (%* in %*)"]
      224 GETUPVAL                         R5 1
      225 GETUPVAL                         R6 2
      226 MOVE                             R7 R0
      227 CALL                             R6 1 1
      228 MOVE                             R7 R1
      229 CALL                             R5 2 1
      230 GETUPVAL                         R6 1
      231 GETTABLEKS                       R7 R0 K43 ["$$path"]
      233 MOVE                             R8 R1
      234 CALL                             R6 2 1
      235 GETUPVAL                         R7 1
      236 GETTABLEKS                       R8 R0 K41 ["$$store"]
      238 MOVE                             R9 R1
      239 CALL                             R7 2 1
      240 NAMECALL                         R3 R3 K3 ["format"]
      242 CALL                             R3 4 1
      243 MOVE                             R2 R3
      244 RETURN                           R2 1
      245 GETTABLEKS                       R2 R0 K44 ["$$signal"]
      247 JUMPIFNOT                        R2 ; [+13]
      248 GETUPVAL                         R2 2
      249 MOVE                             R3 R0
      250 CALL                             R2 1 1
      251 LOADK                            R4 K45 ["<getter>(%*)"]
      252 GETUPVAL                         R6 1
      253 MOVE                             R7 R2
      254 MOVE                             R8 R1
      255 CALL                             R6 2 1
      256 NAMECALL                         R4 R4 K3 ["format"]
      258 CALL                             R4 2 1
      259 MOVE                             R3 R4
      260 RETURN                           R3 1
      261 NEWTABLE                         R2 0 0
      263 FASTCALL2K                       TABLE_INSERT R2 K46 ; [+5]
      265 MOVE                             R4 R2
      266 LOADK                            R5 K46 ["{"]
      267 GETIMPORT                        R3 K25 [table.insert]
      269 CALL                             R3 2 0
      270 LOADN                            R3 1
      271 MOVE                             R4 R0
      272 LOADNIL                          R5
      273 LOADNIL                          R6
      274 FORGPREP                         R4
      275 JUMPIFNOTEQ                      R7 R3 ; [+22]
      277 ADDK                             R3 R3 K34 [1]
      278 GETIMPORT                        R15 K32 [string.rep]
      280 LOADK                            R16 K33 ["  "]
      281 ADDK                             R17 R1 K34 [1]
      282 CALL                             R15 2 1
      283 MOVE                             R12 R15
      284 GETUPVAL                         R15 1
      285 MOVE                             R16 R8
      286 ADDK                             R17 R1 K34 [1]
      287 CALL                             R15 2 1
      288 MOVE                             R13 R15
      289 LOADK                            R14 K35 [","]
      290 CONCAT                           R11 R12 R14
      291 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
      293 MOVE                             R10 R2
      294 GETIMPORT                        R9 K25 [table.insert]
      296 CALL                             R9 2 0
      297 JUMP                             ; [+40]
      298 FASTCALL1                        TYPEOF R7 ; [+3]
      299 MOVE                             R11 R7
      300 GETIMPORT                        R10 K10 [typeof]
      302 CALL                             R10 1 1
      303 JUMPIFNOTEQKS                    R10 K47 ["number"] ; [+8]
      305 LOADK                            R10 K48 ["[%*]"]
      306 MOVE                             R12 R7
      307 NAMECALL                         R10 R10 K3 ["format"]
      309 CALL                             R10 2 1
      310 MOVE                             R9 R10
      311 JUMP                             ; [+5]
      312 FASTCALL1                        TOSTRING R7 ; [+3]
      313 MOVE                             R10 R7
      314 GETIMPORT                        R9 K7 [tostring]
      316 CALL                             R9 1 1
      317 GETIMPORT                        R18 K32 [string.rep]
      319 LOADK                            R19 K33 ["  "]
      320 ADDK                             R20 R1 K34 [1]
      321 CALL                             R18 2 1
      322 MOVE                             R13 R18
      323 MOVE                             R14 R9
      324 LOADK                            R15 K49 [" = "]
      325 GETUPVAL                         R18 1
      326 MOVE                             R19 R8
      327 ADDK                             R20 R1 K34 [1]
      328 CALL                             R18 2 1
      329 MOVE                             R16 R18
      330 LOADK                            R17 K35 [","]
      331 CONCAT                           R12 R13 R17
      332 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
      334 MOVE                             R11 R2
      335 GETIMPORT                        R10 K25 [table.insert]
      337 CALL                             R10 2 0
      338 FORGLOOP                         R4 2 ; [-64]
      340 GETIMPORT                        R9 K32 [string.rep]
      342 LOADK                            R10 K33 ["  "]
      343 MOVE                             R11 R1
      344 CALL                             R9 2 1
      345 MOVE                             R7 R9
      346 LOADK                            R8 K50 ["}"]
      347 CONCAT                           R6 R7 R8
      348 FASTCALL2                        TABLE_INSERT R2 R6 ; [+4]
      350 MOVE                             R5 R2
      351 GETIMPORT                        R4 K25 [table.insert]
      353 CALL                             R4 2 0
      354 GETIMPORT                        R4 K19 [table.concat]
      356 MOVE                             R5 R2
      357 LOADK                            R6 K37 ["\n"]
      358 CALL                             R4 2 -1
      359 RETURN                           R4 -1

PROTO_2:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 LOADN                            R3 1
        4 LOADK                            R5 K0 ["#"]
        5 FASTCALL1                        SELECT_VARARG R5 ; [+3]
        6 GETIMPORT                        R4 K2 [select]
        8 GETVARARGS                       R6 -1
        9 CALL                             R4 -1 1
       10 MOVE                             R1 R4
       11 LOADN                            R2 1
       12 FORNPREP                         R1
       13 GETUPVAL                         R4 0
       14 FASTCALL1                        SELECT_VARARG R3 ; [+4]
       15 GETIMPORT                        R5 K2 [select]
       17 MOVE                             R6 R3
       18 GETVARARGS                       R7 -1
       19 CALL                             R5 -1 1
       20 LOADN                            R6 0
       21 CALL                             R4 2 1
       22 SETTABLE                         R4 R0 R3
       23 FORNLOOP                         R1
       24 GETIMPORT                        R1 K5 [table.concat]
       26 MOVE                             R2 R0
       27 LOADK                            R3 K6 ["\t"]
       28 CALL                             R1 2 -1
       29 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["state"]
       11 GETTABLEKS                       R2 R2 K6 ["Signals"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K7 ["peek"]
       16 DUPTABLE                         R3 K13 [{"TextButton", "TextBox", "TextLabel", "StyleLink", "StyleRule"}]
       17 NEWTABLE                         R4 0 1
       19 LOADK                            R5 K14 ["Text"]
       20 SETLIST                          R4 R5 1 [1]
       22 SETTABLEKS                       R4 R3 K8 ["TextButton"]
       24 NEWTABLE                         R4 0 1
       26 LOADK                            R5 K14 ["Text"]
       27 SETLIST                          R4 R5 1 [1]
       29 SETTABLEKS                       R4 R3 K9 ["TextBox"]
       31 NEWTABLE                         R4 0 1
       33 LOADK                            R5 K14 ["Text"]
       34 SETLIST                          R4 R5 1 [1]
       36 SETTABLEKS                       R4 R3 K10 ["TextLabel"]
       38 NEWTABLE                         R4 0 1
       40 LOADK                            R5 K15 ["StyleSheet"]
       41 SETLIST                          R4 R5 1 [1]
       43 SETTABLEKS                       R4 R3 K11 ["StyleLink"]
       45 NEWTABLE                         R4 0 1
       47 LOADK                            R5 K16 ["Selector"]
       48 SETLIST                          R4 R5 1 [1]
       50 SETTABLEKS                       R4 R3 K12 ["StyleRule"]
       52 DUPCLOSURE                       R4 K17 [PROTO_1]
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R2
       56 DUPCLOSURE                       R5 K18 [PROTO_2]
       57 CAPTURE                          VAL R4
       58 RETURN                           R5 1
