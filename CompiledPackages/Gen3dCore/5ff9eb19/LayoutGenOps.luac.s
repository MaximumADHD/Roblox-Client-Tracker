PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["translator"]
        2 JUMPIFNOT                        R2 ; [+19]
        3 GETIMPORT                        R3 K2 [pcall]
        5 GETTABLEKS                       R4 R2 K3 ["getText"]
        7 MOVE                             R5 R2
        8 LOADK                            R6 K4 ["GenerateLayout"]
        9 MOVE                             R7 R1
       10 CALL                             R3 4 2
       11 JUMPIFNOT                        R3 ; [+10]
       12 FASTCALL1                        TYPEOF R4 ; [+3]
       13 MOVE                             R6 R4
       14 GETIMPORT                        R5 K6 [typeof]
       16 CALL                             R5 1 1
       17 JUMPIFNOTEQKS                    R5 K7 ["string"] ; [+4]
       19 JUMPIFEQKS                       R4 K8 [""] ; [+2]
       21 RETURN                           R4 1
       22 GETUPVAL                         R5 0
       23 GETTABLE                         R4 R5 R1
       24 OR                               R3 R4 R1
       25 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["capabilities"]
        2 LOADB                            R2 0
        3 JUMPIFEQKNIL                     R1 ; [+7]
        5 GETTABLEKS                       R3 R1 K1 ["debugLog"]
        7 JUMPIFEQKB                       R3 TRUE ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 RETURN                           R2 1

PROTO_2:
        0 JUMPIF                           R0 ; [+3]
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 RETURN                           R1 2
        4 GETUPVAL                         R1 0
        5 GETIMPORT                        R3 K2 [buffer.fromstring]
        7 GETTABLEKS                       R4 R0 K3 ["data"]
        9 CALL                             R3 1 -1
       10 NAMECALL                         R1 R1 K4 ["Base64Decode"]
       12 CALL                             R1 -1 1
       13 MOVE                             R2 R1
       14 GETTABLEKS                       R3 R0 K5 ["mimeType"]
       16 RETURN                           R2 2

