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
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["%s+"]
        4 LOADK                            R4 K4 [" "]
        5 CALL                             R1 3 1
        6 LENGTH                           R2 R1
        7 LOADN                            R3 100
        8 JUMPIFNOTLE                      R2 R3 ; [+2]
       10 RETURN                           R1 1
       11 LOADN                            R2 101
       12 LOADN                            R3 1
       13 JUMPIFNOTLT                      R3 R2 ; [+16]
       15 FASTCALL2                        STRING_BYTE R1 R2 ; [+5]
       17 MOVE                             R4 R1
       18 MOVE                             R5 R2
       19 GETIMPORT                        R3 K6 [string.byte]
       21 CALL                             R3 2 1
       22 LOADN                            R4 128
       23 JUMPIFLT                         R3 R4 ; [+6]
       25 LOADN                            R4 192
       26 JUMPIFLE                         R4 R3 ; [+3]
       28 SUBK                             R2 R2 K7 [1]
       29 JUMPBACK                         ; [-18]
       30 LOADN                            R5 1
       31 SUBK                             R6 R2 K7 [1]
       32 FASTCALL3                        STRING_SUB R1 R5 R6
       34 MOVE                             R4 R1
       35 GETIMPORT                        R3 K9 [string.sub]
       37 CALL                             R3 3 1
       38 RETURN                           R3 1

PROTO_3:
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

