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
       80 GETIMPORT                        R8 K23 [pcall]
       82 NEWCLOSURE                       R9 P2
       83 CAPTURE                          UPVAL U4
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R4
       87 CAPTURE                          UPVAL U2
       88 CALL                             R8 1 2
       89 JUMPIF                           R8 ; [+39]
       90 GETUPVAL                         R10 0
       91 LOADNIL                          R11
       92 SETTABLE                         R11 R10 R1
       93 GETUPVAL                         R10 1
       94 GETTABLEKS                       R10 R10 K13 ["get"]
       96 GETUPVAL                         R11 2
       97 GETTABLEKS                       R11 R11 K4 ["Scope"]
       99 MOVE                             R12 R1
      100 CALL                             R10 2 1
      101 JUMPIFNOT                        R10 ; [+3]
      102 NAMECALL                         R11 R10 K14 ["Destroy"]
      104 CALL                             R11 1 0
      105 DUPTABLE                         R10 K24 [{["success"] = False, ["generationId"], ["errorType"], ["errorMessage"]}]
      106 SETTABLEKS                       R7 R10 K12 ["generationId"]
      108 GETUPVAL                         R12 6
      109 GETTABLEKS                       R12 R12 K25 ["FFlagPrimGenBetterErrorType"]
      111 JUMPIFNOT                        R12 ; [+4]
      112 GETUPVAL                         R11 5
      113 GETTABLEKS                       R11 R11 K26 ["PollFailed"]
      115 JUMP                             ; [+3]
      116 GETUPVAL                         R11 5
      117 GETTABLEKS                       R11 R11 K20 ["General"]
      119 SETTABLEKS                       R11 R10 K17 ["errorType"]
      121 FASTCALL1                        TOSTRING R9 ; [+3]
      122 MOVE                             R12 R9
      123 GETIMPORT                        R11 K28 [tostring]
      125 CALL                             R11 1 1
      126 SETTABLEKS                       R11 R10 K18 ["errorMessage"]
      128 RETURN                           R10 1
      129 GETTABLEKS                       R10 R9 K29 ["status"]
      131 GETUPVAL                         R11 7
      132 GETTABLEKS                       R11 R11 K30 ["Cancelled"]
      134 JUMPIFNOTEQ                      R10 R11 ; [+20]
      136 GETUPVAL                         R10 0
      137 LOADNIL                          R11
      138 SETTABLE                         R11 R10 R1
      139 GETUPVAL                         R10 1
      140 GETTABLEKS                       R10 R10 K13 ["get"]
      142 GETUPVAL                         R11 2
      143 GETTABLEKS                       R11 R11 K4 ["Scope"]
      145 MOVE                             R12 R1
      146 CALL                             R10 2 1
      147 JUMPIFNOT                        R10 ; [+3]
      148 NAMECALL                         R11 R10 K14 ["Destroy"]
      150 CALL                             R11 1 0
      151 DUPTABLE                         R10 K33 [{["success"] = False, ["cancelled"] = True, ["generationId"]}]
      152 SETTABLEKS                       R7 R10 K12 ["generationId"]
      154 RETURN                           R10 1
      155 GETTABLEKS                       R10 R9 K29 ["status"]
      157 GETUPVAL                         R11 7
      158 GETTABLEKS                       R11 R11 K34 ["Failed"]
      160 JUMPIFNOTEQ                      R10 R11 ; [+36]
      162 GETUPVAL                         R10 0
      163 LOADNIL                          R11
      164 SETTABLE                         R11 R10 R1
      165 GETUPVAL                         R10 1
      166 GETTABLEKS                       R10 R10 K13 ["get"]
      168 GETUPVAL                         R11 2
      169 GETTABLEKS                       R11 R11 K4 ["Scope"]
      171 MOVE                             R12 R1
      172 CALL                             R10 2 1
      173 JUMPIFNOT                        R10 ; [+3]
      174 NAMECALL                         R11 R10 K14 ["Destroy"]
      176 CALL                             R11 1 0
      177 DUPTABLE                         R10 K24 [{["success"] = False, ["generationId"], ["errorType"], ["errorMessage"]}]
      178 SETTABLEKS                       R7 R10 K12 ["generationId"]
      180 GETUPVAL                         R12 6
      181 GETTABLEKS                       R12 R12 K25 ["FFlagPrimGenBetterErrorType"]
      183 JUMPIFNOT                        R12 ; [+3]
      184 GETTABLEKS                       R11 R9 K17 ["errorType"]
      186 JUMP                             ; [+3]
      187 GETUPVAL                         R11 5
      188 GETTABLEKS                       R11 R11 K20 ["General"]
      190 SETTABLEKS                       R11 R10 K17 ["errorType"]
      192 GETTABLEKS                       R11 R9 K35 ["errorText"]
      194 SETTABLEKS                       R11 R10 K18 ["errorMessage"]
      196 RETURN                           R10 1
      197 GETUPVAL                         R12 2
      198 GETTABLEKS                       R12 R12 K5 ["Field"]
      200 GETTABLEKS                       R12 R12 K6 ["Stage"]
      202 GETUPVAL                         R13 3
      203 GETTABLEKS                       R13 R13 K36 ["Inserting"]
      205 NAMECALL                         R10 R4 K8 ["Set"]
      207 CALL                             R10 3 0
      208 GETUPVAL                         R10 8
      209 GETTABLEKS                       R10 R10 K37 ["addWorkspaceModel"]
      211 DUPTABLE                         R11 K40 [{"code", "generationId", "dependencies"}]
      212 GETTABLEKS                       R12 R9 K41 ["luauCode"]
      214 SETTABLEKS                       R12 R11 K38 ["code"]
      216 SETTABLEKS                       R7 R11 K12 ["generationId"]
      218 GETTABLEKS                       R12 R9 K42 ["resolvedDependencies"]
      220 SETTABLEKS                       R12 R11 K39 ["dependencies"]
      222 CALL                             R10 1 1
      223 GETTABLEKS                       R11 R10 K15 ["success"]
      225 JUMPIF                           R11 ; [+44]
      226 GETUPVAL                         R11 9
      227 MOVE                             R12 R10
      228 CALL                             R11 1 1
      229 LOADK                            R12 K43 ["Execute generated code failed with error: %*, generationId=%*"]
      230 GETTABLEKS                       R14 R10 K44 ["error"]
      232 MOVE                             R15 R7
      233 NAMECALL                         R12 R12 K45 ["format"]
      235 CALL                             R12 3 1
      236 GETUPVAL                         R13 5
      237 GETTABLEKS                       R13 R13 K46 ["DmIsUnreachable"]
      239 JUMPIFNOTEQ                      R11 R13 ; [+7]
      241 GETUPVAL                         R13 10
      242 GETTABLEKS                       R14 R10 K44 ["error"]
      244 MOVE                             R15 R12
      245 CALL                             R13 2 1
      246 MOVE                             R12 R13
      247 GETUPVAL                         R13 0
      248 LOADNIL                          R14
      249 SETTABLE                         R14 R13 R1
      250 GETUPVAL                         R13 1
      251 GETTABLEKS                       R13 R13 K13 ["get"]
      253 GETUPVAL                         R14 2
      254 GETTABLEKS                       R14 R14 K4 ["Scope"]
      256 MOVE                             R15 R1
      257 CALL                             R13 2 1
      258 JUMPIFNOT                        R13 ; [+3]
      259 NAMECALL                         R14 R13 K14 ["Destroy"]
      261 CALL                             R14 1 0
      262 DUPTABLE                         R13 K24 [{["success"] = False, ["generationId"], ["errorType"], ["errorMessage"]}]
      263 SETTABLEKS                       R7 R13 K12 ["generationId"]
      265 SETTABLEKS                       R11 R13 K17 ["errorType"]
      267 SETTABLEKS                       R12 R13 K18 ["errorMessage"]
      269 RETURN                           R13 1
      270 GETTABLEKS                       R12 R10 K48 ["resultName"]
      272 ORK                              R11 R12 K47 ["ProceduralObject"]
      273 GETTABLEKS                       R12 R10 K49 ["tag"]
      275 JUMPIF                           R12 ; [+3]
      276 GETUPVAL                         R12 11
      277 MOVE                             R13 R7
      278 CALL                             R12 1 1
      279 GETUPVAL                         R13 4
      280 GETTABLEKS                       R13 R13 K50 ["streamPreviewImagesFromS3"]
      282 MOVE                             R14 R4
      283 GETTABLEKS                       R15 R9 K51 ["scriptPreviewS3Urls"]
      285 CALL                             R13 2 1
      286 JUMPIFNOT                        R13 ; [+4]
      287 GETUPVAL                         R14 0
      288 LOADNIL                          R15
      289 SETTABLE                         R15 R14 R1
      290 JUMP                             ; [+15]
      291 GETUPVAL                         R14 0
      292 LOADNIL                          R15
      293 SETTABLE                         R15 R14 R1
      294 GETUPVAL                         R14 1
      295 GETTABLEKS                       R14 R14 K13 ["get"]
      297 GETUPVAL                         R15 2
      298 GETTABLEKS                       R15 R15 K4 ["Scope"]
      300 MOVE                             R16 R1
      301 CALL                             R14 2 1
      302 JUMPIFNOT                        R14 ; [+3]
      303 NAMECALL                         R15 R14 K14 ["Destroy"]
      305 CALL                             R15 1 0
      306 DUPTABLE                         R14 K52 [{["success"] = True, ["generationId"], ["resultName"], ["tag"]}]
      307 SETTABLEKS                       R7 R14 K12 ["generationId"]
      309 SETTABLEKS                       R11 R14 K48 ["resultName"]
      311 SETTABLEKS                       R12 R14 K49 ["tag"]
      313 RETURN                           R14 1

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
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R1 K0 ["toolUseId"]
        3 LOADB                            R4 1
        4 SETTABLE                         R4 R2 R3
        5 RETURN                           R0 0

