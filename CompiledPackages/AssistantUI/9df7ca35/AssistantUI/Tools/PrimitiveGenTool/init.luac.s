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
        0 GETTABLEKS                       R1 R0 K0 ["toolUseId"]
        2 GETTABLEKS                       R3 R0 K2 ["prompt"]
        4 ORK                              R2 R3 K1 [""]
        5 GETUPVAL                         R3 0
        6 LOADNIL                          R4
        7 SETTABLE                         R4 R3 R1
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R1
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K3 ["getOrCreate"]
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K4 ["Scope"]
       17 MOVE                             R6 R1
       18 CALL                             R4 2 1
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R7 R7 K5 ["Field"]
       22 GETTABLEKS                       R7 R7 K6 ["Stage"]
       24 GETUPVAL                         R8 3
       25 GETTABLEKS                       R8 R8 K7 ["Submitting"]
       27 NAMECALL                         R5 R4 K8 ["Set"]
       29 CALL                             R5 3 0
       30 NEWCLOSURE                       R5 P1
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          VAL R1
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          UPVAL U2
       35 GETUPVAL                         R6 4
       36 GETTABLEKS                       R6 R6 K9 ["submitGenerationJob"]
       38 MOVE                             R7 R2
       39 GETTABLEKS                       R8 R0 K10 ["imageContent"]
       41 GETTABLEKS                       R9 R0 K11 ["partNames"]
       43 CALL                             R6 3 1
       44 GETTABLEKS                       R7 R6 K12 ["generationId"]
       46 JUMPIFNOTEQKS                    R7 K1 [""] ; [+31]
       48 GETUPVAL                         R7 0
       49 LOADNIL                          R8
       50 SETTABLE                         R8 R7 R1
       51 GETUPVAL                         R7 1
       52 GETTABLEKS                       R7 R7 K13 ["get"]
       54 GETUPVAL                         R8 2
       55 GETTABLEKS                       R8 R8 K4 ["Scope"]
       57 MOVE                             R9 R1
       58 CALL                             R7 2 1
       59 JUMPIFNOT                        R7 ; [+3]
       60 NAMECALL                         R8 R7 K14 ["Destroy"]
       62 CALL                             R8 1 0
       63 DUPTABLE                         R7 K19 [{["success"] = False, ["errorType"], ["errorMessage"]}]
       64 GETTABLEKS                       R8 R6 K17 ["errorType"]
       66 JUMPIF                           R8 ; [+3]
       67 GETUPVAL                         R8 5
       68 GETTABLEKS                       R8 R8 K20 ["General"]
       70 SETTABLEKS                       R8 R7 K17 ["errorType"]
       72 GETTABLEKS                       R9 R6 K18 ["errorMessage"]
       74 ORK                              R8 R9 K21 ["Unknown error"]
       75 SETTABLEKS                       R8 R7 K18 ["errorMessage"]
       77 RETURN                           R7 1
       78 GETTABLEKS                       R7 R6 K12 ["generationId"]
       80 NEWCLOSURE                       R9 P2
       81 CAPTURE                          UPVAL U4
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R4
       85 CAPTURE                          UPVAL U2
       86 FASTPCALL                        pcall 1 ; [+2]
       87 GETIMPORT                        R8 K23 [pcall]
       89 CALL                             R8 1 2
       90 JUMPIF                           R8 ; [+39]
       91 GETUPVAL                         R10 0
       92 LOADNIL                          R11
       93 SETTABLE                         R11 R10 R1
       94 GETUPVAL                         R10 1
       95 GETTABLEKS                       R10 R10 K13 ["get"]
       97 GETUPVAL                         R11 2
       98 GETTABLEKS                       R11 R11 K4 ["Scope"]
      100 MOVE                             R12 R1
      101 CALL                             R10 2 1
      102 JUMPIFNOT                        R10 ; [+3]
      103 NAMECALL                         R11 R10 K14 ["Destroy"]
      105 CALL                             R11 1 0
      106 DUPTABLE                         R10 K24 [{["success"] = False, ["generationId"], ["errorType"], ["errorMessage"]}]
      107 SETTABLEKS                       R7 R10 K12 ["generationId"]
      109 GETUPVAL                         R12 6
      110 GETTABLEKS                       R12 R12 K25 ["FFlagPrimGenBetterErrorType"]
      112 JUMPIFNOT                        R12 ; [+4]
      113 GETUPVAL                         R11 5
      114 GETTABLEKS                       R11 R11 K26 ["PollFailed"]
      116 JUMP                             ; [+3]
      117 GETUPVAL                         R11 5
      118 GETTABLEKS                       R11 R11 K20 ["General"]
      120 SETTABLEKS                       R11 R10 K17 ["errorType"]
      122 FASTCALL1                        TOSTRING R9 ; [+3]
      123 MOVE                             R12 R9
      124 GETIMPORT                        R11 K28 [tostring]
      126 CALL                             R11 1 1
      127 SETTABLEKS                       R11 R10 K18 ["errorMessage"]
      129 RETURN                           R10 1
      130 GETTABLEKS                       R10 R9 K29 ["status"]
      132 GETUPVAL                         R11 7
      133 GETTABLEKS                       R11 R11 K30 ["Cancelled"]
      135 JUMPIFNOTEQ                      R10 R11 ; [+20]
      137 GETUPVAL                         R10 0
      138 LOADNIL                          R11
      139 SETTABLE                         R11 R10 R1
      140 GETUPVAL                         R10 1
      141 GETTABLEKS                       R10 R10 K13 ["get"]
      143 GETUPVAL                         R11 2
      144 GETTABLEKS                       R11 R11 K4 ["Scope"]
      146 MOVE                             R12 R1
      147 CALL                             R10 2 1
      148 JUMPIFNOT                        R10 ; [+3]
      149 NAMECALL                         R11 R10 K14 ["Destroy"]
      151 CALL                             R11 1 0
      152 DUPTABLE                         R10 K33 [{["success"] = False, ["cancelled"] = True, ["generationId"]}]
      153 SETTABLEKS                       R7 R10 K12 ["generationId"]
      155 RETURN                           R10 1
      156 GETTABLEKS                       R10 R9 K29 ["status"]
      158 GETUPVAL                         R11 7
      159 GETTABLEKS                       R11 R11 K34 ["Failed"]
      161 JUMPIFNOTEQ                      R10 R11 ; [+36]
      163 GETUPVAL                         R10 0
      164 LOADNIL                          R11
      165 SETTABLE                         R11 R10 R1
      166 GETUPVAL                         R10 1
      167 GETTABLEKS                       R10 R10 K13 ["get"]
      169 GETUPVAL                         R11 2
      170 GETTABLEKS                       R11 R11 K4 ["Scope"]
      172 MOVE                             R12 R1
      173 CALL                             R10 2 1
      174 JUMPIFNOT                        R10 ; [+3]
      175 NAMECALL                         R11 R10 K14 ["Destroy"]
      177 CALL                             R11 1 0
      178 DUPTABLE                         R10 K24 [{["success"] = False, ["generationId"], ["errorType"], ["errorMessage"]}]
      179 SETTABLEKS                       R7 R10 K12 ["generationId"]
      181 GETUPVAL                         R12 6
      182 GETTABLEKS                       R12 R12 K25 ["FFlagPrimGenBetterErrorType"]
      184 JUMPIFNOT                        R12 ; [+3]
      185 GETTABLEKS                       R11 R9 K17 ["errorType"]
      187 JUMP                             ; [+3]
      188 GETUPVAL                         R11 5
      189 GETTABLEKS                       R11 R11 K20 ["General"]
      191 SETTABLEKS                       R11 R10 K17 ["errorType"]
      193 GETTABLEKS                       R11 R9 K35 ["errorText"]
      195 SETTABLEKS                       R11 R10 K18 ["errorMessage"]
      197 RETURN                           R10 1
      198 GETUPVAL                         R12 2
      199 GETTABLEKS                       R12 R12 K5 ["Field"]
      201 GETTABLEKS                       R12 R12 K6 ["Stage"]
      203 GETUPVAL                         R13 3
      204 GETTABLEKS                       R13 R13 K36 ["Inserting"]
      206 NAMECALL                         R10 R4 K8 ["Set"]
      208 CALL                             R10 3 0
      209 GETUPVAL                         R10 8
      210 GETTABLEKS                       R10 R10 K37 ["addWorkspaceModel"]
      212 DUPTABLE                         R11 K40 [{"code", "generationId", "dependencies"}]
      213 GETTABLEKS                       R12 R9 K41 ["luauCode"]
      215 SETTABLEKS                       R12 R11 K38 ["code"]
      217 SETTABLEKS                       R7 R11 K12 ["generationId"]
      219 GETTABLEKS                       R12 R9 K42 ["resolvedDependencies"]
      221 SETTABLEKS                       R12 R11 K39 ["dependencies"]
      223 CALL                             R10 1 1
      224 GETTABLEKS                       R11 R10 K15 ["success"]
      226 JUMPIF                           R11 ; [+44]
      227 GETUPVAL                         R11 9
      228 MOVE                             R12 R10
      229 CALL                             R11 1 1
      230 LOADK                            R12 K43 ["Execute generated code failed with error: %*, generationId=%*"]
      231 GETTABLEKS                       R14 R10 K44 ["error"]
      233 MOVE                             R15 R7
      234 NAMECALL                         R12 R12 K45 ["format"]
      236 CALL                             R12 3 1
      237 GETUPVAL                         R13 5
      238 GETTABLEKS                       R13 R13 K46 ["DmIsUnreachable"]
      240 JUMPIFNOTEQ                      R11 R13 ; [+7]
      242 GETUPVAL                         R13 10
      243 GETTABLEKS                       R14 R10 K44 ["error"]
      245 MOVE                             R15 R12
      246 CALL                             R13 2 1
      247 MOVE                             R12 R13
      248 GETUPVAL                         R13 0
      249 LOADNIL                          R14
      250 SETTABLE                         R14 R13 R1
      251 GETUPVAL                         R13 1
      252 GETTABLEKS                       R13 R13 K13 ["get"]
      254 GETUPVAL                         R14 2
      255 GETTABLEKS                       R14 R14 K4 ["Scope"]
      257 MOVE                             R15 R1
      258 CALL                             R13 2 1
      259 JUMPIFNOT                        R13 ; [+3]
      260 NAMECALL                         R14 R13 K14 ["Destroy"]
      262 CALL                             R14 1 0
      263 DUPTABLE                         R13 K24 [{["success"] = False, ["generationId"], ["errorType"], ["errorMessage"]}]
      264 SETTABLEKS                       R7 R13 K12 ["generationId"]
      266 SETTABLEKS                       R11 R13 K17 ["errorType"]
      268 SETTABLEKS                       R12 R13 K18 ["errorMessage"]
      270 RETURN                           R13 1
      271 GETTABLEKS                       R12 R10 K48 ["resultName"]
      273 ORK                              R11 R12 K47 ["ProceduralObject"]
      274 GETTABLEKS                       R12 R10 K49 ["tag"]
      276 JUMPIF                           R12 ; [+3]
      277 GETUPVAL                         R12 11
      278 MOVE                             R13 R7
      279 CALL                             R12 1 1
      280 GETUPVAL                         R13 4
      281 GETTABLEKS                       R13 R13 K50 ["streamPreviewImagesFromS3"]
      283 MOVE                             R14 R4
      284 GETTABLEKS                       R15 R9 K51 ["scriptPreviewS3Urls"]
      286 CALL                             R13 2 1
      287 JUMPIFNOT                        R13 ; [+4]
      288 GETUPVAL                         R14 0
      289 LOADNIL                          R15
      290 SETTABLE                         R15 R14 R1
      291 JUMP                             ; [+15]
      292 GETUPVAL                         R14 0
      293 LOADNIL                          R15
      294 SETTABLE                         R15 R14 R1
      295 GETUPVAL                         R14 1
      296 GETTABLEKS                       R14 R14 K13 ["get"]
      298 GETUPVAL                         R15 2
      299 GETTABLEKS                       R15 R15 K4 ["Scope"]
      301 MOVE                             R16 R1
      302 CALL                             R14 2 1
      303 JUMPIFNOT                        R14 ; [+3]
      304 NAMECALL                         R15 R14 K14 ["Destroy"]
      306 CALL                             R15 1 0
      307 DUPTABLE                         R14 K52 [{["success"] = True, ["generationId"], ["resultName"], ["tag"]}]
      308 SETTABLEKS                       R7 R14 K12 ["generationId"]
      310 SETTABLEKS                       R11 R14 K48 ["resultName"]
      312 SETTABLEKS                       R12 R14 K49 ["tag"]
      314 RETURN                           R14 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R1 K0 ["toolUseId"]
        3 LOADB                            R4 1
        4 SETTABLE                         R4 R2 R3
        5 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["resolveTargetAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["InvokeAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K1 [{"toolUseId"}]
        3 GETUPVAL                         R4 2
        4 SETTABLEKS                       R4 R3 K0 ["toolUseId"]
        6 NAMECALL                         R0 R0 K2 ["InvokeAsync"]
        8 CALL                             R0 3 0
        9 RETURN                           R0 0

PROTO_15:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 FASTPCALL                        pcall 1 ; [+2]
        5 GETIMPORT                        R0 K1 [pcall]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["InvokeAsync"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_17:
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
       38 JUMP                             ; [+7]
       39 GETUPVAL                         R6 2
       40 GETTABLEKS                       R6 R6 K10 ["parsePartNames"]
       42 GETTABLEKS                       R7 R0 K8 ["partNames"]
       44 CALL                             R6 1 1
       45 MOVE                             R5 R6
       46 GETTABLEKS                       R6 R0 K11 ["hintImage"]
       48 GETUPVAL                         R7 1
       49 GETTABLEKS                       R7 R7 K12 ["FFlagAssistantMcpImageGenShortcut"]
       51 JUMPIFNOT                        R7 ; [+62]
       52 GETUPVAL                         R7 1
       53 GETTABLEKS                       R7 R7 K13 ["EngineFeatureAssistantGen3dImagePreview"]
       55 JUMPIFNOT                        R7 ; [+58]
       56 JUMPIFNOTEQKNIL                  R6 ; [+57]
       58 GETTABLEKS                       R7 R0 K14 ["attachedImageUri"]
       60 JUMPIFNOTEQKNIL                  R7 ; [+53]
       62 LENGTH                           R7 R3
       63 LOADN                            R8 0
       64 JUMPIFNOTLT                      R8 R7 ; [+49]
       66 GETUPVAL                         R8 1
       67 GETTABLEKS                       R8 R8 K15 ["FFlagPrimGenImageGenPromptTemplateEnabled"]
       69 JUMPIFNOT                        R8 ; [+11]
       70 GETUPVAL                         R7 3
       71 GETTABLEKS                       R7 R7 K16 ["PromptTemplate"]
       73 GETTABLEKS                       R7 R7 K17 ["apply"]
       75 GETUPVAL                         R8 1
       76 GETTABLEKS                       R8 R8 K18 ["FStringPrimGenImageGenPromptTemplate"]
       78 MOVE                             R9 R3
       79 CALL                             R7 2 1
       80 JUMP                             ; [+1]
       81 MOVE                             R7 R3
       82 GETUPVAL                         R8 4
       83 GETTABLEKS                       R8 R8 K19 ["generateAsync"]
       85 DUPTABLE                         R9 K22 [{"textPrompt", "model"}]
       86 SETTABLEKS                       R7 R9 K20 ["textPrompt"]
       88 GETUPVAL                         R10 1
       89 GETTABLEKS                       R10 R10 K23 ["FStringAssistantMeshGenImageGenModelOverride"]
       91 SETTABLEKS                       R10 R9 K21 ["model"]
       93 CALL                             R8 1 1
       94 GETTABLEKS                       R9 R8 K24 ["imageContent"]
       96 JUMPIFNOT                        R9 ; [+11]
       97 GETTABLEKS                       R6 R8 K24 ["imageContent"]
       99 GETUPVAL                         R9 1
      100 GETTABLEKS                       R9 R9 K25 ["FFlagAssistantIncorrectAttachPrimGenImageToInput"]
      102 JUMPIF                           R9 ; [+11]
      103 GETTABLEKS                       R9 R8 K24 ["imageContent"]
      105 SETTABLEKS                       R9 R0 K11 ["hintImage"]
      107 JUMP                             ; [+6]
      108 GETIMPORT                        R9 K27 [warn]
      110 LOADK                            R10 K28 ["[PrimitiveGen] Single-image generation failed, continuing text-only:"]
      111 GETTABLEKS                       R11 R8 K29 ["errorMessage"]
      113 CALL                             R9 2 0
      114 GETUPVAL                         R7 1
      115 GETTABLEKS                       R7 R7 K30 ["FFlagAssistantGen3DTelemetryV2"]
      117 LENGTH                           R9 R3
      118 LOADN                            R10 0
      119 JUMPIFLT                         R10 R9 ; [+2]
      121 LOADB                            R8 0 +1
      122 LOADB                            R8 1
      123 LOADB                            R9 1
      124 GETTABLEKS                       R10 R0 K14 ["attachedImageUri"]
      126 JUMPIFNOTEQKNIL                  R10 ; [+5]
      128 JUMPIFNOTEQKNIL                  R6 ; [+2]
      130 LOADB                            R9 0 +1
      131 LOADB                            R9 1
      132 DUPTABLE                         R10 K38 [{"requestId", "conversationId", "toolId", "prompt", "hasImage", "modelFlow", "inputFormat", "segmentationEnabled", "finalParts"}]
      133 JUMPIFNOT                        R1 ; [+3]
      134 GETTABLEKS                       R11 R1 K39 ["messageGuid"]
      136 JUMPIF                           R11 ; [+1]
      137 LOADK                            R11 K0 [""]
      138 SETTABLEKS                       R11 R10 K31 ["requestId"]
      140 JUMPIFNOT                        R1 ; [+3]
      141 GETTABLEKS                       R11 R1 K40 ["sessionId"]
      143 JUMPIF                           R11 ; [+1]
      144 LOADK                            R11 K0 [""]
      145 SETTABLEKS                       R11 R10 K32 ["conversationId"]
      147 MOVE                             R11 R1
      148 JUMPIFNOT                        R11 ; [+2]
      149 GETTABLEKS                       R11 R1 K2 ["toolId"]
      151 SETTABLEKS                       R11 R10 K2 ["toolId"]
      153 SETTABLEKS                       R3 R10 K1 ["prompt"]
      155 SETTABLEKS                       R9 R10 K33 ["hasImage"]
      157 JUMPIFNOT                        R7 ; [+2]
      158 LOADK                            R11 K41 ["procedural"]
      159 JUMP                             ; [+1]
      160 LOADNIL                          R11
      161 SETTABLEKS                       R11 R10 K34 ["modelFlow"]
      163 JUMPIF                           R7 ; [+2]
      164 LOADNIL                          R11
      165 JUMP                             ; [+8]
      166 JUMPIFNOT                        R8 ; [+3]
      167 JUMPIFNOT                        R9 ; [+2]
      168 LOADK                            R11 K42 ["text+image"]
      169 JUMP                             ; [+4]
      170 JUMPIFNOT                        R9 ; [+2]
      171 LOADK                            R11 K43 ["image"]
      172 JUMP                             ; [+1]
      173 LOADK                            R11 K44 ["text"]
      174 SETTABLEKS                       R11 R10 K35 ["inputFormat"]
      176 JUMPIFNOT                        R7 ; [+10]
      177 LOADB                            R11 0
      178 JUMPIFEQKNIL                     R5 ; [+9]
      180 LENGTH                           R12 R5
      181 LOADN                            R13 0
      182 JUMPIFLT                         R13 R12 ; [+2]
      184 LOADB                            R11 0 +1
      185 LOADB                            R11 1
      186 JUMP                             ; [+1]
      187 LOADNIL                          R11
      188 SETTABLEKS                       R11 R10 K36 ["segmentationEnabled"]
      190 JUMPIFNOT                        R7 ; [+2]
      191 MOVE                             R11 R5
      192 JUMP                             ; [+1]
      193 LOADNIL                          R11
      194 SETTABLEKS                       R11 R10 K37 ["finalParts"]
      196 GETUPVAL                         R11 5
      197 GETTABLEKS                       R11 R11 K45 ["EventLogger"]
      199 GETTABLEKS                       R11 R11 K46 ["logPrimitiveGen"]
      201 NEWCLOSURE                       R12 P0
      202 CAPTURE                          VAL R11
      203 CAPTURE                          UPVAL U6
      204 CAPTURE                          VAL R10
      205 CAPTURE                          VAL R3
      206 NEWCLOSURE                       R13 P1
      207 CAPTURE                          VAL R11
      208 CAPTURE                          UPVAL U6
      209 CAPTURE                          VAL R10
      210 CAPTURE                          VAL R3
      211 CAPTURE                          UPVAL U7
      212 GETUPVAL                         R14 1
      213 GETTABLEKS                       R14 R14 K47 ["FFlagAssistantVersionMismatchWarning"]
      215 JUMPIFNOT                        R14 ; [+28]
      216 GETUPVAL                         R14 1
      217 GETTABLEKS                       R14 R14 K48 ["FFlagPrimGenVersionMismatchError"]
      219 JUMPIFNOT                        R14 ; [+24]
      220 GETUPVAL                         R14 8
      221 GETTABLEKS                       R14 R14 K49 ["getVersionMismatch"]
      223 CALL                             R14 0 1
      224 JUMPIFNOT                        R14 ; [+19]
      225 GETUPVAL                         R14 9
      226 GETTABLEKS                       R14 R14 K50 ["PluginVersionMismatch"]
      228 MOVE                             R15 R11
      229 GETUPVAL                         R16 6
      230 GETTABLEKS                       R16 R16 K51 ["join"]
      232 MOVE                             R17 R10
      233 DUPTABLE                         R18 K58 [{["generationId"] = , ["success"] = False, ["errorMessage"] = "The Assistant plugin just got new patch, please restart RobloxStudio.", ["errorCode"], ["prompt"]}]
      234 SETTABLEKS                       R14 R18 K57 ["errorCode"]
      236 SETTABLEKS                       R3 R18 K1 ["prompt"]
      238 CALL                             R16 2 -1
      239 CALL                             R15 -1 0
      240 GETUPVAL                         R15 7
      241 MOVE                             R16 R14
      242 LOADK                            R17 K56 ["The Assistant plugin just got new patch, please restart RobloxStudio."]
      243 CALL                             R15 2 1
      244 NEWCLOSURE                       R15 P2
      245 CAPTURE                          UPVAL U10
      246 CAPTURE                          UPVAL U11
      247 FASTPCALL                        pcall 1 ; [+2]
      248 GETIMPORT                        R14 K60 [pcall]
      250 CALL                             R14 1 2
      251 JUMPIF                           R14 ; [+30]
      252 GETUPVAL                         R16 9
      253 GETTABLEKS                       R16 R16 K61 ["DmHealthChecking"]
      255 GETUPVAL                         R17 12
      256 FASTCALL1                        TOSTRING R15 ; [+3]
      257 MOVE                             R19 R15
      258 GETIMPORT                        R18 K63 [tostring]
      260 CALL                             R18 1 1
      261 CALL                             R17 1 2
      262 MOVE                             R19 R11
      263 GETUPVAL                         R20 6
      264 GETTABLEKS                       R20 R20 K51 ["join"]
      266 MOVE                             R21 R10
      267 DUPTABLE                         R22 K64 [{["generationId"], ["success"] = False, ["errorMessage"], ["errorCode"], ["prompt"]}]
      268 SETTABLEKS                       R18 R22 K52 ["generationId"]
      270 SETTABLEKS                       R17 R22 K29 ["errorMessage"]
      272 SETTABLEKS                       R16 R22 K57 ["errorCode"]
      274 SETTABLEKS                       R3 R22 K1 ["prompt"]
      276 CALL                             R20 2 -1
      277 CALL                             R19 -1 0
      278 GETUPVAL                         R19 7
      279 MOVE                             R20 R16
      280 MOVE                             R21 R17
      281 CALL                             R19 2 1
      282 GETUPVAL                         R16 1
      283 GETTABLEKS                       R16 R16 K48 ["FFlagPrimGenVersionMismatchError"]
      285 JUMPIFNOT                        R16 ; [+47]
      286 NEWCLOSURE                       R17 P3
      287 CAPTURE                          UPVAL U13
      288 CAPTURE                          VAL R15
      289 FASTPCALL                        pcall 1 ; [+2]
      290 GETIMPORT                        R16 K60 [pcall]
      292 CALL                             R16 1 2
      293 JUMPIFNOT                        R16 ; [+3]
      294 GETTABLEKS                       R18 R17 K54 ["success"]
      296 JUMPIF                           R18 ; [+36]
      297 JUMPIFNOT                        R16 ; [+4]
      298 GETTABLEKS                       R19 R17 K66 ["error"]
      300 ORK                              R18 R19 K65 ["Unknown error"]
      301 JUMP                             ; [+5]
      302 FASTCALL1                        TOSTRING R17 ; [+3]
      303 MOVE                             R19 R17
      304 GETIMPORT                        R18 K63 [tostring]
      306 CALL                             R18 1 1
      307 GETUPVAL                         R19 9
      308 GETTABLEKS                       R19 R19 K61 ["DmHealthChecking"]
      310 GETUPVAL                         R20 12
      311 MOVE                             R21 R18
      312 CALL                             R20 1 2
      313 MOVE                             R22 R11
      314 GETUPVAL                         R23 6
      315 GETTABLEKS                       R23 R23 K51 ["join"]
      317 MOVE                             R24 R10
      318 DUPTABLE                         R25 K64 [{["generationId"], ["success"] = False, ["errorMessage"], ["errorCode"], ["prompt"]}]
      319 SETTABLEKS                       R21 R25 K52 ["generationId"]
      321 SETTABLEKS                       R20 R25 K29 ["errorMessage"]
      323 SETTABLEKS                       R19 R25 K57 ["errorCode"]
      325 SETTABLEKS                       R3 R25 K1 ["prompt"]
      327 CALL                             R23 2 -1
      328 CALL                             R22 -1 0
      329 GETUPVAL                         R22 7
      330 MOVE                             R23 R19
      331 MOVE                             R24 R20
      332 CALL                             R22 2 1
      333 GETUPVAL                         R16 1
      334 GETTABLEKS                       R16 R16 K67 ["FIntAssistantPrimitiveGenMaxConcurrentJobs"]
      336 GETUPVAL                         R17 14
      337 JUMPIFNOTLE                      R16 R17 ; [+45]
      339 GETUPVAL                         R17 9
      340 GETTABLEKS                       R17 R17 K68 ["TooManyConcurrentJobs"]
      342 GETUPVAL                         R18 15
      343 LOADK                            R20 K69 ["PrimitiveGen"]
      344 LOADK                            R21 K70 ["MaxConcurrentJobsError"]
      345 DUPTABLE                         R22 K73 [{"activeCount", "maxConcurrentJobs"}]
      346 GETIMPORT                        R23 K76 [string.format]
      348 LOADK                            R24 K77 ["%d"]
      349 GETUPVAL                         R25 14
      350 CALL                             R23 2 1
      351 SETTABLEKS                       R23 R22 K71 ["activeCount"]
      353 GETIMPORT                        R23 K76 [string.format]
      355 LOADK                            R24 K77 ["%d"]
      356 MOVE                             R25 R16
      357 CALL                             R23 2 1
      358 SETTABLEKS                       R23 R22 K72 ["maxConcurrentJobs"]
      360 NAMECALL                         R18 R18 K78 ["getText"]
      362 CALL                             R18 4 2
      363 MOVE                             R20 R11
      364 GETUPVAL                         R21 6
      365 GETTABLEKS                       R21 R21 K51 ["join"]
      367 MOVE                             R22 R10
      368 DUPTABLE                         R23 K64 [{["generationId"], ["success"] = False, ["errorMessage"], ["errorCode"], ["prompt"]}]
      369 SETTABLEKS                       R19 R23 K52 ["generationId"]
      371 SETTABLEKS                       R18 R23 K29 ["errorMessage"]
      373 SETTABLEKS                       R17 R23 K57 ["errorCode"]
      375 SETTABLEKS                       R3 R23 K1 ["prompt"]
      377 CALL                             R21 2 -1
      378 CALL                             R20 -1 0
      379 GETUPVAL                         R20 7
      380 MOVE                             R21 R17
      381 MOVE                             R22 R18
      382 CALL                             R20 2 1
      383 GETUPVAL                         R17 16
      384 GETTABLEKS                       R17 R17 K79 ["resolveImage"]
      386 MOVE                             R18 R6
      387 CALL                             R17 1 1
      388 JUMPIF                           R17 ; [+11]
      389 GETTABLEKS                       R18 R0 K14 ["attachedImageUri"]
      391 JUMPIF                           R18 ; [+2]
      392 LOADNIL                          R17
      393 JUMP                             ; [+6]
      394 GETUPVAL                         R19 16
      395 GETTABLEKS                       R19 R19 K80 ["getImage"]
      397 MOVE                             R20 R18
      398 CALL                             R19 1 1
      399 MOVE                             R17 R19
      400 GETUPVAL                         R18 1
      401 GETTABLEKS                       R18 R18 K81 ["FFlagAssistantGen3dCancelCompletionTelemetry"]
      403 JUMPIFNOT                        R18 ; [+28]
      404 JUMPIFNOT                        R2 ; [+27]
      405 GETTABLEKS                       R18 R2 K82 ["signal"]
      407 JUMPIFNOT                        R18 ; [+24]
      408 GETTABLEKS                       R18 R2 K82 ["signal"]
      410 GETTABLEKS                       R18 R18 K83 ["aborted"]
      412 JUMPIFNOT                        R18 ; [+19]
      413 GETUPVAL                         R18 9
      414 GETTABLEKS                       R18 R18 K84 ["CancelByUser"]
      416 MOVE                             R19 R11
      417 GETUPVAL                         R20 6
      418 GETTABLEKS                       R20 R20 K51 ["join"]
      420 MOVE                             R21 R10
      421 DUPTABLE                         R22 K86 [{["generationId"] = , ["success"] = False, ["errorMessage"] = "Generation cancelled by user", ["errorCode"], ["prompt"]}]
      422 SETTABLEKS                       R18 R22 K57 ["errorCode"]
      424 SETTABLEKS                       R3 R22 K1 ["prompt"]
      426 CALL                             R20 2 -1
      427 CALL                             R19 -1 0
      428 GETUPVAL                         R19 7
      429 MOVE                             R20 R18
      430 LOADK                            R21 K85 ["Generation cancelled by user"]
      431 CALL                             R19 2 1
      432 GETUPVAL                         R18 14
      433 ADDK                             R18 R18 K87 [1]
      434 SETUPVAL                         R18 14
      435 JUMPIFNOT                        R2 ; [+19]
      436 GETTABLEKS                       R18 R2 K82 ["signal"]
      438 JUMPIFNOT                        R18 ; [+16]
      439 GETTABLEKS                       R18 R2 K82 ["signal"]
      441 GETTABLEKS                       R18 R18 K88 ["abortSignal"]
      443 JUMPIFNOT                        R18 ; [+11]
      444 GETTABLEKS                       R18 R2 K82 ["signal"]
      446 GETTABLEKS                       R18 R18 K88 ["abortSignal"]
      448 NEWCLOSURE                       R20 P4
      449 CAPTURE                          UPVAL U17
      450 CAPTURE                          VAL R15
      451 CAPTURE                          VAL R4
      452 NAMECALL                         R18 R18 K89 ["Once"]
      454 CALL                             R18 2 0
      455 DUPTABLE                         R18 K91 [{"toolUseId", "prompt", "imageContent", "partNames"}]
      456 SETTABLEKS                       R4 R18 K90 ["toolUseId"]
      458 SETTABLEKS                       R3 R18 K1 ["prompt"]
      460 SETTABLEKS                       R17 R18 K24 ["imageContent"]
      462 SETTABLEKS                       R5 R18 K8 ["partNames"]
      464 NEWCLOSURE                       R20 P5
      465 CAPTURE                          UPVAL U18
      466 CAPTURE                          VAL R15
      467 CAPTURE                          VAL R18
      468 FASTPCALL                        pcall 1 ; [+2]
      469 GETIMPORT                        R19 K60 [pcall]
      471 CALL                             R19 1 2
      472 GETUPVAL                         R21 14
      473 SUBK                             R21 R21 K87 [1]
      474 SETUPVAL                         R21 14
      475 JUMPIF                           R19 ; [+30]
      476 GETUPVAL                         R21 9
      477 GETTABLEKS                       R21 R21 K92 ["General"]
      479 GETUPVAL                         R22 12
      480 FASTCALL1                        TOSTRING R20 ; [+3]
      481 MOVE                             R24 R20
      482 GETIMPORT                        R23 K63 [tostring]
      484 CALL                             R23 1 1
      485 CALL                             R22 1 2
      486 MOVE                             R24 R11
      487 GETUPVAL                         R25 6
      488 GETTABLEKS                       R25 R25 K51 ["join"]
      490 MOVE                             R26 R10
      491 DUPTABLE                         R27 K64 [{["generationId"], ["success"] = False, ["errorMessage"], ["errorCode"], ["prompt"]}]
      492 SETTABLEKS                       R23 R27 K52 ["generationId"]
      494 SETTABLEKS                       R22 R27 K29 ["errorMessage"]
      496 SETTABLEKS                       R21 R27 K57 ["errorCode"]
      498 SETTABLEKS                       R3 R27 K1 ["prompt"]
      500 CALL                             R25 2 -1
      501 CALL                             R24 -1 0
      502 GETUPVAL                         R24 7
      503 MOVE                             R25 R21
      504 MOVE                             R26 R22
      505 CALL                             R24 2 1
      506 GETTABLEKS                       R21 R20 K52 ["generationId"]
      508 GETTABLEKS                       R22 R20 K93 ["cancelled"]
      510 JUMPIFNOT                        R22 ; [+23]
      511 GETUPVAL                         R22 9
      512 GETTABLEKS                       R22 R22 K84 ["CancelByUser"]
      514 MOVE                             R23 R11
      515 GETUPVAL                         R24 6
      516 GETTABLEKS                       R24 R24 K51 ["join"]
      518 MOVE                             R25 R10
      519 DUPTABLE                         R26 K94 [{["generationId"], ["success"] = False, ["errorMessage"] = "Generation cancelled by user", ["errorCode"], ["prompt"]}]
      520 SETTABLEKS                       R21 R26 K52 ["generationId"]
      522 SETTABLEKS                       R22 R26 K57 ["errorCode"]
      524 SETTABLEKS                       R3 R26 K1 ["prompt"]
      526 CALL                             R24 2 -1
      527 CALL                             R23 -1 0
      528 GETUPVAL                         R22 7
      529 GETUPVAL                         R23 9
      530 GETTABLEKS                       R23 R23 K84 ["CancelByUser"]
      532 LOADK                            R24 K85 ["Generation cancelled by user"]
      533 CALL                             R22 2 0
      534 GETTABLEKS                       R22 R20 K54 ["success"]
      536 JUMPIF                           R22 ; [+29]
      537 GETTABLEKS                       R22 R20 K95 ["errorType"]
      539 JUMPIF                           R22 ; [+3]
      540 GETUPVAL                         R22 9
      541 GETTABLEKS                       R22 R22 K92 ["General"]
      543 GETTABLEKS                       R24 R20 K29 ["errorMessage"]
      545 ORK                              R23 R24 K65 ["Unknown error"]
      546 MOVE                             R24 R11
      547 GETUPVAL                         R25 6
      548 GETTABLEKS                       R25 R25 K51 ["join"]
      550 MOVE                             R26 R10
      551 DUPTABLE                         R27 K64 [{["generationId"], ["success"] = False, ["errorMessage"], ["errorCode"], ["prompt"]}]
      552 SETTABLEKS                       R21 R27 K52 ["generationId"]
      554 SETTABLEKS                       R23 R27 K29 ["errorMessage"]
      556 SETTABLEKS                       R22 R27 K57 ["errorCode"]
      558 SETTABLEKS                       R3 R27 K1 ["prompt"]
      560 CALL                             R25 2 -1
      561 CALL                             R24 -1 0
      562 GETUPVAL                         R24 7
      563 MOVE                             R25 R22
      564 MOVE                             R26 R23
      565 CALL                             R24 2 1
      566 FASTCALL2K                       ASSERT R21 K96 ; [+5]
      568 MOVE                             R23 R21
      569 LOADK                            R24 K96 ["Successful generation must return a generationId"]
      570 GETIMPORT                        R22 K98 [assert]
      572 CALL                             R22 2 0
      573 GETTABLEKS                       R23 R20 K100 ["resultName"]
      575 ORK                              R22 R23 K99 ["ProceduralObject"]
      576 GETTABLEKS                       R23 R20 K101 ["tag"]
      578 JUMPIF                           R23 ; [+3]
      579 GETUPVAL                         R23 19
      580 MOVE                             R24 R21
      581 CALL                             R23 1 1
      582 MOVE                             R24 R11
      583 GETUPVAL                         R25 6
      584 GETTABLEKS                       R25 R25 K51 ["join"]
      586 MOVE                             R26 R10
      587 DUPTABLE                         R27 K103 [{["generationId"], ["success"] = True}]
      588 SETTABLEKS                       R21 R27 K52 ["generationId"]
      590 CALL                             R25 2 -1
      591 CALL                             R24 -1 0
      592 DUPTABLE                         R24 K105 [{"tag", "generationId", "generationName"}]
      593 SETTABLEKS                       R23 R24 K101 ["tag"]
      595 SETTABLEKS                       R21 R24 K52 ["generationId"]
      597 SETTABLEKS                       R22 R24 K104 ["generationName"]
      599 RETURN                           R24 1

PROTO_18:
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

PROTO_19:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R2
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 FASTPCALL                        pcall 1 ; [+2]
        7 GETIMPORT                        R3 K1 [pcall]
        9 CALL                             R3 1 2
       10 JUMPIF                           R3 ; [+57]
       11 GETUPVAL                         R5 2
       12 MOVE                             R6 R4
       13 CALL                             R5 1 1
       14 DUPTABLE                         R6 K5 [{"errorType", "cancelled", "errorMessage"}]
       15 JUMPIFNOT                        R5 ; [+3]
       16 GETTABLEKS                       R7 R5 K2 ["errorType"]
       18 JUMP                             ; [+3]
       19 GETUPVAL                         R7 3
       20 GETTABLEKS                       R7 R7 K6 ["General"]
       22 SETTABLEKS                       R7 R6 K2 ["errorType"]
       24 LOADB                            R7 0
       25 JUMPIFEQKNIL                     R5 ; [+3]
       27 GETTABLEKS                       R7 R5 K3 ["cancelled"]
       29 SETTABLEKS                       R7 R6 K3 ["cancelled"]
       31 JUMPIFNOT                        R5 ; [+3]
       32 GETTABLEKS                       R7 R5 K7 ["message"]
       34 JUMP                             ; [+5]
       35 FASTCALL1                        TOSTRING R4 ; [+3]
       36 MOVE                             R8 R4
       37 GETIMPORT                        R7 K9 [tostring]
       39 CALL                             R7 1 1
       40 SETTABLEKS                       R7 R6 K4 ["errorMessage"]
       42 GETUPVAL                         R7 4
       43 CALL                             R7 0 1
       44 JUMPIFNOT                        R5 ; [+3]
       45 GETTABLEKS                       R9 R5 K7 ["message"]
       47 JUMP                             ; [+5]
       48 FASTCALL1                        TOSTRING R4 ; [+3]
       49 MOVE                             R10 R4
       50 GETIMPORT                        R9 K9 [tostring]
       52 CALL                             R9 1 1
       53 NAMECALL                         R7 R7 K10 ["addText"]
       55 CALL                             R7 2 1
       56 MOVE                             R9 R6
       57 NAMECALL                         R7 R7 K11 ["setStructuredContent"]
       59 CALL                             R7 2 1
       60 LOADB                            R9 1
       61 NAMECALL                         R7 R7 K12 ["setError"]
       63 CALL                             R7 2 1
       64 NAMECALL                         R7 R7 K13 ["build"]
       66 CALL                             R7 1 -1
       67 RETURN                           R7 -1
       68 DUPTABLE                         R5 K17 [{"tag", "generationId", "generationName"}]
       69 GETTABLEKS                       R6 R4 K14 ["tag"]
       71 SETTABLEKS                       R6 R5 K14 ["tag"]
       73 GETTABLEKS                       R6 R4 K15 ["generationId"]
       75 SETTABLEKS                       R6 R5 K15 ["generationId"]
       77 GETTABLEKS                       R6 R4 K16 ["generationName"]
       79 SETTABLEKS                       R6 R5 K16 ["generationName"]
       81 GETUPVAL                         R6 4
       82 CALL                             R6 0 1
       83 GETUPVAL                         R8 0
       84 GETTABLEKS                       R8 R8 K18 ["toString"]
       86 MOVE                             R9 R5
       87 CALL                             R8 1 -1
       88 NAMECALL                         R6 R6 K10 ["addText"]
       90 CALL                             R6 -1 1
       91 MOVE                             R8 R5
       92 NAMECALL                         R6 R6 K11 ["setStructuredContent"]
       94 CALL                             R6 2 1
       95 NAMECALL                         R6 R6 K13 ["build"]
       97 CALL                             R6 1 -1
       98 RETURN                           R6 -1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+2]
        2 LOADK                            R1 K0 [""]
        3 RETURN                           R1 1
        4 MOVE                             R1 R0
        5 RETURN                           R1 1

PROTO_21:
        0 NEWTABLE                         R1 0 4
        2 DUPTABLE                         R2 K3 [{"name", "inputType", "initialValue"}]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K4 ["Prompt"]
        6 SETTABLEKS                       R3 R2 K0 ["name"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K5 ["String"]
       11 SETTABLEKS                       R3 R2 K1 ["inputType"]
       13 GETUPVAL                         R3 2
       14 SETTABLEKS                       R3 R2 K2 ["initialValue"]
       16 DUPTABLE                         R3 K3 [{"name", "inputType", "initialValue"}]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K6 ["HintImage"]
       20 SETTABLEKS                       R4 R3 K0 ["name"]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K7 ["Image"]
       25 SETTABLEKS                       R4 R3 K1 ["inputType"]
       27 GETUPVAL                         R4 3
       28 SETTABLEKS                       R4 R3 K2 ["initialValue"]
       30 DUPTABLE                         R4 K9 [{[1], ["inputType"], ["initialValue"] = }]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K10 ["PartNames"]
       34 SETTABLEKS                       R5 R4 K0 ["name"]
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R5 R5 K11 ["Array"]
       39 SETTABLEKS                       R5 R4 K1 ["inputType"]
       41 DUPTABLE                         R5 K3 [{"name", "inputType", "initialValue"}]
       42 GETUPVAL                         R6 0
       43 GETTABLEKS                       R6 R6 K12 ["SuggestSegmentation"]
       45 SETTABLEKS                       R6 R5 K0 ["name"]
       47 GETUPVAL                         R6 1
       48 GETTABLEKS                       R6 R6 K13 ["Boolean"]
       50 SETTABLEKS                       R6 R5 K1 ["inputType"]
       52 GETUPVAL                         R6 4
       53 SETTABLEKS                       R6 R5 K2 ["initialValue"]
       55 SETLIST                          R1 R2 4 [1]
       57 DUPTABLE                         R2 K17 [{"formId", "fields", "validation"}]
       58 GETUPVAL                         R3 5
       59 GETTABLEKS                       R3 R3 K14 ["formId"]
       61 SETTABLEKS                       R3 R2 K14 ["formId"]
       63 SETTABLEKS                       R1 R2 K15 ["fields"]
       65 GETUPVAL                         R3 6
       66 DUPTABLE                         R4 K20 [{"kind", "rules"}]
       67 GETUPVAL                         R5 7
       68 GETTABLEKS                       R5 R5 K21 ["Any"]
       70 SETTABLEKS                       R5 R4 K18 ["kind"]
       72 NEWTABLE                         R5 0 2
       74 GETUPVAL                         R6 6
       75 DUPTABLE                         R7 K23 [{"kind", "field"}]
       76 GETUPVAL                         R8 7
       77 GETTABLEKS                       R8 R8 K24 ["NonEmpty"]
       79 SETTABLEKS                       R8 R7 K18 ["kind"]
       81 GETUPVAL                         R8 0
       82 GETTABLEKS                       R8 R8 K4 ["Prompt"]
       84 SETTABLEKS                       R8 R7 K22 ["field"]
       86 CALL                             R6 1 1
       87 GETUPVAL                         R7 6
       88 DUPTABLE                         R8 K23 [{"kind", "field"}]
       89 GETUPVAL                         R9 7
       90 GETTABLEKS                       R9 R9 K24 ["NonEmpty"]
       92 SETTABLEKS                       R9 R8 K18 ["kind"]
       94 GETUPVAL                         R9 0
       95 GETTABLEKS                       R9 R9 K6 ["HintImage"]
       97 SETTABLEKS                       R9 R8 K22 ["field"]
       99 CALL                             R7 1 -1
      100 SETLIST                          R5 R6 -1 [1]
      102 SETTABLEKS                       R5 R4 K19 ["rules"]
      104 CALL                             R3 1 1
      105 SETTABLEKS                       R3 R2 K16 ["validation"]
      107 DUPTABLE                         R3 K26 [{"name", "arguments"}]
      108 GETUPVAL                         R4 8
      109 GETTABLEKS                       R4 R4 K27 ["AskInput"]
      111 SETTABLEKS                       R4 R3 K0 ["name"]
      113 SETTABLEKS                       R2 R3 K25 ["arguments"]
      115 RETURN                           R3 1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["readAskInputValues"]
        3 LENGTH                           R3 R0
        4 GETTABLE                         R2 R0 R3
        5 CALL                             R1 1 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["SuggestSegmentation"]
        9 GETTABLE                         R2 R1 R3
       10 FASTCALL1                        TYPEOF R2 ; [+3]
       11 MOVE                             R4 R2
       12 GETIMPORT                        R3 K3 [typeof]
       14 CALL                             R3 1 1
       15 JUMPIFNOTEQKS                    R3 K4 ["boolean"] ; [+2]
       17 SETUPVAL                         R2 2
       18 GETUPVAL                         R3 3
       19 GETTABLEKS                       R3 R3 K5 ["resolveUri"]
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R5 R5 K6 ["HintImage"]
       24 GETTABLE                         R4 R1 R5
       25 CALL                             R3 1 1
       26 DUPTABLE                         R4 K14 [{["async"] = True, ["prompt"], ["attachedImageUri"], ["partNames"], ["suggestSegmentation"], ["isManualRun"] = True}]
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R6 R6 K15 ["Prompt"]
       30 GETTABLE                         R5 R1 R6
       31 SETTABLEKS                       R5 R4 K9 ["prompt"]
       33 SETTABLEKS                       R3 R4 K10 ["attachedImageUri"]
       35 GETUPVAL                         R6 1
       36 GETTABLEKS                       R6 R6 K16 ["PartNames"]
       38 GETTABLE                         R5 R1 R6
       39 SETTABLEKS                       R5 R4 K11 ["partNames"]
       41 SETTABLEKS                       R2 R4 K12 ["suggestSegmentation"]
       43 DUPTABLE                         R5 K19 [{"name", "arguments"}]
       44 GETUPVAL                         R6 4
       45 GETTABLEKS                       R6 R6 K20 ["PrimitiveGen"]
       47 SETTABLEKS                       R6 R5 K17 ["name"]
       49 SETTABLEKS                       R4 R5 K18 ["arguments"]
       51 RETURN                           R5 1

PROTO_23:
        0 JUMPIFNOT                        R1 ; [+6]
        1 LENGTH                           R3 R1
        2 LOADN                            R4 0
        3 JUMPIFNOTLT                      R4 R3 ; [+3]
        5 GETTABLEN                        R2 R1 1
        6 JUMP                             ; [+1]
        7 LOADNIL                          R2
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R2
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          UPVAL U6
       18 NEWCLOSURE                       R4 P1
       19 CAPTURE                          UPVAL U7
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          UPVAL U8
       23 CAPTURE                          UPVAL U6
       24 NEWTABLE                         R5 0 2
       26 MOVE                             R6 R3
       27 MOVE                             R7 R4
       28 SETLIST                          R5 R6 2 [1]
       30 RETURN                           R5 1

PROTO_24:
        0 LOADK                            R0 K0 ["Creates procedural 3D objects from primitive parts with configurable attributes. Supports reference images."]
        1 RETURN                           R0 1

PROTO_25:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 GETTABLEKS                       R2 R0 K1 ["net"]
        4 GETTABLEKS                       R3 R0 K2 ["destroying"]
        6 NEWTABLE                         R4 0 0
        8 LOADN                            R5 0
        9 NEWCLOSURE                       R6 P0
       10 CAPTURE                          VAL R4
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          UPVAL U6
       18 CAPTURE                          UPVAL U7
       19 CAPTURE                          UPVAL U8
       20 CAPTURE                          UPVAL U9
       21 CAPTURE                          UPVAL U10
       22 GETUPVAL                         R7 11
       23 GETTABLEKS                       R7 R7 K3 ["invoke"]
       25 MOVE                             R8 R2
       26 LOADK                            R9 K4 ["PrimitiveGenTool.generateAsync"]
       27 CALL                             R7 2 1
       28 GETUPVAL                         R8 11
       29 GETTABLEKS                       R8 R8 K3 ["invoke"]
       31 MOVE                             R9 R2
       32 LOADK                            R10 K5 ["PrimitiveGenTool.cancelGeneration"]
       33 CALL                             R8 2 1
       34 GETUPVAL                         R9 11
       35 GETTABLEKS                       R9 R9 K3 ["invoke"]
       37 MOVE                             R10 R2
       38 LOADK                            R11 K6 ["PrimitiveGenTool.pingAssetDmAsync"]
       39 CALL                             R9 2 1
       40 GETUPVAL                         R10 12
       41 GETTABLEKS                       R10 R10 K7 ["new"]
       43 CALL                             R10 0 1
       44 NAMECALL                         R11 R2 K8 ["GetIdentity"]
       46 CALL                             R11 1 1
       47 GETUPVAL                         R12 13
       48 GETTABLEKS                       R12 R12 K9 ["Identity"]
       50 GETTABLEKS                       R12 R12 K10 ["Standalone"]
       52 JUMPIFEQ                         R11 R12 ; [+24]
       54 NEWCLOSURE                       R15 P1
       55 CAPTURE                          VAL R6
       56 NAMECALL                         R13 R7 K11 ["Connect"]
       58 CALL                             R13 2 -1
       59 NAMECALL                         R11 R10 K12 ["Add"]
       61 CALL                             R11 -1 0
       62 NEWCLOSURE                       R15 P2
       63 CAPTURE                          VAL R4
       64 NAMECALL                         R13 R8 K11 ["Connect"]
       66 CALL                             R13 2 -1
       67 NAMECALL                         R11 R10 K12 ["Add"]
       69 CALL                             R11 -1 0
       70 DUPCLOSURE                       R15 K13 [PROTO_8]
       71 NAMECALL                         R13 R9 K11 ["Connect"]
       73 CALL                             R13 2 -1
       74 NAMECALL                         R11 R10 K12 ["Add"]
       76 CALL                             R11 -1 0
       77 NEWCLOSURE                       R13 P4
       78 CAPTURE                          VAL R10
       79 NAMECALL                         R11 R3 K14 ["Once"]
       81 CALL                             R11 2 0
       82 NEWCLOSURE                       R11 P5
       83 CAPTURE                          UPVAL U14
       84 CAPTURE                          UPVAL U5
       85 CAPTURE                          UPVAL U15
       86 CAPTURE                          UPVAL U16
       87 CAPTURE                          UPVAL U17
       88 CAPTURE                          VAL R1
       89 CAPTURE                          UPVAL U18
       90 CAPTURE                          UPVAL U19
       91 CAPTURE                          UPVAL U20
       92 CAPTURE                          UPVAL U4
       93 CAPTURE                          UPVAL U21
       94 CAPTURE                          VAL R2
       95 CAPTURE                          UPVAL U9
       96 CAPTURE                          VAL R9
       97 CAPTURE                          REF R5
       98 CAPTURE                          UPVAL U22
       99 CAPTURE                          UPVAL U23
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R7
      102 CAPTURE                          UPVAL U10
      103 NEWCLOSURE                       R12 P6
      104 CAPTURE                          UPVAL U24
      105 CAPTURE                          VAL R11
      106 CAPTURE                          UPVAL U25
      107 CAPTURE                          UPVAL U4
      108 CAPTURE                          UPVAL U26
      109 GETUPVAL                         R13 5
      110 GETTABLEKS                       R13 R13 K15 ["FFlagAssistantToolSkillDescriptions"]
      112 NEWCLOSURE                       R14 P7
      113 CAPTURE                          VAL R13
      114 JUMPIFNOT                        R13 ; [+2]
      115 LOADK                            R15 K16 ["Read the rbx-generate-procedural-model skill to learn the details of this tool before calling it."]
      116 JUMP                             ; [+29]
      117 GETIMPORT                        R15 K19 [table.concat]
      119 NEWTABLE                         R16 0 12
      121 LOADK                            R17 K20 ["Creates 3D objects built from primitive parts (blocks, spheres, cylinders, wedges) as a ProceduralModel with configurable attributes."]
      122 LOADK                            R18 K21 ["Use this tool when the user wants to:"]
      123 LOADK                            R19 K22 ["- Create or build a 3D object, model, character, creature, vehicle, building, scenery, or any physical thing in the workspace"]
      124 LOADK                            R20 K23 ["- Generate something from a reference image"]
      125 LOADK                            R21 K24 ["- Create an object with tunable parameters (e.g. \"add attributes to control head size, arm length, color\")"]
      126 LOADK                            R22 K25 ["- Build anything described as \"procedural\", \"parametric\", \"configurable\", or \"with attributes\""]
      127 LOADK                            R23 K26 [""]
      128 LOADK                            R24 K27 ["The output is a ProceduralModel: a scripted model whose appearance is controlled by user-editable attributes (like size, color, proportions). The user can tweak these attributes after generation without regenerating."]
      129 LOADK                            R25 K26 [""]
      130 LOADK                            R26 K28 ["The tool automatically inserts the generated model into the workspace. You do not need to run any code afterward."]
      131 LOADK                            R27 K26 [""]
      132 LOADK                            R28 K29 ["CRITICAL: This is a long-running generative tool. Default to calling it with the '%*' argument set to true, which runs the generation in the background and returns immediately with a jobId. Handle other tasks while the generation is in-progress, and only call the '%*' tool when you absolutely need the result."]
      133 GETUPVAL                         R30 27
      134 GETTABLEKS                       R30 R30 K30 ["ASYNC_ARG"]
      136 GETUPVAL                         R31 28
      137 GETTABLEKS                       R31 R31 K31 ["JobWait"]
      139 NAMECALL                         R28 R28 K32 ["format"]
      141 CALL                             R28 3 1
      142 SETLIST                          R16 R17 12 [1]
      144 LOADK                            R17 K33 ["\n"]
      145 CALL                             R15 2 1
      146 GETUPVAL                         R16 29
      147 GETTABLEKS                       R16 R16 K34 ["define"]
      149 CALL                             R16 0 1
      150 GETUPVAL                         R18 28
      151 GETTABLEKS                       R18 R18 K35 ["PrimitiveGen"]
      153 NAMECALL                         R16 R16 K36 ["setName"]
      155 CALL                             R16 2 1
      156 MOVE                             R18 R15
      157 NAMECALL                         R16 R16 K37 ["setDescription"]
      159 CALL                             R16 2 1
      160 LOADK                            R18 K38 ["prompt"]
      161 DUPTABLE                         R19 K42 [{["type"] = "string", ["description"]}]
      162 JUMPIFNOT                        R13 ; [+2]
      163 LOADK                            R20 K26 [""]
      164 JUMP                             ; [+1]
      165 LOADK                            R20 K43 ["A text description of what to create and what attributes to expose.\nPass the user's own words. If they mention specific configurable properties (e.g. \"head size\", \"arm length\", \"wheel count\"), include those in the prompt so the generated model exposes them as editable attributes.\nIf an image is attached and the user gave no text description, pass an empty string.\nDo NOT describe or interpret the attached image — only pass the user's own words.\n"]
      166 SETTABLEKS                       R20 R19 K41 ["description"]
      168 NAMECALL                         R16 R16 K44 ["addArgument"]
      170 CALL                             R16 3 1
      171 LOADK                            R18 K45 ["attachedImageUri"]
      172 DUPTABLE                         R19 K42 [{["type"] = "string", ["description"]}]
      173 JUMPIFNOT                        R13 ; [+2]
      174 LOADK                            R20 K26 [""]
      175 JUMP                             ; [+1]
      176 LOADK                            R20 K46 ["The image URI (IMAGEID_<id>) from the user's attached image. Always pass this when the user provides a reference image."]
      177 SETTABLEKS                       R20 R19 K41 ["description"]
      179 NAMECALL                         R16 R16 K47 ["addOptionalArgument"]
      181 CALL                             R16 3 1
      182 LOADK                            R18 K48 ["partNames"]
      183 DUPTABLE                         R19 K42 [{["type"] = "string", ["description"]}]
      184 GETUPVAL                         R22 5
      185 GETTABLEKS                       R22 R22 K49 ["FFlagAssistantGen3dAutoSegmentation"]
      187 JUMPIFNOT                        R22 ; [+2]
      188 LOADK                            R21 K50 ["List of part names that define the structure of the generated model. Accepts a comma-separated string (e.g. 'body, left wheel, right wheel, door') or a JSON array of strings (e.g. ['body', 'left wheel', 'right wheel', 'door']). Required when segmentation='explicit'. Maximum 8 parts (excess will be truncated)."]
      189 JUMP                             ; [+1]
      190 LOADK                            R21 K51 ["List of part names that define the structure of the generated model. Accepts a comma-separated string (e.g. 'body, left wheel, right wheel, door') or a JSON array of strings. When provided, the model will be built around these named parts."]
      191 JUMPIFNOT                        R13 ; [+2]
      192 LOADK                            R20 K26 [""]
      193 JUMP                             ; [+1]
      194 MOVE                             R20 R21
      195 SETTABLEKS                       R20 R19 K41 ["description"]
      197 NAMECALL                         R16 R16 K47 ["addOptionalArgument"]
      199 CALL                             R16 3 1
      200 GETUPVAL                         R17 5
      201 GETTABLEKS                       R17 R17 K49 ["FFlagAssistantGen3dAutoSegmentation"]
      203 JUMPIFNOT                        R17 ; [+16]
      204 LOADK                            R19 K52 ["segmentation"]
      205 DUPTABLE                         R20 K54 [{["type"] = "string", ["enum"], ["description"]}]
      206 GETUPVAL                         R21 30
      207 GETTABLEKS                       R21 R21 K55 ["SegmentationArgValues"]
      209 SETTABLEKS                       R21 R20 K53 ["enum"]
      211 JUMPIFNOT                        R13 ; [+2]
      212 LOADK                            R21 K26 [""]
      213 JUMP                             ; [+1]
      214 LOADK                            R21 K56 ["Controls how the model is broken into parts. Pick based on the user's wording:\n- Omit (or \"auto\"): user did NOT mention parts/segmentation (e.g. \"generate a car\"). The tool will derive parts automatically via an internal LLM call.\n- \"none\": user explicitly asked for no parts / a single piece (e.g. \"generate a car with no parts\", \"as one mesh\", \"single piece\").\n- \"explicit\": user named specific parts (e.g. \"a car with body and wheels\"). You MUST also pass partNames with the user's listed parts (max 8).\n"]
      215 SETTABLEKS                       R21 R20 K41 ["description"]
      217 NAMECALL                         R17 R16 K47 ["addOptionalArgument"]
      219 CALL                             R17 3 0
      220 MOVE                             R19 R12
      221 NAMECALL                         R17 R16 K57 ["setHandler"]
      223 CALL                             R17 2 1
      224 LOADK                            R19 K58 ["Primitive Generation"]
      225 NAMECALL                         R17 R17 K59 ["setTitle"]
      227 CALL                             R17 2 1
      228 DUPTABLE                         R19 K67 [{["title"] = "Primitive Generation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = True}]
      229 NAMECALL                         R17 R17 K68 ["setAnnotations"]
      231 CALL                             R17 2 1
      232 NAMECALL                         R17 R17 K69 ["build"]
      234 CALL                             R17 1 1
      235 LOADB                            R18 1
      236 NEWCLOSURE                       R19 P8
      237 CAPTURE                          UPVAL U31
      238 CAPTURE                          UPVAL U32
      239 CAPTURE                          REF R18
      240 CAPTURE                          UPVAL U33
      241 CAPTURE                          UPVAL U34
      242 CAPTURE                          UPVAL U35
      243 CAPTURE                          UPVAL U28
      244 CAPTURE                          UPVAL U36
      245 CAPTURE                          UPVAL U23
      246 DUPTABLE                         R20 K73 [{"command", "getDescription", "runToolChain"}]
      247 GETUPVAL                         R21 28
      248 GETTABLEKS                       R21 R21 K35 ["PrimitiveGen"]
      250 SETTABLEKS                       R21 R20 K70 ["command"]
      252 DUPCLOSURE                       R21 K74 [PROTO_24]
      253 SETTABLEKS                       R21 R20 K71 ["getDescription"]
      255 SETTABLEKS                       R19 R20 K72 ["runToolChain"]
      257 DUPTABLE                         R21 K79 [{"definition", "slashCommands", "getPreExecuteWarning", "toolCallOptions"}]
      258 SETTABLEKS                       R17 R21 K75 ["definition"]
      260 NEWTABLE                         R22 0 1
      262 MOVE                             R23 R20
      263 SETLIST                          R22 R23 1 [1]
      265 SETTABLEKS                       R22 R21 K76 ["slashCommands"]
      267 DUPCLOSURE                       R22 K80 [PROTO_25]
      268 SETTABLEKS                       R22 R21 K77 ["getPreExecuteWarning"]
      270 DUPTABLE                         R22 K82 [{["resetTimeoutOnProgress"] = True}]
      271 SETTABLEKS                       R22 R21 K78 ["toolCallOptions"]
      273 CLOSEUPVALS                      R5
      274 RETURN                           R21 1

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
       13 GETTABLEKS                       R2 R0 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["Bin"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R2 K12 ["DMNetworking"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R6 R2 K13 ["Dash"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K10 [require]
       32 GETTABLEKS                       R7 R2 K14 ["Gen3dCore"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K10 [require]
       37 GETTABLEKS                       R8 R2 K15 ["ModelContextProtocol"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K10 [require]
       42 GETTABLEKS                       R9 R0 K16 ["Util"]
       44 GETTABLEKS                       R9 R9 K17 ["AskInput"]
       46 GETTABLEKS                       R9 R9 K18 ["AskInputTypes"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K10 [require]
       51 GETTABLEKS                       R10 R0 K16 ["Util"]
       53 GETTABLEKS                       R10 R10 K19 ["Jobs"]
       55 GETTABLEKS                       R10 R10 K20 ["AsyncToolRunner"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K10 [require]
       60 GETIMPORT                        R11 K1 [script]
       62 GETTABLEKS                       R11 R11 K21 ["Backend"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K10 [require]
       67 GETTABLEKS                       R12 R0 K22 ["Flags"]
       69 CALL                             R11 1 1
       70 GETIMPORT                        R12 K10 [require]
       72 GETTABLEKS                       R13 R0 K16 ["Util"]
       74 GETTABLEKS                       R13 R13 K23 ["ImageContentStore"]
       76 CALL                             R12 1 1
       77 GETIMPORT                        R13 K10 [require]
       79 GETTABLEKS                       R14 R0 K16 ["Util"]
       81 GETTABLEKS                       R14 R14 K24 ["InstanceChannel"]
       83 GETTABLEKS                       R14 R14 K24 ["InstanceChannel"]
       85 CALL                             R13 1 1
       86 GETIMPORT                        R14 K10 [require]
       88 GETTABLEKS                       R15 R0 K16 ["Util"]
       90 GETTABLEKS                       R15 R15 K25 ["MeshGen"]
       92 GETTABLEKS                       R15 R15 K26 ["MeshGenSchemaSelector"]
       94 CALL                             R14 1 1
       95 GETIMPORT                        R15 K10 [require]
       97 GETIMPORT                        R16 K1 [script]
       99 GETTABLEKS                       R16 R16 K27 ["ModelBuilder"]
      101 CALL                             R15 1 1
      102 GETIMPORT                        R16 K10 [require]
      104 GETTABLEKS                       R17 R0 K16 ["Util"]
      106 GETTABLEKS                       R17 R17 K28 ["NetworkingIdentity"]
      108 CALL                             R16 1 1
      109 GETIMPORT                        R17 K10 [require]
      111 GETTABLEKS                       R18 R0 K16 ["Util"]
      113 GETTABLEKS                       R18 R18 K29 ["PrimitiveGen"]
      115 GETTABLEKS                       R18 R18 K30 ["PrimitiveGenChannel"]
      117 CALL                             R17 1 1
      118 GETIMPORT                        R18 K10 [require]
      120 GETTABLEKS                       R19 R0 K16 ["Util"]
      122 GETTABLEKS                       R19 R19 K29 ["PrimitiveGen"]
      124 GETTABLEKS                       R19 R19 K31 ["PrimitiveGenTypes"]
      126 CALL                             R18 1 1
      127 GETIMPORT                        R19 K10 [require]
      129 GETTABLEKS                       R20 R0 K16 ["Util"]
      131 GETTABLEKS                       R20 R20 K32 ["Gen3dUtils"]
      133 GETTABLEKS                       R20 R20 K33 ["SingleImageGenerator"]
      135 CALL                             R19 1 1
      136 GETIMPORT                        R20 K10 [require]
      138 GETTABLEKS                       R21 R0 K16 ["Util"]
      140 GETTABLEKS                       R21 R21 K34 ["SlashCommandConfiguration"]
      142 CALL                             R20 1 1
      143 GETIMPORT                        R21 K10 [require]
      145 GETTABLEKS                       R22 R0 K35 ["Tools"]
      147 GETTABLEKS                       R22 R22 K36 ["ToolTypes"]
      149 CALL                             R21 1 1
      150 GETIMPORT                        R22 K10 [require]
      152 GETTABLEKS                       R23 R0 K16 ["Util"]
      154 GETTABLEKS                       R23 R23 K37 ["ToolUtils"]
      156 CALL                             R22 1 1
      157 GETIMPORT                        R23 K10 [require]
      159 GETTABLEKS                       R24 R0 K38 ["Resources"]
      161 GETTABLEKS                       R24 R24 K39 ["Localization"]
      163 GETTABLEKS                       R24 R24 K40 ["Translator"]
      165 CALL                             R23 1 1
      166 GETIMPORT                        R24 K10 [require]
      168 GETTABLEKS                       R25 R0 K41 ["Types"]
      170 CALL                             R24 1 1
      171 GETIMPORT                        R25 K10 [require]
      173 GETTABLEKS                       R26 R0 K16 ["Util"]
      175 GETTABLEKS                       R26 R26 K42 ["VersionResolver"]
      177 CALL                             R25 1 1
      178 GETTABLEKS                       R26 R4 K43 ["Remote"]
      180 GETTABLEKS                       R27 R7 K16 ["Util"]
      182 GETTABLEKS                       R27 R27 K44 ["ToolBuilder"]
      184 GETTABLEKS                       R28 R7 K16 ["Util"]
      186 GETTABLEKS                       R28 R28 K45 ["ToolResult"]
      188 GETTABLEKS                       R29 R21 K46 ["ToolNames"]
      190 GETTABLEKS                       R30 R6 K47 ["SegmentationEnums"]
      192 GETTABLEKS                       R31 R8 K48 ["INPUT_TYPE"]
      194 GETTABLEKS                       R32 R8 K49 ["RULE_KIND"]
      196 GETTABLEKS                       R33 R8 K50 ["asRule"]
      198 GETTABLEKS                       R34 R20 K51 ["Configs"]
      200 GETTABLEKS                       R34 R34 K29 ["PrimitiveGen"]
      202 GETTABLEKS                       R35 R34 K52 ["row"]
      204 GETTABLEKS                       R36 R18 K53 ["getLinkTag"]
      206 GETTABLEKS                       R37 R10 K54 ["ErrorType"]
      208 GETTABLEKS                       R38 R10 K55 ["ResultStatus"]
      210 GETTABLEKS                       R39 R10 K56 ["GenerationStages"]
      212 GETTABLEKS                       R40 R10 K57 ["raiseGenerationError"]
      214 GETTABLEKS                       R41 R10 K58 ["asGenerationError"]
      216 GETTABLEKS                       R42 R10 K59 ["getAssetDmUnreachableMessage"]
      218 GETTABLEKS                       R43 R10 K60 ["getExecutionErrorCode"]
      220 DUPCLOSURE                       R44 K61 [PROTO_0]
      221 CAPTURE                          VAL R12
      222 DUPCLOSURE                       R45 K62 [PROTO_26]
      223 CAPTURE                          VAL R13
      224 CAPTURE                          VAL R17
      225 CAPTURE                          VAL R39
      226 CAPTURE                          VAL R10
      227 CAPTURE                          VAL R37
      228 CAPTURE                          VAL R11
      229 CAPTURE                          VAL R38
      230 CAPTURE                          VAL R15
      231 CAPTURE                          VAL R43
      232 CAPTURE                          VAL R42
      233 CAPTURE                          VAL R36
      234 CAPTURE                          VAL R26
      235 CAPTURE                          VAL R3
      236 CAPTURE                          VAL R4
      237 CAPTURE                          VAL R1
      238 CAPTURE                          VAL R14
      239 CAPTURE                          VAL R6
      240 CAPTURE                          VAL R19
      241 CAPTURE                          VAL R5
      242 CAPTURE                          VAL R40
      243 CAPTURE                          VAL R25
      244 CAPTURE                          VAL R16
      245 CAPTURE                          VAL R23
      246 CAPTURE                          VAL R12
      247 CAPTURE                          VAL R22
      248 CAPTURE                          VAL R41
      249 CAPTURE                          VAL R28
      250 CAPTURE                          VAL R9
      251 CAPTURE                          VAL R29
      252 CAPTURE                          VAL R27
      253 CAPTURE                          VAL R30
      254 CAPTURE                          VAL R35
      255 CAPTURE                          VAL R31
      256 CAPTURE                          VAL R34
      257 CAPTURE                          VAL R33
      258 CAPTURE                          VAL R32
      259 CAPTURE                          VAL R8
      260 RETURN                           R45 1
