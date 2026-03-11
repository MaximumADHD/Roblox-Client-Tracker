PROTO_0:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R4 R1
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+11]
        7 GETIMPORT                        R3 K4 [error]
        9 LOADK                            R5 K5 ["Invalid config option %* inside of %* - expected to be table"]
       10 MOVE                             R7 R2
       11 MOVE                             R8 R0
       12 NAMECALL                         R5 R5 K6 ["format"]
       14 CALL                             R5 3 1
       15 MOVE                             R4 R5
       16 CALL                             R3 1 0
       17 MOVE                             R3 R1
       18 LOADNIL                          R4
       19 LOADNIL                          R5
       20 FORGPREP                         R3
       21 GETUPVAL                         R10 0
       22 GETTABLE                         R9 R10 R2
       23 GETTABLE                         R8 R9 R7
       24 JUMPIF                           R8 ; [+11]
       25 GETIMPORT                        R8 K4 [error]
       27 LOADK                            R10 K7 ["Invalid config option %* in %* inside of %*"]
       28 MOVE                             R12 R7
       29 MOVE                             R13 R2
       30 MOVE                             R14 R0
       31 NAMECALL                         R10 R10 K6 ["format"]
       33 CALL                             R10 4 1
       34 MOVE                             R9 R10
       35 CALL                             R8 1 0
       36 FORGLOOP                         R3 2 ; [-16]
       38 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_2:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_3:
        0 GETIMPORT                        R2 K1 [error]
        2 LOADK                            R4 K2 ["Invalid ValidationConfig %* used on the module %*"]
        3 MOVE                             R6 R1
        4 GETUPVAL                         R7 0
        5 NAMECALL                         R4 R4 K3 ["format"]
        7 CALL                             R4 3 1
        8 MOVE                             R3 R4
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+10]
        4 GETIMPORT                        R1 K1 [error]
        6 LOADK                            R3 K2 ["%* does not exist in the preload table."]
        7 MOVE                             R5 R0
        8 NAMECALL                         R3 R3 K3 ["format"]
       10 CALL                             R3 2 1
       11 MOVE                             R2 R3
       12 CALL                             R1 1 0
       13 GETUPVAL                         R2 0
       14 GETTABLE                         R1 R2 R0
       15 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R3 K6 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R4 R0 K7 ["validationSystem"]
       18 GETTABLEKS                       R3 R4 K8 ["ValidationEnums"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R0 K9 ["validationFolders"]
       23 NEWTABLE                         R4 1 0
       25 NEWTABLE                         R5 0 5
       27 GETTABLEKS                       R7 R2 K10 ["SharedDataMember"]
       29 GETTABLEKS                       R6 R7 K11 ["aqsSummaryData"]
       31 GETTABLEKS                       R8 R2 K10 ["SharedDataMember"]
       33 GETTABLEKS                       R7 R8 K12 ["renderMeshesData"]
       35 GETTABLEKS                       R9 R2 K10 ["SharedDataMember"]
       37 GETTABLEKS                       R8 R9 K13 ["innerCagesData"]
       39 GETTABLEKS                       R10 R2 K10 ["SharedDataMember"]
       41 GETTABLEKS                       R9 R10 K14 ["outerCagesData"]
       43 GETTABLEKS                       R11 R2 K10 ["SharedDataMember"]
       45 GETTABLEKS                       R10 R11 K15 ["meshTextures"]
       47 SETLIST                          R5 R6 5 [1]
       49 NEWTABLE                         R6 0 0
       51 MOVE                             R7 R2
       52 LOADNIL                          R8
       53 LOADNIL                          R9
       54 FORGPREP                         R7
       55 NEWTABLE                         R12 0 0
       57 SETTABLE                         R12 R6 R10
       58 FASTCALL1                        TYPEOF R11 ; [+3]
       59 MOVE                             R13 R11
       60 GETIMPORT                        R12 K17 [typeof]
       62 CALL                             R12 1 1
       63 JUMPIFNOTEQKS                    R12 K18 ["table"] ; [+10]
       65 MOVE                             R12 R11
       66 LOADNIL                          R13
       67 LOADNIL                          R14
       68 FORGPREP                         R12
       69 GETTABLE                         R17 R6 R10
       70 LOADB                            R18 1
       71 SETTABLE                         R18 R17 R15
       72 FORGLOOP                         R12 2 ; [-4]
       74 FORGLOOP                         R7 2 ; [-20]
       76 DUPCLOSURE                       R7 K19 [PROTO_0]
       77 CAPTURE                          VAL R6
       78 DUPCLOSURE                       R8 K20 [PROTO_1]
       79 DUPCLOSURE                       R9 K21 [PROTO_2]
       80 NEWTABLE                         R10 0 0
       82 GETTABLEKS                       R11 R2 K22 ["ValidationModule"]
       84 LOADNIL                          R12
       85 LOADNIL                          R13
       86 FORGPREP                         R11
       87 MOVE                             R18 R15
       88 NAMECALL                         R16 R3 K23 ["FindFirstChild"]
       90 CALL                             R16 2 1
       91 JUMPIFNOTEQKNIL                  R16 ; [+10]
       93 GETIMPORT                        R17 K25 [error]
       95 LOADK                            R19 K26 ["%* validation folder is missing from validationFolders"]
       96 MOVE                             R21 R15
       97 NAMECALL                         R19 R19 K27 ["format"]
       99 CALL                             R19 2 1
      100 MOVE                             R18 R19
      101 CALL                             R17 1 0
      102 MOVE                             R19 R15
      103 NAMECALL                         R17 R16 K23 ["FindFirstChild"]
      105 CALL                             R17 2 1
      106 JUMPIFEQKNIL                     R17 ; [+6]
      108 LOADK                            R20 K28 ["ModuleScript"]
      109 NAMECALL                         R18 R17 K29 ["IsA"]
      111 CALL                             R18 2 1
      112 JUMPIF                           R18 ; [+10]
      113 GETIMPORT                        R18 K25 [error]
      115 LOADK                            R20 K30 ["%*.lua validation file is missing from validationFolders/%*"]
      116 MOVE                             R22 R15
      117 MOVE                             R23 R15
      118 NAMECALL                         R20 R20 K27 ["format"]
      120 CALL                             R20 3 1
      121 MOVE                             R19 R20
      122 CALL                             R18 1 0
      123 GETIMPORT                        R18 K4 [require]
      125 MOVE                             R19 R17
      126 CALL                             R18 1 1
      127 MOVE                             R19 R18
      128 LOADNIL                          R20
      129 LOADNIL                          R21
      130 FORGPREP                         R19
      131 FASTCALL1                        TYPEOF R22 ; [+3]
      132 MOVE                             R25 R22
      133 GETIMPORT                        R24 K17 [typeof]
      135 CALL                             R24 1 1
      136 JUMPIFEQKS                       R24 K31 ["string"] ; [+16]
      138 GETIMPORT                        R24 K25 [error]
      140 LOADK                            R26 K32 ["%*.lua contains non-string key %*"]
      141 MOVE                             R28 R15
      142 FASTCALL1                        TOSTRING R22 ; [+3]
      143 MOVE                             R30 R22
      144 GETIMPORT                        R29 K34 [tostring]
      146 CALL                             R29 1 1
      147 NAMECALL                         R26 R26 K27 ["format"]
      149 CALL                             R26 3 1
      150 MOVE                             R25 R26
      151 CALL                             R24 1 0
      152 JUMP                             ; [+14]
      153 GETTABLEKS                       R25 R6 K35 ["ValidationConfig"]
      155 GETTABLE                         R24 R25 R22
      156 JUMPIF                           R24 ; [+10]
      157 GETIMPORT                        R24 K25 [error]
      159 LOADK                            R26 K36 ["%*.lua contains unexpected member %*. Check for typos or add an extra ValidationEnums.ValidationConfig"]
      160 MOVE                             R28 R15
      161 MOVE                             R29 R22
      162 NAMECALL                         R26 R26 K27 ["format"]
      164 CALL                             R26 3 1
      165 MOVE                             R25 R26
      166 CALL                             R24 1 0
      167 FORGLOOP                         R19 2 ; [-37]
      169 GETTABLEKS                       R20 R18 K37 ["fflag"]
      171 OR                               R19 R20 R8
      172 SETTABLEKS                       R19 R18 K37 ["fflag"]
      174 GETTABLEKS                       R20 R18 K38 ["shadowFlag"]
      176 OR                               R19 R20 R9
      177 SETTABLEKS                       R19 R18 K38 ["shadowFlag"]
      179 GETTABLEKS                       R19 R18 K39 ["categories"]
      181 JUMPIF                           R19 ; [+2]
      182 NEWTABLE                         R19 0 0
      184 SETTABLEKS                       R19 R18 K39 ["categories"]
      186 GETTABLEKS                       R19 R18 K40 ["requiredData"]
      188 JUMPIF                           R19 ; [+2]
      189 NEWTABLE                         R19 0 0
      191 SETTABLEKS                       R19 R18 K40 ["requiredData"]
      193 GETTABLEKS                       R19 R18 K41 ["conditionalData"]
      195 JUMPIF                           R19 ; [+2]
      196 NEWTABLE                         R19 0 0
      198 SETTABLEKS                       R19 R18 K41 ["conditionalData"]
      200 GETTABLEKS                       R19 R18 K42 ["prereqTests"]
      202 JUMPIF                           R19 ; [+2]
      203 NEWTABLE                         R19 0 0
      205 SETTABLEKS                       R19 R18 K42 ["prereqTests"]
      207 GETTABLEKS                       R19 R18 K43 ["expectedFailures"]
      209 JUMPIF                           R19 ; [+2]
      210 NEWTABLE                         R19 0 0
      212 SETTABLEKS                       R19 R18 K43 ["expectedFailures"]
      214 GETTABLEKS                       R19 R18 K44 ["expectedAqsData"]
      216 JUMPIF                           R19 ; [+2]
      217 NEWTABLE                         R19 0 0
      219 SETTABLEKS                       R19 R18 K44 ["expectedAqsData"]
      221 GETTABLEKS                       R19 R18 K45 ["knownAqsUserErrors"]
      223 JUMPIF                           R19 ; [+2]
      224 NEWTABLE                         R19 0 0
      226 SETTABLEKS                       R19 R18 K45 ["knownAqsUserErrors"]
      228 GETIMPORT                        R20 K47 [next]
      230 GETTABLEKS                       R21 R18 K44 ["expectedAqsData"]
      232 CALL                             R20 1 1
      233 JUMPIFNOTEQKNIL                  R20 ; [+2]
      235 LOADB                            R19 0 +1
      236 LOADB                            R19 1
      237 JUMPIFNOT                        R19 ; [+21]
      238 MOVE                             R20 R5
      239 LOADNIL                          R21
      240 LOADNIL                          R22
      241 FORGPREP                         R20
      242 GETIMPORT                        R25 K49 [table.find]
      244 GETTABLEKS                       R26 R18 K40 ["requiredData"]
      246 MOVE                             R27 R24
      247 CALL                             R25 2 1
      248 JUMPIF                           R25 ; [+8]
      249 GETTABLEKS                       R26 R18 K40 ["requiredData"]
      251 FASTCALL2                        TABLE_INSERT R26 R24 ; [+4]
      253 MOVE                             R27 R24
      254 GETIMPORT                        R25 K51 [table.insert]
      256 CALL                             R25 2 0
      257 FORGLOOP                         R20 2 ; [-16]
      259 GETTABLEKS                       R20 R18 K52 ["run"]
      261 JUMPIFEQKNIL                     R20 ; [+9]
      263 GETTABLEKS                       R21 R18 K52 ["run"]
      265 FASTCALL1                        TYPEOF R21 ; [+2]
      266 GETIMPORT                        R20 K17 [typeof]
      268 CALL                             R20 1 1
      269 JUMPIFEQKS                       R20 K53 ["function"] ; [+10]
      271 GETIMPORT                        R20 K25 [error]
      273 LOADK                            R22 K54 ["Missing module run function in %*"]
      274 MOVE                             R24 R15
      275 NAMECALL                         R22 R22 K27 ["format"]
      277 CALL                             R22 2 1
      278 MOVE                             R21 R22
      279 CALL                             R20 1 0
      280 DUPTABLE                         R22 K56 [{"__index"}]
      281 NEWCLOSURE                       R23 P3
      282 CAPTURE                          VAL R15
      283 SETTABLEKS                       R23 R22 K55 ["__index"]
      285 FASTCALL2                        SETMETATABLE R18 R22 ; [+4]
      287 MOVE                             R21 R18
      288 GETIMPORT                        R20 K58 [setmetatable]
      290 CALL                             R20 2 0
      291 GETTABLEKS                       R21 R18 K37 ["fflag"]
      293 FASTCALL1                        TYPEOF R21 ; [+2]
      294 GETIMPORT                        R20 K17 [typeof]
      296 CALL                             R20 1 1
      297 JUMPIFNOTEQKS                    R20 K53 ["function"] ; [+10]
      299 GETTABLEKS                       R21 R18 K37 ["fflag"]
      301 CALL                             R21 0 -1
      302 FASTCALL                         TYPEOF ; [+2]
      303 GETIMPORT                        R20 K17 [typeof]
      305 CALL                             R20 -1 1
      306 JUMPIFEQKS                       R20 K59 ["boolean"] ; [+10]
      308 GETIMPORT                        R20 K25 [error]
      310 LOADK                            R22 K60 ["Invalid FFlag config in %*"]
      311 MOVE                             R24 R15
      312 NAMECALL                         R22 R22 K27 ["format"]
      314 CALL                             R22 2 1
      315 MOVE                             R21 R22
      316 CALL                             R20 1 0
      317 GETTABLEKS                       R21 R18 K38 ["shadowFlag"]
      319 FASTCALL1                        TYPEOF R21 ; [+2]
      320 GETIMPORT                        R20 K17 [typeof]
      322 CALL                             R20 1 1
      323 JUMPIFNOTEQKS                    R20 K53 ["function"] ; [+10]
      325 GETTABLEKS                       R21 R18 K38 ["shadowFlag"]
      327 CALL                             R21 0 -1
      328 FASTCALL                         TYPEOF ; [+2]
      329 GETIMPORT                        R20 K17 [typeof]
      331 CALL                             R20 -1 1
      332 JUMPIFEQKS                       R20 K59 ["boolean"] ; [+10]
      334 GETIMPORT                        R20 K25 [error]
      336 LOADK                            R22 K61 ["Invalid shadowFlag config in %*"]
      337 MOVE                             R24 R15
      338 NAMECALL                         R22 R22 K27 ["format"]
      340 CALL                             R22 2 1
      341 MOVE                             R21 R22
      342 CALL                             R20 1 0
      343 MOVE                             R20 R7
      344 MOVE                             R21 R15
      345 GETTABLEKS                       R22 R18 K39 ["categories"]
      347 LOADK                            R23 K62 ["UploadCategory"]
      348 CALL                             R20 3 0
      349 MOVE                             R20 R7
      350 MOVE                             R21 R15
      351 GETTABLEKS                       R22 R18 K40 ["requiredData"]
      353 LOADK                            R23 K10 ["SharedDataMember"]
      354 CALL                             R20 3 0
      355 MOVE                             R20 R7
      356 MOVE                             R21 R15
      357 GETTABLEKS                       R22 R18 K41 ["conditionalData"]
      359 LOADK                            R23 K10 ["SharedDataMember"]
      360 CALL                             R20 3 0
      361 MOVE                             R20 R7
      362 MOVE                             R21 R15
      363 GETTABLEKS                       R22 R18 K42 ["prereqTests"]
      365 LOADK                            R23 K22 ["ValidationModule"]
      366 CALL                             R20 3 0
      367 SETTABLE                         R18 R10 R15
      368 FORGLOOP                         R11 2 ; [-282]
      370 DUPCLOSURE                       R11 K63 [PROTO_4]
      371 CAPTURE                          VAL R10
      372 SETTABLEKS                       R11 R4 K64 ["getValidationModule"]
      374 RETURN                           R4 1
