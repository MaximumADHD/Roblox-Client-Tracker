PROTO_0:
        0 DUPTABLE                         R1 K5 [{[1] = 0, ["name"] = "", ["failureReason"]}]
        1 SETTABLEKS                       R0 R1 K4 ["failureReason"]
        3 RETURN                           R1 1

PROTO_1:
        0 JUMPIFEQKNIL                     R2 ; [+2]
        2 RETURN                           R2 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+3]
        5 LOADNIL                          R3
        6 RETURN                           R3 1
        7 GETIMPORT                        R3 K1 [pcall]
        9 GETTABLEKS                       R4 R0 K2 ["instances"]
       11 GETTABLEKS                       R4 R4 K3 ["getUniqueId"]
       13 MOVE                             R5 R1
       14 CALL                             R3 2 2
       15 JUMPIFNOT                        R3 ; [+8]
       16 JUMPIFEQKNIL                     R4 ; [+7]
       18 FASTCALL1                        TOSTRING R4 ; [+3]
       19 MOVE                             R6 R4
       20 GETIMPORT                        R5 K5 [tostring]
       22 CALL                             R5 1 1
       23 RETURN                           R5 1
       24 LOADNIL                          R5
       25 RETURN                           R5 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["GetTags"]
        4 CALL                             R2 2 3
        5 FORGPREP                         R2
        6 GETIMPORT                        R7 K3 [string.find]
        8 MOVE                             R8 R6
        9 LOADK                            R9 K4 ["Assistant%-AnimationGenLink%-"]
       10 CALL                             R7 2 1
       11 JUMPIF                           R7 ; [+6]
       12 GETIMPORT                        R7 K3 [string.find]
       14 MOVE                             R8 R6
       15 LOADK                            R9 K5 ["RBXAI%-Animation%-"]
       16 CALL                             R7 2 1
       17 JUMPIFNOT                        R7 ; [+6]
       18 GETUPVAL                         R7 0
       19 MOVE                             R9 R0
       20 MOVE                             R10 R6
       21 NAMECALL                         R7 R7 K6 ["RemoveTag"]
       23 CALL                             R7 3 0
       24 FORGLOOP                         R2 2 ; [-19]
       26 GETUPVAL                         R2 0
       27 MOVE                             R4 R0
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R5 R5 K7 ["getLinkTag"]
       31 MOVE                             R6 R1
       32 CALL                             R5 1 -1
       33 NAMECALL                         R2 R2 K8 ["AddTag"]
       35 CALL                             R2 -1 0
       36 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["callbacks"]
        3 GETTABLEKS                       R1 R1 K1 ["playbackStateChanged"]
        5 DUPTABLE                         R2 K4 [{"toolUseId", "state"}]
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K2 ["toolUseId"]
        9 SETTABLEKS                       R0 R2 K3 ["state"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["environment"]
        3 GETTABLEKS                       R2 R2 K1 ["instances"]
        5 GETTABLEKS                       R2 R2 K2 ["getUniqueId"]
        7 MOVE                             R3 R0
        8 CALL                             R2 1 -1
        9 FASTCALL                         TOSTRING ; [+2]
       10 GETIMPORT                        R1 K4 [tostring]
       12 CALL                             R1 -1 1
       13 RETURN                           R1 1

PROTO_5:
        0 DUPTABLE                         R2 K3 [{"id", "playbackStateChanged", "getUniqueId"}]
        1 SETTABLEKS                       R0 R2 K0 ["id"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R3 R2 K1 ["playbackStateChanged"]
        8 NEWCLOSURE                       R3 P1
        9 CAPTURE                          VAL R1
       10 SETTABLEKS                       R3 R2 K2 ["getUniqueId"]
       12 RETURN                           R2 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 GETTABLEKS                       R1 R1 K1 ["selection"]
        4 GETTABLEKS                       R1 R1 K2 ["get"]
        6 CALL                             R1 0 1
        7 LENGTH                           R2 R1
        8 JUMPIFEQKN                       R2 K3 [1] ; [+3]
       10 LOADNIL                          R2
       11 RETURN                           R2 1
       12 GETTABLEN                        R2 R1 1
       13 GETUPVAL                         R3 0
       14 MOVE                             R4 R2
       15 CALL                             R3 1 1
       16 JUMPIF                           R3 ; [+2]
       17 LOADNIL                          R3
       18 RETURN                           R3 1
       19 RETURN                           R2 1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["environment"]
        2 GETTABLEKS                       R2 R2 K1 ["selection"]
        4 GETTABLEKS                       R2 R2 K2 ["get"]
        6 CALL                             R2 0 1
        7 LENGTH                           R3 R2
        8 JUMPIFEQKN                       R3 K3 [1] ; [+3]
       10 LOADNIL                          R1
       11 JUMP                             ; [+8]
       12 GETTABLEN                        R3 R2 1
       13 GETUPVAL                         R4 0
       14 MOVE                             R5 R3
       15 CALL                             R4 1 1
       16 JUMPIF                           R4 ; [+2]
       17 LOADNIL                          R1
       18 JUMP                             ; [+1]
       19 MOVE                             R1 R3
       20 JUMPIFNOTEQKNIL                  R1 ; [+3]
       22 LOADNIL                          R2
       23 RETURN                           R2 1
       24 GETTABLEKS                       R2 R0 K0 ["environment"]
       26 GETTABLEKS                       R2 R2 K4 ["instances"]
       28 GETTABLEKS                       R2 R2 K5 ["getUniqueId"]
       30 MOVE                             R3 R1
       31 CALL                             R2 1 1
       32 DUPTABLE                         R3 K9 [{"uniqueId", "name", "className"}]
       33 SETTABLEKS                       R2 R3 K6 ["uniqueId"]
       35 GETTABLEKS                       R4 R1 K10 ["Name"]
       37 SETTABLEKS                       R4 R3 K7 ["name"]
       39 GETTABLEKS                       R4 R1 K11 ["ClassName"]
       41 SETTABLEKS                       R4 R3 K8 ["className"]
       43 RETURN                           R3 1

PROTO_8:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["ASSISTANT_ANIMATION_GENERATION_FOLDER_NAME"]
        6 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        8 CALL                             R1 2 1
        9 JUMPIFEQKNIL                     R1 ; [+15]
       11 NAMECALL                         R2 R1 K2 ["GetChildren"]
       13 CALL                             R2 1 3
       14 FORGPREP                         R2
       15 GETTABLEKS                       R9 R6 K3 ["Name"]
       17 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       19 MOVE                             R8 R0
       20 GETIMPORT                        R7 K6 [table.insert]
       22 CALL                             R7 2 0
       23 FORGLOOP                         R2 2 ; [-9]
       25 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETIMPORT                        R3 K3 [Enum.InfoType.Asset]
        4 NAMECALL                         R0 R0 K4 ["GetProductInfoAsync"]
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_10:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIF                           R1 ; [+2]
        7 LOADNIL                          R3
        8 RETURN                           R3 1
        9 GETTABLEKS                       R3 R2 K2 ["Name"]
       11 JUMPIFNOTEQKS                    R3 K3 [""] ; [+3]
       13 LOADNIL                          R4
       14 RETURN                           R4 1
       15 RETURN                           R3 1

PROTO_11:
        0 LOADNIL                          R3
        1 JUMPIFEQKNIL                     R0 ; [+10]
        3 GETTABLEKS                       R4 R0 K0 ["keyframeSequence"]
        5 JUMPIFEQKNIL                     R4 ; [+6]
        7 GETTABLEKS                       R4 R0 K0 ["keyframeSequence"]
        9 GETTABLEKS                       R3 R4 K1 ["Name"]
       11 JUMP                             ; [+30]
       12 JUMPIFEQKNIL                     R1 ; [+29]
       14 LOADK                            R6 K2 ["%d+"]
       15 NAMECALL                         R4 R1 K3 ["match"]
       17 CALL                             R4 2 1
       18 JUMPIFEQKNIL                     R4 ; [+23]
       20 FASTCALL1                        TONUMBER R4 ; [+3]
       21 MOVE                             R7 R4
       22 GETIMPORT                        R6 K5 [tonumber]
       24 CALL                             R6 1 1
       25 GETIMPORT                        R7 K7 [pcall]
       27 NEWCLOSURE                       R8 P0
       28 CAPTURE                          UPVAL U0
       29 CAPTURE                          VAL R6
       30 CALL                             R7 1 2
       31 JUMPIF                           R7 ; [+2]
       32 LOADNIL                          R5
       33 JUMP                             ; [+7]
       34 GETTABLEKS                       R9 R8 K1 ["Name"]
       36 JUMPIFNOTEQKS                    R9 K8 [""] ; [+3]
       38 LOADNIL                          R5
       39 JUMP                             ; [+1]
       40 MOVE                             R5 R9
       41 OR                               R3 R5 R4
       42 JUMPIFNOTEQKNIL                  R3 ; [+7]
       44 GETUPVAL                         R4 1
       45 GETTABLEKS                       R4 R4 K9 ["computeBaseNameFromPrompt"]
       47 MOVE                             R5 R2
       48 CALL                             R4 1 -1
       49 RETURN                           R4 -1
       50 GETUPVAL                         R4 1
       51 GETTABLEKS                       R4 R4 K10 ["computeNextVersionedName"]
       53 MOVE                             R5 R3
       54 GETUPVAL                         R6 2
       55 CALL                             R6 0 1
       56 CALL                             R4 2 -1
       57 RETURN                           R4 -1

PROTO_12:
        0 GETTABLEKS                       R6 R3 K0 ["keyframeSequence"]
        2 FASTCALL2K                       ASSERT R6 K1 ; [+4]
        4 LOADK                            R7 K1 ["Generated content requires a clip"]
        5 GETIMPORT                        R5 K3 [assert]
        7 CALL                             R5 2 1
        8 DUPTABLE                         R6 K10 [{"duration", "name", "generationId", "fbxFilePath", "contextId", "rigUniqueId"}]
        9 GETTABLEKS                       R7 R5 K11 ["Length"]
       11 SETTABLEKS                       R7 R6 K4 ["duration"]
       13 GETTABLEKS                       R8 R4 K5 ["name"]
       15 ORK                              R7 R8 K12 [""]
       16 SETTABLEKS                       R7 R6 K5 ["name"]
       18 GETTABLEKS                       R7 R4 K6 ["generationId"]
       20 SETTABLEKS                       R7 R6 K6 ["generationId"]
       22 GETTABLEKS                       R7 R4 K7 ["fbxFilePath"]
       24 SETTABLEKS                       R7 R6 K7 ["fbxFilePath"]
       26 GETTABLEKS                       R7 R4 K8 ["contextId"]
       28 SETTABLEKS                       R7 R6 K8 ["contextId"]
       30 GETTABLEKS                       R8 R1 K13 ["environment"]
       32 GETTABLEKS                       R9 R0 K9 ["rigUniqueId"]
       34 JUMPIFEQKNIL                     R9 ; [+3]
       36 MOVE                             R7 R9
       37 JUMP                             ; [+23]
       38 JUMPIFNOTEQKNIL                  R2 ; [+3]
       40 LOADNIL                          R7
       41 JUMP                             ; [+19]
       42 GETIMPORT                        R10 K15 [pcall]
       44 GETTABLEKS                       R11 R8 K16 ["instances"]
       46 GETTABLEKS                       R11 R11 K17 ["getUniqueId"]
       48 MOVE                             R12 R2
       49 CALL                             R10 2 2
       50 JUMPIFNOT                        R10 ; [+9]
       51 JUMPIFEQKNIL                     R11 ; [+8]
       53 FASTCALL1                        TOSTRING R11 ; [+3]
       54 MOVE                             R13 R11
       55 GETIMPORT                        R12 K19 [tostring]
       57 CALL                             R12 1 1
       58 MOVE                             R7 R12
       59 JUMP                             ; [+1]
       60 LOADNIL                          R7
       61 SETTABLEKS                       R7 R6 K9 ["rigUniqueId"]
       63 RETURN                           R6 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+5]
        4 GETTABLEKS                       R2 R1 K0 ["rig"]
        6 JUMPIFNOTEQKNIL                  R2 ; [+2]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R2 R1 K0 ["rig"]
       11 LOADK                            R5 K1 ["Humanoid"]
       12 NAMECALL                         R3 R2 K2 ["FindFirstChildOfClass"]
       14 CALL                             R3 2 1
       15 JUMPIF                           R3 ; [+4]
       16 LOADK                            R5 K3 ["AnimationController"]
       17 NAMECALL                         R3 R2 K2 ["FindFirstChildOfClass"]
       19 CALL                             R3 2 1
       20 JUMPIFNOT                        R3 ; [+8]
       21 LOADK                            R6 K4 ["Animator"]
       22 NAMECALL                         R4 R3 K2 ["FindFirstChildOfClass"]
       24 CALL                             R4 2 1
       25 JUMPIFNOT                        R4 ; [+3]
       26 GETUPVAL                         R5 1
       27 MOVE                             R6 R4
       28 CALL                             R5 1 0
       29 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getActivePose"]
        3 CALL                             R2 0 1
        4 JUMPIFEQKNIL                     R2 ; [+4]
        6 GETTABLEKS                       R3 R2 K1 ["contentId"]
        8 JUMP                             ; [+5]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K2 ["getEditorContentId"]
       12 MOVE                             R4 R0
       13 CALL                             R3 1 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K3 ["leave"]
       17 MOVE                             R5 R3
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R7 R7 K4 ["getContext"]
       21 MOVE                             R8 R3
       22 CALL                             R7 1 1
       23 OR                               R6 R7 R1
       24 CALL                             R4 2 0
       25 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R6 R2 K0 ["keyframeSequence"]
        2 FASTCALL2K                       ASSERT R6 K1 ; [+4]
        4 LOADK                            R7 K1 ["Generated content requires a clip"]
        5 GETIMPORT                        R5 K3 [assert]
        7 CALL                             R5 2 1
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K4 ["create"]
       11 MOVE                             R7 R2
       12 MOVE                             R8 R3
       13 CALL                             R6 2 1
       14 NAMECALL                         R7 R5 K5 ["Clone"]
       16 CALL                             R7 1 1
       17 SETTABLEKS                       R7 R6 K6 ["undoSafeKeyframeSequence"]
       19 GETUPVAL                         R7 1
       20 SETTABLE                         R6 R7 R0
       21 GETUPVAL                         R7 2
       22 GETTABLEKS                       R7 R7 K7 ["setAnimation"]
       24 GETUPVAL                         R8 3
       25 MOVE                             R9 R0
       26 MOVE                             R10 R1
       27 CALL                             R8 2 1
       28 CALL                             R7 1 0
       29 JUMPIFNOT                        R4 ; [+12]
       30 GETTABLEKS                       R7 R1 K8 ["environment"]
       32 GETTABLEKS                       R7 R7 K9 ["selection"]
       34 GETTABLEKS                       R7 R7 K10 ["set"]
       36 NEWTABLE                         R8 0 1
       38 MOVE                             R9 R3
       39 SETLIST                          R8 R9 1 [1]
       41 CALL                             R7 1 0
       42 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R6 0
        1 LOADB                            R8 0
        2 NAMECALL                         R6 R6 K0 ["GenerateGUID"]
        4 CALL                             R6 2 1
        5 SETTABLEKS                       R4 R3 K1 ["Name"]
        7 GETUPVAL                         R7 1
        8 MOVE                             R8 R3
        9 MOVE                             R9 R6
       10 CALL                             R7 2 0
       11 GETTABLEKS                       R7 R1 K2 ["environment"]
       13 GETUPVAL                         R8 0
       14 LOADB                            R10 0
       15 NAMECALL                         R8 R8 K0 ["GenerateGUID"]
       17 CALL                             R8 2 1
       18 GETTABLEKS                       R9 R7 K3 ["startRecording"]
       20 MOVE                             R10 R8
       21 LOADK                            R11 K4 ["Insert Generated Animation"]
       22 CALL                             R9 2 0
       23 GETUPVAL                         R9 2
       24 GETTABLEKS                       R9 R9 K5 ["saveKeyframeSequence"]
       26 MOVE                             R10 R3
       27 MOVE                             R11 R2
       28 CALL                             R9 2 0
       29 GETTABLEKS                       R9 R7 K6 ["endRecording"]
       31 MOVE                             R10 R8
       32 CALL                             R9 1 0
       33 DUPTABLE                         R9 K9 [{"keyframeSequence", "isUpscale"}]
       34 SETTABLEKS                       R3 R9 K7 ["keyframeSequence"]
       36 SETTABLEKS                       R5 R9 K8 ["isUpscale"]
       38 GETTABLEKS                       R10 R0 K10 ["toolUseId"]
       40 GETTABLEKS                       R12 R9 K7 ["keyframeSequence"]
       42 FASTCALL2K                       ASSERT R12 K11 ; [+4]
       44 LOADK                            R13 K11 ["Generated content requires a clip"]
       45 GETIMPORT                        R11 K13 [assert]
       47 CALL                             R11 2 1
       48 GETUPVAL                         R12 3
       49 GETTABLEKS                       R12 R12 K14 ["create"]
       51 MOVE                             R13 R9
       52 MOVE                             R14 R2
       53 CALL                             R12 2 1
       54 NAMECALL                         R13 R11 K15 ["Clone"]
       56 CALL                             R13 1 1
       57 SETTABLEKS                       R13 R12 K16 ["undoSafeKeyframeSequence"]
       59 GETUPVAL                         R13 4
       60 SETTABLE                         R12 R13 R10
       61 GETUPVAL                         R13 5
       62 GETTABLEKS                       R13 R13 K17 ["setAnimation"]
       64 GETUPVAL                         R14 6
       65 MOVE                             R15 R10
       66 MOVE                             R16 R1
       67 CALL                             R14 2 1
       68 CALL                             R13 1 0
       69 GETUPVAL                         R10 7
       70 MOVE                             R11 R0
       71 MOVE                             R12 R1
       72 MOVE                             R13 R2
       73 MOVE                             R14 R9
       74 DUPTABLE                         R15 K21 [{"name", "generationId", "contextId"}]
       75 GETTABLEKS                       R16 R3 K1 ["Name"]
       77 SETTABLEKS                       R16 R15 K18 ["name"]
       79 SETTABLEKS                       R6 R15 K19 ["generationId"]
       81 GETTABLEKS                       R16 R0 K22 ["priorJobId"]
       83 SETTABLEKS                       R16 R15 K20 ["contextId"]
       85 CALL                             R10 5 1
       86 RETURN                           R10 1

PROTO_17:
        0 GETTABLEKS                       R5 R0 K0 ["savedKeyframesContentId"]
        2 GETTABLEKS                       R6 R0 K1 ["editSource"]
        4 JUMPIFEQKNIL                     R6 ; [+13]
        6 JUMPIFEQKNIL                     R2 ; [+11]
        8 JUMPIFEQKNIL                     R5 ; [+9]
       10 JUMPIFEQKNIL                     R4 ; [+7]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K2 ["hasEditedKeyframes"]
       15 MOVE                             R7 R5
       16 CALL                             R6 1 1
       17 JUMPIF                           R6 ; [+2]
       18 LOADNIL                          R6
       19 RETURN                           R6 1
       20 GETUPVAL                         R6 1
       21 GETUPVAL                         R7 0
       22 MOVE                             R8 R5
       23 MOVE                             R9 R4
       24 CALL                             R6 3 1
       25 JUMPIFNOTEQKNIL                  R6 ; [+14]
       27 GETIMPORT                        R7 K4 [warn]
       29 LOADK                            R8 K5 ["[AnimationGen] Generate could not bake the authored poses"]
       30 CALL                             R7 1 0
       31 GETUPVAL                         R8 2
       32 GETTABLEKS                       R8 R8 K6 ["FailureReasons"]
       34 GETTABLEKS                       R8 R8 K7 ["GenerationFailed"]
       36 DUPTABLE                         R7 K13 [{["duration"] = 0, ["name"] = "", ["failureReason"]}]
       37 SETTABLEKS                       R8 R7 K12 ["failureReason"]
       39 RETURN                           R7 1
       40 GETUPVAL                         R7 3
       41 MOVE                             R8 R0
       42 MOVE                             R9 R1
       43 MOVE                             R10 R2
       44 MOVE                             R11 R6
       45 MOVE                             R12 R3
       46 GETTABLEKS                       R14 R0 K1 ["editSource"]
       48 GETUPVAL                         R15 2
       49 GETTABLEKS                       R15 R15 K14 ["GenerationModes"]
       51 GETTABLEKS                       R15 R15 K15 ["Upscale"]
       53 JUMPIFEQ                         R14 R15 ; [+2]
       55 LOADB                            R13 0 +1
       56 LOADB                            R13 1
       57 CALL                             R7 6 1
       58 GETUPVAL                         R8 4
       59 GETTABLEKS                       R8 R8 K16 ["discardSession"]
       61 MOVE                             R9 R5
       62 CALL                             R8 1 0
       63 RETURN                           R7 1

PROTO_18:
        0 GETTABLEKS                       R5 R0 K0 ["inputAssetId"]
        2 JUMPIFEQKNIL                     R5 ; [+8]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K1 ["takeCandidate"]
        7 GETTABLEKS                       R5 R0 K0 ["inputAssetId"]
        9 CALL                             R4 1 1
       10 JUMP                             ; [+1]
       11 LOADNIL                          R4
       12 JUMPIFNOTEQKNIL                  R4 ; [+14]
       14 GETIMPORT                        R5 K3 [warn]
       16 LOADK                            R6 K4 ["[AnimationGen] Submit found no generated upscale for the selected clip"]
       17 CALL                             R5 1 0
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K5 ["FailureReasons"]
       21 GETTABLEKS                       R6 R6 K6 ["GenerationFailed"]
       23 DUPTABLE                         R5 K12 [{["duration"] = 0, ["name"] = "", ["failureReason"]}]
       24 SETTABLEKS                       R6 R5 K11 ["failureReason"]
       26 RETURN                           R5 1
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R5 R5 K13 ["resolve"]
       30 DUPTABLE                         R6 K17 [{"armsReach", "legsReach", "blend"}]
       31 GETTABLEKS                       R7 R0 K14 ["armsReach"]
       33 SETTABLEKS                       R7 R6 K14 ["armsReach"]
       35 GETTABLEKS                       R7 R0 K15 ["legsReach"]
       37 SETTABLEKS                       R7 R6 K15 ["legsReach"]
       39 GETTABLEKS                       R7 R0 K16 ["blend"]
       41 SETTABLEKS                       R7 R6 K16 ["blend"]
       43 CALL                             R5 1 1
       44 GETUPVAL                         R6 3
       45 GETTABLEKS                       R6 R6 K18 ["create"]
       47 DUPTABLE                         R7 K20 [{"keyframeSequence"}]
       48 GETTABLEKS                       R8 R4 K19 ["keyframeSequence"]
       50 SETTABLEKS                       R8 R7 K19 ["keyframeSequence"]
       52 LOADNIL                          R8
       53 CALL                             R6 2 1
       54 SETTABLEKS                       R5 R6 K21 ["settings"]
       56 GETUPVAL                         R8 4
       57 GETTABLEKS                       R8 R8 K22 ["resolveSequence"]
       59 MOVE                             R9 R6
       60 CALL                             R8 1 -1
       61 FASTCALL                         ASSERT ; [+2]
       62 GETIMPORT                        R7 K24 [assert]
       64 CALL                             R7 -1 1
       65 GETTABLEKS                       R8 R4 K25 ["blendRigidSequence"]
       67 GETUPVAL                         R9 5
       68 GETTABLEKS                       R9 R9 K26 ["aiGeneratedWeights"]
       70 GETTABLEKS                       R10 R5 K16 ["blend"]
       72 CALL                             R9 1 2
       73 JUMPIFEQKNIL                     R8 ; [+8]
       75 GETUPVAL                         R11 6
       76 MOVE                             R12 R8
       77 MOVE                             R13 R7
       78 MOVE                             R14 R9
       79 MOVE                             R15 R10
       80 CALL                             R11 4 1
       81 JUMP                             ; [+3]
       82 NAMECALL                         R11 R7 K27 ["Clone"]
       84 CALL                             R11 1 1
       85 GETUPVAL                         R12 3
       86 GETTABLEKS                       R12 R12 K28 ["disposeCache"]
       88 MOVE                             R13 R6
       89 CALL                             R12 1 0
       90 GETTABLEKS                       R12 R4 K19 ["keyframeSequence"]
       92 NAMECALL                         R12 R12 K29 ["Destroy"]
       94 CALL                             R12 1 0
       95 JUMPIFEQKNIL                     R8 ; [+4]
       97 NAMECALL                         R12 R8 K29 ["Destroy"]
       99 CALL                             R12 1 0
      100 GETTABLEKS                       R12 R4 K9 ["name"]
      102 SETTABLEKS                       R12 R11 K30 ["Name"]
      104 GETTABLEKS                       R12 R1 K31 ["environment"]
      106 GETUPVAL                         R13 7
      107 LOADB                            R15 0
      108 NAMECALL                         R13 R13 K32 ["GenerateGUID"]
      110 CALL                             R13 2 1
      111 GETTABLEKS                       R14 R12 K33 ["startRecording"]
      113 MOVE                             R15 R13
      114 LOADK                            R16 K34 ["Insert Generated Animation"]
      115 CALL                             R14 2 0
      116 JUMPIFNOT                        R3 ; [+5]
      117 GETUPVAL                         R14 8
      118 GETIMPORT                        R15 K38 [Enum.HumanoidRigType.R15]
      120 CALL                             R14 1 1
      121 MOVE                             R2 R14
      122 JUMPIFEQKNIL                     R2 ; [+7]
      124 GETUPVAL                         R14 9
      125 GETTABLEKS                       R14 R14 K39 ["saveKeyframeSequence"]
      127 MOVE                             R15 R11
      128 MOVE                             R16 R2
      129 CALL                             R14 2 0
      130 GETTABLEKS                       R14 R12 K40 ["endRecording"]
      132 MOVE                             R15 R13
      133 CALL                             R14 1 0
      134 JUMPIFNOTEQKNIL                  R2 ; [+13]
      136 NAMECALL                         R14 R11 K29 ["Destroy"]
      138 CALL                             R14 1 0
      139 GETUPVAL                         R15 1
      140 GETTABLEKS                       R15 R15 K5 ["FailureReasons"]
      142 GETTABLEKS                       R15 R15 K41 ["RigInsertFailed"]
      144 DUPTABLE                         R14 K12 [{["duration"] = 0, ["name"] = "", ["failureReason"]}]
      145 SETTABLEKS                       R15 R14 K11 ["failureReason"]
      147 RETURN                           R14 1
      148 DUPTABLE                         R14 K44 [{["keyframeSequence"], ["isUpscale"] = True}]
      149 SETTABLEKS                       R11 R14 K19 ["keyframeSequence"]
      151 GETUPVAL                         R15 10
      152 GETTABLEKS                       R16 R0 K45 ["toolUseId"]
      154 MOVE                             R17 R1
      155 MOVE                             R18 R14
      156 MOVE                             R19 R2
      157 MOVE                             R20 R3
      158 CALL                             R15 5 0
      159 GETUPVAL                         R15 11
      160 MOVE                             R16 R0
      161 MOVE                             R17 R1
      162 MOVE                             R18 R2
      163 MOVE                             R19 R14
      164 MOVE                             R20 R4
      165 CALL                             R15 5 1
      166 RETURN                           R15 1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["generateAnimationAsync"]
        3 DUPTABLE                         R3 K6 [{["prompt"] = "", ["generationMode"], ["inputAssetId"], ["outputFileName"]}]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K7 ["GenerationModes"]
        7 GETTABLEKS                       R4 R4 K8 ["Upscale"]
        9 SETTABLEKS                       R4 R3 K3 ["generationMode"]
       11 SETTABLEKS                       R0 R3 K4 ["inputAssetId"]
       13 LOADNIL                          R5
       14 JUMPIFEQKNIL                     R0 ; [+29]
       16 LOADK                            R8 K9 ["%d+"]
       17 NAMECALL                         R6 R0 K10 ["match"]
       19 CALL                             R6 2 1
       20 JUMPIFEQKNIL                     R6 ; [+23]
       22 FASTCALL1                        TONUMBER R6 ; [+3]
       23 MOVE                             R9 R6
       24 GETIMPORT                        R8 K12 [tonumber]
       26 CALL                             R8 1 1
       27 GETIMPORT                        R9 K14 [pcall]
       29 NEWCLOSURE                       R10 P0
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          VAL R8
       32 CALL                             R9 1 2
       33 JUMPIF                           R9 ; [+2]
       34 LOADNIL                          R7
       35 JUMP                             ; [+7]
       36 GETTABLEKS                       R11 R10 K15 ["Name"]
       38 JUMPIFNOTEQKS                    R11 K2 [""] ; [+3]
       40 LOADNIL                          R7
       41 JUMP                             ; [+1]
       42 MOVE                             R7 R11
       43 OR                               R5 R7 R6
       44 JUMPIFNOTEQKNIL                  R5 ; [+8]
       46 GETUPVAL                         R6 3
       47 GETTABLEKS                       R6 R6 K16 ["computeBaseNameFromPrompt"]
       49 LOADK                            R7 K2 [""]
       50 CALL                             R6 1 1
       51 MOVE                             R4 R6
       52 JUMP                             ; [+8]
       53 GETUPVAL                         R6 3
       54 GETTABLEKS                       R6 R6 K17 ["computeNextVersionedName"]
       56 MOVE                             R7 R5
       57 GETUPVAL                         R8 4
       58 CALL                             R8 0 1
       59 CALL                             R6 2 1
       60 MOVE                             R4 R6
       61 SETTABLEKS                       R4 R3 K5 ["outputFileName"]
       63 GETTABLEKS                       R4 R1 K18 ["environment"]
       65 CALL                             R2 2 1
       66 GETUPVAL                         R3 5
       67 CALL                             R3 0 0
       68 RETURN                           R2 1

PROTO_20:
        0 LOADNIL                          R2
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["isEditMode"]
        4 GETTABLEKS                       R4 R0 K1 ["generationMode"]
        6 CALL                             R3 1 1
        7 JUMPIFNOT                        R3 ; [+14]
        8 GETTABLEKS                       R3 R0 K2 ["editSourceToolUseId"]
       10 JUMPIFEQKNIL                     R3 ; [+11]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R5 R0 K2 ["editSourceToolUseId"]
       15 GETTABLE                         R3 R4 R5
       16 MOVE                             R4 R3
       17 JUMPIFNOT                        R4 ; [+2]
       18 GETTABLEKS                       R4 R3 K3 ["rig"]
       20 MOVE                             R2 R4
       21 JUMP                             ; [+33]
       22 GETTABLEKS                       R3 R0 K4 ["rigUniqueId"]
       24 JUMPIFEQKNIL                     R3 ; [+12]
       26 GETTABLEKS                       R3 R1 K5 ["environment"]
       28 GETTABLEKS                       R3 R3 K6 ["instances"]
       30 GETTABLEKS                       R3 R3 K7 ["getInstanceFromUniqueId"]
       32 GETTABLEKS                       R4 R0 K4 ["rigUniqueId"]
       34 CALL                             R3 1 1
       35 MOVE                             R2 R3
       36 JUMP                             ; [+18]
       37 GETTABLEKS                       R3 R0 K8 ["savedKeyframesContentId"]
       39 JUMPIFEQKNIL                     R3 ; [+11]
       41 GETUPVAL                         R4 1
       42 GETTABLEKS                       R5 R0 K8 ["savedKeyframesContentId"]
       44 GETTABLE                         R3 R4 R5
       45 MOVE                             R4 R3
       46 JUMPIFNOT                        R4 ; [+2]
       47 GETTABLEKS                       R4 R3 K3 ["rig"]
       49 MOVE                             R2 R4
       50 JUMP                             ; [+4]
       51 LOADNIL                          R3
       52 LOADB                            R4 1
       53 LOADNIL                          R5
       54 RETURN                           R3 3
       55 JUMPIFEQKNIL                     R2 ; [+5]
       57 GETUPVAL                         R3 2
       58 MOVE                             R4 R2
       59 CALL                             R3 1 1
       60 JUMPIF                           R3 ; [+11]
       61 LOADNIL                          R3
       62 LOADB                            R4 0
       63 GETUPVAL                         R6 0
       64 GETTABLEKS                       R6 R6 K9 ["FailureReasons"]
       66 GETTABLEKS                       R6 R6 K10 ["RigInsertFailed"]
       68 DUPTABLE                         R5 K16 [{["duration"] = 0, ["name"] = "", ["failureReason"]}]
       69 SETTABLEKS                       R6 R5 K15 ["failureReason"]
       71 RETURN                           R3 3
       72 MOVE                             R3 R2
       73 LOADB                            R4 0
       74 LOADNIL                          R5
       75 RETURN                           R3 3

PROTO_21:
        0 GETTABLEKS                       R2 R1 K0 ["environment"]
        2 GETTABLEKS                       R3 R0 K1 ["toolUseId"]
        4 GETTABLEKS                       R4 R0 K2 ["savedKeyframesContentId"]
        6 JUMPIFEQKNIL                     R4 ; [+7]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K3 ["getSession"]
       11 MOVE                             R6 R4
       12 CALL                             R5 1 1
       13 JUMP                             ; [+1]
       14 LOADNIL                          R5
       15 JUMPIFEQKNIL                     R5 ; [+4]
       17 GETTABLEKS                       R6 R5 K4 ["revision"]
       19 JUMP                             ; [+1]
       20 LOADNIL                          R6
       21 JUMPIFEQKNIL                     R4 ; [+28]
       23 GETTABLEKS                       R7 R0 K5 ["editSessionId"]
       25 JUMPIFEQKNIL                     R7 ; [+3]
       27 JUMPIFEQKNIL                     R5 ; [+9]
       29 JUMPIFEQKNIL                     R5 ; [+20]
       31 GETTABLEKS                       R7 R5 K5 ["editSessionId"]
       33 GETTABLEKS                       R8 R0 K5 ["editSessionId"]
       35 JUMPIFEQ                         R7 R8 ; [+14]
       37 GETIMPORT                        R7 K7 [warn]
       39 LOADK                            R8 K8 ["[AnimationGen] Generate rejected a stale edit-session handoff"]
       40 CALL                             R7 1 0
       41 GETUPVAL                         R8 1
       42 GETTABLEKS                       R8 R8 K9 ["FailureReasons"]
       44 GETTABLEKS                       R8 R8 K10 ["GenerationFailed"]
       46 DUPTABLE                         R7 K16 [{["duration"] = 0, ["name"] = "", ["failureReason"]}]
       47 SETTABLEKS                       R8 R7 K15 ["failureReason"]
       49 RETURN                           R7 1
       50 JUMPIFEQKNIL                     R5 ; [+17]
       52 GETTABLEKS                       R7 R5 K17 ["sourceContextId"]
       54 JUMPIF                           R7 ; [+2]
       55 GETTABLEKS                       R7 R0 K18 ["priorJobId"]
       57 SETTABLEKS                       R7 R5 K17 ["sourceContextId"]
       59 GETIMPORT                        R7 K21 [table.clone]
       61 MOVE                             R8 R0
       62 CALL                             R7 1 1
       63 MOVE                             R0 R7
       64 GETTABLEKS                       R7 R5 K17 ["sourceContextId"]
       66 SETTABLEKS                       R7 R0 K18 ["priorJobId"]
       68 GETUPVAL                         R7 2
       69 MOVE                             R8 R0
       70 MOVE                             R9 R1
       71 CALL                             R7 2 3
       72 JUMPIFEQKNIL                     R9 ; [+2]
       74 RETURN                           R9 1
       75 GETTABLEKS                       R10 R0 K22 ["commitUpscalePreview"]
       77 JUMPIFNOT                        R10 ; [+16]
       78 GETTABLEKS                       R10 R0 K23 ["generationMode"]
       80 GETUPVAL                         R11 1
       81 GETTABLEKS                       R11 R11 K24 ["GenerationModes"]
       83 GETTABLEKS                       R11 R11 K25 ["Upscale"]
       85 JUMPIFNOTEQ                      R10 R11 ; [+8]
       87 GETUPVAL                         R10 3
       88 MOVE                             R11 R0
       89 MOVE                             R12 R1
       90 MOVE                             R13 R7
       91 MOVE                             R14 R8
       92 CALL                             R10 4 1
       93 RETURN                           R10 1
       94 GETTABLEKS                       R10 R0 K2 ["savedKeyframesContentId"]
       96 JUMPIF                           R10 ; [+4]
       97 GETTABLEKS                       R10 R0 K26 ["editSourceToolUseId"]
       99 JUMPIF                           R10 ; [+1]
      100 MOVE                             R10 R3
      101 GETUPVAL                         R12 4
      102 GETTABLE                         R11 R12 R10
      103 JUMPIFEQKNIL                     R11 ; [+7]
      105 GETUPVAL                         R12 5
      106 GETTABLEKS                       R12 R12 K27 ["getContent"]
      108 MOVE                             R13 R11
      109 CALL                             R12 1 1
      110 JUMP                             ; [+1]
      111 LOADNIL                          R12
      112 GETUPVAL                         R13 6
      113 MOVE                             R14 R12
      114 GETTABLEKS                       R15 R0 K28 ["inputAssetId"]
      116 GETTABLEKS                       R16 R0 K29 ["prompt"]
      118 CALL                             R13 3 1
      119 GETUPVAL                         R14 7
      120 MOVE                             R15 R0
      121 MOVE                             R16 R1
      122 MOVE                             R17 R7
      123 MOVE                             R18 R13
      124 JUMPIFEQKNIL                     R12 ; [+4]
      126 GETTABLEKS                       R19 R12 K30 ["keyframeSequence"]
      128 JUMP                             ; [+1]
      129 LOADNIL                          R19
      130 CALL                             R14 5 1
      131 JUMPIFEQKNIL                     R14 ; [+2]
      133 RETURN                           R14 1
      134 JUMPIFEQKNIL                     R4 ; [+32]
      136 GETUPVAL                         R15 0
      137 GETTABLEKS                       R15 R15 K3 ["getSession"]
      139 MOVE                             R16 R4
      140 CALL                             R15 1 1
      141 JUMPIFNOTEQ                      R15 R5 ; [+7]
      143 JUMPIFEQKNIL                     R5 ; [+18]
      145 GETTABLEKS                       R15 R5 K4 ["revision"]
      147 JUMPIFEQ                         R15 R6 ; [+14]
      149 GETIMPORT                        R15 K7 [warn]
      151 LOADK                            R16 K31 ["[AnimationGen] Generate discarded an edit that changed while preparing its request"]
      152 CALL                             R15 1 0
      153 GETUPVAL                         R16 1
      154 GETTABLEKS                       R16 R16 K9 ["FailureReasons"]
      156 GETTABLEKS                       R16 R16 K10 ["GenerationFailed"]
      158 DUPTABLE                         R15 K16 [{["duration"] = 0, ["name"] = "", ["failureReason"]}]
      159 SETTABLEKS                       R16 R15 K15 ["failureReason"]
      161 RETURN                           R15 1
      162 GETUPVAL                         R15 0
      163 GETTABLEKS                       R15 R15 K32 ["discardSession"]
      165 MOVE                             R16 R4
      166 CALL                             R15 1 0
      167 GETUPVAL                         R15 8
      168 GETTABLEKS                       R15 R15 K33 ["generateAnimationAsync"]
      170 DUPTABLE                         R16 K37 [{"prompt", "generationMode", "duration", "inputAssetId", "outputFilePath", "outputFileName", "priorJobId", "editSource"}]
      171 GETTABLEKS                       R17 R0 K29 ["prompt"]
      173 SETTABLEKS                       R17 R16 K29 ["prompt"]
      175 GETTABLEKS                       R17 R0 K23 ["generationMode"]
      177 SETTABLEKS                       R17 R16 K23 ["generationMode"]
      179 GETTABLEKS                       R17 R0 K11 ["duration"]
      181 SETTABLEKS                       R17 R16 K11 ["duration"]
      183 GETTABLEKS                       R17 R0 K28 ["inputAssetId"]
      185 SETTABLEKS                       R17 R16 K28 ["inputAssetId"]
      187 GETTABLEKS                       R17 R0 K34 ["outputFilePath"]
      189 SETTABLEKS                       R17 R16 K34 ["outputFilePath"]
      191 SETTABLEKS                       R13 R16 K35 ["outputFileName"]
      193 GETTABLEKS                       R17 R0 K18 ["priorJobId"]
      195 SETTABLEKS                       R17 R16 K18 ["priorJobId"]
      197 GETTABLEKS                       R17 R0 K36 ["editSource"]
      199 SETTABLEKS                       R17 R16 K36 ["editSource"]
      201 MOVE                             R17 R2
      202 CALL                             R15 2 1
      203 GETUPVAL                         R16 9
      204 CALL                             R16 0 0
      205 GETTABLEKS                       R16 R15 K30 ["keyframeSequence"]
      207 GETTABLEKS                       R17 R15 K38 ["success"]
      209 JUMPIFNOT                        R17 ; [+30]
      210 JUMPIFEQKNIL                     R16 ; [+29]
      212 GETUPVAL                         R17 10
      213 LOADB                            R19 0
      214 NAMECALL                         R17 R17 K39 ["GenerateGUID"]
      216 CALL                             R17 2 1
      217 GETTABLEKS                       R18 R2 K40 ["startRecording"]
      219 MOVE                             R19 R17
      220 LOADK                            R20 K41 ["Insert Generated Animation"]
      221 CALL                             R18 2 0
      222 JUMPIFNOT                        R8 ; [+5]
      223 GETUPVAL                         R18 11
      224 GETIMPORT                        R19 K45 [Enum.HumanoidRigType.R15]
      226 CALL                             R18 1 1
      227 MOVE                             R7 R18
      228 JUMPIFEQKNIL                     R7 ; [+7]
      230 GETUPVAL                         R18 8
      231 GETTABLEKS                       R18 R18 K46 ["saveKeyframeSequence"]
      233 MOVE                             R19 R16
      234 MOVE                             R20 R7
      235 CALL                             R18 2 0
      236 GETTABLEKS                       R18 R2 K47 ["endRecording"]
      238 MOVE                             R19 R17
      239 CALL                             R18 1 0
      240 GETTABLEKS                       R17 R15 K38 ["success"]
      242 JUMPIFNOT                        R17 ; [+2]
      243 JUMPIFNOTEQKNIL                  R16 ; [+13]
      245 GETTABLEKS                       R18 R15 K15 ["failureReason"]
      247 JUMPIF                           R18 ; [+5]
      248 GETUPVAL                         R18 1
      249 GETTABLEKS                       R18 R18 K9 ["FailureReasons"]
      251 GETTABLEKS                       R18 R18 K10 ["GenerationFailed"]
      253 DUPTABLE                         R17 K16 [{["duration"] = 0, ["name"] = "", ["failureReason"]}]
      254 SETTABLEKS                       R18 R17 K15 ["failureReason"]
      256 RETURN                           R17 1
      257 JUMPIFNOTEQKNIL                  R7 ; [+10]
      259 GETUPVAL                         R18 1
      260 GETTABLEKS                       R18 R18 K9 ["FailureReasons"]
      262 GETTABLEKS                       R18 R18 K48 ["RigInsertFailed"]
      264 DUPTABLE                         R17 K16 [{["duration"] = 0, ["name"] = "", ["failureReason"]}]
      265 SETTABLEKS                       R18 R17 K15 ["failureReason"]
      267 RETURN                           R17 1
      268 DUPTABLE                         R17 K50 [{"keyframeSequence", "isUpscale"}]
      269 SETTABLEKS                       R16 R17 K30 ["keyframeSequence"]
      271 GETTABLEKS                       R19 R0 K28 ["inputAssetId"]
      273 JUMPIFEQKNIL                     R19 ; [+6]
      275 LOADB                            R18 1
      276 GETTABLEKS                       R19 R0 K28 ["inputAssetId"]
      278 JUMPIFNOTEQKS                    R19 K14 [""] ; [+12]
      280 GETTABLEKS                       R19 R0 K36 ["editSource"]
      282 GETUPVAL                         R20 1
      283 GETTABLEKS                       R20 R20 K24 ["GenerationModes"]
      285 GETTABLEKS                       R20 R20 K25 ["Upscale"]
      287 JUMPIFEQ                         R19 R20 ; [+2]
      289 LOADB                            R18 0 +1
      290 LOADB                            R18 1
      291 SETTABLEKS                       R18 R17 K49 ["isUpscale"]
      293 GETUPVAL                         R18 12
      294 MOVE                             R19 R3
      295 MOVE                             R20 R1
      296 MOVE                             R21 R17
      297 MOVE                             R22 R7
      298 MOVE                             R23 R8
      299 CALL                             R18 5 0
      300 GETUPVAL                         R18 13
      301 MOVE                             R19 R0
      302 MOVE                             R20 R1
      303 MOVE                             R21 R7
      304 MOVE                             R22 R17
      305 MOVE                             R23 R15
      306 CALL                             R18 5 1
      307 RETURN                           R18 1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+25]
        3 GETUPVAL                         R0 1
        4 JUMPIFEQKNIL                     R0 ; [+22]
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K0 ["editSessionId"]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K0 ["editSessionId"]
       12 JUMPIFNOTEQ                      R0 R1 ; [+14]
       14 GETUPVAL                         R0 3
       15 GETTABLEKS                       R0 R0 K1 ["getSession"]
       17 GETUPVAL                         R1 0
       18 CALL                             R0 1 1
       19 GETUPVAL                         R1 1
       20 JUMPIFNOTEQ                      R0 R1 ; [+6]
       22 GETUPVAL                         R0 3
       23 GETTABLEKS                       R0 R0 K2 ["discardSession"]
       25 GETUPVAL                         R1 0
       26 CALL                             R0 1 0
       27 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isEditMode"]
        3 GETTABLEKS                       R3 R0 K1 ["generationMode"]
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R3 R0 K2 ["savedKeyframesContentId"]
        8 JUMPIFEQKNIL                     R3 ; [+7]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K3 ["getSession"]
       13 MOVE                             R5 R3
       14 CALL                             R4 1 1
       15 JUMP                             ; [+1]
       16 LOADNIL                          R4
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          VAL R3
       19 CAPTURE                          VAL R4
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U1
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K4 ["getEditSource"]
       25 GETTABLEKS                       R7 R0 K1 ["generationMode"]
       27 CALL                             R6 1 1
       28 JUMPIFNOT                        R2 ; [+6]
       29 GETTABLEKS                       R7 R0 K2 ["savedKeyframesContentId"]
       31 JUMPIF                           R7 ; [+4]
       32 GETTABLEKS                       R7 R0 K5 ["editSourceToolUseId"]
       34 JUMP                             ; [+1]
       35 LOADNIL                          R7
       36 JUMPIFEQKNIL                     R7 ; [+9]
       38 GETUPVAL                         R8 2
       39 GETTABLEKS                       R8 R8 K6 ["getByToolUseId"]
       41 MOVE                             R9 R7
       42 GETTABLEKS                       R10 R0 K7 ["generationScope"]
       44 CALL                             R8 2 1
       45 JUMP                             ; [+1]
       46 LOADNIL                          R8
       47 JUMPIFNOT                        R2 ; [+37]
       48 JUMPIFEQKNIL                     R8 ; [+5]
       50 GETTABLEKS                       R9 R8 K8 ["editSource"]
       52 JUMPIFEQ                         R9 R6 ; [+32]
       54 JUMPIFEQKNIL                     R3 ; [+21]
       56 JUMPIFEQKNIL                     R4 ; [+19]
       58 GETTABLEKS                       R9 R4 K9 ["editSessionId"]
       60 GETTABLEKS                       R10 R0 K9 ["editSessionId"]
       62 JUMPIFNOTEQ                      R9 R10 ; [+13]
       64 GETUPVAL                         R9 1
       65 GETTABLEKS                       R9 R9 K3 ["getSession"]
       67 MOVE                             R10 R3
       68 CALL                             R9 1 1
       69 JUMPIFNOTEQ                      R9 R4 ; [+6]
       71 GETUPVAL                         R9 1
       72 GETTABLEKS                       R9 R9 K10 ["discardSession"]
       74 MOVE                             R10 R3
       75 CALL                             R9 1 0
       76 GETUPVAL                         R10 0
       77 GETTABLEKS                       R10 R10 K11 ["FailureReasons"]
       79 GETTABLEKS                       R10 R10 K12 ["EditSourceNotFound"]
       81 DUPTABLE                         R9 K18 [{["duration"] = 0, ["name"] = "", ["failureReason"]}]
       82 SETTABLEKS                       R10 R9 K17 ["failureReason"]
       84 RETURN                           R9 1
       85 GETIMPORT                        R9 K20 [pcall]
       87 GETUPVAL                         R10 3
       88 MOVE                             R11 R0
       89 MOVE                             R12 R1
       90 CALL                             R9 3 2
       91 JUMPIFEQKNIL                     R3 ; [+21]
       93 JUMPIFEQKNIL                     R4 ; [+19]
       95 GETTABLEKS                       R11 R4 K9 ["editSessionId"]
       97 GETTABLEKS                       R12 R0 K9 ["editSessionId"]
       99 JUMPIFNOTEQ                      R11 R12 ; [+13]
      101 GETUPVAL                         R11 1
      102 GETTABLEKS                       R11 R11 K3 ["getSession"]
      104 MOVE                             R12 R3
      105 CALL                             R11 1 1
      106 JUMPIFNOTEQ                      R11 R4 ; [+6]
      108 GETUPVAL                         R11 1
      109 GETTABLEKS                       R11 R11 K10 ["discardSession"]
      111 MOVE                             R12 R3
      112 CALL                             R11 1 0
      113 JUMPIF                           R9 ; [+5]
      114 GETIMPORT                        R11 K22 [error]
      116 MOVE                             R12 R10
      117 LOADN                            R13 0
      118 CALL                             R11 2 0
      119 GETTABLEKS                       R11 R10 K17 ["failureReason"]
      121 JUMPIFEQKNIL                     R11 ; [+2]
      123 RETURN                           R10 1
      124 GETUPVAL                         R11 2
      125 GETTABLEKS                       R11 R11 K23 ["record"]
      127 GETTABLEKS                       R12 R0 K7 ["generationScope"]
      129 DUPTABLE                         R13 K27 [{"toolUseId", "contextId", "generationId", "editSource", "name", "duration"}]
      130 GETTABLEKS                       R14 R0 K24 ["toolUseId"]
      132 SETTABLEKS                       R14 R13 K24 ["toolUseId"]
      134 GETTABLEKS                       R14 R10 K25 ["contextId"]
      136 SETTABLEKS                       R14 R13 K25 ["contextId"]
      138 GETTABLEKS                       R14 R10 K26 ["generationId"]
      140 SETTABLEKS                       R14 R13 K26 ["generationId"]
      142 SETTABLEKS                       R6 R13 K8 ["editSource"]
      144 GETTABLEKS                       R14 R10 K15 ["name"]
      146 SETTABLEKS                       R14 R13 K15 ["name"]
      148 GETTABLEKS                       R14 R10 K13 ["duration"]
      150 SETTABLEKS                       R14 R13 K13 ["duration"]
      152 CALL                             R11 2 0
      153 RETURN                           R10 1