PROTO_3:
        0 LOADK                            R4 K0 ["([^%-]+)$"]
        1 NAMECALL                         R2 R0 K1 ["match"]
        3 CALL                             R2 2 1
        4 OR                               R1 R2 R0
        5 LOADK                            R3 K2 ["RBXAI-GeneratedLayout-%*"]
        6 MOVE                             R5 R1
        7 NAMECALL                         R3 R3 K3 ["format"]
        9 CALL                             R3 2 1
       10 MOVE                             R2 R3
       11 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["scriptUrl"]
        2 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R2 K0 ["translator"]
        3 JUMPIFNOT                        R3 ; [+20]
        4 GETIMPORT                        R4 K2 [pcall]
        6 GETTABLEKS                       R5 R3 K3 ["getText"]
        8 MOVE                             R6 R3
        9 LOADK                            R7 K4 ["GenerateLayout"]
       10 MOVE                             R8 R0
       11 CALL                             R4 4 2
       12 JUMPIFNOT                        R4 ; [+11]
       13 FASTCALL1                        TYPEOF R5 ; [+3]
       14 MOVE                             R7 R5
       15 GETIMPORT                        R6 K6 [typeof]
       17 CALL                             R6 1 1
       18 JUMPIFNOTEQKS                    R6 K7 ["string"] ; [+5]
       20 JUMPIFEQKS                       R5 K8 [""] ; [+3]
       22 MOVE                             R1 R5
       23 RETURN                           R1 1
       24 GETUPVAL                         R5 1
       25 GETTABLE                         R4 R5 R0
       26 OR                               R1 R4 R0
       27 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["pollForCompletedStatus"]
        3 GETTABLEKS                       R3 R0 K1 ["layoutGeneration"]
        5 GETTABLEKS                       R3 R3 K2 ["getStatusAsync"]
        7 MOVE                             R4 R1
        8 DUPCLOSURE                       R5 K3 [PROTO_4]
        9 NEWCLOSURE                       R6 P1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U1
       12 LOADK                            R7 K4 ["FailedToGenerateLayout"]
       13 LOADK                            R8 K5 ["GenerateLayout"]
       14 GETUPVAL                         R9 2
       15 GETTABLEKS                       R9 R9 K6 ["LAYOUT_MAX_POLL_ATTEMPTS"]
       17 CALL                             R2 7 -1
       18 RETURN                           R2 -1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["http"]
        2 GETTABLEKS                       R2 R2 K1 ["requestAsync"]
        4 DUPTABLE                         R3 K5 [{["Url"], ["Method"] = "GET"}]
        5 SETTABLEKS                       R1 R3 K2 ["Url"]
        7 CALL                             R2 1 1
        8 GETTABLEKS                       R3 R2 K6 ["Success"]
       10 JUMPIFNOT                        R3 ; [+14]
       11 GETTABLEKS                       R4 R2 K7 ["Body"]
       13 FASTCALL1                        TYPEOF R4 ; [+2]
       14 GETIMPORT                        R3 K9 [typeof]
       16 CALL                             R3 1 1
       17 JUMPIFNOTEQKS                    R3 K10 ["string"] ; [+7]
       19 GETTABLEKS                       R4 R2 K7 ["Body"]
       21 LENGTH                           R3 R4
       22 LOADN                            R4 0
       23 JUMPIFLT                         R4 R3 ; [+58]
       25 GETIMPORT                        R3 K12 [warn]
       27 LOADK                            R5 K13 ["[GenerateLayout] downloadScript failed: success=%* statusCode=%* statusMessage=%*"]
       28 GETTABLEKS                       R8 R2 K6 ["Success"]
       30 FASTCALL1                        TOSTRING R8 ; [+2]
       31 GETIMPORT                        R7 K15 [tostring]
       33 CALL                             R7 1 1
       34 GETTABLEKS                       R9 R2 K16 ["StatusCode"]
       36 FASTCALL1                        TOSTRING R9 ; [+2]
       37 GETIMPORT                        R8 K15 [tostring]
       39 CALL                             R8 1 1
       40 GETTABLEKS                       R10 R2 K17 ["StatusMessage"]
       42 FASTCALL1                        TOSTRING R10 ; [+2]
       43 GETIMPORT                        R9 K15 [tostring]
       45 CALL                             R9 1 1
       46 NAMECALL                         R5 R5 K18 ["format"]
       48 CALL                             R5 4 1
       49 MOVE                             R4 R5
       50 CALL                             R3 1 0
       51 GETIMPORT                        R3 K20 [error]
       53 GETTABLEKS                       R5 R0 K21 ["translator"]
       55 JUMPIFNOT                        R5 ; [+20]
       56 GETIMPORT                        R6 K23 [pcall]
       58 GETTABLEKS                       R7 R5 K24 ["getText"]
       60 MOVE                             R8 R5
       61 LOADK                            R9 K25 ["GenerateLayout"]
       62 LOADK                            R10 K26 ["LayoutMissingScriptUrl"]
       63 CALL                             R6 4 2
       64 JUMPIFNOT                        R6 ; [+11]
       65 FASTCALL1                        TYPEOF R7 ; [+3]
       66 MOVE                             R9 R7
       67 GETIMPORT                        R8 K9 [typeof]
       69 CALL                             R8 1 1
       70 JUMPIFNOTEQKS                    R8 K10 ["string"] ; [+5]
       72 JUMPIFEQKS                       R7 K27 [""] ; [+3]
       74 MOVE                             R4 R7
       75 JUMP                             ; [+4]
       76 GETUPVAL                         R7 0
       77 GETTABLEKS                       R6 R7 K26 ["LayoutMissingScriptUrl"]
       79 ORK                              R4 R6 K26 ["LayoutMissingScriptUrl"]
       80 LOADN                            R5 0
       81 CALL                             R3 2 0
       82 GETTABLEKS                       R3 R2 K7 ["Body"]
       84 RETURN                           R3 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["presignedUrl"]
        2 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R2 K0 ["translator"]
        3 JUMPIFNOT                        R3 ; [+20]
        4 GETIMPORT                        R4 K2 [pcall]
        6 GETTABLEKS                       R5 R3 K3 ["getText"]
        8 MOVE                             R6 R3
        9 LOADK                            R7 K4 ["GenerateLayout"]
       10 MOVE                             R8 R0
       11 CALL                             R4 4 2
       12 JUMPIFNOT                        R4 ; [+11]
       13 FASTCALL1                        TYPEOF R5 ; [+3]
       14 MOVE                             R7 R5
       15 GETIMPORT                        R6 K6 [typeof]
       17 CALL                             R6 1 1
       18 JUMPIFNOTEQKS                    R6 K7 ["string"] ; [+5]
       20 JUMPIFEQKS                       R5 K8 [""] ; [+3]
       22 MOVE                             R1 R5
       23 RETURN                           R1 1
       24 GETUPVAL                         R5 1
       25 GETTABLE                         R4 R5 R0
       26 OR                               R1 R4 R0
       27 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["pollForCompletedStatus"]
        3 GETTABLEKS                       R3 R0 K1 ["imageGeneration"]
        5 GETTABLEKS                       R3 R3 K2 ["getStatusAsync"]
        7 MOVE                             R4 R1
        8 DUPCLOSURE                       R5 K3 [PROTO_8]
        9 NEWCLOSURE                       R6 P1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U1
       12 LOADK                            R7 K4 ["FailedToGenerateLayout"]
       13 LOADK                            R8 K5 ["GenerateLayout"]
       14 CALL                             R2 6 -1
       15 RETURN                           R2 -1

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["http"]
        2 GETTABLEKS                       R3 R3 K1 ["requestAsync"]
        4 DUPTABLE                         R4 K5 [{["Url"], ["Method"] = "GET"}]
        5 SETTABLEKS                       R1 R4 K2 ["Url"]
        7 CALL                             R3 1 1
        8 GETTABLEKS                       R4 R3 K6 ["Success"]
       10 JUMPIFNOT                        R4 ; [+14]
       11 GETTABLEKS                       R5 R3 K7 ["Body"]
       13 FASTCALL1                        TYPEOF R5 ; [+2]
       14 GETIMPORT                        R4 K9 [typeof]
       16 CALL                             R4 1 1
       17 JUMPIFNOTEQKS                    R4 K10 ["string"] ; [+7]
       19 GETTABLEKS                       R5 R3 K7 ["Body"]
       21 LENGTH                           R4 R5
       22 LOADN                            R5 0
       23 JUMPIFLT                         R5 R4 ; [+58]
       25 GETIMPORT                        R4 K12 [warn]
       27 LOADK                            R6 K13 ["[GenerateLayout] downloadImageContent failed: success=%* statusCode=%* statusMessage=%*"]
       28 GETTABLEKS                       R9 R3 K6 ["Success"]
       30 FASTCALL1                        TOSTRING R9 ; [+2]
       31 GETIMPORT                        R8 K15 [tostring]
       33 CALL                             R8 1 1
       34 GETTABLEKS                       R10 R3 K16 ["StatusCode"]
       36 FASTCALL1                        TOSTRING R10 ; [+2]
       37 GETIMPORT                        R9 K15 [tostring]
       39 CALL                             R9 1 1
       40 GETTABLEKS                       R11 R3 K17 ["StatusMessage"]
       42 FASTCALL1                        TOSTRING R11 ; [+2]
       43 GETIMPORT                        R10 K15 [tostring]
       45 CALL                             R10 1 1
       46 NAMECALL                         R6 R6 K18 ["format"]
       48 CALL                             R6 4 1
       49 MOVE                             R5 R6
       50 CALL                             R4 1 0
       51 GETIMPORT                        R4 K20 [error]
       53 GETTABLEKS                       R6 R0 K21 ["translator"]
       55 JUMPIFNOT                        R6 ; [+20]
       56 GETIMPORT                        R7 K23 [pcall]
       58 GETTABLEKS                       R8 R6 K24 ["getText"]
       60 MOVE                             R9 R6
       61 LOADK                            R10 K25 ["GenerateLayout"]
       62 LOADK                            R11 K26 ["FailedToGenerateLayout"]
       63 CALL                             R7 4 2
       64 JUMPIFNOT                        R7 ; [+11]
       65 FASTCALL1                        TYPEOF R8 ; [+3]
       66 MOVE                             R10 R8
       67 GETIMPORT                        R9 K9 [typeof]
       69 CALL                             R9 1 1
       70 JUMPIFNOTEQKS                    R9 K10 ["string"] ; [+5]
       72 JUMPIFEQKS                       R8 K27 [""] ; [+3]
       74 MOVE                             R5 R8
       75 JUMP                             ; [+4]
       76 GETUPVAL                         R8 0
       77 GETTABLEKS                       R7 R8 K26 ["FailedToGenerateLayout"]
       79 ORK                              R5 R7 K26 ["FailedToGenerateLayout"]
       80 LOADN                            R6 0
       81 CALL                             R4 2 0
       82 GETUPVAL                         R4 1
       83 GETIMPORT                        R6 K30 [buffer.fromstring]
       85 GETTABLEKS                       R7 R3 K7 ["Body"]
       87 CALL                             R6 1 -1
       88 NAMECALL                         R4 R4 K31 ["Base64Encode"]
       90 CALL                             R4 -1 1
       91 DUPTABLE                         R5 K36 [{["type"] = "image", ["data"], ["mimeType"]}]
       92 GETIMPORT                        R6 K37 [buffer.tostring]
       94 MOVE                             R7 R4
       95 CALL                             R6 1 1
       96 SETTABLEKS                       R6 R5 K34 ["data"]
       98 ORK                              R6 R2 K38 ["image/png"]
       99 SETTABLEKS                       R6 R5 K35 ["mimeType"]
      101 RETURN                           R5 1

