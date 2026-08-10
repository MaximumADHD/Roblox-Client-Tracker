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
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADB                            R1 0
        3 RETURN                           R1 1
        4 LOADB                            R1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["Completed"]
        8 JUMPIFEQ                         R0 R2 ; [+14]
       10 LOADB                            R1 1
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K1 ["Failed"]
       14 JUMPIFEQ                         R0 R2 ; [+8]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K2 ["Terminated"]
       19 JUMPIFEQ                         R0 R2 ; [+2]
       21 LOADB                            R1 0 +1
       22 LOADB                            R1 1
       23 RETURN                           R1 1

PROTO_2:
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
       20 LOADK                            R3 K7 ["%*/cube-generation-gateway/api/v1/image-generations"]
       21 MOVE                             R6 R1
       22 LENGTH                           R7 R6
       23 LOADN                            R8 0
       24 JUMPIFNOTLT                      R8 R7 ; [+20]
       26 FASTCALL2K                       STRING_SUB R6 K8 ; [+5]
       28 MOVE                             R8 R6
       29 LOADK                            R9 K8 [-1]
       30 GETIMPORT                        R7 K10 [string.sub]
       32 CALL                             R7 2 1
       33 JUMPIFNOTEQKS                    R7 K11 ["/"] ; [+11]
       35 LOADN                            R9 1
       36 LOADN                            R10 -2
       37 FASTCALL3                        STRING_SUB R6 R9 R10
       39 MOVE                             R8 R6
       40 GETIMPORT                        R7 K10 [string.sub]
       42 CALL                             R7 3 1
       43 MOVE                             R6 R7
       44 JUMPBACK                         ; [-23]
       45 MOVE                             R5 R6
       46 NAMECALL                         R3 R3 K12 ["format"]
       48 CALL                             R3 2 1
       49 MOVE                             R2 R3
       50 RETURN                           R2 1

PROTO_3:
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

PROTO_4:
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

