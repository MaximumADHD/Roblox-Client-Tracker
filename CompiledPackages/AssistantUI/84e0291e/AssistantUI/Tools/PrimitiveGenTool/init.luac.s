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
       52 GETTABLEKS                       R6 R0 K12 ["hintImage"]
       54 GETUPVAL                         R7 1
       55 GETTABLEKS                       R7 R7 K13 ["FFlagAssistantMcpImageGenShortcut"]
       57 JUMPIFNOT                        R7 ; [+62]
       58 GETUPVAL                         R7 1
       59 GETTABLEKS                       R7 R7 K14 ["EngineFeatureAssistantGen3dImagePreview"]
       61 JUMPIFNOT                        R7 ; [+58]
       62 JUMPIFNOTEQKNIL                  R6 ; [+57]
       64 GETTABLEKS                       R7 R0 K15 ["attachedImageUri"]
       66 JUMPIFNOTEQKNIL                  R7 ; [+53]
       68 LENGTH                           R7 R3
       69 LOADN                            R8 0
       70 JUMPIFNOTLT                      R8 R7 ; [+49]
       72 GETUPVAL                         R8 1
       73 GETTABLEKS                       R8 R8 K16 ["FFlagPrimGenImageGenPromptTemplateEnabled"]
       75 JUMPIFNOT                        R8 ; [+11]
       76 GETUPVAL                         R7 3
       77 GETTABLEKS                       R7 R7 K17 ["PromptTemplate"]
       79 GETTABLEKS                       R7 R7 K18 ["apply"]
       81 GETUPVAL                         R8 1
       82 GETTABLEKS                       R8 R8 K19 ["FStringPrimGenImageGenPromptTemplate"]
       84 MOVE                             R9 R3
       85 CALL                             R7 2 1
       86 JUMP                             ; [+1]
       87 MOVE                             R7 R3
       88 GETUPVAL                         R8 4
       89 GETTABLEKS                       R8 R8 K20 ["generateAsync"]
       91 DUPTABLE                         R9 K23 [{"textPrompt", "model"}]
       92 SETTABLEKS                       R7 R9 K21 ["textPrompt"]
       94 GETUPVAL                         R10 1
       95 GETTABLEKS                       R10 R10 K24 ["FStringAssistantMeshGenImageGenModelOverride"]
       97 SETTABLEKS                       R10 R9 K22 ["model"]
       99 CALL                             R8 1 1
      100 GETTABLEKS                       R9 R8 K25 ["imageContent"]
      102 JUMPIFNOT                        R9 ; [+11]
      103 GETTABLEKS                       R6 R8 K25 ["imageContent"]
      105 GETUPVAL                         R9 1
      106 GETTABLEKS                       R9 R9 K26 ["FFlagAssistantIncorrectAttachPrimGenImageToInput"]
      108 JUMPIF                           R9 ; [+11]
      109 GETTABLEKS                       R9 R8 K25 ["imageContent"]
      111 SETTABLEKS                       R9 R0 K12 ["hintImage"]
      113 JUMP                             ; [+6]
      114 GETIMPORT                        R9 K28 [warn]
      116 LOADK                            R10 K29 ["[PrimitiveGen] Single-image generation failed, continuing text-only:"]
      117 GETTABLEKS                       R11 R8 K30 ["errorMessage"]
      119 CALL                             R9 2 0
      120 GETUPVAL                         R7 1
      121 GETTABLEKS                       R7 R7 K31 ["FFlagAssistantGen3DTelemetryV2"]
      123 LENGTH                           R9 R3
      124 LOADN                            R10 0
      125 JUMPIFLT                         R10 R9 ; [+2]
      127 LOADB                            R8 0 +1
      128 LOADB                            R8 1
      129 LOADB                            R9 1
      130 GETTABLEKS                       R10 R0 K15 ["attachedImageUri"]
      132 JUMPIFNOTEQKNIL                  R10 ; [+5]
      134 JUMPIFNOTEQKNIL                  R6 ; [+2]
      136 LOADB                            R9 0 +1
      137 LOADB                            R9 1
      138 DUPTABLE                         R10 K39 [{"requestId", "conversationId", "toolId", "prompt", "hasImage", "modelFlow", "inputFormat", "segmentationEnabled", "finalParts"}]
      139 JUMPIFNOT                        R1 ; [+3]
      140 GETTABLEKS                       R11 R1 K40 ["messageGuid"]
      142 JUMPIF                           R11 ; [+1]
      143 LOADK                            R11 K0 [""]
      144 SETTABLEKS                       R11 R10 K32 ["requestId"]
      146 JUMPIFNOT                        R1 ; [+3]
      147 GETTABLEKS                       R11 R1 K41 ["sessionId"]
      149 JUMPIF                           R11 ; [+1]
      150 LOADK                            R11 K0 [""]
      151 SETTABLEKS                       R11 R10 K33 ["conversationId"]
      153 MOVE                             R11 R1
      154 JUMPIFNOT                        R11 ; [+2]
      155 GETTABLEKS                       R11 R1 K2 ["toolId"]
      157 SETTABLEKS                       R11 R10 K2 ["toolId"]
      159 SETTABLEKS                       R3 R10 K1 ["prompt"]
      161 SETTABLEKS                       R9 R10 K34 ["hasImage"]
      163 JUMPIFNOT                        R7 ; [+2]
      164 LOADK                            R11 K42 ["procedural"]
      165 JUMP                             ; [+1]
      166 LOADNIL                          R11
      167 SETTABLEKS                       R11 R10 K35 ["modelFlow"]
      169 JUMPIF                           R7 ; [+2]
      170 LOADNIL                          R11
      171 JUMP                             ; [+8]
      172 JUMPIFNOT                        R8 ; [+3]
      173 JUMPIFNOT                        R9 ; [+2]
      174 LOADK                            R11 K43 ["text+image"]
      175 JUMP                             ; [+4]
      176 JUMPIFNOT                        R9 ; [+2]
      177 LOADK                            R11 K44 ["image"]
      178 JUMP                             ; [+1]
      179 LOADK                            R11 K45 ["text"]
      180 SETTABLEKS                       R11 R10 K36 ["inputFormat"]
      182 JUMPIFNOT                        R7 ; [+10]
      183 LOADB                            R11 0
      184 JUMPIFEQKNIL                     R5 ; [+9]
      186 LENGTH                           R12 R5
      187 LOADN                            R13 0
      188 JUMPIFLT                         R13 R12 ; [+2]
      190 LOADB                            R11 0 +1
      191 LOADB                            R11 1
      192 JUMP                             ; [+1]
      193 LOADNIL                          R11
      194 SETTABLEKS                       R11 R10 K37 ["segmentationEnabled"]
      196 JUMPIFNOT                        R7 ; [+2]
      197 MOVE                             R11 R5
      198 JUMP                             ; [+1]
      199 LOADNIL                          R11
      200 SETTABLEKS                       R11 R10 K38 ["finalParts"]
      202 GETUPVAL                         R11 5
      203 GETTABLEKS                       R11 R11 K46 ["EventLogger"]
      205 GETTABLEKS                       R11 R11 K47 ["logPrimitiveGen"]
      207 NEWCLOSURE                       R12 P0
      208 CAPTURE                          VAL R11
      209 CAPTURE                          UPVAL U6
      210 CAPTURE                          VAL R10
      211 CAPTURE                          VAL R3
      212 NEWCLOSURE                       R13 P1
      213 CAPTURE                          VAL R11
      214 CAPTURE                          UPVAL U6
      215 CAPTURE                          VAL R10
      216 CAPTURE                          VAL R3
      217 CAPTURE                          UPVAL U7
      218 GETUPVAL                         R14 1
      219 GETTABLEKS                       R14 R14 K48 ["FFlagAssistantVersionMismatchWarning"]
      221 JUMPIFNOT                        R14 ; [+28]
      222 GETUPVAL                         R14 1
      223 GETTABLEKS                       R14 R14 K49 ["FFlagPrimGenVersionMismatchError"]
      225 JUMPIFNOT                        R14 ; [+24]
      226 GETUPVAL                         R14 8
      227 GETTABLEKS                       R14 R14 K50 ["getVersionMismatch"]
      229 CALL                             R14 0 1
      230 JUMPIFNOT                        R14 ; [+19]
      231 GETUPVAL                         R14 9
      232 GETTABLEKS                       R14 R14 K51 ["PluginVersionMismatch"]
      234 MOVE                             R15 R11
      235 GETUPVAL                         R16 6
      236 GETTABLEKS                       R16 R16 K52 ["join"]
      238 MOVE                             R17 R10
      239 DUPTABLE                         R18 K59 [{["generationId"] = , ["success"] = False, ["errorMessage"] = "The Assistant plugin just got new patch, please restart RobloxStudio.", ["errorCode"], ["prompt"]}]
      240 SETTABLEKS                       R14 R18 K58 ["errorCode"]
      242 SETTABLEKS                       R3 R18 K1 ["prompt"]
      244 CALL                             R16 2 -1
      245 CALL                             R15 -1 0
      246 GETUPVAL                         R15 7
      247 MOVE                             R16 R14
      248 LOADK                            R17 K57 ["The Assistant plugin just got new patch, please restart RobloxStudio."]
      249 CALL                             R15 2 1
      250 LOADNIL                          R14
      251 GETUPVAL                         R15 1
      252 GETTABLEKS                       R15 R15 K60 ["FFlagAssistantUseNewDMNetworking"]
      254 JUMPIFNOT                        R15 ; [+38]
      255 GETIMPORT                        R15 K62 [pcall]
      257 NEWCLOSURE                       R16 P2
      258 CAPTURE                          UPVAL U10
      259 CAPTURE                          UPVAL U11
      260 CALL                             R15 1 2
      261 JUMPIF                           R15 ; [+30]
      262 GETUPVAL                         R17 9
      263 GETTABLEKS                       R17 R17 K63 ["DmHealthChecking"]
      265 GETUPVAL                         R18 12
      266 FASTCALL1                        TOSTRING R16 ; [+3]
      267 MOVE                             R20 R16
      268 GETIMPORT                        R19 K65 [tostring]
      270 CALL                             R19 1 1
      271 CALL                             R18 1 2
      272 MOVE                             R20 R11
      273 GETUPVAL                         R21 6
      274 GETTABLEKS                       R21 R21 K52 ["join"]
      276 MOVE                             R22 R10
      277 DUPTABLE                         R23 K66 [{["generationId"], ["success"] = False, ["errorMessage"], ["errorCode"], ["prompt"]}]
      278 SETTABLEKS                       R19 R23 K53 ["generationId"]
      280 SETTABLEKS                       R18 R23 K30 ["errorMessage"]
      282 SETTABLEKS                       R17 R23 K58 ["errorCode"]
      284 SETTABLEKS                       R3 R23 K1 ["prompt"]
      286 CALL                             R21 2 -1
      287 CALL                             R20 -1 0
      288 GETUPVAL                         R20 7
      289 MOVE                             R21 R17
      290 MOVE                             R22 R18
      291 CALL                             R20 2 1
      292 MOVE                             R14 R16
      293 GETUPVAL                         R15 1
      294 GETTABLEKS                       R15 R15 K49 ["FFlagPrimGenVersionMismatchError"]
      296 JUMPIFNOT                        R15 ; [+48]
      297 GETIMPORT                        R15 K62 [pcall]
      299 NEWCLOSURE                       R16 P3
      300 CAPTURE                          UPVAL U1
      301 CAPTURE                          UPVAL U13
      302 CAPTURE                          REF R14
      303 CAPTURE                          UPVAL U14
      304 CALL                             R15 1 2
      305 JUMPIFNOT                        R15 ; [+3]
      306 GETTABLEKS                       R17 R16 K55 ["success"]
      308 JUMPIF                           R17 ; [+36]
      309 JUMPIFNOT                        R15 ; [+4]
      310 GETTABLEKS                       R18 R16 K68 ["error"]
      312 ORK                              R17 R18 K67 ["Unknown error"]
      313 JUMP                             ; [+5]
      314 FASTCALL1                        TOSTRING R16 ; [+3]
      315 MOVE                             R18 R16
      316 GETIMPORT                        R17 K65 [tostring]
      318 CALL                             R17 1 1
      319 GETUPVAL                         R18 9
      320 GETTABLEKS                       R18 R18 K63 ["DmHealthChecking"]
      322 GETUPVAL                         R19 12
      323 MOVE                             R20 R17
      324 CALL                             R19 1 2
      325 MOVE                             R21 R11
      326 GETUPVAL                         R22 6
      327 GETTABLEKS                       R22 R22 K52 ["join"]
      329 MOVE                             R23 R10
      330 DUPTABLE                         R24 K66 [{["generationId"], ["success"] = False, ["errorMessage"], ["errorCode"], ["prompt"]}]
      331 SETTABLEKS                       R20 R24 K53 ["generationId"]
      333 SETTABLEKS                       R19 R24 K30 ["errorMessage"]
      335 SETTABLEKS                       R18 R24 K58 ["errorCode"]
      337 SETTABLEKS                       R3 R24 K1 ["prompt"]
      339 CALL                             R22 2 -1
      340 CALL                             R21 -1 0
      341 GETUPVAL                         R21 7
      342 MOVE                             R22 R18
      343 MOVE                             R23 R19
      344 CALL                             R21 2 1
      345 GETUPVAL                         R15 1
      346 GETTABLEKS                       R15 R15 K69 ["FIntAssistantPrimitiveGenMaxConcurrentJobs"]
      348 GETUPVAL                         R16 15
      349 JUMPIFNOTLE                      R15 R16 ; [+45]
      351 GETUPVAL                         R16 9
      352 GETTABLEKS                       R16 R16 K70 ["TooManyConcurrentJobs"]
      354 GETUPVAL                         R17 16
      355 LOADK                            R19 K71 ["PrimitiveGen"]
      356 LOADK                            R20 K72 ["MaxConcurrentJobsError"]
      357 DUPTABLE                         R21 K75 [{"activeCount", "maxConcurrentJobs"}]
      358 GETIMPORT                        R22 K78 [string.format]
      360 LOADK                            R23 K79 ["%d"]
      361 GETUPVAL                         R24 15
      362 CALL                             R22 2 1
      363 SETTABLEKS                       R22 R21 K73 ["activeCount"]
      365 GETIMPORT                        R22 K78 [string.format]
      367 LOADK                            R23 K79 ["%d"]
      368 MOVE                             R24 R15
      369 CALL                             R22 2 1
      370 SETTABLEKS                       R22 R21 K74 ["maxConcurrentJobs"]
      372 NAMECALL                         R17 R17 K80 ["getText"]
      374 CALL                             R17 4 2
      375 MOVE                             R19 R11
      376 GETUPVAL                         R20 6
      377 GETTABLEKS                       R20 R20 K52 ["join"]
      379 MOVE                             R21 R10
      380 DUPTABLE                         R22 K66 [{["generationId"], ["success"] = False, ["errorMessage"], ["errorCode"], ["prompt"]}]
      381 SETTABLEKS                       R18 R22 K53 ["generationId"]
      383 SETTABLEKS                       R17 R22 K30 ["errorMessage"]
      385 SETTABLEKS                       R16 R22 K58 ["errorCode"]
      387 SETTABLEKS                       R3 R22 K1 ["prompt"]
      389 CALL                             R20 2 -1
      390 CALL                             R19 -1 0
      391 GETUPVAL                         R19 7
      392 MOVE                             R20 R16
      393 MOVE                             R21 R17
      394 CALL                             R19 2 1
      395 GETUPVAL                         R16 17
      396 GETTABLEKS                       R16 R16 K81 ["resolveImage"]
      398 MOVE                             R17 R6
      399 CALL                             R16 1 1
      400 JUMPIF                           R16 ; [+11]
      401 GETTABLEKS                       R17 R0 K15 ["attachedImageUri"]
      403 JUMPIF                           R17 ; [+2]
      404 LOADNIL                          R16
      405 JUMP                             ; [+6]
      406 GETUPVAL                         R18 17
      407 GETTABLEKS                       R18 R18 K82 ["getImage"]
      409 MOVE                             R19 R17
      410 CALL                             R18 1 1
      411 MOVE                             R16 R18
      412 GETUPVAL                         R17 15
      413 ADDK                             R17 R17 K83 [1]
      414 SETUPVAL                         R17 15
      415 JUMPIFNOT                        R2 ; [+21]
      416 GETTABLEKS                       R17 R2 K84 ["signal"]
      418 JUMPIFNOT                        R17 ; [+18]
      419 GETTABLEKS                       R17 R2 K84 ["signal"]
      421 GETTABLEKS                       R17 R17 K85 ["abortSignal"]
      423 JUMPIFNOT                        R17 ; [+13]
      424 GETTABLEKS                       R17 R2 K84 ["signal"]
      426 GETTABLEKS                       R17 R17 K85 ["abortSignal"]
      428 NEWCLOSURE                       R19 P4
      429 CAPTURE                          UPVAL U1
      430 CAPTURE                          UPVAL U18
      431 CAPTURE                          REF R14
      432 CAPTURE                          VAL R4
      433 CAPTURE                          UPVAL U19
      434 NAMECALL                         R17 R17 K86 ["Once"]
      436 CALL                             R17 2 0
      437 DUPTABLE                         R17 K88 [{"toolUseId", "prompt", "imageContent", "partNames"}]
      438 SETTABLEKS                       R4 R17 K87 ["toolUseId"]
      440 SETTABLEKS                       R3 R17 K1 ["prompt"]
      442 SETTABLEKS                       R16 R17 K25 ["imageContent"]
      444 SETTABLEKS                       R5 R17 K8 ["partNames"]
      446 GETIMPORT                        R18 K62 [pcall]
      448 NEWCLOSURE                       R19 P5
      449 CAPTURE                          UPVAL U1
      450 CAPTURE                          UPVAL U20
      451 CAPTURE                          REF R14
      452 CAPTURE                          VAL R17
      453 CAPTURE                          UPVAL U21
      454 CALL                             R18 1 2
      455 GETUPVAL                         R20 15
      456 SUBK                             R20 R20 K83 [1]
      457 SETUPVAL                         R20 15
      458 JUMPIF                           R18 ; [+30]
      459 GETUPVAL                         R20 9
      460 GETTABLEKS                       R20 R20 K89 ["General"]
      462 GETUPVAL                         R21 12
      463 FASTCALL1                        TOSTRING R19 ; [+3]
      464 MOVE                             R23 R19
      465 GETIMPORT                        R22 K65 [tostring]
      467 CALL                             R22 1 1
      468 CALL                             R21 1 2
      469 MOVE                             R23 R11
      470 GETUPVAL                         R24 6
      471 GETTABLEKS                       R24 R24 K52 ["join"]
      473 MOVE                             R25 R10
      474 DUPTABLE                         R26 K66 [{["generationId"], ["success"] = False, ["errorMessage"], ["errorCode"], ["prompt"]}]
      475 SETTABLEKS                       R22 R26 K53 ["generationId"]
      477 SETTABLEKS                       R21 R26 K30 ["errorMessage"]
      479 SETTABLEKS                       R20 R26 K58 ["errorCode"]
      481 SETTABLEKS                       R3 R26 K1 ["prompt"]
      483 CALL                             R24 2 -1
      484 CALL                             R23 -1 0
      485 GETUPVAL                         R23 7
      486 MOVE                             R24 R20
      487 MOVE                             R25 R21
      488 CALL                             R23 2 1
      489 GETTABLEKS                       R20 R19 K53 ["generationId"]
      491 GETTABLEKS                       R21 R19 K90 ["cancelled"]
      493 JUMPIFNOT                        R21 ; [+23]
      494 GETUPVAL                         R21 9
      495 GETTABLEKS                       R21 R21 K91 ["CancelByUser"]
      497 MOVE                             R22 R11
      498 GETUPVAL                         R23 6
      499 GETTABLEKS                       R23 R23 K52 ["join"]
      501 MOVE                             R24 R10
      502 DUPTABLE                         R25 K93 [{["generationId"], ["success"] = False, ["errorMessage"] = "Generation cancelled by user", ["errorCode"], ["prompt"]}]
      503 SETTABLEKS                       R20 R25 K53 ["generationId"]
      505 SETTABLEKS                       R21 R25 K58 ["errorCode"]
      507 SETTABLEKS                       R3 R25 K1 ["prompt"]
      509 CALL                             R23 2 -1
      510 CALL                             R22 -1 0
      511 GETUPVAL                         R21 7
      512 GETUPVAL                         R22 9
      513 GETTABLEKS                       R22 R22 K91 ["CancelByUser"]
      515 LOADK                            R23 K92 ["Generation cancelled by user"]
      516 CALL                             R21 2 0
      517 GETTABLEKS                       R21 R19 K55 ["success"]
      519 JUMPIF                           R21 ; [+29]
      520 GETTABLEKS                       R21 R19 K94 ["errorType"]
      522 JUMPIF                           R21 ; [+3]
      523 GETUPVAL                         R21 9
      524 GETTABLEKS                       R21 R21 K89 ["General"]
      526 GETTABLEKS                       R23 R19 K30 ["errorMessage"]
      528 ORK                              R22 R23 K67 ["Unknown error"]
      529 MOVE                             R23 R11
      530 GETUPVAL                         R24 6
      531 GETTABLEKS                       R24 R24 K52 ["join"]
      533 MOVE                             R25 R10
      534 DUPTABLE                         R26 K66 [{["generationId"], ["success"] = False, ["errorMessage"], ["errorCode"], ["prompt"]}]
      535 SETTABLEKS                       R20 R26 K53 ["generationId"]
      537 SETTABLEKS                       R22 R26 K30 ["errorMessage"]
      539 SETTABLEKS                       R21 R26 K58 ["errorCode"]
      541 SETTABLEKS                       R3 R26 K1 ["prompt"]
      543 CALL                             R24 2 -1
      544 CALL                             R23 -1 0
      545 GETUPVAL                         R23 7
      546 MOVE                             R24 R21
      547 MOVE                             R25 R22
      548 CALL                             R23 2 1
      549 FASTCALL2K                       ASSERT R20 K95 ; [+5]
      551 MOVE                             R22 R20
      552 LOADK                            R23 K95 ["Successful generation must return a generationId"]
      553 GETIMPORT                        R21 K97 [assert]
      555 CALL                             R21 2 0
      556 GETTABLEKS                       R22 R19 K99 ["resultName"]
      558 ORK                              R21 R22 K98 ["ProceduralObject"]
      559 GETTABLEKS                       R22 R19 K100 ["tag"]
      561 JUMPIF                           R22 ; [+3]
      562 GETUPVAL                         R22 22
      563 MOVE                             R23 R20
      564 CALL                             R22 1 1
      565 MOVE                             R23 R11
      566 GETUPVAL                         R24 6
      567 GETTABLEKS                       R24 R24 K52 ["join"]
      569 MOVE                             R25 R10
      570 DUPTABLE                         R26 K102 [{["generationId"], ["success"] = True}]
      571 SETTABLEKS                       R20 R26 K53 ["generationId"]
      573 CALL                             R24 2 -1
      574 CALL                             R23 -1 0
      575 DUPTABLE                         R23 K104 [{"tag", "generationId", "generationName"}]
      576 SETTABLEKS                       R22 R23 K100 ["tag"]
      578 SETTABLEKS                       R20 R23 K53 ["generationId"]
      580 SETTABLEKS                       R21 R23 K103 ["generationName"]
      582 CLOSEUPVALS                      R14
      583 RETURN                           R23 1

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
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+2]
        2 LOADK                            R1 K0 [""]
        3 RETURN                           R1 1
        4 MOVE                             R1 R0
        5 RETURN                           R1 1

