PROTO_0:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 LOADK                            R3 K0 ["Model"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+10]
        5 GETIMPORT                        R1 K3 [error]
        7 LOADK                            R2 K4 ["AvatarGen: expected the generated avatar to be a Model, got a %*"]
        8 GETTABLEKS                       R4 R0 K5 ["ClassName"]
       10 NAMECALL                         R2 R2 K6 ["format"]
       12 CALL                             R2 2 1
       13 LOADN                            R3 0
       14 CALL                             R1 2 0
       15 GETTABLEKS                       R1 R0 K7 ["PrimaryPart"]
       17 JUMPIFNOTEQKNIL                  R1 ; [+19]
       19 LOADK                            R3 K8 ["HumanoidRootPart"]
       20 NAMECALL                         R1 R0 K9 ["FindFirstChild"]
       22 CALL                             R1 2 1
       23 JUMPIFEQKNIL                     R1 ; [+6]
       25 LOADK                            R4 K10 ["BasePart"]
       26 NAMECALL                         R2 R1 K1 ["IsA"]
       28 CALL                             R2 2 1
       29 JUMPIF                           R2 ; [+5]
       30 GETIMPORT                        R2 K3 [error]
       32 LOADK                            R3 K11 ["AvatarGen: generated avatar is missing a HumanoidRootPart"]
       33 LOADN                            R4 0
       34 CALL                             R2 2 0
       35 SETTABLEKS                       R1 R0 K7 ["PrimaryPart"]
       37 RETURN                           R0 1

