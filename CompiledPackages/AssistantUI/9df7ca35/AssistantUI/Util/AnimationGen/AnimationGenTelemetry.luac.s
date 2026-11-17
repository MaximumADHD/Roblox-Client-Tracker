PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["number"] ; [+3]
        7 MOVE                             R1 R0
        8 RETURN                           R1 1
        9 LOADNIL                          R1
       10 RETURN                           R1 1

PROTO_1:
        0 JUMPIFEQKNIL                     R1 ; [+6]
        2 GETTABLEKS                       R2 R1 K0 ["isThirdPartyRequest"]
        4 JUMPIFNOT                        R2 ; [+2]
        5 LOADK                            R2 K1 ["mcp"]
        6 RETURN                           R2 1
        7 GETTABLEKS                       R3 R0 K2 ["isFromFormUI"]
        9 JUMPIFNOT                        R3 ; [+2]
       10 LOADK                            R2 K3 ["form"]
       11 RETURN                           R2 1
       12 LOADK                            R2 K4 ["llm"]
       13 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FailureReasons"]
        3 GETTABLEKS                       R2 R2 K1 ["GenerationFailed"]
        5 JUMPIFNOTEQ                      R0 R2 ; [+3]
        7 JUMPIFNOTEQKNIL                  R1 ; [+2]
        9 RETURN                           R0 1
       10 GETUPVAL                         R2 1
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 FORGPREP                         R2
       14 GETIMPORT                        R7 K4 [string.find]
       16 MOVE                             R8 R1
       17 GETTABLEKS                       R9 R6 K5 ["text"]
       19 LOADN                            R10 1
       20 LOADB                            R11 1
       21 CALL                             R7 4 1
       22 JUMPIFEQKNIL                     R7 ; [+4]
       24 GETTABLEKS                       R7 R6 K6 ["failureReason"]
       26 RETURN                           R7 1
       27 FORGLOOP                         R2 2 ; [-14]
       29 RETURN                           R0 1

