PROTO_0:
        0 LENGTH                           R1 R0
        1 LOADN                            R2 0
        2 JUMPIFNOTLT                      R2 R1 ; [+20]
        4 FASTCALL2K                       STRING_SUB R0 K0 ; [+5]
        6 MOVE                             R2 R0
        7 LOADK                            R3 K0 [-1]
        8 GETIMPORT                        R1 K3 [string.sub]
       10 CALL                             R1 2 1
       11 JUMPIFNOTEQKS                    R1 K4 ["/"] ; [+11]
       13 LOADN                            R3 1
       14 LOADN                            R4 -2
       15 FASTCALL3                        STRING_SUB R0 R3 R4
       17 MOVE                             R2 R0
       18 GETIMPORT                        R1 K3 [string.sub]
       20 CALL                             R1 3 1
       21 MOVE                             R0 R1
       22 JUMPBACK                         ; [-23]
       23 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FStringAssistantImageGenHostOverride"]
        3 FASTCALL1                        TYPEOF R0 ; [+3]
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K2 [typeof]
        7 CALL                             R2 1 1
        8 JUMPIFNOTEQKS                    R2 K3 ["string"] ; [+5]
       10 JUMPIFEQKS                       R0 K4 [""] ; [+3]
       12 MOVE                             R1 R0
       13 JUMP                             ; [+6]
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K5 ["get"]
       17 CALL                             R1 0 1
       18 GETTABLEKS                       R1 R1 K6 ["apisUrl"]
       20 LOADK                            R2 K7 ["%*/cube-generation-gateway/api/v1/image-generations"]
       21 MOVE                             R5 R1
       22 LENGTH                           R6 R5
       23 LOADN                            R7 0
       24 JUMPIFNOTLT                      R7 R6 ; [+20]
       26 FASTCALL2K                       STRING_SUB R5 K8 ; [+5]
       28 MOVE                             R7 R5
       29 LOADK                            R8 K8 [-1]
       30 GETIMPORT                        R6 K10 [string.sub]
       32 CALL                             R6 2 1
       33 JUMPIFNOTEQKS                    R6 K11 ["/"] ; [+11]
       35 LOADN                            R8 1
       36 LOADN                            R9 -2
       37 FASTCALL3                        STRING_SUB R5 R8 R9
       39 MOVE                             R7 R5
       40 GETIMPORT                        R6 K10 [string.sub]
       42 CALL                             R6 3 1
       43 MOVE                             R5 R6
       44 JUMPBACK                         ; [-23]
       45 MOVE                             R4 R5
       46 NAMECALL                         R2 R2 K12 ["format"]
       48 CALL                             R2 2 1
       49 RETURN                           R2 1

PROTO_2:
        0 NEWTABLE                         R0 2 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["get"]
        5 CALL                             R2 0 1
        6 GETTABLEKS                       R2 R2 K1 ["getUserId"]
        8 CALL                             R2 0 -1
        9 FASTCALL                         TOSTRING ; [+2]
       10 GETIMPORT                        R1 K3 [tostring]
       12 CALL                             R1 -1 1
       13 SETTABLEKS                       R1 R0 K4 ["robloxctx-authenticated-userid"]
       15 LOADK                            R1 K5 ["false"]
       16 SETTABLEKS                       R1 R0 K6 ["robloxctx-rcc"]
       18 RETURN                           R0 1

PROTO_3:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+3]
        7 JUMPIFNOTEQKS                    R0 K3 [""] ; [+3]
        9 LOADNIL                          R1
       10 RETURN                           R1 1
       11 GETIMPORT                        R1 K5 [pcall]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K6 ["decode"]
       16 MOVE                             R3 R0
       17 CALL                             R1 2 2
       18 JUMPIF                           R1 ; [+2]
       19 LOADNIL                          R3
       20 RETURN                           R3 1
       21 RETURN                           R2 1