PROTO_12:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_13:
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

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["resolveTargetAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 NAMECALL                         R0 R0 K1 ["InvokeAsync"]
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1
       10 GETUPVAL                         R0 3
       11 LOADNIL                          R1
       12 CALL                             R0 1 -1
       13 RETURN                           R0 -1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 DUPTABLE                         R3 K2 [{"toolUseId"}]
        7 GETUPVAL                         R4 3
        8 SETTABLEKS                       R4 R3 K1 ["toolUseId"]
       10 NAMECALL                         R0 R0 K3 ["InvokeAsync"]
       12 CALL                             R0 3 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R0 4
       15 LOADNIL                          R1
       16 DUPTABLE                         R2 K2 [{"toolUseId"}]
       17 GETUPVAL                         R3 3
       18 SETTABLEKS                       R3 R2 K1 ["toolUseId"]
       20 CALL                             R0 2 0
       21 RETURN                           R0 0

PROTO_18:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 GETUPVAL                         R3 3
        7 NAMECALL                         R0 R0 K1 ["InvokeAsync"]
        9 CALL                             R0 3 -1
       10 RETURN                           R0 -1
       11 GETUPVAL                         R0 4
       12 LOADNIL                          R1
       13 GETUPVAL                         R2 3
       14 CALL                             R0 2 -1
       15 RETURN                           R0 -1

PROTO_20:
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
       55 JUMPIFNOT                        R6 ; [+58]
       56 GETUPVAL                         R6 1
       57 GETTABLEKS                       R6 R6 K13 ["EngineFeatureAssistantGen3dImagePreview"]
       59 JUMPIFNOT                        R6 ; [+54]
       60 GETTABLEKS                       R6 R0 K14 ["hintImage"]
       62 JUMPIFNOTEQKNIL                  R6 ; [+51]
       64 GETTABLEKS                       R6 R0 K15 ["attachedImageUri"]
       66 JUMPIFNOTEQKNIL                  R6 ; [+47]
       68 LENGTH                           R6 R3
       69 LOADN                            R7 0
       70 JUMPIFNOTLT                      R7 R6 ; [+43]
       72 GETUPVAL                         R7 1
       73 GETTABLEKS                       R7 R7 K16 ["FFlagPrimGenImageGenPromptTemplateEnabled"]
       75 JUMPIFNOT                        R7 ; [+11]
       76 GETUPVAL                         R6 3
       77 GETTABLEKS                       R6 R6 K17 ["PromptTemplate"]
       79 GETTABLEKS                       R6 R6 K18 ["apply"]
       81 GETUPVAL                         R7 1
       82 GETTABLEKS                       R7 R7 K19 ["FStringPrimGenImageGenPromptTemplate"]
       84 MOVE                             R8 R3
       85 CALL                             R6 2 1
       86 JUMP                             ; [+1]
       87 MOVE                             R6 R3
       88 GETUPVAL                         R7 4
       89 GETTABLEKS                       R7 R7 K20 ["generateAsync"]
       91 DUPTABLE                         R8 K23 [{"textPrompt", "model"}]
       92 SETTABLEKS                       R6 R8 K21 ["textPrompt"]
       94 GETUPVAL                         R9 1
       95 GETTABLEKS                       R9 R9 K24 ["FStringAssistantMeshGenImageGenModelOverride"]
       97 SETTABLEKS                       R9 R8 K22 ["model"]
       99 CALL                             R7 1 1
      100 GETTABLEKS                       R8 R7 K25 ["imageContent"]
      102 JUMPIFNOT                        R8 ; [+5]
      103 GETTABLEKS                       R8 R7 K25 ["imageContent"]
      105 SETTABLEKS                       R8 R0 K14 ["hintImage"]
      107 JUMP                             ; [+6]
      108 GETIMPORT                        R8 K27 [warn]
      110 LOADK                            R9 K28 ["[PrimitiveGen] Single-image generation failed, continuing text-only:"]
      111 GETTABLEKS                       R10 R7 K29 ["errorMessage"]
      113 CALL                             R8 2 0
      114 GETUPVAL                         R6 1
      115 GETTABLEKS                       R6 R6 K30 ["FFlagAssistantGen3DTelemetryV2"]
      117 LENGTH                           R8 R3
      118 LOADN                            R9 0
      119 JUMPIFLT                         R9 R8 ; [+2]
      121 LOADB                            R7 0 +1
      122 LOADB                            R7 1
      123 LOADB                            R8 1
      124 GETTABLEKS                       R9 R0 K15 ["attachedImageUri"]
      126 JUMPIFNOTEQKNIL                  R9 ; [+7]
      128 GETTABLEKS                       R9 R0 K14 ["hintImage"]
      130 JUMPIFNOTEQKNIL                  R9 ; [+2]
      132 LOADB                            R8 0 +1
      133 LOADB                            R8 1
      134 DUPTABLE                         R9 K38 [{"requestId", "conversationId", "toolId", "prompt", "hasImage", "modelFlow", "inputFormat", "segmentationEnabled", "finalParts"}]
      135 JUMPIFNOT                        R1 ; [+3]
      136 GETTABLEKS                       R10 R1 K39 ["messageGuid"]
      138 JUMPIF                           R10 ; [+1]
      139 LOADK                            R10 K0 [""]
      140 SETTABLEKS                       R10 R9 K31 ["requestId"]
      142 JUMPIFNOT                        R1 ; [+3]
      143 GETTABLEKS                       R10 R1 K40 ["sessionId"]
      145 JUMPIF                           R10 ; [+1]
      146 LOADK                            R10 K0 [""]
      147 SETTABLEKS                       R10 R9 K32 ["conversationId"]
      149 MOVE                             R10 R1
      150 JUMPIFNOT                        R10 ; [+2]
      151 GETTABLEKS                       R10 R1 K2 ["toolId"]
      153 SETTABLEKS                       R10 R9 K2 ["toolId"]
      155 SETTABLEKS                       R3 R9 K1 ["prompt"]
      157 SETTABLEKS                       R8 R9 K33 ["hasImage"]
      159 JUMPIFNOT                        R6 ; [+2]
      160 LOADK                            R10 K41 ["procedural"]
      161 JUMP                             ; [+1]
      162 LOADNIL                          R10
      163 SETTABLEKS                       R10 R9 K34 ["modelFlow"]
      165 JUMPIF                           R6 ; [+2]
      166 LOADNIL                          R10
      167 JUMP                             ; [+8]
      168 JUMPIFNOT                        R7 ; [+3]
      169 JUMPIFNOT                        R8 ; [+2]
      170 LOADK                            R10 K42 ["text+image"]
      171 JUMP                             ; [+4]
      172 JUMPIFNOT                        R8 ; [+2]
      173 LOADK                            R10 K43 ["image"]
      174 JUMP                             ; [+1]
      175 LOADK                            R10 K44 ["text"]
      176 SETTABLEKS                       R10 R9 K35 ["inputFormat"]
      178 JUMPIFNOT                        R6 ; [+10]
      179 LOADB                            R10 0
      180 JUMPIFEQKNIL                     R5 ; [+9]
      182 LENGTH                           R11 R5
      183 LOADN                            R12 0
      184 JUMPIFLT                         R12 R11 ; [+2]
      186 LOADB                            R10 0 +1
      187 LOADB                            R10 1
      188 JUMP                             ; [+1]
      189 LOADNIL                          R10
      190 SETTABLEKS                       R10 R9 K36 ["segmentationEnabled"]
      192 JUMPIFNOT                        R6 ; [+2]
      193 MOVE                             R10 R5
      194 JUMP                             ; [+1]
      195 LOADNIL                          R10
      196 SETTABLEKS                       R10 R9 K37 ["finalParts"]
      198 GETUPVAL                         R10 5
      199 GETTABLEKS                       R10 R10 K45 ["EventLogger"]
      201 GETTABLEKS                       R10 R10 K46 ["logPrimitiveGen"]
      203 NEWCLOSURE                       R11 P0
      204 CAPTURE                          VAL R10
      205 CAPTURE                          UPVAL U6
      206 CAPTURE                          VAL R9
      207 CAPTURE                          VAL R3
      208 NEWCLOSURE                       R12 P1
      209 CAPTURE                          VAL R10
      210 CAPTURE                          UPVAL U6
      211 CAPTURE                          VAL R9
      212 CAPTURE                          VAL R3
      213 CAPTURE                          UPVAL U7
      214 GETUPVAL                         R13 1
      215 GETTABLEKS                       R13 R13 K47 ["FFlagAssistantVersionMismatchWarning"]
      217 JUMPIFNOT                        R13 ; [+28]
      218 GETUPVAL                         R13 1
      219 GETTABLEKS                       R13 R13 K48 ["FFlagPrimGenVersionMismatchError"]
      221 JUMPIFNOT                        R13 ; [+24]
      222 GETUPVAL                         R13 8
      223 GETTABLEKS                       R13 R13 K49 ["getVersionMismatch"]
      225 CALL                             R13 0 1
      226 JUMPIFNOT                        R13 ; [+19]
      227 GETUPVAL                         R13 9
      228 GETTABLEKS                       R13 R13 K50 ["PluginVersionMismatch"]
      230 MOVE                             R14 R10
      231 GETUPVAL                         R15 6
      232 GETTABLEKS                       R15 R15 K51 ["join"]
      234 MOVE                             R16 R9
      235 DUPTABLE                         R17 K58 [{["generationId"] = , ["success"] = False, ["errorMessage"] = "The Assistant plugin just got new patch, please restart RobloxStudio.", ["errorCode"], ["prompt"]}]
      236 SETTABLEKS                       R13 R17 K57 ["errorCode"]
      238 SETTABLEKS                       R3 R17 K1 ["prompt"]
      240 CALL                             R15 2 -1
      241 CALL                             R14 -1 0
      242 GETUPVAL                         R14 7
      243 MOVE                             R15 R13
      244 LOADK                            R16 K56 ["The Assistant plugin just got new patch, please restart RobloxStudio."]
      245 CALL                             R14 2 1
      246 LOADNIL                          R13
      247 GETUPVAL                         R14 1
      248 GETTABLEKS                       R14 R14 K59 ["FFlagAssistantUseNewDMNetworking"]
      250 JUMPIFNOT                        R14 ; [+38]
      251 GETIMPORT                        R14 K61 [pcall]
      253 NEWCLOSURE                       R15 P2
      254 CAPTURE                          UPVAL U10
      255 CAPTURE                          UPVAL U11
      256 CALL                             R14 1 2
      257 JUMPIF                           R14 ; [+30]
      258 GETUPVAL                         R16 9
      259 GETTABLEKS                       R16 R16 K62 ["DmHealthChecking"]
      261 GETUPVAL                         R17 12
      262 FASTCALL1                        TOSTRING R15 ; [+3]
      263 MOVE                             R19 R15
      264 GETIMPORT                        R18 K64 [tostring]
      266 CALL                             R18 1 1
      267 CALL                             R17 1 2
      268 MOVE                             R19 R10
      269 GETUPVAL                         R20 6
      270 GETTABLEKS                       R20 R20 K51 ["join"]
      272 MOVE                             R21 R9
      273 DUPTABLE                         R22 K65 [{["generationId"], ["success"] = False, ["errorMessage"], ["errorCode"], ["prompt"]}]
      274 SETTABLEKS                       R18 R22 K52 ["generationId"]
      276 SETTABLEKS                       R17 R22 K29 ["errorMessage"]
      278 SETTABLEKS                       R16 R22 K57 ["errorCode"]
      280 SETTABLEKS                       R3 R22 K1 ["prompt"]
      282 CALL                             R20 2 -1
      283 CALL                             R19 -1 0
      284 GETUPVAL                         R19 7
      285 MOVE                             R20 R16
      286 MOVE                             R21 R17
      287 CALL                             R19 2 1
      288 MOVE                             R13 R15
      289 GETUPVAL                         R14 1
      290 GETTABLEKS                       R14 R14 K48 ["FFlagPrimGenVersionMismatchError"]
      292 JUMPIFNOT                        R14 ; [+48]
      293 GETIMPORT                        R14 K61 [pcall]
      295 NEWCLOSURE                       R15 P3
      296 CAPTURE                          UPVAL U1
      297 CAPTURE                          UPVAL U13
      298 CAPTURE                          REF R13
      299 CAPTURE                          UPVAL U14
      300 CALL                             R14 1 2
      301 JUMPIFNOT                        R14 ; [+3]
      302 GETTABLEKS                       R16 R15 K54 ["success"]
      304 JUMPIF                           R16 ; [+36]
      305 JUMPIFNOT                        R14 ; [+4]
      306 GETTABLEKS                       R17 R15 K67 ["error"]
      308 ORK                              R16 R17 K66 ["Unknown error"]
      309 JUMP                             ; [+5]
      310 FASTCALL1                        TOSTRING R15 ; [+3]
      311 MOVE                             R17 R15
      312 GETIMPORT                        R16 K64 [tostring]
      314 CALL                             R16 1 1
      315 GETUPVAL                         R17 9
      316 GETTABLEKS                       R17 R17 K62 ["DmHealthChecking"]
      318 GETUPVAL                         R18 12
      319 MOVE                             R19 R16
      320 CALL                             R18 1 2
      321 MOVE                             R20 R10
      322 GETUPVAL                         R21 6
      323 GETTABLEKS                       R21 R21 K51 ["join"]
      325 MOVE                             R22 R9
      326 DUPTABLE                         R23 K65 [{["generationId"], ["success"] = False, ["errorMessage"], ["errorCode"], ["prompt"]}]
      327 SETTABLEKS                       R19 R23 K52 ["generationId"]
      329 SETTABLEKS                       R18 R23 K29 ["errorMessage"]
      331 SETTABLEKS                       R17 R23 K57 ["errorCode"]
      333 SETTABLEKS                       R3 R23 K1 ["prompt"]
      335 CALL                             R21 2 -1
      336 CALL                             R20 -1 0
      337 GETUPVAL                         R20 7
      338 MOVE                             R21 R17
      339 MOVE                             R22 R18
      340 CALL                             R20 2 1
      341 GETUPVAL                         R14 1
      342 GETTABLEKS                       R14 R14 K68 ["FIntAssistantPrimitiveGenMaxConcurrentJobs"]
      344 GETUPVAL                         R15 15
      345 JUMPIFNOTLE                      R14 R15 ; [+45]
      347 GETUPVAL                         R15 9
      348 GETTABLEKS                       R15 R15 K69 ["TooManyConcurrentJobs"]
      350 GETUPVAL                         R16 16
      351 LOADK                            R18 K70 ["PrimitiveGen"]
      352 LOADK                            R19 K71 ["MaxConcurrentJobsError"]
      353 DUPTABLE                         R20 K74 [{"activeCount", "maxConcurrentJobs"}]
      354 GETIMPORT                        R21 K77 [string.format]
      356 LOADK                            R22 K78 ["%d"]
      357 GETUPVAL                         R23 15
      358 CALL                             R21 2 1
      359 SETTABLEKS                       R21 R20 K72 ["activeCount"]
      361 GETIMPORT                        R21 K77 [string.format]
      363 LOADK                            R22 K78 ["%d"]
      364 MOVE                             R23 R14
      365 CALL                             R21 2 1
      366 SETTABLEKS                       R21 R20 K73 ["maxConcurrentJobs"]
      368 NAMECALL                         R16 R16 K79 ["getText"]
      370 CALL                             R16 4 2
      371 MOVE                             R18 R10
      372 GETUPVAL                         R19 6
      373 GETTABLEKS                       R19 R19 K51 ["join"]
      375 MOVE                             R20 R9
      376 DUPTABLE                         R21 K65 [{["generationId"], ["success"] = False, ["errorMessage"], ["errorCode"], ["prompt"]}]
      377 SETTABLEKS                       R17 R21 K52 ["generationId"]
      379 SETTABLEKS                       R16 R21 K29 ["errorMessage"]
      381 SETTABLEKS                       R15 R21 K57 ["errorCode"]
      383 SETTABLEKS                       R3 R21 K1 ["prompt"]
      385 CALL                             R19 2 -1
      386 CALL                             R18 -1 0
      387 GETUPVAL                         R18 7
      388 MOVE                             R19 R15
      389 MOVE                             R20 R16
      390 CALL                             R18 2 1
      391 GETUPVAL                         R15 17
      392 GETTABLEKS                       R15 R15 K80 ["resolveImage"]
      394 GETTABLEKS                       R16 R0 K14 ["hintImage"]
      396 CALL                             R15 1 1
      397 JUMPIF                           R15 ; [+11]
      398 GETTABLEKS                       R16 R0 K15 ["attachedImageUri"]
      400 JUMPIF                           R16 ; [+2]
      401 LOADNIL                          R15
      402 JUMP                             ; [+6]
      403 GETUPVAL                         R17 17
      404 GETTABLEKS                       R17 R17 K81 ["getImage"]
      406 MOVE                             R18 R16
      407 CALL                             R17 1 1
      408 MOVE                             R15 R17
      409 GETUPVAL                         R16 15
      410 ADDK                             R16 R16 K82 [1]
      411 SETUPVAL                         R16 15
      412 JUMPIFNOT                        R2 ; [+21]
      413 GETTABLEKS                       R16 R2 K83 ["signal"]
      415 JUMPIFNOT                        R16 ; [+18]
      416 GETTABLEKS                       R16 R2 K83 ["signal"]
      418 GETTABLEKS                       R16 R16 K84 ["abortSignal"]
      420 JUMPIFNOT                        R16 ; [+13]
      421 GETTABLEKS                       R16 R2 K83 ["signal"]
      423 GETTABLEKS                       R16 R16 K84 ["abortSignal"]
      425 NEWCLOSURE                       R18 P4
      426 CAPTURE                          UPVAL U1
      427 CAPTURE                          UPVAL U18
      428 CAPTURE                          REF R13
      429 CAPTURE                          VAL R4
      430 CAPTURE                          UPVAL U19
      431 NAMECALL                         R16 R16 K85 ["Once"]
      433 CALL                             R16 2 0
      434 DUPTABLE                         R16 K87 [{"toolUseId", "prompt", "imageContent", "partNames"}]
      435 SETTABLEKS                       R4 R16 K86 ["toolUseId"]
      437 SETTABLEKS                       R3 R16 K1 ["prompt"]
      439 SETTABLEKS                       R15 R16 K25 ["imageContent"]
      441 SETTABLEKS                       R5 R16 K8 ["partNames"]
      443 GETIMPORT                        R17 K61 [pcall]
      445 NEWCLOSURE                       R18 P5
      446 CAPTURE                          UPVAL U1
      447 CAPTURE                          UPVAL U20
      448 CAPTURE                          REF R13
      449 CAPTURE                          VAL R16
      450 CAPTURE                          UPVAL U21
      451 CALL                             R17 1 2
      452 GETUPVAL                         R19 15
      453 SUBK                             R19 R19 K82 [1]
      454 SETUPVAL                         R19 15
      455 JUMPIF                           R17 ; [+30]
      456 GETUPVAL                         R19 9
      457 GETTABLEKS                       R19 R19 K88 ["General"]
      459 GETUPVAL                         R20 12
      460 FASTCALL1                        TOSTRING R18 ; [+3]
      461 MOVE                             R22 R18
      462 GETIMPORT                        R21 K64 [tostring]
      464 CALL                             R21 1 1
      465 CALL                             R20 1 2
      466 MOVE                             R22 R10
      467 GETUPVAL                         R23 6
      468 GETTABLEKS                       R23 R23 K51 ["join"]
      470 MOVE                             R24 R9
      471 DUPTABLE                         R25 K65 [{["generationId"], ["success"] = False, ["errorMessage"], ["errorCode"], ["prompt"]}]
      472 SETTABLEKS                       R21 R25 K52 ["generationId"]
      474 SETTABLEKS                       R20 R25 K29 ["errorMessage"]
      476 SETTABLEKS                       R19 R25 K57 ["errorCode"]
      478 SETTABLEKS                       R3 R25 K1 ["prompt"]
      480 CALL                             R23 2 -1
      481 CALL                             R22 -1 0
      482 GETUPVAL                         R22 7
      483 MOVE                             R23 R19
      484 MOVE                             R24 R20
      485 CALL                             R22 2 1
      486 GETTABLEKS                       R19 R18 K52 ["generationId"]
      488 GETTABLEKS                       R20 R18 K89 ["cancelled"]
      490 JUMPIFNOT                        R20 ; [+23]
      491 GETUPVAL                         R20 9
      492 GETTABLEKS                       R20 R20 K90 ["CancelByUser"]
      494 MOVE                             R21 R10
      495 GETUPVAL                         R22 6
      496 GETTABLEKS                       R22 R22 K51 ["join"]
      498 MOVE                             R23 R9
      499 DUPTABLE                         R24 K92 [{["generationId"], ["success"] = False, ["errorMessage"] = "Generation cancelled by user", ["errorCode"], ["prompt"]}]
      500 SETTABLEKS                       R19 R24 K52 ["generationId"]
      502 SETTABLEKS                       R20 R24 K57 ["errorCode"]
      504 SETTABLEKS                       R3 R24 K1 ["prompt"]
      506 CALL                             R22 2 -1
      507 CALL                             R21 -1 0
      508 GETUPVAL                         R20 7
      509 GETUPVAL                         R21 9
      510 GETTABLEKS                       R21 R21 K90 ["CancelByUser"]
      512 LOADK                            R22 K91 ["Generation cancelled by user"]
      513 CALL                             R20 2 0
      514 GETTABLEKS                       R20 R18 K54 ["success"]
      516 JUMPIF                           R20 ; [+29]
      517 GETTABLEKS                       R20 R18 K93 ["errorType"]
      519 JUMPIF                           R20 ; [+3]
      520 GETUPVAL                         R20 9
      521 GETTABLEKS                       R20 R20 K88 ["General"]
      523 GETTABLEKS                       R22 R18 K29 ["errorMessage"]
      525 ORK                              R21 R22 K66 ["Unknown error"]
      526 MOVE                             R22 R10
      527 GETUPVAL                         R23 6
      528 GETTABLEKS                       R23 R23 K51 ["join"]
      530 MOVE                             R24 R9
      531 DUPTABLE                         R25 K65 [{["generationId"], ["success"] = False, ["errorMessage"], ["errorCode"], ["prompt"]}]
      532 SETTABLEKS                       R19 R25 K52 ["generationId"]
      534 SETTABLEKS                       R21 R25 K29 ["errorMessage"]
      536 SETTABLEKS                       R20 R25 K57 ["errorCode"]
      538 SETTABLEKS                       R3 R25 K1 ["prompt"]
      540 CALL                             R23 2 -1
      541 CALL                             R22 -1 0
      542 GETUPVAL                         R22 7
      543 MOVE                             R23 R20
      544 MOVE                             R24 R21
      545 CALL                             R22 2 1
      546 FASTCALL2K                       ASSERT R19 K94 ; [+5]
      548 MOVE                             R21 R19
      549 LOADK                            R22 K94 ["Successful generation must return a generationId"]
      550 GETIMPORT                        R20 K96 [assert]
      552 CALL                             R20 2 0
      553 GETTABLEKS                       R21 R18 K98 ["resultName"]
      555 ORK                              R20 R21 K97 ["ProceduralObject"]
      556 GETTABLEKS                       R21 R18 K99 ["tag"]
      558 JUMPIF                           R21 ; [+3]
      559 GETUPVAL                         R21 22
      560 MOVE                             R22 R19
      561 CALL                             R21 1 1
      562 MOVE                             R22 R10
      563 GETUPVAL                         R23 6
      564 GETTABLEKS                       R23 R23 K51 ["join"]
      566 MOVE                             R24 R9
      567 DUPTABLE                         R25 K101 [{["generationId"], ["success"] = True}]
      568 SETTABLEKS                       R19 R25 K52 ["generationId"]
      570 CALL                             R23 2 -1
      571 CALL                             R22 -1 0
      572 DUPTABLE                         R22 K103 [{"tag", "generationId", "generationName"}]
      573 SETTABLEKS                       R21 R22 K99 ["tag"]
      575 SETTABLEKS                       R19 R22 K52 ["generationId"]
      577 SETTABLEKS                       R20 R22 K102 ["generationName"]
      579 CLOSEUPVALS                      R13
      580 RETURN                           R22 1

PROTO_21:
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

PROTO_22:
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

PROTO_23:
        0 DUPTABLE                         R1 K5 [{[1] = True, ["prompt"], ["attachedImageUri"], ["isManualRun"] = True}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K2 ["prompt"]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K3 ["attachedImageUri"]
        7 DUPTABLE                         R2 K8 [{"name", "arguments"}]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K9 ["PrimitiveGen"]
       11 SETTABLEKS                       R3 R2 K6 ["name"]
       13 SETTABLEKS                       R1 R2 K7 ["arguments"]
       15 RETURN                           R2 1

PROTO_24:
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
       65 GETUPVAL                         R4 6
       66 GETTABLEKS                       R4 R4 K18 ["FFlagAssistantGen3dRequirePromptToGenerate"]
       68 JUMPIFNOT                        R4 ; [+41]
       69 GETUPVAL                         R3 7
       70 DUPTABLE                         R4 K21 [{"kind", "rules"}]
       71 GETUPVAL                         R5 8
       72 GETTABLEKS                       R5 R5 K22 ["Any"]
       74 SETTABLEKS                       R5 R4 K19 ["kind"]
       76 NEWTABLE                         R5 0 2
       78 GETUPVAL                         R6 7
       79 DUPTABLE                         R7 K24 [{"kind", "field"}]
       80 GETUPVAL                         R8 8
       81 GETTABLEKS                       R8 R8 K25 ["NonEmpty"]
       83 SETTABLEKS                       R8 R7 K19 ["kind"]
       85 GETUPVAL                         R8 0
       86 GETTABLEKS                       R8 R8 K4 ["Prompt"]
       88 SETTABLEKS                       R8 R7 K23 ["field"]
       90 CALL                             R6 1 1
       91 GETUPVAL                         R7 7
       92 DUPTABLE                         R8 K24 [{"kind", "field"}]
       93 GETUPVAL                         R9 8
       94 GETTABLEKS                       R9 R9 K25 ["NonEmpty"]
       96 SETTABLEKS                       R9 R8 K19 ["kind"]
       98 GETUPVAL                         R9 0
       99 GETTABLEKS                       R9 R9 K6 ["HintImage"]
      101 SETTABLEKS                       R9 R8 K23 ["field"]
      103 CALL                             R7 1 -1
      104 SETLIST                          R5 R6 -1 [1]
      106 SETTABLEKS                       R5 R4 K20 ["rules"]
      108 CALL                             R3 1 1
      109 JUMP                             ; [+1]
      110 LOADNIL                          R3
      111 SETTABLEKS                       R3 R2 K16 ["validation"]
      113 DUPTABLE                         R3 K27 [{"name", "arguments"}]
      114 GETUPVAL                         R4 9
      115 GETTABLEKS                       R4 R4 K28 ["AskInput"]
      117 SETTABLEKS                       R4 R3 K0 ["name"]
      119 SETTABLEKS                       R2 R3 K26 ["arguments"]
      121 RETURN                           R3 1

PROTO_25:
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

PROTO_26:
        0 JUMPIFNOT                        R1 ; [+6]
        1 LENGTH                           R3 R1
        2 LOADN                            R4 0
        3 JUMPIFNOTLT                      R4 R3 ; [+3]
        5 GETTABLEN                        R2 R1 1
        6 JUMP                             ; [+1]
        7 LOADNIL                          R2
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K0 ["FFlagPrimGenSchemaSelector"]
       11 JUMPIF                           R3 ; [+9]
       12 NEWTABLE                         R3 0 1
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R2
       17 CAPTURE                          UPVAL U1
       18 SETLIST                          R3 R4 1 [1]
       20 RETURN                           R3 1
       21 NEWCLOSURE                       R3 P1
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R2
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          UPVAL U0
       29 CAPTURE                          UPVAL U6
       30 CAPTURE                          UPVAL U7
       31 CAPTURE                          UPVAL U1
       32 NEWCLOSURE                       R4 P2
       33 CAPTURE                          UPVAL U8
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          UPVAL U9
       37 CAPTURE                          UPVAL U1
       38 NEWTABLE                         R5 0 2
       40 MOVE                             R6 R3
       41 MOVE                             R7 R4
       42 SETLIST                          R5 R6 2 [1]
       44 RETURN                           R5 1

PROTO_27:
        0 LOADK                            R0 K0 ["Creates procedural 3D objects from primitive parts with configurable attributes. Supports reference images."]
        1 RETURN                           R0 1

PROTO_28:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_29:
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
       22 LOADNIL                          R7
       23 LOADNIL                          R8
       24 LOADNIL                          R9
       25 LOADNIL                          R10
       26 LOADNIL                          R11
       27 LOADNIL                          R12
       28 GETUPVAL                         R13 5
       29 GETTABLEKS                       R13 R13 K3 ["FFlagAssistantUseNewDMNetworking"]
       31 JUMPIFNOT                        R13 ; [+64]
       32 GETUPVAL                         R13 11
       33 GETTABLEKS                       R13 R13 K4 ["invoke"]
       35 MOVE                             R14 R2
       36 LOADK                            R15 K5 ["PrimitiveGenTool.generateAsync"]
       37 CALL                             R13 2 1
       38 MOVE                             R10 R13
       39 GETUPVAL                         R13 11
       40 GETTABLEKS                       R13 R13 K4 ["invoke"]
       42 MOVE                             R14 R2
       43 LOADK                            R15 K6 ["PrimitiveGenTool.cancelGeneration"]
       44 CALL                             R13 2 1
       45 MOVE                             R11 R13
       46 GETUPVAL                         R13 11
       47 GETTABLEKS                       R13 R13 K4 ["invoke"]
       49 MOVE                             R14 R2
       50 LOADK                            R15 K7 ["PrimitiveGenTool.pingAssetDmAsync"]
       51 CALL                             R13 2 1
       52 MOVE                             R12 R13
       53 GETUPVAL                         R13 12
       54 GETTABLEKS                       R13 R13 K8 ["new"]
       56 CALL                             R13 0 1
       57 NAMECALL                         R14 R2 K9 ["GetIdentity"]
       59 CALL                             R14 1 1
       60 GETUPVAL                         R15 13
       61 GETTABLEKS                       R15 R15 K10 ["Identity"]
       63 GETTABLEKS                       R15 R15 K11 ["Standalone"]
       65 JUMPIFEQ                         R14 R15 ; [+24]
       67 NEWCLOSURE                       R18 P1
       68 CAPTURE                          VAL R6
       69 NAMECALL                         R16 R10 K12 ["Connect"]
       71 CALL                             R16 2 -1
       72 NAMECALL                         R14 R13 K13 ["Add"]
       74 CALL                             R14 -1 0
       75 NEWCLOSURE                       R18 P2
       76 CAPTURE                          VAL R4
       77 NAMECALL                         R16 R11 K12 ["Connect"]
       79 CALL                             R16 2 -1
       80 NAMECALL                         R14 R13 K13 ["Add"]
       82 CALL                             R14 -1 0
       83 DUPCLOSURE                       R18 K14 [PROTO_8]
       84 NAMECALL                         R16 R12 K12 ["Connect"]
       86 CALL                             R16 2 -1
       87 NAMECALL                         R14 R13 K13 ["Add"]
       89 CALL                             R14 -1 0
       90 NEWCLOSURE                       R16 P4
       91 CAPTURE                          VAL R13
       92 NAMECALL                         R14 R3 K15 ["Once"]
       94 CALL                             R14 2 0
       95 JUMP                             ; [+22]
       96 GETTABLEKS                       R13 R0 K16 ["networkingOLD"]
       98 LOADK                            R16 K17 ["PrimitiveGenTool_generateAsync"]
       99 NEWCLOSURE                       R17 P5
      100 CAPTURE                          VAL R6
      101 NAMECALL                         R14 R13 K18 ["OnHostInvokeAsync"]
      103 CALL                             R14 3 1
      104 MOVE                             R7 R14
      105 LOADK                            R16 K19 ["PrimitiveGenTool_cancelGeneration"]
      106 NEWCLOSURE                       R17 P6
      107 CAPTURE                          VAL R4
      108 NAMECALL                         R14 R13 K18 ["OnHostInvokeAsync"]
      110 CALL                             R14 3 1
      111 MOVE                             R8 R14
      112 LOADK                            R16 K20 ["PrimitiveGenTool_pingAssetDmAsync"]
      113 DUPCLOSURE                       R17 K21 [PROTO_12]
      114 NAMECALL                         R14 R13 K18 ["OnHostInvokeAsync"]
      116 CALL                             R14 3 1
      117 MOVE                             R9 R14
      118 NEWCLOSURE                       R13 P8
      119 CAPTURE                          UPVAL U14
      120 CAPTURE                          UPVAL U5
      121 CAPTURE                          UPVAL U15
      122 CAPTURE                          UPVAL U16
      123 CAPTURE                          UPVAL U17
      124 CAPTURE                          VAL R1
      125 CAPTURE                          UPVAL U18
      126 CAPTURE                          UPVAL U19
      127 CAPTURE                          UPVAL U20
      128 CAPTURE                          UPVAL U4
      129 CAPTURE                          UPVAL U21
      130 CAPTURE                          VAL R2
      131 CAPTURE                          UPVAL U9
      132 CAPTURE                          REF R12
      133 CAPTURE                          REF R9
      134 CAPTURE                          REF R5
      135 CAPTURE                          UPVAL U22
      136 CAPTURE                          UPVAL U23
      137 CAPTURE                          REF R11
      138 CAPTURE                          REF R8
      139 CAPTURE                          REF R10
      140 CAPTURE                          REF R7
      141 CAPTURE                          UPVAL U10
      142 NEWCLOSURE                       R14 P9
      143 CAPTURE                          UPVAL U24
      144 CAPTURE                          VAL R13
      145 CAPTURE                          UPVAL U25
      146 CAPTURE                          UPVAL U4
      147 CAPTURE                          UPVAL U26
      148 GETIMPORT                        R15 K24 [table.concat]
      150 NEWTABLE                         R16 0 12
      152 LOADK                            R17 K25 ["Creates 3D objects built from primitive parts (blocks, spheres, cylinders, wedges) as a ProceduralModel with configurable attributes."]
      153 LOADK                            R18 K26 ["Use this tool when the user wants to:"]
      154 LOADK                            R19 K27 ["- Create or build a 3D object, model, character, creature, vehicle, building, scenery, or any physical thing in the workspace"]
      155 LOADK                            R20 K28 ["- Generate something from a reference image"]
      156 LOADK                            R21 K29 ["- Create an object with tunable parameters (e.g. \"add attributes to control head size, arm length, color\")"]
      157 LOADK                            R22 K30 ["- Build anything described as \"procedural\", \"parametric\", \"configurable\", or \"with attributes\""]
      158 LOADK                            R23 K31 [""]
      159 LOADK                            R24 K32 ["The output is a ProceduralModel: a scripted model whose appearance is controlled by user-editable attributes (like size, color, proportions). The user can tweak these attributes after generation without regenerating."]
      160 LOADK                            R25 K31 [""]
      161 LOADK                            R26 K33 ["The tool automatically inserts the generated model into the workspace. You do not need to run any code afterward."]
      162 LOADK                            R27 K31 [""]
      163 LOADK                            R28 K34 ["CRITICAL: This is a long-running generative tool. Default to calling it with the '%*' argument set to true, which runs the generation in the background and returns immediately with a jobId. Handle other tasks while the generation is in-progress, and only call the '%*' tool when you absolutely need the result."]
      164 GETUPVAL                         R30 27
      165 GETTABLEKS                       R30 R30 K35 ["ASYNC_ARG"]
      167 GETUPVAL                         R31 28
      168 GETTABLEKS                       R31 R31 K36 ["JobWait"]
      170 NAMECALL                         R28 R28 K37 ["format"]
      172 CALL                             R28 3 1
      173 SETLIST                          R16 R17 12 [1]
      175 LOADK                            R17 K38 ["\n"]
      176 CALL                             R15 2 1
      177 GETUPVAL                         R16 29
      178 GETTABLEKS                       R16 R16 K39 ["define"]
      180 CALL                             R16 0 1
      181 GETUPVAL                         R18 28
      182 GETTABLEKS                       R18 R18 K40 ["PrimitiveGen"]
      184 NAMECALL                         R16 R16 K41 ["setName"]
      186 CALL                             R16 2 1
      187 MOVE                             R18 R15
      188 NAMECALL                         R16 R16 K42 ["setDescription"]
      190 CALL                             R16 2 1
      191 LOADK                            R18 K43 ["prompt"]
      192 DUPTABLE                         R19 K48 [{["type"] = "string", ["description"] = "A text description of what to create and what attributes to expose.\nPass the user's own words. If they mention specific configurable properties (e.g. \"head size\", \"arm length\", \"wheel count\"), include those in the prompt so the generated model exposes them as editable attributes.\nIf an image is attached and the user gave no text description, pass an empty string.\nDo NOT describe or interpret the attached image — only pass the user's own words.\n"}]
      193 NAMECALL                         R16 R16 K49 ["addArgument"]
      195 CALL                             R16 3 1
      196 LOADK                            R18 K50 ["attachedImageUri"]
      197 DUPTABLE                         R19 K52 [{["type"] = "string", ["description"] = "The image URI (IMAGEID_<id>) from the user's attached image. Always pass this when the user provides a reference image."}]
      198 NAMECALL                         R16 R16 K53 ["addOptionalArgument"]
      200 CALL                             R16 3 1
      201 LOADK                            R18 K54 ["partNames"]
      202 DUPTABLE                         R19 K55 [{["type"] = "string", ["description"]}]
      203 GETUPVAL                         R21 5
      204 GETTABLEKS                       R21 R21 K56 ["FFlagAssistantGen3dAutoSegmentation"]
      206 JUMPIFNOT                        R21 ; [+2]
      207 LOADK                            R20 K57 ["List of part names that define the structure of the generated model. Accepts a comma-separated string (e.g. 'body, left wheel, right wheel, door') or a JSON array of strings (e.g. ['body', 'left wheel', 'right wheel', 'door']). Required when segmentation='explicit'. Maximum 8 parts (excess will be truncated)."]
      208 JUMP                             ; [+1]
      209 LOADK                            R20 K58 ["List of part names that define the structure of the generated model. Accepts a comma-separated string (e.g. 'body, left wheel, right wheel, door') or a JSON array of strings. When provided, the model will be built around these named parts."]
      210 SETTABLEKS                       R20 R19 K46 ["description"]
      212 NAMECALL                         R16 R16 K53 ["addOptionalArgument"]
      214 CALL                             R16 3 1
      215 GETUPVAL                         R17 5
      216 GETTABLEKS                       R17 R17 K56 ["FFlagAssistantGen3dAutoSegmentation"]
      218 JUMPIFNOT                        R17 ; [+10]
      219 LOADK                            R19 K59 ["segmentation"]
      220 DUPTABLE                         R20 K62 [{["type"] = "string", ["enum"], ["description"] = "Controls how the model is broken into parts. Pick based on the user's wording:\n- Omit (or \"auto\"): user did NOT mention parts/segmentation (e.g. \"generate a car\"). The tool will derive parts automatically via an internal LLM call.\n- \"none\": user explicitly asked for no parts / a single piece (e.g. \"generate a car with no parts\", \"as one mesh\", \"single piece\").\n- \"explicit\": user named specific parts (e.g. \"a car with body and wheels\"). You MUST also pass partNames with the user's listed parts (max 8).\n"}]
      221 GETUPVAL                         R21 30
      222 GETTABLEKS                       R21 R21 K63 ["SegmentationArgValues"]
      224 SETTABLEKS                       R21 R20 K60 ["enum"]
      226 NAMECALL                         R17 R16 K53 ["addOptionalArgument"]
      228 CALL                             R17 3 0
      229 MOVE                             R19 R14
      230 NAMECALL                         R17 R16 K64 ["setHandler"]
      232 CALL                             R17 2 1
      233 DUPTABLE                         R19 K72 [{["title"] = "Primitive Generation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      234 NAMECALL                         R17 R17 K73 ["setAnnotations"]
      236 CALL                             R17 2 1
      237 NAMECALL                         R17 R17 K74 ["build"]
      239 CALL                             R17 1 1
      240 LOADB                            R18 1
      241 NEWCLOSURE                       R19 P10
      242 CAPTURE                          UPVAL U5
      243 CAPTURE                          UPVAL U28
      244 CAPTURE                          UPVAL U31
      245 CAPTURE                          UPVAL U32
      246 CAPTURE                          REF R18
      247 CAPTURE                          UPVAL U33
      248 CAPTURE                          UPVAL U34
      249 CAPTURE                          UPVAL U35
      250 CAPTURE                          UPVAL U36
      251 CAPTURE                          UPVAL U23
      252 DUPTABLE                         R20 K78 [{"command", "getDescription", "runToolChain"}]
      253 GETUPVAL                         R21 28
      254 GETTABLEKS                       R21 R21 K40 ["PrimitiveGen"]
      256 SETTABLEKS                       R21 R20 K75 ["command"]
      258 DUPCLOSURE                       R21 K79 [PROTO_27]
      259 SETTABLEKS                       R21 R20 K76 ["getDescription"]
      261 SETTABLEKS                       R19 R20 K77 ["runToolChain"]
      263 DUPTABLE                         R21 K84 [{"definition", "slashCommands", "getPreExecuteWarning", "toolCallOptions"}]
      264 SETTABLEKS                       R17 R21 K80 ["definition"]
      266 NEWTABLE                         R22 0 1
      268 MOVE                             R23 R20
      269 SETLIST                          R22 R23 1 [1]
      271 SETTABLEKS                       R22 R21 K81 ["slashCommands"]
      273 DUPCLOSURE                       R22 K85 [PROTO_28]
      274 SETTABLEKS                       R22 R21 K82 ["getPreExecuteWarning"]
      276 DUPTABLE                         R22 K88 [{["resetTimeoutOnProgress"] = True}]
      277 SETTABLEKS                       R22 R21 K83 ["toolCallOptions"]
      279 CLOSEUPVALS                      R5
      280 RETURN                           R21 1

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
       17 GETTABLEKS                       R4 R2 K11 ["DMNetworking"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R2 K12 ["Dash"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R6 R2 K13 ["Gen3dCore"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K10 [require]
       32 GETTABLEKS                       R7 R2 K14 ["ModelContextProtocol"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K10 [require]
       37 GETTABLEKS                       R8 R0 K15 ["Util"]
       39 GETTABLEKS                       R8 R8 K16 ["AskInput"]
       41 GETTABLEKS                       R8 R8 K17 ["AskInputTypes"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K10 [require]
       46 GETTABLEKS                       R9 R0 K15 ["Util"]
       48 GETTABLEKS                       R9 R9 K18 ["Jobs"]
       50 GETTABLEKS                       R9 R9 K19 ["AsyncToolRunner"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K10 [require]
       55 GETIMPORT                        R10 K1 [script]
       57 GETTABLEKS                       R10 R10 K20 ["Backend"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K10 [require]
       62 GETTABLEKS                       R11 R0 K15 ["Util"]
       64 GETTABLEKS                       R11 R11 K21 ["Bin"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R11 K10 [require]
       69 GETTABLEKS                       R12 R0 K22 ["Flags"]
       71 CALL                             R11 1 1
       72 GETIMPORT                        R12 K10 [require]
       74 GETTABLEKS                       R13 R0 K15 ["Util"]
       76 GETTABLEKS                       R13 R13 K23 ["ImageContentStore"]
       78 CALL                             R12 1 1
       79 GETIMPORT                        R13 K10 [require]
       81 GETTABLEKS                       R14 R0 K15 ["Util"]
       83 GETTABLEKS                       R14 R14 K24 ["InstanceChannel"]
       85 GETTABLEKS                       R14 R14 K24 ["InstanceChannel"]
       87 CALL                             R13 1 1
       88 GETIMPORT                        R14 K10 [require]
       90 GETTABLEKS                       R15 R0 K15 ["Util"]
       92 GETTABLEKS                       R15 R15 K25 ["MeshGen"]
       94 GETTABLEKS                       R15 R15 K26 ["MeshGenSchemaSelector"]
       96 CALL                             R14 1 1
       97 GETIMPORT                        R15 K10 [require]
       99 GETIMPORT                        R16 K1 [script]
      101 GETTABLEKS                       R16 R16 K27 ["ModelBuilder"]
      103 CALL                             R15 1 1
      104 GETIMPORT                        R16 K10 [require]
      106 GETTABLEKS                       R17 R0 K15 ["Util"]
      108 GETTABLEKS                       R17 R17 K28 ["NetworkingIdentity"]
      110 CALL                             R16 1 1
      111 GETIMPORT                        R17 K10 [require]
      113 GETTABLEKS                       R18 R0 K15 ["Util"]
      115 GETTABLEKS                       R18 R18 K29 ["PrimitiveGen"]
      117 GETTABLEKS                       R18 R18 K30 ["PrimitiveGenChannel"]
      119 CALL                             R17 1 1
      120 GETIMPORT                        R18 K10 [require]
      122 GETTABLEKS                       R19 R0 K15 ["Util"]
      124 GETTABLEKS                       R19 R19 K29 ["PrimitiveGen"]
      126 GETTABLEKS                       R19 R19 K31 ["PrimitiveGenTypes"]
      128 CALL                             R18 1 1
      129 GETIMPORT                        R19 K10 [require]
      131 GETTABLEKS                       R20 R0 K15 ["Util"]
      133 GETTABLEKS                       R20 R20 K32 ["Gen3dUtils"]
      135 GETTABLEKS                       R20 R20 K33 ["SingleImageGenerator"]
      137 CALL                             R19 1 1
      138 GETIMPORT                        R20 K10 [require]
      140 GETTABLEKS                       R21 R0 K15 ["Util"]
      142 GETTABLEKS                       R21 R21 K34 ["SlashCommandConfiguration"]
      144 CALL                             R20 1 1
      145 GETIMPORT                        R21 K10 [require]
      147 GETTABLEKS                       R22 R0 K35 ["Tools"]
      149 GETTABLEKS                       R22 R22 K36 ["ToolTypes"]
      151 CALL                             R21 1 1
      152 GETIMPORT                        R22 K10 [require]
      154 GETTABLEKS                       R23 R0 K15 ["Util"]
      156 GETTABLEKS                       R23 R23 K37 ["ToolUtils"]
      158 CALL                             R22 1 1
      159 GETIMPORT                        R23 K10 [require]
      161 GETTABLEKS                       R24 R0 K38 ["Resources"]
      163 GETTABLEKS                       R24 R24 K39 ["Localization"]
      165 GETTABLEKS                       R24 R24 K40 ["Translator"]
      167 CALL                             R23 1 1
      168 GETIMPORT                        R24 K10 [require]
      170 GETTABLEKS                       R25 R0 K41 ["Types"]
      172 CALL                             R24 1 1
      173 GETIMPORT                        R25 K10 [require]
      175 GETTABLEKS                       R26 R0 K15 ["Util"]
      177 GETTABLEKS                       R26 R26 K42 ["VersionResolver"]
      179 CALL                             R25 1 1
      180 GETTABLEKS                       R26 R3 K43 ["Remote"]
      182 GETTABLEKS                       R27 R6 K15 ["Util"]
      184 GETTABLEKS                       R27 R27 K44 ["ToolBuilder"]
      186 GETTABLEKS                       R28 R6 K15 ["Util"]
      188 GETTABLEKS                       R28 R28 K45 ["ToolResult"]
      190 GETTABLEKS                       R29 R21 K46 ["ToolNames"]
      192 GETTABLEKS                       R30 R5 K47 ["SegmentationEnums"]
      194 GETTABLEKS                       R31 R7 K48 ["INPUT_TYPE"]
      196 GETTABLEKS                       R32 R7 K49 ["RULE_KIND"]
      198 GETTABLEKS                       R33 R7 K50 ["asRule"]
      200 GETTABLEKS                       R34 R20 K51 ["Configs"]
      202 GETTABLEKS                       R34 R34 K29 ["PrimitiveGen"]
      204 GETTABLEKS                       R35 R34 K52 ["row"]
      206 GETTABLEKS                       R36 R18 K53 ["getLinkTag"]
      208 GETTABLEKS                       R37 R9 K54 ["ErrorType"]
      210 GETTABLEKS                       R38 R9 K55 ["ResultStatus"]
      212 GETTABLEKS                       R39 R9 K56 ["GenerationStages"]
      214 GETTABLEKS                       R40 R9 K57 ["raiseGenerationError"]
      216 GETTABLEKS                       R41 R9 K58 ["asGenerationError"]
      218 GETTABLEKS                       R42 R9 K59 ["getAssetDmUnreachableMessage"]
      220 GETTABLEKS                       R43 R9 K60 ["getExecutionErrorCode"]
      222 DUPCLOSURE                       R44 K61 [PROTO_0]
      223 CAPTURE                          VAL R12
      224 DUPCLOSURE                       R45 K62 [PROTO_29]
      225 CAPTURE                          VAL R13
      226 CAPTURE                          VAL R17
      227 CAPTURE                          VAL R39
      228 CAPTURE                          VAL R9
      229 CAPTURE                          VAL R37
      230 CAPTURE                          VAL R11
      231 CAPTURE                          VAL R38
      232 CAPTURE                          VAL R15
      233 CAPTURE                          VAL R43
      234 CAPTURE                          VAL R42
      235 CAPTURE                          VAL R36
      236 CAPTURE                          VAL R26
      237 CAPTURE                          VAL R10
      238 CAPTURE                          VAL R3
      239 CAPTURE                          VAL R1
      240 CAPTURE                          VAL R14
      241 CAPTURE                          VAL R5
      242 CAPTURE                          VAL R19
      243 CAPTURE                          VAL R4
      244 CAPTURE                          VAL R40
      245 CAPTURE                          VAL R25
      246 CAPTURE                          VAL R16
      247 CAPTURE                          VAL R23
      248 CAPTURE                          VAL R12
      249 CAPTURE                          VAL R22
      250 CAPTURE                          VAL R41
      251 CAPTURE                          VAL R28
      252 CAPTURE                          VAL R8
      253 CAPTURE                          VAL R29
      254 CAPTURE                          VAL R27
      255 CAPTURE                          VAL R30
      256 CAPTURE                          VAL R35
      257 CAPTURE                          VAL R31
      258 CAPTURE                          VAL R34
      259 CAPTURE                          VAL R33
      260 CAPTURE                          VAL R32
      261 CAPTURE                          VAL R7
      262 RETURN                           R45 1