PROTO_3:
        0 LOADK                            R3 K0 ["Humanoid"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChildOfClass"]
        3 CALL                             R1 2 1
        4 JUMPIFNOTEQKNIL                  R1 ; [+3]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 GETTABLEKS                       R2 R1 K2 ["RigType"]
       10 GETIMPORT                        R3 K6 [Enum.HumanoidRigType.R6]
       12 JUMPIFNOTEQ                      R2 R3 ; [+3]
       14 LOADK                            R2 K5 ["R6"]
       15 RETURN                           R2 1
       16 GETUPVAL                         R3 0
       17 MOVE                             R4 R0
       18 CALL                             R3 1 1
       19 JUMPIFNOT                        R3 ; [+2]
       20 LOADK                            R2 K7 ["R15"]
       21 RETURN                           R2 1
       22 LOADK                            R2 K8 ["R15NonStandard"]
       23 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantAnimationGenTelemetry"]
        3 JUMPIFNOT                        R2 ; [+2]
        4 JUMPIFNOTEQKNIL                  R0 ; [+2]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R2 R1 K1 ["toolArguments"]
        9 GETTABLEKS                       R3 R1 K2 ["meta"]
       11 GETTABLEKS                       R4 R1 K3 ["result"]
       13 GETTABLEKS                       R5 R4 K4 ["telemetryDetails"]
       15 GETTABLEKS                       R6 R1 K5 ["errorMessage"]
       17 JUMPIF                           R6 ; [+6]
       18 JUMPIFEQKNIL                     R5 ; [+4]
       20 GETTABLEKS                       R6 R5 K5 ["errorMessage"]
       22 JUMP                             ; [+1]
       23 LOADNIL                          R6
       24 GETTABLEKS                       R8 R1 K6 ["cancelled"]
       26 JUMPIFNOT                        R8 ; [+2]
       27 LOADK                            R7 K7 ["Cancelled"]
       28 JUMP                             ; [+5]
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R8 R4 K8 ["failureReason"]
       32 MOVE                             R9 R6
       33 CALL                             R7 2 1
       34 GETUPVAL                         R8 0
       35 GETTABLEKS                       R8 R8 K9 ["FFlagAssistantAnimationGenTrackMcpPublish"]
       37 GETTABLEKS                       R9 R0 K10 ["logAnimationGenCompleted"]
       39 DUPTABLE                         R10 K32 [{"requestId", "generationId", "jobId", "conversationId", "generationMode", "entryPoint", "success", "failureReason", "errorMessage", "durationMilliseconds", "prompt", "inputAssetId", "requestedDuration", "clipDuration", "editSessionId", "parentGenerationId", "rigType", "rigInserted", "editedPoseCount", "usedBackend", "publishedAssetId", "publishError", "clipGuid"}]
       40 GETTABLEKS                       R11 R1 K11 ["requestId"]
       42 SETTABLEKS                       R11 R10 K11 ["requestId"]
       44 GETTABLEKS                       R11 R4 K12 ["generationId"]
       46 SETTABLEKS                       R11 R10 K12 ["generationId"]
       48 GETTABLEKS                       R11 R4 K33 ["contextId"]
       50 SETTABLEKS                       R11 R10 K13 ["jobId"]
       52 JUMPIFEQKNIL                     R3 ; [+4]
       54 GETTABLEKS                       R11 R3 K34 ["sessionId"]
       56 JUMP                             ; [+1]
       57 LOADNIL                          R11
       58 SETTABLEKS                       R11 R10 K14 ["conversationId"]
       60 GETUPVAL                         R12 0
       61 GETTABLEKS                       R12 R12 K35 ["FFlagAssistantAnimationGenLogResolvedMode"]
       63 JUMPIFNOT                        R12 ; [+10]
       64 GETUPVAL                         R12 2
       65 GETTABLEKS                       R12 R12 K36 ["resolveGenerationMode"]
       67 MOVE                             R13 R2
       68 CALL                             R12 1 -1
       69 FASTCALL                         TOSTRING ; [+2]
       70 GETIMPORT                        R11 K38 [tostring]
       72 CALL                             R11 -1 1
       73 JUMP                             ; [+6]
       74 GETTABLEKS                       R12 R2 K15 ["generationMode"]
       76 FASTCALL1                        TOSTRING R12 ; [+2]
       77 GETIMPORT                        R11 K38 [tostring]
       79 CALL                             R11 1 1
       80 SETTABLEKS                       R11 R10 K15 ["generationMode"]
       82 JUMPIFEQKNIL                     R3 ; [+6]
       84 GETTABLEKS                       R12 R3 K39 ["isThirdPartyRequest"]
       86 JUMPIFNOT                        R12 ; [+2]
       87 LOADK                            R11 K40 ["mcp"]
       88 JUMP                             ; [+6]
       89 GETTABLEKS                       R12 R2 K41 ["isFromFormUI"]
       91 JUMPIFNOT                        R12 ; [+2]
       92 LOADK                            R11 K42 ["form"]
       93 JUMP                             ; [+1]
       94 LOADK                            R11 K43 ["llm"]
       95 SETTABLEKS                       R11 R10 K16 ["entryPoint"]
       97 JUMPIFEQKNIL                     R7 ; [+2]
       99 LOADB                            R11 0 +1
      100 LOADB                            R11 1
      101 SETTABLEKS                       R11 R10 K17 ["success"]
      103 SETTABLEKS                       R7 R10 K8 ["failureReason"]
      105 SETTABLEKS                       R6 R10 K5 ["errorMessage"]
      107 GETTABLEKS                       R11 R1 K18 ["durationMilliseconds"]
      109 SETTABLEKS                       R11 R10 K18 ["durationMilliseconds"]
      111 GETTABLEKS                       R13 R2 K44 ["textPrompt"]
      113 FASTCALL1                        TYPEOF R13 ; [+2]
      114 GETIMPORT                        R12 K46 [typeof]
      116 CALL                             R12 1 1
      117 JUMPIFNOTEQKS                    R12 K47 ["string"] ; [+4]
      119 GETTABLEKS                       R11 R2 K44 ["textPrompt"]
      121 JUMP                             ; [+1]
      122 LOADK                            R11 K48 [""]
      123 SETTABLEKS                       R11 R10 K19 ["prompt"]
      125 GETTABLEKS                       R13 R2 K20 ["inputAssetId"]
      127 FASTCALL1                        TYPEOF R13 ; [+2]
      128 GETIMPORT                        R12 K46 [typeof]
      130 CALL                             R12 1 1
      131 JUMPIFNOTEQKS                    R12 K47 ["string"] ; [+4]
      133 GETTABLEKS                       R11 R2 K20 ["inputAssetId"]
      135 JUMP                             ; [+1]
      136 LOADNIL                          R11
      137 SETTABLEKS                       R11 R10 K20 ["inputAssetId"]
      139 GETTABLEKS                       R12 R2 K49 ["duration"]
      141 FASTCALL1                        TYPEOF R12 ; [+3]
      142 MOVE                             R14 R12
      143 GETIMPORT                        R13 K46 [typeof]
      145 CALL                             R13 1 1
      146 JUMPIFNOTEQKS                    R13 K50 ["number"] ; [+3]
      148 MOVE                             R11 R12
      149 JUMP                             ; [+1]
      150 LOADNIL                          R11
      151 SETTABLEKS                       R11 R10 K21 ["requestedDuration"]
      153 GETTABLEKS                       R12 R4 K8 ["failureReason"]
      155 JUMPIFNOTEQKNIL                  R12 ; [+4]
      157 GETTABLEKS                       R11 R4 K49 ["duration"]
      159 JUMP                             ; [+1]
      160 LOADNIL                          R11
      161 SETTABLEKS                       R11 R10 K22 ["clipDuration"]
      163 GETTABLEKS                       R11 R2 K23 ["editSessionId"]
      165 SETTABLEKS                       R11 R10 K23 ["editSessionId"]
      167 JUMPIFEQKNIL                     R5 ; [+4]
      169 GETTABLEKS                       R11 R5 K24 ["parentGenerationId"]
      171 JUMP                             ; [+1]
      172 LOADNIL                          R11
      173 SETTABLEKS                       R11 R10 K24 ["parentGenerationId"]
      175 JUMPIFEQKNIL                     R5 ; [+4]
      177 GETTABLEKS                       R11 R5 K25 ["rigType"]
      179 JUMP                             ; [+1]
      180 LOADNIL                          R11
      181 SETTABLEKS                       R11 R10 K25 ["rigType"]
      183 JUMPIFEQKNIL                     R5 ; [+4]
      185 GETTABLEKS                       R11 R5 K26 ["rigInserted"]
      187 JUMP                             ; [+1]
      188 LOADNIL                          R11
      189 SETTABLEKS                       R11 R10 K26 ["rigInserted"]
      191 JUMPIFEQKNIL                     R5 ; [+4]
      193 GETTABLEKS                       R11 R5 K27 ["editedPoseCount"]
      195 JUMP                             ; [+1]
      196 LOADNIL                          R11
      197 SETTABLEKS                       R11 R10 K27 ["editedPoseCount"]
      199 JUMPIFEQKNIL                     R5 ; [+4]
      201 GETTABLEKS                       R11 R5 K28 ["usedBackend"]
      203 JUMP                             ; [+1]
      204 LOADNIL                          R11
      205 SETTABLEKS                       R11 R10 K28 ["usedBackend"]
      207 JUMPIFNOT                        R8 ; [+11]
      208 GETTABLEKS                       R12 R4 K29 ["publishedAssetId"]
      210 JUMPIFEQKNIL                     R12 ; [+8]
      212 GETTABLEKS                       R12 R4 K29 ["publishedAssetId"]
      214 FASTCALL1                        TOSTRING R12 ; [+2]
      215 GETIMPORT                        R11 K38 [tostring]
      217 CALL                             R11 1 1
      218 JUMP                             ; [+1]
      219 LOADNIL                          R11
      220 SETTABLEKS                       R11 R10 K29 ["publishedAssetId"]
      222 JUMPIFNOT                        R8 ; [+3]
      223 GETTABLEKS                       R11 R4 K30 ["publishError"]
      225 JUMP                             ; [+1]
      226 LOADNIL                          R11
      227 SETTABLEKS                       R11 R10 K30 ["publishError"]
      229 JUMPIFNOT                        R8 ; [+5]
      230 JUMPIFEQKNIL                     R5 ; [+4]
      232 GETTABLEKS                       R11 R5 K31 ["clipGuid"]
      234 JUMP                             ; [+1]
      235 LOADNIL                          R11
      236 SETTABLEKS                       R11 R10 K31 ["clipGuid"]
      238 CALL                             R9 1 0
      239 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantAnimationGenTelemetry"]
        3 JUMPIFNOT                        R2 ; [+2]
        4 JUMPIFNOTEQKNIL                  R0 ; [+2]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R2 R1 K1 ["generation"]
        9 GETTABLEKS                       R3 R2 K2 ["success"]
       11 JUMPIFNOT                        R3 ; [+6]
       12 GETTABLEKS                       R4 R2 K3 ["keyframeSequence"]
       14 JUMPIFNOTEQKNIL                  R4 ; [+2]
       16 LOADB                            R3 0 +1
       17 LOADB                            R3 1
       18 GETTABLEKS                       R5 R1 K4 ["superseded"]
       20 JUMPIFNOT                        R5 ; [+2]
       21 LOADK                            R4 K5 ["Superseded"]
       22 JUMP                             ; [+15]
       23 JUMPIFNOT                        R3 ; [+2]
       24 LOADNIL                          R4
       25 JUMP                             ; [+12]
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R5 R2 K6 ["failureReason"]
       29 JUMPIF                           R5 ; [+5]
       30 GETUPVAL                         R5 2
       31 GETTABLEKS                       R5 R5 K7 ["FailureReasons"]
       33 GETTABLEKS                       R5 R5 K8 ["GenerationFailed"]
       35 GETTABLEKS                       R6 R2 K9 ["errorMessage"]
       37 CALL                             R4 2 1
       38 JUMPIFEQKNIL                     R4 ; [+2]
       40 LOADB                            R5 0 +1
       41 LOADB                            R5 1
       42 GETTABLEKS                       R6 R0 K10 ["logAnimationGenCompleted"]
       44 DUPTABLE                         R7 K23 [{["generationId"], ["jobId"], ["generationMode"], ["entryPoint"] = "form", ["success"], ["failureReason"], ["errorMessage"], ["durationMilliseconds"], ["prompt"] = "", ["inputAssetId"], ["clipDuration"], ["rigType"], ["usedBackend"]}]
       45 GETTABLEKS                       R8 R2 K11 ["generationId"]
       47 SETTABLEKS                       R8 R7 K11 ["generationId"]
       49 GETTABLEKS                       R8 R2 K24 ["contextId"]
       51 SETTABLEKS                       R8 R7 K12 ["jobId"]
       53 GETUPVAL                         R8 2
       54 GETTABLEKS                       R8 R8 K25 ["GenerationModes"]
       56 GETTABLEKS                       R8 R8 K26 ["Upscale"]
       58 SETTABLEKS                       R8 R7 K13 ["generationMode"]
       60 SETTABLEKS                       R5 R7 K2 ["success"]
       62 SETTABLEKS                       R4 R7 K6 ["failureReason"]
       64 GETTABLEKS                       R8 R2 K9 ["errorMessage"]
       66 SETTABLEKS                       R8 R7 K9 ["errorMessage"]
       68 GETTABLEKS                       R8 R1 K16 ["durationMilliseconds"]
       70 SETTABLEKS                       R8 R7 K16 ["durationMilliseconds"]
       72 GETTABLEKS                       R8 R1 K19 ["inputAssetId"]
       74 SETTABLEKS                       R8 R7 K19 ["inputAssetId"]
       76 JUMPIFNOT                        R5 ; [+9]
       77 GETTABLEKS                       R9 R2 K3 ["keyframeSequence"]
       79 JUMPIFEQKNIL                     R9 ; [+6]
       81 GETTABLEKS                       R8 R2 K3 ["keyframeSequence"]
       83 GETTABLEKS                       R8 R8 K27 ["Length"]
       85 JUMP                             ; [+1]
       86 LOADNIL                          R8
       87 SETTABLEKS                       R8 R7 K20 ["clipDuration"]
       89 GETTABLEKS                       R9 R1 K28 ["rig"]
       91 JUMPIFEQKNIL                     R9 ; [+27]
       93 GETTABLEKS                       R9 R1 K28 ["rig"]
       95 LOADK                            R12 K29 ["Humanoid"]
       96 NAMECALL                         R10 R9 K30 ["FindFirstChildOfClass"]
       98 CALL                             R10 2 1
       99 JUMPIFNOTEQKNIL                  R10 ; [+3]
      101 LOADNIL                          R8
      102 JUMP                             ; [+17]
      103 GETTABLEKS                       R11 R10 K31 ["RigType"]
      105 GETIMPORT                        R12 K35 [Enum.HumanoidRigType.R6]
      107 JUMPIFNOTEQ                      R11 R12 ; [+3]
      109 LOADK                            R8 K34 ["R6"]
      110 JUMP                             ; [+9]
      111 GETUPVAL                         R11 3
      112 MOVE                             R12 R9
      113 CALL                             R11 1 1
      114 JUMPIFNOT                        R11 ; [+2]
      115 LOADK                            R8 K36 ["R15"]
      116 JUMP                             ; [+3]
      117 LOADK                            R8 K37 ["R15NonStandard"]
      118 JUMP                             ; [+1]
      119 LOADNIL                          R8
      120 SETTABLEKS                       R8 R7 K21 ["rigType"]
      122 GETTABLEKS                       R9 R2 K6 ["failureReason"]
      124 JUMPIFEQKNIL                     R9 ; [+2]
      126 LOADB                            R8 0 +1
      127 LOADB                            R8 1
      128 SETTABLEKS                       R8 R7 K22 ["usedBackend"]
      130 CALL                             R6 1 0
      131 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantAnimationGenTelemetry"]
        3 JUMPIF                           R1 ; [+2]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 DUPTABLE                         R1 K8 [{"rigType", "rigInserted", "usedBackend", "errorMessage", "editedPoseCount", "parentGenerationId", "clipGuid"}]
        7 GETTABLEKS                       R3 R0 K9 ["rig"]
        9 JUMPIFEQKNIL                     R3 ; [+27]
       11 GETTABLEKS                       R3 R0 K9 ["rig"]
       13 LOADK                            R6 K10 ["Humanoid"]
       14 NAMECALL                         R4 R3 K11 ["FindFirstChildOfClass"]
       16 CALL                             R4 2 1
       17 JUMPIFNOTEQKNIL                  R4 ; [+3]
       19 LOADNIL                          R2
       20 JUMP                             ; [+17]
       21 GETTABLEKS                       R5 R4 K12 ["RigType"]
       23 GETIMPORT                        R6 K16 [Enum.HumanoidRigType.R6]
       25 JUMPIFNOTEQ                      R5 R6 ; [+3]
       27 LOADK                            R2 K15 ["R6"]
       28 JUMP                             ; [+9]
       29 GETUPVAL                         R5 1
       30 MOVE                             R6 R3
       31 CALL                             R5 1 1
       32 JUMPIFNOT                        R5 ; [+2]
       33 LOADK                            R2 K17 ["R15"]
       34 JUMP                             ; [+3]
       35 LOADK                            R2 K18 ["R15NonStandard"]
       36 JUMP                             ; [+1]
       37 LOADNIL                          R2
       38 SETTABLEKS                       R2 R1 K1 ["rigType"]
       40 GETTABLEKS                       R2 R0 K2 ["rigInserted"]
       42 SETTABLEKS                       R2 R1 K2 ["rigInserted"]
       44 GETTABLEKS                       R2 R0 K3 ["usedBackend"]
       46 SETTABLEKS                       R2 R1 K3 ["usedBackend"]
       48 GETTABLEKS                       R2 R0 K4 ["errorMessage"]
       50 SETTABLEKS                       R2 R1 K4 ["errorMessage"]
       52 GETTABLEKS                       R2 R0 K5 ["editedPoseCount"]
       54 SETTABLEKS                       R2 R1 K5 ["editedPoseCount"]
       56 GETTABLEKS                       R2 R0 K6 ["parentGenerationId"]
       58 SETTABLEKS                       R2 R1 K6 ["parentGenerationId"]
       60 GETTABLEKS                       R2 R0 K7 ["clipGuid"]
       62 SETTABLEKS                       R2 R1 K7 ["clipGuid"]
       64 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["FFlagAssistantAnimationGenTelemetry"]
        3 JUMPIFNOT                        R6 ; [+2]
        4 JUMPIFNOTEQKNIL                  R0 ; [+2]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R6 R0 K1 ["logAnimationGenClipAction"]
        9 DUPTABLE                         R7 K13 [{["requestId"], ["action"] = "upscaleSubmitted", ["clipGuid"], ["generationId"], ["jobId"], ["armsBendingPercent"], ["legsBendingPercent"], ["blendWithR6Percent"], ["upperBlendWithR6Percent"], ["lowerBlendWithR6Percent"]}]
       10 SETTABLEKS                       R1 R7 K2 ["requestId"]
       12 GETUPVAL                         R9 0
       13 GETTABLEKS                       R9 R9 K14 ["FFlagAssistantAnimationGenTrackMcpPublish"]
       15 JUMPIFNOT                        R9 ; [+2]
       16 MOVE                             R8 R5
       17 JUMP                             ; [+1]
       18 LOADNIL                          R8
       19 SETTABLEKS                       R8 R7 K5 ["clipGuid"]
       21 SETTABLEKS                       R3 R7 K6 ["generationId"]
       23 SETTABLEKS                       R4 R7 K7 ["jobId"]
       25 GETTABLEKS                       R8 R2 K8 ["armsBendingPercent"]
       27 SETTABLEKS                       R8 R7 K8 ["armsBendingPercent"]
       29 GETTABLEKS                       R8 R2 K9 ["legsBendingPercent"]
       31 SETTABLEKS                       R8 R7 K9 ["legsBendingPercent"]
       33 GETTABLEKS                       R8 R2 K10 ["blendWithR6Percent"]
       35 SETTABLEKS                       R8 R7 K10 ["blendWithR6Percent"]
       37 GETTABLEKS                       R8 R2 K11 ["upperBlendWithR6Percent"]
       39 SETTABLEKS                       R8 R7 K11 ["upperBlendWithR6Percent"]
       41 GETTABLEKS                       R8 R2 K12 ["lowerBlendWithR6Percent"]
       43 SETTABLEKS                       R8 R7 K12 ["lowerBlendWithR6Percent"]
       45 CALL                             R6 1 0
       46 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantAnimationGenTelemetry"]
        3 JUMPIFNOT                        R2 ; [+2]
        4 JUMPIFNOTEQKNIL                  R0 ; [+2]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R2 R0 K1 ["logAnimationGenClipAction"]
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R1 K0 ["eventLogger"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["FFlagAssistantAnimationGenTelemetry"]
        5 JUMPIFNOT                        R3 ; [+2]
        6 JUMPIFNOTEQKNIL                  R2 ; [+2]
        8 RETURN                           R0 0
        9 GETUPVAL                         R3 1
       10 DUPTABLE                         R4 K7 [{"eventLogger", "generationMode", "sourceJobId", "startTime", "mutationCounts", "editedEffectors"}]
       11 SETTABLEKS                       R2 R4 K0 ["eventLogger"]
       13 GETTABLEKS                       R5 R1 K2 ["generationMode"]
       15 SETTABLEKS                       R5 R4 K2 ["generationMode"]
       17 GETTABLEKS                       R5 R1 K3 ["sourceJobId"]
       19 SETTABLEKS                       R5 R4 K3 ["sourceJobId"]
       21 GETIMPORT                        R5 K10 [os.clock]
       23 CALL                             R5 0 1
       24 SETTABLEKS                       R5 R4 K4 ["startTime"]
       26 NEWTABLE                         R5 0 0
       28 SETTABLEKS                       R5 R4 K5 ["mutationCounts"]
       30 NEWTABLE                         R5 0 0
       32 SETTABLEKS                       R5 R4 K6 ["editedEffectors"]
       34 SETTABLE                         R4 R3 R0
       35 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 JUMPIFNOTEQKNIL                  R3 ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R4 R3 K0 ["mutationCounts"]
        7 GETTABLEKS                       R8 R3 K0 ["mutationCounts"]
        9 GETTABLE                         R7 R8 R1
       10 ORK                              R6 R7 K2 [0]
       11 ADDK                             R5 R6 K1 [1]
       12 SETTABLE                         R5 R4 R1
       13 JUMPIFEQKNIL                     R2 ; [+11]
       15 MOVE                             R4 R2
       16 LOADNIL                          R5
       17 LOADNIL                          R6
       18 FORGPREP                         R4
       19 GETTABLEKS                       R9 R3 K3 ["editedEffectors"]
       21 LOADB                            R10 1
       22 SETTABLE                         R10 R9 R8
       23 FORGLOOP                         R4 2 ; [-5]
       25 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 0
        6 LOADNIL                          R4
        7 SETTABLE                         R4 R3 R0
        8 NEWTABLE                         R3 0 0
       10 GETTABLEKS                       R4 R2 K0 ["editedEffectors"]
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 FASTCALL2                        TABLE_INSERT R3 R7 ; [+5]
       17 MOVE                             R10 R3
       18 MOVE                             R11 R7
       19 GETIMPORT                        R9 K3 [table.insert]
       21 CALL                             R9 2 0
       22 FORGLOOP                         R4 1 ; [-8]
       24 GETIMPORT                        R4 K5 [table.sort]
       26 MOVE                             R5 R3
       27 CALL                             R4 1 0
       28 GETTABLEKS                       R4 R2 K6 ["mutationCounts"]
       30 GETTABLEKS                       R5 R2 K7 ["eventLogger"]
       32 GETTABLEKS                       R5 R5 K8 ["logAnimationGenEditSession"]
       34 DUPTABLE                         R6 K19 [{"editSessionId", "sourceJobId", "generationMode", "outcome", "sessionDurationMilliseconds", "posesInsertedCount", "posesDeletedCount", "posesMovedCount", "posesResizedCount", "poseDragCount", "editedEffectors"}]
       35 SETTABLEKS                       R0 R6 K9 ["editSessionId"]
       37 GETTABLEKS                       R7 R2 K10 ["sourceJobId"]
       39 SETTABLEKS                       R7 R6 K10 ["sourceJobId"]
       41 GETTABLEKS                       R7 R2 K11 ["generationMode"]
       43 SETTABLEKS                       R7 R6 K11 ["generationMode"]
       45 SETTABLEKS                       R1 R6 K12 ["outcome"]
       47 GETIMPORT                        R10 K23 [os.clock]
       49 CALL                             R10 0 1
       50 GETTABLEKS                       R11 R2 K24 ["startTime"]
       52 SUB                              R9 R10 R11
       53 MULK                             R8 R9 K20 [1000]
       54 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       55 GETIMPORT                        R7 K27 [math.floor]
       57 CALL                             R7 1 1
       58 SETTABLEKS                       R7 R6 K13 ["sessionDurationMilliseconds"]
       60 GETTABLEKS                       R8 R4 K29 ["poseInserted"]
       62 ORK                              R7 R8 K28 [0]
       63 SETTABLEKS                       R7 R6 K14 ["posesInsertedCount"]
       65 GETTABLEKS                       R8 R4 K30 ["poseDeleted"]
       67 ORK                              R7 R8 K28 [0]
       68 SETTABLEKS                       R7 R6 K15 ["posesDeletedCount"]
       70 GETTABLEKS                       R8 R4 K31 ["poseMoved"]
       72 ORK                              R7 R8 K28 [0]
       73 SETTABLEKS                       R7 R6 K16 ["posesMovedCount"]
       75 GETTABLEKS                       R8 R4 K32 ["poseResized"]
       77 ORK                              R7 R8 K28 [0]
       78 SETTABLEKS                       R7 R6 K17 ["posesResizedCount"]
       80 GETTABLEKS                       R8 R4 K33 ["poseDragged"]
       82 ORK                              R7 R8 K28 [0]
       83 SETTABLEKS                       R7 R6 K18 ["poseDragCount"]
       85 GETIMPORT                        R7 K35 [table.concat]
       87 MOVE                             R8 R3
       88 LOADK                            R9 K36 [","]
       89 CALL                             R7 2 1
       90 SETTABLEKS                       R7 R6 K0 ["editedEffectors"]
       92 CALL                             R5 1 0
       93 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R0 K2 [table.clear]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
        0 NEWTABLE                         R0 0 0
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 NEWCLOSURE                       R2 P1
        6 CAPTURE                          VAL R0
        7 NEWCLOSURE                       R3 P2
        8 CAPTURE                          VAL R0
        9 NEWCLOSURE                       R4 P3
       10 CAPTURE                          VAL R0
       11 DUPTABLE                         R5 K4 [{"beginSession", "recordMutation", "endSession", "destroy"}]
       12 SETTABLEKS                       R1 R5 K0 ["beginSession"]
       14 SETTABLEKS                       R2 R5 K1 ["recordMutation"]
       16 SETTABLEKS                       R3 R5 K2 ["endSession"]
       18 SETTABLEKS                       R4 R5 K3 ["destroy"]
       20 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Remotes"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationGenRemotes"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["AnimationGen"]
       20 GETTABLEKS                       R3 R3 K10 ["AnimationGenTypes"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Guest"]
       27 GETTABLEKS                       R4 R4 K12 ["Environment"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K13 ["Flags"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K14 ["Types"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K8 ["Util"]
       44 GETTABLEKS                       R7 R7 K9 ["AnimationGen"]
       46 GETTABLEKS                       R7 R7 K15 ["isStandardR15Rig"]
       48 CALL                             R6 1 1
       49 NEWTABLE                         R7 8 0
       51 NEWTABLE                         R8 0 6
       53 DUPTABLE                         R9 K20 [{["text"] = "timed out after", ["failureReason"] = "Timeout"}]
       54 DUPTABLE                         R10 K23 [{["text"] = "Malformed Output", ["failureReason"] = "MalformedOutput"}]
       55 DUPTABLE                         R11 K26 [{["text"] = "Internal Error", ["failureReason"] = "InternalError"}]
       56 DUPTABLE                         R12 K29 [{["text"] = "Invalid request", ["failureReason"] = "InvalidRequest"}]
       57 DUPTABLE                         R13 K32 [{["text"] = "exceeded the polling limit", ["failureReason"] = "PollingLimitExceeded"}]
       58 DUPTABLE                         R14 K35 [{["text"] = "ADMISSION_REJECTED", ["failureReason"] = "AdmissionRejected"}]
       59 SETLIST                          R8 R9 6 [1]
       61 DUPCLOSURE                       R9 K36 [PROTO_0]
       62 DUPCLOSURE                       R10 K37 [PROTO_1]
       63 DUPCLOSURE                       R11 K38 [PROTO_2]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R8
       66 DUPCLOSURE                       R12 K39 [PROTO_3]
       67 CAPTURE                          VAL R6
       68 DUPCLOSURE                       R13 K40 [PROTO_4]
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R2
       72 SETTABLEKS                       R13 R7 K41 ["logGenerationCompleted"]
       74 DUPCLOSURE                       R13 K42 [PROTO_5]
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R11
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R6
       79 SETTABLEKS                       R13 R7 K43 ["logUpscalePreviewGenerated"]
       81 DUPCLOSURE                       R13 K44 [PROTO_6]
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R6
       84 SETTABLEKS                       R13 R7 K45 ["getGenerationDetails"]
       86 DUPCLOSURE                       R13 K46 [PROTO_7]
       87 CAPTURE                          VAL R4
       88 SETTABLEKS                       R13 R7 K47 ["logUpscaleSubmitted"]
       90 DUPCLOSURE                       R13 K48 [PROTO_8]
       91 CAPTURE                          VAL R4
       92 SETTABLEKS                       R13 R7 K49 ["logClipAction"]
       94 DUPCLOSURE                       R13 K50 [PROTO_13]
       95 CAPTURE                          VAL R4
       96 SETTABLEKS                       R13 R7 K51 ["createEditSessionTracker"]
       98 RETURN                           R7 1