PROTO_4:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["string"] ; [+3]
        7 JUMPIFNOTEQKS                    R0 K3 [""] ; [+3]
        9 LOADNIL                          R2
       10 JUMP                             ; [+11]
       11 GETIMPORT                        R3 K5 [pcall]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K6 ["decode"]
       16 MOVE                             R5 R0
       17 CALL                             R3 2 2
       18 JUMPIF                           R3 ; [+2]
       19 LOADNIL                          R2
       20 JUMP                             ; [+1]
       21 MOVE                             R2 R4
       22 FASTCALL1                        TYPEOF R2 ; [+3]
       23 MOVE                             R4 R2
       24 GETIMPORT                        R3 K1 [typeof]
       26 CALL                             R3 1 1
       27 JUMPIFNOTEQKS                    R3 K7 ["table"] ; [+19]
       29 GETTABLEKS                       R3 R2 K8 ["message"]
       31 JUMPIF                           R3 ; [+5]
       32 GETTABLEKS                       R3 R2 K9 ["developerMessage"]
       34 JUMPIF                           R3 ; [+2]
       35 GETTABLEKS                       R3 R2 K10 ["details"]
       37 FASTCALL1                        TYPEOF R3 ; [+3]
       38 MOVE                             R5 R3
       39 GETIMPORT                        R4 K1 [typeof]
       41 CALL                             R4 1 1
       42 JUMPIFNOTEQKS                    R4 K2 ["string"] ; [+4]
       44 JUMPIFEQKS                       R3 K3 [""] ; [+2]
       46 RETURN                           R3 1
       47 LOADK                            R3 K11 ["HTTP error (status=%*)"]
       48 FASTCALL1                        TOSTRING R1 ; [+3]
       49 MOVE                             R6 R1
       50 GETIMPORT                        R5 K13 [tostring]
       52 CALL                             R5 1 1
       53 NAMECALL                         R3 R3 K14 ["format"]
       55 CALL                             R3 2 1
       56 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantImageGenUseOpenApiClient"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["get"]
        7 CALL                             R1 0 1
        8 GETTABLEKS                       R1 R1 K2 ["imageGeneration"]
       10 JUMPIFNOTEQKNIL                  R1 ; [+2]
       12 LOADB                            R0 0 +1
       13 LOADB                            R0 1
       14 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["http"]
        3 GETTABLEKS                       R0 R0 K1 ["requestAsync"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["FFlagAssistantImageGenUseOpenApiClient"]
        7 JUMPIFNOT                        R2 ; [+10]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K0 ["get"]
       11 CALL                             R3 0 1
       12 GETTABLEKS                       R3 R3 K2 ["imageGeneration"]
       14 JUMPIFNOTEQKNIL                  R3 ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 JUMPIFNOT                        R2 ; [+7]
       19 GETTABLEKS                       R2 R1 K2 ["imageGeneration"]
       21 GETTABLEKS                       R2 R2 K3 ["startAsync"]
       23 MOVE                             R3 R0
       24 CALL                             R2 1 -1
       25 RETURN                           R2 -1
       26 GETUPVAL                         R2 2
       27 GETTABLEKS                       R2 R2 K4 ["new"]
       29 CALL                             R2 0 1
       30 LOADB                            R5 1
       31 NAMECALL                         R3 R2 K5 ["forceMultipart"]
       33 CALL                             R3 2 0
       34 GETTABLEKS                       R4 R0 K6 ["textPrompt"]
       36 FASTCALL1                        TYPEOF R4 ; [+2]
       37 GETIMPORT                        R3 K8 [typeof]
       39 CALL                             R3 1 1
       40 JUMPIFNOTEQKS                    R3 K9 ["string"] ; [+11]
       42 GETTABLEKS                       R3 R0 K6 ["textPrompt"]
       44 JUMPIFEQKS                       R3 K10 [""] ; [+7]
       46 LOADK                            R5 K11 ["TextPrompt"]
       47 GETTABLEKS                       R6 R0 K6 ["textPrompt"]
       49 NAMECALL                         R3 R2 K12 ["addField"]
       51 CALL                             R3 3 0
       52 GETTABLEKS                       R4 R0 K13 ["model"]
       54 FASTCALL1                        TYPEOF R4 ; [+2]
       55 GETIMPORT                        R3 K8 [typeof]
       57 CALL                             R3 1 1
       58 JUMPIFNOTEQKS                    R3 K9 ["string"] ; [+11]
       60 GETTABLEKS                       R3 R0 K13 ["model"]
       62 JUMPIFEQKS                       R3 K10 [""] ; [+7]
       64 LOADK                            R5 K14 ["Model"]
       65 GETTABLEKS                       R6 R0 K13 ["model"]
       67 NAMECALL                         R3 R2 K12 ["addField"]
       69 CALL                             R3 3 0
       70 GETTABLEKS                       R3 R0 K15 ["removeBackground"]
       72 JUMPIFEQKNIL                     R3 ; [+11]
       74 LOADK                            R5 K16 ["RemoveBackground"]
       75 GETTABLEKS                       R7 R0 K15 ["removeBackground"]
       77 FASTCALL1                        TOSTRING R7 ; [+2]
       78 GETIMPORT                        R6 K18 [tostring]
       80 CALL                             R6 1 1
       81 NAMECALL                         R3 R2 K12 ["addField"]
       83 CALL                             R3 3 0
       84 GETTABLEKS                       R4 R0 K19 ["seed"]
       86 FASTCALL1                        TYPEOF R4 ; [+2]
       87 GETIMPORT                        R3 K8 [typeof]
       89 CALL                             R3 1 1
       90 JUMPIFNOTEQKS                    R3 K20 ["number"] ; [+11]
       92 LOADK                            R5 K21 ["Seed"]
       93 GETTABLEKS                       R7 R0 K19 ["seed"]
       95 FASTCALL1                        TOSTRING R7 ; [+2]
       96 GETIMPORT                        R6 K18 [tostring]
       98 CALL                             R6 1 1
       99 NAMECALL                         R3 R2 K12 ["addField"]
      101 CALL                             R3 3 0
      102 GETTABLEKS                       R3 R0 K22 ["images"]
      104 JUMPIFNOT                        R3 ; [+21]
      105 GETTABLEKS                       R3 R0 K22 ["images"]
      107 LOADNIL                          R4
      108 LOADNIL                          R5
      109 FORGPREP                         R3
      110 LOADK                            R10 K23 ["Images"]
      111 GETUPVAL                         R11 2
      112 GETTABLEKS                       R11 R11 K24 ["file"]
      114 GETTABLEKS                       R12 R7 K25 ["name"]
      116 GETTABLEKS                       R13 R7 K26 ["content"]
      118 GETTABLEKS                       R14 R7 K27 ["contentType"]
      120 CALL                             R11 3 -1
      121 NAMECALL                         R8 R2 K28 ["addFile"]
      123 CALL                             R8 -1 0
      124 FORGLOOP                         R3 2 ; [-15]
      126 GETUPVAL                         R6 1
      127 GETTABLEKS                       R6 R6 K29 ["FStringAssistantImageGenHostOverride"]
      129 FASTCALL1                        TYPEOF R6 ; [+3]
      130 MOVE                             R9 R6
      131 GETIMPORT                        R8 K8 [typeof]
      133 CALL                             R8 1 1
      134 JUMPIFNOTEQKS                    R8 K9 ["string"] ; [+5]
      136 JUMPIFEQKS                       R6 K10 [""] ; [+3]
      138 MOVE                             R7 R6
      139 JUMP                             ; [+6]
      140 GETUPVAL                         R7 0
      141 GETTABLEKS                       R7 R7 K0 ["get"]
      143 CALL                             R7 0 1
      144 GETTABLEKS                       R7 R7 K30 ["apisUrl"]
      146 LOADK                            R8 K31 ["%*/cube-generation-gateway/api/v1/image-generations"]
      147 MOVE                             R11 R7
      148 LENGTH                           R12 R11
      149 LOADN                            R13 0
      150 JUMPIFNOTLT                      R13 R12 ; [+20]
      152 FASTCALL2K                       STRING_SUB R11 K32 ; [+5]
      154 MOVE                             R13 R11
      155 LOADK                            R14 K32 [-1]
      156 GETIMPORT                        R12 K34 [string.sub]
      158 CALL                             R12 2 1
      159 JUMPIFNOTEQKS                    R12 K35 ["/"] ; [+11]
      161 LOADN                            R14 1
      162 LOADN                            R15 -2
      163 FASTCALL3                        STRING_SUB R11 R14 R15
      165 MOVE                             R13 R11
      166 GETIMPORT                        R12 K34 [string.sub]
      168 CALL                             R12 3 1
      169 MOVE                             R11 R12
      170 JUMPBACK                         ; [-23]
      171 MOVE                             R10 R11
      172 NAMECALL                         R8 R8 K36 ["format"]
      174 CALL                             R8 2 1
      175 MOVE                             R5 R8
      176 LOADK                            R6 K37 ["POST"]
      177 NAMECALL                         R3 R2 K38 ["buildRequest"]
      179 CALL                             R3 3 1
      180 NEWTABLE                         R4 2 0
      182 GETUPVAL                         R8 0
      183 GETTABLEKS                       R8 R8 K0 ["get"]
      185 CALL                             R8 0 1
      186 GETTABLEKS                       R8 R8 K39 ["getUserId"]
      188 CALL                             R8 0 -1
      189 FASTCALL                         TOSTRING ; [+2]
      190 GETIMPORT                        R7 K18 [tostring]
      192 CALL                             R7 -1 1
      193 SETTABLEKS                       R7 R4 K40 ["robloxctx-authenticated-userid"]
      195 LOADK                            R7 K41 ["false"]
      196 SETTABLEKS                       R7 R4 K42 ["robloxctx-rcc"]
      198 LOADNIL                          R5
      199 LOADNIL                          R6
      200 FORGPREP                         R4
      201 GETTABLEKS                       R9 R3 K43 ["Headers"]
      203 SETTABLE                         R8 R9 R7
      204 FORGLOOP                         R4 2 ; [-4]
      206 GETUPVAL                         R4 1
      207 GETTABLEKS                       R4 R4 K44 ["FFlagDebugLogAssistantUI"]
      209 JUMPIFNOT                        R4 ; [+21]
      210 GETIMPORT                        R4 K46 [print]
      212 LOADK                            R5 K47 ["[ImageGenerationClient] POST %* model=%* seed=%*"]
      213 GETTABLEKS                       R7 R3 K48 ["Url"]
      215 GETTABLEKS                       R9 R0 K13 ["model"]
      217 FASTCALL1                        TOSTRING R9 ; [+2]
      218 GETIMPORT                        R8 K18 [tostring]
      220 CALL                             R8 1 1
      221 GETTABLEKS                       R10 R0 K19 ["seed"]
      223 FASTCALL1                        TOSTRING R10 ; [+2]
      224 GETIMPORT                        R9 K18 [tostring]
      226 CALL                             R9 1 1
      227 NAMECALL                         R5 R5 K36 ["format"]
      229 CALL                             R5 4 1
      230 CALL                             R4 1 0
      231 GETIMPORT                        R4 K50 [pcall]
      233 NEWCLOSURE                       R5 P0
      234 CAPTURE                          VAL R1
      235 CAPTURE                          VAL R3
      236 CALL                             R4 1 2
      237 JUMPIF                           R4 ; [+27]
      238 GETIMPORT                        R6 K52 [warn]
      240 LOADK                            R7 K53 ["[ImageGenerationClient] POST %* threw: %*"]
      241 GETTABLEKS                       R9 R3 K48 ["Url"]
      243 FASTCALL1                        TOSTRING R5 ; [+3]
      244 MOVE                             R11 R5
      245 GETIMPORT                        R10 K18 [tostring]
      247 CALL                             R10 1 1
      248 NAMECALL                         R7 R7 K36 ["format"]
      250 CALL                             R7 3 1
      251 CALL                             R6 1 0
      252 DUPTABLE                         R6 K57 [{["ok"] = False, ["errorMessage"]}]
      253 LOADK                            R7 K58 ["Failed to send image generation request: %*"]
      254 FASTCALL1                        TOSTRING R5 ; [+3]
      255 MOVE                             R10 R5
      256 GETIMPORT                        R9 K18 [tostring]
      258 CALL                             R9 1 1
      259 NAMECALL                         R7 R7 K36 ["format"]
      261 CALL                             R7 2 1
      262 SETTABLEKS                       R7 R6 K56 ["errorMessage"]
      264 RETURN                           R6 1
      265 GETTABLEKS                       R6 R5 K59 ["Success"]
      267 JUMPIF                           R6 ; [+91]
      268 GETIMPORT                        R6 K52 [warn]
      270 LOADK                            R7 K60 ["[ImageGenerationClient] POST %* -> status=%* body=%*"]
      271 GETTABLEKS                       R9 R3 K48 ["Url"]
      273 GETTABLEKS                       R11 R5 K61 ["StatusCode"]
      275 FASTCALL1                        TOSTRING R11 ; [+2]
      276 GETIMPORT                        R10 K18 [tostring]
      278 CALL                             R10 1 1
      279 GETTABLEKS                       R12 R5 K62 ["Body"]
      281 FASTCALL1                        TOSTRING R12 ; [+2]
      282 GETIMPORT                        R11 K18 [tostring]
      284 CALL                             R11 1 1
      285 NAMECALL                         R7 R7 K36 ["format"]
      287 CALL                             R7 4 1
      288 CALL                             R6 1 0
      289 DUPTABLE                         R6 K64 [{["ok"] = False, ["statusCode"], ["errorMessage"]}]
      290 GETTABLEKS                       R7 R5 K61 ["StatusCode"]
      292 SETTABLEKS                       R7 R6 K63 ["statusCode"]
      294 GETTABLEKS                       R8 R5 K62 ["Body"]
      296 GETTABLEKS                       R9 R5 K61 ["StatusCode"]
      298 FASTCALL1                        TYPEOF R8 ; [+3]
      299 MOVE                             R12 R8
      300 GETIMPORT                        R11 K8 [typeof]
      302 CALL                             R11 1 1
      303 JUMPIFNOTEQKS                    R11 K9 ["string"] ; [+3]
      305 JUMPIFNOTEQKS                    R8 K10 [""] ; [+3]
      307 LOADNIL                          R10
      308 JUMP                             ; [+11]
      309 GETIMPORT                        R11 K50 [pcall]
      311 GETUPVAL                         R12 3
      312 GETTABLEKS                       R12 R12 K65 ["decode"]
      314 MOVE                             R13 R8
      315 CALL                             R11 2 2
      316 JUMPIF                           R11 ; [+2]
      317 LOADNIL                          R10
      318 JUMP                             ; [+1]
      319 MOVE                             R10 R12
      320 FASTCALL1                        TYPEOF R10 ; [+3]
      321 MOVE                             R12 R10
      322 GETIMPORT                        R11 K8 [typeof]
      324 CALL                             R11 1 1
      325 JUMPIFNOTEQKS                    R11 K66 ["table"] ; [+20]
      327 GETTABLEKS                       R11 R10 K67 ["message"]
      329 JUMPIF                           R11 ; [+5]
      330 GETTABLEKS                       R11 R10 K68 ["developerMessage"]
      332 JUMPIF                           R11 ; [+2]
      333 GETTABLEKS                       R11 R10 K69 ["details"]
      335 FASTCALL1                        TYPEOF R11 ; [+3]
      336 MOVE                             R13 R11
      337 GETIMPORT                        R12 K8 [typeof]
      339 CALL                             R12 1 1
      340 JUMPIFNOTEQKS                    R12 K9 ["string"] ; [+5]
      342 JUMPIFEQKS                       R11 K10 [""] ; [+3]
      344 MOVE                             R7 R11
      345 JUMP                             ; [+10]
      346 LOADK                            R11 K70 ["HTTP error (status=%*)"]
      347 FASTCALL1                        TOSTRING R9 ; [+3]
      348 MOVE                             R14 R9
      349 GETIMPORT                        R13 K18 [tostring]
      351 CALL                             R13 1 1
      352 NAMECALL                         R11 R11 K36 ["format"]
      354 CALL                             R11 2 1
      355 MOVE                             R7 R11
      356 SETTABLEKS                       R7 R6 K56 ["errorMessage"]
      358 RETURN                           R6 1
      359 GETTABLEKS                       R7 R5 K62 ["Body"]
      361 FASTCALL1                        TYPEOF R7 ; [+3]
      362 MOVE                             R9 R7
      363 GETIMPORT                        R8 K8 [typeof]
      365 CALL                             R8 1 1
      366 JUMPIFNOTEQKS                    R8 K9 ["string"] ; [+3]
      368 JUMPIFNOTEQKS                    R7 K10 [""] ; [+3]
      370 LOADNIL                          R6
      371 JUMP                             ; [+11]
      372 GETIMPORT                        R8 K50 [pcall]
      374 GETUPVAL                         R9 3
      375 GETTABLEKS                       R9 R9 K65 ["decode"]
      377 MOVE                             R10 R7
      378 CALL                             R8 2 2
      379 JUMPIF                           R8 ; [+2]
      380 LOADNIL                          R6
      381 JUMP                             ; [+1]
      382 MOVE                             R6 R9
      383 FASTCALL1                        TYPEOF R6 ; [+3]
      384 MOVE                             R8 R6
      385 GETIMPORT                        R7 K8 [typeof]
      387 CALL                             R7 1 1
      388 JUMPIFNOTEQKS                    R7 K66 ["table"] ; [+9]
      390 GETTABLEKS                       R8 R6 K71 ["imageGenerationId"]
      392 FASTCALL1                        TYPEOF R8 ; [+2]
      393 GETIMPORT                        R7 K8 [typeof]
      395 CALL                             R7 1 1
      396 JUMPIFEQKS                       R7 K9 ["string"] ; [+40]
      398 GETIMPORT                        R7 K52 [warn]
      400 LOADK                            R8 K72 ["[ImageGenerationClient] POST %* -> status=%* missing imageGenerationId; body=%*"]
      401 GETTABLEKS                       R10 R3 K48 ["Url"]
      403 GETTABLEKS                       R12 R5 K61 ["StatusCode"]
      405 FASTCALL1                        TOSTRING R12 ; [+2]
      406 GETIMPORT                        R11 K18 [tostring]
      408 CALL                             R11 1 1
      409 GETTABLEKS                       R13 R5 K62 ["Body"]
      411 FASTCALL1                        TOSTRING R13 ; [+2]
      412 GETIMPORT                        R12 K18 [tostring]
      414 CALL                             R12 1 1
      415 NAMECALL                         R8 R8 K36 ["format"]
      417 CALL                             R8 4 1
      418 CALL                             R7 1 0
      419 DUPTABLE                         R7 K64 [{["ok"] = False, ["statusCode"], ["errorMessage"]}]
      420 GETTABLEKS                       R8 R5 K61 ["StatusCode"]
      422 SETTABLEKS                       R8 R7 K63 ["statusCode"]
      424 LOADK                            R8 K73 ["Response missing 'imageGenerationId': %*"]
      425 GETTABLEKS                       R11 R5 K62 ["Body"]
      427 FASTCALL1                        TOSTRING R11 ; [+2]
      428 GETIMPORT                        R10 K18 [tostring]
      430 CALL                             R10 1 1
      431 NAMECALL                         R8 R8 K36 ["format"]
      433 CALL                             R8 2 1
      434 SETTABLEKS                       R8 R7 K56 ["errorMessage"]
      436 RETURN                           R7 1
      437 DUPTABLE                         R7 K75 [{["ok"] = True, ["statusCode"], ["imageGenerationId"]}]
      438 GETTABLEKS                       R8 R5 K61 ["StatusCode"]
      440 SETTABLEKS                       R8 R7 K63 ["statusCode"]
      442 GETTABLEKS                       R8 R6 K71 ["imageGenerationId"]
      444 SETTABLEKS                       R8 R7 K71 ["imageGenerationId"]
      446 RETURN                           R7 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["http"]
        3 GETTABLEKS                       R0 R0 K1 ["requestAsync"]
        5 DUPTABLE                         R1 K6 [{["Url"], ["Method"] = "GET", ["Headers"]}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["Url"]
        9 NEWTABLE                         R2 2 0
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K7 ["get"]
       14 CALL                             R4 0 1
       15 GETTABLEKS                       R4 R4 K8 ["getUserId"]
       17 CALL                             R4 0 -1
       18 FASTCALL                         TOSTRING ; [+2]
       19 GETIMPORT                        R3 K10 [tostring]
       21 CALL                             R3 -1 1
       22 SETTABLEKS                       R3 R2 K11 ["robloxctx-authenticated-userid"]
       24 LOADK                            R3 K12 ["false"]
       25 SETTABLEKS                       R3 R2 K13 ["robloxctx-rcc"]
       27 SETTABLEKS                       R2 R1 K5 ["Headers"]
       29 CALL                             R0 1 -1
       30 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["FFlagAssistantImageGenUseOpenApiClient"]
        7 JUMPIFNOT                        R2 ; [+10]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K0 ["get"]
       11 CALL                             R3 0 1
       12 GETTABLEKS                       R3 R3 K2 ["imageGeneration"]
       14 JUMPIFNOTEQKNIL                  R3 ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 JUMPIFNOT                        R2 ; [+7]
       19 GETTABLEKS                       R2 R1 K2 ["imageGeneration"]
       21 GETTABLEKS                       R2 R2 K3 ["getStatusAsync"]
       23 MOVE                             R3 R0
       24 CALL                             R2 1 -1
       25 RETURN                           R2 -1
       26 LOADK                            R2 K4 ["%*/%*"]
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R5 R5 K5 ["FStringAssistantImageGenHostOverride"]
       30 FASTCALL1                        TYPEOF R5 ; [+3]
       31 MOVE                             R8 R5
       32 GETIMPORT                        R7 K7 [typeof]
       34 CALL                             R7 1 1
       35 JUMPIFNOTEQKS                    R7 K8 ["string"] ; [+5]
       37 JUMPIFEQKS                       R5 K9 [""] ; [+3]
       39 MOVE                             R6 R5
       40 JUMP                             ; [+6]
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R6 R6 K0 ["get"]
       44 CALL                             R6 0 1
       45 GETTABLEKS                       R6 R6 K10 ["apisUrl"]
       47 LOADK                            R7 K11 ["%*/cube-generation-gateway/api/v1/image-generations"]
       48 MOVE                             R10 R6
       49 LENGTH                           R11 R10
       50 LOADN                            R12 0
       51 JUMPIFNOTLT                      R12 R11 ; [+20]
       53 FASTCALL2K                       STRING_SUB R10 K12 ; [+5]
       55 MOVE                             R12 R10
       56 LOADK                            R13 K12 [-1]
       57 GETIMPORT                        R11 K14 [string.sub]
       59 CALL                             R11 2 1
       60 JUMPIFNOTEQKS                    R11 K15 ["/"] ; [+11]
       62 LOADN                            R13 1
       63 LOADN                            R14 -2
       64 FASTCALL3                        STRING_SUB R10 R13 R14
       66 MOVE                             R12 R10
       67 GETIMPORT                        R11 K14 [string.sub]
       69 CALL                             R11 3 1
       70 MOVE                             R10 R11
       71 JUMPBACK                         ; [-23]
       72 MOVE                             R9 R10
       73 NAMECALL                         R7 R7 K16 ["format"]
       75 CALL                             R7 2 1
       76 MOVE                             R4 R7
       77 MOVE                             R5 R0
       78 NAMECALL                         R2 R2 K16 ["format"]
       80 CALL                             R2 3 1
       81 GETIMPORT                        R3 K18 [pcall]
       83 NEWCLOSURE                       R4 P0
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R2
       86 CAPTURE                          UPVAL U0
       87 CALL                             R3 1 2
       88 JUMPIF                           R3 ; [+26]
       89 GETIMPORT                        R5 K20 [warn]
       91 LOADK                            R6 K21 ["[ImageGenerationClient] GET %* threw: %*"]
       92 MOVE                             R8 R2
       93 FASTCALL1                        TOSTRING R4 ; [+3]
       94 MOVE                             R10 R4
       95 GETIMPORT                        R9 K23 [tostring]
       97 CALL                             R9 1 1
       98 NAMECALL                         R6 R6 K16 ["format"]
      100 CALL                             R6 3 1
      101 CALL                             R5 1 0
      102 DUPTABLE                         R5 K27 [{["ok"] = False, ["errorMessage"]}]
      103 LOADK                            R6 K28 ["Failed to fetch status: %*"]
      104 FASTCALL1                        TOSTRING R4 ; [+3]
      105 MOVE                             R9 R4
      106 GETIMPORT                        R8 K23 [tostring]
      108 CALL                             R8 1 1
      109 NAMECALL                         R6 R6 K16 ["format"]
      111 CALL                             R6 2 1
      112 SETTABLEKS                       R6 R5 K26 ["errorMessage"]
      114 RETURN                           R5 1
      115 GETTABLEKS                       R5 R4 K29 ["Success"]
      117 JUMPIF                           R5 ; [+90]
      118 GETIMPORT                        R5 K20 [warn]
      120 LOADK                            R6 K30 ["[ImageGenerationClient] GET %* -> status=%* body=%*"]
      121 MOVE                             R8 R2
      122 GETTABLEKS                       R10 R4 K31 ["StatusCode"]
      124 FASTCALL1                        TOSTRING R10 ; [+2]
      125 GETIMPORT                        R9 K23 [tostring]
      127 CALL                             R9 1 1
      128 GETTABLEKS                       R11 R4 K32 ["Body"]
      130 FASTCALL1                        TOSTRING R11 ; [+2]
      131 GETIMPORT                        R10 K23 [tostring]
      133 CALL                             R10 1 1
      134 NAMECALL                         R6 R6 K16 ["format"]
      136 CALL                             R6 4 1
      137 CALL                             R5 1 0
      138 DUPTABLE                         R5 K34 [{["ok"] = False, ["statusCode"], ["errorMessage"]}]
      139 GETTABLEKS                       R6 R4 K31 ["StatusCode"]
      141 SETTABLEKS                       R6 R5 K33 ["statusCode"]
      143 GETTABLEKS                       R7 R4 K32 ["Body"]
      145 GETTABLEKS                       R8 R4 K31 ["StatusCode"]
      147 FASTCALL1                        TYPEOF R7 ; [+3]
      148 MOVE                             R11 R7
      149 GETIMPORT                        R10 K7 [typeof]
      151 CALL                             R10 1 1
      152 JUMPIFNOTEQKS                    R10 K8 ["string"] ; [+3]
      154 JUMPIFNOTEQKS                    R7 K9 [""] ; [+3]
      156 LOADNIL                          R9
      157 JUMP                             ; [+11]
      158 GETIMPORT                        R10 K18 [pcall]
      160 GETUPVAL                         R11 2
      161 GETTABLEKS                       R11 R11 K35 ["decode"]
      163 MOVE                             R12 R7
      164 CALL                             R10 2 2
      165 JUMPIF                           R10 ; [+2]
      166 LOADNIL                          R9
      167 JUMP                             ; [+1]
      168 MOVE                             R9 R11
      169 FASTCALL1                        TYPEOF R9 ; [+3]
      170 MOVE                             R11 R9
      171 GETIMPORT                        R10 K7 [typeof]
      173 CALL                             R10 1 1
      174 JUMPIFNOTEQKS                    R10 K36 ["table"] ; [+20]
      176 GETTABLEKS                       R10 R9 K37 ["message"]
      178 JUMPIF                           R10 ; [+5]
      179 GETTABLEKS                       R10 R9 K38 ["developerMessage"]
      181 JUMPIF                           R10 ; [+2]
      182 GETTABLEKS                       R10 R9 K39 ["details"]
      184 FASTCALL1                        TYPEOF R10 ; [+3]
      185 MOVE                             R12 R10
      186 GETIMPORT                        R11 K7 [typeof]
      188 CALL                             R11 1 1
      189 JUMPIFNOTEQKS                    R11 K8 ["string"] ; [+5]
      191 JUMPIFEQKS                       R10 K9 [""] ; [+3]
      193 MOVE                             R6 R10
      194 JUMP                             ; [+10]
      195 LOADK                            R10 K40 ["HTTP error (status=%*)"]
      196 FASTCALL1                        TOSTRING R8 ; [+3]
      197 MOVE                             R13 R8
      198 GETIMPORT                        R12 K23 [tostring]
      200 CALL                             R12 1 1
      201 NAMECALL                         R10 R10 K16 ["format"]
      203 CALL                             R10 2 1
      204 MOVE                             R6 R10
      205 SETTABLEKS                       R6 R5 K26 ["errorMessage"]
      207 RETURN                           R5 1
      208 GETTABLEKS                       R6 R4 K32 ["Body"]
      210 FASTCALL1                        TYPEOF R6 ; [+3]
      211 MOVE                             R8 R6
      212 GETIMPORT                        R7 K7 [typeof]
      214 CALL                             R7 1 1
      215 JUMPIFNOTEQKS                    R7 K8 ["string"] ; [+3]
      217 JUMPIFNOTEQKS                    R6 K9 [""] ; [+3]
      219 LOADNIL                          R5
      220 JUMP                             ; [+11]
      221 GETIMPORT                        R7 K18 [pcall]
      223 GETUPVAL                         R8 2
      224 GETTABLEKS                       R8 R8 K35 ["decode"]
      226 MOVE                             R9 R6
      227 CALL                             R7 2 2
      228 JUMPIF                           R7 ; [+2]
      229 LOADNIL                          R5
      230 JUMP                             ; [+1]
      231 MOVE                             R5 R8
      232 FASTCALL1                        TYPEOF R5 ; [+3]
      233 MOVE                             R7 R5
      234 GETIMPORT                        R6 K7 [typeof]
      236 CALL                             R6 1 1
      237 JUMPIFEQKS                       R6 K36 ["table"] ; [+39]
      239 GETIMPORT                        R6 K20 [warn]
      241 LOADK                            R7 K41 ["[ImageGenerationClient] GET %* -> status=%* non-JSON body=%*"]
      242 MOVE                             R9 R2
      243 GETTABLEKS                       R11 R4 K31 ["StatusCode"]
      245 FASTCALL1                        TOSTRING R11 ; [+2]
      246 GETIMPORT                        R10 K23 [tostring]
      248 CALL                             R10 1 1
      249 GETTABLEKS                       R12 R4 K32 ["Body"]
      251 FASTCALL1                        TOSTRING R12 ; [+2]
      252 GETIMPORT                        R11 K23 [tostring]
      254 CALL                             R11 1 1
      255 NAMECALL                         R7 R7 K16 ["format"]
      257 CALL                             R7 4 1
      258 CALL                             R6 1 0
      259 DUPTABLE                         R6 K34 [{["ok"] = False, ["statusCode"], ["errorMessage"]}]
      260 GETTABLEKS                       R7 R4 K31 ["StatusCode"]
      262 SETTABLEKS                       R7 R6 K33 ["statusCode"]
      264 LOADK                            R7 K42 ["Response body is not JSON: %*"]
      265 GETTABLEKS                       R10 R4 K32 ["Body"]
      267 FASTCALL1                        TOSTRING R10 ; [+2]
      268 GETIMPORT                        R9 K23 [tostring]
      270 CALL                             R9 1 1
      271 NAMECALL                         R7 R7 K16 ["format"]
      273 CALL                             R7 2 1
      274 SETTABLEKS                       R7 R6 K26 ["errorMessage"]
      276 RETURN                           R6 1
      277 GETUPVAL                         R6 3
      278 GETTABLEKS                       R6 R6 K43 ["toGetStatusResult"]
      280 LOADB                            R7 1
      281 GETTABLEKS                       R8 R4 K31 ["StatusCode"]
      283 MOVE                             R9 R5
      284 LOADNIL                          R10
      285 CALL                             R6 4 1
      286 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Util"]
       23 GETTABLEKS                       R4 R4 K10 ["FormRequestBuilder"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Parent"]
       30 GETTABLEKS                       R5 R5 K12 ["Gen3dCore"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K11 ["Parent"]
       37 GETTABLEKS                       R6 R6 K13 ["ModelContextProtocol"]
       39 CALL                             R5 1 1
       40 GETTABLEKS                       R6 R5 K14 ["Json"]
       42 GETTABLEKS                       R7 R4 K15 ["ImageGenerationResponseOps"]
       44 DUPCLOSURE                       R8 K16 [PROTO_0]
       45 DUPCLOSURE                       R9 K17 [PROTO_1]
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R1
       48 DUPCLOSURE                       R10 K18 [PROTO_2]
       49 CAPTURE                          VAL R1
       50 DUPCLOSURE                       R11 K19 [PROTO_3]
       51 CAPTURE                          VAL R6
       52 DUPCLOSURE                       R12 K20 [PROTO_4]
       53 CAPTURE                          VAL R6
       54 DUPCLOSURE                       R13 K21 [PROTO_5]
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R1
       57 DUPCLOSURE                       R14 K22 [PROTO_7]
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R6
       62 DUPCLOSURE                       R15 K23 [PROTO_9]
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R7
       67 GETIMPORT                        R16 K26 [table.freeze]
       69 DUPTABLE                         R17 K29 [{"startGenerationAsync", "getGenerationStatusAsync"}]
       70 SETTABLEKS                       R14 R17 K27 ["startGenerationAsync"]
       72 SETTABLEKS                       R15 R17 K28 ["getGenerationStatusAsync"]
       74 CALL                             R16 1 -1
       75 RETURN                           R16 -1
