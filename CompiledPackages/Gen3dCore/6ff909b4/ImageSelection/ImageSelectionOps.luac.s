PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["capabilities"]
        2 JUMPIFEQKNIL                     R2 ; [+14]
        4 GETTABLEKS                       R2 R0 K0 ["capabilities"]
        6 GETTABLEKS                       R2 R2 K1 ["debugLog"]
        8 JUMPIFNOT                        R2 ; [+8]
        9 GETIMPORT                        R2 K3 [print]
       11 LOADK                            R3 K4 ["[ImageSelectionOps] %*"]
       12 MOVE                             R5 R1
       13 NAMECALL                         R3 R3 K5 ["format"]
       15 CALL                             R3 2 1
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R2
        1 JUMPIFEQKNIL                     R0 ; [+9]
        3 NEWTABLE                         R3 0 1
        5 DUPTABLE                         R4 K5 [{[1] = "image_1.png", ["content"], ["contentType"] = "image/png"}]
        6 SETTABLEKS                       R0 R4 K2 ["content"]
        8 SETLIST                          R3 R4 1 [1]
       10 MOVE                             R2 R3
       11 JUMPIFEQKNIL                     R1 ; [+28]
       13 LENGTH                           R3 R1
       14 LOADN                            R4 0
       15 JUMPIFNOTLT                      R4 R3 ; [+24]
       17 JUMPIFEQKNIL                     R2 ; [+6]
       19 GETIMPORT                        R3 K8 [table.clone]
       21 MOVE                             R4 R2
       22 CALL                             R3 1 1
       23 JUMP                             ; [+2]
       24 NEWTABLE                         R3 0 0
       26 MOVE                             R4 R1
       27 LOADNIL                          R5
       28 LOADNIL                          R6
       29 FORGPREP                         R4
       30 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       32 MOVE                             R10 R3
       33 MOVE                             R11 R8
       34 GETIMPORT                        R9 K10 [table.insert]
       36 CALL                             R9 2 0
       37 FORGLOOP                         R4 2 ; [-8]
       39 MOVE                             R2 R3
       40 RETURN                           R2 1

