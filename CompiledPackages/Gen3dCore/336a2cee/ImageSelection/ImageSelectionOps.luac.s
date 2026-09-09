PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["capabilities"]
        2 JUMPIFEQKNIL                     R2 ; [+15]
        4 GETTABLEKS                       R2 R0 K0 ["capabilities"]
        6 GETTABLEKS                       R2 R2 K1 ["debugLog"]
        8 JUMPIFNOT                        R2 ; [+9]
        9 GETIMPORT                        R2 K3 [print]
       11 LOADK                            R4 K4 ["[ImageSelectionOps] %*"]
       12 MOVE                             R6 R1
       13 NAMECALL                         R4 R4 K5 ["format"]
       15 CALL                             R4 2 1
       16 MOVE                             R3 R4
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

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
       31 JUMPIFEQKNIL                     R8 ; [+49]
       33 GETUPVAL                         R9 0
       34 GETTABLEKS                       R10 R7 K14 ["status"]
       36 GETTABLE                         R8 R9 R10
       37 JUMPIFNOT                        R8 ; [+43]
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
       66 JUMPIF                           R9 ; [+11]
       67 LOADK                            R10 K23 ["Generation ended with status '%*'"]
       68 GETTABLEKS                       R13 R7 K14 ["status"]
       70 FASTCALL1                        TOSTRING R13 ; [+2]
       71 GETIMPORT                        R12 K25 [tostring]
       73 CALL                             R12 1 1
       74 NAMECALL                         R10 R10 K26 ["format"]
       76 CALL                             R10 2 1
       77 MOVE                             R9 R10
       78 SETTABLEKS                       R9 R8 K9 ["errorMessage"]
       80 RETURN                           R8 1
       81 GETTABLEKS                       R8 R7 K7 ["ok"]
       83 JUMPIF                           R8 ; [+51]
       84 GETTABLEKS                       R9 R7 K21 ["statusCode"]
       86 FASTCALL1                        TYPEOF R9 ; [+2]
       87 GETIMPORT                        R8 K18 [typeof]
       89 CALL                             R8 1 1
       90 JUMPIFNOTEQKS                    R8 K27 ["number"] ; [+44]
       92 GETTABLEKS                       R8 R7 K21 ["statusCode"]
       94 LOADB                            R9 0
       95 GETTABLEKS                       R10 R0 K28 ["capabilities"]
       97 JUMPIFEQKNIL                     R10 ; [+9]
       99 GETTABLEKS                       R10 R0 K28 ["capabilities"]
      101 GETTABLEKS                       R10 R10 K29 ["abortPollOn4xx"]
      103 JUMPIFEQKB                       R10 TRUE ; [+2]
      105 LOADB                            R9 0 +1
      106 LOADB                            R9 1
      107 JUMPIFEQKN                       R8 K30 [404] ; [+8]
      109 JUMPIFNOT                        R9 ; [+25]
      110 LOADN                            R10 400
      111 JUMPIFNOTLE                      R10 R8 ; [+23]
      113 LOADN                            R10 500
      114 JUMPIFNOTLT                      R8 R10 ; [+20]
      116 JUMPIFNOTEQKN                    R8 K30 [404] ; [+3]
      118 LOADK                            R10 K31 ["Image generation not found"]
      119 JUMP                             ; [+6]
      120 LOADK                            R11 K32 ["Image generation failed (status=%*)"]
      121 MOVE                             R13 R8
      122 NAMECALL                         R11 R11 K26 ["format"]
      124 CALL                             R11 2 1
      125 MOVE                             R10 R11
      126 DUPTABLE                         R11 K33 [{["ok"] = False, ["statusCode"], ["errorMessage"]}]
      127 SETTABLEKS                       R8 R11 K21 ["statusCode"]
      129 GETTABLEKS                       R13 R7 K9 ["errorMessage"]
      131 OR                               R12 R13 R10
      132 SETTABLEKS                       R12 R11 K9 ["errorMessage"]
      134 RETURN                           R11 1
      135 GETIMPORT                        R8 K6 [os.clock]
      137 CALL                             R8 0 1
      138 JUMPIFNOTLE                      R6 R8 ; [+11]
      140 DUPTABLE                         R8 K34 [{["ok"] = False, ["errorMessage"]}]
      141 LOADK                            R10 K35 ["Image generation timed out after %*s"]
      142 MOVE                             R12 R3
      143 NAMECALL                         R10 R10 K26 ["format"]
      145 CALL                             R10 2 1
      146 MOVE                             R9 R10
      147 SETTABLEKS                       R9 R8 K9 ["errorMessage"]
      149 RETURN                           R8 1
      150 GETIMPORT                        R8 K38 [task.wait]
      152 MOVE                             R9 R5
      153 CALL                             R8 1 0
      154 JUMPBACK                         ; [-137]
      155 RETURN                           R0 0

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
        6 JUMPIF                           R2 ; [+25]
        7 GETIMPORT                        R4 K3 [warn]
        9 LOADK                            R6 K4 ["[ImageSelectionOps] presigned GET threw: %*"]
       10 FASTCALL1                        TOSTRING R3 ; [+3]
       11 MOVE                             R9 R3
       12 GETIMPORT                        R8 K6 [tostring]
       14 CALL                             R8 1 1
       15 NAMECALL                         R6 R6 K7 ["format"]
       17 CALL                             R6 2 1
       18 MOVE                             R5 R6
       19 CALL                             R4 1 0
       20 LOADNIL                          R4
       21 LOADK                            R6 K8 ["Failed to download image: %*"]
       22 FASTCALL1                        TOSTRING R3 ; [+3]
       23 MOVE                             R9 R3
       24 GETIMPORT                        R8 K6 [tostring]
       26 CALL                             R8 1 1
       27 NAMECALL                         R6 R6 K7 ["format"]
       29 CALL                             R6 2 1
       30 MOVE                             R5 R6
       31 RETURN                           R4 2
       32 FASTCALL1                        TYPEOF R3 ; [+3]
       33 MOVE                             R5 R3
       34 GETIMPORT                        R4 K10 [typeof]
       36 CALL                             R4 1 1
       37 JUMPIFNOTEQKS                    R4 K11 ["table"] ; [+4]
       39 GETTABLEKS                       R4 R3 K12 ["Success"]
       41 JUMPIF                           R4 ; [+36]
       42 FASTCALL1                        TYPEOF R3 ; [+3]
       43 MOVE                             R6 R3
       44 GETIMPORT                        R5 K10 [typeof]
       46 CALL                             R5 1 1
       47 JUMPIFNOTEQKS                    R5 K11 ["table"] ; [+8]
       49 GETTABLEKS                       R5 R3 K13 ["StatusCode"]
       51 FASTCALL1                        TOSTRING R5 ; [+2]
       52 GETIMPORT                        R4 K6 [tostring]
       54 CALL                             R4 1 1
       55 JUMP                             ; [+5]
       56 FASTCALL1                        TOSTRING R3 ; [+3]
       57 MOVE                             R5 R3
       58 GETIMPORT                        R4 K6 [tostring]
       60 CALL                             R4 1 1
       61 GETIMPORT                        R5 K3 [warn]
       63 LOADK                            R7 K14 ["[ImageSelectionOps] presigned GET -> status=%*"]
       64 MOVE                             R9 R4
       65 NAMECALL                         R7 R7 K7 ["format"]
       67 CALL                             R7 2 1
       68 MOVE                             R6 R7
       69 CALL                             R5 1 0
       70 LOADNIL                          R5
       71 LOADK                            R7 K15 ["Image download failed (status=%*)"]
       72 MOVE                             R9 R4
       73 NAMECALL                         R7 R7 K7 ["format"]
       75 CALL                             R7 2 1
       76 MOVE                             R6 R7
       77 RETURN                           R5 2
       78 GETTABLEKS                       R5 R3 K16 ["Body"]
       80 FASTCALL1                        TYPEOF R5 ; [+2]
       81 GETIMPORT                        R4 K10 [typeof]
       83 CALL                             R4 1 1
       84 JUMPIFNOTEQKS                    R4 K17 ["string"] ; [+5]
       86 GETTABLEKS                       R4 R3 K16 ["Body"]
       88 JUMPIFNOTEQKS                    R4 K18 [""] ; [+8]
       90 GETIMPORT                        R4 K3 [warn]
       92 LOADK                            R5 K19 ["[ImageSelectionOps] presigned GET returned an empty body"]
       93 CALL                             R4 1 0
       94 LOADNIL                          R4
       95 LOADK                            R5 K20 ["Empty image body"]
       96 RETURN                           R4 2
       97 GETIMPORT                        R4 K23 [buffer.fromstring]
       99 GETTABLEKS                       R5 R3 K16 ["Body"]
      101 CALL                             R4 1 1
      102 LOADNIL                          R5
      103 RETURN                           R4 2

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
       59 JUMPIFNOTEQKNIL                  R7 ; [+23]
       61 GETTABLEKS                       R8 R6 K20 ["errorMessage"]
       63 ORK                              R7 R8 K19 ["Failed to start image generation"]
       64 GETIMPORT                        R8 K22 [warn]
       66 LOADK                            R10 K23 ["[ImageSelectionOps] slot %*: start failed: %*"]
       67 GETTABLEKS                       R12 R2 K24 ["index"]
       69 MOVE                             R13 R7
       70 NAMECALL                         R10 R10 K25 ["format"]
       72 CALL                             R10 3 1
       73 MOVE                             R9 R10
       74 CALL                             R8 1 0
       75 LOADK                            R8 K26 ["Failed"]
       76 SETTABLEKS                       R8 R2 K1 ["status"]
       78 SETTABLEKS                       R7 R2 K20 ["errorMessage"]
       80 MOVE                             R8 R3
       81 CALL                             R8 0 0
       82 RETURN                           R0 0
       83 GETTABLEKS                       R7 R6 K18 ["imageGenerationId"]
       85 SETTABLEKS                       R7 R2 K18 ["imageGenerationId"]
       87 LOADK                            R9 K27 ["slot %* imageGenerationId=%* seed=%* imageCount=%*"]
       88 GETTABLEKS                       R11 R2 K24 ["index"]
       90 MOVE                             R12 R7
       91 GETTABLEKS                       R14 R1 K12 ["seed"]
       93 FASTCALL1                        TOSTRING R14 ; [+2]
       94 GETIMPORT                        R13 K29 [tostring]
       96 CALL                             R13 1 1
       97 JUMPIFNOT                        R5 ; [+2]
       98 LENGTH                           R14 R5
       99 JUMP                             ; [+1]
      100 LOADN                            R14 0
      101 NAMECALL                         R9 R9 K25 ["format"]
      103 CALL                             R9 5 1
      104 MOVE                             R8 R9
      105 GETTABLEKS                       R9 R0 K14 ["capabilities"]
      107 JUMPIFEQKNIL                     R9 ; [+15]
      109 GETTABLEKS                       R9 R0 K14 ["capabilities"]
      111 GETTABLEKS                       R9 R9 K30 ["debugLog"]
      113 JUMPIFNOT                        R9 ; [+9]
      114 GETIMPORT                        R9 K32 [print]
      116 LOADK                            R11 K33 ["[ImageSelectionOps] %*"]
      117 MOVE                             R13 R8
      118 NAMECALL                         R11 R11 K25 ["format"]
      120 CALL                             R11 2 1
      121 MOVE                             R10 R11
      122 CALL                             R9 1 0
      123 MOVE                             R8 R3
      124 CALL                             R8 0 0
      125 GETUPVAL                         R8 1
      126 MOVE                             R9 R0
      127 MOVE                             R10 R7
      128 GETTABLEKS                       R12 R1 K35 ["pollIntervalSeconds"]
      130 ORK                              R11 R12 K34 [2]
      131 GETTABLEKS                       R13 R1 K37 ["timeoutSeconds"]
      133 ORK                              R12 R13 K36 [60]
      134 MOVE                             R13 R4
      135 CALL                             R8 5 1
      136 MOVE                             R9 R4
      137 CALL                             R9 0 1
      138 JUMPIFNOT                        R9 ; [+6]
      139 LOADK                            R9 K16 ["Cancelled"]
      140 SETTABLEKS                       R9 R2 K1 ["status"]
      142 MOVE                             R9 R3
      143 CALL                             R9 0 0
      144 RETURN                           R0 0
      145 GETTABLEKS                       R9 R8 K17 ["ok"]
      147 JUMPIFNOT                        R9 ; [+4]
      148 GETTABLEKS                       R9 R8 K38 ["presignedUrl"]
      150 JUMPIFNOTEQKNIL                  R9 ; [+12]
      152 LOADK                            R9 K26 ["Failed"]
      153 SETTABLEKS                       R9 R2 K1 ["status"]
      155 GETTABLEKS                       R10 R8 K20 ["errorMessage"]
      157 ORK                              R9 R10 K39 ["Image generation did not complete"]
      158 SETTABLEKS                       R9 R2 K20 ["errorMessage"]
      160 MOVE                             R9 R3
      161 CALL                             R9 0 0
      162 RETURN                           R0 0
      163 GETTABLEKS                       R9 R8 K38 ["presignedUrl"]
      165 SETTABLEKS                       R9 R2 K38 ["presignedUrl"]
      167 GETTABLEKS                       R9 R8 K40 ["widthPx"]
      169 SETTABLEKS                       R9 R2 K40 ["widthPx"]
      171 GETTABLEKS                       R9 R8 K41 ["heightPx"]
      173 SETTABLEKS                       R9 R2 K41 ["heightPx"]
      175 GETUPVAL                         R9 2
      176 MOVE                             R10 R0
      177 GETTABLEKS                       R11 R8 K38 ["presignedUrl"]
      179 CALL                             R9 2 2
      180 MOVE                             R11 R4
      181 CALL                             R11 0 1
      182 JUMPIFNOT                        R11 ; [+6]
      183 LOADK                            R11 K16 ["Cancelled"]
      184 SETTABLEKS                       R11 R2 K1 ["status"]
      186 MOVE                             R11 R3
      187 CALL                             R11 0 0
      188 RETURN                           R0 0
      189 JUMPIFNOTEQKNIL                  R9 ; [+10]
      191 LOADK                            R11 K26 ["Failed"]
      192 SETTABLEKS                       R11 R2 K1 ["status"]
      194 ORK                              R11 R10 K42 ["Failed to download the generated image"]
      195 SETTABLEKS                       R11 R2 K20 ["errorMessage"]
      197 MOVE                             R11 R3
      198 CALL                             R11 0 0
      199 RETURN                           R0 0
      200 GETIMPORT                        R11 K44 [pcall]
      202 NEWCLOSURE                       R12 P0
      203 CAPTURE                          VAL R0
      204 CAPTURE                          VAL R9
      205 CALL                             R11 1 2
      206 JUMPIFNOT                        R11 ; [+9]
      207 FASTCALL1                        TYPEOF R12 ; [+3]
      208 MOVE                             R14 R12
      209 GETIMPORT                        R13 K46 [typeof]
      211 CALL                             R13 1 1
      212 JUMPIFNOTEQKS                    R13 K47 ["string"] ; [+3]
      214 JUMPIFNOTEQKS                    R12 K48 [""] ; [+34]
      216 GETIMPORT                        R13 K22 [warn]
      218 LOADK                            R15 K49 ["[ImageSelectionOps] slot %*: base64 encode failed: %*"]
      219 GETTABLEKS                       R17 R2 K24 ["index"]
      221 FASTCALL1                        TOSTRING R12 ; [+3]
      222 MOVE                             R19 R12
      223 GETIMPORT                        R18 K29 [tostring]
      225 CALL                             R18 1 1
      226 NAMECALL                         R15 R15 K25 ["format"]
      228 CALL                             R15 3 1
      229 MOVE                             R14 R15
      230 CALL                             R13 1 0
      231 LOADK                            R13 K26 ["Failed"]
      232 SETTABLEKS                       R13 R2 K1 ["status"]
      234 LOADK                            R14 K50 ["Failed to encode the generated image: %*"]
      235 FASTCALL1                        TOSTRING R12 ; [+3]
      236 MOVE                             R17 R12
      237 GETIMPORT                        R16 K29 [tostring]
      239 CALL                             R16 1 1
      240 NAMECALL                         R14 R14 K25 ["format"]
      242 CALL                             R14 2 1
      243 MOVE                             R13 R14
      244 SETTABLEKS                       R13 R2 K20 ["errorMessage"]
      246 MOVE                             R13 R3
      247 CALL                             R13 0 0
      248 RETURN                           R0 0
      249 GETIMPORT                        R13 K44 [pcall]
      251 NEWCLOSURE                       R14 P1
      252 CAPTURE                          VAL R0
      253 CAPTURE                          VAL R12
      254 CALL                             R13 1 2
      255 JUMPIFNOT                        R13 ; [+10]
      256 FASTCALL1                        TYPEOF R14 ; [+3]
      257 MOVE                             R17 R14
      258 GETIMPORT                        R16 K46 [typeof]
      260 CALL                             R16 1 1
      261 JUMPIFNOTEQKS                    R16 K51 ["table"] ; [+4]
      263 GETTABLEKS                       R15 R14 K52 ["tempId"]
      265 JUMP                             ; [+1]
      266 LOADNIL                          R15
      267 FASTCALL1                        TYPEOF R15 ; [+3]
      268 MOVE                             R17 R15
      269 GETIMPORT                        R16 K46 [typeof]
      271 CALL                             R16 1 1
      272 JUMPIFNOTEQKS                    R16 K47 ["string"] ; [+3]
      274 JUMPIFNOTEQKS                    R15 K48 [""] ; [+34]
      276 GETIMPORT                        R16 K22 [warn]
      278 LOADK                            R18 K53 ["[ImageSelectionOps] slot %*: tempId conversion failed: %*"]
      279 GETTABLEKS                       R20 R2 K24 ["index"]
      281 FASTCALL1                        TOSTRING R14 ; [+3]
      282 MOVE                             R22 R14
      283 GETIMPORT                        R21 K29 [tostring]
      285 CALL                             R21 1 1
      286 NAMECALL                         R18 R18 K25 ["format"]
      288 CALL                             R18 3 1
      289 MOVE                             R17 R18
      290 CALL                             R16 1 0
      291 LOADK                            R16 K26 ["Failed"]
      292 SETTABLEKS                       R16 R2 K1 ["status"]
      294 LOADK                            R17 K54 ["Failed to prepare the generated image for display: %*"]
      295 FASTCALL1                        TOSTRING R14 ; [+3]
      296 MOVE                             R20 R14
      297 GETIMPORT                        R19 K29 [tostring]
      299 CALL                             R19 1 1
      300 NAMECALL                         R17 R17 K25 ["format"]
      302 CALL                             R17 2 1
      303 MOVE                             R16 R17
      304 SETTABLEKS                       R16 R2 K20 ["errorMessage"]
      306 MOVE                             R16 R3
      307 CALL                             R16 0 0
      308 RETURN                           R0 0
      309 MOVE                             R16 R4
      310 CALL                             R16 0 1
      311 JUMPIFNOT                        R16 ; [+6]
      312 LOADK                            R16 K16 ["Cancelled"]
      313 SETTABLEKS                       R16 R2 K1 ["status"]
      315 MOVE                             R16 R3
      316 CALL                             R16 0 0
      317 RETURN                           R0 0
      318 SETTABLEKS                       R12 R2 K55 ["thumbnailBase64"]
      320 SETTABLEKS                       R15 R2 K56 ["thumbnailTempId"]
      322 LOADK                            R16 K57 ["Ready"]
      323 SETTABLEKS                       R16 R2 K1 ["status"]
      325 MOVE                             R16 R3
      326 CALL                             R16 0 0
      327 RETURN                           R0 0

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
       20 JUMPIF                           R3 ; [+13]
       21 GETIMPORT                        R5 K7 [warn]
       23 LOADK                            R7 K8 ["[ImageSelectionOps] onSlotChanged handler errored: %*"]
       24 FASTCALL1                        TOSTRING R4 ; [+3]
       25 MOVE                             R10 R4
       26 GETIMPORT                        R9 K10 [tostring]
       28 CALL                             R9 1 1
       29 NAMECALL                         R7 R7 K11 ["format"]
       31 CALL                             R7 2 1
       32 MOVE                             R6 R7
       33 CALL                             R5 1 0
       34 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 DUPTABLE                         R2 K7 [{"textPrompt", "model", "seedImage", "extraImages", "seed", "pollIntervalSeconds", "timeoutSeconds"}]
        3 GETUPVAL                         R3 2
        4 GETTABLEKS                       R3 R3 K0 ["textPrompt"]
        6 SETTABLEKS                       R3 R2 K0 ["textPrompt"]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["model"]
       11 SETTABLEKS                       R3 R2 K1 ["model"]
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K2 ["seedImage"]
       16 SETTABLEKS                       R3 R2 K2 ["seedImage"]
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R3 R3 K3 ["extraImages"]
       21 SETTABLEKS                       R3 R2 K3 ["extraImages"]
       23 GETUPVAL                         R3 3
       24 SETTABLEKS                       R3 R2 K4 ["seed"]
       26 GETUPVAL                         R3 2
       27 GETTABLEKS                       R3 R3 K5 ["pollIntervalSeconds"]
       29 SETTABLEKS                       R3 R2 K5 ["pollIntervalSeconds"]
       31 GETUPVAL                         R3 2
       32 GETTABLEKS                       R3 R3 K6 ["timeoutSeconds"]
       34 SETTABLEKS                       R3 R2 K6 ["timeoutSeconds"]
       36 GETUPVAL                         R4 4
       37 GETUPVAL                         R5 3
       38 GETTABLE                         R3 R4 R5
       39 NEWCLOSURE                       R4 P0
       40 CAPTURE                          UPVAL U5
       41 CAPTURE                          UPVAL U3
       42 GETUPVAL                         R5 6
       43 CALL                             R0 5 0
       44 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 NOT                              R1 R2
        2 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        4 LOADK                            R2 K0 ["orchestrator is single-use; create another for a new batch"]
        5 GETIMPORT                        R0 K2 [assert]
        7 CALL                             R0 2 0
        8 LOADB                            R0 1
        9 SETUPVAL                         R0 0
       10 LOADN                            R2 1
       11 GETUPVAL                         R0 1
       12 GETTABLEKS                       R0 R0 K3 ["slotCount"]
       14 LOADN                            R1 1
       15 FORNPREP                         R0
       16 GETUPVAL                         R3 2
       17 MOVE                             R4 R2
       18 CALL                             R3 1 0
       19 FORNLOOP                         R0
       20 LOADN                            R2 1
       21 GETUPVAL                         R0 1
       22 GETTABLEKS                       R0 R0 K3 ["slotCount"]
       24 LOADN                            R1 1
       25 FORNPREP                         R0
       26 GETUPVAL                         R3 3
       27 GETIMPORT                        R4 K6 [task.spawn]
       29 NEWCLOSURE                       R5 P0
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          VAL R2
       34 CAPTURE                          UPVAL U6
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          UPVAL U7
       37 CALL                             R4 1 1
       38 SETTABLE                         R4 R3 R2
       39 FORNLOOP                         R0
       40 RETURN                           R0 0