PROTO_12:
        0 LOADB                            R3 0
        1 GETTABLEKS                       R5 R0 K0 ["isometricImage"]
        3 GETTABLEKS                       R5 R5 K1 ["data"]
        5 FASTCALL1                        TYPEOF R5 ; [+2]
        6 GETIMPORT                        R4 K3 [typeof]
        8 CALL                             R4 1 1
        9 JUMPIFNOTEQKS                    R4 K4 ["string"] ; [+11]
       11 GETTABLEKS                       R5 R0 K0 ["isometricImage"]
       13 GETTABLEKS                       R5 R5 K1 ["data"]
       15 LENGTH                           R4 R5
       16 LOADN                            R5 0
       17 JUMPIFLT                         R5 R4 ; [+2]
       19 LOADB                            R3 0 +1
       20 LOADB                            R3 1
       21 FASTCALL2K                       ASSERT R3 K5 ; [+4]
       23 LOADK                            R4 K5 ["isometricImage.data must be a non-empty string"]
       24 GETIMPORT                        R2 K7 [assert]
       26 CALL                             R2 2 0
       27 GETTABLEKS                       R4 R0 K0 ["isometricImage"]
       29 JUMPIF                           R4 ; [+3]
       30 LOADNIL                          R2
       31 LOADNIL                          R3
       32 JUMP                             ; [+12]
       33 GETUPVAL                         R5 0
       34 GETIMPORT                        R7 K10 [buffer.fromstring]
       36 GETTABLEKS                       R8 R4 K1 ["data"]
       38 CALL                             R7 1 -1
       39 NAMECALL                         R5 R5 K11 ["Base64Decode"]
       41 CALL                             R5 -1 1
       42 MOVE                             R2 R5
       43 GETTABLEKS                       R3 R4 K12 ["mimeType"]
       45 JUMPIFNOTEQKNIL                  R2 ; [+2]
       47 LOADB                            R5 0 +1
       48 LOADB                            R5 1
       49 FASTCALL2K                       ASSERT R5 K5 ; [+4]
       51 LOADK                            R6 K5 ["isometricImage.data must be a non-empty string"]
       52 GETIMPORT                        R4 K7 [assert]
       54 CALL                             R4 2 0
       55 GETTABLEKS                       R5 R1 K13 ["capabilities"]
       57 LOADB                            R4 0
       58 JUMPIFEQKNIL                     R5 ; [+7]
       60 GETTABLEKS                       R6 R5 K14 ["debugLog"]
       62 JUMPIFEQKB                       R6 TRUE ; [+2]
       64 LOADB                            R4 0 +1
       65 LOADB                            R4 1
       66 JUMPIFNOT                        R4 ; [+17]
       67 GETIMPORT                        R4 K16 [warn]
       69 LOADK                            R5 K17 ["[GenerateLayout] generateTopDownMapAsync:"]
       70 GETUPVAL                         R6 1
       71 DUPTABLE                         R8 K20 [{"requestId", "textPrompt"}]
       72 GETTABLEKS                       R9 R0 K18 ["requestId"]
       74 SETTABLEKS                       R9 R8 K18 ["requestId"]
       76 GETTABLEKS                       R9 R0 K19 ["textPrompt"]
       78 SETTABLEKS                       R9 R8 K19 ["textPrompt"]
       80 NAMECALL                         R6 R6 K21 ["JSONEncode"]
       82 CALL                             R6 2 -1
       83 CALL                             R4 -1 0
       84 GETTABLEKS                       R6 R0 K19 ["textPrompt"]
       86 FASTCALL1                        TYPEOF R6 ; [+2]
       87 GETIMPORT                        R5 K3 [typeof]
       89 CALL                             R5 1 1
       90 JUMPIFNOTEQKS                    R5 K4 ["string"] ; [+10]
       92 GETTABLEKS                       R6 R0 K19 ["textPrompt"]
       94 LENGTH                           R5 R6
       95 LOADN                            R6 0
       96 JUMPIFNOTLT                      R6 R5 ; [+4]
       98 GETTABLEKS                       R4 R0 K19 ["textPrompt"]
      100 JUMP                             ; [+1]
      101 LOADK                            R4 K22 ["the referenced isometric scene"]
      102 GETTABLEKS                       R5 R1 K23 ["imageGeneration"]
      104 GETTABLEKS                       R5 R5 K24 ["startAsync"]
      106 DUPTABLE                         R6 K29 [{["textPrompt"], ["model"], ["images"], ["removeBackground"] = False}]
      107 GETUPVAL                         R8 2
      108 GETTABLEKS                       R8 R8 K30 ["LAYOUT_TOPDOWN_PROMPT_PREFIX"]
      110 MOVE                             R9 R4
      111 GETUPVAL                         R10 2
      112 GETTABLEKS                       R10 R10 K31 ["LAYOUT_TOPDOWN_PROMPT_SUFFIX"]
      114 CONCAT                           R7 R8 R10
      115 SETTABLEKS                       R7 R6 K19 ["textPrompt"]
      117 GETUPVAL                         R7 2
      118 GETTABLEKS                       R7 R7 K32 ["LAYOUT_MAP_MODEL"]
      120 SETTABLEKS                       R7 R6 K25 ["model"]
      122 NEWTABLE                         R7 0 1
      124 DUPTABLE                         R8 K37 [{["name"] = "isometric.png", ["content"], ["contentType"]}]
      125 SETTABLEKS                       R2 R8 K35 ["content"]
      127 SETTABLEKS                       R3 R8 K36 ["contentType"]
      129 SETLIST                          R7 R8 1 [1]
      131 SETTABLEKS                       R7 R6 K26 ["images"]
      133 CALL                             R5 1 1
      134 GETTABLEKS                       R6 R5 K38 ["ok"]
      136 JUMPIF                           R6 ; [+38]
      137 GETIMPORT                        R6 K40 [error]
      139 GETTABLEKS                       R8 R5 K41 ["errorMessage"]
      141 JUMPIF                           R8 ; [+27]
      142 GETTABLEKS                       R9 R1 K42 ["translator"]
      144 JUMPIFNOT                        R9 ; [+20]
      145 GETIMPORT                        R10 K44 [pcall]
      147 GETTABLEKS                       R11 R9 K45 ["getText"]
      149 MOVE                             R12 R9
      150 LOADK                            R13 K46 ["GenerateLayout"]
      151 LOADK                            R14 K47 ["FailedToGenerateLayout"]
      152 CALL                             R10 4 2
      153 JUMPIFNOT                        R10 ; [+11]
      154 FASTCALL1                        TYPEOF R11 ; [+3]
      155 MOVE                             R13 R11
      156 GETIMPORT                        R12 K3 [typeof]
      158 CALL                             R12 1 1
      159 JUMPIFNOTEQKS                    R12 K4 ["string"] ; [+5]
      161 JUMPIFEQKS                       R11 K48 [""] ; [+3]
      163 MOVE                             R8 R11
      164 JUMP                             ; [+4]
      165 GETUPVAL                         R11 3
      166 GETTABLEKS                       R10 R11 K47 ["FailedToGenerateLayout"]
      168 ORK                              R8 R10 K47 ["FailedToGenerateLayout"]
      169 FASTCALL1                        TOSTRING R8 ; [+2]
      170 GETIMPORT                        R7 K50 [tostring]
      172 CALL                             R7 1 1
      173 LOADN                            R8 0
      174 CALL                             R6 2 0
      175 GETTABLEKS                       R6 R5 K51 ["imageGenerationId"]
      177 FASTCALL1                        TYPEOF R6 ; [+3]
      178 MOVE                             R10 R6
      179 GETIMPORT                        R9 K3 [typeof]
      181 CALL                             R9 1 1
      182 JUMPIFEQKS                       R9 K4 ["string"] ; [+2]
      184 LOADB                            R8 0 +1
      185 LOADB                            R8 1
      186 FASTCALL2K                       ASSERT R8 K52 ; [+4]
      188 LOADK                            R9 K52 ["Missing imageGenerationId in startAsync response"]
      189 GETIMPORT                        R7 K7 [assert]
      191 CALL                             R7 2 0
      192 GETUPVAL                         R7 4
      193 MOVE                             R8 R1
      194 MOVE                             R9 R6
      195 CALL                             R7 2 1
      196 GETUPVAL                         R8 5
      197 MOVE                             R9 R1
      198 MOVE                             R10 R7
      199 LOADK                            R11 K53 ["image/png"]
      200 CALL                             R8 3 1
      201 DUPTABLE                         R9 K55 [{"imageContent"}]
      202 SETTABLEKS                       R8 R9 K54 ["imageContent"]
      204 RETURN                           R9 1