PROTO_2:
        0 FASTCALL2K                       MATH_MAX R2 K0 ; [+5]
        2 MOVE                             R6 R2
        3 LOADK                            R7 K0 [0.1]
        4 GETIMPORT                        R5 K3 [math.max]
        6 CALL                             R5 2 1
        7 GETIMPORT                        R7 K6 [os.clock]
        9 CALL                             R7 0 1
       10 FASTCALL2                        MATH_MAX R3 R5 ; [+5]
       12 MOVE                             R9 R3
       13 MOVE                             R10 R5
       14 GETIMPORT                        R8 K3 [math.max]
       16 CALL                             R8 2 1
       17 ADD                              R6 R7 R8
       18 MOVE                             R7 R4
       19 CALL                             R7 0 1
       20 JUMPIFNOT                        R7 ; [+2]
       21 DUPTABLE                         R7 K11 [{["ok"] = False, ["errorMessage"] = "Cancelled"}]
       22 RETURN                           R7 1
       23 GETTABLEKS                       R7 R0 K12 ["imageGeneration"]
       25 GETTABLEKS                       R7 R7 K13 ["getStatusAsync"]
       27 MOVE                             R8 R1
       28 CALL                             R7 1 1
       29 GETTABLEKS                       R8 R7 K14 ["status"]
       31 JUMPIFEQKNIL                     R8 ; [+48]
       33 GETUPVAL                         R9 0
       34 GETTABLEKS                       R10 R7 K14 ["status"]
       36 GETTABLE                         R8 R9 R10
       37 JUMPIFNOT                        R8 ; [+42]
       38 GETTABLEKS                       R8 R7 K14 ["status"]
       40 JUMPIFNOTEQKS                    R8 K15 ["Completed"] ; [+14]
       42 GETTABLEKS                       R9 R7 K16 ["presignedUrl"]
       44 FASTCALL1                        TYPEOF R9 ; [+2]
       45 GETIMPORT                        R8 K18 [typeof]
       47 CALL                             R8 1 1
       48 JUMPIFNOTEQKS                    R8 K19 ["string"] ; [+6]
       50 GETTABLEKS                       R8 R7 K16 ["presignedUrl"]
       52 JUMPIFEQKS                       R8 K20 [""] ; [+2]
       54 RETURN                           R7 1
       55 DUPTABLE                         R8 K22 [{["ok"] = False, ["statusCode"], ["status"], ["errorMessage"]}]
       56 GETTABLEKS                       R9 R7 K21 ["statusCode"]
       58 SETTABLEKS                       R9 R8 K21 ["statusCode"]
       60 GETTABLEKS                       R9 R7 K14 ["status"]
       62 SETTABLEKS                       R9 R8 K14 ["status"]
       64 GETTABLEKS                       R9 R7 K9 ["errorMessage"]
       66 JUMPIF                           R9 ; [+10]
       67 LOADK                            R9 K23 ["Generation ended with status '%*'"]
       68 GETTABLEKS                       R12 R7 K14 ["status"]
       70 FASTCALL1                        TOSTRING R12 ; [+2]
       71 GETIMPORT                        R11 K25 [tostring]
       73 CALL                             R11 1 1
       74 NAMECALL                         R9 R9 K26 ["format"]
       76 CALL                             R9 2 1
       77 SETTABLEKS                       R9 R8 K9 ["errorMessage"]
       79 RETURN                           R8 1
       80 GETTABLEKS                       R8 R7 K7 ["ok"]
       82 JUMPIF                           R8 ; [+50]
       83 GETTABLEKS                       R9 R7 K21 ["statusCode"]
       85 FASTCALL1                        TYPEOF R9 ; [+2]
       86 GETIMPORT                        R8 K18 [typeof]
       88 CALL                             R8 1 1
       89 JUMPIFNOTEQKS                    R8 K27 ["number"] ; [+43]
       91 GETTABLEKS                       R8 R7 K21 ["statusCode"]
       93 LOADB                            R9 0
       94 GETTABLEKS                       R10 R0 K28 ["capabilities"]
       96 JUMPIFEQKNIL                     R10 ; [+9]
       98 GETTABLEKS                       R10 R0 K28 ["capabilities"]
      100 GETTABLEKS                       R10 R10 K29 ["abortPollOn4xx"]
      102 JUMPIFEQKB                       R10 TRUE ; [+2]
      104 LOADB                            R9 0 +1
      105 LOADB                            R9 1
      106 JUMPIFEQKN                       R8 K30 [404] ; [+8]
      108 JUMPIFNOT                        R9 ; [+24]
      109 LOADN                            R10 400
      110 JUMPIFNOTLE                      R10 R8 ; [+22]
      112 LOADN                            R10 500
      113 JUMPIFNOTLT                      R8 R10 ; [+19]
      115 JUMPIFNOTEQKN                    R8 K30 [404] ; [+3]
      117 LOADK                            R10 K31 ["Image generation not found"]
      118 JUMP                             ; [+5]
      119 LOADK                            R10 K32 ["Image generation failed (status=%*)"]
      120 MOVE                             R12 R8
      121 NAMECALL                         R10 R10 K26 ["format"]
      123 CALL                             R10 2 1
      124 DUPTABLE                         R11 K33 [{["ok"] = False, ["statusCode"], ["errorMessage"]}]
      125 SETTABLEKS                       R8 R11 K21 ["statusCode"]
      127 GETTABLEKS                       R13 R7 K9 ["errorMessage"]
      129 OR                               R12 R13 R10
      130 SETTABLEKS                       R12 R11 K9 ["errorMessage"]
      132 RETURN                           R11 1
      133 GETIMPORT                        R8 K6 [os.clock]
      135 CALL                             R8 0 1
      136 JUMPIFNOTLE                      R6 R8 ; [+10]
      138 DUPTABLE                         R8 K34 [{["ok"] = False, ["errorMessage"]}]
      139 LOADK                            R9 K35 ["Image generation timed out after %*s"]
      140 MOVE                             R11 R3
      141 NAMECALL                         R9 R9 K26 ["format"]
      143 CALL                             R9 2 1
      144 SETTABLEKS                       R9 R8 K9 ["errorMessage"]
      146 RETURN                           R8 1
      147 GETIMPORT                        R8 K38 [task.wait]
      149 MOVE                             R9 R5
      150 CALL                             R8 1 0
      151 JUMPBACK                         ; [-134]
      152 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["http"]
        3 GETTABLEKS                       R0 R0 K1 ["requestAsync"]
        5 DUPTABLE                         R1 K5 [{["Url"], ["Method"] = "GET"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["Url"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_4:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 2
        6 JUMPIF                           R2 ; [+23]
        7 GETIMPORT                        R4 K3 [warn]
        9 LOADK                            R5 K4 ["[ImageSelectionOps] presigned GET threw: %*"]
       10 FASTCALL1                        TOSTRING R3 ; [+3]
       11 MOVE                             R8 R3
       12 GETIMPORT                        R7 K6 [tostring]
       14 CALL                             R7 1 1
       15 NAMECALL                         R5 R5 K7 ["format"]
       17 CALL                             R5 2 1
       18 CALL                             R4 1 0
       19 LOADNIL                          R4
       20 LOADK                            R5 K8 ["Failed to download image: %*"]
       21 FASTCALL1                        TOSTRING R3 ; [+3]
       22 MOVE                             R8 R3
       23 GETIMPORT                        R7 K6 [tostring]
       25 CALL                             R7 1 1
       26 NAMECALL                         R5 R5 K7 ["format"]
       28 CALL                             R5 2 1
       29 RETURN                           R4 2
       30 FASTCALL1                        TYPEOF R3 ; [+3]
       31 MOVE                             R5 R3
       32 GETIMPORT                        R4 K10 [typeof]
       34 CALL                             R4 1 1
       35 JUMPIFNOTEQKS                    R4 K11 ["table"] ; [+4]
       37 GETTABLEKS                       R4 R3 K12 ["Success"]
       39 JUMPIF                           R4 ; [+34]
       40 FASTCALL1                        TYPEOF R3 ; [+3]
       41 MOVE                             R6 R3
       42 GETIMPORT                        R5 K10 [typeof]
       44 CALL                             R5 1 1
       45 JUMPIFNOTEQKS                    R5 K11 ["table"] ; [+8]
       47 GETTABLEKS                       R5 R3 K13 ["StatusCode"]
       49 FASTCALL1                        TOSTRING R5 ; [+2]
       50 GETIMPORT                        R4 K6 [tostring]
       52 CALL                             R4 1 1
       53 JUMP                             ; [+5]
       54 FASTCALL1                        TOSTRING R3 ; [+3]
       55 MOVE                             R5 R3
       56 GETIMPORT                        R4 K6 [tostring]
       58 CALL                             R4 1 1
       59 GETIMPORT                        R5 K3 [warn]
       61 LOADK                            R6 K14 ["[ImageSelectionOps] presigned GET -> status=%*"]
       62 MOVE                             R8 R4
       63 NAMECALL                         R6 R6 K7 ["format"]
       65 CALL                             R6 2 1
       66 CALL                             R5 1 0
       67 LOADNIL                          R5
       68 LOADK                            R6 K15 ["Image download failed (status=%*)"]
       69 MOVE                             R8 R4
       70 NAMECALL                         R6 R6 K7 ["format"]
       72 CALL                             R6 2 1
       73 RETURN                           R5 2
       74 GETTABLEKS                       R5 R3 K16 ["Body"]
       76 FASTCALL1                        TYPEOF R5 ; [+2]
       77 GETIMPORT                        R4 K10 [typeof]
       79 CALL                             R4 1 1
       80 JUMPIFNOTEQKS                    R4 K17 ["string"] ; [+5]
       82 GETTABLEKS                       R4 R3 K16 ["Body"]
       84 JUMPIFNOTEQKS                    R4 K18 [""] ; [+8]
       86 GETIMPORT                        R4 K3 [warn]
       88 LOADK                            R5 K19 ["[ImageSelectionOps] presigned GET returned an empty body"]
       89 CALL                             R4 1 0
       90 LOADNIL                          R4
       91 LOADK                            R5 K20 ["Empty image body"]
       92 RETURN                           R4 2
       93 GETIMPORT                        R4 K23 [buffer.fromstring]
       95 GETTABLEKS                       R5 R3 K16 ["Body"]
       97 CALL                             R4 1 1
       98 LOADNIL                          R5
       99 RETURN                           R4 2

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["base64EncodeAsync"]
        3 GETIMPORT                        R1 K3 [buffer.tostring]
        5 GETUPVAL                         R2 1
        6 CALL                             R1 1 -1
        7 CALL                             R0 -1 -1
        8 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["convertImageDataToTempIdAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_7:
        0 LOADK                            R5 K0 ["Generating"]
        1 SETTABLEKS                       R5 R2 K1 ["status"]
        3 MOVE                             R5 R3
        4 CALL                             R5 0 0
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K2 ["buildImages"]
        8 GETTABLEKS                       R6 R1 K3 ["seedImage"]
       10 GETTABLEKS                       R7 R1 K4 ["extraImages"]
       12 CALL                             R5 2 1
       13 GETTABLEKS                       R6 R0 K5 ["imageGeneration"]
       15 GETTABLEKS                       R6 R6 K6 ["startAsync"]
       17 DUPTABLE                         R7 K13 [{["textPrompt"], ["model"], ["images"], ["removeBackground"] = True, ["seed"]}]
       18 GETTABLEKS                       R8 R1 K7 ["textPrompt"]
       20 SETTABLEKS                       R8 R7 K7 ["textPrompt"]
       22 GETTABLEKS                       R8 R1 K8 ["model"]
       24 SETTABLEKS                       R8 R7 K8 ["model"]
       26 SETTABLEKS                       R5 R7 K9 ["images"]
       28 GETTABLEKS                       R9 R0 K14 ["capabilities"]
       30 JUMPIFEQKNIL                     R9 ; [+10]
       32 GETTABLEKS                       R9 R0 K14 ["capabilities"]
       34 GETTABLEKS                       R9 R9 K15 ["allocateSeed"]
       36 JUMPIFNOTEQKB                    R9 TRUE ; [+4]
       38 GETTABLEKS                       R8 R1 K12 ["seed"]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R8
       42 SETTABLEKS                       R8 R7 K12 ["seed"]
       44 CALL                             R6 1 1
       45 MOVE                             R7 R4
       46 CALL                             R7 0 1
       47 JUMPIFNOT                        R7 ; [+6]
       48 LOADK                            R7 K16 ["Cancelled"]
       49 SETTABLEKS                       R7 R2 K1 ["status"]
       51 MOVE                             R7 R3
       52 CALL                             R7 0 0
       53 RETURN                           R0 0
       54 GETTABLEKS                       R7 R6 K17 ["ok"]
       56 JUMPIFNOT                        R7 ; [+4]
       57 GETTABLEKS                       R7 R6 K18 ["imageGenerationId"]
       59 JUMPIFNOTEQKNIL                  R7 ; [+22]
       61 GETTABLEKS                       R8 R6 K20 ["errorMessage"]
       63 ORK                              R7 R8 K19 ["Failed to start image generation"]
       64 GETIMPORT                        R8 K22 [warn]
       66 LOADK                            R9 K23 ["[ImageSelectionOps] slot %*: start failed: %*"]
       67 GETTABLEKS                       R11 R2 K24 ["index"]
       69 MOVE                             R12 R7
       70 NAMECALL                         R9 R9 K25 ["format"]
       72 CALL                             R9 3 1
       73 CALL                             R8 1 0
       74 LOADK                            R8 K26 ["Failed"]
       75 SETTABLEKS                       R8 R2 K1 ["status"]
       77 SETTABLEKS                       R7 R2 K20 ["errorMessage"]
       79 MOVE                             R8 R3
       80 CALL                             R8 0 0
       81 RETURN                           R0 0
       82 GETTABLEKS                       R7 R6 K18 ["imageGenerationId"]
       84 SETTABLEKS                       R7 R2 K18 ["imageGenerationId"]
       86 LOADK                            R8 K27 ["slot %* imageGenerationId=%* seed=%* imageCount=%*"]
       87 GETTABLEKS                       R10 R2 K24 ["index"]
       89 MOVE                             R11 R7
       90 GETTABLEKS                       R13 R1 K12 ["seed"]
       92 FASTCALL1                        TOSTRING R13 ; [+2]
       93 GETIMPORT                        R12 K29 [tostring]
       95 CALL                             R12 1 1
       96 JUMPIFNOT                        R5 ; [+2]
       97 LENGTH                           R13 R5
       98 JUMP                             ; [+1]
       99 LOADN                            R13 0
      100 NAMECALL                         R8 R8 K25 ["format"]
      102 CALL                             R8 5 1
      103 GETTABLEKS                       R9 R0 K14 ["capabilities"]
      105 JUMPIFEQKNIL                     R9 ; [+14]
      107 GETTABLEKS                       R9 R0 K14 ["capabilities"]
      109 GETTABLEKS                       R9 R9 K30 ["debugLog"]
      111 JUMPIFNOT                        R9 ; [+8]
      112 GETIMPORT                        R9 K32 [print]
      114 LOADK                            R10 K33 ["[ImageSelectionOps] %*"]
      115 MOVE                             R12 R8
      116 NAMECALL                         R10 R10 K25 ["format"]
      118 CALL                             R10 2 1
      119 CALL                             R9 1 0
      120 MOVE                             R8 R3
      121 CALL                             R8 0 0
      122 GETUPVAL                         R8 1
      123 MOVE                             R9 R0
      124 MOVE                             R10 R7
      125 LOADN                            R11 2
      126 GETTABLEKS                       R13 R1 K35 ["timeoutSeconds"]
      128 ORK                              R12 R13 K34 [60]
      129 MOVE                             R13 R4
      130 CALL                             R8 5 1
      131 MOVE                             R9 R4
      132 CALL                             R9 0 1
      133 JUMPIFNOT                        R9 ; [+6]
      134 LOADK                            R9 K16 ["Cancelled"]
      135 SETTABLEKS                       R9 R2 K1 ["status"]
      137 MOVE                             R9 R3
      138 CALL                             R9 0 0
      139 RETURN                           R0 0
      140 GETTABLEKS                       R9 R8 K17 ["ok"]
      142 JUMPIFNOT                        R9 ; [+4]
      143 GETTABLEKS                       R9 R8 K36 ["presignedUrl"]
      145 JUMPIFNOTEQKNIL                  R9 ; [+12]
      147 LOADK                            R9 K26 ["Failed"]
      148 SETTABLEKS                       R9 R2 K1 ["status"]
      150 GETTABLEKS                       R10 R8 K20 ["errorMessage"]
      152 ORK                              R9 R10 K37 ["Image generation did not complete"]
      153 SETTABLEKS                       R9 R2 K20 ["errorMessage"]
      155 MOVE                             R9 R3
      156 CALL                             R9 0 0
      157 RETURN                           R0 0
      158 GETTABLEKS                       R9 R8 K36 ["presignedUrl"]
      160 SETTABLEKS                       R9 R2 K36 ["presignedUrl"]
      162 GETTABLEKS                       R9 R8 K38 ["widthPx"]
      164 SETTABLEKS                       R9 R2 K38 ["widthPx"]
      166 GETTABLEKS                       R9 R8 K39 ["heightPx"]
      168 SETTABLEKS                       R9 R2 K39 ["heightPx"]
      170 GETUPVAL                         R9 2
      171 MOVE                             R10 R0
      172 GETTABLEKS                       R11 R8 K36 ["presignedUrl"]
      174 CALL                             R9 2 2
      175 MOVE                             R11 R4
      176 CALL                             R11 0 1
      177 JUMPIFNOT                        R11 ; [+6]
      178 LOADK                            R11 K16 ["Cancelled"]
      179 SETTABLEKS                       R11 R2 K1 ["status"]
      181 MOVE                             R11 R3
      182 CALL                             R11 0 0
      183 RETURN                           R0 0
      184 JUMPIFNOTEQKNIL                  R9 ; [+10]
      186 LOADK                            R11 K26 ["Failed"]
      187 SETTABLEKS                       R11 R2 K1 ["status"]
      189 ORK                              R11 R10 K40 ["Failed to download the generated image"]
      190 SETTABLEKS                       R11 R2 K20 ["errorMessage"]
      192 MOVE                             R11 R3
      193 CALL                             R11 0 0
      194 RETURN                           R0 0
      195 GETIMPORT                        R11 K42 [pcall]
      197 NEWCLOSURE                       R12 P0
      198 CAPTURE                          VAL R0
      199 CAPTURE                          VAL R9
      200 CALL                             R11 1 2
      201 JUMPIFNOT                        R11 ; [+9]
      202 FASTCALL1                        TYPEOF R12 ; [+3]
      203 MOVE                             R14 R12
      204 GETIMPORT                        R13 K44 [typeof]
      206 CALL                             R13 1 1
      207 JUMPIFNOTEQKS                    R13 K45 ["string"] ; [+3]
      209 JUMPIFNOTEQKS                    R12 K46 [""] ; [+32]
      211 GETIMPORT                        R13 K22 [warn]
      213 LOADK                            R14 K47 ["[ImageSelectionOps] slot %*: base64 encode failed: %*"]
      214 GETTABLEKS                       R16 R2 K24 ["index"]
      216 FASTCALL1                        TOSTRING R12 ; [+3]
      217 MOVE                             R18 R12
      218 GETIMPORT                        R17 K29 [tostring]
      220 CALL                             R17 1 1
      221 NAMECALL                         R14 R14 K25 ["format"]
      223 CALL                             R14 3 1
      224 CALL                             R13 1 0
      225 LOADK                            R13 K26 ["Failed"]
      226 SETTABLEKS                       R13 R2 K1 ["status"]
      228 LOADK                            R13 K48 ["Failed to encode the generated image: %*"]
      229 FASTCALL1                        TOSTRING R12 ; [+3]
      230 MOVE                             R16 R12
      231 GETIMPORT                        R15 K29 [tostring]
      233 CALL                             R15 1 1
      234 NAMECALL                         R13 R13 K25 ["format"]
      236 CALL                             R13 2 1
      237 SETTABLEKS                       R13 R2 K20 ["errorMessage"]
      239 MOVE                             R13 R3
      240 CALL                             R13 0 0
      241 RETURN                           R0 0
      242 GETIMPORT                        R13 K42 [pcall]
      244 NEWCLOSURE                       R14 P1
      245 CAPTURE                          VAL R0
      246 CAPTURE                          VAL R12
      247 CALL                             R13 1 2
      248 JUMPIFNOT                        R13 ; [+10]
      249 FASTCALL1                        TYPEOF R14 ; [+3]
      250 MOVE                             R17 R14
      251 GETIMPORT                        R16 K44 [typeof]
      253 CALL                             R16 1 1
      254 JUMPIFNOTEQKS                    R16 K49 ["table"] ; [+4]
      256 GETTABLEKS                       R15 R14 K50 ["tempId"]
      258 JUMP                             ; [+1]
      259 LOADNIL                          R15
      260 FASTCALL1                        TYPEOF R15 ; [+3]
      261 MOVE                             R17 R15
      262 GETIMPORT                        R16 K44 [typeof]
      264 CALL                             R16 1 1
      265 JUMPIFNOTEQKS                    R16 K45 ["string"] ; [+3]
      267 JUMPIFNOTEQKS                    R15 K46 [""] ; [+32]
      269 GETIMPORT                        R16 K22 [warn]
      271 LOADK                            R17 K51 ["[ImageSelectionOps] slot %*: tempId conversion failed: %*"]
      272 GETTABLEKS                       R19 R2 K24 ["index"]
      274 FASTCALL1                        TOSTRING R14 ; [+3]
      275 MOVE                             R21 R14
      276 GETIMPORT                        R20 K29 [tostring]
      278 CALL                             R20 1 1
      279 NAMECALL                         R17 R17 K25 ["format"]
      281 CALL                             R17 3 1
      282 CALL                             R16 1 0
      283 LOADK                            R16 K26 ["Failed"]
      284 SETTABLEKS                       R16 R2 K1 ["status"]
      286 LOADK                            R16 K52 ["Failed to prepare the generated image for display: %*"]
      287 FASTCALL1                        TOSTRING R14 ; [+3]
      288 MOVE                             R19 R14
      289 GETIMPORT                        R18 K29 [tostring]
      291 CALL                             R18 1 1
      292 NAMECALL                         R16 R16 K25 ["format"]
      294 CALL                             R16 2 1
      295 SETTABLEKS                       R16 R2 K20 ["errorMessage"]
      297 MOVE                             R16 R3
      298 CALL                             R16 0 0
      299 RETURN                           R0 0
      300 MOVE                             R16 R4
      301 CALL                             R16 0 1
      302 JUMPIFNOT                        R16 ; [+6]
      303 LOADK                            R16 K16 ["Cancelled"]
      304 SETTABLEKS                       R16 R2 K1 ["status"]
      306 MOVE                             R16 R3
      307 CALL                             R16 0 0
      308 RETURN                           R0 0
      309 SETTABLEKS                       R12 R2 K53 ["thumbnailBase64"]
      311 SETTABLEKS                       R9 R2 K54 ["thumbnailBytes"]
      313 SETTABLEKS                       R15 R2 K55 ["thumbnailTempId"]
      315 LOADK                            R16 K56 ["Ready"]
      316 SETTABLEKS                       R16 R2 K1 ["status"]
      318 MOVE                             R16 R3
      319 CALL                             R16 0 0
      320 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K3 [{[1], ["status"] = "Pending"}]
        1 SETTABLEKS                       R0 R1 K0 ["index"]
        3 RETURN                           R1 1

PROTO_9:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 RETURN                           R1 1

PROTO_10:
        0 RETURN                           R0 0

PROTO_11:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_12:
        0 LOADB                            R3 0
        1 GETTABLEKS                       R5 R1 K0 ["textPrompt"]
        3 FASTCALL1                        TYPEOF R5 ; [+2]
        4 GETIMPORT                        R4 K2 [typeof]
        6 CALL                             R4 1 1
        7 JUMPIFNOTEQKS                    R4 K3 ["string"] ; [+9]
        9 GETTABLEKS                       R5 R1 K0 ["textPrompt"]
       11 LENGTH                           R4 R5
       12 LOADN                            R5 0
       13 JUMPIFLT                         R5 R4 ; [+2]
       15 LOADB                            R3 0 +1
       16 LOADB                            R3 1
       17 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       19 LOADK                            R4 K4 ["textPrompt must be a non-empty string"]
       20 GETIMPORT                        R2 K6 [assert]
       22 CALL                             R2 2 0
       23 DUPTABLE                         R2 K11 [{["index"] = 1, ["status"] = "Pending"}]
       24 GETUPVAL                         R3 0
       25 MOVE                             R4 R0
       26 MOVE                             R5 R1
       27 MOVE                             R6 R2
       28 DUPCLOSURE                       R7 K12 [PROTO_10]
       29 DUPCLOSURE                       R8 K13 [PROTO_11]
       30 CALL                             R3 5 0
       31 GETTABLEKS                       R3 R2 K9 ["status"]
       33 JUMPIFNOTEQKS                    R3 K14 ["Ready"] ; [+5]
       35 GETTABLEKS                       R3 R2 K15 ["thumbnailBase64"]
       37 JUMPIFNOTEQKNIL                  R3 ; [+8]
       39 DUPTABLE                         R3 K17 [{"errorMessage"}]
       40 GETTABLEKS                       R5 R2 K16 ["errorMessage"]
       42 ORK                              R4 R5 K18 ["Image generation failed"]
       43 SETTABLEKS                       R4 R3 K16 ["errorMessage"]
       45 RETURN                           R3 1
       46 DUPTABLE                         R3 K20 [{"imageContent"}]
       47 DUPTABLE                         R4 K26 [{["type"] = "image", ["data"], ["mimeType"] = "image/png"}]
       48 GETTABLEKS                       R5 R2 K15 ["thumbnailBase64"]
       50 SETTABLEKS                       R5 R4 K23 ["data"]
       52 SETTABLEKS                       R4 R3 K19 ["imageContent"]
       54 RETURN                           R3 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onSlotChanged"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R4 1
        7 GETTABLE                         R3 R4 R0
        8 GETIMPORT                        R4 K3 [table.clone]
       10 MOVE                             R5 R3
       11 CALL                             R4 1 1
       12 MOVE                             R2 R4
       13 GETIMPORT                        R3 K5 [pcall]
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R2
       19 CALL                             R3 1 2
       20 JUMPIF                           R3 ; [+12]
       21 GETIMPORT                        R5 K7 [warn]
       23 LOADK                            R6 K8 ["[ImageSelectionOps] onSlotChanged handler errored: %*"]
       24 FASTCALL1                        TOSTRING R4 ; [+3]
       25 MOVE                             R9 R4
       26 GETIMPORT                        R8 K10 [tostring]
       28 CALL                             R8 1 1
       29 NAMECALL                         R6 R6 K11 ["format"]
       31 CALL                             R6 2 1
       32 CALL                             R5 1 0
       33 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K4 [{"studioFlowId", "batchId", "optionIds", "inputGenerationId"}]
        2 GETUPVAL                         R2 1
        3 SETTABLEKS                       R2 R1 K0 ["studioFlowId"]
        5 GETUPVAL                         R2 2
        6 SETTABLEKS                       R2 R1 K1 ["batchId"]
        8 GETUPVAL                         R2 3
        9 GETTABLEKS                       R2 R2 K5 ["ids"]
       11 SETTABLEKS                       R2 R1 K2 ["optionIds"]
       13 GETUPVAL                         R2 3
       14 GETTABLEKS                       R2 R2 K3 ["inputGenerationId"]
       16 SETTABLEKS                       R2 R1 K3 ["inputGenerationId"]
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["onBatchImpression"]
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R4 1
        7 GETTABLE                         R3 R4 R0
        8 JUMPIFNOTEQKNIL                  R3 ; [+2]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R4 R3 K1 ["resolved"]
       13 ADDK                             R4 R4 K2 [1]
       14 SETTABLEKS                       R4 R3 K1 ["resolved"]
       16 JUMPIFEQKNIL                     R1 ; [+9]
       18 GETTABLEKS                       R5 R3 K3 ["ids"]
       20 FASTCALL2                        TABLE_INSERT R5 R1 ; [+4]
       22 MOVE                             R6 R1
       23 GETIMPORT                        R4 K6 [table.insert]
       25 CALL                             R4 2 0
       26 GETTABLEKS                       R4 R3 K1 ["resolved"]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K7 ["slotCount"]
       31 JUMPIFNOTLT                      R4 R5 ; [+2]
       33 RETURN                           R0 0
       34 GETUPVAL                         R4 1
       35 LOADNIL                          R5
       36 SETTABLE                         R5 R4 R0
       37 GETUPVAL                         R4 2
       38 JUMPIF                           R4 ; [+3]
       39 GETUPVAL                         R4 3
       40 JUMPIFEQ                         R0 R4 ; [+2]
       42 RETURN                           R0 0
       43 GETIMPORT                        R4 K9 [pcall]
       45 NEWCLOSURE                       R5 P0
       46 CAPTURE                          VAL R2
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R3
       50 CALL                             R4 1 2
       51 JUMPIF                           R4 ; [+12]
       52 GETIMPORT                        R6 K11 [warn]
       54 LOADK                            R7 K12 ["[ImageSelectionOps] onBatchImpression handler errored: %*"]
       55 FASTCALL1                        TOSTRING R5 ; [+3]
       56 MOVE                             R10 R5
       57 GETIMPORT                        R9 K14 [tostring]
       59 CALL                             R9 1 1
       60 NAMECALL                         R7 R7 K15 ["format"]
       62 CALL                             R7 2 1
       63 CALL                             R6 1 0
       64 RETURN                           R0 0

PROTO_17:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 JUMPIFEQKNIL                     R4 ; [+13]
        8 GETIMPORT                        R5 K2 [coroutine.status]
       10 MOVE                             R6 R4
       11 CALL                             R5 1 1
       12 JUMPIFEQKS                       R5 K3 ["dead"] ; [+7]
       14 GETIMPORT                        R5 K5 [pcall]
       16 GETIMPORT                        R6 K8 [task.cancel]
       18 MOVE                             R7 R4
       19 CALL                             R5 2 0
       20 GETUPVAL                         R5 1
       21 LOADNIL                          R6
       22 SETTABLE                         R6 R5 R3
       23 FORGLOOP                         R0 2 ; [-18]
       25 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+6]
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R2 2
        4 JUMPIFNOTEQ                      R1 R2 ; [+2]
        6 LOADB                            R0 0 +1
        7 LOADB                            R0 1
        8 RETURN                           R0 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R1 2
        4 GETUPVAL                         R2 1
        5 GETTABLE                         R0 R1 R2
        6 JUMPIF                           R0 ; [+25]
        7 GETUPVAL                         R0 3
        8 GETTABLEKS                       R0 R0 K0 ["imageGenerationId"]
       10 JUMPIFNOTEQKNIL                  R0 ; [+11]
       12 GETUPVAL                         R0 3
       13 GETTABLEKS                       R0 R0 K1 ["status"]
       15 JUMPIFEQKS                       R0 K2 ["Failed"] ; [+6]
       17 GETUPVAL                         R0 3
       18 GETTABLEKS                       R0 R0 K1 ["status"]
       20 JUMPIFNOTEQKS                    R0 K3 ["Cancelled"] ; [+11]
       22 GETUPVAL                         R0 2
       23 GETUPVAL                         R1 1
       24 LOADB                            R2 1
       25 SETTABLE                         R2 R0 R1
       26 GETUPVAL                         R0 4
       27 GETUPVAL                         R1 5
       28 GETUPVAL                         R2 3
       29 GETTABLEKS                       R2 R2 K0 ["imageGenerationId"]
       31 CALL                             R0 2 0
       32 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 GETUPVAL                         R1 2
        4 GETUPVAL                         R2 3
        5 DUPTABLE                         R3 K6 [{"textPrompt", "model", "seedImage", "extraImages", "seed", "timeoutSeconds"}]
        6 GETUPVAL                         R4 4
        7 GETTABLEKS                       R4 R4 K0 ["textPrompt"]
        9 SETTABLEKS                       R4 R3 K0 ["textPrompt"]
       11 GETUPVAL                         R4 4
       12 GETTABLEKS                       R4 R4 K1 ["model"]
       14 SETTABLEKS                       R4 R3 K1 ["model"]
       16 GETUPVAL                         R4 4
       17 GETTABLEKS                       R4 R4 K2 ["seedImage"]
       19 SETTABLEKS                       R4 R3 K2 ["seedImage"]
       21 GETUPVAL                         R4 4
       22 GETTABLEKS                       R4 R4 K3 ["extraImages"]
       24 SETTABLEKS                       R4 R3 K3 ["extraImages"]
       26 GETUPVAL                         R5 5
       27 GETUPVAL                         R6 1
       28 GETTABLE                         R4 R5 R6
       29 SETTABLEKS                       R4 R3 K4 ["seed"]
       31 GETUPVAL                         R4 4
       32 GETTABLEKS                       R4 R4 K5 ["timeoutSeconds"]
       34 SETTABLEKS                       R4 R3 K5 ["timeoutSeconds"]
       36 MOVE                             R4 R0
       37 NEWCLOSURE                       R5 P0
       38 CAPTURE                          UPVAL U6
       39 CAPTURE                          UPVAL U1
       40 CAPTURE                          UPVAL U7
       41 CAPTURE                          VAL R0
       42 CAPTURE                          UPVAL U8
       43 CAPTURE                          UPVAL U9
       44 GETUPVAL                         R6 10
       45 CALL                             R1 5 0
       46 RETURN                           R0 0

PROTO_21:
        0 LOADB                            R1 0
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 ADDK                             R1 R1 K0 [1]
        4 SETUPVAL                         R1 1
        5 GETUPVAL                         R1 1
        6 GETIMPORT                        R2 K3 [table.clear]
        8 GETUPVAL                         R3 2
        9 CALL                             R2 1 0
       10 JUMPIFEQKNIL                     R0 ; [+28]
       12 GETUPVAL                         R2 3
       13 GETTABLEKS                       R3 R0 K4 ["textPrompt"]
       15 JUMPIF                           R3 ; [+3]
       16 GETUPVAL                         R3 3
       17 GETTABLEKS                       R3 R3 K4 ["textPrompt"]
       19 SETTABLEKS                       R3 R2 K4 ["textPrompt"]
       21 GETUPVAL                         R2 3
       22 GETTABLEKS                       R3 R0 K5 ["seedImage"]
       24 JUMPIF                           R3 ; [+3]
       25 GETUPVAL                         R3 3
       26 GETTABLEKS                       R3 R3 K5 ["seedImage"]
       28 SETTABLEKS                       R3 R2 K5 ["seedImage"]
       30 GETUPVAL                         R2 3
       31 GETTABLEKS                       R3 R0 K6 ["extraImages"]
       33 JUMPIF                           R3 ; [+3]
       34 GETUPVAL                         R3 3
       35 GETTABLEKS                       R3 R3 K6 ["extraImages"]
       37 SETTABLEKS                       R3 R2 K6 ["extraImages"]
       39 GETUPVAL                         R2 2
       40 DUPTABLE                         R3 K11 [{["resolved"] = 0, ["ids"], ["inputGenerationId"]}]
       41 NEWTABLE                         R4 0 0
       43 SETTABLEKS                       R4 R3 K9 ["ids"]
       45 JUMPIFEQKNIL                     R0 ; [+4]
       47 GETTABLEKS                       R4 R0 K12 ["seedGenerationId"]
       49 JUMP                             ; [+1]
       50 LOADNIL                          R4
       51 SETTABLEKS                       R4 R3 K10 ["inputGenerationId"]
       53 SETTABLE                         R3 R2 R1
       54 GETIMPORT                        R2 K14 [table.create]
       56 GETUPVAL                         R3 3
       57 GETTABLEKS                       R3 R3 K15 ["slotCount"]
       59 LOADB                            R4 0
       60 CALL                             R2 2 1
       61 NEWCLOSURE                       R3 P0
       62 CAPTURE                          UPVAL U0
       63 CAPTURE                          UPVAL U1
       64 CAPTURE                          VAL R1
       65 GETIMPORT                        R4 K14 [table.create]
       67 GETUPVAL                         R5 3
       68 GETTABLEKS                       R5 R5 K15 ["slotCount"]
       70 CALL                             R4 1 1
       71 LOADN                            R7 1
       72 GETUPVAL                         R5 3
       73 GETTABLEKS                       R5 R5 K15 ["slotCount"]
       75 LOADN                            R6 1
       76 FORNPREP                         R5
       77 GETUPVAL                         R8 4
       78 ADDK                             R8 R8 K0 [1]
       79 SETUPVAL                         R8 4
       80 GETUPVAL                         R8 4
       81 SETTABLE                         R8 R4 R7
       82 FORNLOOP                         R5
       83 LOADN                            R7 1
       84 GETUPVAL                         R5 3
       85 GETTABLEKS                       R5 R5 K15 ["slotCount"]
       87 LOADN                            R6 1
       88 FORNPREP                         R5
       89 GETUPVAL                         R8 5
       90 DUPTABLE                         R9 K19 [{["index"], ["status"] = "Pending"}]
       91 SETTABLEKS                       R7 R9 K16 ["index"]
       93 SETTABLE                         R9 R8 R7
       94 GETUPVAL                         R8 6
       95 MOVE                             R9 R7
       96 CALL                             R8 1 0
       97 FORNLOOP                         R5
       98 LOADN                            R7 1
       99 GETUPVAL                         R5 3
      100 GETTABLEKS                       R5 R5 K15 ["slotCount"]
      102 LOADN                            R6 1
      103 FORNPREP                         R5
      104 GETUPVAL                         R8 7
      105 GETIMPORT                        R9 K22 [task.spawn]
      107 NEWCLOSURE                       R10 P1
      108 CAPTURE                          UPVAL U5
      109 CAPTURE                          VAL R7
      110 CAPTURE                          UPVAL U8
      111 CAPTURE                          UPVAL U9
      112 CAPTURE                          UPVAL U3
      113 CAPTURE                          VAL R4
      114 CAPTURE                          UPVAL U6
      115 CAPTURE                          VAL R2
      116 CAPTURE                          UPVAL U10
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R3
      119 CALL                             R9 1 1
      120 SETTABLE                         R9 R8 R7
      121 FORNLOOP                         R5
      122 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["restart requires start() to have been called first"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 1
        8 CALL                             R1 0 0
        9 GETUPVAL                         R1 2
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_23:
        0 DUPTABLE                         R3 K3 [{"textPrompt", "seedImage", "seedGenerationId"}]
        1 SETTABLEKS                       R0 R3 K0 ["textPrompt"]
        3 SETTABLEKS                       R1 R3 K1 ["seedImage"]
        5 SETTABLEKS                       R2 R3 K2 ["seedGenerationId"]
        7 GETUPVAL                         R5 0
        8 FASTCALL2K                       ASSERT R5 K4 ; [+4]
       10 LOADK                            R6 K4 ["restart requires start() to have been called first"]
       11 GETIMPORT                        R4 K6 [assert]
       13 CALL                             R4 2 0
       14 GETUPVAL                         R4 1
       15 CALL                             R4 0 0
       16 GETUPVAL                         R4 2
       17 MOVE                             R5 R3
       18 CALL                             R4 1 0
       19 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R2 0
        1 NOT                              R1 R2
        2 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        4 LOADK                            R2 K0 ["orchestrator's first batch has already started; use restart()"]
        5 GETIMPORT                        R0 K2 [assert]
        7 CALL                             R0 2 0
        8 LOADB                            R0 1
        9 SETUPVAL                         R0 0
       10 GETUPVAL                         R0 1
       11 LOADNIL                          R1
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 GETIMPORT                        R3 K2 [table.clone]
        4 MOVE                             R4 R2
        5 CALL                             R3 1 1
        6 MOVE                             R1 R3
        7 RETURN                           R1 1

PROTO_26:
        0 GETIMPORT                        R0 K2 [table.create]
        2 GETUPVAL                         R2 0
        3 LENGTH                           R1 R2
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 0
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 FORGPREP                         R1
        9 GETIMPORT                        R6 K4 [table.clone]
       11 MOVE                             R7 R5
       12 CALL                             R6 1 1
       13 SETTABLE                         R6 R0 R4
       14 FORGLOOP                         R1 2 ; [-6]
       16 RETURN                           R0 1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_29:
        0 GETTABLEKS                       R4 R1 K0 ["slotCount"]
        2 LOADN                            R5 0
        3 JUMPIFLT                         R5 R4 ; [+2]
        5 LOADB                            R3 0 +1
        6 LOADB                            R3 1
        7 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        9 LOADK                            R4 K1 ["slotCount must be positive"]
       10 GETIMPORT                        R2 K3 [assert]
       12 CALL                             R2 2 0
       13 LOADB                            R3 0
       14 GETTABLEKS                       R5 R1 K4 ["textPrompt"]
       16 FASTCALL1                        TYPEOF R5 ; [+2]
       17 GETIMPORT                        R4 K6 [typeof]
       19 CALL                             R4 1 1
       20 JUMPIFNOTEQKS                    R4 K7 ["string"] ; [+9]
       22 GETTABLEKS                       R5 R1 K4 ["textPrompt"]
       24 LENGTH                           R4 R5
       25 LOADN                            R5 0
       26 JUMPIFLT                         R5 R4 ; [+2]
       28 LOADB                            R3 0 +1
       29 LOADB                            R3 1
       30 FASTCALL2K                       ASSERT R3 K8 ; [+4]
       32 LOADK                            R4 K8 ["textPrompt must be a non-empty string"]
       33 GETIMPORT                        R2 K3 [assert]
       35 CALL                             R2 2 0
       36 GETIMPORT                        R2 K11 [table.create]
       38 GETTABLEKS                       R3 R1 K0 ["slotCount"]
       40 CALL                             R2 1 1
       41 LOADN                            R5 1
       42 GETTABLEKS                       R3 R1 K0 ["slotCount"]
       44 LOADN                            R4 1
       45 FORNPREP                         R3
       46 DUPTABLE                         R6 K15 [{["index"], ["status"] = "Pending"}]
       47 SETTABLEKS                       R5 R6 K12 ["index"]
       49 SETTABLE                         R6 R2 R5
       50 FORNLOOP                         R3
       51 GETIMPORT                        R3 K11 [table.create]
       53 GETTABLEKS                       R4 R1 K0 ["slotCount"]
       55 CALL                             R3 1 1
       56 LOADB                            R4 0
       57 LOADB                            R5 0
       58 LOADN                            R6 0
       59 LOADN                            R7 0
       60 GETUPVAL                         R8 0
       61 LOADB                            R10 0
       62 NAMECALL                         R8 R8 K16 ["GenerateGUID"]
       64 CALL                             R8 2 1
       65 NEWTABLE                         R9 0 0
       67 NEWCLOSURE                       R10 P0
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R2
       70 NEWCLOSURE                       R11 P1
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R9
       73 CAPTURE                          REF R4
       74 CAPTURE                          REF R6
       75 CAPTURE                          VAL R8
       76 NEWCLOSURE                       R12 P2
       77 CAPTURE                          REF R4
       78 CAPTURE                          VAL R3
       79 NEWCLOSURE                       R13 P3
       80 CAPTURE                          REF R4
       81 CAPTURE                          REF R6
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R1
       84 CAPTURE                          REF R7
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R3
       88 CAPTURE                          UPVAL U1
       89 CAPTURE                          VAL R0
       90 CAPTURE                          VAL R11
       91 NEWCLOSURE                       R14 P4
       92 CAPTURE                          REF R5
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R13
       95 NEWCLOSURE                       R15 P5
       96 CAPTURE                          REF R5
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R13
       99 DUPTABLE                         R16 K25 [{"start", "restart", "refine", "cancel", "getSlot", "getSlots", "getStudioFlowId", "getBatchId"}]
      100 NEWCLOSURE                       R17 P6
      101 CAPTURE                          REF R5
      102 CAPTURE                          VAL R13
      103 SETTABLEKS                       R17 R16 K17 ["start"]
      105 SETTABLEKS                       R14 R16 K18 ["restart"]
      107 SETTABLEKS                       R15 R16 K19 ["refine"]
      109 SETTABLEKS                       R12 R16 K20 ["cancel"]
      111 NEWCLOSURE                       R17 P7
      112 CAPTURE                          VAL R2
      113 SETTABLEKS                       R17 R16 K21 ["getSlot"]
      115 NEWCLOSURE                       R17 P8
      116 CAPTURE                          VAL R2
      117 SETTABLEKS                       R17 R16 K22 ["getSlots"]
      119 NEWCLOSURE                       R17 P9
      120 CAPTURE                          VAL R8
      121 SETTABLEKS                       R17 R16 K23 ["getStudioFlowId"]
      123 NEWCLOSURE                       R17 P10
      124 CAPTURE                          REF R6
      125 SETTABLEKS                       R17 R16 K24 ["getBatchId"]
      127 CLOSEUPVALS                      R4
      128 RETURN                           R16 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3dCore"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Gen3dTypes"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K9 [require]
       20 GETTABLEKS                       R4 R0 K11 ["HostSurface"]
       22 CALL                             R3 1 1
       23 DUPTABLE                         R4 K17 [{["Completed"] = True, ["Failed"] = True, ["Terminated"] = True, ["Canceled"] = True}]
       24 NEWTABLE                         R5 4 0
       26 DUPCLOSURE                       R6 K18 [PROTO_0]
       27 DUPCLOSURE                       R7 K19 [PROTO_1]
       28 SETTABLEKS                       R7 R5 K20 ["buildImages"]
       30 DUPCLOSURE                       R7 K21 [PROTO_2]
       31 CAPTURE                          VAL R4
       32 DUPCLOSURE                       R8 K22 [PROTO_4]
       33 DUPCLOSURE                       R9 K23 [PROTO_7]
       34 CAPTURE                          VAL R5
       35 CAPTURE                          VAL R7
       36 CAPTURE                          VAL R8
       37 DUPCLOSURE                       R10 K24 [PROTO_8]
       38 DUPCLOSURE                       R11 K25 [PROTO_9]
       39 DUPCLOSURE                       R12 K26 [PROTO_12]
       40 CAPTURE                          VAL R9
       41 SETTABLEKS                       R12 R5 K27 ["generateOneAsync"]
       43 DUPCLOSURE                       R12 K28 [PROTO_29]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R9
       46 SETTABLEKS                       R12 R5 K29 ["createOrchestrator"]
       48 RETURN                           R5 1