PROTO_19:
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

PROTO_20:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 GETIMPORT                        R3 K2 [table.clone]
        4 MOVE                             R4 R2
        5 CALL                             R3 1 1
        6 MOVE                             R1 R3
        7 RETURN                           R1 1

PROTO_21:
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

PROTO_22:
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
       58 NEWCLOSURE                       R6 P0
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R2
       61 NEWCLOSURE                       R7 P1
       62 CAPTURE                          REF R4
       63 LOADNIL                          R8
       64 DUPTABLE                         R9 K20 [{"start", "cancel", "getSlot", "getSlots"}]
       65 NEWCLOSURE                       R10 P2
       66 CAPTURE                          REF R5
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R3
       70 CAPTURE                          UPVAL U0
       71 CAPTURE                          VAL R0
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R7
       74 SETTABLEKS                       R10 R9 K16 ["start"]
       76 NEWCLOSURE                       R10 P3
       77 CAPTURE                          REF R4
       78 CAPTURE                          VAL R3
       79 SETTABLEKS                       R10 R9 K17 ["cancel"]
       81 NEWCLOSURE                       R10 P4
       82 CAPTURE                          VAL R2
       83 SETTABLEKS                       R10 R9 K18 ["getSlot"]
       85 NEWCLOSURE                       R10 P5
       86 CAPTURE                          VAL R2
       87 SETTABLEKS                       R10 R9 K19 ["getSlots"]
       89 MOVE                             R8 R9
       90 CLOSEUPVALS                      R4
       91 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3dCore"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Gen3dTypes"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["HostSurface"]
       16 CALL                             R2 1 1
       17 DUPTABLE                         R3 K13 [{["Completed"] = True, ["Failed"] = True, ["Terminated"] = True, ["Canceled"] = True}]
       18 NEWTABLE                         R4 4 0
       20 DUPCLOSURE                       R5 K14 [PROTO_0]
       21 DUPCLOSURE                       R6 K15 [PROTO_1]
       22 SETTABLEKS                       R6 R4 K16 ["buildImages"]
       24 DUPCLOSURE                       R6 K17 [PROTO_2]
       25 CAPTURE                          VAL R3
       26 DUPCLOSURE                       R7 K18 [PROTO_4]
       27 DUPCLOSURE                       R8 K19 [PROTO_7]
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R6
       30 CAPTURE                          VAL R7
       31 DUPCLOSURE                       R9 K20 [PROTO_8]
       32 DUPCLOSURE                       R10 K21 [PROTO_9]
       33 DUPCLOSURE                       R11 K22 [PROTO_12]
       34 CAPTURE                          VAL R8
       35 SETTABLEKS                       R11 R4 K23 ["generateOneAsync"]
       37 DUPCLOSURE                       R11 K24 [PROTO_22]
       38 CAPTURE                          VAL R8
       39 SETTABLEKS                       R11 R4 K25 ["createOrchestrator"]
       41 RETURN                           R4 1
