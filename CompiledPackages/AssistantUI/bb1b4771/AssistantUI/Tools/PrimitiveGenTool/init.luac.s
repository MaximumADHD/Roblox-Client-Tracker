PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K0 ["getImage"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLE                         R1 R2 R3
        3 JUMPIFEQKB                       R1 TRUE ; [+2]
        5 LOADB                            R0 0 +1
        6 LOADB                            R0 1
        7 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 SETTABLE                         R2 R0 R1
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["get"]
        7 GETUPVAL                         R1 3
        8 GETTABLEKS                       R1 R1 K1 ["Scope"]
       10 GETUPVAL                         R2 1
       11 CALL                             R0 2 1
       12 JUMPIFNOT                        R0 ; [+3]
       13 NAMECALL                         R1 R0 K2 ["Destroy"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Field"]
        4 GETTABLEKS                       R3 R3 K1 ["Stage"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["Set"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["pollForScriptAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 3 -1
        9 RETURN                           R0 -1

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["toolUseId"]
        2 GETTABLEKS                       R4 R1 K2 ["prompt"]
        4 ORK                              R3 R4 K1 [""]
        5 GETUPVAL                         R4 0
        6 LOADNIL                          R5
        7 SETTABLE                         R5 R4 R2
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R2
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K3 ["getOrCreate"]
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K4 ["Scope"]
       17 MOVE                             R7 R2
       18 CALL                             R5 2 1
       19 GETUPVAL                         R8 2
       20 GETTABLEKS                       R8 R8 K5 ["Field"]
       22 GETTABLEKS                       R8 R8 K6 ["Stage"]
       24 GETUPVAL                         R9 3
       25 GETTABLEKS                       R9 R9 K7 ["Submitting"]
       27 NAMECALL                         R6 R5 K8 ["Set"]
       29 CALL                             R6 3 0
       30 NEWCLOSURE                       R6 P1
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          VAL R2
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          UPVAL U2
       35 GETUPVAL                         R7 4
       36 GETTABLEKS                       R7 R7 K9 ["submitGenerationJob"]
       38 MOVE                             R8 R3
       39 GETTABLEKS                       R9 R1 K10 ["imageContent"]
       41 GETTABLEKS                       R10 R1 K11 ["partNames"]
       43 CALL                             R7 3 1
       44 GETTABLEKS                       R8 R7 K12 ["generationId"]
       46 JUMPIFNOTEQKS                    R8 K1 [""] ; [+31]
       48 GETUPVAL                         R8 0
       49 LOADNIL                          R9
       50 SETTABLE                         R9 R8 R2
       51 GETUPVAL                         R8 1
       52 GETTABLEKS                       R8 R8 K13 ["get"]
       54 GETUPVAL                         R9 2
       55 GETTABLEKS                       R9 R9 K4 ["Scope"]
       57 MOVE                             R10 R2
       58 CALL                             R8 2 1
       59 JUMPIFNOT                        R8 ; [+3]
       60 NAMECALL                         R9 R8 K14 ["Destroy"]
       62 CALL                             R9 1 0
       63 DUPTABLE                         R8 K19 [{["success"] = False, ["errorType"], ["errorMessage"]}]
       64 GETTABLEKS                       R9 R7 K17 ["errorType"]
       66 JUMPIF                           R9 ; [+3]
       67 GETUPVAL                         R9 5
       68 GETTABLEKS                       R9 R9 K20 ["General"]
       70 SETTABLEKS                       R9 R8 K17 ["errorType"]
       72 GETTABLEKS                       R10 R7 K18 ["errorMessage"]
       74 ORK                              R9 R10 K21 ["Unknown error"]
       75 SETTABLEKS                       R9 R8 K18 ["errorMessage"]
       77 RETURN                           R8 1
       78 GETTABLEKS                       R8 R7 K12 ["generationId"]
       80 GETIMPORT                        R9 K23 [pcall]
       82 NEWCLOSURE                       R10 P2
       83 CAPTURE                          UPVAL U4
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R5
       87 CAPTURE                          UPVAL U2
       88 CALL                             R9 1 2
       89 JUMPIF                           R9 ; [+39]
       90 GETUPVAL                         R11 0
       91 LOADNIL                          R12
       92 SETTABLE                         R12 R11 R2
       93 GETUPVAL                         R11 1
       94 GETTABLEKS                       R11 R11 K13 ["get"]
       96 GETUPVAL                         R12 2
       97 GETTABLEKS                       R12 R12 K4 ["Scope"]
       99 MOVE                             R13 R2
      100 CALL                             R11 2 1
      101 JUMPIFNOT                        R11 ; [+3]
      102 NAMECALL                         R12 R11 K14 ["Destroy"]
      104 CALL                             R12 1 0
      105 DUPTABLE                         R11 K24 [{["success"] = False, ["generationId"], ["errorType"], ["errorMessage"]}]
      106 SETTABLEKS                       R8 R11 K12 ["generationId"]
      108 GETUPVAL                         R13 6
      109 GETTABLEKS                       R13 R13 K25 ["FFlagPrimGenBetterErrorType"]
      111 JUMPIFNOT                        R13 ; [+4]
      112 GETUPVAL                         R12 5
      113 GETTABLEKS                       R12 R12 K26 ["PollFailed"]
      115 JUMP                             ; [+3]
      116 GETUPVAL                         R12 5
      117 GETTABLEKS                       R12 R12 K20 ["General"]
      119 SETTABLEKS                       R12 R11 K17 ["errorType"]
      121 FASTCALL1                        TOSTRING R10 ; [+3]
      122 MOVE                             R13 R10
      123 GETIMPORT                        R12 K28 [tostring]
      125 CALL                             R12 1 1
      126 SETTABLEKS                       R12 R11 K18 ["errorMessage"]
      128 RETURN                           R11 1
      129 GETTABLEKS                       R11 R10 K29 ["status"]
      131 GETUPVAL                         R12 7
      132 GETTABLEKS                       R12 R12 K30 ["Cancelled"]
      134 JUMPIFNOTEQ                      R11 R12 ; [+20]
      136 GETUPVAL                         R11 0
      137 LOADNIL                          R12
      138 SETTABLE                         R12 R11 R2
      139 GETUPVAL                         R11 1
      140 GETTABLEKS                       R11 R11 K13 ["get"]
      142 GETUPVAL                         R12 2
      143 GETTABLEKS                       R12 R12 K4 ["Scope"]
      145 MOVE                             R13 R2
      146 CALL                             R11 2 1
      147 JUMPIFNOT                        R11 ; [+3]
      148 NAMECALL                         R12 R11 K14 ["Destroy"]
      150 CALL                             R12 1 0
      151 DUPTABLE                         R11 K33 [{["success"] = False, ["cancelled"] = True, ["generationId"]}]
      152 SETTABLEKS                       R8 R11 K12 ["generationId"]
      154 RETURN                           R11 1
      155 GETTABLEKS                       R11 R10 K29 ["status"]
      157 GETUPVAL                         R12 7
      158 GETTABLEKS                       R12 R12 K34 ["Failed"]
      160 JUMPIFNOTEQ                      R11 R12 ; [+36]
      162 GETUPVAL                         R11 0
      163 LOADNIL                          R12
      164 SETTABLE                         R12 R11 R2
      165 GETUPVAL                         R11 1
      166 GETTABLEKS                       R11 R11 K13 ["get"]
      168 GETUPVAL                         R12 2
      169 GETTABLEKS                       R12 R12 K4 ["Scope"]
      171 MOVE                             R13 R2
      172 CALL                             R11 2 1
      173 JUMPIFNOT                        R11 ; [+3]
      174 NAMECALL                         R12 R11 K14 ["Destroy"]
      176 CALL                             R12 1 0
      177 DUPTABLE                         R11 K24 [{["success"] = False, ["generationId"], ["errorType"], ["errorMessage"]}]
      178 SETTABLEKS                       R8 R11 K12 ["generationId"]
      180 GETUPVAL                         R13 6
      181 GETTABLEKS                       R13 R13 K25 ["FFlagPrimGenBetterErrorType"]
      183 JUMPIFNOT                        R13 ; [+3]
      184 GETTABLEKS                       R12 R10 K17 ["errorType"]
      186 JUMP                             ; [+3]
      187 GETUPVAL                         R12 5
      188 GETTABLEKS                       R12 R12 K20 ["General"]
      190 SETTABLEKS                       R12 R11 K17 ["errorType"]
      192 GETTABLEKS                       R12 R10 K35 ["errorText"]
      194 SETTABLEKS                       R12 R11 K18 ["errorMessage"]
      196 RETURN                           R11 1
      197 GETUPVAL                         R13 2
      198 GETTABLEKS                       R13 R13 K5 ["Field"]
      200 GETTABLEKS                       R13 R13 K6 ["Stage"]
      202 GETUPVAL                         R14 3
      203 GETTABLEKS                       R14 R14 K36 ["Inserting"]
      205 NAMECALL                         R11 R5 K8 ["Set"]
      207 CALL                             R11 3 0
      208 GETUPVAL                         R11 8
      209 GETTABLEKS                       R11 R11 K37 ["addWorkspaceModel"]
      211 DUPTABLE                         R12 K40 [{"code", "generationId", "dependencies"}]
      212 GETTABLEKS                       R13 R10 K41 ["luauCode"]
      214 SETTABLEKS                       R13 R12 K38 ["code"]
      216 SETTABLEKS                       R8 R12 K12 ["generationId"]
      218 GETTABLEKS                       R13 R10 K42 ["resolvedDependencies"]
      220 SETTABLEKS                       R13 R12 K39 ["dependencies"]
      222 CALL                             R11 1 1
      223 GETTABLEKS                       R12 R11 K15 ["success"]
      225 JUMPIF                           R12 ; [+45]
      226 GETUPVAL                         R12 9
      227 MOVE                             R13 R11
      228 CALL                             R12 1 1
      229 LOADK                            R14 K43 ["Execute generated code failed with error: %*, generationId=%*"]
      230 GETTABLEKS                       R16 R11 K44 ["error"]
      232 MOVE                             R17 R8
      233 NAMECALL                         R14 R14 K45 ["format"]
      235 CALL                             R14 3 1
      236 MOVE                             R13 R14
      237 GETUPVAL                         R14 5
      238 GETTABLEKS                       R14 R14 K46 ["DmIsUnreachable"]
      240 JUMPIFNOTEQ                      R12 R14 ; [+7]
      242 GETUPVAL                         R14 10
      243 GETTABLEKS                       R15 R11 K44 ["error"]
      245 MOVE                             R16 R13
      246 CALL                             R14 2 1
      247 MOVE                             R13 R14
      248 GETUPVAL                         R14 0
      249 LOADNIL                          R15
      250 SETTABLE                         R15 R14 R2
      251 GETUPVAL                         R14 1
      252 GETTABLEKS                       R14 R14 K13 ["get"]
      254 GETUPVAL                         R15 2
      255 GETTABLEKS                       R15 R15 K4 ["Scope"]
      257 MOVE                             R16 R2
      258 CALL                             R14 2 1
      259 JUMPIFNOT                        R14 ; [+3]
      260 NAMECALL                         R15 R14 K14 ["Destroy"]
      262 CALL                             R15 1 0
      263 DUPTABLE                         R14 K24 [{["success"] = False, ["generationId"], ["errorType"], ["errorMessage"]}]
      264 SETTABLEKS                       R8 R14 K12 ["generationId"]
      266 SETTABLEKS                       R12 R14 K17 ["errorType"]
      268 SETTABLEKS                       R13 R14 K18 ["errorMessage"]
      270 RETURN                           R14 1
      271 GETTABLEKS                       R13 R11 K48 ["resultName"]
      273 ORK                              R12 R13 K47 ["ProceduralObject"]
      274 GETTABLEKS                       R13 R11 K49 ["tag"]
      276 JUMPIF                           R13 ; [+3]
      277 GETUPVAL                         R13 11
      278 MOVE                             R14 R8
      279 CALL                             R13 1 1
      280 GETUPVAL                         R14 4
      281 GETTABLEKS                       R14 R14 K50 ["streamPreviewImagesFromS3"]
      283 MOVE                             R15 R5
      284 GETTABLEKS                       R16 R10 K51 ["scriptPreviewS3Urls"]
      286 CALL                             R14 2 1
      287 JUMPIFNOT                        R14 ; [+4]
      288 GETUPVAL                         R15 0
      289 LOADNIL                          R16
      290 SETTABLE                         R16 R15 R2
      291 JUMP                             ; [+15]
      292 GETUPVAL                         R15 0
      293 LOADNIL                          R16
      294 SETTABLE                         R16 R15 R2
      295 GETUPVAL                         R15 1
      296 GETTABLEKS                       R15 R15 K13 ["get"]
      298 GETUPVAL                         R16 2
      299 GETTABLEKS                       R16 R16 K4 ["Scope"]
      301 MOVE                             R17 R2
      302 CALL                             R15 2 1
      303 JUMPIFNOT                        R15 ; [+3]
      304 NAMECALL                         R16 R15 K14 ["Destroy"]
      306 CALL                             R16 1 0
      307 DUPTABLE                         R15 K52 [{["success"] = True, ["generationId"], ["resultName"], ["tag"]}]
      308 SETTABLEKS                       R8 R15 K12 ["generationId"]
      310 SETTABLEKS                       R12 R15 K48 ["resultName"]
      312 SETTABLEKS                       R13 R15 K49 ["tag"]
      314 RETURN                           R15 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R1 K0 ["toolUseId"]
        3 LOADB                            R4 1
        4 SETTABLE                         R4 R2 R3
        5 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["join"]
        4 GETUPVAL                         R5 2
        5 DUPTABLE                         R6 K7 [{["generationId"], ["success"] = False, ["errorMessage"], ["errorCode"], ["prompt"]}]
        6 SETTABLEKS                       R2 R6 K1 ["generationId"]
        8 SETTABLEKS                       R1 R6 K4 ["errorMessage"]
       10 SETTABLEKS                       R0 R6 K5 ["errorCode"]
       12 GETUPVAL                         R7 3
       13 SETTABLEKS                       R7 R6 K6 ["prompt"]
       15 CALL                             R4 2 -1
       16 CALL                             R3 -1 0
       17 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["join"]
        4 GETUPVAL                         R5 2
        5 DUPTABLE                         R6 K7 [{["generationId"], ["success"] = False, ["errorMessage"], ["errorCode"], ["prompt"]}]
        6 SETTABLEKS                       R2 R6 K1 ["generationId"]
        8 SETTABLEKS                       R1 R6 K4 ["errorMessage"]
       10 SETTABLEKS                       R0 R6 K5 ["errorCode"]
       12 GETUPVAL                         R7 3
       13 SETTABLEKS                       R7 R6 K6 ["prompt"]
       15 CALL                             R4 2 -1
       16 CALL                             R3 -1 0
       17 GETUPVAL                         R3 4
       18 MOVE                             R4 R0
       19 MOVE                             R5 R1
       20 CALL                             R3 2 -1
       21 RETURN                           R3 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 DUPTABLE                         R2 K1 [{"toolUseId"}]
        3 GETUPVAL                         R3 1
        4 SETTABLEKS                       R3 R2 K0 ["toolUseId"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 DUPTABLE                         R2 K4 [{"toolUseId", "prompt", "imageContent", "partNames"}]
        3 GETUPVAL                         R3 1
        4 SETTABLEKS                       R3 R2 K0 ["toolUseId"]
        6 GETUPVAL                         R3 2
        7 SETTABLEKS                       R3 R2 K1 ["prompt"]
        9 GETUPVAL                         R3 3
       10 SETTABLEKS                       R3 R2 K2 ["imageContent"]
       12 GETUPVAL                         R3 4
       13 SETTABLEKS                       R3 R2 K3 ["partNames"]
       15 CALL                             R0 2 -1
       16 RETURN                           R0 -1

PROTO_14:
        0 GETTABLEKS                       R4 R0 K1 ["prompt"]
        2 ORK                              R3 R4 K0 [""]
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETTABLEKS                       R4 R1 K2 ["toolId"]
        6 JUMPIF                           R4 ; [+5]
        7 GETUPVAL                         R4 0
        8 LOADB                            R6 0
        9 NAMECALL                         R4 R4 K3 ["GenerateGUID"]
       11 CALL                             R4 2 1
       12 LOADNIL                          R5
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R6 R6 K4 ["FFlagAssistantGen3dAutoSegmentation"]
       16 JUMPIFNOT                        R6 ; [+22]
       17 GETTABLEKS                       R6 R0 K5 ["segmentation"]
       19 JUMPIF                           R6 ; [+8]
       20 GETUPVAL                         R6 2
       21 GETTABLEKS                       R6 R6 K6 ["inferUISegmentation"]
       23 GETTABLEKS                       R7 R0 K7 ["suggestSegmentation"]
       25 GETTABLEKS                       R8 R0 K8 ["partNames"]
       27 CALL                             R6 2 1
       28 GETUPVAL                         R7 2
       29 GETTABLEKS                       R7 R7 K9 ["resolveSegmentationAsync"]
       31 MOVE                             R8 R6
       32 GETTABLEKS                       R9 R0 K8 ["partNames"]
       34 MOVE                             R10 R3
       35 LOADNIL                          R11
       36 CALL                             R7 4 1
       37 MOVE                             R5 R7
       38 JUMP                             ; [+13]
       39 GETUPVAL                         R6 1
       40 GETTABLEKS                       R6 R6 K10 ["FFlagPrimGenSchemaSelector"]
       42 JUMPIFNOT                        R6 ; [+8]
       43 GETUPVAL                         R6 2
       44 GETTABLEKS                       R6 R6 K11 ["parsePartNames"]
       46 GETTABLEKS                       R7 R0 K8 ["partNames"]
       48 CALL                             R6 1 1
       49 MOVE                             R5 R6
       50 JUMP                             ; [+1]
       51 LOADNIL                          R5
       52 GETUPVAL                         R6 1
       53 GETTABLEKS                       R6 R6 K12 ["FFlagAssistantMcpImageGenShortcut"]
       55 JUMPIFNOT                        R6 ; [+56]
       56 GETUPVAL                         R6 1
       57 GETTABLEKS                       R6 R6 K13 ["EngineFeatureAssistantGen3dImagePreview"]
       59 JUMPIFNOT                        R6 ; [+52]
       60 GETTABLEKS                       R6 R0 K14 ["hintImage"]
       62 JUMPIFNOTEQKNIL                  R6 ; [+49]
       64 GETTABLEKS                       R6 R0 K15 ["attachedImageUri"]
       66 JUMPIFNOTEQKNIL                  R6 ; [+45]
       68 LENGTH                           R6 R3
       69 LOADN                            R7 0
       70 JUMPIFNOTLT                      R7 R6 ; [+41]
       72 GETUPVAL                         R7 1
       73 GETTABLEKS                       R7 R7 K16 ["FFlagPrimGenImageGenPromptTemplateEnabled"]
       75 JUMPIFNOT                        R7 ; [+9]
       76 GETUPVAL                         R6 3
       77 GETTABLEKS                       R6 R6 K17 ["apply"]
       79 GETUPVAL                         R7 1
       80 GETTABLEKS                       R7 R7 K18 ["FStringPrimGenImageGenPromptTemplate"]
       82 MOVE                             R8 R3
       83 CALL                             R6 2 1
       84 JUMP                             ; [+1]
       85 MOVE                             R6 R3
       86 GETUPVAL                         R7 4
       87 GETTABLEKS                       R7 R7 K19 ["generateAsync"]
       89 DUPTABLE                         R8 K22 [{"textPrompt", "model"}]
       90 SETTABLEKS                       R6 R8 K20 ["textPrompt"]
       92 GETUPVAL                         R9 1
       93 GETTABLEKS                       R9 R9 K23 ["FStringAssistantMeshGenImageGenModelOverride"]
       95 SETTABLEKS                       R9 R8 K21 ["model"]
       97 CALL                             R7 1 1
       98 GETTABLEKS                       R8 R7 K24 ["imageContent"]
      100 JUMPIFNOT                        R8 ; [+5]
      101 GETTABLEKS                       R8 R7 K24 ["imageContent"]
      103 SETTABLEKS                       R8 R0 K14 ["hintImage"]
      105 JUMP                             ; [+6]
      106 GETIMPORT                        R8 K26 [warn]
      108 LOADK                            R9 K27 ["[PrimitiveGen] Single-image generation failed, continuing text-only:"]
      109 GETTABLEKS                       R10 R7 K28 ["errorMessage"]
      111 CALL                             R8 2 0
      112 GETUPVAL                         R6 1
      113 GETTABLEKS                       R6 R6 K29 ["FFlagAssistantGen3DTelemetryV2"]
      115 LENGTH                           R8 R3
      116 LOADN                            R9 0
      117 JUMPIFLT                         R9 R8 ; [+2]
      119 LOADB                            R7 0 +1
      120 LOADB                            R7 1
      121 LOADB                            R8 1
      122 GETTABLEKS                       R9 R0 K15 ["attachedImageUri"]
      124 JUMPIFNOTEQKNIL                  R9 ; [+7]
      126 GETTABLEKS                       R9 R0 K14 ["hintImage"]
      128 JUMPIFNOTEQKNIL                  R9 ; [+2]
      130 LOADB                            R8 0 +1
      131 LOADB                            R8 1
      132 DUPTABLE                         R9 K37 [{"requestId", "conversationId", "toolId", "prompt", "hasImage", "modelFlow", "inputFormat", "segmentationEnabled", "finalParts"}]
      133 JUMPIFNOT                        R1 ; [+3]
      134 GETTABLEKS                       R10 R1 K38 ["messageGuid"]
      136 JUMPIF                           R10 ; [+1]
      137 LOADK                            R10 K0 [""]
      138 SETTABLEKS                       R10 R9 K30 ["requestId"]
      140 JUMPIFNOT                        R1 ; [+3]
      141 GETTABLEKS                       R10 R1 K39 ["sessionId"]
      143 JUMPIF                           R10 ; [+1]
      144 LOADK                            R10 K0 [""]
      145 SETTABLEKS                       R10 R9 K31 ["conversationId"]
      147 MOVE                             R10 R1
      148 JUMPIFNOT                        R10 ; [+2]
      149 GETTABLEKS                       R10 R1 K2 ["toolId"]
      151 SETTABLEKS                       R10 R9 K2 ["toolId"]
      153 SETTABLEKS                       R3 R9 K1 ["prompt"]
      155 SETTABLEKS                       R8 R9 K32 ["hasImage"]
      157 JUMPIFNOT                        R6 ; [+2]
      158 LOADK                            R10 K40 ["procedural"]
      159 JUMP                             ; [+1]
      160 LOADNIL                          R10
      161 SETTABLEKS                       R10 R9 K33 ["modelFlow"]
      163 JUMPIF                           R6 ; [+2]
      164 LOADNIL                          R10
      165 JUMP                             ; [+8]
      166 JUMPIFNOT                        R7 ; [+3]
      167 JUMPIFNOT                        R8 ; [+2]
      168 LOADK                            R10 K41 ["text+image"]
      169 JUMP                             ; [+4]
      170 JUMPIFNOT                        R8 ; [+2]
      171 LOADK                            R10 K42 ["image"]
      172 JUMP                             ; [+1]
      173 LOADK                            R10 K43 ["text"]
      174 SETTABLEKS                       R10 R9 K34 ["inputFormat"]
      176 JUMPIFNOT                        R6 ; [+10]
      177 LOADB                            R10 0
      178 JUMPIFEQKNIL                     R5 ; [+9]
      180 LENGTH                           R11 R5
      181 LOADN                            R12 0
      182 JUMPIFLT                         R12 R11 ; [+2]
      184 LOADB                            R10 0 +1
      185 LOADB                            R10 1
      186 JUMP                             ; [+1]
      187 LOADNIL                          R10
      188 SETTABLEKS                       R10 R9 K35 ["segmentationEnabled"]
      190 JUMPIFNOT                        R6 ; [+2]
      191 MOVE                             R10 R5
      192 JUMP                             ; [+1]
      193 LOADNIL                          R10
      194 SETTABLEKS                       R10 R9 K36 ["finalParts"]
      196 GETUPVAL                         R10 5
      197 GETTABLEKS                       R10 R10 K44 ["EventLogger"]
      199 GETTABLEKS                       R10 R10 K45 ["logPrimitiveGen"]
      201 NEWCLOSURE                       R11 P0
      202 CAPTURE                          VAL R10
      203 CAPTURE                          UPVAL U6
      204 CAPTURE                          VAL R9
      205 CAPTURE                          VAL R3
      206 NEWCLOSURE                       R12 P1
      207 CAPTURE                          VAL R10
      208 CAPTURE                          UPVAL U6
      209 CAPTURE                          VAL R9
      210 CAPTURE                          VAL R3
      211 CAPTURE                          UPVAL U7
      212 GETUPVAL                         R13 1
      213 GETTABLEKS                       R13 R13 K46 ["FFlagAssistantVersionMismatchWarning"]
      215 JUMPIFNOT                        R13 ; [+28]
      216 GETUPVAL                         R13 1
      217 GETTABLEKS                       R13 R13 K47 ["FFlagPrimGenVersionMismatchError"]
      219 JUMPIFNOT                        R13 ; [+24]
      220 GETUPVAL                         R13 8
      221 GETTABLEKS                       R13 R13 K48 ["getVersionMismatch"]
      223 CALL                             R13 0 1
      224 JUMPIFNOT                        R13 ; [+19]
      225 GETUPVAL                         R13 9
      226 GETTABLEKS                       R13 R13 K49 ["PluginVersionMismatch"]
      228 MOVE                             R14 R10
      229 GETUPVAL                         R15 6
      230 GETTABLEKS                       R15 R15 K50 ["join"]
      232 MOVE                             R16 R9
      233 DUPTABLE                         R17 K57 [{["generationId"] = , ["success"] = False, ["errorMessage"] = "The Assistant plugin just got new patch, please restart RobloxStudio.", ["errorCode"], ["prompt"]}]
      234 SETTABLEKS                       R13 R17 K56 ["errorCode"]
      236 SETTABLEKS                       R3 R17 K1 ["prompt"]
      238 CALL                             R15 2 -1
      239 CALL                             R14 -1 0
      240 GETUPVAL                         R14 7
      241 MOVE                             R15 R13
      242 LOADK                            R16 K55 ["The Assistant plugin just got new patch, please restart RobloxStudio."]
      243 CALL                             R14 2 1
      244 GETUPVAL                         R13 1
      245 GETTABLEKS                       R13 R13 K47 ["FFlagPrimGenVersionMismatchError"]
      247 JUMPIFNOT                        R13 ; [+45]
      248 GETIMPORT                        R13 K59 [pcall]
      250 NEWCLOSURE                       R14 P2
      251 CAPTURE                          UPVAL U10
      252 CALL                             R13 1 2
      253 JUMPIFNOT                        R13 ; [+3]
      254 GETTABLEKS                       R15 R14 K53 ["success"]
      256 JUMPIF                           R15 ; [+36]
      257 JUMPIFNOT                        R13 ; [+4]
      258 GETTABLEKS                       R16 R14 K61 ["error"]
      260 ORK                              R15 R16 K60 ["Unknown error"]
      261 JUMP                             ; [+5]
      262 FASTCALL1                        TOSTRING R14 ; [+3]
      263 MOVE                             R16 R14
      264 GETIMPORT                        R15 K63 [tostring]
      266 CALL                             R15 1 1
      267 GETUPVAL                         R16 9
      268 GETTABLEKS                       R16 R16 K64 ["DmHealthChecking"]
      270 GETUPVAL                         R17 11
      271 MOVE                             R18 R15
      272 CALL                             R17 1 2
      273 MOVE                             R19 R10
      274 GETUPVAL                         R20 6
      275 GETTABLEKS                       R20 R20 K50 ["join"]
      277 MOVE                             R21 R9
      278 DUPTABLE                         R22 K65 [{["generationId"], ["success"] = False, ["errorMessage"], ["errorCode"], ["prompt"]}]
      279 SETTABLEKS                       R18 R22 K51 ["generationId"]
      281 SETTABLEKS                       R17 R22 K28 ["errorMessage"]
      283 SETTABLEKS                       R16 R22 K56 ["errorCode"]
      285 SETTABLEKS                       R3 R22 K1 ["prompt"]
      287 CALL                             R20 2 -1
      288 CALL                             R19 -1 0
      289 GETUPVAL                         R19 7
      290 MOVE                             R20 R16
      291 MOVE                             R21 R17
      292 CALL                             R19 2 1
      293 GETUPVAL                         R13 1
      294 GETTABLEKS                       R13 R13 K66 ["FIntAssistantPrimitiveGenMaxConcurrentJobs"]
      296 GETUPVAL                         R14 12
      297 JUMPIFNOTLE                      R13 R14 ; [+45]
      299 GETUPVAL                         R14 9
      300 GETTABLEKS                       R14 R14 K67 ["TooManyConcurrentJobs"]
      302 GETUPVAL                         R15 13
      303 LOADK                            R17 K68 ["PrimitiveGen"]
      304 LOADK                            R18 K69 ["MaxConcurrentJobsError"]
      305 DUPTABLE                         R19 K72 [{"activeCount", "maxConcurrentJobs"}]
      306 GETIMPORT                        R20 K75 [string.format]
      308 LOADK                            R21 K76 ["%d"]
      309 GETUPVAL                         R22 12
      310 CALL                             R20 2 1
      311 SETTABLEKS                       R20 R19 K70 ["activeCount"]
      313 GETIMPORT                        R20 K75 [string.format]
      315 LOADK                            R21 K76 ["%d"]
      316 MOVE                             R22 R13
      317 CALL                             R20 2 1
      318 SETTABLEKS                       R20 R19 K71 ["maxConcurrentJobs"]
      320 NAMECALL                         R15 R15 K77 ["getText"]
      322 CALL                             R15 4 2
      323 MOVE                             R17 R10
      324 GETUPVAL                         R18 6
      325 GETTABLEKS                       R18 R18 K50 ["join"]
      327 MOVE                             R19 R9
      328 DUPTABLE                         R20 K65 [{["generationId"], ["success"] = False, ["errorMessage"], ["errorCode"], ["prompt"]}]
      329 SETTABLEKS                       R16 R20 K51 ["generationId"]
      331 SETTABLEKS                       R15 R20 K28 ["errorMessage"]
      333 SETTABLEKS                       R14 R20 K56 ["errorCode"]
      335 SETTABLEKS                       R3 R20 K1 ["prompt"]
      337 CALL                             R18 2 -1
      338 CALL                             R17 -1 0
      339 GETUPVAL                         R17 7
      340 MOVE                             R18 R14
      341 MOVE                             R19 R15
      342 CALL                             R17 2 1
      343 GETTABLEKS                       R14 R0 K14 ["hintImage"]
      345 JUMPIF                           R14 ; [+11]
      346 GETTABLEKS                       R15 R0 K15 ["attachedImageUri"]
      348 JUMPIF                           R15 ; [+2]
      349 LOADNIL                          R14
      350 JUMP                             ; [+6]
      351 GETUPVAL                         R16 14
      352 GETTABLEKS                       R16 R16 K78 ["getImage"]
      354 MOVE                             R17 R15
      355 CALL                             R16 1 1
      356 MOVE                             R14 R16
      357 GETUPVAL                         R15 12
      358 ADDK                             R15 R15 K79 [1]
      359 SETUPVAL                         R15 12
      360 JUMPIFNOT                        R2 ; [+18]
      361 GETTABLEKS                       R15 R2 K80 ["signal"]
      363 JUMPIFNOT                        R15 ; [+15]
      364 GETTABLEKS                       R15 R2 K80 ["signal"]
      366 GETTABLEKS                       R15 R15 K81 ["abortSignal"]
      368 JUMPIFNOT                        R15 ; [+10]
      369 GETTABLEKS                       R15 R2 K80 ["signal"]
      371 GETTABLEKS                       R15 R15 K81 ["abortSignal"]
      373 NEWCLOSURE                       R17 P3
      374 CAPTURE                          UPVAL U15
      375 CAPTURE                          VAL R4
      376 NAMECALL                         R15 R15 K82 ["Once"]
      378 CALL                             R15 2 0
      379 GETIMPORT                        R15 K59 [pcall]
      381 NEWCLOSURE                       R16 P4
      382 CAPTURE                          UPVAL U16
      383 CAPTURE                          VAL R4
      384 CAPTURE                          VAL R3
      385 CAPTURE                          VAL R14
      386 CAPTURE                          REF R5
      387 CALL                             R15 1 2
      388 GETUPVAL                         R17 12
      389 SUBK                             R17 R17 K79 [1]
      390 SETUPVAL                         R17 12
      391 JUMPIF                           R15 ; [+30]
      392 GETUPVAL                         R17 9
      393 GETTABLEKS                       R17 R17 K83 ["General"]
      395 GETUPVAL                         R18 11
      396 FASTCALL1                        TOSTRING R16 ; [+3]
      397 MOVE                             R20 R16
      398 GETIMPORT                        R19 K63 [tostring]
      400 CALL                             R19 1 1
      401 CALL                             R18 1 2
      402 MOVE                             R20 R10
      403 GETUPVAL                         R21 6
      404 GETTABLEKS                       R21 R21 K50 ["join"]
      406 MOVE                             R22 R9
      407 DUPTABLE                         R23 K65 [{["generationId"], ["success"] = False, ["errorMessage"], ["errorCode"], ["prompt"]}]
      408 SETTABLEKS                       R19 R23 K51 ["generationId"]
      410 SETTABLEKS                       R18 R23 K28 ["errorMessage"]
      412 SETTABLEKS                       R17 R23 K56 ["errorCode"]
      414 SETTABLEKS                       R3 R23 K1 ["prompt"]
      416 CALL                             R21 2 -1
      417 CALL                             R20 -1 0
      418 GETUPVAL                         R20 7
      419 MOVE                             R21 R17
      420 MOVE                             R22 R18
      421 CALL                             R20 2 1
      422 GETTABLEKS                       R17 R16 K51 ["generationId"]
      424 GETTABLEKS                       R18 R16 K84 ["cancelled"]
      426 JUMPIFNOT                        R18 ; [+23]
      427 GETUPVAL                         R18 9
      428 GETTABLEKS                       R18 R18 K85 ["CancelByUser"]
      430 MOVE                             R19 R10
      431 GETUPVAL                         R20 6
      432 GETTABLEKS                       R20 R20 K50 ["join"]
      434 MOVE                             R21 R9
      435 DUPTABLE                         R22 K87 [{["generationId"], ["success"] = False, ["errorMessage"] = "Generation cancelled by user", ["errorCode"], ["prompt"]}]
      436 SETTABLEKS                       R17 R22 K51 ["generationId"]
      438 SETTABLEKS                       R18 R22 K56 ["errorCode"]
      440 SETTABLEKS                       R3 R22 K1 ["prompt"]
      442 CALL                             R20 2 -1
      443 CALL                             R19 -1 0
      444 GETUPVAL                         R18 7
      445 GETUPVAL                         R19 9
      446 GETTABLEKS                       R19 R19 K85 ["CancelByUser"]
      448 LOADK                            R20 K86 ["Generation cancelled by user"]
      449 CALL                             R18 2 0
      450 GETTABLEKS                       R18 R16 K53 ["success"]
      452 JUMPIF                           R18 ; [+29]
      453 GETTABLEKS                       R18 R16 K88 ["errorType"]
      455 JUMPIF                           R18 ; [+3]
      456 GETUPVAL                         R18 9
      457 GETTABLEKS                       R18 R18 K83 ["General"]
      459 GETTABLEKS                       R20 R16 K28 ["errorMessage"]
      461 ORK                              R19 R20 K60 ["Unknown error"]
      462 MOVE                             R20 R10
      463 GETUPVAL                         R21 6
      464 GETTABLEKS                       R21 R21 K50 ["join"]
      466 MOVE                             R22 R9
      467 DUPTABLE                         R23 K65 [{["generationId"], ["success"] = False, ["errorMessage"], ["errorCode"], ["prompt"]}]
      468 SETTABLEKS                       R17 R23 K51 ["generationId"]
      470 SETTABLEKS                       R19 R23 K28 ["errorMessage"]
      472 SETTABLEKS                       R18 R23 K56 ["errorCode"]
      474 SETTABLEKS                       R3 R23 K1 ["prompt"]
      476 CALL                             R21 2 -1
      477 CALL                             R20 -1 0
      478 GETUPVAL                         R20 7
      479 MOVE                             R21 R18
      480 MOVE                             R22 R19
      481 CALL                             R20 2 1
      482 FASTCALL2K                       ASSERT R17 K89 ; [+5]
      484 MOVE                             R19 R17
      485 LOADK                            R20 K89 ["Successful generation must return a generationId"]
      486 GETIMPORT                        R18 K91 [assert]
      488 CALL                             R18 2 0
      489 GETTABLEKS                       R19 R16 K93 ["resultName"]
      491 ORK                              R18 R19 K92 ["ProceduralObject"]
      492 GETTABLEKS                       R19 R16 K94 ["tag"]
      494 JUMPIF                           R19 ; [+3]
      495 GETUPVAL                         R19 17
      496 MOVE                             R20 R17
      497 CALL                             R19 1 1
      498 MOVE                             R20 R10
      499 GETUPVAL                         R21 6
      500 GETTABLEKS                       R21 R21 K50 ["join"]
      502 MOVE                             R22 R9
      503 DUPTABLE                         R23 K96 [{["generationId"], ["success"] = True}]
      504 SETTABLEKS                       R17 R23 K51 ["generationId"]
      506 CALL                             R21 2 -1
      507 CALL                             R20 -1 0
      508 DUPTABLE                         R20 K98 [{"tag", "generationId", "generationName"}]
      509 SETTABLEKS                       R19 R20 K94 ["tag"]
      511 SETTABLEKS                       R17 R20 K51 ["generationId"]
      513 SETTABLEKS                       R18 R20 K97 ["generationName"]
      515 CLOSEUPVALS                      R5
      516 RETURN                           R20 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["runWithProgressLoop"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["sendProgress"]
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 GETUPVAL                         R4 4
        9 GETUPVAL                         R5 1
       10 CALL                             R0 5 -1
       11 RETURN                           R0 -1

PROTO_16:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CALL                             R3 1 2
        9 JUMPIF                           R3 ; [+57]
       10 GETUPVAL                         R5 2
       11 MOVE                             R6 R4
       12 CALL                             R5 1 1
       13 DUPTABLE                         R6 K5 [{"errorType", "cancelled", "errorMessage"}]
       14 JUMPIFNOT                        R5 ; [+3]
       15 GETTABLEKS                       R7 R5 K2 ["errorType"]
       17 JUMP                             ; [+3]
       18 GETUPVAL                         R7 3
       19 GETTABLEKS                       R7 R7 K6 ["General"]
       21 SETTABLEKS                       R7 R6 K2 ["errorType"]
       23 LOADB                            R7 0
       24 JUMPIFEQKNIL                     R5 ; [+3]
       26 GETTABLEKS                       R7 R5 K3 ["cancelled"]
       28 SETTABLEKS                       R7 R6 K3 ["cancelled"]
       30 JUMPIFNOT                        R5 ; [+3]
       31 GETTABLEKS                       R7 R5 K7 ["message"]
       33 JUMP                             ; [+5]
       34 FASTCALL1                        TOSTRING R4 ; [+3]
       35 MOVE                             R8 R4
       36 GETIMPORT                        R7 K9 [tostring]
       38 CALL                             R7 1 1
       39 SETTABLEKS                       R7 R6 K4 ["errorMessage"]
       41 GETUPVAL                         R7 4
       42 CALL                             R7 0 1
       43 JUMPIFNOT                        R5 ; [+3]
       44 GETTABLEKS                       R9 R5 K7 ["message"]
       46 JUMP                             ; [+5]
       47 FASTCALL1                        TOSTRING R4 ; [+3]
       48 MOVE                             R10 R4
       49 GETIMPORT                        R9 K9 [tostring]
       51 CALL                             R9 1 1
       52 NAMECALL                         R7 R7 K10 ["addText"]
       54 CALL                             R7 2 1
       55 MOVE                             R9 R6
       56 NAMECALL                         R7 R7 K11 ["setStructuredContent"]
       58 CALL                             R7 2 1
       59 LOADB                            R9 1
       60 NAMECALL                         R7 R7 K12 ["setError"]
       62 CALL                             R7 2 1
       63 NAMECALL                         R7 R7 K13 ["build"]
       65 CALL                             R7 1 -1
       66 RETURN                           R7 -1
       67 DUPTABLE                         R5 K17 [{"tag", "generationId", "generationName"}]
       68 GETTABLEKS                       R6 R4 K14 ["tag"]
       70 SETTABLEKS                       R6 R5 K14 ["tag"]
       72 GETTABLEKS                       R6 R4 K15 ["generationId"]
       74 SETTABLEKS                       R6 R5 K15 ["generationId"]
       76 GETTABLEKS                       R6 R4 K16 ["generationName"]
       78 SETTABLEKS                       R6 R5 K16 ["generationName"]
       80 GETUPVAL                         R6 4
       81 CALL                             R6 0 1
       82 GETUPVAL                         R8 0
       83 GETTABLEKS                       R8 R8 K18 ["toString"]
       85 MOVE                             R9 R5
       86 CALL                             R8 1 -1
       87 NAMECALL                         R6 R6 K10 ["addText"]
       89 CALL                             R6 -1 1
       90 MOVE                             R8 R5
       91 NAMECALL                         R6 R6 K11 ["setStructuredContent"]
       93 CALL                             R6 2 1
       94 NAMECALL                         R6 R6 K13 ["build"]
       96 CALL                             R6 1 -1
       97 RETURN                           R6 -1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["suggestPartsAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 RETURN                           R0 1

PROTO_18:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 JUMPIFEQ                         R2 R3 ; [+2]
       10 RETURN                           R0 0
       11 JUMPIF                           R0 ; [+1]
       12 LOADNIL                          R1
       13 GETUPVAL                         R2 4
       14 GETTABLEKS                       R2 R2 K2 ["fn"]
       16 JUMPIFNOT                        R2 ; [+12]
       17 GETUPVAL                         R2 4
       18 GETTABLEKS                       R2 R2 K2 ["fn"]
       20 JUMPIFNOT                        R1 ; [+6]
       21 GETIMPORT                        R3 K5 [table.concat]
       23 MOVE                             R4 R1
       24 LOADK                            R5 K6 [", "]
       25 CALL                             R3 2 1
       26 JUMP                             ; [+1]
       27 LOADK                            R3 K7 [""]
       28 CALL                             R2 1 0
       29 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R0 R1
        2 JUMPIFEQKN                       R0 K0 [0] ; [+3]
        4 GETUPVAL                         R0 1
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 NEWTABLE                         R0 0 0
        9 SETUPVAL                         R0 2
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R1 R1 K1 ["fn"]
       13 JUMPIFNOT                        R1 ; [+5]
       14 GETUPVAL                         R1 3
       15 GETTABLEKS                       R1 R1 K1 ["fn"]
       17 LOADB                            R2 1
       18 CALL                             R1 1 0
       19 GETIMPORT                        R1 K4 [task.spawn]
       21 NEWCLOSURE                       R2 P0
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U5
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

PROTO_20:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

PROTO_21:
        0 DUPTABLE                         R0 K2 [{[1] = }]
        1 DUPTABLE                         R1 K2 [{[1] = }]
        2 NEWTABLE                         R2 0 0
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          REF R2
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R0
       11 NEWCLOSURE                       R4 P1
       12 CAPTURE                          REF R2
       13 DUPTABLE                         R5 K7 [{"setterRef", "loadingSetterRef", "spawnSuggestion", "cancelSuggestion"}]
       14 SETTABLEKS                       R0 R5 K3 ["setterRef"]
       16 SETTABLEKS                       R1 R5 K4 ["loadingSetterRef"]
       18 SETTABLEKS                       R3 R5 K5 ["spawnSuggestion"]
       20 SETTABLEKS                       R4 R5 K6 ["cancelSuggestion"]
       22 CLOSEUPVALS                      R2
       23 RETURN                           R5 1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["build"]
        3 DUPTABLE                         R2 K7 [{["promptKey"] = "prompt", ["wizardMode"], ["model"], ["modelFlow"] = "procedural"}]
        4 SETTABLEKS                       R0 R2 K3 ["wizardMode"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K8 ["FStringAssistantMeshGenImageGenModelOverride"]
        9 SETTABLEKS                       R3 R2 K4 ["model"]
       11 CALL                             R1 1 -1
       12 RETURN                           R1 -1

PROTO_23:
        0 LOADK                            R0 K0 ["Creates procedural 3D objects from primitive parts with configurable attributes. Supports reference images."]
        1 RETURN                           R0 1

PROTO_24:
        0 SETUPVAL                         R0 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 LENGTH                           R3 R1
        3 LOADN                            R4 0
        4 JUMPIFNOTLT                      R4 R3 ; [+3]
        6 GETTABLEN                        R2 R1 1
        7 JUMP                             ; [+1]
        8 LOADNIL                          R2
        9 SETUPVAL                         R2 1
       10 DUPTABLE                         R2 K2 [{"name", "arguments"}]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K3 ["PrimitiveGen"]
       14 SETTABLEKS                       R3 R2 K0 ["name"]
       16 DUPTABLE                         R3 K8 [{["prompt"], ["attachedImageUri"], ["isManualRun"] = True}]
       17 SETTABLEKS                       R0 R3 K4 ["prompt"]
       19 GETUPVAL                         R4 1
       20 SETTABLEKS                       R4 R3 K5 ["attachedImageUri"]
       22 SETTABLEKS                       R3 R2 K1 ["arguments"]
       24 RETURN                           R2 1

PROTO_25:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["spawnSuggestion"]
        4 CALL                             R1 0 0
        5 RETURN                           R0 0

PROTO_26:
        0 JUMPIFEQKNIL                     R0 ; [+8]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["storeImage"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 SETUPVAL                         R1 0
        8 RETURN                           R0 0
        9 LOADNIL                          R1
       10 SETUPVAL                         R1 0
       11 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setterRef"]
        3 SETTABLEKS                       R0 R1 K1 ["fn"]
        5 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["loadingSetterRef"]
        3 SETTABLEKS                       R0 R1 K1 ["fn"]
        5 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["cancelSuggestion"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["spawnSuggestion"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_31:
        0 SETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+10]
        2 GETUPVAL                         R2 1
        3 LENGTH                           R1 R2
        4 LOADN                            R2 0
        5 JUMPIFNOTLT                      R2 R1 ; [+6]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K0 ["spawnSuggestion"]
       10 CALL                             R1 0 0
       11 RETURN                           R0 0
       12 JUMPIF                           R0 ; [+17]
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K1 ["cancelSuggestion"]
       16 CALL                             R1 0 0
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K2 ["loadingSetterRef"]
       20 GETTABLEKS                       R1 R1 K3 ["fn"]
       22 JUMPIFNOT                        R1 ; [+7]
       23 GETUPVAL                         R1 2
       24 GETTABLEKS                       R1 R1 K2 ["loadingSetterRef"]
       26 GETTABLEKS                       R1 R1 K3 ["fn"]
       28 LOADB                            R2 0
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantGen3DTelemetryV2"]
        3 JUMPIFNOT                        R0 ; [+29]
        4 GETUPVAL                         R2 1
        5 LENGTH                           R1 R2
        6 LOADN                            R2 0
        7 JUMPIFLT                         R2 R1 ; [+2]
        9 LOADB                            R0 0 +1
       10 LOADB                            R0 1
       11 GETUPVAL                         R2 2
       12 JUMPIFNOTEQKNIL                  R2 ; [+2]
       14 LOADB                            R1 0 +1
       15 LOADB                            R1 1
       16 JUMPIFNOT                        R0 ; [+3]
       17 JUMPIFNOT                        R1 ; [+2]
       18 LOADK                            R2 K1 ["text+image"]
       19 JUMP                             ; [+4]
       20 JUMPIFNOT                        R1 ; [+2]
       21 LOADK                            R2 K2 ["image"]
       22 JUMP                             ; [+1]
       23 LOADK                            R2 K3 ["text"]
       24 GETUPVAL                         R3 3
       25 GETTABLEKS                       R3 R3 K4 ["EventLogger"]
       27 GETTABLEKS                       R3 R3 K5 ["logGen3DSegmentationRefresh"]
       29 DUPTABLE                         R4 K9 [{["modelFlow"] = "procedural", ["inputFormat"]}]
       30 SETTABLEKS                       R2 R4 K8 ["inputFormat"]
       32 CALL                             R3 1 0
       33 GETUPVAL                         R0 4
       34 GETTABLEKS                       R0 R0 K10 ["spawnSuggestion"]
       36 CALL                             R0 0 0
       37 RETURN                           R0 0

PROTO_33:
        0 LOADB                            R1 1
        1 GETUPVAL                         R3 0
        2 LENGTH                           R2 R3
        3 LOADN                            R3 0
        4 JUMPIFLT                         R3 R2 ; [+7]
        6 GETTABLEKS                       R2 R0 K0 ["hintImage"]
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_34:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETTABLEKS                       R1 R0 K0 ["spawnSuggestion"]
        4 CALL                             R1 0 0
        5 NEWTABLE                         R1 0 0
        7 MOVE                             R3 R1
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K1 ["createStringRowDefinition"]
       11 DUPTABLE                         R5 K9 [{["label"], ["prop"] = "prompt", ["initialValue"], ["multiLine"] = True, ["onChanged"]}]
       12 GETUPVAL                         R6 2
       13 LOADK                            R8 K10 ["MeshGen"]
       14 LOADK                            R9 K11 ["InputPromptTitle"]
       15 NAMECALL                         R6 R6 K12 ["getText"]
       17 CALL                             R6 3 1
       18 SETTABLEKS                       R6 R5 K2 ["label"]
       20 GETUPVAL                         R6 3
       21 SETTABLEKS                       R6 R5 K5 ["initialValue"]
       23 NEWCLOSURE                       R6 P0
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R6 R5 K8 ["onChanged"]
       28 CALL                             R4 1 -1
       29 FASTCALL                         TABLE_INSERT ; [+2]
       30 GETIMPORT                        R2 K15 [table.insert]
       32 CALL                             R2 -1 0
       33 MOVE                             R3 R1
       34 GETUPVAL                         R4 1
       35 GETTABLEKS                       R4 R4 K16 ["createHintImageRowDefinition"]
       37 DUPTABLE                         R5 K18 [{["label"], ["prop"] = "hintImage", ["initialValue"], ["onChanged"]}]
       38 GETUPVAL                         R6 2
       39 LOADK                            R8 K10 ["MeshGen"]
       40 LOADK                            R9 K19 ["InputHintImageTitle"]
       41 NAMECALL                         R6 R6 K12 ["getText"]
       43 CALL                             R6 3 1
       44 SETTABLEKS                       R6 R5 K2 ["label"]
       46 GETUPVAL                         R7 4
       47 JUMPIFNOT                        R7 ; [+6]
       48 GETUPVAL                         R6 5
       49 GETTABLEKS                       R6 R6 K20 ["getImage"]
       51 GETUPVAL                         R7 4
       52 CALL                             R6 1 1
       53 JUMP                             ; [+1]
       54 LOADNIL                          R6
       55 SETTABLEKS                       R6 R5 K5 ["initialValue"]
       57 NEWCLOSURE                       R6 P1
       58 CAPTURE                          UPVAL U4
       59 CAPTURE                          UPVAL U5
       60 SETTABLEKS                       R6 R5 K8 ["onChanged"]
       62 CALL                             R4 1 -1
       63 FASTCALL                         TABLE_INSERT ; [+2]
       64 GETIMPORT                        R2 K15 [table.insert]
       66 CALL                             R2 -1 0
       67 MOVE                             R3 R1
       68 GETUPVAL                         R4 1
       69 GETTABLEKS                       R4 R4 K21 ["createPartNamesRowDefinition"]
       71 DUPTABLE                         R5 K31 [{["label"], ["prop"] = "partNames", ["initialValue"] = , ["isLoading"], ["registerSetValue"], ["registerSetIsLoading"], ["onCancelPressed"], ["onSuggestPressed"], ["infoPopoverNamespace"] = "PrimGenSegmentation"}]
       72 GETUPVAL                         R6 2
       73 LOADK                            R8 K32 ["PrimitiveGen"]
       74 LOADK                            R9 K33 ["InputPartNamesTitle"]
       75 NAMECALL                         R6 R6 K12 ["getText"]
       77 CALL                             R6 3 1
       78 SETTABLEKS                       R6 R5 K2 ["label"]
       80 GETUPVAL                         R6 6
       81 JUMPIFNOT                        R6 ; [+7]
       82 GETUPVAL                         R8 3
       83 LENGTH                           R7 R8
       84 LOADN                            R8 0
       85 JUMPIFLT                         R8 R7 ; [+2]
       87 LOADB                            R6 0 +1
       88 LOADB                            R6 1
       89 SETTABLEKS                       R6 R5 K24 ["isLoading"]
       91 NEWCLOSURE                       R6 P2
       92 CAPTURE                          VAL R0
       93 SETTABLEKS                       R6 R5 K25 ["registerSetValue"]
       95 NEWCLOSURE                       R6 P3
       96 CAPTURE                          VAL R0
       97 SETTABLEKS                       R6 R5 K26 ["registerSetIsLoading"]
       99 NEWCLOSURE                       R6 P4
      100 CAPTURE                          VAL R0
      101 SETTABLEKS                       R6 R5 K27 ["onCancelPressed"]
      103 NEWCLOSURE                       R6 P5
      104 CAPTURE                          VAL R0
      105 SETTABLEKS                       R6 R5 K28 ["onSuggestPressed"]
      107 CALL                             R4 1 -1
      108 FASTCALL                         TABLE_INSERT ; [+2]
      109 GETIMPORT                        R2 K15 [table.insert]
      111 CALL                             R2 -1 0
      112 MOVE                             R3 R1
      113 GETUPVAL                         R4 1
      114 GETTABLEKS                       R4 R4 K34 ["createSuggestSegmentationRowDefinition"]
      116 DUPTABLE                         R5 K39 [{["label"], ["prop"] = "suggestSegmentation", ["initialChecked"], ["onCheckedChanged"], ["onRefreshPressed"]}]
      117 GETUPVAL                         R6 2
      118 LOADK                            R8 K10 ["MeshGen"]
      119 LOADK                            R9 K33 ["InputPartNamesTitle"]
      120 NAMECALL                         R6 R6 K12 ["getText"]
      122 CALL                             R6 3 1
      123 SETTABLEKS                       R6 R5 K2 ["label"]
      125 GETUPVAL                         R6 6
      126 SETTABLEKS                       R6 R5 K36 ["initialChecked"]
      128 NEWCLOSURE                       R6 P6
      129 CAPTURE                          UPVAL U6
      130 CAPTURE                          UPVAL U3
      131 CAPTURE                          VAL R0
      132 SETTABLEKS                       R6 R5 K37 ["onCheckedChanged"]
      134 NEWCLOSURE                       R6 P7
      135 CAPTURE                          UPVAL U7
      136 CAPTURE                          UPVAL U3
      137 CAPTURE                          UPVAL U4
      138 CAPTURE                          UPVAL U8
      139 CAPTURE                          VAL R0
      140 SETTABLEKS                       R6 R5 K38 ["onRefreshPressed"]
      142 CALL                             R4 1 -1
      143 FASTCALL                         TABLE_INSERT ; [+2]
      144 GETIMPORT                        R2 K15 [table.insert]
      146 CALL                             R2 -1 0
      147 DUPTABLE                         R2 K43 [{"propertyRows", "canConfirm", "imageSelection"}]
      148 SETTABLEKS                       R1 R2 K40 ["propertyRows"]
      150 GETUPVAL                         R4 7
      151 GETTABLEKS                       R4 R4 K44 ["FFlagAssistantGen3dRequirePromptToGenerate"]
      153 JUMPIFNOT                        R4 ; [+3]
      154 NEWCLOSURE                       R3 P8
      155 CAPTURE                          UPVAL U3
      156 JUMP                             ; [+1]
      157 LOADNIL                          R3
      158 SETTABLEKS                       R3 R2 K41 ["canConfirm"]
      160 GETUPVAL                         R4 7
      161 GETTABLEKS                       R4 R4 K45 ["EngineFeatureAssistantGen3dImagePreview"]
      163 JUMPIFNOT                        R4 ; [+17]
      164 GETUPVAL                         R4 7
      165 GETTABLEKS                       R4 R4 K46 ["FFlagAssistantImageSelectionWizardModePrimitiveGen"]
      167 GETUPVAL                         R5 9
      168 GETTABLEKS                       R5 R5 K47 ["build"]
      170 DUPTABLE                         R6 K53 [{["promptKey"] = "prompt", ["wizardMode"], ["model"], ["modelFlow"] = "procedural"}]
      171 SETTABLEKS                       R4 R6 K49 ["wizardMode"]
      173 GETUPVAL                         R7 7
      174 GETTABLEKS                       R7 R7 K54 ["FStringAssistantMeshGenImageGenModelOverride"]
      176 SETTABLEKS                       R7 R6 K50 ["model"]
      178 CALL                             R5 1 1
      179 MOVE                             R3 R5
      180 JUMP                             ; [+1]
      181 LOADNIL                          R3
      182 SETTABLEKS                       R3 R2 K42 ["imageSelection"]
      184 RETURN                           R2 1

PROTO_35:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantMigratePrimitiveGenTool"]
        3 JUMPIF                           R1 ; [+4]
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 GETTABLEKS                       R1 R0 K1 ["networking"]
       10 GETTABLEKS                       R2 R0 K2 ["environment"]
       12 NEWTABLE                         R3 0 0
       14 LOADN                            R4 0
       15 LOADK                            R7 K3 ["PrimitiveGenTool_generateAsync"]
       16 NEWCLOSURE                       R8 P0
       17 CAPTURE                          VAL R3
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          UPVAL U6
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          UPVAL U7
       25 CAPTURE                          UPVAL U8
       26 CAPTURE                          UPVAL U9
       27 CAPTURE                          UPVAL U10
       28 CAPTURE                          UPVAL U11
       29 NAMECALL                         R5 R1 K4 ["OnHostInvokeAsync"]
       31 CALL                             R5 3 1
       32 LOADK                            R8 K5 ["PrimitiveGenTool_cancelGeneration"]
       33 NEWCLOSURE                       R9 P1
       34 CAPTURE                          VAL R3
       35 NAMECALL                         R6 R1 K4 ["OnHostInvokeAsync"]
       37 CALL                             R6 3 1
       38 LOADK                            R9 K6 ["PrimitiveGenTool_pingAssetDmAsync"]
       39 DUPCLOSURE                       R10 K7 [PROTO_7]
       40 NAMECALL                         R7 R1 K4 ["OnHostInvokeAsync"]
       42 CALL                             R7 3 1
       43 NEWCLOSURE                       R8 P3
       44 CAPTURE                          UPVAL U12
       45 CAPTURE                          UPVAL U0
       46 CAPTURE                          UPVAL U13
       47 CAPTURE                          UPVAL U14
       48 CAPTURE                          UPVAL U15
       49 CAPTURE                          VAL R2
       50 CAPTURE                          UPVAL U16
       51 CAPTURE                          UPVAL U17
       52 CAPTURE                          UPVAL U18
       53 CAPTURE                          UPVAL U6
       54 CAPTURE                          VAL R7
       55 CAPTURE                          UPVAL U10
       56 CAPTURE                          REF R4
       57 CAPTURE                          UPVAL U19
       58 CAPTURE                          UPVAL U20
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R5
       61 CAPTURE                          UPVAL U11
       62 NEWCLOSURE                       R9 P4
       63 CAPTURE                          UPVAL U21
       64 CAPTURE                          VAL R8
       65 CAPTURE                          UPVAL U22
       66 CAPTURE                          UPVAL U6
       67 CAPTURE                          UPVAL U23
       68 LOADNIL                          R10
       69 GETUPVAL                         R11 0
       70 GETTABLEKS                       R11 R11 K8 ["FFlagAssistantSplitToolsAndWidgets"]
       72 JUMPIFNOT                        R11 ; [+32]
       73 GETIMPORT                        R11 K11 [table.concat]
       75 NEWTABLE                         R12 0 12
       77 LOADK                            R13 K12 ["Creates 3D objects built from primitive parts (blocks, spheres, cylinders, wedges) as a ProceduralModel with configurable attributes."]
       78 LOADK                            R14 K13 ["Use this tool when the user wants to:"]
       79 LOADK                            R15 K14 ["- Create or build a 3D object, model, character, creature, vehicle, building, scenery, or any physical thing in the workspace"]
       80 LOADK                            R16 K15 ["- Generate something from a reference image"]
       81 LOADK                            R17 K16 ["- Create an object with tunable parameters (e.g. \"add attributes to control head size, arm length, color\")"]
       82 LOADK                            R18 K17 ["- Build anything described as \"procedural\", \"parametric\", \"configurable\", or \"with attributes\""]
       83 LOADK                            R19 K18 [""]
       84 LOADK                            R20 K19 ["The output is a ProceduralModel: a scripted model whose appearance is controlled by user-editable attributes (like size, color, proportions). The user can tweak these attributes after generation without regenerating."]
       85 LOADK                            R21 K18 [""]
       86 LOADK                            R22 K20 ["The tool automatically inserts the generated model into the workspace. You do not need to run any code afterward."]
       87 LOADK                            R23 K18 [""]
       88 LOADK                            R25 K21 ["CRITICAL: This is a long-running generative tool. Default to calling this tool through the '%*' tool, which runs this tool asynchronously. Handle other tasks while the generation is in-progress, and only call the '%*' tool when you absolutely need the result."]
       89 GETUPVAL                         R27 24
       90 GETTABLEKS                       R27 R27 K22 ["JobRun"]
       92 GETUPVAL                         R28 24
       93 GETTABLEKS                       R28 R28 K23 ["JobWait"]
       95 NAMECALL                         R25 R25 K24 ["format"]
       97 CALL                             R25 3 1
       98 MOVE                             R24 R25
       99 SETLIST                          R12 R13 12 [1]
      101 LOADK                            R13 K25 ["\n"]
      102 CALL                             R11 2 1
      103 MOVE                             R10 R11
      104 JUMP                             ; [+1]
      105 LOADK                            R10 K26 ["Creates 3D objects built from primitive parts (blocks, spheres, cylinders, wedges) as a ProceduralModel with configurable attributes.\nUse this tool when the user wants to:\n- Create or build a 3D object, model, character, creature, vehicle, building, scenery, or any physical thing in the workspace\n- Generate something from a reference image\n- Create an object with tunable parameters (e.g. \"add attributes to control head size, arm length, color\")\n- Build anything described as \"procedural\", \"parametric\", \"configurable\", or \"with attributes\"\n\nThe output is a ProceduralModel: a scripted model whose appearance is controlled by user-editable attributes (like size, color, proportions). The user can tweak these attributes after generation without regenerating.\n\nThe tool automatically inserts the generated model into the workspace. You do not need to run any code afterward.\n"]
      106 GETUPVAL                         R11 25
      107 GETTABLEKS                       R11 R11 K27 ["define"]
      109 CALL                             R11 0 1
      110 GETUPVAL                         R13 24
      111 GETTABLEKS                       R13 R13 K28 ["PrimitiveGen"]
      113 NAMECALL                         R11 R11 K29 ["setName"]
      115 CALL                             R11 2 1
      116 MOVE                             R13 R10
      117 NAMECALL                         R11 R11 K30 ["setDescription"]
      119 CALL                             R11 2 1
      120 LOADK                            R13 K31 ["prompt"]
      121 DUPTABLE                         R14 K36 [{["type"] = "string", ["description"] = "A text description of what to create and what attributes to expose.\nPass the user's own words. If they mention specific configurable properties (e.g. \"head size\", \"arm length\", \"wheel count\"), include those in the prompt so the generated model exposes them as editable attributes.\nIf an image is attached and the user gave no text description, pass an empty string.\nDo NOT describe or interpret the attached image — only pass the user's own words.\n"}]
      122 NAMECALL                         R11 R11 K37 ["addArgument"]
      124 CALL                             R11 3 1
      125 LOADK                            R13 K38 ["attachedImageUri"]
      126 DUPTABLE                         R14 K40 [{["type"] = "string", ["description"] = "The image URI (IMAGEID_<id>) from the user's attached image. Always pass this when the user provides a reference image."}]
      127 NAMECALL                         R11 R11 K41 ["addOptionalArgument"]
      129 CALL                             R11 3 1
      130 LOADK                            R13 K42 ["partNames"]
      131 DUPTABLE                         R14 K43 [{["type"] = "string", ["description"]}]
      132 GETUPVAL                         R16 0
      133 GETTABLEKS                       R16 R16 K44 ["FFlagAssistantGen3dAutoSegmentation"]
      135 JUMPIFNOT                        R16 ; [+2]
      136 LOADK                            R15 K45 ["List of part names that define the structure of the generated model. Accepts a comma-separated string (e.g. 'body, left wheel, right wheel, door') or a JSON array of strings (e.g. ['body', 'left wheel', 'right wheel', 'door']). Required when segmentation='explicit'. Maximum 8 parts (excess will be truncated)."]
      137 JUMP                             ; [+1]
      138 LOADK                            R15 K46 ["List of part names that define the structure of the generated model. Accepts a comma-separated string (e.g. 'body, left wheel, right wheel, door') or a JSON array of strings. When provided, the model will be built around these named parts."]
      139 SETTABLEKS                       R15 R14 K34 ["description"]
      141 NAMECALL                         R11 R11 K41 ["addOptionalArgument"]
      143 CALL                             R11 3 1
      144 GETUPVAL                         R12 0
      145 GETTABLEKS                       R12 R12 K44 ["FFlagAssistantGen3dAutoSegmentation"]
      147 JUMPIFNOT                        R12 ; [+10]
      148 LOADK                            R14 K47 ["segmentation"]
      149 DUPTABLE                         R15 K50 [{["type"] = "string", ["enum"], ["description"] = "Controls how the model is broken into parts. Pick based on the user's wording:\n- Omit (or \"auto\"): user did NOT mention parts/segmentation (e.g. \"generate a car\"). The tool will derive parts automatically via an internal LLM call.\n- \"none\": user explicitly asked for no parts / a single piece (e.g. \"generate a car with no parts\", \"as one mesh\", \"single piece\").\n- \"explicit\": user named specific parts (e.g. \"a car with body and wheels\"). You MUST also pass partNames with the user's listed parts (max 8).\n"}]
      150 GETUPVAL                         R16 26
      151 GETTABLEKS                       R16 R16 K51 ["SegmentationArgValues"]
      153 SETTABLEKS                       R16 R15 K48 ["enum"]
      155 NAMECALL                         R12 R11 K41 ["addOptionalArgument"]
      157 CALL                             R12 3 0
      158 MOVE                             R14 R9
      159 NAMECALL                         R12 R11 K52 ["setHandler"]
      161 CALL                             R12 2 1
      162 DUPTABLE                         R14 K60 [{["title"] = "Primitive Generation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      163 NAMECALL                         R12 R12 K61 ["setAnnotations"]
      165 CALL                             R12 2 1
      166 NAMECALL                         R12 R12 K62 ["build"]
      168 CALL                             R12 1 1
      169 LOADK                            R13 K18 [""]
      170 LOADNIL                          R14
      171 LOADB                            R15 1
      172 NEWCLOSURE                       R16 P5
      173 CAPTURE                          REF R13
      174 CAPTURE                          REF R15
      175 CAPTURE                          UPVAL U13
      176 DUPCLOSURE                       R17 K63 [PROTO_22]
      177 CAPTURE                          UPVAL U27
      178 CAPTURE                          UPVAL U0
      179 DUPTABLE                         R18 K68 [{"command", "getDescription", "mapToToolCall", "getInputRequestArguments"}]
      180 GETUPVAL                         R19 24
      181 GETTABLEKS                       R19 R19 K28 ["PrimitiveGen"]
      183 SETTABLEKS                       R19 R18 K64 ["command"]
      185 DUPCLOSURE                       R19 K69 [PROTO_23]
      186 SETTABLEKS                       R19 R18 K65 ["getDescription"]
      188 NEWCLOSURE                       R19 P8
      189 CAPTURE                          REF R13
      190 CAPTURE                          REF R14
      191 CAPTURE                          UPVAL U24
      192 SETTABLEKS                       R19 R18 K66 ["mapToToolCall"]
      194 GETUPVAL                         R20 0
      195 GETTABLEKS                       R20 R20 K70 ["FFlagPrimGenSchemaSelector"]
      197 JUMPIFNOT                        R20 ; [+12]
      198 NEWCLOSURE                       R19 P9
      199 CAPTURE                          VAL R16
      200 CAPTURE                          UPVAL U28
      201 CAPTURE                          UPVAL U19
      202 CAPTURE                          REF R13
      203 CAPTURE                          REF R14
      204 CAPTURE                          UPVAL U20
      205 CAPTURE                          REF R15
      206 CAPTURE                          UPVAL U0
      207 CAPTURE                          VAL R2
      208 CAPTURE                          UPVAL U27
      209 JUMP                             ; [+1]
      210 LOADNIL                          R19
      211 SETTABLEKS                       R19 R18 K67 ["getInputRequestArguments"]
      213 DUPTABLE                         R19 K75 [{"definition", "slashCommands", "getPreExecuteWarning", "toolCallOptions"}]
      214 SETTABLEKS                       R12 R19 K71 ["definition"]
      216 NEWTABLE                         R20 0 1
      218 MOVE                             R21 R18
      219 SETLIST                          R20 R21 1 [1]
      221 SETTABLEKS                       R20 R19 K72 ["slashCommands"]
      223 DUPCLOSURE                       R20 K76 [PROTO_35]
      224 SETTABLEKS                       R20 R19 K73 ["getPreExecuteWarning"]
      226 DUPTABLE                         R20 K79 [{["resetTimeoutOnProgress"] = True}]
      227 SETTABLEKS                       R20 R19 K74 ["toolCallOptions"]
      229 CLOSEUPVALS                      R4
      230 RETURN                           R19 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETIMPORT                        R3 K1 [script]
       17 GETTABLEKS                       R3 R3 K10 ["Backend"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K11 ["Features"]
       24 GETTABLEKS                       R4 R4 K12 ["PrimitiveGen"]
       26 GETTABLEKS                       R4 R4 K13 ["PrimitiveGenTool"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R0 K14 ["Parent"]
       33 GETTABLEKS                       R5 R5 K15 ["Dash"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R0 K16 ["Flags"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R0 K17 ["Util"]
       45 GETTABLEKS                       R7 R7 K18 ["ImageContentStore"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R8 R0 K19 ["Components"]
       52 GETTABLEKS                       R8 R8 K20 ["ImageSelection"]
       54 GETTABLEKS                       R8 R8 K21 ["ImageSelectionConfigBuilder"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K9 [require]
       59 GETTABLEKS                       R9 R0 K17 ["Util"]
       61 GETTABLEKS                       R9 R9 K22 ["InstanceChannel"]
       63 GETTABLEKS                       R9 R9 K22 ["InstanceChannel"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K9 [require]
       68 GETTABLEKS                       R10 R0 K17 ["Util"]
       70 GETTABLEKS                       R10 R10 K23 ["MeshGen"]
       72 GETTABLEKS                       R10 R10 K24 ["MeshGenSchemaSelector"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K9 [require]
       77 GETIMPORT                        R11 K1 [script]
       79 GETTABLEKS                       R11 R11 K25 ["ModelBuilder"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K9 [require]
       84 GETTABLEKS                       R12 R0 K14 ["Parent"]
       86 GETTABLEKS                       R12 R12 K26 ["ModelContextProtocol"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K9 [require]
       91 GETTABLEKS                       R13 R0 K17 ["Util"]
       93 GETTABLEKS                       R13 R13 K12 ["PrimitiveGen"]
       95 GETTABLEKS                       R13 R13 K27 ["PrimitiveGenChannel"]
       97 CALL                             R12 1 1
       98 GETIMPORT                        R13 K9 [require]
      100 GETTABLEKS                       R14 R0 K17 ["Util"]
      102 GETTABLEKS                       R14 R14 K12 ["PrimitiveGen"]
      104 GETTABLEKS                       R14 R14 K28 ["PrimitiveGenTypes"]
      106 CALL                             R13 1 1
      107 GETIMPORT                        R14 K9 [require]
      109 GETTABLEKS                       R15 R0 K11 ["Features"]
      111 GETTABLEKS                       R15 R15 K29 ["Gen3dUtils"]
      113 GETTABLEKS                       R15 R15 K30 ["PromptTemplate"]
      115 CALL                             R14 1 1
      116 GETIMPORT                        R15 K9 [require]
      118 GETTABLEKS                       R16 R0 K19 ["Components"]
      120 GETTABLEKS                       R16 R16 K31 ["PropertyRows"]
      122 CALL                             R15 1 1
      123 GETIMPORT                        R16 K9 [require]
      125 GETTABLEKS                       R17 R0 K11 ["Features"]
      127 GETTABLEKS                       R17 R17 K29 ["Gen3dUtils"]
      129 GETTABLEKS                       R17 R17 K32 ["SegmentationEnums"]
      131 CALL                             R16 1 1
      132 GETIMPORT                        R17 K9 [require]
      134 GETTABLEKS                       R18 R0 K11 ["Features"]
      136 GETTABLEKS                       R18 R18 K29 ["Gen3dUtils"]
      138 GETTABLEKS                       R18 R18 K33 ["SingleImageGenerator"]
      140 CALL                             R17 1 1
      141 GETIMPORT                        R18 K9 [require]
      143 GETTABLEKS                       R19 R0 K34 ["Tools"]
      145 GETTABLEKS                       R19 R19 K35 ["ToolTypes"]
      147 CALL                             R18 1 1
      148 GETIMPORT                        R19 K9 [require]
      150 GETTABLEKS                       R20 R0 K17 ["Util"]
      152 GETTABLEKS                       R20 R20 K36 ["ToolUtils"]
      154 CALL                             R19 1 1
      155 GETIMPORT                        R20 K9 [require]
      157 GETTABLEKS                       R21 R0 K37 ["Resources"]
      159 GETTABLEKS                       R21 R21 K38 ["Localization"]
      161 GETTABLEKS                       R21 R21 K39 ["Translator"]
      163 CALL                             R20 1 1
      164 GETIMPORT                        R21 K9 [require]
      166 GETTABLEKS                       R22 R0 K40 ["Types"]
      168 CALL                             R21 1 1
      169 GETIMPORT                        R22 K9 [require]
      171 GETTABLEKS                       R23 R0 K17 ["Util"]
      173 GETTABLEKS                       R23 R23 K41 ["VersionResolver"]
      175 CALL                             R22 1 1
      176 GETTABLEKS                       R23 R11 K17 ["Util"]
      178 GETTABLEKS                       R23 R23 K42 ["ToolBuilder"]
      180 GETTABLEKS                       R24 R11 K17 ["Util"]
      182 GETTABLEKS                       R24 R24 K43 ["ToolResult"]
      184 GETTABLEKS                       R25 R18 K44 ["ToolNames"]
      186 GETTABLEKS                       R26 R13 K45 ["getLinkTag"]
      188 GETTABLEKS                       R27 R2 K46 ["ErrorType"]
      190 GETTABLEKS                       R28 R2 K47 ["ResultStatus"]
      192 GETTABLEKS                       R29 R2 K48 ["GenerationStages"]
      194 GETTABLEKS                       R30 R2 K49 ["raiseGenerationError"]
      196 GETTABLEKS                       R31 R2 K50 ["asGenerationError"]
      198 GETTABLEKS                       R32 R2 K51 ["getAssetDmUnreachableMessage"]
      200 GETTABLEKS                       R33 R2 K52 ["getExecutionErrorCode"]
      202 DUPCLOSURE                       R34 K53 [PROTO_0]
      203 CAPTURE                          VAL R6
      204 DUPCLOSURE                       R35 K54 [PROTO_36]
      205 CAPTURE                          VAL R5
      206 CAPTURE                          VAL R3
      207 CAPTURE                          VAL R8
      208 CAPTURE                          VAL R12
      209 CAPTURE                          VAL R29
      210 CAPTURE                          VAL R2
      211 CAPTURE                          VAL R27
      212 CAPTURE                          VAL R28
      213 CAPTURE                          VAL R10
      214 CAPTURE                          VAL R33
      215 CAPTURE                          VAL R32
      216 CAPTURE                          VAL R26
      217 CAPTURE                          VAL R1
      218 CAPTURE                          VAL R9
      219 CAPTURE                          VAL R14
      220 CAPTURE                          VAL R17
      221 CAPTURE                          VAL R4
      222 CAPTURE                          VAL R30
      223 CAPTURE                          VAL R22
      224 CAPTURE                          VAL R20
      225 CAPTURE                          VAL R6
      226 CAPTURE                          VAL R19
      227 CAPTURE                          VAL R31
      228 CAPTURE                          VAL R24
      229 CAPTURE                          VAL R25
      230 CAPTURE                          VAL R23
      231 CAPTURE                          VAL R16
      232 CAPTURE                          VAL R7
      233 CAPTURE                          VAL R15
      234 RETURN                           R35 1
