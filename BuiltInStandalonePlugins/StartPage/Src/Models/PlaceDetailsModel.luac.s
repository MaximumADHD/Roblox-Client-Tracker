PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+12]
        7 LOADK                            R2 K3 ["Expected table, got %*"]
        8 FASTCALL1                        TYPEOF R0 ; [+3]
        9 MOVE                             R5 R0
       10 GETIMPORT                        R4 K1 [typeof]
       12 CALL                             R4 1 1
       13 NAMECALL                         R2 R2 K4 ["format"]
       15 CALL                             R2 2 1
       16 MOVE                             R1 R2
       17 RETURN                           R1 1
       18 GETTABLEKS                       R1 R0 K5 ["placeId"]
       20 JUMPIFNOT                        R1 ; [+20]
       21 GETTABLEKS                       R2 R0 K5 ["placeId"]
       23 FASTCALL1                        TYPEOF R2 ; [+2]
       24 GETIMPORT                        R1 K1 [typeof]
       26 CALL                             R1 1 1
       27 JUMPIFEQKS                       R1 K6 ["number"] ; [+13]
       29 LOADK                            R2 K7 ["\"placeId\" > Expected number, got %*"]
       30 GETTABLEKS                       R5 R0 K5 ["placeId"]
       32 FASTCALL1                        TYPEOF R5 ; [+2]
       33 GETIMPORT                        R4 K1 [typeof]
       35 CALL                             R4 1 1
       36 NAMECALL                         R2 R2 K4 ["format"]
       38 CALL                             R2 2 1
       39 MOVE                             R1 R2
       40 RETURN                           R1 1
       41 GETTABLEKS                       R1 R0 K8 ["name"]
       43 JUMPIFNOT                        R1 ; [+20]
       44 GETTABLEKS                       R2 R0 K8 ["name"]
       46 FASTCALL1                        TYPEOF R2 ; [+2]
       47 GETIMPORT                        R1 K1 [typeof]
       49 CALL                             R1 1 1
       50 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
       52 LOADK                            R2 K10 ["\"name\" > Expected string, got %*"]
       53 GETTABLEKS                       R5 R0 K8 ["name"]
       55 FASTCALL1                        TYPEOF R5 ; [+2]
       56 GETIMPORT                        R4 K1 [typeof]
       58 CALL                             R4 1 1
       59 NAMECALL                         R2 R2 K4 ["format"]
       61 CALL                             R2 2 1
       62 MOVE                             R1 R2
       63 RETURN                           R1 1
       64 GETTABLEKS                       R1 R0 K11 ["description"]
       66 JUMPIFNOT                        R1 ; [+20]
       67 GETTABLEKS                       R2 R0 K11 ["description"]
       69 FASTCALL1                        TYPEOF R2 ; [+2]
       70 GETIMPORT                        R1 K1 [typeof]
       72 CALL                             R1 1 1
       73 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
       75 LOADK                            R2 K12 ["\"description\" > Expected string, got %*"]
       76 GETTABLEKS                       R5 R0 K11 ["description"]
       78 FASTCALL1                        TYPEOF R5 ; [+2]
       79 GETIMPORT                        R4 K1 [typeof]
       81 CALL                             R4 1 1
       82 NAMECALL                         R2 R2 K4 ["format"]
       84 CALL                             R2 2 1
       85 MOVE                             R1 R2
       86 RETURN                           R1 1
       87 GETTABLEKS                       R1 R0 K13 ["sourceName"]
       89 JUMPIFNOT                        R1 ; [+20]
       90 GETTABLEKS                       R2 R0 K13 ["sourceName"]
       92 FASTCALL1                        TYPEOF R2 ; [+2]
       93 GETIMPORT                        R1 K1 [typeof]
       95 CALL                             R1 1 1
       96 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
       98 LOADK                            R2 K14 ["\"sourceName\" > Expected string, got %*"]
       99 GETTABLEKS                       R5 R0 K13 ["sourceName"]
      101 FASTCALL1                        TYPEOF R5 ; [+2]
      102 GETIMPORT                        R4 K1 [typeof]
      104 CALL                             R4 1 1
      105 NAMECALL                         R2 R2 K4 ["format"]
      107 CALL                             R2 2 1
      108 MOVE                             R1 R2
      109 RETURN                           R1 1
      110 GETTABLEKS                       R1 R0 K15 ["sourceDescription"]
      112 JUMPIFNOT                        R1 ; [+20]
      113 GETTABLEKS                       R2 R0 K15 ["sourceDescription"]
      115 FASTCALL1                        TYPEOF R2 ; [+2]
      116 GETIMPORT                        R1 K1 [typeof]
      118 CALL                             R1 1 1
      119 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
      121 LOADK                            R2 K16 ["\"sourceDescription\" > Expected string, got %*"]
      122 GETTABLEKS                       R5 R0 K15 ["sourceDescription"]
      124 FASTCALL1                        TYPEOF R5 ; [+2]
      125 GETIMPORT                        R4 K1 [typeof]
      127 CALL                             R4 1 1
      128 NAMECALL                         R2 R2 K4 ["format"]
      130 CALL                             R2 2 1
      131 MOVE                             R1 R2
      132 RETURN                           R1 1
      133 GETTABLEKS                       R1 R0 K17 ["url"]
      135 JUMPIFNOT                        R1 ; [+20]
      136 GETTABLEKS                       R2 R0 K17 ["url"]
      138 FASTCALL1                        TYPEOF R2 ; [+2]
      139 GETIMPORT                        R1 K1 [typeof]
      141 CALL                             R1 1 1
      142 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
      144 LOADK                            R2 K18 ["\"url\" > Expected string, got %*"]
      145 GETTABLEKS                       R5 R0 K17 ["url"]
      147 FASTCALL1                        TYPEOF R5 ; [+2]
      148 GETIMPORT                        R4 K1 [typeof]
      150 CALL                             R4 1 1
      151 NAMECALL                         R2 R2 K4 ["format"]
      153 CALL                             R2 2 1
      154 MOVE                             R1 R2
      155 RETURN                           R1 1
      156 GETTABLEKS                       R1 R0 K19 ["builder"]
      158 JUMPIFNOT                        R1 ; [+20]
      159 GETTABLEKS                       R2 R0 K19 ["builder"]
      161 FASTCALL1                        TYPEOF R2 ; [+2]
      162 GETIMPORT                        R1 K1 [typeof]
      164 CALL                             R1 1 1
      165 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
      167 LOADK                            R2 K20 ["\"builder\" > Expected string, got %*"]
      168 GETTABLEKS                       R5 R0 K19 ["builder"]
      170 FASTCALL1                        TYPEOF R5 ; [+2]
      171 GETIMPORT                        R4 K1 [typeof]
      173 CALL                             R4 1 1
      174 NAMECALL                         R2 R2 K4 ["format"]
      176 CALL                             R2 2 1
      177 MOVE                             R1 R2
      178 RETURN                           R1 1
      179 GETTABLEKS                       R1 R0 K21 ["builderId"]
      181 JUMPIFNOT                        R1 ; [+20]
      182 GETTABLEKS                       R2 R0 K21 ["builderId"]
      184 FASTCALL1                        TYPEOF R2 ; [+2]
      185 GETIMPORT                        R1 K1 [typeof]
      187 CALL                             R1 1 1
      188 JUMPIFEQKS                       R1 K6 ["number"] ; [+13]
      190 LOADK                            R2 K22 ["\"builderId\" > Expected number, got %*"]
      191 GETTABLEKS                       R5 R0 K21 ["builderId"]
      193 FASTCALL1                        TYPEOF R5 ; [+2]
      194 GETIMPORT                        R4 K1 [typeof]
      196 CALL                             R4 1 1
      197 NAMECALL                         R2 R2 K4 ["format"]
      199 CALL                             R2 2 1
      200 MOVE                             R1 R2
      201 RETURN                           R1 1
      202 GETTABLEKS                       R1 R0 K23 ["hasVerifiedBadge"]
      204 JUMPIFNOT                        R1 ; [+20]
      205 GETTABLEKS                       R2 R0 K23 ["hasVerifiedBadge"]
      207 FASTCALL1                        TYPEOF R2 ; [+2]
      208 GETIMPORT                        R1 K1 [typeof]
      210 CALL                             R1 1 1
      211 JUMPIFEQKS                       R1 K24 ["boolean"] ; [+13]
      213 LOADK                            R2 K25 ["\"hasVerifiedBadge\" > Expected boolean, got %*"]
      214 GETTABLEKS                       R5 R0 K23 ["hasVerifiedBadge"]
      216 FASTCALL1                        TYPEOF R5 ; [+2]
      217 GETIMPORT                        R4 K1 [typeof]
      219 CALL                             R4 1 1
      220 NAMECALL                         R2 R2 K4 ["format"]
      222 CALL                             R2 2 1
      223 MOVE                             R1 R2
      224 RETURN                           R1 1
      225 GETTABLEKS                       R1 R0 K26 ["isPlayable"]
      227 JUMPIFNOT                        R1 ; [+20]
      228 GETTABLEKS                       R2 R0 K26 ["isPlayable"]
      230 FASTCALL1                        TYPEOF R2 ; [+2]
      231 GETIMPORT                        R1 K1 [typeof]
      233 CALL                             R1 1 1
      234 JUMPIFEQKS                       R1 K24 ["boolean"] ; [+13]
      236 LOADK                            R2 K27 ["\"isPlayable\" > Expected boolean, got %*"]
      237 GETTABLEKS                       R5 R0 K26 ["isPlayable"]
      239 FASTCALL1                        TYPEOF R5 ; [+2]
      240 GETIMPORT                        R4 K1 [typeof]
      242 CALL                             R4 1 1
      243 NAMECALL                         R2 R2 K4 ["format"]
      245 CALL                             R2 2 1
      246 MOVE                             R1 R2
      247 RETURN                           R1 1
      248 GETTABLEKS                       R1 R0 K28 ["reasonProhibited"]
      250 JUMPIFNOT                        R1 ; [+20]
      251 GETTABLEKS                       R2 R0 K28 ["reasonProhibited"]
      253 FASTCALL1                        TYPEOF R2 ; [+2]
      254 GETIMPORT                        R1 K1 [typeof]
      256 CALL                             R1 1 1
      257 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
      259 LOADK                            R2 K29 ["\"reasonProhibited\" > Expected string, got %*"]
      260 GETTABLEKS                       R5 R0 K28 ["reasonProhibited"]
      262 FASTCALL1                        TYPEOF R5 ; [+2]
      263 GETIMPORT                        R4 K1 [typeof]
      265 CALL                             R4 1 1
      266 NAMECALL                         R2 R2 K4 ["format"]
      268 CALL                             R2 2 1
      269 MOVE                             R1 R2
      270 RETURN                           R1 1
      271 GETTABLEKS                       R1 R0 K30 ["universeId"]
      273 JUMPIFNOT                        R1 ; [+20]
      274 GETTABLEKS                       R2 R0 K30 ["universeId"]
      276 FASTCALL1                        TYPEOF R2 ; [+2]
      277 GETIMPORT                        R1 K1 [typeof]
      279 CALL                             R1 1 1
      280 JUMPIFEQKS                       R1 K6 ["number"] ; [+13]
      282 LOADK                            R2 K31 ["\"universeId\" > Expected number, got %*"]
      283 GETTABLEKS                       R5 R0 K30 ["universeId"]
      285 FASTCALL1                        TYPEOF R5 ; [+2]
      286 GETIMPORT                        R4 K1 [typeof]
      288 CALL                             R4 1 1
      289 NAMECALL                         R2 R2 K4 ["format"]
      291 CALL                             R2 2 1
      292 MOVE                             R1 R2
      293 RETURN                           R1 1
      294 GETTABLEKS                       R1 R0 K32 ["universeRootPlaceId"]
      296 JUMPIFNOT                        R1 ; [+20]
      297 GETTABLEKS                       R2 R0 K32 ["universeRootPlaceId"]
      299 FASTCALL1                        TYPEOF R2 ; [+2]
      300 GETIMPORT                        R1 K1 [typeof]
      302 CALL                             R1 1 1
      303 JUMPIFEQKS                       R1 K6 ["number"] ; [+13]
      305 LOADK                            R2 K33 ["\"universeRootPlaceId\" > Expected number, got %*"]
      306 GETTABLEKS                       R5 R0 K32 ["universeRootPlaceId"]
      308 FASTCALL1                        TYPEOF R5 ; [+2]
      309 GETIMPORT                        R4 K1 [typeof]
      311 CALL                             R4 1 1
      312 NAMECALL                         R2 R2 K4 ["format"]
      314 CALL                             R2 2 1
      315 MOVE                             R1 R2
      316 RETURN                           R1 1
      317 GETTABLEKS                       R1 R0 K34 ["price"]
      319 JUMPIFNOT                        R1 ; [+20]
      320 GETTABLEKS                       R2 R0 K34 ["price"]
      322 FASTCALL1                        TYPEOF R2 ; [+2]
      323 GETIMPORT                        R1 K1 [typeof]
      325 CALL                             R1 1 1
      326 JUMPIFEQKS                       R1 K6 ["number"] ; [+13]
      328 LOADK                            R2 K35 ["\"price\" > Expected number, got %*"]
      329 GETTABLEKS                       R5 R0 K34 ["price"]
      331 FASTCALL1                        TYPEOF R5 ; [+2]
      332 GETIMPORT                        R4 K1 [typeof]
      334 CALL                             R4 1 1
      335 NAMECALL                         R2 R2 K4 ["format"]
      337 CALL                             R2 2 1
      338 MOVE                             R1 R2
      339 RETURN                           R1 1
      340 GETTABLEKS                       R1 R0 K36 ["imageToken"]
      342 JUMPIFNOT                        R1 ; [+20]
      343 GETTABLEKS                       R2 R0 K36 ["imageToken"]
      345 FASTCALL1                        TYPEOF R2 ; [+2]
      346 GETIMPORT                        R1 K1 [typeof]
      348 CALL                             R1 1 1
      349 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
      351 LOADK                            R2 K37 ["\"imageToken\" > Expected string, got %*"]
      352 GETTABLEKS                       R5 R0 K36 ["imageToken"]
      354 FASTCALL1                        TYPEOF R5 ; [+2]
      355 GETIMPORT                        R4 K1 [typeof]
      357 CALL                             R4 1 1
      358 NAMECALL                         R2 R2 K4 ["format"]
      360 CALL                             R2 2 1
      361 MOVE                             R1 R2
      362 RETURN                           R1 1
      363 LOADNIL                          R1
      364 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPTABLE                         R1 K2 [{"validate"}]
        3 SETTABLEKS                       R0 R1 K1 ["validate"]
        5 RETURN                           R1 1
