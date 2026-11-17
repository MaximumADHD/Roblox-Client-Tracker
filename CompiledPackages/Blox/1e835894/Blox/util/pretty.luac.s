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
       22 JUMPIFEQKS                       R2 K8 ["table"] ; [+180]
       24 FASTCALL1                        TYPEOF R0 ; [+3]
       25 MOVE                             R3 R0
       26 GETIMPORT                        R2 K10 [typeof]
       28 CALL                             R2 1 1
       29 JUMPIFNOTEQKS                    R2 K11 ["Instance"] ; [+167]
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
       72 JUMPIFNOT                        R3 ; [+44]
       73 NEWTABLE                         R5 0 0
       75 MOVE                             R6 R3
       76 LOADNIL                          R7
       77 LOADNIL                          R8
       78 FORGPREP                         R6
       79 NEWCLOSURE                       R12 P0
       80 CAPTURE                          VAL R0
       81 CAPTURE                          VAL R10
       82 FASTPCALL                        pcall 1 ; [+2]
       83 GETIMPORT                        R11 K22 [pcall]
       85 CALL                             R11 1 2
       86 JUMPIFNOT                        R11 ; [+16]
       87 LOADK                            R15 K23 ["%*=\"%*\""]
       88 MOVE                             R17 R10
       89 FASTCALL1                        TOSTRING R12 ; [+3]
       90 MOVE                             R19 R12
       91 GETIMPORT                        R18 K7 [tostring]
       93 CALL                             R18 1 1
       94 NAMECALL                         R15 R15 K3 ["format"]
       96 CALL                             R15 3 1
       97 FASTCALL2                        TABLE_INSERT R5 R15 ; [+4]
       99 MOVE                             R14 R5
      100 GETIMPORT                        R13 K25 [table.insert]
      102 CALL                             R13 2 0
      103 FORGLOOP                         R6 2 ; [-25]
      105 LENGTH                           R6 R5
      106 LOADN                            R7 0
      107 JUMPIFNOTLT                      R7 R6 ; [+9]
      109 MOVE                             R6 R2
      110 LOADK                            R7 K20 [" "]
      111 GETIMPORT                        R8 K19 [table.concat]
      113 MOVE                             R9 R5
      114 LOADK                            R10 K20 [" "]
      115 CALL                             R8 2 1
      116 CONCAT                           R2 R6 R8
      117 NAMECALL                         R5 R0 K26 ["GetChildren"]
      119 CALL                             R5 1 1
      120 LENGTH                           R6 R5
      121 JUMPIFNOTEQKN                    R6 K27 [0] ; [+11]
      123 LOADK                            R6 K28 ["<%* \"%*\"%*/>"]
      124 GETTABLEKS                       R8 R0 K13 ["ClassName"]
      126 GETTABLEKS                       R9 R0 K29 ["Name"]
      128 MOVE                             R10 R2
      129 NAMECALL                         R6 R6 K3 ["format"]
      131 CALL                             R6 4 1
      132 RETURN                           R6 1
      133 NEWTABLE                         R6 0 0
      135 LOADK                            R9 K30 ["<%* \"%*\"%*>"]
      136 GETTABLEKS                       R11 R0 K13 ["ClassName"]
      138 GETTABLEKS                       R12 R0 K29 ["Name"]
      140 MOVE                             R13 R2
      141 NAMECALL                         R9 R9 K3 ["format"]
      143 CALL                             R9 4 1
      144 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      146 MOVE                             R8 R6
      147 GETIMPORT                        R7 K25 [table.insert]
      149 CALL                             R7 2 0
      150 MOVE                             R7 R5
      151 LOADNIL                          R8
      152 LOADNIL                          R9
      153 FORGPREP                         R7
      154 GETIMPORT                        R15 K32 [string.rep]
      156 LOADK                            R16 K33 ["  "]
      157 ADDK                             R17 R1 K34 [1]
      158 CALL                             R15 2 1
      159 GETUPVAL                         R16 1
      160 MOVE                             R17 R11
      161 ADDK                             R18 R1 K34 [1]
      162 CALL                             R16 2 1
      163 LOADK                            R17 K35 [","]
      164 CONCAT                           R14 R15 R17
      165 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
      167 MOVE                             R13 R6
      168 GETIMPORT                        R12 K25 [table.insert]
      170 CALL                             R12 2 0
      171 FORGLOOP                         R7 2 ; [-18]
      173 GETIMPORT                        R10 K32 [string.rep]
      175 LOADK                            R11 K33 ["  "]
      176 MOVE                             R12 R1
      177 CALL                             R10 2 1
      178 LOADK                            R11 K36 ["</%*>"]
      179 GETTABLEKS                       R13 R0 K13 ["ClassName"]
      181 NAMECALL                         R11 R11 K3 ["format"]
      183 CALL                             R11 2 1
      184 CONCAT                           R9 R10 R11
      185 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      187 MOVE                             R8 R6
      188 GETIMPORT                        R7 K25 [table.insert]
      190 CALL                             R7 2 0
      191 GETIMPORT                        R7 K19 [table.concat]
      193 MOVE                             R8 R6
      194 LOADK                            R9 K37 ["\n"]
      195 CALL                             R7 2 -1
      196 RETURN                           R7 -1
      197 FASTCALL1                        TOSTRING R0 ; [+3]
      198 MOVE                             R3 R0
      199 GETIMPORT                        R2 K7 [tostring]
      201 CALL                             R2 1 1
      202 RETURN                           R2 1
      203 GETIMPORT                        R2 K39 [next]
      205 MOVE                             R3 R0
      206 CALL                             R2 1 1
      207 JUMPIFNOTEQKNIL                  R2 ; [+3]
      209 LOADK                            R2 K40 ["{}"]
      210 RETURN                           R2 1
      211 GETTABLEKS                       R2 R0 K41 ["$$store"]
      213 JUMPIFEQKNIL                     R2 ; [+22]
      215 LOADK                            R2 K42 ["<cursor>(%*) (%* in %*)"]
      216 GETUPVAL                         R4 1
      217 GETUPVAL                         R5 2
      218 MOVE                             R6 R0
      219 CALL                             R5 1 1
      220 MOVE                             R6 R1
      221 CALL                             R4 2 1
      222 GETUPVAL                         R5 1
      223 GETTABLEKS                       R6 R0 K43 ["$$path"]
      225 MOVE                             R7 R1
      226 CALL                             R5 2 1
      227 GETUPVAL                         R6 1
      228 GETTABLEKS                       R7 R0 K41 ["$$store"]
      230 MOVE                             R8 R1
      231 CALL                             R6 2 1
      232 NAMECALL                         R2 R2 K3 ["format"]
      234 CALL                             R2 4 1
      235 RETURN                           R2 1
      236 GETTABLEKS                       R2 R0 K44 ["$$signal"]
      238 JUMPIFNOT                        R2 ; [+12]
      239 GETUPVAL                         R2 2
      240 MOVE                             R3 R0
      241 CALL                             R2 1 1
      242 LOADK                            R3 K45 ["<getter>(%*)"]
      243 GETUPVAL                         R5 1
      244 MOVE                             R6 R2
      245 MOVE                             R7 R1
      246 CALL                             R5 2 1
      247 NAMECALL                         R3 R3 K3 ["format"]
      249 CALL                             R3 2 1
      250 RETURN                           R3 1
      251 NEWTABLE                         R2 0 0
      253 FASTCALL2K                       TABLE_INSERT R2 K46 ; [+5]
      255 MOVE                             R4 R2
      256 LOADK                            R5 K46 ["{"]
      257 GETIMPORT                        R3 K25 [table.insert]
      259 CALL                             R3 2 0
      260 LOADN                            R3 1
      261 MOVE                             R4 R0
      262 LOADNIL                          R5
      263 LOADNIL                          R6
      264 FORGPREP                         R4
      265 JUMPIFNOTEQ                      R7 R3 ; [+20]
      267 ADDK                             R3 R3 K34 [1]
      268 GETIMPORT                        R12 K32 [string.rep]
      270 LOADK                            R13 K33 ["  "]
      271 ADDK                             R14 R1 K34 [1]
      272 CALL                             R12 2 1
      273 GETUPVAL                         R13 1
      274 MOVE                             R14 R8
      275 ADDK                             R15 R1 K34 [1]
      276 CALL                             R13 2 1
      277 LOADK                            R14 K35 [","]
      278 CONCAT                           R11 R12 R14
      279 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
      281 MOVE                             R10 R2
      282 GETIMPORT                        R9 K25 [table.insert]
      284 CALL                             R9 2 0
      285 JUMP                             ; [+37]
      286 FASTCALL1                        TYPEOF R7 ; [+3]
      287 MOVE                             R11 R7
      288 GETIMPORT                        R10 K10 [typeof]
      290 CALL                             R10 1 1
      291 JUMPIFNOTEQKS                    R10 K47 ["number"] ; [+7]
      293 LOADK                            R9 K48 ["[%*]"]
      294 MOVE                             R11 R7
      295 NAMECALL                         R9 R9 K3 ["format"]
      297 CALL                             R9 2 1
      298 JUMP                             ; [+5]
      299 FASTCALL1                        TOSTRING R7 ; [+3]
      300 MOVE                             R10 R7
      301 GETIMPORT                        R9 K7 [tostring]
      303 CALL                             R9 1 1
      304 GETIMPORT                        R13 K32 [string.rep]
      306 LOADK                            R14 K33 ["  "]
      307 ADDK                             R15 R1 K34 [1]
      308 CALL                             R13 2 1
      309 MOVE                             R14 R9
      310 LOADK                            R15 K49 [" = "]
      311 GETUPVAL                         R16 1
      312 MOVE                             R17 R8
      313 ADDK                             R18 R1 K34 [1]
      314 CALL                             R16 2 1
      315 LOADK                            R17 K35 [","]
      316 CONCAT                           R12 R13 R17
      317 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
      319 MOVE                             R11 R2
      320 GETIMPORT                        R10 K25 [table.insert]
      322 CALL                             R10 2 0
      323 FORGLOOP                         R4 2 ; [-59]
      325 GETIMPORT                        R7 K32 [string.rep]
      327 LOADK                            R8 K33 ["  "]
      328 MOVE                             R9 R1
      329 CALL                             R7 2 1
      330 LOADK                            R8 K50 ["}"]
      331 CONCAT                           R6 R7 R8
      332 FASTCALL2                        TABLE_INSERT R2 R6 ; [+4]
      334 MOVE                             R5 R2
      335 GETIMPORT                        R4 K25 [table.insert]
      337 CALL                             R4 2 0
      338 GETIMPORT                        R4 K19 [table.concat]
      340 MOVE                             R5 R2
      341 LOADK                            R6 K37 ["\n"]
      342 CALL                             R4 2 -1
      343 RETURN                           R4 -1

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