PROTO_24:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resolveEditSource"]
        3 GETTABLEKS                       R3 R0 K1 ["scope"]
        5 GETTABLEKS                       R4 R0 K2 ["editSource"]
        7 CALL                             R2 2 1
        8 RETURN                           R2 1

PROTO_25:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFEQKNIL                     R2 ; [+24]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["isEditPlayback"]
        7 MOVE                             R4 R0
        8 CALL                             R3 1 1
        9 JUMPIF                           R3 ; [+17]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["CLIP_TO_UPSCALE_PREVIEW_CONTENT_ID"]
       13 JUMPIFEQ                         R0 R3 ; [+13]
       15 GETTABLEKS                       R3 R2 K2 ["keyframeSequence"]
       17 JUMPIFEQKNIL                     R3 ; [+9]
       19 GETTABLEKS                       R3 R2 K2 ["keyframeSequence"]
       21 GETIMPORT                        R5 K4 [game]
       23 NAMECALL                         R3 R3 K5 ["IsDescendantOf"]
       25 CALL                             R3 2 1
       26 JUMPIFNOT                        R3 ; [+1]
       27 RETURN                           R0 0
       28 GETTABLEKS                       R3 R1 K6 ["environment"]
       30 GETUPVAL                         R4 3
       31 LOADB                            R6 0
       32 NAMECALL                         R4 R4 K7 ["GenerateGUID"]
       34 CALL                             R4 2 1
       35 GETTABLEKS                       R5 R2 K8 ["rig"]
       37 GETTABLEKS                       R6 R2 K9 ["undoSafeKeyframeSequence"]
       39 JUMPIFEQKNIL                     R6 ; [+3]
       41 MOVE                             R7 R6
       42 JUMP                             ; [+2]
       43 GETTABLEKS                       R7 R2 K2 ["keyframeSequence"]
       45 NAMECALL                         R8 R7 K10 ["Clone"]
       47 CALL                             R8 1 1
       48 GETTABLEKS                       R9 R3 K11 ["startRecording"]
       50 MOVE                             R10 R4
       51 LOADK                            R11 K12 ["Insert Generated Animation"]
       52 CALL                             R9 2 0
       53 GETUPVAL                         R9 4
       54 GETTABLEKS                       R9 R9 K13 ["saveKeyframeSequence"]
       56 MOVE                             R10 R8
       57 MOVE                             R11 R5
       58 CALL                             R9 2 0
       59 GETTABLEKS                       R9 R3 K14 ["endRecording"]
       61 MOVE                             R10 R4
       62 CALL                             R9 1 0
       63 SETTABLEKS                       R8 R2 K2 ["keyframeSequence"]
       65 LOADB                            R9 1
       66 SETTABLEKS                       R9 R2 K15 ["needsReload"]
       68 GETTABLEKS                       R9 R2 K16 ["cache"]
       70 GETTABLEKS                       R9 R9 K17 ["editPreviewSequence"]
       72 JUMPIFEQKNIL                     R9 ; [+6]
       74 GETUPVAL                         R9 1
       75 GETTABLEKS                       R9 R9 K18 ["refreshPreview"]
       77 MOVE                             R10 R0
       78 CALL                             R9 1 0
       79 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getPlaybackState"]
        3 GETTABLEKS                       R3 R0 K1 ["toolUseId"]
        5 CALL                             R2 1 1
        6 RETURN                           R2 1