PROTO_4:
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
       20 GETIMPORT                        R3 K10 [pcall]
       22 MOVE                             R4 R1
       23 CALL                             R3 1 2
       24 GETIMPORT                        R5 K12 [string.format]
       26 LOADK                            R6 K13 ["%.1fs"]
       27 GETIMPORT                        R8 K8 [os.clock]
       29 CALL                             R8 0 1
       30 SUB                              R7 R8 R2
       31 CALL                             R5 2 1
       32 JUMPIF                           R3 ; [+29]
       33 LOADK                            R6 K14 ["%* failed after %*: %*"]
       34 MOVE                             R8 R0
       35 MOVE                             R9 R5
       36 MOVE                             R10 R4
       37 NAMECALL                         R6 R6 K1 ["format"]
       39 CALL                             R6 4 1
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R7 R7 K2 ["FFlagDebugLogAssistantUI"]
       43 JUMPIFNOT                        R7 ; [+8]
       44 GETIMPORT                        R7 K4 [print]
       46 LOADK                            R8 K5 ["[AvatarGen] %*"]
       47 MOVE                             R10 R6
       48 NAMECALL                         R8 R8 K1 ["format"]
       50 CALL                             R8 2 1
       51 CALL                             R7 1 0
       52 GETIMPORT                        R6 K16 [error]
       54 LOADK                            R7 K17 ["AvatarGen: %* failed: %*"]
       55 MOVE                             R9 R0
       56 MOVE                             R10 R4
       57 NAMECALL                         R7 R7 K1 ["format"]
       59 CALL                             R7 3 1
       60 LOADN                            R8 0
       61 CALL                             R6 2 0
       62 LOADK                            R6 K18 ["%* finished in %*"]
       63 MOVE                             R8 R0
       64 MOVE                             R9 R5
       65 NAMECALL                         R6 R6 K1 ["format"]
       67 CALL                             R6 3 1
       68 GETUPVAL                         R7 0
       69 GETTABLEKS                       R7 R7 K2 ["FFlagDebugLogAssistantUI"]
       71 JUMPIFNOT                        R7 ; [+8]
       72 GETIMPORT                        R7 K4 [print]
       74 LOADK                            R8 K5 ["[AvatarGen] %*"]
       75 MOVE                             R10 R6
       76 NAMECALL                         R8 R8 K1 ["format"]
       78 CALL                             R8 2 1
       79 CALL                             R7 1 0
       80 RETURN                           R4 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["loadGeneratedAvatarAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["generationId"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["uploadAndInsertAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_7:
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

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["generate3DAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_10:
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
       89 GETIMPORT                        R6 K21 [pcall]
       91 GETUPVAL                         R7 6
       92 MOVE                             R8 R5
       93 CALL                             R6 2 2
       94 JUMPIF                           R6 ; [+8]
       95 NAMECALL                         R8 R5 K22 ["Destroy"]
       97 CALL                             R8 1 0
       98 GETIMPORT                        R8 K13 [error]
      100 MOVE                             R9 R7
      101 LOADN                            R10 0
      102 CALL                             R8 2 0
      103 MOVE                             R8 R1
      104 CALL                             R8 0 1
      105 JUMPIFNOT                        R8 ; [+8]
      106 NAMECALL                         R8 R7 K22 ["Destroy"]
      108 CALL                             R8 1 0
      109 GETIMPORT                        R8 K13 [error]
      111 LOADK                            R9 K14 ["AvatarGen: generation canceled"]
      112 LOADN                            R10 0
      113 CALL                             R8 2 0
      114 GETUPVAL                         R8 7
      115 LOADK                            R10 K23 ["AvatarGen"]
      116 LOADK                            R11 K24 ["Generate Avatar"]
      117 NAMECALL                         R8 R8 K25 ["TryBeginRecording"]
      119 CALL                             R8 3 1
      120 GETUPVAL                         R9 8
      121 GETTABLEKS                       R10 R0 K26 ["textPrompt"]
      123 CALL                             R9 1 1
      124 SETTABLEKS                       R9 R7 K27 ["Name"]
      126 GETUPVAL                         R9 9
      127 GETTABLEKS                       R9 R9 K28 ["setPivotOffset"]
      129 MOVE                             R10 R7
      130 CALL                             R9 1 0
      131 GETUPVAL                         R9 10
      132 GETTABLEKS                       R9 R9 K29 ["setPositionOnGround"]
      134 MOVE                             R10 R7
      135 LOADB                            R11 1
      136 CALL                             R9 2 0
      137 GETUPVAL                         R9 11
      138 SETTABLEKS                       R9 R7 K30 ["Parent"]
      140 GETTABLEKS                       R9 R2 K5 ["r15Plus"]
      142 JUMPIFNOT                        R9 ; [+9]
      143 GETUPVAL                         R9 2
      144 GETTABLEKS                       R9 R9 K31 ["FFlagAssistantAvatarGenHumanoidRigDescription"]
      146 JUMPIFNOT                        R9 ; [+5]
      147 GETUPVAL                         R9 4
      148 GETTABLEKS                       R9 R9 K32 ["addHumanoidRigDescription"]
      150 MOVE                             R10 R7
      151 CALL                             R9 1 0
      152 JUMPIFEQKNIL                     R8 ; [+8]
      154 GETUPVAL                         R9 7
      155 MOVE                             R11 R8
      156 GETIMPORT                        R12 K36 [Enum.FinishRecordingOperation.Commit]
      158 NAMECALL                         R9 R9 K37 ["FinishRecording"]
      160 CALL                             R9 3 0
      161 GETUPVAL                         R9 2
      162 GETTABLEKS                       R9 R9 K38 ["FFlagAssistantAvatarGenUsageTelemetry"]
      164 JUMPIFNOT                        R9 ; [+79]
      165 GETUPVAL                         R9 4
      166 GETTABLEKS                       R9 R9 K39 ["isUploadAndInsertEnabled"]
      168 CALL                             R9 0 1
      169 JUMPIFNOT                        R9 ; [+74]
      170 GETUPVAL                         R9 12
      171 LOADK                            R11 K40 ["studio"]
      172 LOADK                            R12 K41 ["Assistant"]
      173 LOADK                            R13 K42 ["AvatarCreationUsage"]
      174 DUPTABLE                         R14 K50 [{"user_id", "job_id", "place_id", "universe_id", "output_asset_ids", "job_config", "request_source"}]
      175 GETUPVAL                         R16 13
      176 NAMECALL                         R16 R16 K51 ["GetUserId"]
      178 CALL                             R16 1 -1
      179 FASTCALL                         TOSTRING ; [+2]
      180 GETIMPORT                        R15 K53 [tostring]
      182 CALL                             R15 -1 1
      183 SETTABLEKS                       R15 R14 K43 ["user_id"]
      185 GETTABLEKS                       R15 R4 K19 ["jobId"]
      187 SETTABLEKS                       R15 R14 K44 ["job_id"]
      189 GETIMPORT                        R16 K55 [game]
      191 GETTABLEKS                       R16 R16 K56 ["PlaceId"]
      193 FASTCALL1                        TOSTRING R16 ; [+2]
      194 GETIMPORT                        R15 K53 [tostring]
      196 CALL                             R15 1 1
      197 SETTABLEKS                       R15 R14 K45 ["place_id"]
      199 GETIMPORT                        R16 K55 [game]
      201 GETTABLEKS                       R16 R16 K57 ["GameId"]
      203 FASTCALL1                        TOSTRING R16 ; [+2]
      204 GETIMPORT                        R15 K53 [tostring]
      206 CALL                             R15 1 1
      207 SETTABLEKS                       R15 R14 K46 ["universe_id"]
      209 GETIMPORT                        R15 K60 [table.concat]
      211 GETUPVAL                         R16 14
      212 MOVE                             R17 R7
      213 CALL                             R16 1 1
      214 LOADK                            R17 K61 [","]
      215 CALL                             R15 2 1
      216 SETTABLEKS                       R15 R14 K47 ["output_asset_ids"]
      218 GETUPVAL                         R15 15
      219 DUPTABLE                         R17 K63 [{"pipeline", "dynamicHead", "r15Plus"}]
      220 GETTABLEKS                       R18 R2 K3 ["pipelineName"]
      222 SETTABLEKS                       R18 R17 K62 ["pipeline"]
      224 GETTABLEKS                       R18 R2 K4 ["dynamicHead"]
      226 SETTABLEKS                       R18 R17 K4 ["dynamicHead"]
      228 GETTABLEKS                       R18 R2 K5 ["r15Plus"]
      230 SETTABLEKS                       R18 R17 K5 ["r15Plus"]
      232 NAMECALL                         R15 R15 K64 ["JSONEncode"]
      234 CALL                             R15 2 1
      235 SETTABLEKS                       R15 R14 K48 ["job_config"]
      237 GETTABLEKS                       R15 R0 K65 ["requestSource"]
      239 SETTABLEKS                       R15 R14 K49 ["request_source"]
      241 NAMECALL                         R9 R9 K66 ["SendEventDeferred"]
      243 CALL                             R9 5 0
      244 RETURN                           R7 1

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
      103 GETTABLEKS                       R13 R13 K25 ["findUnderlyingMeshAndTextureAssetIds"]
      105 CALL                             R12 1 1
      106 GETTABLEKS                       R13 R6 K26 ["Utils"]
      108 GETTABLEKS                       R13 R13 K27 ["Tools"]
      110 DUPCLOSURE                       R14 K28 [PROTO_0]
      111 DUPCLOSURE                       R15 K29 [PROTO_1]
      112 DUPCLOSURE                       R16 K30 [PROTO_2]
      113 DUPCLOSURE                       R17 K31 [PROTO_3]
      114 CAPTURE                          VAL R8
      115 DUPCLOSURE                       R18 K32 [PROTO_4]
      116 CAPTURE                          VAL R8
      117 DUPCLOSURE                       R19 K33 [PROTO_7]
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R18
      120 NEWTABLE                         R20 1 0
      122 DUPCLOSURE                       R21 K34 [PROTO_10]
      123 CAPTURE                          VAL R14
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R18
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R19
      129 CAPTURE                          VAL R15
      130 CAPTURE                          VAL R1
      131 CAPTURE                          VAL R16
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R13
      134 CAPTURE                          VAL R5
      135 CAPTURE                          VAL R3
      136 CAPTURE                          VAL R4
      137 CAPTURE                          VAL R12
      138 CAPTURE                          VAL R2
      139 SETTABLEKS                       R21 R20 K35 ["generateAvatarAsync"]
      141 RETURN                           R20 1