PROTO_24:
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

PROTO_25:
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

PROTO_26:
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

PROTO_27:
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

PROTO_28:
        0 LOADK                            R0 K0 ["Creates procedural 3D objects from primitive parts with configurable attributes. Supports reference images."]
        1 RETURN                           R0 1

PROTO_29:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_30:
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
      148 GETUPVAL                         R15 5
      149 GETTABLEKS                       R15 R15 K22 ["FFlagAssistantToolSkillDescriptions"]
      151 NEWCLOSURE                       R16 P10
      152 CAPTURE                          VAL R15
      153 JUMPIFNOT                        R15 ; [+2]
      154 LOADK                            R17 K23 ["Read the rbx-generate-procedural-model skill to learn the details of this tool before calling it."]
      155 JUMP                             ; [+29]
      156 GETIMPORT                        R17 K26 [table.concat]
      158 NEWTABLE                         R18 0 12
      160 LOADK                            R19 K27 ["Creates 3D objects built from primitive parts (blocks, spheres, cylinders, wedges) as a ProceduralModel with configurable attributes."]
      161 LOADK                            R20 K28 ["Use this tool when the user wants to:"]
      162 LOADK                            R21 K29 ["- Create or build a 3D object, model, character, creature, vehicle, building, scenery, or any physical thing in the workspace"]
      163 LOADK                            R22 K30 ["- Generate something from a reference image"]
      164 LOADK                            R23 K31 ["- Create an object with tunable parameters (e.g. \"add attributes to control head size, arm length, color\")"]
      165 LOADK                            R24 K32 ["- Build anything described as \"procedural\", \"parametric\", \"configurable\", or \"with attributes\""]
      166 LOADK                            R25 K33 [""]
      167 LOADK                            R26 K34 ["The output is a ProceduralModel: a scripted model whose appearance is controlled by user-editable attributes (like size, color, proportions). The user can tweak these attributes after generation without regenerating."]
      168 LOADK                            R27 K33 [""]
      169 LOADK                            R28 K35 ["The tool automatically inserts the generated model into the workspace. You do not need to run any code afterward."]
      170 LOADK                            R29 K33 [""]
      171 LOADK                            R30 K36 ["CRITICAL: This is a long-running generative tool. Default to calling it with the '%*' argument set to true, which runs the generation in the background and returns immediately with a jobId. Handle other tasks while the generation is in-progress, and only call the '%*' tool when you absolutely need the result."]
      172 GETUPVAL                         R32 27
      173 GETTABLEKS                       R32 R32 K37 ["ASYNC_ARG"]
      175 GETUPVAL                         R33 28
      176 GETTABLEKS                       R33 R33 K38 ["JobWait"]
      178 NAMECALL                         R30 R30 K39 ["format"]
      180 CALL                             R30 3 1
      181 SETLIST                          R18 R19 12 [1]
      183 LOADK                            R19 K40 ["\n"]
      184 CALL                             R17 2 1
      185 GETUPVAL                         R18 29
      186 GETTABLEKS                       R18 R18 K41 ["define"]
      188 CALL                             R18 0 1
      189 GETUPVAL                         R20 28
      190 GETTABLEKS                       R20 R20 K42 ["PrimitiveGen"]
      192 NAMECALL                         R18 R18 K43 ["setName"]
      194 CALL                             R18 2 1
      195 MOVE                             R20 R17
      196 NAMECALL                         R18 R18 K44 ["setDescription"]
      198 CALL                             R18 2 1
      199 LOADK                            R20 K45 ["prompt"]
      200 DUPTABLE                         R21 K49 [{["type"] = "string", ["description"]}]
      201 JUMPIFNOT                        R15 ; [+2]
      202 LOADK                            R22 K33 [""]
      203 JUMP                             ; [+1]
      204 LOADK                            R22 K50 ["A text description of what to create and what attributes to expose.\nPass the user's own words. If they mention specific configurable properties (e.g. \"head size\", \"arm length\", \"wheel count\"), include those in the prompt so the generated model exposes them as editable attributes.\nIf an image is attached and the user gave no text description, pass an empty string.\nDo NOT describe or interpret the attached image — only pass the user's own words.\n"]
      205 SETTABLEKS                       R22 R21 K48 ["description"]
      207 NAMECALL                         R18 R18 K51 ["addArgument"]
      209 CALL                             R18 3 1
      210 LOADK                            R20 K52 ["attachedImageUri"]
      211 DUPTABLE                         R21 K49 [{["type"] = "string", ["description"]}]
      212 JUMPIFNOT                        R15 ; [+2]
      213 LOADK                            R22 K33 [""]
      214 JUMP                             ; [+1]
      215 LOADK                            R22 K53 ["The image URI (IMAGEID_<id>) from the user's attached image. Always pass this when the user provides a reference image."]
      216 SETTABLEKS                       R22 R21 K48 ["description"]
      218 NAMECALL                         R18 R18 K54 ["addOptionalArgument"]
      220 CALL                             R18 3 1
      221 LOADK                            R20 K55 ["partNames"]
      222 DUPTABLE                         R21 K49 [{["type"] = "string", ["description"]}]
      223 GETUPVAL                         R24 5
      224 GETTABLEKS                       R24 R24 K56 ["FFlagAssistantGen3dAutoSegmentation"]
      226 JUMPIFNOT                        R24 ; [+2]
      227 LOADK                            R23 K57 ["List of part names that define the structure of the generated model. Accepts a comma-separated string (e.g. 'body, left wheel, right wheel, door') or a JSON array of strings (e.g. ['body', 'left wheel', 'right wheel', 'door']). Required when segmentation='explicit'. Maximum 8 parts (excess will be truncated)."]
      228 JUMP                             ; [+1]
      229 LOADK                            R23 K58 ["List of part names that define the structure of the generated model. Accepts a comma-separated string (e.g. 'body, left wheel, right wheel, door') or a JSON array of strings. When provided, the model will be built around these named parts."]
      230 JUMPIFNOT                        R15 ; [+2]
      231 LOADK                            R22 K33 [""]
      232 JUMP                             ; [+1]
      233 MOVE                             R22 R23
      234 SETTABLEKS                       R22 R21 K48 ["description"]
      236 NAMECALL                         R18 R18 K54 ["addOptionalArgument"]
      238 CALL                             R18 3 1
      239 GETUPVAL                         R19 5
      240 GETTABLEKS                       R19 R19 K56 ["FFlagAssistantGen3dAutoSegmentation"]
      242 JUMPIFNOT                        R19 ; [+16]
      243 LOADK                            R21 K59 ["segmentation"]
      244 DUPTABLE                         R22 K61 [{["type"] = "string", ["enum"], ["description"]}]
      245 GETUPVAL                         R23 30
      246 GETTABLEKS                       R23 R23 K62 ["SegmentationArgValues"]
      248 SETTABLEKS                       R23 R22 K60 ["enum"]
      250 JUMPIFNOT                        R15 ; [+2]
      251 LOADK                            R23 K33 [""]
      252 JUMP                             ; [+1]
      253 LOADK                            R23 K63 ["Controls how the model is broken into parts. Pick based on the user's wording:\n- Omit (or \"auto\"): user did NOT mention parts/segmentation (e.g. \"generate a car\"). The tool will derive parts automatically via an internal LLM call.\n- \"none\": user explicitly asked for no parts / a single piece (e.g. \"generate a car with no parts\", \"as one mesh\", \"single piece\").\n- \"explicit\": user named specific parts (e.g. \"a car with body and wheels\"). You MUST also pass partNames with the user's listed parts (max 8).\n"]
      254 SETTABLEKS                       R23 R22 K48 ["description"]
      256 NAMECALL                         R19 R18 K54 ["addOptionalArgument"]
      258 CALL                             R19 3 0
      259 MOVE                             R21 R14
      260 NAMECALL                         R19 R18 K64 ["setHandler"]
      262 CALL                             R19 2 1
      263 LOADK                            R21 K65 ["Primitive Generation"]
      264 NAMECALL                         R19 R19 K66 ["setTitle"]
      266 CALL                             R19 2 1
      267 DUPTABLE                         R21 K74 [{["title"] = "Primitive Generation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = True}]
      268 NAMECALL                         R19 R19 K75 ["setAnnotations"]
      270 CALL                             R19 2 1
      271 NAMECALL                         R19 R19 K76 ["build"]
      273 CALL                             R19 1 1
      274 LOADB                            R20 1
      275 NEWCLOSURE                       R21 P11
      276 CAPTURE                          UPVAL U5
      277 CAPTURE                          UPVAL U28
      278 CAPTURE                          UPVAL U31
      279 CAPTURE                          UPVAL U32
      280 CAPTURE                          REF R20
      281 CAPTURE                          UPVAL U33
      282 CAPTURE                          UPVAL U34
      283 CAPTURE                          UPVAL U35
      284 CAPTURE                          UPVAL U36
      285 CAPTURE                          UPVAL U23
      286 DUPTABLE                         R22 K80 [{"command", "getDescription", "runToolChain"}]
      287 GETUPVAL                         R23 28
      288 GETTABLEKS                       R23 R23 K42 ["PrimitiveGen"]
      290 SETTABLEKS                       R23 R22 K77 ["command"]
      292 DUPCLOSURE                       R23 K81 [PROTO_28]
      293 SETTABLEKS                       R23 R22 K78 ["getDescription"]
      295 SETTABLEKS                       R21 R22 K79 ["runToolChain"]
      297 DUPTABLE                         R23 K86 [{"definition", "slashCommands", "getPreExecuteWarning", "toolCallOptions"}]
      298 SETTABLEKS                       R19 R23 K82 ["definition"]
      300 NEWTABLE                         R24 0 1
      302 MOVE                             R25 R22
      303 SETLIST                          R24 R25 1 [1]
      305 SETTABLEKS                       R24 R23 K83 ["slashCommands"]
      307 DUPCLOSURE                       R24 K87 [PROTO_29]
      308 SETTABLEKS                       R24 R23 K84 ["getPreExecuteWarning"]
      310 DUPTABLE                         R24 K89 [{["resetTimeoutOnProgress"] = True}]
      311 SETTABLEKS                       R24 R23 K85 ["toolCallOptions"]
      313 CLOSEUPVALS                      R5
      314 RETURN                           R23 1

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
      222 DUPCLOSURE                       R45 K62 [PROTO_30]
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