PROTO_5:
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
       47 LOADK                            R4 K11 ["HTTP error (status=%*)"]
       48 FASTCALL1                        TOSTRING R1 ; [+3]
       49 MOVE                             R7 R1
       50 GETIMPORT                        R6 K13 [tostring]
       52 CALL                             R6 1 1
       53 NAMECALL                         R4 R4 K14 ["format"]
       55 CALL                             R4 2 1
       56 MOVE                             R3 R4
       57 RETURN                           R3 1

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["http"]
        3 GETTABLEKS                       R0 R0 K1 ["requestAsync"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_8:
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
      209 JUMPIFNOT                        R4 ; [+22]
      210 GETIMPORT                        R4 K46 [print]
      212 LOADK                            R6 K47 ["[ImageGenerationClient] POST %* model=%* seed=%*"]
      213 GETTABLEKS                       R8 R3 K48 ["Url"]
      215 GETTABLEKS                       R10 R0 K13 ["model"]
      217 FASTCALL1                        TOSTRING R10 ; [+2]
      218 GETIMPORT                        R9 K18 [tostring]
      220 CALL                             R9 1 1
      221 GETTABLEKS                       R11 R0 K19 ["seed"]
      223 FASTCALL1                        TOSTRING R11 ; [+2]
      224 GETIMPORT                        R10 K18 [tostring]
      226 CALL                             R10 1 1
      227 NAMECALL                         R6 R6 K36 ["format"]
      229 CALL                             R6 4 1
      230 MOVE                             R5 R6
      231 CALL                             R4 1 0
      232 GETIMPORT                        R4 K50 [pcall]
      234 NEWCLOSURE                       R5 P0
      235 CAPTURE                          VAL R1
      236 CAPTURE                          VAL R3
      237 CALL                             R4 1 2
      238 JUMPIF                           R4 ; [+29]
      239 GETIMPORT                        R6 K52 [warn]
      241 LOADK                            R8 K53 ["[ImageGenerationClient] POST %* threw: %*"]
      242 GETTABLEKS                       R10 R3 K48 ["Url"]
      244 FASTCALL1                        TOSTRING R5 ; [+3]
      245 MOVE                             R12 R5
      246 GETIMPORT                        R11 K18 [tostring]
      248 CALL                             R11 1 1
      249 NAMECALL                         R8 R8 K36 ["format"]
      251 CALL                             R8 3 1
      252 MOVE                             R7 R8
      253 CALL                             R6 1 0
      254 DUPTABLE                         R6 K57 [{["ok"] = False, ["errorMessage"]}]
      255 LOADK                            R8 K58 ["Failed to send image generation request: %*"]
      256 FASTCALL1                        TOSTRING R5 ; [+3]
      257 MOVE                             R11 R5
      258 GETIMPORT                        R10 K18 [tostring]
      260 CALL                             R10 1 1
      261 NAMECALL                         R8 R8 K36 ["format"]
      263 CALL                             R8 2 1
      264 MOVE                             R7 R8
      265 SETTABLEKS                       R7 R6 K56 ["errorMessage"]
      267 RETURN                           R6 1
      268 GETTABLEKS                       R6 R5 K59 ["Success"]
      270 JUMPIF                           R6 ; [+92]
      271 GETIMPORT                        R6 K52 [warn]
      273 LOADK                            R8 K60 ["[ImageGenerationClient] POST %* -> status=%* body=%*"]
      274 GETTABLEKS                       R10 R3 K48 ["Url"]
      276 GETTABLEKS                       R12 R5 K61 ["StatusCode"]
      278 FASTCALL1                        TOSTRING R12 ; [+2]
      279 GETIMPORT                        R11 K18 [tostring]
      281 CALL                             R11 1 1
      282 GETTABLEKS                       R13 R5 K62 ["Body"]
      284 FASTCALL1                        TOSTRING R13 ; [+2]
      285 GETIMPORT                        R12 K18 [tostring]
      287 CALL                             R12 1 1
      288 NAMECALL                         R8 R8 K36 ["format"]
      290 CALL                             R8 4 1
      291 MOVE                             R7 R8
      292 CALL                             R6 1 0
      293 DUPTABLE                         R6 K64 [{["ok"] = False, ["statusCode"], ["errorMessage"]}]
      294 GETTABLEKS                       R7 R5 K61 ["StatusCode"]
      296 SETTABLEKS                       R7 R6 K63 ["statusCode"]
      298 GETTABLEKS                       R8 R5 K62 ["Body"]
      300 GETTABLEKS                       R9 R5 K61 ["StatusCode"]
      302 FASTCALL1                        TYPEOF R8 ; [+3]
      303 MOVE                             R12 R8
      304 GETIMPORT                        R11 K8 [typeof]
      306 CALL                             R11 1 1
      307 JUMPIFNOTEQKS                    R11 K9 ["string"] ; [+3]
      309 JUMPIFNOTEQKS                    R8 K10 [""] ; [+3]
      311 LOADNIL                          R10
      312 JUMP                             ; [+11]
      313 GETIMPORT                        R11 K50 [pcall]
      315 GETUPVAL                         R12 3
      316 GETTABLEKS                       R12 R12 K65 ["decode"]
      318 MOVE                             R13 R8
      319 CALL                             R11 2 2
      320 JUMPIF                           R11 ; [+2]
      321 LOADNIL                          R10
      322 JUMP                             ; [+1]
      323 MOVE                             R10 R12
      324 FASTCALL1                        TYPEOF R10 ; [+3]
      325 MOVE                             R12 R10
      326 GETIMPORT                        R11 K8 [typeof]
      328 CALL                             R11 1 1
      329 JUMPIFNOTEQKS                    R11 K66 ["table"] ; [+20]
      331 GETTABLEKS                       R11 R10 K67 ["message"]
      333 JUMPIF                           R11 ; [+5]
      334 GETTABLEKS                       R11 R10 K68 ["developerMessage"]
      336 JUMPIF                           R11 ; [+2]
      337 GETTABLEKS                       R11 R10 K69 ["details"]
      339 FASTCALL1                        TYPEOF R11 ; [+3]
      340 MOVE                             R13 R11
      341 GETIMPORT                        R12 K8 [typeof]
      343 CALL                             R12 1 1
      344 JUMPIFNOTEQKS                    R12 K9 ["string"] ; [+5]
      346 JUMPIFEQKS                       R11 K10 [""] ; [+3]
      348 MOVE                             R7 R11
      349 JUMP                             ; [+10]
      350 LOADK                            R11 K70 ["HTTP error (status=%*)"]
      351 FASTCALL1                        TOSTRING R9 ; [+3]
      352 MOVE                             R14 R9
      353 GETIMPORT                        R13 K18 [tostring]
      355 CALL                             R13 1 1
      356 NAMECALL                         R11 R11 K36 ["format"]
      358 CALL                             R11 2 1
      359 MOVE                             R7 R11
      360 SETTABLEKS                       R7 R6 K56 ["errorMessage"]
      362 RETURN                           R6 1
      363 GETTABLEKS                       R7 R5 K62 ["Body"]
      365 FASTCALL1                        TYPEOF R7 ; [+3]
      366 MOVE                             R9 R7
      367 GETIMPORT                        R8 K8 [typeof]
      369 CALL                             R8 1 1
      370 JUMPIFNOTEQKS                    R8 K9 ["string"] ; [+3]
      372 JUMPIFNOTEQKS                    R7 K10 [""] ; [+3]
      374 LOADNIL                          R6
      375 JUMP                             ; [+11]
      376 GETIMPORT                        R8 K50 [pcall]
      378 GETUPVAL                         R9 3
      379 GETTABLEKS                       R9 R9 K65 ["decode"]
      381 MOVE                             R10 R7
      382 CALL                             R8 2 2
      383 JUMPIF                           R8 ; [+2]
      384 LOADNIL                          R6
      385 JUMP                             ; [+1]
      386 MOVE                             R6 R9
      387 FASTCALL1                        TYPEOF R6 ; [+3]
      388 MOVE                             R8 R6
      389 GETIMPORT                        R7 K8 [typeof]
      391 CALL                             R7 1 1
      392 JUMPIFNOTEQKS                    R7 K66 ["table"] ; [+9]
      394 GETTABLEKS                       R8 R6 K71 ["imageGenerationId"]
      396 FASTCALL1                        TYPEOF R8 ; [+2]
      397 GETIMPORT                        R7 K8 [typeof]
      399 CALL                             R7 1 1
      400 JUMPIFEQKS                       R7 K9 ["string"] ; [+42]
      402 GETIMPORT                        R7 K52 [warn]
      404 LOADK                            R9 K72 ["[ImageGenerationClient] POST %* -> status=%* missing imageGenerationId; body=%*"]
      405 GETTABLEKS                       R11 R3 K48 ["Url"]
      407 GETTABLEKS                       R13 R5 K61 ["StatusCode"]
      409 FASTCALL1                        TOSTRING R13 ; [+2]
      410 GETIMPORT                        R12 K18 [tostring]
      412 CALL                             R12 1 1
      413 GETTABLEKS                       R14 R5 K62 ["Body"]
      415 FASTCALL1                        TOSTRING R14 ; [+2]
      416 GETIMPORT                        R13 K18 [tostring]
      418 CALL                             R13 1 1
      419 NAMECALL                         R9 R9 K36 ["format"]
      421 CALL                             R9 4 1
      422 MOVE                             R8 R9
      423 CALL                             R7 1 0
      424 DUPTABLE                         R7 K64 [{["ok"] = False, ["statusCode"], ["errorMessage"]}]
      425 GETTABLEKS                       R8 R5 K61 ["StatusCode"]
      427 SETTABLEKS                       R8 R7 K63 ["statusCode"]
      429 LOADK                            R9 K73 ["Response missing 'imageGenerationId': %*"]
      430 GETTABLEKS                       R12 R5 K62 ["Body"]
      432 FASTCALL1                        TOSTRING R12 ; [+2]
      433 GETIMPORT                        R11 K18 [tostring]
      435 CALL                             R11 1 1
      436 NAMECALL                         R9 R9 K36 ["format"]
      438 CALL                             R9 2 1
      439 MOVE                             R8 R9
      440 SETTABLEKS                       R8 R7 K56 ["errorMessage"]
      442 RETURN                           R7 1
      443 DUPTABLE                         R7 K75 [{["ok"] = True, ["statusCode"], ["imageGenerationId"]}]
      444 GETTABLEKS                       R8 R5 K61 ["StatusCode"]
      446 SETTABLEKS                       R8 R7 K63 ["statusCode"]
      448 GETTABLEKS                       R8 R6 K71 ["imageGenerationId"]
      450 SETTABLEKS                       R8 R7 K71 ["imageGenerationId"]
      452 RETURN                           R7 1

PROTO_9:
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

PROTO_10:
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
       26 LOADK                            R3 K4 ["%*/%*"]
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R6 R6 K5 ["FStringAssistantImageGenHostOverride"]
       30 FASTCALL1                        TYPEOF R6 ; [+3]
       31 MOVE                             R9 R6
       32 GETIMPORT                        R8 K7 [typeof]
       34 CALL                             R8 1 1
       35 JUMPIFNOTEQKS                    R8 K8 ["string"] ; [+5]
       37 JUMPIFEQKS                       R6 K9 [""] ; [+3]
       39 MOVE                             R7 R6
       40 JUMP                             ; [+6]
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R7 R7 K0 ["get"]
       44 CALL                             R7 0 1
       45 GETTABLEKS                       R7 R7 K10 ["apisUrl"]
       47 LOADK                            R8 K11 ["%*/cube-generation-gateway/api/v1/image-generations"]
       48 MOVE                             R11 R7
       49 LENGTH                           R12 R11
       50 LOADN                            R13 0
       51 JUMPIFNOTLT                      R13 R12 ; [+20]
       53 FASTCALL2K                       STRING_SUB R11 K12 ; [+5]
       55 MOVE                             R13 R11
       56 LOADK                            R14 K12 [-1]
       57 GETIMPORT                        R12 K14 [string.sub]
       59 CALL                             R12 2 1
       60 JUMPIFNOTEQKS                    R12 K15 ["/"] ; [+11]
       62 LOADN                            R14 1
       63 LOADN                            R15 -2
       64 FASTCALL3                        STRING_SUB R11 R14 R15
       66 MOVE                             R13 R11
       67 GETIMPORT                        R12 K14 [string.sub]
       69 CALL                             R12 3 1
       70 MOVE                             R11 R12
       71 JUMPBACK                         ; [-23]
       72 MOVE                             R10 R11
       73 NAMECALL                         R8 R8 K16 ["format"]
       75 CALL                             R8 2 1
       76 MOVE                             R5 R8
       77 MOVE                             R6 R0
       78 NAMECALL                         R3 R3 K16 ["format"]
       80 CALL                             R3 3 1
       81 MOVE                             R2 R3
       82 GETIMPORT                        R3 K18 [pcall]
       84 NEWCLOSURE                       R4 P0
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R2
       87 CAPTURE                          UPVAL U0
       88 CALL                             R3 1 2
       89 JUMPIF                           R3 ; [+28]
       90 GETIMPORT                        R5 K20 [warn]
       92 LOADK                            R7 K21 ["[ImageGenerationClient] GET %* threw: %*"]
       93 MOVE                             R9 R2
       94 FASTCALL1                        TOSTRING R4 ; [+3]
       95 MOVE                             R11 R4
       96 GETIMPORT                        R10 K23 [tostring]
       98 CALL                             R10 1 1
       99 NAMECALL                         R7 R7 K16 ["format"]
      101 CALL                             R7 3 1
      102 MOVE                             R6 R7
      103 CALL                             R5 1 0
      104 DUPTABLE                         R5 K27 [{["ok"] = False, ["errorMessage"]}]
      105 LOADK                            R7 K28 ["Failed to fetch status: %*"]
      106 FASTCALL1                        TOSTRING R4 ; [+3]
      107 MOVE                             R10 R4
      108 GETIMPORT                        R9 K23 [tostring]
      110 CALL                             R9 1 1
      111 NAMECALL                         R7 R7 K16 ["format"]
      113 CALL                             R7 2 1
      114 MOVE                             R6 R7
      115 SETTABLEKS                       R6 R5 K26 ["errorMessage"]
      117 RETURN                           R5 1
      118 GETTABLEKS                       R5 R4 K29 ["Success"]
      120 JUMPIF                           R5 ; [+91]
      121 GETIMPORT                        R5 K20 [warn]
      123 LOADK                            R7 K30 ["[ImageGenerationClient] GET %* -> status=%* body=%*"]
      124 MOVE                             R9 R2
      125 GETTABLEKS                       R11 R4 K31 ["StatusCode"]
      127 FASTCALL1                        TOSTRING R11 ; [+2]
      128 GETIMPORT                        R10 K23 [tostring]
      130 CALL                             R10 1 1
      131 GETTABLEKS                       R12 R4 K32 ["Body"]
      133 FASTCALL1                        TOSTRING R12 ; [+2]
      134 GETIMPORT                        R11 K23 [tostring]
      136 CALL                             R11 1 1
      137 NAMECALL                         R7 R7 K16 ["format"]
      139 CALL                             R7 4 1
      140 MOVE                             R6 R7
      141 CALL                             R5 1 0
      142 DUPTABLE                         R5 K34 [{["ok"] = False, ["statusCode"], ["errorMessage"]}]
      143 GETTABLEKS                       R6 R4 K31 ["StatusCode"]
      145 SETTABLEKS                       R6 R5 K33 ["statusCode"]
      147 GETTABLEKS                       R7 R4 K32 ["Body"]
      149 GETTABLEKS                       R8 R4 K31 ["StatusCode"]
      151 FASTCALL1                        TYPEOF R7 ; [+3]
      152 MOVE                             R11 R7
      153 GETIMPORT                        R10 K7 [typeof]
      155 CALL                             R10 1 1
      156 JUMPIFNOTEQKS                    R10 K8 ["string"] ; [+3]
      158 JUMPIFNOTEQKS                    R7 K9 [""] ; [+3]
      160 LOADNIL                          R9
      161 JUMP                             ; [+11]
      162 GETIMPORT                        R10 K18 [pcall]
      164 GETUPVAL                         R11 2
      165 GETTABLEKS                       R11 R11 K35 ["decode"]
      167 MOVE                             R12 R7
      168 CALL                             R10 2 2
      169 JUMPIF                           R10 ; [+2]
      170 LOADNIL                          R9
      171 JUMP                             ; [+1]
      172 MOVE                             R9 R11
      173 FASTCALL1                        TYPEOF R9 ; [+3]
      174 MOVE                             R11 R9
      175 GETIMPORT                        R10 K7 [typeof]
      177 CALL                             R10 1 1
      178 JUMPIFNOTEQKS                    R10 K36 ["table"] ; [+20]
      180 GETTABLEKS                       R10 R9 K37 ["message"]
      182 JUMPIF                           R10 ; [+5]
      183 GETTABLEKS                       R10 R9 K38 ["developerMessage"]
      185 JUMPIF                           R10 ; [+2]
      186 GETTABLEKS                       R10 R9 K39 ["details"]
      188 FASTCALL1                        TYPEOF R10 ; [+3]
      189 MOVE                             R12 R10
      190 GETIMPORT                        R11 K7 [typeof]
      192 CALL                             R11 1 1
      193 JUMPIFNOTEQKS                    R11 K8 ["string"] ; [+5]
      195 JUMPIFEQKS                       R10 K9 [""] ; [+3]
      197 MOVE                             R6 R10
      198 JUMP                             ; [+10]
      199 LOADK                            R10 K40 ["HTTP error (status=%*)"]
      200 FASTCALL1                        TOSTRING R8 ; [+3]
      201 MOVE                             R13 R8
      202 GETIMPORT                        R12 K23 [tostring]
      204 CALL                             R12 1 1
      205 NAMECALL                         R10 R10 K16 ["format"]
      207 CALL                             R10 2 1
      208 MOVE                             R6 R10
      209 SETTABLEKS                       R6 R5 K26 ["errorMessage"]
      211 RETURN                           R5 1
      212 GETTABLEKS                       R6 R4 K32 ["Body"]
      214 FASTCALL1                        TYPEOF R6 ; [+3]
      215 MOVE                             R8 R6
      216 GETIMPORT                        R7 K7 [typeof]
      218 CALL                             R7 1 1
      219 JUMPIFNOTEQKS                    R7 K8 ["string"] ; [+3]
      221 JUMPIFNOTEQKS                    R6 K9 [""] ; [+3]
      223 LOADNIL                          R5
      224 JUMP                             ; [+11]
      225 GETIMPORT                        R7 K18 [pcall]
      227 GETUPVAL                         R8 2
      228 GETTABLEKS                       R8 R8 K35 ["decode"]
      230 MOVE                             R9 R6
      231 CALL                             R7 2 2
      232 JUMPIF                           R7 ; [+2]
      233 LOADNIL                          R5
      234 JUMP                             ; [+1]
      235 MOVE                             R5 R8
      236 FASTCALL1                        TYPEOF R5 ; [+3]
      237 MOVE                             R7 R5
      238 GETIMPORT                        R6 K7 [typeof]
      240 CALL                             R6 1 1
      241 JUMPIFEQKS                       R6 K36 ["table"] ; [+41]
      243 GETIMPORT                        R6 K20 [warn]
      245 LOADK                            R8 K41 ["[ImageGenerationClient] GET %* -> status=%* non-JSON body=%*"]
      246 MOVE                             R10 R2
      247 GETTABLEKS                       R12 R4 K31 ["StatusCode"]
      249 FASTCALL1                        TOSTRING R12 ; [+2]
      250 GETIMPORT                        R11 K23 [tostring]
      252 CALL                             R11 1 1
      253 GETTABLEKS                       R13 R4 K32 ["Body"]
      255 FASTCALL1                        TOSTRING R13 ; [+2]
      256 GETIMPORT                        R12 K23 [tostring]
      258 CALL                             R12 1 1
      259 NAMECALL                         R8 R8 K16 ["format"]
      261 CALL                             R8 4 1
      262 MOVE                             R7 R8
      263 CALL                             R6 1 0
      264 DUPTABLE                         R6 K34 [{["ok"] = False, ["statusCode"], ["errorMessage"]}]
      265 GETTABLEKS                       R7 R4 K31 ["StatusCode"]
      267 SETTABLEKS                       R7 R6 K33 ["statusCode"]
      269 LOADK                            R8 K42 ["Response body is not JSON: %*"]
      270 GETTABLEKS                       R11 R4 K32 ["Body"]
      272 FASTCALL1                        TOSTRING R11 ; [+2]
      273 GETIMPORT                        R10 K23 [tostring]
      275 CALL                             R10 1 1
      276 NAMECALL                         R8 R8 K16 ["format"]
      278 CALL                             R8 2 1
      279 MOVE                             R7 R8
      280 SETTABLEKS                       R7 R6 K26 ["errorMessage"]
      282 RETURN                           R6 1
      283 DUPTABLE                         R6 K46 [{["ok"] = True, ["statusCode"], ["status"], ["currentStage"]}]
      284 GETTABLEKS                       R7 R4 K31 ["StatusCode"]
      286 SETTABLEKS                       R7 R6 K33 ["statusCode"]
      288 GETTABLEKS                       R7 R5 K44 ["status"]
      290 SETTABLEKS                       R7 R6 K44 ["status"]
      292 GETTABLEKS                       R7 R5 K45 ["currentStage"]
      294 SETTABLEKS                       R7 R6 K45 ["currentStage"]
      296 GETTABLEKS                       R8 R5 K47 ["result"]
      298 FASTCALL1                        TYPEOF R8 ; [+2]
      299 GETIMPORT                        R7 K7 [typeof]
      301 CALL                             R7 1 1
      302 JUMPIFNOTEQKS                    R7 K36 ["table"] ; [+31]
      304 GETTABLEKS                       R8 R5 K47 ["result"]
      306 GETTABLEKS                       R8 R8 K48 ["image"]
      308 FASTCALL1                        TYPEOF R8 ; [+2]
      309 GETIMPORT                        R7 K7 [typeof]
      311 CALL                             R7 1 1
      312 JUMPIFNOTEQKS                    R7 K36 ["table"] ; [+21]
      314 GETTABLEKS                       R7 R5 K47 ["result"]
      316 GETTABLEKS                       R7 R7 K48 ["image"]
      318 GETTABLEKS                       R8 R7 K49 ["presignedUrl"]
      320 SETTABLEKS                       R8 R6 K49 ["presignedUrl"]
      322 GETTABLEKS                       R8 R7 K50 ["widthPx"]
      324 SETTABLEKS                       R8 R6 K50 ["widthPx"]
      326 GETTABLEKS                       R8 R7 K51 ["heightPx"]
      328 SETTABLEKS                       R8 R6 K51 ["heightPx"]
      330 GETTABLEKS                       R8 R7 K16 ["format"]
      332 SETTABLEKS                       R8 R6 K16 ["format"]
      334 RETURN                           R6 1

PROTO_11:
        0 FASTCALL2K                       MATH_MAX R1 K0 ; [+5]
        2 MOVE                             R5 R1
        3 LOADK                            R6 K0 [0.1]
        4 GETIMPORT                        R4 K3 [math.max]
        6 CALL                             R4 2 1
        7 GETIMPORT                        R6 K6 [os.clock]
        9 CALL                             R6 0 1
       10 FASTCALL2                        MATH_MAX R2 R4 ; [+5]
       12 MOVE                             R8 R2
       13 MOVE                             R9 R4
       14 GETIMPORT                        R7 K3 [math.max]
       16 CALL                             R7 2 1
       17 ADD                              R5 R6 R7
       18 MOVE                             R6 R3
       19 CALL                             R6 0 1
       20 JUMPIFNOT                        R6 ; [+2]
       21 DUPTABLE                         R6 K11 [{["ok"] = False, ["errorMessage"] = "Cancelled"}]
       22 RETURN                           R6 1
       23 GETUPVAL                         R6 0
       24 MOVE                             R7 R0
       25 CALL                             R6 1 1
       26 GETTABLEKS                       R8 R6 K12 ["status"]
       28 JUMPIFNOTEQKNIL                  R8 ; [+3]
       30 LOADB                            R7 0
       31 JUMP                             ; [+19]
       32 LOADB                            R7 1
       33 GETUPVAL                         R9 1
       34 GETTABLEKS                       R9 R9 K13 ["Completed"]
       36 JUMPIFEQ                         R8 R9 ; [+14]
       38 LOADB                            R7 1
       39 GETUPVAL                         R9 1
       40 GETTABLEKS                       R9 R9 K14 ["Failed"]
       42 JUMPIFEQ                         R8 R9 ; [+8]
       44 GETUPVAL                         R9 1
       45 GETTABLEKS                       R9 R9 K15 ["Terminated"]
       47 JUMPIFEQ                         R8 R9 ; [+2]
       49 LOADB                            R7 0 +1
       50 LOADB                            R7 1
       51 JUMPIFNOT                        R7 ; [+46]
       52 GETTABLEKS                       R7 R6 K12 ["status"]
       54 GETUPVAL                         R8 1
       55 GETTABLEKS                       R8 R8 K13 ["Completed"]
       57 JUMPIFNOTEQ                      R7 R8 ; [+14]
       59 GETTABLEKS                       R8 R6 K16 ["presignedUrl"]
       61 FASTCALL1                        TYPEOF R8 ; [+2]
       62 GETIMPORT                        R7 K18 [typeof]
       64 CALL                             R7 1 1
       65 JUMPIFNOTEQKS                    R7 K19 ["string"] ; [+6]
       67 GETTABLEKS                       R7 R6 K16 ["presignedUrl"]
       69 JUMPIFEQKS                       R7 K20 [""] ; [+2]
       71 RETURN                           R6 1
       72 DUPTABLE                         R7 K22 [{["ok"] = False, ["statusCode"], ["status"], ["errorMessage"]}]
       73 GETTABLEKS                       R8 R6 K21 ["statusCode"]
       75 SETTABLEKS                       R8 R7 K21 ["statusCode"]
       77 GETTABLEKS                       R8 R6 K12 ["status"]
       79 SETTABLEKS                       R8 R7 K12 ["status"]
       81 GETTABLEKS                       R8 R6 K9 ["errorMessage"]
       83 JUMPIF                           R8 ; [+11]
       84 LOADK                            R9 K23 ["Generation ended with status '%*'"]
       85 GETTABLEKS                       R12 R6 K12 ["status"]
       87 FASTCALL1                        TOSTRING R12 ; [+2]
       88 GETIMPORT                        R11 K25 [tostring]
       90 CALL                             R11 1 1
       91 NAMECALL                         R9 R9 K26 ["format"]
       93 CALL                             R9 2 1
       94 MOVE                             R8 R9
       95 SETTABLEKS                       R8 R7 K9 ["errorMessage"]
       97 RETURN                           R7 1
       98 GETUPVAL                         R7 2
       99 GETTABLEKS                       R7 R7 K27 ["FFlagAssistantImageGenAbortPollOn4xx"]
      101 JUMPIFNOT                        R7 ; [+45]
      102 GETTABLEKS                       R7 R6 K7 ["ok"]
      104 JUMPIF                           R7 ; [+42]
      105 GETTABLEKS                       R8 R6 K21 ["statusCode"]
      107 FASTCALL1                        TYPEOF R8 ; [+2]
      108 GETIMPORT                        R7 K18 [typeof]
      110 CALL                             R7 1 1
      111 JUMPIFNOTEQKS                    R7 K28 ["number"] ; [+35]
      113 GETTABLEKS                       R7 R6 K21 ["statusCode"]
      115 LOADN                            R8 400
      116 JUMPIFNOTLE                      R8 R7 ; [+30]
      118 GETTABLEKS                       R7 R6 K21 ["statusCode"]
      120 LOADN                            R8 500
      121 JUMPIFNOTLT                      R7 R8 ; [+25]
      123 GETTABLEKS                       R8 R6 K21 ["statusCode"]
      125 JUMPIFNOTEQKN                    R8 K29 [404] ; [+3]
      127 LOADK                            R7 K30 ["Image generation not found"]
      128 JUMP                             ; [+7]
      129 LOADK                            R8 K31 ["Image generation failed (status=%*)"]
      130 GETTABLEKS                       R10 R6 K21 ["statusCode"]
      132 NAMECALL                         R8 R8 K26 ["format"]
      134 CALL                             R8 2 1
      135 MOVE                             R7 R8
      136 DUPTABLE                         R8 K32 [{["ok"] = False, ["statusCode"], ["errorMessage"]}]
      137 GETTABLEKS                       R9 R6 K21 ["statusCode"]
      139 SETTABLEKS                       R9 R8 K21 ["statusCode"]
      141 GETTABLEKS                       R10 R6 K9 ["errorMessage"]
      143 OR                               R9 R10 R7
      144 SETTABLEKS                       R9 R8 K9 ["errorMessage"]
      146 RETURN                           R8 1
      147 GETUPVAL                         R7 2
      148 GETTABLEKS                       R7 R7 K27 ["FFlagAssistantImageGenAbortPollOn4xx"]
      150 JUMPIF                           R7 ; [+14]
      151 GETTABLEKS                       R7 R6 K7 ["ok"]
      153 JUMPIF                           R7 ; [+11]
      154 GETTABLEKS                       R7 R6 K21 ["statusCode"]
      156 JUMPIFNOTEQKN                    R7 K29 [404] ; [+8]
      158 DUPTABLE                         R7 K33 [{["ok"] = False, ["statusCode"] = 404, ["errorMessage"]}]
      159 GETTABLEKS                       R9 R6 K9 ["errorMessage"]
      161 ORK                              R8 R9 K30 ["Image generation not found"]
      162 SETTABLEKS                       R8 R7 K9 ["errorMessage"]
      164 RETURN                           R7 1
      165 GETIMPORT                        R7 K6 [os.clock]
      167 CALL                             R7 0 1
      168 JUMPIFNOTLE                      R5 R7 ; [+11]
      170 DUPTABLE                         R7 K34 [{["ok"] = False, ["errorMessage"]}]
      171 LOADK                            R9 K35 ["Image generation timed out after %*s"]
      172 MOVE                             R11 R2
      173 NAMECALL                         R9 R9 K26 ["format"]
      175 CALL                             R9 2 1
      176 MOVE                             R8 R9
      177 SETTABLEKS                       R8 R7 K9 ["errorMessage"]
      179 RETURN                           R7 1
      180 GETIMPORT                        R7 K38 [task.wait]
      182 MOVE                             R8 R4
      183 CALL                             R7 1 0
      184 JUMPBACK                         ; [-167]
      185 RETURN                           R0 0

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
       30 GETTABLEKS                       R5 R5 K12 ["ModelContextProtocol"]
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R5 R4 K13 ["Json"]
       35 DUPCLOSURE                       R6 K14 [PROTO_0]
       36 GETIMPORT                        R7 K17 [table.freeze]
       38 DUPTABLE                         R8 K21 [{["Completed"] = "Completed", ["Failed"] = "Failed", ["Terminated"] = "Terminated"}]
       39 CALL                             R7 1 1
       40 DUPCLOSURE                       R8 K22 [PROTO_1]
       41 CAPTURE                          VAL R7
       42 DUPCLOSURE                       R9 K23 [PROTO_2]
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R1
       45 DUPCLOSURE                       R10 K24 [PROTO_3]
       46 CAPTURE                          VAL R1
       47 DUPCLOSURE                       R11 K25 [PROTO_4]
       48 CAPTURE                          VAL R5
       49 DUPCLOSURE                       R12 K26 [PROTO_5]
       50 CAPTURE                          VAL R5
       51 DUPCLOSURE                       R13 K27 [PROTO_6]
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R1
       54 DUPCLOSURE                       R14 K28 [PROTO_8]
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R5
       59 DUPCLOSURE                       R15 K29 [PROTO_10]
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R5
       63 DUPCLOSURE                       R16 K30 [PROTO_11]
       64 CAPTURE                          VAL R15
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R2
       67 GETIMPORT                        R17 K17 [table.freeze]
       69 DUPTABLE                         R18 K36 [{"Statuses", "isTerminalStatus", "startGenerationAsync", "getGenerationStatusAsync", "pollUntilDoneAsync"}]
       70 SETTABLEKS                       R7 R18 K31 ["Statuses"]
       72 SETTABLEKS                       R8 R18 K32 ["isTerminalStatus"]
       74 SETTABLEKS                       R14 R18 K33 ["startGenerationAsync"]
       76 SETTABLEKS                       R15 R18 K34 ["getGenerationStatusAsync"]
       78 SETTABLEKS                       R16 R18 K35 ["pollUntilDoneAsync"]
       80 CALL                             R17 1 -1
       81 RETURN                           R17 -1