PROTO_27:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["toolUseId"]
        3 GETTABLE                         R2 R3 R4
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R2 R0 K1 ["isPlaying"]
        9 JUMPIF                           R2 ; [+11]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K2 ["setIsPlaying"]
       13 LOADB                            R3 0
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R5 R0 K0 ["toolUseId"]
       17 MOVE                             R6 R1
       18 CALL                             R4 2 1
       19 CALL                             R2 2 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R2 3
       22 GETTABLEKS                       R3 R0 K0 ["toolUseId"]
       24 MOVE                             R4 R1
       25 CALL                             R2 2 0
       26 GETUPVAL                         R2 4
       27 GETTABLEKS                       R2 R2 K3 ["applyPreviewMode"]
       29 GETTABLEKS                       R3 R0 K0 ["toolUseId"]
       31 CALL                             R2 1 0
       32 GETTABLEKS                       R2 R0 K0 ["toolUseId"]
       34 GETUPVAL                         R3 5
       35 GETTABLEKS                       R3 R3 K4 ["getActivePose"]
       37 CALL                             R3 0 1
       38 JUMPIFEQKNIL                     R3 ; [+4]
       40 GETTABLEKS                       R4 R3 K5 ["contentId"]
       42 JUMP                             ; [+5]
       43 GETUPVAL                         R4 4
       44 GETTABLEKS                       R4 R4 K6 ["getEditorContentId"]
       46 MOVE                             R5 R2
       47 CALL                             R4 1 1
       48 GETUPVAL                         R5 5
       49 GETTABLEKS                       R5 R5 K7 ["leave"]
       51 MOVE                             R6 R4
       52 GETUPVAL                         R8 5
       53 GETTABLEKS                       R8 R8 K8 ["getContext"]
       55 MOVE                             R9 R4
       56 CALL                             R8 1 1
       57 OR                               R7 R8 R1
       58 CALL                             R5 2 0
       59 GETUPVAL                         R2 1
       60 GETTABLEKS                       R2 R2 K2 ["setIsPlaying"]
       62 LOADB                            R3 1
       63 GETUPVAL                         R4 2
       64 GETTABLEKS                       R5 R0 K0 ["toolUseId"]
       66 MOVE                             R6 R1
       67 CALL                             R4 2 1
       68 CALL                             R2 2 0
       69 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["toolUseId"]
        3 GETTABLE                         R2 R3 R4
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R3 R0 K0 ["toolUseId"]
       10 MOVE                             R4 R1
       11 CALL                             R2 2 0
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K1 ["applyPreviewMode"]
       15 GETTABLEKS                       R3 R0 K0 ["toolUseId"]
       17 CALL                             R2 1 0
       18 GETTABLEKS                       R2 R0 K0 ["toolUseId"]
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K2 ["getActivePose"]
       23 CALL                             R3 0 1
       24 JUMPIFEQKNIL                     R3 ; [+4]
       26 GETTABLEKS                       R4 R3 K3 ["contentId"]
       28 JUMP                             ; [+5]
       29 GETUPVAL                         R4 2
       30 GETTABLEKS                       R4 R4 K4 ["getEditorContentId"]
       32 MOVE                             R5 R2
       33 CALL                             R4 1 1
       34 GETUPVAL                         R5 3
       35 GETTABLEKS                       R5 R5 K5 ["leave"]
       37 MOVE                             R6 R4
       38 GETUPVAL                         R8 3
       39 GETTABLEKS                       R8 R8 K6 ["getContext"]
       41 MOVE                             R9 R4
       42 CALL                             R8 1 1
       43 OR                               R7 R8 R1
       44 CALL                             R5 2 0
       45 GETUPVAL                         R2 4
       46 GETTABLEKS                       R2 R2 K7 ["setCurrentTime"]
       48 GETTABLEKS                       R3 R0 K8 ["currentTime"]
       50 GETUPVAL                         R4 5
       51 GETTABLEKS                       R5 R0 K0 ["toolUseId"]
       53 MOVE                             R6 R1
       54 CALL                             R4 2 1
       55 CALL                             R2 2 0
       56 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["insertPose"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_30:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["deletePose"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_31:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["movePose"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_32:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resizePose"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_33:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getEditScrubbarState"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_34:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resetPose"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isOwnedBy"]
        3 GETTABLEKS                       R3 R0 K1 ["sourceToolUseId"]
        5 GETTABLEKS                       R4 R0 K2 ["editSessionId"]
        7 CALL                             R2 2 1
        8 JUMPIFNOT                        R2 ; [+6]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["discardSession"]
       12 GETTABLEKS                       R3 R0 K1 ["sourceToolUseId"]
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isOwnedBy"]
        3 GETTABLEKS                       R3 R0 K1 ["toolUseId"]
        5 GETTABLEKS                       R4 R0 K2 ["editSessionId"]
        7 CALL                             R2 2 1
        8 JUMPIFNOT                        R2 ; [+6]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["endSession"]
       12 GETTABLEKS                       R3 R0 K1 ["toolUseId"]
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_37:
        0 GETTABLEKS                       R2 R0 K0 ["sourceToolUseId"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["rememberContext"]
        5 MOVE                             R4 R2
        6 MOVE                             R5 R1
        7 CALL                             R3 2 0
        8 GETUPVAL                         R4 1
        9 GETTABLE                         R3 R4 R2
       10 JUMPIFNOTEQKNIL                  R3 ; [+15]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K2 ["isOwnedBy"]
       15 MOVE                             R4 R2
       16 GETTABLEKS                       R5 R0 K3 ["editSessionId"]
       18 CALL                             R3 2 1
       19 JUMPIFNOT                        R3 ; [+5]
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R3 R3 K4 ["discardSession"]
       23 MOVE                             R4 R2
       24 CALL                             R3 1 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R3 2
       27 GETTABLEKS                       R3 R3 K2 ["isOwnedBy"]
       29 MOVE                             R4 R2
       30 GETTABLEKS                       R5 R0 K3 ["editSessionId"]
       32 CALL                             R3 2 1
       33 JUMPIFNOT                        R3 ; [+9]
       34 GETUPVAL                         R3 3
       35 GETTABLEKS                       R3 R3 K5 ["hasPlayer"]
       37 MOVE                             R4 R2
       38 GETTABLEKS                       R5 R0 K6 ["editToolUseId"]
       40 CALL                             R3 2 1
       41 JUMPIFNOT                        R3 ; [+1]
       42 RETURN                           R0 0
       43 GETUPVAL                         R3 2
       44 GETTABLEKS                       R3 R3 K7 ["beginSession"]
       46 MOVE                             R4 R2
       47 GETTABLEKS                       R5 R0 K3 ["editSessionId"]
       49 GETTABLEKS                       R6 R0 K8 ["priorJobId"]
       51 CALL                             R3 3 0
       52 GETUPVAL                         R3 3
       53 GETTABLEKS                       R3 R3 K9 ["beginPlayer"]
       55 MOVE                             R4 R2
       56 GETTABLEKS                       R5 R0 K6 ["editToolUseId"]
       58 MOVE                             R6 R1
       59 CALL                             R3 3 0
       60 GETUPVAL                         R3 4
       61 MOVE                             R4 R2
       62 MOVE                             R5 R1
       63 CALL                             R3 2 0
       64 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantAnimationGenShowPublishButton"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R4 R0 K1 ["toolUseId"]
        8 GETTABLE                         R2 R3 R4
        9 JUMPIFEQKNIL                     R2 ; [+5]
       11 GETTABLEKS                       R3 R2 K2 ["keyframeSequence"]
       13 JUMPIFNOTEQKNIL                  R3 ; [+6]
       15 GETIMPORT                        R3 K4 [warn]
       17 LOADK                            R4 K5 ["[AnimationGen] Save to Roblox: no generated animation for this content."]
       18 CALL                             R3 1 0
       19 RETURN                           R0 0
       20 GETTABLEKS                       R3 R1 K6 ["environment"]
       22 GETTABLEKS                       R3 R3 K7 ["tools"]
       24 GETTABLEKS                       R3 R3 K8 ["animationGen"]
       26 GETTABLEKS                       R3 R3 K9 ["publishAnimationAsync"]
       28 JUMPIFEQKNIL                     R3 ; [+5]
       30 MOVE                             R4 R3
       31 GETTABLEKS                       R5 R2 K2 ["keyframeSequence"]
       33 CALL                             R4 1 0
       34 RETURN                           R0 0

PROTO_39:
        0 NEWTABLE                         R1 0 2
        2 MOVE                             R4 R0
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K0 ["getPlaybackContentId"]
        6 MOVE                             R6 R0
        7 CALL                             R5 1 -1
        8 SETLIST                          R1 R4 -1 [1]
       10 LOADNIL                          R2
       11 LOADNIL                          R3
       12 FORGPREP                         R1
       13 GETUPVAL                         R7 1
       14 GETTABLE                         R6 R7 R5
       15 JUMPIFEQKNIL                     R6 ; [+4]
       17 LOADB                            R7 1
       18 SETTABLEKS                       R7 R6 K1 ["needsReload"]
       20 FORGLOOP                         R1 2 ; [-8]
       22 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["renderPreviewPose"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_41:
        0 GETUPVAL                         R0 1
        1 CALL                             R0 0 1
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 3
        4 CALL                             R0 0 1
        5 SETUPVAL                         R0 2
        6 GETUPVAL                         R0 5
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["selectionChangedSignal"]
       10 GETUPVAL                         R2 6
       11 CALL                             R0 2 1
       12 SETUPVAL                         R0 4
       13 GETUPVAL                         R0 8
       14 GETUPVAL                         R1 6
       15 DUPTABLE                         R2 K3 [{"markRigReload", "renderPreviewPose"}]
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          UPVAL U9
       18 CAPTURE                          UPVAL U6
       19 SETTABLEKS                       R3 R2 K1 ["markRigReload"]
       21 NEWCLOSURE                       R3 P1
       22 CAPTURE                          UPVAL U9
       23 SETTABLEKS                       R3 R2 K2 ["renderPreviewPose"]
       25 CALL                             R0 2 1
       26 SETUPVAL                         R0 7
       27 GETUPVAL                         R0 11
       28 GETUPVAL                         R1 6
       29 CALL                             R0 1 1
       30 SETUPVAL                         R0 10
       31 GETUPVAL                         R0 13
       32 GETUPVAL                         R1 7
       33 CALL                             R0 1 1
       34 SETUPVAL                         R0 12
       35 GETUPVAL                         R0 14
       36 DUPTABLE                         R1 K9 [{"sharedStates", "editor", "animator", "poseSelection", "toAnimatorContext"}]
       37 GETUPVAL                         R2 6
       38 SETTABLEKS                       R2 R1 K4 ["sharedStates"]
       40 GETUPVAL                         R2 7
       41 SETTABLEKS                       R2 R1 K5 ["editor"]
       43 GETUPVAL                         R2 4
       44 SETTABLEKS                       R2 R1 K6 ["animator"]
       46 GETUPVAL                         R2 12
       47 SETTABLEKS                       R2 R1 K7 ["poseSelection"]
       49 GETUPVAL                         R2 15
       50 SETTABLEKS                       R2 R1 K8 ["toAnimatorContext"]
       52 CALL                             R0 1 1
       53 SETUPVAL                         R0 9
       54 GETUPVAL                         R0 17
       55 DUPTABLE                         R1 K11 [{"sharedStates", "editor", "animator", "editPreviewPlayer", "poseSelection"}]
       56 GETUPVAL                         R2 6
       57 SETTABLEKS                       R2 R1 K4 ["sharedStates"]
       59 GETUPVAL                         R2 7
       60 SETTABLEKS                       R2 R1 K5 ["editor"]
       62 GETUPVAL                         R2 4
       63 SETTABLEKS                       R2 R1 K6 ["animator"]
       65 GETUPVAL                         R2 9
       66 SETTABLEKS                       R2 R1 K10 ["editPreviewPlayer"]
       68 GETUPVAL                         R2 12
       69 SETTABLEKS                       R2 R1 K7 ["poseSelection"]
       71 CALL                             R0 1 1
       72 SETUPVAL                         R0 16
       73 GETUPVAL                         R0 19
       74 DUPTABLE                         R1 K14 [{"sharedStates", "editor", "animator", "poseSelection", "editPreviewPlayer", "editSessionManager", "toAnimatorContext", "resetRigPose"}]
       75 GETUPVAL                         R2 6
       76 SETTABLEKS                       R2 R1 K4 ["sharedStates"]
       78 GETUPVAL                         R2 7
       79 SETTABLEKS                       R2 R1 K5 ["editor"]
       81 GETUPVAL                         R2 4
       82 SETTABLEKS                       R2 R1 K6 ["animator"]
       84 GETUPVAL                         R2 12
       85 SETTABLEKS                       R2 R1 K7 ["poseSelection"]
       87 GETUPVAL                         R2 9
       88 SETTABLEKS                       R2 R1 K10 ["editPreviewPlayer"]
       90 GETUPVAL                         R2 16
       91 SETTABLEKS                       R2 R1 K12 ["editSessionManager"]
       93 GETUPVAL                         R2 15
       94 SETTABLEKS                       R2 R1 K8 ["toAnimatorContext"]
       96 GETUPVAL                         R2 20
       97 SETTABLEKS                       R2 R1 K13 ["resetRigPose"]
       99 CALL                             R0 1 1
      100 SETUPVAL                         R0 18
      101 GETUPVAL                         R0 22
      102 CALL                             R0 0 1
      103 SETUPVAL                         R0 21
      104 GETUPVAL                         R0 24
      105 DUPTABLE                         R1 K16 [{"sharedStates", "animator", "toAnimatorContext", "resetRigPose", "generateUpscale"}]
      106 GETUPVAL                         R2 6
      107 SETTABLEKS                       R2 R1 K4 ["sharedStates"]
      109 GETUPVAL                         R2 4
      110 SETTABLEKS                       R2 R1 K6 ["animator"]
      112 GETUPVAL                         R2 15
      113 SETTABLEKS                       R2 R1 K8 ["toAnimatorContext"]
      115 GETUPVAL                         R2 20
      116 SETTABLEKS                       R2 R1 K13 ["resetRigPose"]
      118 GETUPVAL                         R2 25
      119 SETTABLEKS                       R2 R1 K15 ["generateUpscale"]
      121 CALL                             R0 1 1
      122 SETUPVAL                         R0 23
      123 GETUPVAL                         R0 26
      124 GETTABLEKS                       R0 R0 K17 ["new"]
      126 CALL                             R0 0 1
      127 GETUPVAL                         R3 4
      128 GETTABLEKS                       R3 R3 K18 ["rigChangedSignal"]
      130 GETUPVAL                         R5 18
      131 GETTABLEKS                       R5 R5 K19 ["onRigChanged"]
      133 NAMECALL                         R3 R3 K20 ["Connect"]
      135 CALL                             R3 2 -1
      136 NAMECALL                         R1 R0 K21 ["Add"]
      138 CALL                             R1 -1 0
      139 GETUPVAL                         R3 7
      140 GETTABLEKS                       R3 R3 K22 ["poseEditedSignal"]
      142 GETUPVAL                         R5 18
      143 GETTABLEKS                       R5 R5 K23 ["onPoseEdited"]
      145 NAMECALL                         R3 R3 K20 ["Connect"]
      147 CALL                             R3 2 -1
      148 NAMECALL                         R1 R0 K21 ["Add"]
      150 CALL                             R1 -1 0
      151 GETUPVAL                         R3 7
      152 GETTABLEKS                       R3 R3 K24 ["poseDeselectedSignal"]
      154 GETUPVAL                         R5 12
      155 GETTABLEKS                       R5 R5 K25 ["onDeselected"]
      157 NAMECALL                         R3 R3 K20 ["Connect"]
      159 CALL                             R3 2 -1
      160 NAMECALL                         R1 R0 K21 ["Add"]
      162 CALL                             R1 -1 0
      163 SETUPVAL                         R0 27
      164 LOADB                            R1 1
      165 SETUPVAL                         R1 28
      166 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 1
        4 NOT                              R1 R2
        5 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        7 LOADK                            R2 K0 ["AnimationGen host state was destroyed"]
        8 GETIMPORT                        R0 K2 [assert]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 2
       12 CALL                             R0 0 0
       13 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 0
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 JUMPIFEQKNIL                     R0 ; [+7]
        8 GETUPVAL                         R0 1
        9 NAMECALL                         R0 R0 K0 ["Destroy"]
       11 CALL                             R0 1 0
       12 LOADNIL                          R0
       13 SETUPVAL                         R0 1
       14 GETUPVAL                         R0 2
       15 GETTABLEKS                       R0 R0 K1 ["destroy"]
       17 CALL                             R0 0 0
       18 GETUPVAL                         R0 3
       19 GETTABLEKS                       R0 R0 K1 ["destroy"]
       21 CALL                             R0 0 0
       22 GETUPVAL                         R0 4
       23 GETTABLEKS                       R0 R0 K1 ["destroy"]
       25 CALL                             R0 0 0
       26 GETUPVAL                         R0 5
       27 GETTABLEKS                       R0 R0 K1 ["destroy"]
       29 CALL                             R0 0 0
       30 GETUPVAL                         R0 6
       31 GETTABLEKS                       R0 R0 K1 ["destroy"]
       33 CALL                             R0 0 0
       34 GETUPVAL                         R0 7
       35 GETTABLEKS                       R0 R0 K1 ["destroy"]
       37 CALL                             R0 0 0
       38 GETUPVAL                         R0 8
       39 LOADNIL                          R1
       40 LOADNIL                          R2
       41 FORGPREP                         R0
       42 GETUPVAL                         R5 9
       43 MOVE                             R6 R3
       44 CALL                             R5 1 0
       45 GETUPVAL                         R5 10
       46 GETTABLEKS                       R5 R5 K2 ["disposeCache"]
       48 MOVE                             R6 R4
       49 CALL                             R5 1 0
       50 FORGLOOP                         R0 2 ; [-9]
       52 GETUPVAL                         R0 11
       53 GETTABLEKS                       R0 R0 K1 ["destroy"]
       55 CALL                             R0 0 0
       56 GETIMPORT                        R0 K5 [table.clear]
       58 GETUPVAL                         R1 8
       59 CALL                             R0 1 0
       60 GETUPVAL                         R0 12
       61 GETTABLEKS                       R0 R0 K1 ["destroy"]
       63 CALL                             R0 0 0
       64 GETUPVAL                         R0 13
       65 GETTABLEKS                       R0 R0 K1 ["destroy"]
       67 CALL                             R0 0 0
       68 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 DUPTABLE                         R1 K2 [{"environment", "callbacks"}]
        3 GETTABLEKS                       R2 R0 K3 ["initArgs"]
        5 GETTABLEKS                       R2 R2 K0 ["environment"]
        7 SETTABLEKS                       R2 R1 K0 ["environment"]
        9 GETTABLEKS                       R2 R0 K4 ["bridge"]
       11 SETTABLEKS                       R2 R1 K1 ["callbacks"]
       13 RETURN                           R1 1

PROTO_45:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R5 1
        3 CALL                             R5 0 0
        4 DUPTABLE                         R4 K2 [{"environment", "callbacks"}]
        5 GETTABLEKS                       R5 R1 K3 ["initArgs"]
        7 GETTABLEKS                       R5 R5 K0 ["environment"]
        9 SETTABLEKS                       R5 R4 K0 ["environment"]
       11 GETTABLEKS                       R5 R1 K4 ["bridge"]
       13 SETTABLEKS                       R5 R4 K1 ["callbacks"]
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

PROTO_46:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 RETURN                           R1 1

PROTO_47:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 CALL                             R3 0 0
        3 DUPTABLE                         R2 K2 [{"environment", "callbacks"}]
        4 GETTABLEKS                       R3 R0 K3 ["initArgs"]
        6 GETTABLEKS                       R3 R3 K0 ["environment"]
        8 SETTABLEKS                       R3 R2 K0 ["environment"]
       10 GETTABLEKS                       R3 R0 K4 ["bridge"]
       12 SETTABLEKS                       R3 R2 K1 ["callbacks"]
       14 CALL                             R1 1 1
       15 RETURN                           R1 1

PROTO_48:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["previewClipToUpscaleAsync"]
        3 MOVE                             R3 R0
        4 GETUPVAL                         R5 1
        5 CALL                             R5 0 0
        6 DUPTABLE                         R4 K3 [{"environment", "callbacks"}]
        7 GETTABLEKS                       R5 R1 K4 ["initArgs"]
        9 GETTABLEKS                       R5 R5 K1 ["environment"]
       11 SETTABLEKS                       R5 R4 K1 ["environment"]
       13 GETTABLEKS                       R5 R1 K5 ["bridge"]
       15 SETTABLEKS                       R5 R4 K2 ["callbacks"]
       17 CALL                             R2 2 -1
       18 RETURN                           R2 -1

PROTO_49:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["clearClipToUpscalePreview"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["insertClipToUpscalePreviewRigAsync"]
        3 GETUPVAL                         R3 1
        4 CALL                             R3 0 0
        5 DUPTABLE                         R2 K3 [{"environment", "callbacks"}]
        6 GETTABLEKS                       R3 R0 K4 ["initArgs"]
        8 GETTABLEKS                       R3 R3 K1 ["environment"]
       10 SETTABLEKS                       R3 R2 K1 ["environment"]
       12 GETTABLEKS                       R3 R0 K5 ["bridge"]
       14 SETTABLEKS                       R3 R2 K2 ["callbacks"]
       16 CALL                             R1 1 -1
       17 RETURN                           R1 -1

PROTO_51:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["generateUpscalePreviewAsync"]
        3 MOVE                             R3 R0
        4 GETUPVAL                         R5 1
        5 CALL                             R5 0 0
        6 DUPTABLE                         R4 K3 [{"environment", "callbacks"}]
        7 GETTABLEKS                       R5 R1 K4 ["initArgs"]
        9 GETTABLEKS                       R5 R5 K1 ["environment"]
       11 SETTABLEKS                       R5 R4 K1 ["environment"]
       13 GETTABLEKS                       R5 R1 K5 ["bridge"]
       15 SETTABLEKS                       R5 R4 K2 ["callbacks"]
       17 CALL                             R2 2 -1
       18 RETURN                           R2 -1

PROTO_52:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["updateUpscalePreview"]
        3 MOVE                             R3 R0
        4 GETUPVAL                         R5 1
        5 CALL                             R5 0 0
        6 DUPTABLE                         R4 K3 [{"environment", "callbacks"}]
        7 GETTABLEKS                       R5 R1 K4 ["initArgs"]
        9 GETTABLEKS                       R5 R5 K1 ["environment"]
       11 SETTABLEKS                       R5 R4 K1 ["environment"]
       13 GETTABLEKS                       R5 R1 K5 ["bridge"]
       15 SETTABLEKS                       R5 R4 K2 ["callbacks"]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["openInAnimationClipEditor"]
        5 MOVE                             R3 R0
        6 GETTABLEKS                       R4 R1 K1 ["initArgs"]
        8 GETTABLEKS                       R4 R4 K2 ["environment"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["playbackStateChanged"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["Fire"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["poseDeselected"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["Fire"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_56:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["poseEdited"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["Fire"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 DUPTABLE                         R1 K2 [{"environment", "callbacks"}]
        3 GETUPVAL                         R2 1
        4 SETTABLEKS                       R2 R1 K0 ["environment"]
        6 DUPTABLE                         R2 K6 [{"playbackStateChanged", "poseDeselected", "poseEdited"}]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R3 R2 K3 ["playbackStateChanged"]
       12 NEWCLOSURE                       R3 P1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R3 R2 K4 ["poseDeselected"]
       17 NEWCLOSURE                       R3 P2
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R3 R2 K5 ["poseEdited"]
       22 SETTABLEKS                       R2 R1 K1 ["callbacks"]
       24 RETURN                           R1 1

PROTO_58:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["resolveEditSource"]
        6 GETTABLEKS                       R5 R1 K1 ["scope"]
        8 GETTABLEKS                       R6 R1 K2 ["editSource"]
       10 CALL                             R4 2 1
       11 MOVE                             R2 R4
       12 RETURN                           R2 1

PROTO_59:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["getPlaybackState"]
        6 GETTABLEKS                       R5 R1 K1 ["toolUseId"]
        8 CALL                             R4 1 1
        9 MOVE                             R2 R4
       10 RETURN                           R2 1

PROTO_60:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 CALL                             R2 2 1
        6 RETURN                           R2 1

PROTO_61:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["isOwnedBy"]
        6 GETTABLEKS                       R4 R1 K1 ["sourceToolUseId"]
        8 GETTABLEKS                       R5 R1 K2 ["editSessionId"]
       10 CALL                             R3 2 1
       11 JUMPIFNOT                        R3 ; [+6]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["discardSession"]
       15 GETTABLEKS                       R4 R1 K1 ["sourceToolUseId"]
       17 CALL                             R3 1 0
       18 RETURN                           R0 0

PROTO_62:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 CALL                             R1 1 1
        5 RETURN                           R1 1

PROTO_63:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_64:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_65:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["previewClipToUpscaleAsync"]
        3 MOVE                             R3 R1
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R0
        6 CALL                             R4 1 1
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_66:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+5]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["clearClipToUpscalePreview"]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_67:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["insertClipToUpscalePreviewRigAsync"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

PROTO_68:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["generateUpscalePreviewAsync"]
        3 MOVE                             R3 R1
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R0
        6 CALL                             R4 1 1
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_69:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["updateUpscalePreview"]
        3 MOVE                             R3 R1
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R0
        6 CALL                             R4 1 1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_70:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["openInAnimationClipEditor"]
        5 MOVE                             R3 R1
        6 GETUPVAL                         R4 2
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_71:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["FFlagAssistantAnimationGenShowPublishButton"]
        6 JUMPIF                           R3 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R5 R1 K1 ["toolUseId"]
       11 GETTABLE                         R3 R4 R5
       12 JUMPIFEQKNIL                     R3 ; [+5]
       14 GETTABLEKS                       R4 R3 K2 ["keyframeSequence"]
       16 JUMPIFNOTEQKNIL                  R4 ; [+6]
       18 GETIMPORT                        R4 K4 [warn]
       20 LOADK                            R5 K5 ["[AnimationGen] Save to Roblox: no generated animation for this content."]
       21 CALL                             R4 1 0
       22 RETURN                           R0 0
       23 GETTABLEKS                       R4 R2 K6 ["environment"]
       25 GETTABLEKS                       R4 R4 K7 ["tools"]
       27 GETTABLEKS                       R4 R4 K8 ["animationGen"]
       29 GETTABLEKS                       R4 R4 K9 ["publishAnimationAsync"]
       31 JUMPIFEQKNIL                     R4 ; [+5]
       33 MOVE                             R5 R4
       34 GETTABLEKS                       R6 R3 K2 ["keyframeSequence"]
       36 CALL                             R5 1 0
       37 RETURN                           R0 0

PROTO_72:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_73:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_74:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_75:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_76:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_77:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["resetPose"]
        6 MOVE                             R4 R1
        7 MOVE                             R5 R2
        8 CALL                             R3 2 0
        9 RETURN                           R0 0

PROTO_78:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["isOwnedBy"]
        6 GETTABLEKS                       R4 R1 K1 ["toolUseId"]
        8 GETTABLEKS                       R5 R1 K2 ["editSessionId"]
       10 CALL                             R3 2 1
       11 JUMPIFNOT                        R3 ; [+6]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["endSession"]
       15 GETTABLEKS                       R4 R1 K1 ["toolUseId"]
       17 CALL                             R3 1 0
       18 RETURN                           R0 0

PROTO_79:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_80:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 LOADB                            R0 1
        7 SETUPVAL                         R0 2
        8 RETURN                           R0 0

PROTO_81:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 LOADB                            R3 0
        6 SETUPVAL                         R3 1
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R2
       11 GETUPVAL                         R4 3
       12 GETTABLEKS                       R4 R4 K0 ["new"]
       14 CALL                             R4 0 1
       15 GETTABLEKS                       R7 R2 K1 ["resolveGenerationSource"]
       17 NEWCLOSURE                       R9 P1
       18 CAPTURE                          VAL R3
       19 CAPTURE                          UPVAL U4
       20 NAMECALL                         R7 R7 K2 ["Connect"]
       22 CALL                             R7 2 -1
       23 NAMECALL                         R5 R4 K3 ["Add"]
       25 CALL                             R5 -1 0
       26 GETTABLEKS                       R7 R2 K4 ["getPlaybackState"]
       28 NEWCLOSURE                       R9 P2
       29 CAPTURE                          VAL R3
       30 CAPTURE                          UPVAL U5
       31 NAMECALL                         R7 R7 K2 ["Connect"]
       33 CALL                             R7 2 -1
       34 NAMECALL                         R5 R4 K3 ["Add"]
       36 CALL                             R5 -1 0
       37 GETTABLEKS                       R7 R2 K5 ["generateAndSaveAnimation"]
       39 NEWCLOSURE                       R9 P3
       40 CAPTURE                          UPVAL U6
       41 CAPTURE                          VAL R3
       42 NAMECALL                         R7 R7 K2 ["Connect"]
       44 CALL                             R7 2 -1
       45 NAMECALL                         R5 R4 K3 ["Add"]
       47 CALL                             R5 -1 0
       48 GETTABLEKS                       R7 R2 K6 ["discardEditAnimationPreview"]
       50 NEWCLOSURE                       R9 P4
       51 CAPTURE                          VAL R3
       52 CAPTURE                          UPVAL U7
       53 NAMECALL                         R7 R7 K2 ["Connect"]
       55 CALL                             R7 2 -1
       56 NAMECALL                         R5 R4 K3 ["Add"]
       58 CALL                             R5 -1 0
       59 GETTABLEKS                       R7 R2 K7 ["getSelectedRigRef"]
       61 NEWCLOSURE                       R9 P5
       62 CAPTURE                          UPVAL U8
       63 CAPTURE                          VAL R3
       64 NAMECALL                         R7 R7 K2 ["Connect"]
       66 CALL                             R7 2 -1
       67 NAMECALL                         R5 R4 K3 ["Add"]
       69 CALL                             R5 -1 0
       70 GETTABLEKS                       R7 R2 K8 ["setIsPlaying"]
       72 NEWCLOSURE                       R9 P6
       73 CAPTURE                          UPVAL U9
       74 CAPTURE                          VAL R3
       75 NAMECALL                         R7 R7 K2 ["Connect"]
       77 CALL                             R7 2 -1
       78 NAMECALL                         R5 R4 K3 ["Add"]
       80 CALL                             R5 -1 0
       81 GETTABLEKS                       R7 R2 K9 ["setCurrentTime"]
       83 NEWCLOSURE                       R9 P7
       84 CAPTURE                          UPVAL U10
       85 CAPTURE                          VAL R3
       86 NAMECALL                         R7 R7 K2 ["Connect"]
       88 CALL                             R7 2 -1
       89 NAMECALL                         R5 R4 K3 ["Add"]
       91 CALL                             R5 -1 0
       92 GETTABLEKS                       R7 R2 K10 ["previewClipToUpscale"]
       94 NEWCLOSURE                       R9 P8
       95 CAPTURE                          UPVAL U11
       96 CAPTURE                          VAL R3
       97 NAMECALL                         R7 R7 K2 ["Connect"]
       99 CALL                             R7 2 -1
      100 NAMECALL                         R5 R4 K3 ["Add"]
      102 CALL                             R5 -1 0
      103 GETTABLEKS                       R7 R2 K11 ["clearClipToUpscalePreview"]
      105 NEWCLOSURE                       R9 P9
      106 CAPTURE                          UPVAL U12
      107 CAPTURE                          UPVAL U11
      108 NAMECALL                         R7 R7 K2 ["Connect"]
      110 CALL                             R7 2 -1
      111 NAMECALL                         R5 R4 K3 ["Add"]
      113 CALL                             R5 -1 0
      114 GETTABLEKS                       R7 R2 K12 ["insertClipToUpscalePreviewRig"]
      116 NEWCLOSURE                       R9 P10
      117 CAPTURE                          UPVAL U11
      118 CAPTURE                          VAL R3
      119 NAMECALL                         R7 R7 K2 ["Connect"]
      121 CALL                             R7 2 -1
      122 NAMECALL                         R5 R4 K3 ["Add"]
      124 CALL                             R5 -1 0
      125 GETTABLEKS                       R7 R2 K13 ["generateUpscalePreview"]
      127 NEWCLOSURE                       R9 P11
      128 CAPTURE                          UPVAL U11
      129 CAPTURE                          VAL R3
      130 NAMECALL                         R7 R7 K2 ["Connect"]
      132 CALL                             R7 2 -1
      133 NAMECALL                         R5 R4 K3 ["Add"]
      135 CALL                             R5 -1 0
      136 GETTABLEKS                       R7 R2 K14 ["updateUpscalePreview"]
      138 NEWCLOSURE                       R9 P12
      139 CAPTURE                          UPVAL U11
      140 CAPTURE                          VAL R3
      141 NAMECALL                         R7 R7 K2 ["Connect"]
      143 CALL                             R7 2 -1
      144 NAMECALL                         R5 R4 K3 ["Add"]
      146 CALL                             R5 -1 0
      147 GETTABLEKS                       R7 R2 K15 ["openInAnimationClipEditor"]
      149 NEWCLOSURE                       R9 P13
      150 CAPTURE                          UPVAL U2
      151 CAPTURE                          UPVAL U13
      152 CAPTURE                          VAL R1
      153 NAMECALL                         R7 R7 K2 ["Connect"]
      155 CALL                             R7 2 -1
      156 NAMECALL                         R5 R4 K3 ["Add"]
      158 CALL                             R5 -1 0
      159 GETTABLEKS                       R7 R2 K16 ["publishAnimation"]
      161 NEWCLOSURE                       R9 P14
      162 CAPTURE                          VAL R3
      163 CAPTURE                          UPVAL U14
      164 CAPTURE                          UPVAL U15
      165 NAMECALL                         R7 R7 K2 ["Connect"]
      167 CALL                             R7 2 -1
      168 NAMECALL                         R5 R4 K3 ["Add"]
      170 CALL                             R5 -1 0
      171 GETTABLEKS                       R7 R2 K17 ["insertPose"]
      173 NEWCLOSURE                       R9 P15
      174 CAPTURE                          UPVAL U16
      175 CAPTURE                          VAL R3
      176 NAMECALL                         R7 R7 K2 ["Connect"]
      178 CALL                             R7 2 -1
      179 NAMECALL                         R5 R4 K3 ["Add"]
      181 CALL                             R5 -1 0
      182 GETTABLEKS                       R7 R2 K18 ["deletePose"]
      184 NEWCLOSURE                       R9 P16
      185 CAPTURE                          UPVAL U17
      186 CAPTURE                          VAL R3
      187 NAMECALL                         R7 R7 K2 ["Connect"]
      189 CALL                             R7 2 -1
      190 NAMECALL                         R5 R4 K3 ["Add"]
      192 CALL                             R5 -1 0
      193 GETTABLEKS                       R7 R2 K19 ["movePose"]
      195 NEWCLOSURE                       R9 P17
      196 CAPTURE                          UPVAL U18
      197 CAPTURE                          VAL R3
      198 NAMECALL                         R7 R7 K2 ["Connect"]
      200 CALL                             R7 2 -1
      201 NAMECALL                         R5 R4 K3 ["Add"]
      203 CALL                             R5 -1 0
      204 GETTABLEKS                       R7 R2 K20 ["resizePose"]
      206 NEWCLOSURE                       R9 P18
      207 CAPTURE                          UPVAL U19
      208 CAPTURE                          VAL R3
      209 NAMECALL                         R7 R7 K2 ["Connect"]
      211 CALL                             R7 2 -1
      212 NAMECALL                         R5 R4 K3 ["Add"]
      214 CALL                             R5 -1 0
      215 GETTABLEKS                       R7 R2 K21 ["getEditScrubbarState"]
      217 NEWCLOSURE                       R9 P19
      218 CAPTURE                          UPVAL U20
      219 CAPTURE                          VAL R3
      220 NAMECALL                         R7 R7 K2 ["Connect"]
      222 CALL                             R7 2 -1
      223 NAMECALL                         R5 R4 K3 ["Add"]
      225 CALL                             R5 -1 0
      226 GETTABLEKS                       R7 R2 K22 ["resetPose"]
      228 NEWCLOSURE                       R9 P20
      229 CAPTURE                          VAL R3
      230 CAPTURE                          UPVAL U21
      231 NAMECALL                         R7 R7 K2 ["Connect"]
      233 CALL                             R7 2 -1
      234 NAMECALL                         R5 R4 K3 ["Add"]
      236 CALL                             R5 -1 0
      237 GETTABLEKS                       R7 R2 K23 ["endEditSession"]
      239 NEWCLOSURE                       R9 P21
      240 CAPTURE                          VAL R3
      241 CAPTURE                          UPVAL U7
      242 NAMECALL                         R7 R7 K2 ["Connect"]
      244 CALL                             R7 2 -1
      245 NAMECALL                         R5 R4 K3 ["Add"]
      247 CALL                             R5 -1 0
      248 GETTABLEKS                       R7 R2 K24 ["beginEditPreview"]
      250 NEWCLOSURE                       R9 P22
      251 CAPTURE                          UPVAL U22
      252 CAPTURE                          VAL R3
      253 NAMECALL                         R7 R7 K2 ["Connect"]
      255 CALL                             R7 2 -1
      256 NAMECALL                         R5 R4 K3 ["Add"]
      258 CALL                             R5 -1 0
      259 GETTABLEKS                       R5 R1 K25 ["Destroying"]
      261 NEWCLOSURE                       R7 P23
      262 CAPTURE                          VAL R4
      263 CAPTURE                          UPVAL U23
      264 CAPTURE                          UPVAL U1
      265 NAMECALL                         R5 R5 K26 ["Once"]
      267 CALL                             R5 2 0
      268 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CollectionService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["HttpService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["MarketplaceService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 LOADK                            R5 K6 ["ServerStorage"]
       22 NAMECALL                         R3 R3 K3 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K8 [script]
       27 LOADK                            R6 K9 ["AssistantUI"]
       28 NAMECALL                         R4 R4 K10 ["FindFirstAncestor"]
       30 CALL                             R4 2 1
       31 GETTABLEKS                       R5 R4 K11 ["Parent"]
       33 GETIMPORT                        R6 K13 [require]
       35 GETTABLEKS                       R7 R5 K14 ["Bin"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K13 [require]
       40 GETTABLEKS                       R8 R5 K15 ["DMNetworking"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K13 [require]
       45 GETTABLEKS                       R9 R4 K16 ["Util"]
       47 GETTABLEKS                       R9 R9 K17 ["AnimationGen"]
       49 GETTABLEKS                       R9 R9 K18 ["State"]
       51 GETTABLEKS                       R9 R9 K19 ["AnimationContent"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K13 [require]
       56 GETTABLEKS                       R10 R4 K20 ["Bridges"]
       58 GETTABLEKS                       R10 R10 K21 ["createAnimationGenBridge"]
       60 GETTABLEKS                       R10 R10 K22 ["AnimationGenBridgeTypes"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K13 [require]
       65 GETTABLEKS                       R11 R4 K16 ["Util"]
       67 GETTABLEKS                       R11 R11 K17 ["AnimationGen"]
       69 GETTABLEKS                       R11 R11 K23 ["AnimationGenConstants"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K13 [require]
       74 GETTABLEKS                       R12 R4 K24 ["Remotes"]
       76 GETTABLEKS                       R12 R12 K25 ["AnimationGenRemotes"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K13 [require]
       81 GETTABLEKS                       R13 R4 K16 ["Util"]
       83 GETTABLEKS                       R13 R13 K17 ["AnimationGen"]
       85 GETTABLEKS                       R13 R13 K26 ["AnimationGenTypes"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K13 [require]
       90 GETTABLEKS                       R14 R4 K16 ["Util"]
       92 GETTABLEKS                       R14 R14 K17 ["AnimationGen"]
       94 GETTABLEKS                       R14 R14 K27 ["AnimationNameUtils"]
       96 CALL                             R13 1 1
       97 GETIMPORT                        R14 K13 [require]
       99 GETTABLEKS                       R15 R4 K16 ["Util"]
      101 GETTABLEKS                       R15 R15 K17 ["AnimationGen"]
      103 GETTABLEKS                       R15 R15 K18 ["State"]
      105 GETTABLEKS                       R15 R15 K28 ["AnimationPlayerParameters"]
      107 CALL                             R14 1 1
      108 GETIMPORT                        R15 K13 [require]
      110 GETTABLEKS                       R16 R4 K16 ["Util"]
      112 GETTABLEKS                       R16 R16 K17 ["AnimationGen"]
      114 GETTABLEKS                       R16 R16 K18 ["State"]
      116 GETTABLEKS                       R16 R16 K29 ["AnimationPlayerState"]
      118 CALL                             R15 1 1
      119 GETIMPORT                        R16 K13 [require]
      121 GETTABLEKS                       R17 R4 K16 ["Util"]
      123 GETTABLEKS                       R17 R17 K17 ["AnimationGen"]
      125 GETTABLEKS                       R17 R17 K30 ["BlendSettings"]
      127 CALL                             R16 1 1
      128 GETIMPORT                        R17 K13 [require]
      130 GETTABLEKS                       R18 R4 K31 ["Guest"]
      132 GETTABLEKS                       R18 R18 K32 ["Environment"]
      134 CALL                             R17 1 1
      135 GETIMPORT                        R18 K13 [require]
      137 GETTABLEKS                       R19 R4 K33 ["Flags"]
      139 CALL                             R18 1 1
      140 GETIMPORT                        R19 K13 [require]
      142 GETTABLEKS                       R20 R4 K16 ["Util"]
      144 GETTABLEKS                       R20 R20 K17 ["AnimationGen"]
      146 GETTABLEKS                       R20 R20 K34 ["HostTypes"]
      148 CALL                             R19 1 1
      149 GETIMPORT                        R20 K13 [require]
      151 GETTABLEKS                       R21 R4 K35 ["Types"]
      153 CALL                             R20 1 1
      154 GETIMPORT                        R21 K13 [require]
      156 GETTABLEKS                       R22 R4 K16 ["Util"]
      158 GETTABLEKS                       R22 R22 K17 ["AnimationGen"]
      160 GETTABLEKS                       R22 R22 K36 ["UpscaleSettings"]
      162 CALL                             R21 1 1
      163 GETIMPORT                        R22 K13 [require]
      165 GETTABLEKS                       R23 R4 K16 ["Util"]
      167 GETTABLEKS                       R23 R23 K17 ["AnimationGen"]
      169 GETTABLEKS                       R23 R23 K37 ["Posing"]
      171 GETTABLEKS                       R23 R23 K38 ["bakeSavedPoseEdits"]
      173 CALL                             R22 1 1
      174 GETIMPORT                        R23 K13 [require]
      176 GETTABLEKS                       R24 R4 K16 ["Util"]
      178 GETTABLEKS                       R24 R24 K17 ["AnimationGen"]
      180 GETTABLEKS                       R24 R24 K39 ["buildBlendedKeyframeSequence"]
      182 CALL                             R23 1 1
      183 GETIMPORT                        R24 K13 [require]
      185 GETTABLEKS                       R25 R4 K16 ["Util"]
      187 GETTABLEKS                       R25 R25 K17 ["AnimationGen"]
      189 GETTABLEKS                       R25 R25 K40 ["clearAnimationPose"]
      191 CALL                             R24 1 1
      192 GETIMPORT                        R25 K13 [require]
      194 GETTABLEKS                       R26 R4 K16 ["Util"]
      196 GETTABLEKS                       R26 R26 K17 ["AnimationGen"]
      198 GETTABLEKS                       R26 R26 K41 ["createClipEditorLauncher"]
      200 CALL                             R25 1 1
      201 GETIMPORT                        R26 K13 [require]
      203 GETTABLEKS                       R27 R4 K16 ["Util"]
      205 GETTABLEKS                       R27 R27 K17 ["AnimationGen"]
      207 GETTABLEKS                       R27 R27 K42 ["createClipToUpscalePreview"]
      209 CALL                             R26 1 1
      210 GETIMPORT                        R27 K13 [require]
      212 GETTABLEKS                       R28 R4 K16 ["Util"]
      214 GETTABLEKS                       R28 R28 K17 ["AnimationGen"]
      216 GETTABLEKS                       R28 R28 K43 ["createEditPreviewPlayer"]
      218 CALL                             R27 1 1
      219 GETIMPORT                        R28 K13 [require]
      221 GETTABLEKS                       R29 R4 K16 ["Util"]
      223 GETTABLEKS                       R29 R29 K17 ["AnimationGen"]
      225 GETTABLEKS                       R29 R29 K44 ["createEditSessionManager"]
      227 CALL                             R28 1 1
      228 GETIMPORT                        R29 K13 [require]
      230 GETTABLEKS                       R30 R4 K16 ["Util"]
      232 GETTABLEKS                       R30 R30 K17 ["AnimationGen"]
      234 GETTABLEKS                       R30 R30 K18 ["State"]
      236 GETTABLEKS                       R30 R30 K45 ["createGenerationHistory"]
      238 CALL                             R29 1 1
      239 GETIMPORT                        R30 K13 [require]
      241 GETTABLEKS                       R31 R4 K16 ["Util"]
      243 GETTABLEKS                       R31 R31 K17 ["AnimationGen"]
      245 GETTABLEKS                       R31 R31 K46 ["createHostAnimator"]
      247 CALL                             R30 1 1
      248 GETIMPORT                        R31 K13 [require]
      250 GETTABLEKS                       R32 R4 K16 ["Util"]
      252 GETTABLEKS                       R32 R32 K17 ["AnimationGen"]
      254 GETTABLEKS                       R32 R32 K47 ["createHostEditor"]
      256 CALL                             R31 1 1
      257 GETIMPORT                        R32 K13 [require]
      259 GETTABLEKS                       R33 R4 K16 ["Util"]
      261 GETTABLEKS                       R33 R33 K17 ["AnimationGen"]
      263 GETTABLEKS                       R33 R33 K48 ["createHostGenerator"]
      265 CALL                             R32 1 1
      266 GETIMPORT                        R33 K13 [require]
      268 GETTABLEKS                       R34 R4 K16 ["Util"]
      270 GETTABLEKS                       R34 R34 K17 ["AnimationGen"]
      272 GETTABLEKS                       R34 R34 K49 ["createHostSelection"]
      274 CALL                             R33 1 1
      275 GETIMPORT                        R34 K13 [require]
      277 GETTABLEKS                       R35 R4 K16 ["Util"]
      279 GETTABLEKS                       R35 R35 K17 ["AnimationGen"]
      281 GETTABLEKS                       R35 R35 K50 ["createPoseEditor"]
      283 CALL                             R34 1 1
      284 GETIMPORT                        R35 K13 [require]
      286 GETTABLEKS                       R36 R4 K16 ["Util"]
      288 GETTABLEKS                       R36 R36 K17 ["AnimationGen"]
      290 GETTABLEKS                       R36 R36 K51 ["createPoseSelection"]
      292 CALL                             R35 1 1
      293 GETIMPORT                        R36 K13 [require]
      295 GETTABLEKS                       R37 R4 K16 ["Util"]
      297 GETTABLEKS                       R37 R37 K17 ["AnimationGen"]
      299 GETTABLEKS                       R37 R37 K52 ["insertBlockyRigIntoWorkspace"]
      301 CALL                             R36 1 1
      302 GETIMPORT                        R37 K13 [require]
      304 GETTABLEKS                       R38 R4 K16 ["Util"]
      306 GETTABLEKS                       R38 R38 K17 ["AnimationGen"]
      308 GETTABLEKS                       R38 R38 K53 ["isRigInWorkspace"]
      310 CALL                             R37 1 1
      311 GETIMPORT                        R38 K13 [require]
      313 GETTABLEKS                       R39 R4 K16 ["Util"]
      315 GETTABLEKS                       R39 R39 K17 ["AnimationGen"]
      317 GETTABLEKS                       R39 R39 K54 ["notifyGuestEditStateChanged"]
      319 CALL                             R38 1 1
      320 DUPCLOSURE                       R39 K55 [PROTO_0]
      321 DUPCLOSURE                       R40 K56 [PROTO_1]
      322 DUPCLOSURE                       R41 K57 [PROTO_2]
      323 CAPTURE                          VAL R0
      324 CAPTURE                          VAL R12
      325 DUPCLOSURE                       R42 K58 [PROTO_5]
      326 DUPCLOSURE                       R43 K59 [PROTO_6]
      327 CAPTURE                          VAL R37
      328 DUPCLOSURE                       R44 K60 [PROTO_7]
      329 CAPTURE                          VAL R37
      330 DUPCLOSURE                       R45 K61 [PROTO_8]
      331 CAPTURE                          VAL R3
      332 CAPTURE                          VAL R10
      333 DUPCLOSURE                       R46 K62 [PROTO_10]
      334 CAPTURE                          VAL R2
      335 DUPCLOSURE                       R47 K63 [PROTO_11]
      336 CAPTURE                          VAL R2
      337 CAPTURE                          VAL R13
      338 CAPTURE                          VAL R45
      339 DUPCLOSURE                       R48 K64 [PROTO_12]
      340 NEWTABLE                         R49 0 0
      342 LOADNIL                          R50
      343 LOADNIL                          R51
      344 LOADNIL                          R52
      345 LOADNIL                          R53
      346 LOADNIL                          R54
      347 LOADNIL                          R55
      348 LOADNIL                          R56
      349 LOADNIL                          R57
      350 LOADNIL                          R58
      351 LOADNIL                          R59
      352 LOADNIL                          R60
      353 LOADNIL                          R61
      354 LOADB                            R62 0
      355 LOADB                            R63 0
      356 LOADNIL                          R64
      357 DUPCLOSURE                       R65 K65 [PROTO_13]
      358 CAPTURE                          VAL R49
      359 CAPTURE                          VAL R24
      360 NEWCLOSURE                       R66 P11
      361 CAPTURE                          REF R55
      362 CAPTURE                          REF R56
      363 NEWCLOSURE                       R67 P12
      364 CAPTURE                          VAL R15
      365 CAPTURE                          VAL R49
      366 CAPTURE                          REF R52
      367 CAPTURE                          VAL R42
      368 NEWCLOSURE                       R68 P13
      369 CAPTURE                          VAL R1
      370 CAPTURE                          VAL R41
      371 CAPTURE                          REF R51
      372 CAPTURE                          VAL R15
      373 CAPTURE                          VAL R49
      374 CAPTURE                          REF R52
      375 CAPTURE                          VAL R42
      376 CAPTURE                          VAL R48
      377 NEWCLOSURE                       R69 P14
      378 CAPTURE                          REF R53
      379 CAPTURE                          VAL R22
      380 CAPTURE                          VAL R12
      381 CAPTURE                          VAL R68
      382 CAPTURE                          REF R57
      383 NEWCLOSURE                       R70 P15
      384 CAPTURE                          REF R60
      385 CAPTURE                          VAL R12
      386 CAPTURE                          VAL R21
      387 CAPTURE                          VAL R15
      388 CAPTURE                          VAL R14
      389 CAPTURE                          VAL R16
      390 CAPTURE                          VAL R23
      391 CAPTURE                          VAL R1
      392 CAPTURE                          VAL R36
      393 CAPTURE                          REF R51
      394 CAPTURE                          VAL R67
      395 CAPTURE                          VAL R48
      396 NEWCLOSURE                       R71 P16
      397 CAPTURE                          REF R51
      398 CAPTURE                          VAL R12
      399 CAPTURE                          VAL R2
      400 CAPTURE                          VAL R13
      401 CAPTURE                          VAL R45
      402 CAPTURE                          REF R64
      403 DUPCLOSURE                       R72 K66 [PROTO_20]
      404 CAPTURE                          VAL R12
      405 CAPTURE                          VAL R49
      406 CAPTURE                          VAL R37
      407 NEWCLOSURE                       R73 P18
      408 CAPTURE                          REF R57
      409 CAPTURE                          VAL R12
      410 CAPTURE                          VAL R72
      411 CAPTURE                          VAL R70
      412 CAPTURE                          VAL R49
      413 CAPTURE                          VAL R15
      414 CAPTURE                          VAL R47
      415 CAPTURE                          VAL R69
      416 CAPTURE                          REF R51
      417 CAPTURE                          REF R64
      418 CAPTURE                          VAL R1
      419 CAPTURE                          VAL R36
      420 CAPTURE                          VAL R67
      421 CAPTURE                          VAL R48
      422 NEWCLOSURE                       R74 P19
      423 CAPTURE                          VAL R12
      424 CAPTURE                          REF R57
      425 CAPTURE                          REF R59
      426 CAPTURE                          VAL R73
      427 NEWCLOSURE                       R75 P20
      428 CAPTURE                          REF R59
      429 NEWCLOSURE                       R76 P21
      430 CAPTURE                          VAL R49
      431 CAPTURE                          REF R56
      432 CAPTURE                          VAL R10
      433 CAPTURE                          VAL R1
      434 CAPTURE                          REF R51
      435 NEWCLOSURE                       R77 P22
      436 CAPTURE                          REF R52
      437 NEWCLOSURE                       R78 P23
      438 CAPTURE                          VAL R49
      439 CAPTURE                          REF R52
      440 CAPTURE                          VAL R42
      441 CAPTURE                          VAL R76
      442 CAPTURE                          REF R56
      443 CAPTURE                          REF R55
      444 NEWCLOSURE                       R79 P24
      445 CAPTURE                          VAL R49
      446 CAPTURE                          VAL R76
      447 CAPTURE                          REF R56
      448 CAPTURE                          REF R55
      449 CAPTURE                          REF R52
      450 CAPTURE                          VAL R42
      451 NEWCLOSURE                       R80 P25
      452 CAPTURE                          REF R58
      453 NEWCLOSURE                       R81 P26
      454 CAPTURE                          REF R58
      455 NEWCLOSURE                       R82 P27
      456 CAPTURE                          REF R58
      457 NEWCLOSURE                       R83 P28
      458 CAPTURE                          REF R58
      459 NEWCLOSURE                       R84 P29
      460 CAPTURE                          REF R58
      461 NEWCLOSURE                       R85 P30
      462 CAPTURE                          REF R58
      463 NEWCLOSURE                       R86 P31
      464 CAPTURE                          REF R57
      465 NEWCLOSURE                       R87 P32
      466 CAPTURE                          REF R57
      467 NEWCLOSURE                       R88 P33
      468 CAPTURE                          REF R55
      469 CAPTURE                          VAL R49
      470 CAPTURE                          REF R57
      471 CAPTURE                          REF R56
      472 CAPTURE                          VAL R38
      473 DUPCLOSURE                       R89 K67 [PROTO_38]
      474 CAPTURE                          VAL R18
      475 CAPTURE                          VAL R49
      476 NEWCLOSURE                       R90 P35
      477 CAPTURE                          REF R50
      478 CAPTURE                          VAL R33
      479 CAPTURE                          REF R51
      480 CAPTURE                          VAL R32
      481 CAPTURE                          REF R52
      482 CAPTURE                          VAL R30
      483 CAPTURE                          VAL R49
      484 CAPTURE                          REF R53
      485 CAPTURE                          VAL R31
      486 CAPTURE                          REF R56
      487 CAPTURE                          REF R54
      488 CAPTURE                          VAL R25
      489 CAPTURE                          REF R55
      490 CAPTURE                          VAL R35
      491 CAPTURE                          VAL R27
      492 CAPTURE                          VAL R42
      493 CAPTURE                          REF R57
      494 CAPTURE                          VAL R28
      495 CAPTURE                          REF R58
      496 CAPTURE                          VAL R34
      497 CAPTURE                          VAL R65
      498 CAPTURE                          REF R59
      499 CAPTURE                          VAL R29
      500 CAPTURE                          REF R60
      501 CAPTURE                          VAL R26
      502 CAPTURE                          VAL R71
      503 CAPTURE                          VAL R6
      504 CAPTURE                          REF R61
      505 CAPTURE                          REF R62
      506 NEWCLOSURE                       R64 P36
      507 CAPTURE                          REF R62
      508 CAPTURE                          REF R63
      509 CAPTURE                          VAL R90
      510 NEWCLOSURE                       R91 P37
      511 CAPTURE                          REF R62
      512 CAPTURE                          REF R61
      513 CAPTURE                          REF R54
      514 CAPTURE                          REF R60
      515 CAPTURE                          REF R52
      516 CAPTURE                          REF R50
      517 CAPTURE                          REF R57
      518 CAPTURE                          REF R53
      519 CAPTURE                          VAL R49
      520 CAPTURE                          VAL R65
      521 CAPTURE                          VAL R15
      522 CAPTURE                          REF R59
      523 CAPTURE                          REF R56
      524 CAPTURE                          REF R55
      525 NEWCLOSURE                       R92 P38
      526 CAPTURE                          REF R64
      527 NEWCLOSURE                       R93 P39
      528 CAPTURE                          REF R64
      529 DUPTABLE                         R94 K90 [{"resolveGenerationSource", "getPlaybackState", "generateAndSaveAnimationAsync", "discardEditAnimationPreview", "getSelectedRigRef", "setIsPlaying", "setCurrentTime", "previewClipToUpscaleAsync", "clearClipToUpscalePreview", "insertClipToUpscalePreviewRigAsync", "generateUpscalePreviewAsync", "updateUpscalePreview", "openInAnimationClipEditor", "publishAnimation", "insertPose", "deletePose", "movePose", "resizePose", "getEditScrubbarState", "resetPose", "endEditSession", "beginEditPreview"}]
      530 NEWCLOSURE                       R95 P40
      531 CAPTURE                          VAL R75
      532 CAPTURE                          REF R64
      533 SETTABLEKS                       R95 R94 K68 ["resolveGenerationSource"]
      535 NEWCLOSURE                       R95 P40
      536 CAPTURE                          VAL R77
      537 CAPTURE                          REF R64
      538 SETTABLEKS                       R95 R94 K69 ["getPlaybackState"]
      540 NEWCLOSURE                       R95 P40
      541 CAPTURE                          VAL R74
      542 CAPTURE                          REF R64
      543 SETTABLEKS                       R95 R94 K70 ["generateAndSaveAnimationAsync"]
      545 NEWCLOSURE                       R95 P40
      546 CAPTURE                          VAL R86
      547 CAPTURE                          REF R64
      548 SETTABLEKS                       R95 R94 K71 ["discardEditAnimationPreview"]
      550 NEWCLOSURE                       R95 P41
      551 CAPTURE                          VAL R44
      552 CAPTURE                          REF R64
      553 SETTABLEKS                       R95 R94 K72 ["getSelectedRigRef"]
      555 NEWCLOSURE                       R95 P40
      556 CAPTURE                          VAL R78
      557 CAPTURE                          REF R64
      558 SETTABLEKS                       R95 R94 K73 ["setIsPlaying"]
      560 NEWCLOSURE                       R95 P40
      561 CAPTURE                          VAL R79
      562 CAPTURE                          REF R64
      563 SETTABLEKS                       R95 R94 K74 ["setCurrentTime"]
      565 NEWCLOSURE                       R95 P42
      566 CAPTURE                          REF R60
      567 CAPTURE                          REF R64
      568 SETTABLEKS                       R95 R94 K75 ["previewClipToUpscaleAsync"]
      570 NEWCLOSURE                       R95 P43
      571 CAPTURE                          REF R62
      572 CAPTURE                          REF R60
      573 SETTABLEKS                       R95 R94 K76 ["clearClipToUpscalePreview"]
      575 NEWCLOSURE                       R95 P44
      576 CAPTURE                          REF R60
      577 CAPTURE                          REF R64
      578 SETTABLEKS                       R95 R94 K77 ["insertClipToUpscalePreviewRigAsync"]
      580 NEWCLOSURE                       R95 P45
      581 CAPTURE                          REF R60
      582 CAPTURE                          REF R64
      583 SETTABLEKS                       R95 R94 K78 ["generateUpscalePreviewAsync"]
      585 NEWCLOSURE                       R95 P46
      586 CAPTURE                          REF R60
      587 CAPTURE                          REF R64
      588 SETTABLEKS                       R95 R94 K79 ["updateUpscalePreview"]
      590 NEWCLOSURE                       R95 P47
      591 CAPTURE                          REF R64
      592 CAPTURE                          REF R54
      593 SETTABLEKS                       R95 R94 K80 ["openInAnimationClipEditor"]
      595 NEWCLOSURE                       R95 P40
      596 CAPTURE                          VAL R89
      597 CAPTURE                          REF R64
      598 SETTABLEKS                       R95 R94 K81 ["publishAnimation"]
      600 NEWCLOSURE                       R95 P40
      601 CAPTURE                          VAL R80
      602 CAPTURE                          REF R64
      603 SETTABLEKS                       R95 R94 K82 ["insertPose"]
      605 NEWCLOSURE                       R95 P40
      606 CAPTURE                          VAL R81
      607 CAPTURE                          REF R64
      608 SETTABLEKS                       R95 R94 K83 ["deletePose"]
      610 NEWCLOSURE                       R95 P40
      611 CAPTURE                          VAL R82
      612 CAPTURE                          REF R64
      613 SETTABLEKS                       R95 R94 K84 ["movePose"]
      615 NEWCLOSURE                       R95 P40
      616 CAPTURE                          VAL R83
      617 CAPTURE                          REF R64
      618 SETTABLEKS                       R95 R94 K85 ["resizePose"]
      620 NEWCLOSURE                       R95 P40
      621 CAPTURE                          VAL R84
      622 CAPTURE                          REF R64
      623 SETTABLEKS                       R95 R94 K86 ["getEditScrubbarState"]
      625 NEWCLOSURE                       R95 P40
      626 CAPTURE                          VAL R85
      627 CAPTURE                          REF R64
      628 SETTABLEKS                       R95 R94 K87 ["resetPose"]
      630 NEWCLOSURE                       R95 P40
      631 CAPTURE                          VAL R87
      632 CAPTURE                          REF R64
      633 SETTABLEKS                       R95 R94 K88 ["endEditSession"]
      635 NEWCLOSURE                       R95 P40
      636 CAPTURE                          VAL R88
      637 CAPTURE                          REF R64
      638 SETTABLEKS                       R95 R94 K89 ["beginEditPreview"]
      640 NEWCLOSURE                       R95 P48
      641 CAPTURE                          VAL R11
      642 CAPTURE                          REF R63
      643 CAPTURE                          REF R64
      644 CAPTURE                          VAL R6
      645 CAPTURE                          REF R59
      646 CAPTURE                          REF R52
      647 CAPTURE                          VAL R74
      648 CAPTURE                          REF R57
      649 CAPTURE                          VAL R44
      650 CAPTURE                          VAL R78
      651 CAPTURE                          VAL R79
      652 CAPTURE                          REF R60
      653 CAPTURE                          REF R62
      654 CAPTURE                          REF R54
      655 CAPTURE                          VAL R18
      656 CAPTURE                          VAL R49
      657 CAPTURE                          VAL R80
      658 CAPTURE                          VAL R81
      659 CAPTURE                          VAL R82
      660 CAPTURE                          VAL R83
      661 CAPTURE                          VAL R84
      662 CAPTURE                          REF R58
      663 CAPTURE                          VAL R88
      664 CAPTURE                          VAL R91
      665 DUPTABLE                         R96 K94 [{"bridge", "destroy", "connectRemotes"}]
      666 SETTABLEKS                       R94 R96 K91 ["bridge"]
      668 SETTABLEKS                       R91 R96 K92 ["destroy"]
      670 SETTABLEKS                       R95 R96 K93 ["connectRemotes"]
      672 CLOSEUPVALS                      R50
      673 RETURN                           R96 1