PROTO_13:
        0 GETTABLEKS                       R3 R0 K0 ["requestId"]
        2 GETTABLEKS                       R4 R0 K1 ["isometricImage"]
        4 GETTABLEKS                       R5 R0 K2 ["topDownImage"]
        6 LOADB                            R7 1
        7 JUMPIFEQKNIL                     R4 ; [+18]
        9 LOADB                            R7 0
       10 GETTABLEKS                       R9 R4 K3 ["data"]
       12 FASTCALL1                        TYPEOF R9 ; [+2]
       13 GETIMPORT                        R8 K5 [typeof]
       15 CALL                             R8 1 1
       16 JUMPIFNOTEQKS                    R8 K6 ["string"] ; [+9]
       18 GETTABLEKS                       R9 R4 K3 ["data"]
       20 LENGTH                           R8 R9
       21 LOADN                            R9 0
       22 JUMPIFLT                         R9 R8 ; [+2]
       24 LOADB                            R7 0 +1
       25 LOADB                            R7 1
       26 FASTCALL2K                       ASSERT R7 K7 ; [+4]
       28 LOADK                            R8 K7 ["isometricImage.data must be a non-empty string when isometricImage is provided"]
       29 GETIMPORT                        R6 K9 [assert]
       31 CALL                             R6 2 0
       32 LOADB                            R7 1
       33 JUMPIFEQKNIL                     R5 ; [+18]
       35 LOADB                            R7 0
       36 GETTABLEKS                       R9 R5 K3 ["data"]
       38 FASTCALL1                        TYPEOF R9 ; [+2]
       39 GETIMPORT                        R8 K5 [typeof]
       41 CALL                             R8 1 1
       42 JUMPIFNOTEQKS                    R8 K6 ["string"] ; [+9]
       44 GETTABLEKS                       R9 R5 K3 ["data"]
       46 LENGTH                           R8 R9
       47 LOADN                            R9 0
       48 JUMPIFLT                         R9 R8 ; [+2]
       50 LOADB                            R7 0 +1
       51 LOADB                            R7 1
       52 FASTCALL2K                       ASSERT R7 K10 ; [+4]
       54 LOADK                            R8 K10 ["topDownImage.data must be a non-empty string when topDownImage is provided"]
       55 GETIMPORT                        R6 K9 [assert]
       57 CALL                             R6 2 0
       58 GETTABLEKS                       R6 R2 K11 ["getGenerationSession"]
       60 MOVE                             R7 R3
       61 CALL                             R6 1 1
       62 GETTABLEKS                       R9 R6 K12 ["generationThread"]
       64 JUMPIFEQKNIL                     R9 ; [+2]
       66 LOADB                            R8 0 +1
       67 LOADB                            R8 1
       68 FASTCALL2K                       ASSERT R8 K13 ; [+4]
       70 LOADK                            R9 K13 ["Generation thread already exists for requestId"]
       71 GETIMPORT                        R7 K9 [assert]
       73 CALL                             R7 2 0
       74 GETIMPORT                        R7 K16 [coroutine.running]
       76 CALL                             R7 0 1
       77 SETTABLEKS                       R7 R6 K12 ["generationThread"]
       79 GETTABLEKS                       R8 R1 K17 ["capabilities"]
       81 LOADB                            R7 0
       82 JUMPIFEQKNIL                     R8 ; [+7]
       84 GETTABLEKS                       R9 R8 K18 ["debugLog"]
       86 JUMPIFEQKB                       R9 TRUE ; [+2]
       88 LOADB                            R7 0 +1
       89 LOADB                            R7 1
       90 JUMPIFNOT                        R7 ; [+29]
       91 GETIMPORT                        R7 K20 [warn]
       93 LOADK                            R8 K21 ["[GenerateLayout] generateLayoutAsync:"]
       94 GETUPVAL                         R9 0
       95 DUPTABLE                         R11 K25 [{"requestId", "textPrompt", "isometricImageMimeType", "topDownImageMimeType"}]
       96 SETTABLEKS                       R3 R11 K0 ["requestId"]
       98 GETTABLEKS                       R12 R0 K22 ["textPrompt"]
      100 SETTABLEKS                       R12 R11 K22 ["textPrompt"]
      102 JUMPIFNOT                        R4 ; [+3]
      103 GETTABLEKS                       R12 R4 K26 ["mimeType"]
      105 JUMP                             ; [+1]
      106 LOADNIL                          R12
      107 SETTABLEKS                       R12 R11 K23 ["isometricImageMimeType"]
      109 JUMPIFNOT                        R5 ; [+3]
      110 GETTABLEKS                       R12 R5 K26 ["mimeType"]
      112 JUMP                             ; [+1]
      113 LOADNIL                          R12
      114 SETTABLEKS                       R12 R11 K24 ["topDownImageMimeType"]
      116 NAMECALL                         R9 R9 K27 ["JSONEncode"]
      118 CALL                             R9 2 -1
      119 CALL                             R7 -1 0
      120 JUMPIF                           R4 ; [+3]
      121 LOADNIL                          R7
      122 LOADNIL                          R8
      123 JUMP                             ; [+12]
      124 GETUPVAL                         R9 1
      125 GETIMPORT                        R11 K30 [buffer.fromstring]
      127 GETTABLEKS                       R12 R4 K3 ["data"]
      129 CALL                             R11 1 -1
      130 NAMECALL                         R9 R9 K31 ["Base64Decode"]
      132 CALL                             R9 -1 1
      133 MOVE                             R7 R9
      134 GETTABLEKS                       R8 R4 K26 ["mimeType"]
      136 JUMPIF                           R5 ; [+3]
      137 LOADNIL                          R9
      138 LOADNIL                          R10
      139 JUMP                             ; [+12]
      140 GETUPVAL                         R11 1
      141 GETIMPORT                        R13 K30 [buffer.fromstring]
      143 GETTABLEKS                       R14 R5 K3 ["data"]
      145 CALL                             R13 1 -1
      146 NAMECALL                         R11 R11 K31 ["Base64Decode"]
      148 CALL                             R11 -1 1
      149 MOVE                             R9 R11
      150 GETTABLEKS                       R10 R5 K26 ["mimeType"]
      152 GETTABLEKS                       R11 R0 K32 ["boundingBoxSize"]
      154 GETTABLEKS                       R12 R0 K33 ["boundingBoxCFrame"]
      156 JUMPIFNOT                        R11 ; [+10]
      157 GETTABLEKS                       R14 R11 K34 ["X"]
      159 GETTABLEKS                       R15 R11 K35 ["Z"]
      161 FASTCALL2                        MATH_MAX R14 R15 ; [+3]
      163 GETIMPORT                        R13 K38 [math.max]
      165 CALL                             R13 2 1
      166 JUMP                             ; [+1]
      167 LOADNIL                          R13
      168 JUMPIFNOT                        R12 ; [+29]
      169 GETIMPORT                        R14 K40 [string.format]
      171 LOADK                            R15 K41 ["{\"x\":%s,\"y\":%s,\"z\":%s}"]
      172 GETTABLEKS                       R17 R12 K42 ["Position"]
      174 GETTABLEKS                       R17 R17 K34 ["X"]
      176 FASTCALL1                        TOSTRING R17 ; [+2]
      177 GETIMPORT                        R16 K44 [tostring]
      179 CALL                             R16 1 1
      180 GETTABLEKS                       R18 R12 K42 ["Position"]
      182 GETTABLEKS                       R18 R18 K45 ["Y"]
      184 FASTCALL1                        TOSTRING R18 ; [+2]
      185 GETIMPORT                        R17 K44 [tostring]
      187 CALL                             R17 1 1
      188 GETTABLEKS                       R19 R12 K42 ["Position"]
      190 GETTABLEKS                       R19 R19 K35 ["Z"]
      192 FASTCALL1                        TOSTRING R19 ; [+2]
      193 GETIMPORT                        R18 K44 [tostring]
      195 CALL                             R18 1 1
      196 CALL                             R14 4 1
      197 JUMP                             ; [+1]
      198 LOADNIL                          R14
      199 GETTABLEKS                       R15 R1 K46 ["layoutGeneration"]
      201 GETTABLEKS                       R15 R15 K47 ["startAsync"]
      203 DUPTABLE                         R16 K53 [{"isometricImage", "isometricImageContentType", "topDownImage", "topDownImageContentType", "textPrompt", "sceneWidth", "originWorldCoordinate", "model"}]
      204 SETTABLEKS                       R7 R16 K1 ["isometricImage"]
      206 SETTABLEKS                       R8 R16 K48 ["isometricImageContentType"]
      208 SETTABLEKS                       R9 R16 K2 ["topDownImage"]
      210 SETTABLEKS                       R10 R16 K49 ["topDownImageContentType"]
      212 GETTABLEKS                       R17 R0 K22 ["textPrompt"]
      214 SETTABLEKS                       R17 R16 K22 ["textPrompt"]
      216 SETTABLEKS                       R13 R16 K50 ["sceneWidth"]
      218 SETTABLEKS                       R14 R16 K51 ["originWorldCoordinate"]
      220 GETUPVAL                         R17 2
      221 GETTABLEKS                       R17 R17 K54 ["LAYOUT_GENERATION_MODEL"]
      223 SETTABLEKS                       R17 R16 K52 ["model"]
      225 CALL                             R15 1 1
      226 GETTABLEKS                       R16 R15 K55 ["ok"]
      228 JUMPIF                           R16 ; [+41]
      229 LOADNIL                          R16
      230 SETTABLEKS                       R16 R6 K12 ["generationThread"]
      232 GETIMPORT                        R16 K57 [error]
      234 GETTABLEKS                       R18 R15 K58 ["errorMessage"]
      236 JUMPIF                           R18 ; [+27]
      237 GETTABLEKS                       R19 R1 K59 ["translator"]
      239 JUMPIFNOT                        R19 ; [+20]
      240 GETIMPORT                        R20 K61 [pcall]
      242 GETTABLEKS                       R21 R19 K62 ["getText"]
      244 MOVE                             R22 R19
      245 LOADK                            R23 K63 ["GenerateLayout"]
      246 LOADK                            R24 K64 ["FailedToGenerateLayout"]
      247 CALL                             R20 4 2
      248 JUMPIFNOT                        R20 ; [+11]
      249 FASTCALL1                        TYPEOF R21 ; [+3]
      250 MOVE                             R23 R21
      251 GETIMPORT                        R22 K5 [typeof]
      253 CALL                             R22 1 1
      254 JUMPIFNOTEQKS                    R22 K6 ["string"] ; [+5]
      256 JUMPIFEQKS                       R21 K65 [""] ; [+3]
      258 MOVE                             R18 R21
      259 JUMP                             ; [+4]
      260 GETUPVAL                         R21 3
      261 GETTABLEKS                       R20 R21 K64 ["FailedToGenerateLayout"]
      263 ORK                              R18 R20 K64 ["FailedToGenerateLayout"]
      264 FASTCALL1                        TOSTRING R18 ; [+2]
      265 GETIMPORT                        R17 K44 [tostring]
      267 CALL                             R17 1 1
      268 LOADN                            R18 0
      269 CALL                             R16 2 0
      270 GETTABLEKS                       R16 R15 K66 ["layoutGenerationId"]
      272 FASTCALL1                        TYPEOF R16 ; [+3]
      273 MOVE                             R20 R16
      274 GETIMPORT                        R19 K5 [typeof]
      276 CALL                             R19 1 1
      277 JUMPIFEQKS                       R19 K6 ["string"] ; [+2]
      279 LOADB                            R18 0 +1
      280 LOADB                            R18 1
      281 FASTCALL2K                       ASSERT R18 K67 ; [+4]
      283 LOADK                            R19 K67 ["Missing layoutGenerationId in startAsync response"]
      284 GETIMPORT                        R17 K9 [assert]
      286 CALL                             R17 2 0
      287 SETTABLEKS                       R16 R6 K68 ["generationId"]
      289 GETUPVAL                         R17 4
      290 MOVE                             R18 R1
      291 MOVE                             R19 R16
      292 CALL                             R17 2 1
      293 GETUPVAL                         R18 5
      294 MOVE                             R19 R1
      295 MOVE                             R20 R17
      296 CALL                             R18 2 1
      297 SETTABLEKS                       R18 R6 K69 ["scriptSource"]
      299 LOADNIL                          R19
      300 SETTABLEKS                       R19 R6 K12 ["generationThread"]
      302 DUPTABLE                         R19 K70 [{"layoutGenerationId", "scriptSource"}]
      303 SETTABLEKS                       R16 R19 K66 ["layoutGenerationId"]
      305 SETTABLEKS                       R18 R19 K69 ["scriptSource"]
      307 RETURN                           R19 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["executeLuau"]
        3 GETTABLEKS                       R0 R0 K1 ["loadCode"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 2
        7 MOVE                             R2 R1
        8 CALL                             R2 0 0
        9 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R3 R0 K0 ["requestId"]
        2 GETTABLEKS                       R4 R2 K1 ["getGenerationSession"]
        4 MOVE                             R5 R3
        5 CALL                             R4 1 1
        6 GETTABLEKS                       R5 R4 K2 ["scriptSource"]
        8 LOADB                            R7 0
        9 FASTCALL1                        TYPEOF R5 ; [+3]
       10 MOVE                             R9 R5
       11 GETIMPORT                        R8 K4 [typeof]
       13 CALL                             R8 1 1
       14 JUMPIFNOTEQKS                    R8 K5 ["string"] ; [+7]
       16 LENGTH                           R8 R5
       17 LOADN                            R9 0
       18 JUMPIFLT                         R9 R8 ; [+2]
       20 LOADB                            R7 0 +1
       21 LOADB                            R7 1
       22 FASTCALL2K                       ASSERT R7 K6 ; [+4]
       24 LOADK                            R8 K6 ["No generated script for requestId"]
       25 GETIMPORT                        R6 K8 [assert]
       27 CALL                             R6 2 0
       28 GETIMPORT                        R6 K11 [Instance.new]
       30 LOADK                            R7 K12 ["Script"]
       31 CALL                             R6 1 1
       32 LOADK                            R7 K13 ["GeneratedLayout"]
       33 SETTABLEKS                       R7 R6 K14 ["Name"]
       35 LOADB                            R7 1
       36 SETTABLEKS                       R7 R6 K15 ["Disabled"]
       38 LOADK                            R11 K16 ["([^%-]+)$"]
       39 NAMECALL                         R9 R3 K17 ["match"]
       41 CALL                             R9 2 1
       42 OR                               R8 R9 R3
       43 LOADK                            R9 K18 ["RBXAI-GeneratedLayout-%*"]
       44 MOVE                             R11 R8
       45 NAMECALL                         R9 R9 K19 ["format"]
       47 CALL                             R9 2 1
       48 MOVE                             R7 R9
       49 MOVE                             R10 R7
       50 NAMECALL                         R8 R6 K20 ["AddTag"]
       52 CALL                             R8 2 0
       53 GETTABLEKS                       R9 R4 K21 ["generationId"]
       55 OR                               R8 R9 R3
       56 GETTABLEKS                       R9 R2 K22 ["markAsAIGeneratedAsset"]
       58 MOVE                             R10 R6
       59 MOVE                             R11 R8
       60 GETUPVAL                         R12 0
       61 GETTABLEKS                       R12 R12 K23 ["AI_GENERATION_TYPE_LAYOUT"]
       63 CALL                             R9 3 0
       64 GETIMPORT                        R9 K25 [workspace]
       66 SETTABLEKS                       R9 R6 K26 ["Parent"]
       68 GETTABLEKS                       R9 R1 K27 ["applyScriptSourceDirectly"]
       70 MOVE                             R10 R6
       71 MOVE                             R11 R5
       72 CALL                             R9 2 0
       73 GETIMPORT                        R9 K29 [pcall]
       75 NEWCLOSURE                       R10 P0
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R5
       78 CALL                             R9 1 2
       79 JUMPIF                           R9 ; [+13]
       80 GETIMPORT                        R11 K31 [warn]
       82 LOADK                            R13 K32 ["[GenerateLayout] executeAndStoreScriptAsync: script execution failed: %*"]
       83 FASTCALL1                        TOSTRING R10 ; [+3]
       84 MOVE                             R16 R10
       85 GETIMPORT                        R15 K34 [tostring]
       87 CALL                             R15 1 1
       88 NAMECALL                         R13 R13 K19 ["format"]
       90 CALL                             R13 2 1
       91 MOVE                             R12 R13
       92 CALL                             R11 1 0
       93 DUPTABLE                         R11 K38 [{"ok", "tag", "errorMessage"}]
       94 SETTABLEKS                       R9 R11 K35 ["ok"]
       96 SETTABLEKS                       R7 R11 K36 ["tag"]
       98 JUMPIF                           R9 ; [+6]
       99 FASTCALL1                        TOSTRING R10 ; [+3]
      100 MOVE                             R13 R10
      101 GETIMPORT                        R12 K34 [tostring]
      103 CALL                             R12 1 1
      104 JUMP                             ; [+1]
      105 LOADNIL                          R12
      106 SETTABLEKS                       R12 R11 K37 ["errorMessage"]
      108 RETURN                           R11 1

PROTO_16:
        0 GETTABLEKS                       R2 R1 K0 ["cancelGenerationSession"]
        2 GETTABLEKS                       R3 R0 K1 ["requestId"]
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_17:
        0 LOADK                            R5 K0 ["([^%-]+)$"]
        1 NAMECALL                         R3 R0 K1 ["match"]
        3 CALL                             R3 2 1
        4 OR                               R2 R3 R0
        5 LOADK                            R3 K2 ["RBXAI-GeneratedLayout-%*"]
        6 MOVE                             R5 R2
        7 NAMECALL                         R3 R3 K3 ["format"]
        9 CALL                             R3 2 1
       10 MOVE                             R1 R3
       11 RETURN                           R1 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 LOADK                            R7 K0 ["([^%-]+)$"]
        2 NAMECALL                         R5 R0 K1 ["match"]
        4 CALL                             R5 2 1
        5 OR                               R4 R5 R0
        6 LOADK                            R5 K2 ["RBXAI-GeneratedLayout-%*"]
        7 MOVE                             R7 R4
        8 NAMECALL                         R5 R5 K3 ["format"]
       10 CALL                             R5 2 1
       11 MOVE                             R3 R5
       12 NAMECALL                         R1 R1 K4 ["GetTagged"]
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CollectionService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["EncodingService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["HttpService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K7 [require]
       21 GETIMPORT                        R4 K9 [script]
       23 GETTABLEKS                       R4 R4 K10 ["Parent"]
       25 GETTABLEKS                       R4 R4 K11 ["Constants"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K7 [require]
       30 GETIMPORT                        R5 K9 [script]
       32 GETTABLEKS                       R5 R5 K10 ["Parent"]
       34 GETTABLEKS                       R5 R5 K12 ["GenerationSessions"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K7 [require]
       39 GETIMPORT                        R6 K9 [script]
       41 GETTABLEKS                       R6 R6 K10 ["Parent"]
       43 GETTABLEKS                       R6 R6 K13 ["GenerationUtils"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K7 [require]
       48 GETIMPORT                        R7 K9 [script]
       50 GETTABLEKS                       R7 R7 K10 ["Parent"]
       52 GETTABLEKS                       R7 R7 K14 ["HostSurface"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K7 [require]
       57 GETIMPORT                        R8 K9 [script]
       59 GETTABLEKS                       R8 R8 K10 ["Parent"]
       61 GETTABLEKS                       R8 R8 K15 ["LayoutGenStrings"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K7 [require]
       66 GETIMPORT                        R9 K9 [script]
       68 GETTABLEKS                       R9 R9 K10 ["Parent"]
       70 GETTABLEKS                       R9 R9 K16 ["Gen3dTypes"]
       72 CALL                             R8 1 1
       73 NEWTABLE                         R9 8 0
       75 DUPCLOSURE                       R10 K17 [PROTO_0]
       76 CAPTURE                          VAL R7
       77 DUPCLOSURE                       R11 K18 [PROTO_1]
       78 DUPCLOSURE                       R12 K19 [PROTO_2]
       79 CAPTURE                          VAL R1
       80 DUPCLOSURE                       R13 K20 [PROTO_3]
       81 DUPCLOSURE                       R14 K21 [PROTO_6]
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R3
       85 DUPCLOSURE                       R15 K22 [PROTO_7]
       86 CAPTURE                          VAL R7
       87 DUPCLOSURE                       R16 K23 [PROTO_10]
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R7
       90 DUPCLOSURE                       R17 K24 [PROTO_11]
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R1
       93 DUPCLOSURE                       R18 K25 [PROTO_12]
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R16
       99 CAPTURE                          VAL R17
      100 SETTABLEKS                       R18 R9 K26 ["generateTopDownMapAsync"]
      102 DUPCLOSURE                       R18 K27 [PROTO_13]
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R14
      108 CAPTURE                          VAL R15
      109 SETTABLEKS                       R18 R9 K28 ["generateLayoutAsync"]
      111 DUPCLOSURE                       R18 K29 [PROTO_15]
      112 CAPTURE                          VAL R3
      113 SETTABLEKS                       R18 R9 K30 ["executeAndStoreScriptAsync"]
      115 DUPCLOSURE                       R18 K31 [PROTO_16]
      116 SETTABLEKS                       R18 R9 K32 ["cancelGenerationAsync"]
      118 DUPCLOSURE                       R18 K33 [PROTO_17]
      119 SETTABLEKS                       R18 R9 K34 ["_DEBUG_getScriptTag"]
      121 DUPCLOSURE                       R18 K35 [PROTO_18]
      122 CAPTURE                          VAL R0
      123 SETTABLEKS                       R18 R9 K36 ["_DEBUG_findTaggedScripts"]
      125 RETURN                           R9 1
