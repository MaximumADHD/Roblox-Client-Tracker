PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
        7 LOADK                            R6 K3 ["%*Expected table, got %*"]
        8 MOVE                             R8 R2
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R10 R0
       11 GETIMPORT                        R9 K1 [typeof]
       13 CALL                             R9 1 1
       14 NAMECALL                         R6 R6 K4 ["format"]
       16 CALL                             R6 3 1
       17 MOVE                             R5 R6
       18 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       20 MOVE                             R4 R1
       21 GETIMPORT                        R3 K6 [table.insert]
       23 CALL                             R3 2 0
       24 RETURN                           R0 1
       25 GETTABLEKS                       R4 R0 K7 ["banner"]
       27 FASTCALL1                        TYPEOF R4 ; [+2]
       28 GETIMPORT                        R3 K1 [typeof]
       30 CALL                             R3 1 1
       31 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       33 LOADK                            R6 K9 ["%*\"banner\" > Expected string, got %*"]
       34 MOVE                             R8 R2
       35 GETTABLEKS                       R10 R0 K7 ["banner"]
       37 FASTCALL1                        TYPEOF R10 ; [+2]
       38 GETIMPORT                        R9 K1 [typeof]
       40 CALL                             R9 1 1
       41 NAMECALL                         R6 R6 K4 ["format"]
       43 CALL                             R6 3 1
       44 MOVE                             R5 R6
       45 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       47 MOVE                             R4 R1
       48 GETIMPORT                        R3 K6 [table.insert]
       50 CALL                             R3 2 0
       51 GETTABLEKS                       R3 R0 K10 ["titleTextMessage"]
       53 JUMPIFEQKNIL                     R3 ; [+27]
       55 GETTABLEKS                       R4 R0 K10 ["titleTextMessage"]
       57 FASTCALL1                        TYPEOF R4 ; [+2]
       58 GETIMPORT                        R3 K1 [typeof]
       60 CALL                             R3 1 1
       61 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       63 LOADK                            R6 K11 ["%*\"titleTextMessage\" > Expected string, got %*"]
       64 MOVE                             R8 R2
       65 GETTABLEKS                       R10 R0 K10 ["titleTextMessage"]
       67 FASTCALL1                        TYPEOF R10 ; [+2]
       68 GETIMPORT                        R9 K1 [typeof]
       70 CALL                             R9 1 1
       71 NAMECALL                         R6 R6 K4 ["format"]
       73 CALL                             R6 3 1
       74 MOVE                             R5 R6
       75 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       77 MOVE                             R4 R1
       78 GETIMPORT                        R3 K6 [table.insert]
       80 CALL                             R3 2 0
       81 GETTABLEKS                       R3 R0 K12 ["subTextMessage"]
       83 JUMPIFEQKNIL                     R3 ; [+27]
       85 GETTABLEKS                       R4 R0 K12 ["subTextMessage"]
       87 FASTCALL1                        TYPEOF R4 ; [+2]
       88 GETIMPORT                        R3 K1 [typeof]
       90 CALL                             R3 1 1
       91 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       93 LOADK                            R6 K13 ["%*\"subTextMessage\" > Expected string, got %*"]
       94 MOVE                             R8 R2
       95 GETTABLEKS                       R10 R0 K12 ["subTextMessage"]
       97 FASTCALL1                        TYPEOF R10 ; [+2]
       98 GETIMPORT                        R9 K1 [typeof]
      100 CALL                             R9 1 1
      101 NAMECALL                         R6 R6 K4 ["format"]
      103 CALL                             R6 3 1
      104 MOVE                             R5 R6
      105 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      107 MOVE                             R4 R1
      108 GETIMPORT                        R3 K6 [table.insert]
      110 CALL                             R3 2 0
      111 GETTABLEKS                       R3 R0 K14 ["messageVariables"]
      113 JUMPIFEQKNIL                     R3 ; [+86]
      115 GETTABLEKS                       R4 R0 K14 ["messageVariables"]
      117 FASTCALL1                        TYPEOF R4 ; [+2]
      118 GETIMPORT                        R3 K1 [typeof]
      120 CALL                             R3 1 1
      121 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
      123 LOADK                            R6 K15 ["%*\"messageVariables\" > Expected table, got %*"]
      124 MOVE                             R8 R2
      125 GETTABLEKS                       R10 R0 K14 ["messageVariables"]
      127 FASTCALL1                        TYPEOF R10 ; [+2]
      128 GETIMPORT                        R9 K1 [typeof]
      130 CALL                             R9 1 1
      131 NAMECALL                         R6 R6 K4 ["format"]
      133 CALL                             R6 3 1
      134 MOVE                             R5 R6
      135 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      137 MOVE                             R4 R1
      138 GETIMPORT                        R3 K6 [table.insert]
      140 CALL                             R3 2 0
      141 JUMP                             ; [+58]
      142 GETTABLEKS                       R3 R0 K14 ["messageVariables"]
      144 LOADNIL                          R4
      145 LOADNIL                          R5
      146 FORGPREP                         R3
      147 FASTCALL1                        TYPEOF R6 ; [+3]
      148 MOVE                             R9 R6
      149 GETIMPORT                        R8 K1 [typeof]
      151 CALL                             R8 1 1
      152 JUMPIFEQKS                       R8 K8 ["string"] ; [+20]
      154 LOADK                            R11 K16 ["%*\"messageVariables\" > Expected key of type string, got %* as %*"]
      155 MOVE                             R13 R2
      156 MOVE                             R14 R6
      157 FASTCALL1                        TYPEOF R6 ; [+3]
      158 MOVE                             R16 R6
      159 GETIMPORT                        R15 K1 [typeof]
      161 CALL                             R15 1 1
      162 NAMECALL                         R11 R11 K4 ["format"]
      164 CALL                             R11 4 1
      165 MOVE                             R10 R11
      166 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      168 MOVE                             R9 R1
      169 GETIMPORT                        R8 K6 [table.insert]
      171 CALL                             R8 2 0
      172 JUMP                             ; [+25]
      173 FASTCALL1                        TYPEOF R7 ; [+3]
      174 MOVE                             R9 R7
      175 GETIMPORT                        R8 K1 [typeof]
      177 CALL                             R8 1 1
      178 JUMPIFEQKS                       R8 K8 ["string"] ; [+19]
      180 LOADK                            R11 K17 ["%*\"messageVariables\" > [\"%*\"] > Expected string, got %*"]
      181 MOVE                             R13 R2
      182 MOVE                             R14 R6
      183 FASTCALL1                        TYPEOF R7 ; [+3]
      184 MOVE                             R16 R7
      185 GETIMPORT                        R15 K1 [typeof]
      187 CALL                             R15 1 1
      188 NAMECALL                         R11 R11 K4 ["format"]
      190 CALL                             R11 4 1
      191 MOVE                             R10 R11
      192 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      194 MOVE                             R9 R1
      195 GETIMPORT                        R8 K6 [table.insert]
      197 CALL                             R8 2 0
      198 FORGLOOP                         R3 2 ; [-52]
      200 GETTABLEKS                       R3 R0 K18 ["buttonText"]
      202 JUMPIFEQKNIL                     R3 ; [+27]
      204 GETTABLEKS                       R4 R0 K18 ["buttonText"]
      206 FASTCALL1                        TYPEOF R4 ; [+2]
      207 GETIMPORT                        R3 K1 [typeof]
      209 CALL                             R3 1 1
      210 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
      212 LOADK                            R6 K19 ["%*\"buttonText\" > Expected string, got %*"]
      213 MOVE                             R8 R2
      214 GETTABLEKS                       R10 R0 K18 ["buttonText"]
      216 FASTCALL1                        TYPEOF R10 ; [+2]
      217 GETIMPORT                        R9 K1 [typeof]
      219 CALL                             R9 1 1
      220 NAMECALL                         R6 R6 K4 ["format"]
      222 CALL                             R6 3 1
      223 MOVE                             R5 R6
      224 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      226 MOVE                             R4 R1
      227 GETIMPORT                        R3 K6 [table.insert]
      229 CALL                             R3 2 0
      230 GETTABLEKS                       R3 R0 K20 ["destinationUrlLink"]
      232 JUMPIFEQKNIL                     R3 ; [+27]
      234 GETTABLEKS                       R4 R0 K20 ["destinationUrlLink"]
      236 FASTCALL1                        TYPEOF R4 ; [+2]
      237 GETIMPORT                        R3 K1 [typeof]
      239 CALL                             R3 1 1
      240 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
      242 LOADK                            R6 K21 ["%*\"destinationUrlLink\" > Expected string, got %*"]
      243 MOVE                             R8 R2
      244 GETTABLEKS                       R10 R0 K20 ["destinationUrlLink"]
      246 FASTCALL1                        TYPEOF R10 ; [+2]
      247 GETIMPORT                        R9 K1 [typeof]
      249 CALL                             R9 1 1
      250 NAMECALL                         R6 R6 K4 ["format"]
      252 CALL                             R6 3 1
      253 MOVE                             R5 R6
      254 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      256 MOVE                             R4 R1
      257 GETIMPORT                        R3 K6 [table.insert]
      259 CALL                             R3 2 0
      260 GETTABLEKS                       R3 R0 K22 ["imageReference"]
      262 JUMPIFEQKNIL                     R3 ; [+27]
      264 GETTABLEKS                       R4 R0 K22 ["imageReference"]
      266 FASTCALL1                        TYPEOF R4 ; [+2]
      267 GETIMPORT                        R3 K1 [typeof]
      269 CALL                             R3 1 1
      270 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
      272 LOADK                            R6 K23 ["%*\"imageReference\" > Expected string, got %*"]
      273 MOVE                             R8 R2
      274 GETTABLEKS                       R10 R0 K22 ["imageReference"]
      276 FASTCALL1                        TYPEOF R10 ; [+2]
      277 GETIMPORT                        R9 K1 [typeof]
      279 CALL                             R9 1 1
      280 NAMECALL                         R6 R6 K4 ["format"]
      282 CALL                             R6 3 1
      283 MOVE                             R5 R6
      284 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      286 MOVE                             R4 R1
      287 GETIMPORT                        R3 K6 [table.insert]
      289 CALL                             R3 2 0
      290 GETTABLEKS                       R3 R0 K24 ["metadata"]
      292 JUMPIFEQKNIL                     R3 ; [+27]
      294 GETTABLEKS                       R4 R0 K24 ["metadata"]
      296 FASTCALL1                        TYPEOF R4 ; [+2]
      297 GETIMPORT                        R3 K1 [typeof]
      299 CALL                             R3 1 1
      300 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
      302 LOADK                            R6 K25 ["%*\"metadata\" > Expected string, got %*"]
      303 MOVE                             R8 R2
      304 GETTABLEKS                       R10 R0 K24 ["metadata"]
      306 FASTCALL1                        TYPEOF R10 ; [+2]
      307 GETIMPORT                        R9 K1 [typeof]
      309 CALL                             R9 1 1
      310 NAMECALL                         R6 R6 K4 ["format"]
      312 CALL                             R6 3 1
      313 MOVE                             R5 R6
      314 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      316 MOVE                             R4 R1
      317 GETIMPORT                        R3 K6 [table.insert]
      319 CALL                             R3 2 0
      320 GETTABLEKS                       R3 R0 K26 ["visibilityContext"]
      322 JUMPIFEQKNIL                     R3 ; [+16]
      324 GETUPVAL                         R3 0
      325 GETTABLEKS                       R3 R3 K27 ["fromResponse"]
      327 GETTABLEKS                       R4 R0 K26 ["visibilityContext"]
      329 MOVE                             R5 R1
      330 LOADK                            R7 K28 ["%*\"visibilityContext\" > "]
      331 MOVE                             R9 R2
      332 NAMECALL                         R7 R7 K4 ["format"]
      334 CALL                             R7 2 1
      335 MOVE                             R6 R7
      336 CALL                             R3 3 1
      337 SETTABLEKS                       R3 R0 K26 ["visibilityContext"]
      339 GETTABLEKS                       R3 R0 K29 ["expiry"]
      341 JUMPIFEQKNIL                     R3 ; [+27]
      343 GETTABLEKS                       R4 R0 K29 ["expiry"]
      345 FASTCALL1                        TYPEOF R4 ; [+2]
      346 GETIMPORT                        R3 K1 [typeof]
      348 CALL                             R3 1 1
      349 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
      351 LOADK                            R6 K30 ["%*\"expiry\" > Expected string, got %*"]
      352 MOVE                             R8 R2
      353 GETTABLEKS                       R10 R0 K29 ["expiry"]
      355 FASTCALL1                        TYPEOF R10 ; [+2]
      356 GETIMPORT                        R9 K1 [typeof]
      358 CALL                             R9 1 1
      359 NAMECALL                         R6 R6 K4 ["format"]
      361 CALL                             R6 3 1
      362 MOVE                             R5 R6
      363 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      365 MOVE                             R4 R1
      366 GETIMPORT                        R3 K6 [table.insert]
      368 CALL                             R3 2 0
      369 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["visibilityContext"]
        6 JUMPIFEQKNIL                     R2 ; [+9]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       11 GETTABLEKS                       R3 R1 K3 ["visibilityContext"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K3 ["visibilityContext"]
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiCreatorHomeApi"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Models"]
       18 GETTABLEKS                       R4 R4 K9 ["BannerVisibilityType"]
       20 CALL                             R3 1 1
       21 DUPCLOSURE                       R4 K10 [PROTO_0]
       22 CAPTURE                          VAL R3
       23 DUPCLOSURE                       R5 K11 [PROTO_1]
       24 CAPTURE                          VAL R3
       25 GETIMPORT                        R6 K14 [table.freeze]
       27 DUPTABLE                         R7 K17 [{"fromResponse", "toRequest"}]
       28 SETTABLEKS                       R4 R7 K15 ["fromResponse"]
       30 SETTABLEKS                       R5 R7 K16 ["toRequest"]
       32 CALL                             R6 1 1
       33 RETURN                           R6 1
