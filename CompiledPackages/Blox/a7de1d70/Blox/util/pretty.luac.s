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
       22 JUMPIFEQKS                       R2 K8 ["table"] ; [+182]
       24 FASTCALL1                        TYPEOF R0 ; [+3]
       25 MOVE                             R3 R0
       26 GETIMPORT                        R2 K10 [typeof]
       28 CALL                             R2 1 1
       29 JUMPIFNOTEQKS                    R2 K11 ["Instance"] ; [+169]
       31 LOADK                            R2 K12 [""]
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R5 R0 K13 ["ClassName"]
       35 GETTABLE                         R3 R4 R5
       36 NAMECALL                         R4 R0 K14 ["GetAttributes"]
       38 CALL                             R4 1 3
       39 FORGPREP                         R4
       40 MOVE                             R9 R2
       41 LOADK                            R10 K15 [" %*=%*"]
       42 MOVE                             R12 R7
       43 FASTCALL1                        TOSTRING R8 ; [+3]
       44 MOVE                             R14 R8
       45 GETIMPORT                        R13 K7 [tostring]
       47 CALL                             R13 1 1
       48 NAMECALL                         R10 R10 K3 ["format"]
       50 CALL                             R10 3 1
       51 CONCAT                           R2 R9 R10
       52 FORGLOOP                         R4 2 ; [-13]
       54 NAMECALL                         R4 R0 K16 ["GetTags"]
       56 CALL                             R4 1 1
       57 LENGTH                           R5 R4
       58 LOADN                            R6 0
       59 JUMPIFNOTLT                      R6 R5 ; [+12]
       61 MOVE                             R5 R2
       62 LOADK                            R6 K17 [" Tags=\"%*\""]
       63 GETIMPORT                        R8 K19 [table.concat]
       65 MOVE                             R9 R4
       66 LOADK                            R10 K20 [" "]
       67 CALL                             R8 2 1
       68 NAMECALL                         R6 R6 K3 ["format"]
       70 CALL                             R6 2 1
       71 CONCAT                           R2 R5 R6
       72 JUMPIFNOT                        R3 ; [+43]
       73 NEWTABLE                         R5 0 0
       75 MOVE                             R6 R3
       76 LOADNIL                          R7
       77 LOADNIL                          R8
       78 FORGPREP                         R6
       79 GETIMPORT                        R11 K22 [pcall]
       81 NEWCLOSURE                       R12 P0
       82 CAPTURE                          VAL R0
       83 CAPTURE                          VAL R10
       84 CALL                             R11 1 2
       85 JUMPIFNOT                        R11 ; [+16]
       86 LOADK                            R15 K23 ["%*=\"%*\""]
       87 MOVE                             R17 R10
       88 FASTCALL1                        TOSTRING R12 ; [+3]
       89 MOVE                             R19 R12
       90 GETIMPORT                        R18 K7 [tostring]
       92 CALL                             R18 1 1
       93 NAMECALL                         R15 R15 K3 ["format"]
       95 CALL                             R15 3 1
       96 FASTCALL2                        TABLE_INSERT R5 R15 ; [+4]
       98 MOVE                             R14 R5
       99 GETIMPORT                        R13 K25 [table.insert]
      101 CALL                             R13 2 0
      102 FORGLOOP                         R6 2 ; [-24]
      104 LENGTH                           R6 R5
      105 LOADN                            R7 0
      106 JUMPIFNOTLT                      R7 R6 ; [+9]
      108 MOVE                             R6 R2
      109 LOADK                            R7 K20 [" "]
      110 GETIMPORT                        R8 K19 [table.concat]
      112 MOVE                             R9 R5
      113 LOADK                            R10 K20 [" "]
      114 CALL                             R8 2 1
      115 CONCAT                           R2 R6 R8
      116 NAMECALL                         R5 R0 K26 ["GetChildren"]
      118 CALL                             R5 1 1
      119 LENGTH                           R6 R5
      120 JUMPIFNOTEQKN                    R6 K27 [0] ; [+11]
      122 LOADK                            R6 K28 ["<%* \"%*\"%*/>"]
      123 GETTABLEKS                       R8 R0 K13 ["ClassName"]
      125 GETTABLEKS                       R9 R0 K29 ["Name"]
      127 MOVE                             R10 R2
      128 NAMECALL                         R6 R6 K3 ["format"]
      130 CALL                             R6 4 1
      131 RETURN                           R6 1
      132 NEWTABLE                         R6 0 0
      134 LOADK                            R9 K30 ["<%* \"%*\"%*>"]
      135 GETTABLEKS                       R11 R0 K13 ["ClassName"]
      137 GETTABLEKS                       R12 R0 K29 ["Name"]
      139 MOVE                             R13 R2
      140 NAMECALL                         R9 R9 K3 ["format"]
      142 CALL                             R9 4 1
      143 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      145 MOVE                             R8 R6
      146 GETIMPORT                        R7 K25 [table.insert]
      148 CALL                             R7 2 0
      149 MOVE                             R7 R5
      150 LOADNIL                          R8
      151 LOADNIL                          R9
      152 FORGPREP                         R7
      153 GETIMPORT                        R18 K32 [string.rep]
      155 LOADK                            R19 K33 ["  "]
      156 ADDK                             R20 R1 K34 [1]
      157 CALL                             R18 2 1
      158 MOVE                             R15 R18
      159 GETUPVAL                         R18 1
      160 MOVE                             R19 R11
      161 ADDK                             R20 R1 K34 [1]
      162 CALL                             R18 2 1
      163 MOVE                             R16 R18
      164 LOADK                            R17 K35 [","]
      165 CONCAT                           R14 R15 R17
      166 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
      168 MOVE                             R13 R6
      169 GETIMPORT                        R12 K25 [table.insert]
      171 CALL                             R12 2 0
      172 FORGLOOP                         R7 2 ; [-20]
      174 GETIMPORT                        R12 K32 [string.rep]
      176 LOADK                            R13 K33 ["  "]
      177 MOVE                             R14 R1
      178 CALL                             R12 2 1
      179 MOVE                             R10 R12
      180 LOADK                            R11 K36 ["</%*>"]
      181 GETTABLEKS                       R13 R0 K13 ["ClassName"]
      183 NAMECALL                         R11 R11 K3 ["format"]
      185 CALL                             R11 2 1
      186 CONCAT                           R9 R10 R11
      187 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      189 MOVE                             R8 R6
      190 GETIMPORT                        R7 K25 [table.insert]
      192 CALL                             R7 2 0
      193 GETIMPORT                        R7 K19 [table.concat]
      195 MOVE                             R8 R6
      196 LOADK                            R9 K37 ["\n"]
      197 CALL                             R7 2 -1
      198 RETURN                           R7 -1
      199 FASTCALL1                        TOSTRING R0 ; [+3]
      200 MOVE                             R3 R0
      201 GETIMPORT                        R2 K7 [tostring]
      203 CALL                             R2 1 1
      204 RETURN                           R2 1
      205 GETIMPORT                        R2 K39 [next]
      207 MOVE                             R3 R0
      208 CALL                             R2 1 1
      209 JUMPIFNOTEQKNIL                  R2 ; [+3]
      211 LOADK                            R2 K40 ["{}"]
      212 RETURN                           R2 1
      213 GETTABLEKS                       R2 R0 K41 ["$$store"]
      215 JUMPIFEQKNIL                     R2 ; [+22]
      217 LOADK                            R2 K42 ["<cursor>(%*) (%* in %*)"]
      218 GETUPVAL                         R4 1
      219 GETUPVAL                         R5 2
      220 MOVE                             R6 R0
      221 CALL                             R5 1 1
      222 MOVE                             R6 R1
      223 CALL                             R4 2 1
      224 GETUPVAL                         R5 1
      225 GETTABLEKS                       R6 R0 K43 ["$$path"]
      227 MOVE                             R7 R1
      228 CALL                             R5 2 1
      229 GETUPVAL                         R6 1
      230 GETTABLEKS                       R7 R0 K41 ["$$store"]
      232 MOVE                             R8 R1
      233 CALL                             R6 2 1
      234 NAMECALL                         R2 R2 K3 ["format"]
      236 CALL                             R2 4 1
      237 RETURN                           R2 1
      238 GETTABLEKS                       R2 R0 K44 ["$$signal"]
      240 JUMPIFNOT                        R2 ; [+12]
      241 GETUPVAL                         R2 2
      242 MOVE                             R3 R0
      243 CALL                             R2 1 1
      244 LOADK                            R3 K45 ["<getter>(%*)"]
      245 GETUPVAL                         R5 1
      246 MOVE                             R6 R2
      247 MOVE                             R7 R1
      248 CALL                             R5 2 1
      249 NAMECALL                         R3 R3 K3 ["format"]
      251 CALL                             R3 2 1
      252 RETURN                           R3 1
      253 NEWTABLE                         R2 0 0
      255 FASTCALL2K                       TABLE_INSERT R2 K46 ; [+5]
      257 MOVE                             R4 R2
      258 LOADK                            R5 K46 ["{"]
      259 GETIMPORT                        R3 K25 [table.insert]
      261 CALL                             R3 2 0
      262 LOADN                            R3 1
      263 MOVE                             R4 R0
      264 LOADNIL                          R5
      265 LOADNIL                          R6
      266 FORGPREP                         R4
      267 JUMPIFNOTEQ                      R7 R3 ; [+22]
      269 ADDK                             R3 R3 K34 [1]
      270 GETIMPORT                        R15 K32 [string.rep]
      272 LOADK                            R16 K33 ["  "]
      273 ADDK                             R17 R1 K34 [1]
      274 CALL                             R15 2 1
      275 MOVE                             R12 R15
      276 GETUPVAL                         R15 1
      277 MOVE                             R16 R8
      278 ADDK                             R17 R1 K34 [1]
      279 CALL                             R15 2 1
      280 MOVE                             R13 R15
      281 LOADK                            R14 K35 [","]
      282 CONCAT                           R11 R12 R14
      283 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
      285 MOVE                             R10 R2
      286 GETIMPORT                        R9 K25 [table.insert]
      288 CALL                             R9 2 0
      289 JUMP                             ; [+39]
      290 FASTCALL1                        TYPEOF R7 ; [+3]
      291 MOVE                             R11 R7
      292 GETIMPORT                        R10 K10 [typeof]
      294 CALL                             R10 1 1
      295 JUMPIFNOTEQKS                    R10 K47 ["number"] ; [+7]
      297 LOADK                            R9 K48 ["[%*]"]
      298 MOVE                             R11 R7
      299 NAMECALL                         R9 R9 K3 ["format"]
      301 CALL                             R9 2 1
      302 JUMP                             ; [+5]
      303 FASTCALL1                        TOSTRING R7 ; [+3]
      304 MOVE                             R10 R7
      305 GETIMPORT                        R9 K7 [tostring]
      307 CALL                             R9 1 1
      308 GETIMPORT                        R18 K32 [string.rep]
      310 LOADK                            R19 K33 ["  "]
      311 ADDK                             R20 R1 K34 [1]
      312 CALL                             R18 2 1
      313 MOVE                             R13 R18
      314 MOVE                             R14 R9
      315 LOADK                            R15 K49 [" = "]
      316 GETUPVAL                         R18 1
      317 MOVE                             R19 R8
      318 ADDK                             R20 R1 K34 [1]
      319 CALL                             R18 2 1
      320 MOVE                             R16 R18
      321 LOADK                            R17 K35 [","]
      322 CONCAT                           R12 R13 R17
      323 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
      325 MOVE                             R11 R2
      326 GETIMPORT                        R10 K25 [table.insert]
      328 CALL                             R10 2 0
      329 FORGLOOP                         R4 2 ; [-63]
      331 GETIMPORT                        R9 K32 [string.rep]
      333 LOADK                            R10 K33 ["  "]
      334 MOVE                             R11 R1
      335 CALL                             R9 2 1
      336 MOVE                             R7 R9
      337 LOADK                            R8 K50 ["}"]
      338 CONCAT                           R6 R7 R8
      339 FASTCALL2                        TABLE_INSERT R2 R6 ; [+4]
      341 MOVE                             R5 R2
      342 GETIMPORT                        R4 K25 [table.insert]
      344 CALL                             R4 2 0
      345 GETIMPORT                        R4 K19 [table.concat]
      347 MOVE                             R5 R2
      348 LOADK                            R6 K37 ["\n"]
      349 CALL                             R4 2 -1
      350 RETURN                           R4 -1

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