PROTO_2:
        0 GETIMPORT                        R2 K2 [string.gsub]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K3 ["%s+"]
        4 LOADK                            R5 K4 [" "]
        5 CALL                             R2 3 1
        6 LENGTH                           R3 R2
        7 JUMPIFNOTLE                      R3 R1 ; [+2]
        9 RETURN                           R2 1
       10 ADDK                             R3 R1 K5 [1]
       11 LOADN                            R4 1
       12 JUMPIFNOTLT                      R4 R3 ; [+16]
       14 FASTCALL2                        STRING_BYTE R2 R3 ; [+5]
       16 MOVE                             R5 R2
       17 MOVE                             R6 R3
       18 GETIMPORT                        R4 K7 [string.byte]
       20 CALL                             R4 2 1
       21 LOADN                            R5 128
       22 JUMPIFLT                         R4 R5 ; [+6]
       24 LOADN                            R5 192
       25 JUMPIFLE                         R5 R4 ; [+3]
       27 SUBK                             R3 R3 K5 [1]
       28 JUMPBACK                         ; [-18]
       29 LOADN                            R6 1
       30 SUBK                             R7 R3 K5 [1]
       31 FASTCALL3                        STRING_SUB R2 R6 R7
       33 MOVE                             R5 R2
       34 GETIMPORT                        R4 K9 [string.sub]
       36 CALL                             R4 3 1
       37 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADN                            R3 100
        3 CALL                             R1 2 1
        4 GETIMPORT                        R3 K2 [string.match]
        6 MOVE                             R4 R1
        7 LOADK                            R5 K3 ["^(.+) %(%d+%)$"]
        8 CALL                             R3 2 1
        9 OR                               R2 R3 R1
       10 LOADN                            R3 0
       11 GETUPVAL                         R4 1
       12 MOVE                             R6 R1
       13 NAMECALL                         R4 R4 K4 ["FindFirstChild"]
       15 CALL                             R4 2 1
       16 JUMPIFEQKNIL                     R4 ; [+15]
       18 ADDK                             R3 R3 K5 [1]
       19 LOADK                            R4 K6 [" (%*)"]
       20 MOVE                             R6 R3
       21 NAMECALL                         R4 R4 K7 ["format"]
       23 CALL                             R4 2 1
       24 GETUPVAL                         R5 0
       25 MOVE                             R6 R2
       26 LENGTH                           R8 R4
       27 SUBRK                            R7 K8 [100] R8
       28 CALL                             R5 2 1
       29 MOVE                             R6 R4
       30 CONCAT                           R1 R5 R6
       31 JUMPBACK                         ; [-21]
       32 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R1 ; [+8]
        4 GETIMPORT                        R1 K2 [print]
        6 LOADK                            R2 K3 ["[AvatarGen] %*"]
        7 MOVE                             R4 R0
        8 NAMECALL                         R2 R2 K4 ["format"]
       10 CALL                             R2 2 1
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_5:
        0 LOADK                            R2 K0 ["%* started"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["FFlagDebugLogAssistantUI"]
        8 JUMPIFNOT                        R3 ; [+8]
        9 GETIMPORT                        R3 K4 [print]
       11 LOADK                            R4 K5 ["[AvatarGen] %*"]
       12 MOVE                             R6 R2
       13 NAMECALL                         R4 R4 K1 ["format"]
       15 CALL                             R4 2 1
       16 CALL                             R3 1 0
       17 GETIMPORT                        R2 K8 [os.clock]
       19 CALL                             R2 0 1
       20 MOVE                             R4 R1
       21 FASTPCALL                        pcall 1 ; [+2]
       22 GETIMPORT                        R3 K10 [pcall]
       24 CALL                             R3 1 2
       25 GETIMPORT                        R5 K12 [string.format]
       27 LOADK                            R6 K13 ["%.1fs"]
       28 GETIMPORT                        R8 K8 [os.clock]
       30 CALL                             R8 0 1
       31 SUB                              R7 R8 R2
       32 CALL                             R5 2 1
       33 JUMPIF                           R3 ; [+29]
       34 LOADK                            R6 K14 ["%* failed after %*: %*"]
       35 MOVE                             R8 R0
       36 MOVE                             R9 R5
       37 MOVE                             R10 R4
       38 NAMECALL                         R6 R6 K1 ["format"]
       40 CALL                             R6 4 1
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R7 R7 K2 ["FFlagDebugLogAssistantUI"]
       44 JUMPIFNOT                        R7 ; [+8]
       45 GETIMPORT                        R7 K4 [print]
       47 LOADK                            R8 K5 ["[AvatarGen] %*"]
       48 MOVE                             R10 R6
       49 NAMECALL                         R8 R8 K1 ["format"]
       51 CALL                             R8 2 1
       52 CALL                             R7 1 0
       53 GETIMPORT                        R6 K16 [error]
       55 LOADK                            R7 K17 ["AvatarGen: %* failed: %*"]
       56 MOVE                             R9 R0
       57 MOVE                             R10 R4
       58 NAMECALL                         R7 R7 K1 ["format"]
       60 CALL                             R7 3 1
       61 LOADN                            R8 0
       62 CALL                             R6 2 0
       63 LOADK                            R6 K18 ["%* finished in %*"]
       64 MOVE                             R8 R0
       65 MOVE                             R9 R5
       66 NAMECALL                         R6 R6 K1 ["format"]
       68 CALL                             R6 3 1
       69 GETUPVAL                         R7 0
       70 GETTABLEKS                       R7 R7 K2 ["FFlagDebugLogAssistantUI"]
       72 JUMPIFNOT                        R7 ; [+8]
       73 GETIMPORT                        R7 K4 [print]
       75 LOADK                            R8 K5 ["[AvatarGen] %*"]
       76 MOVE                             R10 R6
       77 NAMECALL                         R8 R8 K1 ["format"]
       79 CALL                             R8 2 1
       80 CALL                             R7 1 0
       81 RETURN                           R4 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["loadGeneratedAvatarAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["generationId"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["uploadAndInsertAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isUploadAndInsertEnabled"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+12]
        5 GETUPVAL                         R1 1
        6 LOADK                            R2 K1 ["local load (generationId=%*)"]
        7 GETTABLEKS                       R4 R0 K2 ["generationId"]
        9 NAMECALL                         R2 R2 K3 ["format"]
       11 CALL                             R2 2 1
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R0
       15 CALL                             R1 2 1
       16 RETURN                           R1 1
       17 GETTABLEKS                       R1 R0 K4 ["jobId"]
       19 JUMPIFNOTEQKNIL                  R1 ; [+6]
       21 GETIMPORT                        R2 K6 [error]
       23 LOADK                            R3 K7 ["AvatarGen: 3D generation did not report a job id to upload"]
       24 LOADN                            R4 0
       25 CALL                             R2 2 0
       26 GETUPVAL                         R2 1
       27 LOADK                            R3 K8 ["upload and insert (jobId=%*)"]
       28 MOVE                             R5 R1
       29 NAMECALL                         R3 R3 K3 ["format"]
       31 CALL                             R3 2 1
       32 NEWCLOSURE                       R4 P1
       33 CAPTURE                          UPVAL U0
       34 CAPTURE                          VAL R1
       35 CALL                             R2 2 1
       36 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["generate2DPreviewAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["appendTags"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K2 ["textPrompt"]
        9 GETUPVAL                         R3 3
       10 CALL                             R1 2 -1
       11 CALL                             R0 -1 -1
       12 RETURN                           R0 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["generate3DAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["isCanceled"]
        2 JUMPIF                           R1 ; [+1]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["resolve"]
        7 MOVE                             R3 R0
        8 CALL                             R2 1 1
        9 LOADK                            R3 K2 ["options: pipelineName=%* dynamicHead=%* r15Plus=%*"]
       10 GETTABLEKS                       R5 R2 K3 ["pipelineName"]
       12 GETTABLEKS                       R6 R2 K4 ["dynamicHead"]
       14 GETTABLEKS                       R7 R2 K5 ["r15Plus"]
       16 NAMECALL                         R3 R3 K6 ["format"]
       18 CALL                             R3 4 1
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K7 ["FFlagDebugLogAssistantUI"]
       22 JUMPIFNOT                        R4 ; [+8]
       23 GETIMPORT                        R4 K9 [print]
       25 LOADK                            R5 K10 ["[AvatarGen] %*"]
       26 MOVE                             R7 R3
       27 NAMECALL                         R5 R5 K6 ["format"]
       29 CALL                             R5 2 1
       30 CALL                             R4 1 0
       31 GETUPVAL                         R3 3
       32 LOADK                            R4 K11 ["2D preview"]
       33 NEWCLOSURE                       R5 P0
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R2
       38 CALL                             R3 2 1
       39 MOVE                             R4 R1
       40 CALL                             R4 0 1
       41 JUMPIFNOT                        R4 ; [+5]
       42 GETIMPORT                        R4 K13 [error]
       44 LOADK                            R5 K14 ["AvatarGen: generation canceled"]
       45 LOADN                            R6 0
       46 CALL                             R4 2 0
       47 GETUPVAL                         R4 3
       48 LOADK                            R5 K15 ["3D generation (previewId=%*)"]
       49 MOVE                             R7 R3
       50 NAMECALL                         R5 R5 K6 ["format"]
       52 CALL                             R5 2 1
       53 NEWCLOSURE                       R6 P1
       54 CAPTURE                          UPVAL U4
       55 CAPTURE                          VAL R3
       56 CALL                             R4 2 1
       57 LOADK                            R5 K16 ["3D result: generationId=%* jobId=%*"]
       58 GETTABLEKS                       R7 R4 K17 ["generationId"]
       60 GETTABLEKS                       R9 R4 K19 ["jobId"]
       62 ORK                              R8 R9 K18 ["none"]
       63 NAMECALL                         R5 R5 K6 ["format"]
       65 CALL                             R5 3 1
       66 GETUPVAL                         R6 2
       67 GETTABLEKS                       R6 R6 K7 ["FFlagDebugLogAssistantUI"]
       69 JUMPIFNOT                        R6 ; [+8]
       70 GETIMPORT                        R6 K9 [print]
       72 LOADK                            R7 K10 ["[AvatarGen] %*"]
       73 MOVE                             R9 R5
       74 NAMECALL                         R7 R7 K6 ["format"]
       76 CALL                             R7 2 1
       77 CALL                             R6 1 0
       78 MOVE                             R5 R1
       79 CALL                             R5 0 1
       80 JUMPIFNOT                        R5 ; [+5]
       81 GETIMPORT                        R5 K13 [error]
       83 LOADK                            R6 K14 ["AvatarGen: generation canceled"]
       84 LOADN                            R7 0
       85 CALL                             R5 2 0
       86 GETUPVAL                         R5 5
       87 MOVE                             R6 R4
       88 CALL                             R5 1 1
       89 GETUPVAL                         R7 6
       90 MOVE                             R8 R5
       91 FASTPCALL                        pcall 2 ; [+2]
       92 GETIMPORT                        R6 K21 [pcall]
       94 CALL                             R6 2 2
       95 JUMPIF                           R6 ; [+8]
       96 NAMECALL                         R8 R5 K22 ["Destroy"]
       98 CALL                             R8 1 0
       99 GETIMPORT                        R8 K13 [error]
      101 MOVE                             R9 R7
      102 LOADN                            R10 0
      103 CALL                             R8 2 0
      104 MOVE                             R8 R1
      105 CALL                             R8 0 1
      106 JUMPIFNOT                        R8 ; [+8]
      107 NAMECALL                         R8 R7 K22 ["Destroy"]
      109 CALL                             R8 1 0
      110 GETIMPORT                        R8 K13 [error]
      112 LOADK                            R9 K14 ["AvatarGen: generation canceled"]
      113 LOADN                            R10 0
      114 CALL                             R8 2 0
      115 GETUPVAL                         R8 7
      116 LOADK                            R10 K23 ["AvatarGen"]
      117 LOADK                            R11 K24 ["Generate Avatar"]
      118 NAMECALL                         R8 R8 K25 ["TryBeginRecording"]
      120 CALL                             R8 3 1
      121 GETUPVAL                         R10 2
      122 GETTABLEKS                       R10 R10 K26 ["FFlagAssistantAvatarGenCompactName"]
      124 JUMPIFNOT                        R10 ; [+12]
      125 GETTABLEKS                       R10 R0 K27 ["avatarName"]
      127 JUMPIFEQKNIL                     R10 ; [+6]
      129 GETUPVAL                         R9 8
      130 GETTABLEKS                       R10 R0 K27 ["avatarName"]
      132 CALL                             R9 1 1
      133 JUMP                             ; [+8]
      134 GETUPVAL                         R9 9
      135 CALL                             R9 0 1
      136 JUMP                             ; [+5]
      137 GETUPVAL                         R9 10
      138 GETTABLEKS                       R10 R0 K28 ["textPrompt"]
      140 LOADN                            R11 100
      141 CALL                             R9 2 1
      142 SETTABLEKS                       R9 R7 K29 ["Name"]
      144 GETUPVAL                         R9 2
      145 GETTABLEKS                       R9 R9 K30 ["FFlagAssistantAvatarGenAccessoriesFromMeshParts"]
      147 JUMPIFNOT                        R9 ; [+7]
      148 GETUPVAL                         R9 2
      149 GETTABLEKS                       R9 R9 K31 ["FFlagAssistantAvatarGenAccessoriesAfterParent"]
      151 JUMPIF                           R9 ; [+3]
      152 GETUPVAL                         R9 11
      153 MOVE                             R10 R7
      154 CALL                             R9 1 0
      155 GETUPVAL                         R9 12
      156 GETTABLEKS                       R9 R9 K32 ["setPivotOffset"]
      158 MOVE                             R10 R7
      159 CALL                             R9 1 0
      160 GETUPVAL                         R9 13
      161 GETTABLEKS                       R9 R9 K33 ["setPositionOnGround"]
      163 MOVE                             R10 R7
      164 LOADB                            R11 1
      165 LOADNIL                          R12
      166 GETUPVAL                         R14 2
      167 GETTABLEKS                       R14 R14 K34 ["FFlagAssistantAvatarGenPlaceWithoutRotation"]
      169 JUMPIFNOT                        R14 ; [+2]
      170 LOADK                            R13 K35 [{-0, -0, -1}]
      171 JUMP                             ; [+1]
      172 LOADNIL                          R13
      173 CALL                             R9 4 0
      174 GETUPVAL                         R9 14
      175 SETTABLEKS                       R9 R7 K36 ["Parent"]
      177 GETTABLEKS                       R9 R2 K5 ["r15Plus"]
      179 JUMPIFNOT                        R9 ; [+9]
      180 GETUPVAL                         R9 2
      181 GETTABLEKS                       R9 R9 K37 ["FFlagAssistantAvatarGenHumanoidRigDescription"]
      183 JUMPIFNOT                        R9 ; [+5]
      184 GETUPVAL                         R9 4
      185 GETTABLEKS                       R9 R9 K38 ["addHumanoidRigDescription"]
      187 MOVE                             R10 R7
      188 CALL                             R9 1 0
      189 GETUPVAL                         R9 2
      190 GETTABLEKS                       R9 R9 K31 ["FFlagAssistantAvatarGenAccessoriesAfterParent"]
      192 JUMPIFNOT                        R9 ; [+7]
      193 GETUPVAL                         R9 2
      194 GETTABLEKS                       R9 R9 K30 ["FFlagAssistantAvatarGenAccessoriesFromMeshParts"]
      196 JUMPIFNOT                        R9 ; [+3]
      197 GETUPVAL                         R9 11
      198 MOVE                             R10 R7
      199 CALL                             R9 1 0
      200 JUMPIFEQKNIL                     R8 ; [+8]
      202 GETUPVAL                         R9 7
      203 MOVE                             R11 R8
      204 GETIMPORT                        R12 K42 [Enum.FinishRecordingOperation.Commit]
      206 NAMECALL                         R9 R9 K43 ["FinishRecording"]
      208 CALL                             R9 3 0
      209 GETUPVAL                         R9 2
      210 GETTABLEKS                       R9 R9 K44 ["FFlagAssistantAvatarGenUsageTelemetry"]
      212 JUMPIFNOT                        R9 ; [+79]
      213 GETUPVAL                         R9 4
      214 GETTABLEKS                       R9 R9 K45 ["isUploadAndInsertEnabled"]
      216 CALL                             R9 0 1
      217 JUMPIFNOT                        R9 ; [+74]
      218 GETUPVAL                         R9 15
      219 LOADK                            R11 K46 ["studio"]
      220 LOADK                            R12 K47 ["Assistant"]
      221 LOADK                            R13 K48 ["AvatarCreationUsage"]
      222 DUPTABLE                         R14 K56 [{"user_id", "job_id", "place_id", "universe_id", "output_asset_ids", "job_config", "request_source"}]
      223 GETUPVAL                         R16 16
      224 NAMECALL                         R16 R16 K57 ["GetUserId"]
      226 CALL                             R16 1 -1
      227 FASTCALL                         TOSTRING ; [+2]
      228 GETIMPORT                        R15 K59 [tostring]
      230 CALL                             R15 -1 1
      231 SETTABLEKS                       R15 R14 K49 ["user_id"]
      233 GETTABLEKS                       R15 R4 K19 ["jobId"]
      235 SETTABLEKS                       R15 R14 K50 ["job_id"]
      237 GETIMPORT                        R16 K61 [game]
      239 GETTABLEKS                       R16 R16 K62 ["PlaceId"]
      241 FASTCALL1                        TOSTRING R16 ; [+2]
      242 GETIMPORT                        R15 K59 [tostring]
      244 CALL                             R15 1 1
      245 SETTABLEKS                       R15 R14 K51 ["place_id"]
      247 GETIMPORT                        R16 K61 [game]
      249 GETTABLEKS                       R16 R16 K63 ["GameId"]
      251 FASTCALL1                        TOSTRING R16 ; [+2]
      252 GETIMPORT                        R15 K59 [tostring]
      254 CALL                             R15 1 1
      255 SETTABLEKS                       R15 R14 K52 ["universe_id"]
      257 GETIMPORT                        R15 K66 [table.concat]
      259 GETUPVAL                         R16 17
      260 MOVE                             R17 R7
      261 CALL                             R16 1 1
      262 LOADK                            R17 K67 [","]
      263 CALL                             R15 2 1
      264 SETTABLEKS                       R15 R14 K53 ["output_asset_ids"]
      266 GETUPVAL                         R15 18
      267 DUPTABLE                         R17 K69 [{"pipeline", "dynamicHead", "r15Plus"}]
      268 GETTABLEKS                       R18 R2 K3 ["pipelineName"]
      270 SETTABLEKS                       R18 R17 K68 ["pipeline"]
      272 GETTABLEKS                       R18 R2 K4 ["dynamicHead"]
      274 SETTABLEKS                       R18 R17 K4 ["dynamicHead"]
      276 GETTABLEKS                       R18 R2 K5 ["r15Plus"]
      278 SETTABLEKS                       R18 R17 K5 ["r15Plus"]
      280 NAMECALL                         R15 R15 K70 ["JSONEncode"]
      282 CALL                             R15 2 1
      283 SETTABLEKS                       R15 R14 K54 ["job_config"]
      285 GETTABLEKS                       R15 R0 K71 ["requestSource"]
      287 SETTABLEKS                       R15 R14 K55 ["request_source"]
      289 NAMECALL                         R9 R9 K72 ["SendEventDeferred"]
      291 CALL                             R9 5 0
      292 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["ChangeHistoryService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["HttpService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K5 [game]
       21 LOADK                            R5 K9 ["RbxAnalyticsService"]
       22 NAMECALL                         R3 R3 K7 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K5 [game]
       27 LOADK                            R6 K10 ["StudioService"]
       28 NAMECALL                         R4 R4 K7 ["GetService"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K5 [game]
       33 LOADK                            R7 K11 ["Workspace"]
       34 NAMECALL                         R5 R5 K7 ["GetService"]
       36 CALL                             R5 2 1
       37 GETIMPORT                        R6 K13 [require]
       39 GETTABLEKS                       R7 R0 K14 ["Packages"]
       41 GETTABLEKS                       R7 R7 K15 ["AssistantUI"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K13 [require]
       46 GETTABLEKS                       R8 R0 K16 ["Src"]
       48 GETTABLEKS                       R8 R8 K17 ["Util"]
       50 GETTABLEKS                       R8 R8 K18 ["AvatarGen"]
       52 GETTABLEKS                       R8 R8 K19 ["Engine"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K13 [require]
       57 GETTABLEKS                       R9 R0 K16 ["Src"]
       59 GETTABLEKS                       R9 R9 K20 ["Flags"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K13 [require]
       64 GETTABLEKS                       R10 R0 K16 ["Src"]
       66 GETTABLEKS                       R10 R10 K17 ["Util"]
       68 GETTABLEKS                       R10 R10 K18 ["AvatarGen"]
       70 GETTABLEKS                       R10 R10 K21 ["GenerationOptions"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K13 [require]
       75 GETTABLEKS                       R11 R0 K16 ["Src"]
       77 GETTABLEKS                       R11 R11 K17 ["Util"]
       79 GETTABLEKS                       R11 R11 K22 ["AvatarAutoSetup"]
       81 GETTABLEKS                       R11 R11 K23 ["PostProcess"]
       83 CALL                             R10 1 1
       84 GETIMPORT                        R11 K13 [require]
       86 GETTABLEKS                       R12 R0 K16 ["Src"]
       88 GETTABLEKS                       R12 R12 K17 ["Util"]
       90 GETTABLEKS                       R12 R12 K22 ["AvatarAutoSetup"]
       92 GETTABLEKS                       R12 R12 K24 ["Types"]
       94 CALL                             R11 1 1
       95 GETIMPORT                        R12 K13 [require]
       97 GETTABLEKS                       R13 R0 K16 ["Src"]
       99 GETTABLEKS                       R13 R13 K17 ["Util"]
      101 GETTABLEKS                       R13 R13 K18 ["AvatarGen"]
      103 GETTABLEKS                       R13 R13 K25 ["createAccessoriesFromMeshParts"]
      105 CALL                             R12 1 1
      106 GETIMPORT                        R13 K13 [require]
      108 GETTABLEKS                       R14 R0 K16 ["Src"]
      110 GETTABLEKS                       R14 R14 K17 ["Util"]
      112 GETTABLEKS                       R14 R14 K18 ["AvatarGen"]
      114 GETTABLEKS                       R14 R14 K26 ["findUnderlyingMeshAndTextureAssetIds"]
      116 CALL                             R13 1 1
      117 GETIMPORT                        R14 K13 [require]
      119 GETTABLEKS                       R15 R0 K16 ["Src"]
      121 GETTABLEKS                       R15 R15 K17 ["Util"]
      123 GETTABLEKS                       R15 R15 K18 ["AvatarGen"]
      125 GETTABLEKS                       R15 R15 K27 ["getNextAvatarCreationName"]
      127 CALL                             R14 1 1
      128 GETTABLEKS                       R15 R6 K28 ["Utils"]
      130 GETTABLEKS                       R15 R15 K29 ["Tools"]
      132 DUPCLOSURE                       R16 K30 [PROTO_0]
      133 DUPCLOSURE                       R17 K31 [PROTO_1]
      134 DUPCLOSURE                       R18 K32 [PROTO_2]
      135 DUPCLOSURE                       R19 K33 [PROTO_3]
      136 CAPTURE                          VAL R18
      137 CAPTURE                          VAL R5
      138 DUPCLOSURE                       R20 K34 [PROTO_4]
      139 CAPTURE                          VAL R8
      140 DUPCLOSURE                       R21 K35 [PROTO_5]
      141 CAPTURE                          VAL R8
      142 DUPCLOSURE                       R22 K36 [PROTO_8]
      143 CAPTURE                          VAL R7
      144 CAPTURE                          VAL R21
      145 NEWTABLE                         R23 1 0
      147 DUPCLOSURE                       R24 K37 [PROTO_11]
      148 CAPTURE                          VAL R16
      149 CAPTURE                          VAL R9
      150 CAPTURE                          VAL R8
      151 CAPTURE                          VAL R21
      152 CAPTURE                          VAL R7
      153 CAPTURE                          VAL R22
      154 CAPTURE                          VAL R17
      155 CAPTURE                          VAL R1
      156 CAPTURE                          VAL R19
      157 CAPTURE                          VAL R14
      158 CAPTURE                          VAL R18
      159 CAPTURE                          VAL R12
      160 CAPTURE                          VAL R10
      161 CAPTURE                          VAL R15
      162 CAPTURE                          VAL R5
      163 CAPTURE                          VAL R3
      164 CAPTURE                          VAL R4
      165 CAPTURE                          VAL R13
      166 CAPTURE                          VAL R2
      167 SETTABLEKS                       R24 R23 K38 ["generateAvatarAsync"]
      169 RETURN                           R23 1
