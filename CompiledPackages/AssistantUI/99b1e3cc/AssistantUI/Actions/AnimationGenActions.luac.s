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
        8 DUPTABLE                         R6 K12 [{"duration", "name", "generationId", "fbxFilePath", "contextId", "rigUniqueId", "clipPath", "rigPath"}]
        9 GETTABLEKS                       R7 R5 K13 ["Length"]
       11 SETTABLEKS                       R7 R6 K4 ["duration"]
       13 GETTABLEKS                       R8 R4 K5 ["name"]
       15 ORK                              R7 R8 K14 [""]
       16 SETTABLEKS                       R7 R6 K5 ["name"]
       18 GETTABLEKS                       R7 R4 K6 ["generationId"]
       20 SETTABLEKS                       R7 R6 K6 ["generationId"]
       22 GETTABLEKS                       R7 R4 K7 ["fbxFilePath"]
       24 SETTABLEKS                       R7 R6 K7 ["fbxFilePath"]
       26 GETTABLEKS                       R7 R4 K8 ["contextId"]
       28 SETTABLEKS                       R7 R6 K8 ["contextId"]
       30 GETTABLEKS                       R8 R1 K15 ["environment"]
       32 GETTABLEKS                       R9 R0 K9 ["rigUniqueId"]
       34 JUMPIFEQKNIL                     R9 ; [+3]
       36 MOVE                             R7 R9
       37 JUMP                             ; [+23]
       38 JUMPIFNOTEQKNIL                  R2 ; [+3]
       40 LOADNIL                          R7
       41 JUMP                             ; [+19]
       42 GETIMPORT                        R10 K17 [pcall]
       44 GETTABLEKS                       R11 R8 K18 ["instances"]
       46 GETTABLEKS                       R11 R11 K19 ["getUniqueId"]
       48 MOVE                             R12 R2
       49 CALL                             R10 2 2
       50 JUMPIFNOT                        R10 ; [+9]
       51 JUMPIFEQKNIL                     R11 ; [+8]
       53 FASTCALL1                        TOSTRING R11 ; [+3]
       54 MOVE                             R13 R11
       55 GETIMPORT                        R12 K21 [tostring]
       57 CALL                             R12 1 1
       58 MOVE                             R7 R12
       59 JUMP                             ; [+1]
       60 LOADNIL                          R7
       61 SETTABLEKS                       R7 R6 K9 ["rigUniqueId"]
       63 NAMECALL                         R7 R5 K22 ["GetFullName"]
       65 CALL                             R7 1 1
       66 SETTABLEKS                       R7 R6 K10 ["clipPath"]
       68 NAMECALL                         R7 R2 K22 ["GetFullName"]
       70 CALL                             R7 1 1
       71 SETTABLEKS                       R7 R6 K11 ["rigPath"]
       73 RETURN                           R6 1

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
       62 LOADK                            R10 K17 ["submitted"]
       63 CALL                             R8 2 0
       64 RETURN                           R7 1

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
       21 JUMP                             ; [+43]
       22 GETTABLEKS                       R3 R0 K4 ["rigUniqueId"]
       24 JUMPIFEQKNIL                     R3 ; [+24]
       26 GETTABLEKS                       R3 R1 K5 ["environment"]
       28 GETTABLEKS                       R3 R3 K6 ["instances"]
       30 GETTABLEKS                       R3 R3 K7 ["getInstanceFromUniqueId"]
       32 GETTABLEKS                       R4 R0 K4 ["rigUniqueId"]
       34 CALL                             R3 1 1
       35 MOVE                             R2 R3
       36 GETUPVAL                         R3 2
       37 GETTABLEKS                       R3 R3 K8 ["FFlagAssistantAnimationGenDisablePreviewSelectionFollowing"]
       39 JUMPIFNOT                        R3 ; [+25]
       40 JUMPIFEQKNIL                     R2 ; [+5]
       42 GETUPVAL                         R3 3
       43 MOVE                             R4 R2
       44 CALL                             R3 1 1
       45 JUMPIF                           R3 ; [+19]
       46 DUPTABLE                         R3 K11 [{["shouldInsertDefaultRig"] = True}]
       47 RETURN                           R3 1
       48 JUMP                             ; [+16]
       49 GETTABLEKS                       R3 R0 K12 ["savedKeyframesContentId"]
       51 JUMPIFEQKNIL                     R3 ; [+11]
       53 GETUPVAL                         R4 1
       54 GETTABLEKS                       R5 R0 K12 ["savedKeyframesContentId"]
       56 GETTABLE                         R3 R4 R5
       57 MOVE                             R4 R3
       58 JUMPIFNOT                        R4 ; [+2]
       59 GETTABLEKS                       R4 R3 K3 ["rig"]
       61 MOVE                             R2 R4
       62 JUMP                             ; [+2]
       63 DUPTABLE                         R3 K11 [{["shouldInsertDefaultRig"] = True}]
       64 RETURN                           R3 1
       65 JUMPIFEQKNIL                     R2 ; [+5]
       67 GETUPVAL                         R3 3
       68 MOVE                             R4 R2
       69 CALL                             R3 1 1
       70 JUMPIF                           R3 ; [+22]
       71 GETUPVAL                         R4 2
       72 GETTABLEKS                       R4 R4 K8 ["FFlagAssistantAnimationGenDisablePreviewSelectionFollowing"]
       74 JUMPIFNOT                        R4 ; [+6]
       75 GETUPVAL                         R3 0
       76 GETTABLEKS                       R3 R3 K13 ["FailureReasons"]
       78 GETTABLEKS                       R3 R3 K14 ["RigNotFound"]
       80 JUMP                             ; [+5]
       81 GETUPVAL                         R3 0
       82 GETTABLEKS                       R3 R3 K13 ["FailureReasons"]
       84 GETTABLEKS                       R3 R3 K15 ["RigInsertFailed"]
       86 DUPTABLE                         R4 K18 [{["shouldInsertDefaultRig"] = False, ["failure"]}]
       87 DUPTABLE                         R5 K24 [{["duration"] = 0, ["name"] = "", ["failureReason"]}]
       88 SETTABLEKS                       R3 R5 K23 ["failureReason"]
       90 SETTABLEKS                       R5 R4 K17 ["failure"]
       92 RETURN                           R4 1
       93 DUPTABLE                         R3 K25 [{["rig"], ["shouldInsertDefaultRig"] = False}]
       94 SETTABLEKS                       R2 R3 K3 ["rig"]
       96 RETURN                           R3 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["callbacks"]
        3 GETTABLEKS                       R1 R1 K1 ["thoughtReceived"]
        5 DUPTABLE                         R2 K4 [{"toolUseId", "text"}]
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K2 ["toolUseId"]
        9 SETTABLEKS                       R0 R2 K3 ["text"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_22:
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
       71 CALL                             R7 2 1
       72 GETTABLEKS                       R8 R7 K22 ["failure"]
       74 JUMPIFEQKNIL                     R8 ; [+4]
       76 GETTABLEKS                       R8 R7 K22 ["failure"]
       78 RETURN                           R8 1
       79 GETTABLEKS                       R8 R7 K23 ["rig"]
       81 GETTABLEKS                       R9 R7 K24 ["shouldInsertDefaultRig"]
       83 GETTABLEKS                       R10 R0 K25 ["commitUpscalePreview"]
       85 JUMPIFNOT                        R10 ; [+19]
       86 GETTABLEKS                       R10 R0 K26 ["generationMode"]
       88 GETUPVAL                         R11 1
       89 GETTABLEKS                       R11 R11 K27 ["GenerationModes"]
       91 GETTABLEKS                       R11 R11 K28 ["Upscale"]
       93 JUMPIFNOTEQ                      R10 R11 ; [+11]
       95 GETUPVAL                         R10 3
       96 MOVE                             R11 R0
       97 MOVE                             R12 R1
       98 MOVE                             R13 R8
       99 MOVE                             R14 R9
      100 CALL                             R10 4 1
      101 DUPTABLE                         R11 K32 [{["rigInserted"], ["usedBackend"] = False}]
      102 SETTABLEKS                       R9 R11 K29 ["rigInserted"]
      104 RETURN                           R10 2
      105 GETTABLEKS                       R10 R0 K2 ["savedKeyframesContentId"]
      107 JUMPIF                           R10 ; [+4]
      108 GETTABLEKS                       R10 R0 K33 ["editSourceToolUseId"]
      110 JUMPIF                           R10 ; [+1]
      111 MOVE                             R10 R3
      112 GETUPVAL                         R12 4
      113 GETTABLE                         R11 R12 R10
      114 JUMPIFEQKNIL                     R11 ; [+7]
      116 GETUPVAL                         R12 5
      117 GETTABLEKS                       R12 R12 K34 ["getContent"]
      119 MOVE                             R13 R11
      120 CALL                             R12 1 1
      121 JUMP                             ; [+1]
      122 LOADNIL                          R12
      123 GETUPVAL                         R13 6
      124 MOVE                             R14 R12
      125 GETTABLEKS                       R15 R0 K35 ["inputAssetId"]
      127 GETTABLEKS                       R16 R0 K36 ["prompt"]
      129 CALL                             R13 3 1
      130 GETUPVAL                         R14 7
      131 MOVE                             R15 R0
      132 MOVE                             R16 R1
      133 MOVE                             R17 R8
      134 MOVE                             R18 R13
      135 JUMPIFEQKNIL                     R12 ; [+4]
      137 GETTABLEKS                       R19 R12 K37 ["keyframeSequence"]
      139 JUMP                             ; [+1]
      140 LOADNIL                          R19
      141 CALL                             R14 5 1
      142 JUMPIFEQKNIL                     R14 ; [+6]
      144 MOVE                             R15 R14
      145 DUPTABLE                         R16 K32 [{["rigInserted"], ["usedBackend"] = False}]
      146 SETTABLEKS                       R9 R16 K29 ["rigInserted"]
      148 RETURN                           R15 2
      149 JUMPIFEQKNIL                     R4 ; [+33]
      151 GETUPVAL                         R15 0
      152 GETTABLEKS                       R15 R15 K3 ["getSession"]
      154 MOVE                             R16 R4
      155 CALL                             R15 1 1
      156 JUMPIFNOTEQ                      R15 R5 ; [+7]
      158 JUMPIFEQKNIL                     R5 ; [+18]
      160 GETTABLEKS                       R15 R5 K4 ["revision"]
      162 JUMPIFEQ                         R15 R6 ; [+14]
      164 GETIMPORT                        R15 K7 [warn]
      166 LOADK                            R16 K38 ["[AnimationGen] Generate discarded an edit that changed while preparing its request"]
      167 CALL                             R15 1 0
      168 GETUPVAL                         R16 1
      169 GETTABLEKS                       R16 R16 K9 ["FailureReasons"]
      171 GETTABLEKS                       R16 R16 K10 ["GenerationFailed"]
      173 DUPTABLE                         R15 K16 [{["duration"] = 0, ["name"] = "", ["failureReason"]}]
      174 SETTABLEKS                       R16 R15 K15 ["failureReason"]
      176 RETURN                           R15 1
      177 GETUPVAL                         R15 0
      178 GETTABLEKS                       R15 R15 K39 ["discardSession"]
      180 MOVE                             R16 R4
      181 LOADK                            R17 K40 ["submitted"]
      182 CALL                             R15 2 0
      183 GETUPVAL                         R15 8
      184 GETTABLEKS                       R15 R15 K41 ["generateAnimationAsync"]
      186 DUPTABLE                         R16 K45 [{"prompt", "generationMode", "duration", "inputAssetId", "outputFileName", "priorJobId", "editSource", "onThoughtReceived"}]
      187 GETTABLEKS                       R17 R0 K36 ["prompt"]
      189 SETTABLEKS                       R17 R16 K36 ["prompt"]
      191 GETTABLEKS                       R17 R0 K26 ["generationMode"]
      193 SETTABLEKS                       R17 R16 K26 ["generationMode"]
      195 GETTABLEKS                       R17 R0 K11 ["duration"]
      197 SETTABLEKS                       R17 R16 K11 ["duration"]
      199 GETTABLEKS                       R17 R0 K35 ["inputAssetId"]
      201 SETTABLEKS                       R17 R16 K35 ["inputAssetId"]
      203 SETTABLEKS                       R13 R16 K42 ["outputFileName"]
      205 GETTABLEKS                       R17 R0 K18 ["priorJobId"]
      207 SETTABLEKS                       R17 R16 K18 ["priorJobId"]
      209 GETTABLEKS                       R17 R0 K43 ["editSource"]
      211 SETTABLEKS                       R17 R16 K43 ["editSource"]
      213 GETUPVAL                         R18 9
      214 GETTABLEKS                       R18 R18 K46 ["FFlagAssistantAnimationGenShowThoughts"]
      216 JUMPIFNOT                        R18 ; [+4]
      217 NEWCLOSURE                       R17 P0
      218 CAPTURE                          VAL R1
      219 CAPTURE                          VAL R3
      220 JUMP                             ; [+1]
      221 LOADNIL                          R17
      222 SETTABLEKS                       R17 R16 K44 ["onThoughtReceived"]
      224 MOVE                             R17 R2
      225 CALL                             R15 2 1
      226 GETUPVAL                         R16 10
      227 CALL                             R16 0 0
      228 GETTABLEKS                       R16 R15 K37 ["keyframeSequence"]
      230 GETTABLEKS                       R17 R15 K47 ["success"]
      232 JUMPIFNOT                        R17 ; [+30]
      233 JUMPIFEQKNIL                     R16 ; [+29]
      235 GETUPVAL                         R17 11
      236 LOADB                            R19 0
      237 NAMECALL                         R17 R17 K48 ["GenerateGUID"]
      239 CALL                             R17 2 1
      240 GETTABLEKS                       R18 R2 K49 ["startRecording"]
      242 MOVE                             R19 R17
      243 LOADK                            R20 K50 ["Insert Generated Animation"]
      244 CALL                             R18 2 0
      245 JUMPIFNOT                        R9 ; [+5]
      246 GETUPVAL                         R18 12
      247 GETIMPORT                        R19 K54 [Enum.HumanoidRigType.R15]
      249 CALL                             R18 1 1
      250 MOVE                             R8 R18
      251 JUMPIFEQKNIL                     R8 ; [+7]
      253 GETUPVAL                         R18 8
      254 GETTABLEKS                       R18 R18 K55 ["saveKeyframeSequence"]
      256 MOVE                             R19 R16
      257 MOVE                             R20 R8
      258 CALL                             R18 2 0
      259 GETTABLEKS                       R18 R2 K56 ["endRecording"]
      261 MOVE                             R19 R17
      262 CALL                             R18 1 0
      263 GETTABLEKS                       R17 R15 K47 ["success"]
      265 JUMPIFNOT                        R17 ; [+2]
      266 JUMPIFNOTEQKNIL                  R16 ; [+26]
      268 GETTABLEKS                       R17 R15 K15 ["failureReason"]
      270 JUMPIF                           R17 ; [+5]
      271 GETUPVAL                         R17 1
      272 GETTABLEKS                       R17 R17 K9 ["FailureReasons"]
      274 GETTABLEKS                       R17 R17 K10 ["GenerationFailed"]
      276 DUPTABLE                         R18 K16 [{["duration"] = 0, ["name"] = "", ["failureReason"]}]
      277 SETTABLEKS                       R17 R18 K15 ["failureReason"]
      279 DUPTABLE                         R19 K58 [{["rigInserted"] = False, ["usedBackend"], ["errorMessage"]}]
      280 GETTABLEKS                       R21 R15 K15 ["failureReason"]
      282 JUMPIFEQKNIL                     R21 ; [+2]
      284 LOADB                            R20 0 +1
      285 LOADB                            R20 1
      286 SETTABLEKS                       R20 R19 K30 ["usedBackend"]
      288 GETTABLEKS                       R20 R15 K57 ["errorMessage"]
      290 SETTABLEKS                       R20 R19 K57 ["errorMessage"]
      292 RETURN                           R18 2
      293 JUMPIFNOTEQKNIL                  R8 ; [+11]
      295 GETUPVAL                         R18 1
      296 GETTABLEKS                       R18 R18 K9 ["FailureReasons"]
      298 GETTABLEKS                       R18 R18 K59 ["RigInsertFailed"]
      300 DUPTABLE                         R17 K16 [{["duration"] = 0, ["name"] = "", ["failureReason"]}]
      301 SETTABLEKS                       R18 R17 K15 ["failureReason"]
      303 DUPTABLE                         R18 K61 [{["rigInserted"] = False, ["usedBackend"] = True}]
      304 RETURN                           R17 2
      305 DUPTABLE                         R17 K63 [{"keyframeSequence", "isUpscale"}]
      306 SETTABLEKS                       R16 R17 K37 ["keyframeSequence"]
      308 GETTABLEKS                       R19 R0 K35 ["inputAssetId"]
      310 JUMPIFEQKNIL                     R19 ; [+6]
      312 LOADB                            R18 1
      313 GETTABLEKS                       R19 R0 K35 ["inputAssetId"]
      315 JUMPIFNOTEQKS                    R19 K14 [""] ; [+12]
      317 GETTABLEKS                       R19 R0 K43 ["editSource"]
      319 GETUPVAL                         R20 1
      320 GETTABLEKS                       R20 R20 K27 ["GenerationModes"]
      322 GETTABLEKS                       R20 R20 K28 ["Upscale"]
      324 JUMPIFEQ                         R19 R20 ; [+2]
      326 LOADB                            R18 0 +1
      327 LOADB                            R18 1
      328 SETTABLEKS                       R18 R17 K62 ["isUpscale"]
      330 GETUPVAL                         R18 13
      331 MOVE                             R19 R3
      332 MOVE                             R20 R1
      333 MOVE                             R21 R17
      334 MOVE                             R22 R8
      335 MOVE                             R23 R9
      336 CALL                             R18 5 0
      337 GETUPVAL                         R18 14
      338 MOVE                             R19 R0
      339 MOVE                             R20 R1
      340 MOVE                             R21 R8
      341 MOVE                             R22 R17
      342 MOVE                             R23 R15
      343 CALL                             R18 5 1
      344 DUPTABLE                         R19 K64 [{["rigInserted"], ["usedBackend"] = True}]
      345 SETTABLEKS                       R9 R19 K29 ["rigInserted"]
      347 RETURN                           R18 2

PROTO_23:
        0 LOADN                            R1 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["getSavedPoseIntervals"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP                         R2
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R7 R7 K1 ["isSavedKeyframeAuthored"]
       10 MOVE                             R8 R0
       11 MOVE                             R9 R5
       12 CALL                             R7 2 1
       13 JUMPIFNOT                        R7 ; [+1]
       14 ADDK                             R1 R1 K2 [1]
       15 FORGLOOP                         R2 1 ; [-9]
       17 RETURN                           R1 1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+26]
        3 GETUPVAL                         R0 1
        4 JUMPIFEQKNIL                     R0 ; [+23]
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K0 ["editSessionId"]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K0 ["editSessionId"]
       12 JUMPIFNOTEQ                      R0 R1 ; [+15]
       14 GETUPVAL                         R0 3
       15 GETTABLEKS                       R0 R0 K1 ["getSession"]
       17 GETUPVAL                         R1 0
       18 CALL                             R0 1 1
       19 GETUPVAL                         R1 1
       20 JUMPIFNOTEQ                      R0 R1 ; [+7]
       22 GETUPVAL                         R0 3
       23 GETTABLEKS                       R0 R0 K2 ["discardSession"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R2 K3 ["submitted"]
       27 CALL                             R0 2 0
       28 RETURN                           R0 0

PROTO_25:
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
       47 JUMPIFNOT                        R2 ; [+38]
       48 JUMPIFEQKNIL                     R8 ; [+5]
       50 GETTABLEKS                       R9 R8 K8 ["editSource"]
       52 JUMPIFEQ                         R9 R6 ; [+33]
       54 JUMPIFEQKNIL                     R3 ; [+22]
       56 JUMPIFEQKNIL                     R4 ; [+20]
       58 GETTABLEKS                       R9 R4 K9 ["editSessionId"]
       60 GETTABLEKS                       R10 R0 K9 ["editSessionId"]
       62 JUMPIFNOTEQ                      R9 R10 ; [+14]
       64 GETUPVAL                         R9 1
       65 GETTABLEKS                       R9 R9 K3 ["getSession"]
       67 MOVE                             R10 R3
       68 CALL                             R9 1 1
       69 JUMPIFNOTEQ                      R9 R4 ; [+7]
       71 GETUPVAL                         R9 1
       72 GETTABLEKS                       R9 R9 K10 ["discardSession"]
       74 MOVE                             R10 R3
       75 LOADK                            R11 K11 ["submitted"]
       76 CALL                             R9 2 0
       77 GETUPVAL                         R10 0
       78 GETTABLEKS                       R10 R10 K12 ["FailureReasons"]
       80 GETTABLEKS                       R10 R10 K13 ["EditSourceNotFound"]
       82 DUPTABLE                         R9 K19 [{["duration"] = 0, ["name"] = "", ["failureReason"]}]
       83 SETTABLEKS                       R10 R9 K18 ["failureReason"]
       85 RETURN                           R9 1
       86 JUMPIFEQKNIL                     R4 ; [+7]
       88 JUMPIFEQKNIL                     R3 ; [+5]
       90 GETUPVAL                         R9 3
       91 MOVE                             R10 R3
       92 CALL                             R9 1 1
       93 JUMP                             ; [+1]
       94 LOADNIL                          R9
       95 GETIMPORT                        R10 K21 [pcall]
       97 GETUPVAL                         R11 4
       98 MOVE                             R12 R0
       99 MOVE                             R13 R1
      100 CALL                             R10 3 3
      101 JUMPIFEQKNIL                     R3 ; [+22]
      103 JUMPIFEQKNIL                     R4 ; [+20]
      105 GETTABLEKS                       R13 R4 K9 ["editSessionId"]
      107 GETTABLEKS                       R14 R0 K9 ["editSessionId"]
      109 JUMPIFNOTEQ                      R13 R14 ; [+14]
      111 GETUPVAL                         R13 1
      112 GETTABLEKS                       R13 R13 K3 ["getSession"]
      114 MOVE                             R14 R3
      115 CALL                             R13 1 1
      116 JUMPIFNOTEQ                      R13 R4 ; [+7]
      118 GETUPVAL                         R13 1
      119 GETTABLEKS                       R13 R13 K10 ["discardSession"]
      121 MOVE                             R14 R3
      122 LOADK                            R15 K11 ["submitted"]
      123 CALL                             R13 2 0
      124 JUMPIF                           R10 ; [+5]
      125 GETIMPORT                        R13 K23 [error]
      127 MOVE                             R14 R11
      128 LOADN                            R15 0
      129 CALL                             R13 2 0
      130 GETUPVAL                         R14 5
      131 GETTABLEKS                       R15 R0 K24 ["toolUseId"]
      133 GETTABLE                         R13 R14 R15
      134 GETUPVAL                         R14 6
      135 GETTABLEKS                       R14 R14 K25 ["getGenerationDetails"]
      137 DUPTABLE                         R15 K32 [{"rig", "rigInserted", "usedBackend", "errorMessage", "editedPoseCount", "parentGenerationId"}]
      138 GETTABLEKS                       R17 R11 K18 ["failureReason"]
      140 JUMPIFNOTEQKNIL                  R17 ; [+6]
      142 JUMPIFEQKNIL                     R13 ; [+4]
      144 GETTABLEKS                       R16 R13 K26 ["rig"]
      146 JUMP                             ; [+1]
      147 LOADNIL                          R16
      148 SETTABLEKS                       R16 R15 K26 ["rig"]
      150 LOADB                            R16 0
      151 GETTABLEKS                       R17 R11 K18 ["failureReason"]
      153 JUMPIFNOTEQKNIL                  R17 ; [+6]
      155 LOADB                            R16 0
      156 JUMPIFEQKNIL                     R12 ; [+3]
      158 GETTABLEKS                       R16 R12 K27 ["rigInserted"]
      160 SETTABLEKS                       R16 R15 K27 ["rigInserted"]
      162 LOADB                            R16 0
      163 JUMPIFEQKNIL                     R12 ; [+3]
      165 GETTABLEKS                       R16 R12 K28 ["usedBackend"]
      167 SETTABLEKS                       R16 R15 K28 ["usedBackend"]
      169 JUMPIFEQKNIL                     R12 ; [+4]
      171 GETTABLEKS                       R16 R12 K29 ["errorMessage"]
      173 JUMP                             ; [+1]
      174 LOADNIL                          R16
      175 SETTABLEKS                       R16 R15 K29 ["errorMessage"]
      177 SETTABLEKS                       R9 R15 K30 ["editedPoseCount"]
      179 JUMPIFEQKNIL                     R8 ; [+4]
      181 GETTABLEKS                       R16 R8 K33 ["generationId"]
      183 JUMP                             ; [+1]
      184 LOADNIL                          R16
      185 SETTABLEKS                       R16 R15 K31 ["parentGenerationId"]
      187 CALL                             R14 1 1
      188 SETTABLEKS                       R14 R11 K34 ["telemetryDetails"]
      190 GETTABLEKS                       R14 R11 K18 ["failureReason"]
      192 JUMPIFEQKNIL                     R14 ; [+2]
      194 RETURN                           R11 1
      195 GETUPVAL                         R14 2
      196 GETTABLEKS                       R14 R14 K35 ["record"]
      198 GETTABLEKS                       R15 R0 K7 ["generationScope"]
      200 DUPTABLE                         R16 K37 [{"toolUseId", "contextId", "generationId", "editSource", "name", "duration"}]
      201 GETTABLEKS                       R17 R0 K24 ["toolUseId"]
      203 SETTABLEKS                       R17 R16 K24 ["toolUseId"]
      205 GETTABLEKS                       R17 R11 K36 ["contextId"]
      207 SETTABLEKS                       R17 R16 K36 ["contextId"]
      209 GETTABLEKS                       R17 R11 K33 ["generationId"]
      211 SETTABLEKS                       R17 R16 K33 ["generationId"]
      213 SETTABLEKS                       R6 R16 K8 ["editSource"]
      215 GETTABLEKS                       R17 R11 K16 ["name"]
      217 SETTABLEKS                       R17 R16 K16 ["name"]
      219 GETTABLEKS                       R17 R11 K14 ["duration"]
      221 SETTABLEKS                       R17 R16 K14 ["duration"]
      223 MOVE                             R17 R8
      224 CALL                             R14 3 1
      225 GETUPVAL                         R15 2
      226 GETTABLEKS                       R15 R15 K38 ["listVersions"]
      228 GETTABLEKS                       R16 R14 K39 ["chainId"]
      230 CALL                             R15 1 3
      231 FORGPREP                         R15
      232 JUMPIFEQ                         R19 R14 ; [+20]
      234 GETUPVAL                         R20 7
      235 GETTABLEKS                       R20 R20 K40 ["getPlaybackState"]
      237 GETTABLEKS                       R21 R19 K24 ["toolUseId"]
      239 CALL                             R20 1 1
      240 GETTABLEKS                       R20 R20 K41 ["isPlaying"]
      242 JUMPIFNOT                        R20 ; [+10]
      243 GETUPVAL                         R20 7
      244 GETTABLEKS                       R20 R20 K42 ["setIsPlaying"]
      246 LOADB                            R21 0
      247 GETUPVAL                         R22 8
      248 GETTABLEKS                       R23 R19 K24 ["toolUseId"]
      250 MOVE                             R24 R1
      251 CALL                             R22 2 1
      252 CALL                             R20 2 0
      253 FORGLOOP                         R15 2 ; [-22]
      255 GETTABLEKS                       R15 R1 K43 ["callbacks"]
      257 GETTABLEKS                       R15 R15 K44 ["animationHistoryChanged"]
      259 DUPTABLE                         R16 K45 [{"chainId"}]
      260 GETTABLEKS                       R17 R14 K39 ["chainId"]
      262 SETTABLEKS                       R17 R16 K39 ["chainId"]
      264 CALL                             R15 1 0
      265 GETTABLEKS                       R15 R1 K46 ["environment"]
      267 GETTABLEKS                       R15 R15 K47 ["tools"]
      269 GETTABLEKS                       R15 R15 K48 ["animationGen"]
      271 GETTABLEKS                       R15 R15 K49 ["publishAnimationHeadlessAsync"]
      273 GETTABLEKS                       R16 R0 K50 ["publishHeadless"]
      275 JUMPIFNOT                        R16 ; [+21]
      276 JUMPIFEQKNIL                     R15 ; [+20]
      278 GETUPVAL                         R18 5
      279 GETTABLEKS                       R19 R0 K24 ["toolUseId"]
      281 GETTABLE                         R17 R18 R19
      282 GETTABLEKS                       R17 R17 K51 ["keyframeSequence"]
      284 FASTCALL1                        ASSERT R17 ; [+2]
      285 GETIMPORT                        R16 K53 [assert]
      287 CALL                             R16 1 1
      288 MOVE                             R17 R15
      289 MOVE                             R18 R16
      290 GETTABLEKS                       R19 R11 K16 ["name"]
      292 CALL                             R17 2 2
      293 SETTABLEKS                       R17 R11 K54 ["publishedAssetId"]
      295 SETTABLEKS                       R18 R11 K55 ["publishError"]
      297 RETURN                           R11 1

PROTO_26:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resolveEditSource"]
        3 GETTABLEKS                       R3 R0 K1 ["scope"]
        5 GETTABLEKS                       R4 R0 K2 ["editSource"]
        7 CALL                             R2 2 1
        8 RETURN                           R2 1

PROTO_27:
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

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getPlaybackState"]
        3 GETTABLEKS                       R3 R0 K1 ["toolUseId"]
        5 CALL                             R2 1 1
        6 RETURN                           R2 1

PROTO_29:
        0 JUMPIF                           R1 ; [+10]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["setIsPlaying"]
        4 LOADB                            R4 0
        5 GETUPVAL                         R5 1
        6 MOVE                             R6 R0
        7 MOVE                             R7 R2
        8 CALL                             R5 2 1
        9 CALL                             R3 2 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R3 2
       12 MOVE                             R4 R0
       13 MOVE                             R5 R2
       14 CALL                             R3 2 0
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K1 ["applyPreviewMode"]
       18 MOVE                             R4 R0
       19 CALL                             R3 1 0
       20 GETUPVAL                         R3 4
       21 GETTABLEKS                       R3 R3 K2 ["getActivePose"]
       23 CALL                             R3 0 1
       24 JUMPIFEQKNIL                     R3 ; [+4]
       26 GETTABLEKS                       R4 R3 K3 ["contentId"]
       28 JUMP                             ; [+5]
       29 GETUPVAL                         R4 3
       30 GETTABLEKS                       R4 R4 K4 ["getEditorContentId"]
       32 MOVE                             R5 R0
       33 CALL                             R4 1 1
       34 GETUPVAL                         R5 4
       35 GETTABLEKS                       R5 R5 K5 ["leave"]
       37 MOVE                             R6 R4
       38 GETUPVAL                         R8 4
       39 GETTABLEKS                       R8 R8 K6 ["getContext"]
       41 MOVE                             R9 R4
       42 CALL                             R8 1 1
       43 OR                               R7 R8 R2
       44 CALL                             R5 2 0
       45 GETUPVAL                         R3 0
       46 GETTABLEKS                       R3 R3 K0 ["setIsPlaying"]
       48 LOADB                            R4 1
       49 GETUPVAL                         R5 1
       50 MOVE                             R6 R0
       51 MOVE                             R7 R2
       52 CALL                             R5 2 1
       53 CALL                             R3 2 0
       54 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R2
        3 CALL                             R3 2 0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["applyPreviewMode"]
        7 MOVE                             R4 R0
        8 CALL                             R3 1 0
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K1 ["getActivePose"]
       12 CALL                             R3 0 1
       13 JUMPIFEQKNIL                     R3 ; [+4]
       15 GETTABLEKS                       R4 R3 K2 ["contentId"]
       17 JUMP                             ; [+5]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K3 ["getEditorContentId"]
       21 MOVE                             R5 R0
       22 CALL                             R4 1 1
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R5 R5 K4 ["leave"]
       26 MOVE                             R6 R4
       27 GETUPVAL                         R8 2
       28 GETTABLEKS                       R8 R8 K5 ["getContext"]
       30 MOVE                             R9 R4
       31 CALL                             R8 1 1
       32 OR                               R7 R8 R2
       33 CALL                             R5 2 0
       34 GETUPVAL                         R3 3
       35 GETTABLEKS                       R3 R3 K6 ["setCurrentTime"]
       37 MOVE                             R4 R1
       38 GETUPVAL                         R5 4
       39 MOVE                             R6 R0
       40 MOVE                             R7 R2
       41 CALL                             R5 2 1
       42 CALL                             R3 2 0
       43 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantAnimationGenDisablePreviewSelectionFollowing"]
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["CLIP_TO_UPSCALE_PREVIEW_CONTENT_ID"]
        7 JUMPIFEQ                         R0 R2 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["CLIP_TO_UPSCALE_PREVIEW_CONTENT_ID"]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R2 R3 R1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R2 R0 K1 ["currentTime"]
       10 JUMPIFEQKNIL                     R2 ; [+47]
       12 GETTABLEKS                       R2 R0 K1 ["currentTime"]
       14 GETUPVAL                         R3 2
       15 GETUPVAL                         R4 3
       16 MOVE                             R5 R1
       17 MOVE                             R6 R3
       18 CALL                             R4 2 0
       19 GETUPVAL                         R4 4
       20 GETTABLEKS                       R4 R4 K2 ["applyPreviewMode"]
       22 MOVE                             R5 R1
       23 CALL                             R4 1 0
       24 GETUPVAL                         R4 5
       25 GETTABLEKS                       R4 R4 K3 ["getActivePose"]
       27 CALL                             R4 0 1
       28 JUMPIFEQKNIL                     R4 ; [+4]
       30 GETTABLEKS                       R5 R4 K4 ["contentId"]
       32 JUMP                             ; [+5]
       33 GETUPVAL                         R5 4
       34 GETTABLEKS                       R5 R5 K5 ["getEditorContentId"]
       36 MOVE                             R6 R1
       37 CALL                             R5 1 1
       38 GETUPVAL                         R6 5
       39 GETTABLEKS                       R6 R6 K6 ["leave"]
       41 MOVE                             R7 R5
       42 GETUPVAL                         R9 5
       43 GETTABLEKS                       R9 R9 K7 ["getContext"]
       45 MOVE                             R10 R5
       46 CALL                             R9 1 1
       47 OR                               R8 R9 R3
       48 CALL                             R6 2 0
       49 GETUPVAL                         R4 6
       50 GETTABLEKS                       R4 R4 K8 ["setCurrentTime"]
       52 MOVE                             R5 R2
       53 GETUPVAL                         R6 7
       54 MOVE                             R7 R1
       55 MOVE                             R8 R3
       56 CALL                             R6 2 1
       57 CALL                             R4 2 0
       58 GETTABLEKS                       R2 R0 K9 ["isPlaying"]
       60 JUMPIFEQKNIL                     R2 ; [+7]
       62 GETUPVAL                         R2 8
       63 MOVE                             R3 R1
       64 GETTABLEKS                       R4 R0 K9 ["isPlaying"]
       66 GETUPVAL                         R5 2
       67 CALL                             R2 3 0
       68 RETURN                           R0 0

PROTO_33:
        0 GETIMPORT                        R2 K2 [task.spawn]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K3 ["requestPlaybackAsync"]
        5 MOVE                             R4 R0
        6 MOVE                             R5 R1
        7 NEWCLOSURE                       R6 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          UPVAL U6
       15 CAPTURE                          UPVAL U7
       16 CAPTURE                          UPVAL U8
       17 CALL                             R2 4 0
       18 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["toolUseId"]
        3 GETTABLE                         R2 R3 R4
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R3 R0 K0 ["toolUseId"]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K1 ["FFlagAssistantAnimationGenDisablePreviewSelectionFollowing"]
       12 JUMPIFNOT                        R2 ; [+7]
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K2 ["CLIP_TO_UPSCALE_PREVIEW_CONTENT_ID"]
       16 JUMPIFEQ                         R3 R4 ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 JUMPIFNOT                        R2 ; [+24]
       21 DUPTABLE                         R2 K4 [{"isPlaying"}]
       22 GETTABLEKS                       R3 R0 K3 ["isPlaying"]
       24 SETTABLEKS                       R3 R2 K3 ["isPlaying"]
       26 GETIMPORT                        R3 K7 [task.spawn]
       28 GETUPVAL                         R4 3
       29 GETTABLEKS                       R4 R4 K8 ["requestPlaybackAsync"]
       31 MOVE                             R5 R2
       32 MOVE                             R6 R1
       33 NEWCLOSURE                       R7 P0
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          UPVAL U0
       36 CAPTURE                          VAL R1
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          UPVAL U5
       39 CAPTURE                          UPVAL U6
       40 CAPTURE                          UPVAL U7
       41 CAPTURE                          UPVAL U8
       42 CAPTURE                          UPVAL U9
       43 CALL                             R3 4 0
       44 RETURN                           R0 0
       45 GETUPVAL                         R2 9
       46 GETTABLEKS                       R3 R0 K0 ["toolUseId"]
       48 GETTABLEKS                       R4 R0 K3 ["isPlaying"]
       50 MOVE                             R5 R1
       51 CALL                             R2 3 0
       52 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["toolUseId"]
        3 GETTABLE                         R2 R3 R4
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R3 R0 K0 ["toolUseId"]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K1 ["FFlagAssistantAnimationGenDisablePreviewSelectionFollowing"]
       12 JUMPIFNOT                        R2 ; [+7]
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K2 ["CLIP_TO_UPSCALE_PREVIEW_CONTENT_ID"]
       16 JUMPIFEQ                         R3 R4 ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 JUMPIFNOT                        R2 ; [+24]
       21 DUPTABLE                         R2 K4 [{"currentTime"}]
       22 GETTABLEKS                       R3 R0 K3 ["currentTime"]
       24 SETTABLEKS                       R3 R2 K3 ["currentTime"]
       26 GETIMPORT                        R3 K7 [task.spawn]
       28 GETUPVAL                         R4 3
       29 GETTABLEKS                       R4 R4 K8 ["requestPlaybackAsync"]
       31 MOVE                             R5 R2
       32 MOVE                             R6 R1
       33 NEWCLOSURE                       R7 P0
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          UPVAL U0
       36 CAPTURE                          VAL R1
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          UPVAL U5
       39 CAPTURE                          UPVAL U6
       40 CAPTURE                          UPVAL U7
       41 CAPTURE                          UPVAL U8
       42 CAPTURE                          UPVAL U9
       43 CALL                             R3 4 0
       44 RETURN                           R0 0
       45 GETTABLEKS                       R2 R0 K0 ["toolUseId"]
       47 GETTABLEKS                       R3 R0 K3 ["currentTime"]
       49 GETUPVAL                         R4 4
       50 MOVE                             R5 R2
       51 MOVE                             R6 R1
       52 CALL                             R4 2 0
       53 GETUPVAL                         R4 5
       54 GETTABLEKS                       R4 R4 K9 ["applyPreviewMode"]
       56 MOVE                             R5 R2
       57 CALL                             R4 1 0
       58 GETUPVAL                         R4 6
       59 GETTABLEKS                       R4 R4 K10 ["getActivePose"]
       61 CALL                             R4 0 1
       62 JUMPIFEQKNIL                     R4 ; [+4]
       64 GETTABLEKS                       R5 R4 K11 ["contentId"]
       66 JUMP                             ; [+5]
       67 GETUPVAL                         R5 5
       68 GETTABLEKS                       R5 R5 K12 ["getEditorContentId"]
       70 MOVE                             R6 R2
       71 CALL                             R5 1 1
       72 GETUPVAL                         R6 6
       73 GETTABLEKS                       R6 R6 K13 ["leave"]
       75 MOVE                             R7 R5
       76 GETUPVAL                         R9 6
       77 GETTABLEKS                       R9 R9 K14 ["getContext"]
       79 MOVE                             R10 R5
       80 CALL                             R9 1 1
       81 OR                               R8 R9 R1
       82 CALL                             R6 2 0
       83 GETUPVAL                         R4 7
       84 GETTABLEKS                       R4 R4 K15 ["setCurrentTime"]
       86 MOVE                             R5 R3
       87 GETUPVAL                         R6 8
       88 MOVE                             R7 R2
       89 MOVE                             R8 R1
       90 CALL                             R6 2 1
       91 CALL                             R4 2 0
       92 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getCardSnapshot"]
        3 GETTABLEKS                       R3 R0 K1 ["toolUseId"]
        5 CALL                             R2 1 1
        6 RETURN                           R2 1

PROTO_37:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 JUMPIFEQKNIL                     R3 ; [+13]
        4 JUMPIFEQKNIL                     R1 ; [+11]
        6 GETTABLEKS                       R4 R3 K0 ["rig"]
        8 JUMPIFEQ                         R4 R1 ; [+7]
       10 GETIMPORT                        R6 K2 [game]
       12 NAMECALL                         R4 R1 K3 ["IsDescendantOf"]
       14 CALL                             R4 2 1
       15 JUMPIF                           R4 ; [+1]
       16 RETURN                           R0 0
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K4 ["removeAnimation"]
       20 MOVE                             R5 R0
       21 CALL                             R4 1 0
       22 SETTABLEKS                       R1 R3 K0 ["rig"]
       24 LOADB                            R4 1
       25 SETTABLEKS                       R4 R3 K5 ["needsReload"]
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R4 R4 K6 ["setAnimation"]
       30 GETUPVAL                         R5 2
       31 MOVE                             R6 R0
       32 MOVE                             R7 R2
       33 CALL                             R5 2 1
       34 CALL                             R4 1 0
       35 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K3 [{[1], ["currentTime"] = 0}]
        2 GETUPVAL                         R2 1
        3 SETTABLEKS                       R2 R1 K0 ["toolUseId"]
        5 GETUPVAL                         R2 2
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 3
        8 JUMPIFNOT                        R0 ; [+7]
        9 GETUPVAL                         R0 4
       10 DUPTABLE                         R1 K6 [{[1], ["isPlaying"] = True}]
       11 GETUPVAL                         R2 1
       12 SETTABLEKS                       R2 R1 K0 ["toolUseId"]
       14 GETUPVAL                         R2 2
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getSelectedVersion"]
        3 GETTABLEKS                       R3 R0 K1 ["toolUseId"]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["selectCardVersion"]
        9 GETTABLEKS                       R4 R0 K1 ["toolUseId"]
       11 GETTABLEKS                       R5 R0 K3 ["versionId"]
       13 CALL                             R3 2 1
       14 JUMPIFEQKNIL                     R2 ; [+3]
       16 JUMPIFNOTEQKNIL                  R3 ; [+3]
       18 LOADNIL                          R4
       19 RETURN                           R4 1
       20 GETTABLEKS                       R4 R1 K4 ["callbacks"]
       22 GETTABLEKS                       R4 R4 K5 ["animationHistoryChanged"]
       24 DUPTABLE                         R5 K7 [{"chainId"}]
       25 GETTABLEKS                       R6 R3 K6 ["chainId"]
       27 SETTABLEKS                       R6 R5 K6 ["chainId"]
       29 CALL                             R4 1 0
       30 GETTABLEKS                       R4 R2 K1 ["toolUseId"]
       32 GETTABLEKS                       R5 R3 K1 ["toolUseId"]
       34 JUMPIFEQ                         R5 R4 ; [+33]
       36 GETUPVAL                         R7 1
       37 GETTABLE                         R6 R7 R4
       38 GETUPVAL                         R7 2
       39 GETTABLEKS                       R7 R7 K8 ["getPlaybackState"]
       41 MOVE                             R8 R4
       42 CALL                             R7 1 1
       43 GETTABLEKS                       R7 R7 K9 ["isPlaying"]
       45 GETUPVAL                         R8 3
       46 MOVE                             R9 R5
       47 MOVE                             R10 R6
       48 JUMPIFNOT                        R10 ; [+2]
       49 GETTABLEKS                       R10 R6 K10 ["rig"]
       51 MOVE                             R11 R1
       52 CALL                             R8 3 0
       53 GETIMPORT                        R8 K12 [pcall]
       55 NEWCLOSURE                       R9 P0
       56 CAPTURE                          UPVAL U4
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R7
       60 CAPTURE                          UPVAL U5
       61 CALL                             R8 1 2
       62 JUMPIF                           R8 ; [+5]
       63 GETIMPORT                        R10 K14 [warn]
       65 LOADK                            R11 K15 ["[AnimationGen] Could not play the selected version:"]
       66 MOVE                             R12 R9
       67 CALL                             R10 2 0
       68 GETUPVAL                         R6 0
       69 GETTABLEKS                       R6 R6 K16 ["getCardSnapshot"]
       71 GETTABLEKS                       R7 R0 K1 ["toolUseId"]
       73 CALL                             R6 1 1
       74 RETURN                           R6 1

PROTO_40:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["insertPose"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_41:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["deletePose"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_42:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["movePose"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_43:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resizePose"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_44:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getEditScrubbarState"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_45:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resetPose"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getSelectedVersion"]
        3 GETTABLEKS                       R3 R0 K1 ["toolUseId"]
        5 CALL                             R2 1 1
        6 JUMPIFEQKNIL                     R2 ; [+7]
        8 GETTABLEKS                       R3 R2 K2 ["versionId"]
       10 GETTABLEKS                       R4 R0 K2 ["versionId"]
       12 JUMPIFEQ                         R3 R4 ; [+3]
       14 LOADNIL                          R3
       15 RETURN                           R3 1
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R5 R2 K1 ["toolUseId"]
       19 GETTABLE                         R3 R4 R5
       20 JUMPIFEQKNIL                     R3 ; [+9]
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R4 R4 K3 ["getSession"]
       25 GETTABLEKS                       R5 R2 K1 ["toolUseId"]
       27 CALL                             R4 1 1
       28 JUMPIFEQKNIL                     R4 ; [+3]
       30 LOADNIL                          R4
       31 RETURN                           R4 1
       32 GETUPVAL                         R4 3
       33 GETTABLEKS                       R5 R2 K1 ["toolUseId"]
       35 MOVE                             R6 R1
       36 CALL                             R4 2 0
       37 RETURN                           R2 1

PROTO_47:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isOwnedBy"]
        3 GETTABLEKS                       R3 R0 K1 ["sourceToolUseId"]
        5 GETTABLEKS                       R4 R0 K2 ["editSessionId"]
        7 CALL                             R2 2 1
        8 JUMPIFNOT                        R2 ; [+7]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["discardSession"]
       12 GETTABLEKS                       R3 R0 K1 ["sourceToolUseId"]
       14 LOADK                            R4 K4 ["discarded"]
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_48:
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

PROTO_49:
        0 GETTABLEKS                       R2 R0 K0 ["sourceToolUseId"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["rememberContext"]
        5 MOVE                             R4 R2
        6 MOVE                             R5 R1
        7 CALL                             R3 2 0
        8 GETUPVAL                         R4 1
        9 GETTABLE                         R3 R4 R2
       10 JUMPIFNOTEQKNIL                  R3 ; [+16]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K2 ["isOwnedBy"]
       15 MOVE                             R4 R2
       16 GETTABLEKS                       R5 R0 K3 ["editSessionId"]
       18 CALL                             R3 2 1
       19 JUMPIFNOT                        R3 ; [+6]
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R3 R3 K4 ["discardSession"]
       23 MOVE                             R4 R2
       24 LOADK                            R5 K5 ["discarded"]
       25 CALL                             R3 2 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R3 R3 K2 ["isOwnedBy"]
       30 MOVE                             R4 R2
       31 GETTABLEKS                       R5 R0 K3 ["editSessionId"]
       33 CALL                             R3 2 1
       34 JUMPIFNOT                        R3 ; [+9]
       35 GETUPVAL                         R3 3
       36 GETTABLEKS                       R3 R3 K6 ["hasPlayer"]
       38 MOVE                             R4 R2
       39 GETTABLEKS                       R5 R0 K7 ["editToolUseId"]
       41 CALL                             R3 2 1
       42 JUMPIFNOT                        R3 ; [+1]
       43 RETURN                           R0 0
       44 GETUPVAL                         R3 2
       45 GETTABLEKS                       R3 R3 K8 ["beginSession"]
       47 MOVE                             R4 R2
       48 GETTABLEKS                       R5 R0 K3 ["editSessionId"]
       50 GETTABLEKS                       R6 R0 K9 ["priorJobId"]
       52 MOVE                             R7 R1
       53 CALL                             R3 4 0
       54 GETUPVAL                         R3 3
       55 GETTABLEKS                       R3 R3 K10 ["beginPlayer"]
       57 MOVE                             R4 R2
       58 GETTABLEKS                       R5 R0 K7 ["editToolUseId"]
       60 MOVE                             R6 R1
       61 CALL                             R3 3 0
       62 GETUPVAL                         R3 4
       63 MOVE                             R4 R2
       64 MOVE                             R5 R1
       65 CALL                             R3 2 0
       66 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["toolUseId"]
        3 MOVE                             R4 R1
        4 CALL                             R2 2 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["openInAnimationClipEditor"]
        8 MOVE                             R3 R0
        9 GETTABLEKS                       R4 R1 K2 ["environment"]
       11 CALL                             R2 2 1
       12 JUMPIF                           R2 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K3 ["getByToolUseId"]
       17 GETTABLEKS                       R3 R0 K0 ["toolUseId"]
       19 CALL                             R2 1 1
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K4 ["logClipAction"]
       23 GETTABLEKS                       R4 R1 K2 ["environment"]
       25 GETTABLEKS                       R4 R4 K5 ["EventLogger"]
       27 DUPTABLE                         R5 K11 [{["requestId"], ["action"] = "openedInClipEditor", ["generationId"], ["jobId"]}]
       28 GETTABLEKS                       R6 R0 K0 ["toolUseId"]
       30 SETTABLEKS                       R6 R5 K6 ["requestId"]
       32 JUMPIFEQKNIL                     R2 ; [+4]
       34 GETTABLEKS                       R6 R2 K9 ["generationId"]
       36 JUMP                             ; [+1]
       37 LOADNIL                          R6
       38 SETTABLEKS                       R6 R5 K9 ["generationId"]
       40 JUMPIFEQKNIL                     R2 ; [+4]
       42 GETTABLEKS                       R6 R2 K12 ["contextId"]
       44 JUMP                             ; [+1]
       45 LOADNIL                          R6
       46 SETTABLEKS                       R6 R5 K10 ["jobId"]
       48 CALL                             R3 2 0
       49 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantAnimationGenShowPublishButton"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R3 R0 K1 ["toolUseId"]
        8 MOVE                             R4 R1
        9 CALL                             R2 2 0
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R4 R0 K1 ["toolUseId"]
       13 GETTABLE                         R2 R3 R4
       14 JUMPIFEQKNIL                     R2 ; [+5]
       16 GETTABLEKS                       R3 R2 K2 ["keyframeSequence"]
       18 JUMPIFNOTEQKNIL                  R3 ; [+6]
       20 GETIMPORT                        R3 K4 [warn]
       22 LOADK                            R4 K5 ["[AnimationGen] Save to Roblox: no generated animation for this content."]
       23 CALL                             R3 1 0
       24 RETURN                           R0 0
       25 GETTABLEKS                       R3 R1 K6 ["environment"]
       27 GETTABLEKS                       R3 R3 K7 ["tools"]
       29 GETTABLEKS                       R3 R3 K8 ["animationGen"]
       31 GETTABLEKS                       R3 R3 K9 ["publishAnimationAsync"]
       33 JUMPIFNOTEQKNIL                  R3 ; [+2]
       35 RETURN                           R0 0
       36 GETUPVAL                         R4 3
       37 GETTABLEKS                       R4 R4 K10 ["getByToolUseId"]
       39 GETTABLEKS                       R5 R0 K1 ["toolUseId"]
       41 CALL                             R4 1 1
       42 MOVE                             R5 R3
       43 GETTABLEKS                       R6 R2 K2 ["keyframeSequence"]
       45 CALL                             R5 1 1
       46 JUMPIFEQKNIL                     R5 ; [+37]
       48 GETUPVAL                         R6 4
       49 GETTABLEKS                       R6 R6 K11 ["logClipAction"]
       51 GETTABLEKS                       R7 R1 K6 ["environment"]
       53 GETTABLEKS                       R7 R7 K12 ["EventLogger"]
       55 DUPTABLE                         R8 K19 [{["requestId"], ["action"] = "published", ["assetId"], ["generationId"], ["jobId"]}]
       56 GETTABLEKS                       R9 R0 K1 ["toolUseId"]
       58 SETTABLEKS                       R9 R8 K13 ["requestId"]
       60 FASTCALL1                        TOSTRING R5 ; [+3]
       61 MOVE                             R10 R5
       62 GETIMPORT                        R9 K21 [tostring]
       64 CALL                             R9 1 1
       65 SETTABLEKS                       R9 R8 K16 ["assetId"]
       67 JUMPIFEQKNIL                     R4 ; [+4]
       69 GETTABLEKS                       R9 R4 K17 ["generationId"]
       71 JUMP                             ; [+1]
       72 LOADNIL                          R9
       73 SETTABLEKS                       R9 R8 K17 ["generationId"]
       75 JUMPIFEQKNIL                     R4 ; [+4]
       77 GETTABLEKS                       R9 R4 K22 ["contextId"]
       79 JUMP                             ; [+1]
       80 LOADNIL                          R9
       81 SETTABLEKS                       R9 R8 K18 ["jobId"]
       83 CALL                             R6 2 0
       84 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["runUndoableEdit"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_53:
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

PROTO_54:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["renderPreviewPose"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_55:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isRetargetingEnabled"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["getPlaybackContentId"]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

PROTO_56:
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
       15 DUPTABLE                         R2 K5 [{"runUndoableEdit", "markRigReload", "renderPreviewPose", "isRetargetingEnabled"}]
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          UPVAL U9
       18 SETTABLEKS                       R3 R2 K1 ["runUndoableEdit"]
       20 NEWCLOSURE                       R3 P1
       21 CAPTURE                          UPVAL U10
       22 CAPTURE                          UPVAL U6
       23 SETTABLEKS                       R3 R2 K2 ["markRigReload"]
       25 NEWCLOSURE                       R3 P2
       26 CAPTURE                          UPVAL U10
       27 SETTABLEKS                       R3 R2 K3 ["renderPreviewPose"]
       29 NEWCLOSURE                       R3 P3
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          UPVAL U10
       32 SETTABLEKS                       R3 R2 K4 ["isRetargetingEnabled"]
       34 CALL                             R0 2 1
       35 SETUPVAL                         R0 7
       36 GETUPVAL                         R0 12
       37 GETUPVAL                         R1 6
       38 CALL                             R0 1 1
       39 SETUPVAL                         R0 11
       40 GETUPVAL                         R0 14
       41 GETUPVAL                         R1 7
       42 CALL                             R0 1 1
       43 SETUPVAL                         R0 13
       44 GETUPVAL                         R0 15
       45 DUPTABLE                         R1 K11 [{"sharedStates", "editor", "animator", "poseSelection", "toAnimatorContext"}]
       46 GETUPVAL                         R2 6
       47 SETTABLEKS                       R2 R1 K6 ["sharedStates"]
       49 GETUPVAL                         R2 7
       50 SETTABLEKS                       R2 R1 K7 ["editor"]
       52 GETUPVAL                         R2 4
       53 SETTABLEKS                       R2 R1 K8 ["animator"]
       55 GETUPVAL                         R2 13
       56 SETTABLEKS                       R2 R1 K9 ["poseSelection"]
       58 GETUPVAL                         R2 16
       59 SETTABLEKS                       R2 R1 K10 ["toAnimatorContext"]
       61 CALL                             R0 1 1
       62 SETUPVAL                         R0 10
       63 GETUPVAL                         R0 17
       64 DUPTABLE                         R1 K13 [{"sharedStates", "editor", "animator", "editPreviewPlayer", "poseSelection"}]
       65 GETUPVAL                         R2 6
       66 SETTABLEKS                       R2 R1 K6 ["sharedStates"]
       68 GETUPVAL                         R2 7
       69 SETTABLEKS                       R2 R1 K7 ["editor"]
       71 GETUPVAL                         R2 4
       72 SETTABLEKS                       R2 R1 K8 ["animator"]
       74 GETUPVAL                         R2 10
       75 SETTABLEKS                       R2 R1 K12 ["editPreviewPlayer"]
       77 GETUPVAL                         R2 13
       78 SETTABLEKS                       R2 R1 K9 ["poseSelection"]
       80 CALL                             R0 1 1
       81 SETUPVAL                         R0 9
       82 GETUPVAL                         R0 19
       83 DUPTABLE                         R1 K16 [{"sharedStates", "editor", "animator", "poseSelection", "editPreviewPlayer", "editSessionManager", "toAnimatorContext", "resetRigPose"}]
       84 GETUPVAL                         R2 6
       85 SETTABLEKS                       R2 R1 K6 ["sharedStates"]
       87 GETUPVAL                         R2 7
       88 SETTABLEKS                       R2 R1 K7 ["editor"]
       90 GETUPVAL                         R2 4
       91 SETTABLEKS                       R2 R1 K8 ["animator"]
       93 GETUPVAL                         R2 13
       94 SETTABLEKS                       R2 R1 K9 ["poseSelection"]
       96 GETUPVAL                         R2 10
       97 SETTABLEKS                       R2 R1 K12 ["editPreviewPlayer"]
       99 GETUPVAL                         R2 9
      100 SETTABLEKS                       R2 R1 K14 ["editSessionManager"]
      102 GETUPVAL                         R2 16
      103 SETTABLEKS                       R2 R1 K10 ["toAnimatorContext"]
      105 GETUPVAL                         R2 20
      106 SETTABLEKS                       R2 R1 K15 ["resetRigPose"]
      108 CALL                             R0 1 1
      109 SETUPVAL                         R0 18
      110 GETUPVAL                         R0 22
      111 CALL                             R0 0 1
      112 SETUPVAL                         R0 21
      113 GETUPVAL                         R0 24
      114 DUPTABLE                         R1 K18 [{"sharedStates", "animator", "toAnimatorContext", "resetRigPose", "generateUpscale"}]
      115 GETUPVAL                         R2 6
      116 SETTABLEKS                       R2 R1 K6 ["sharedStates"]
      118 GETUPVAL                         R2 4
      119 SETTABLEKS                       R2 R1 K8 ["animator"]
      121 GETUPVAL                         R2 16
      122 SETTABLEKS                       R2 R1 K10 ["toAnimatorContext"]
      124 GETUPVAL                         R2 20
      125 SETTABLEKS                       R2 R1 K15 ["resetRigPose"]
      127 GETUPVAL                         R2 25
      128 SETTABLEKS                       R2 R1 K17 ["generateUpscale"]
      130 CALL                             R0 1 1
      131 SETUPVAL                         R0 23
      132 GETUPVAL                         R0 26
      133 GETTABLEKS                       R0 R0 K19 ["new"]
      135 CALL                             R0 0 1
      136 GETUPVAL                         R3 4
      137 GETTABLEKS                       R3 R3 K20 ["rigChangedSignal"]
      139 GETUPVAL                         R5 18
      140 GETTABLEKS                       R5 R5 K21 ["onRigChanged"]
      142 NAMECALL                         R3 R3 K22 ["Connect"]
      144 CALL                             R3 2 -1
      145 NAMECALL                         R1 R0 K23 ["Add"]
      147 CALL                             R1 -1 0
      148 GETUPVAL                         R3 7
      149 GETTABLEKS                       R3 R3 K24 ["poseEditedSignal"]
      151 GETUPVAL                         R5 18
      152 GETTABLEKS                       R5 R5 K25 ["onPoseEdited"]
      154 NAMECALL                         R3 R3 K22 ["Connect"]
      156 CALL                             R3 2 -1
      157 NAMECALL                         R1 R0 K23 ["Add"]
      159 CALL                             R1 -1 0
      160 GETUPVAL                         R3 7
      161 GETTABLEKS                       R3 R3 K26 ["poseDeselectedSignal"]
      163 GETUPVAL                         R5 13
      164 GETTABLEKS                       R5 R5 K27 ["onDeselected"]
      166 NAMECALL                         R3 R3 K22 ["Connect"]
      168 CALL                             R3 2 -1
      169 NAMECALL                         R1 R0 K23 ["Add"]
      171 CALL                             R1 -1 0
      172 SETUPVAL                         R0 27
      173 LOADB                            R1 1
      174 SETUPVAL                         R1 28
      175 RETURN                           R0 0

PROTO_57:
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

PROTO_58:
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

PROTO_59:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 DUPTABLE                         R1 K2 [{"environment", "callbacks"}]
        3 GETTABLEKS                       R2 R0 K3 ["initArgs"]
        5 GETTABLEKS                       R2 R2 K0 ["environment"]
        7 SETTABLEKS                       R2 R1 K0 ["environment"]
        9 GETTABLEKS                       R2 R0 K4 ["bridge"]
       11 SETTABLEKS                       R2 R1 K1 ["callbacks"]
       13 RETURN                           R1 1

PROTO_60:
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

PROTO_61:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 RETURN                           R1 1

PROTO_62:
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

PROTO_63:
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

PROTO_64:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["clearClipToUpscalePreview"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_65:
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

PROTO_66:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantAnimationGenDisablePreviewSelectionFollowing"]
        3 JUMPIFNOT                        R2 ; [+18]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["setClipToUpscalePreviewRig"]
        7 MOVE                             R3 R0
        8 GETUPVAL                         R5 2
        9 CALL                             R5 0 0
       10 DUPTABLE                         R4 K4 [{"environment", "callbacks"}]
       11 GETTABLEKS                       R5 R1 K5 ["initArgs"]
       13 GETTABLEKS                       R5 R5 K2 ["environment"]
       15 SETTABLEKS                       R5 R4 K2 ["environment"]
       17 GETTABLEKS                       R5 R1 K6 ["bridge"]
       19 SETTABLEKS                       R5 R4 K3 ["callbacks"]
       21 CALL                             R2 2 0
       22 RETURN                           R0 0

PROTO_67:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantAnimationGenDisablePreviewSelectionFollowing"]
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETUPVAL                         R1 1
        5 JUMPIFNOT                        R1 ; [+5]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["endClipToUpscalePreviewSession"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_68:
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

PROTO_69:
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

PROTO_70:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["animationHistoryChanged"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["Fire"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_71:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["playbackStateChanged"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["Fire"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_72:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["thoughtReceived"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["Fire"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_73:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["poseDeselected"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["Fire"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_74:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["poseEdited"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["Fire"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_75:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["clipToUpscalePreviewRigChanged"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["Fire"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_76:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 DUPTABLE                         R1 K2 [{"environment", "callbacks"}]
        3 GETUPVAL                         R2 1
        4 SETTABLEKS                       R2 R1 K0 ["environment"]
        6 DUPTABLE                         R2 K9 [{"animationHistoryChanged", "playbackStateChanged", "thoughtReceived", "poseDeselected", "poseEdited", "clipToUpscalePreviewRigChanged"}]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R3 R2 K3 ["animationHistoryChanged"]
       12 NEWCLOSURE                       R3 P1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R3 R2 K4 ["playbackStateChanged"]
       17 NEWCLOSURE                       R3 P2
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R3 R2 K5 ["thoughtReceived"]
       22 NEWCLOSURE                       R3 P3
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R3 R2 K6 ["poseDeselected"]
       27 NEWCLOSURE                       R3 P4
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R3 R2 K7 ["poseEdited"]
       32 NEWCLOSURE                       R3 P5
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R3 R2 K8 ["clipToUpscalePreviewRigChanged"]
       37 SETTABLEKS                       R2 R1 K1 ["callbacks"]
       39 RETURN                           R1 1

PROTO_77:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["getCardSnapshot"]
        6 GETTABLEKS                       R5 R1 K1 ["toolUseId"]
        8 CALL                             R4 1 1
        9 MOVE                             R2 R4
       10 RETURN                           R2 1

PROTO_78:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 CALL                             R2 2 1
        6 RETURN                           R2 1

PROTO_79:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["getSelectedVersion"]
        6 GETTABLEKS                       R5 R1 K1 ["toolUseId"]
        8 CALL                             R4 1 1
        9 JUMPIFEQKNIL                     R4 ; [+7]
       11 GETTABLEKS                       R5 R4 K2 ["versionId"]
       13 GETTABLEKS                       R6 R1 K2 ["versionId"]
       15 JUMPIFEQ                         R5 R6 ; [+3]
       17 LOADNIL                          R2
       18 RETURN                           R2 1
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R7 R4 K1 ["toolUseId"]
       22 GETTABLE                         R5 R6 R7
       23 JUMPIFEQKNIL                     R5 ; [+9]
       25 GETUPVAL                         R6 3
       26 GETTABLEKS                       R6 R6 K3 ["getSession"]
       28 GETTABLEKS                       R7 R4 K1 ["toolUseId"]
       30 CALL                             R6 1 1
       31 JUMPIFEQKNIL                     R6 ; [+3]
       33 LOADNIL                          R2
       34 RETURN                           R2 1
       35 GETUPVAL                         R6 4
       36 GETTABLEKS                       R7 R4 K1 ["toolUseId"]
       38 MOVE                             R8 R3
       39 CALL                             R6 2 0
       40 MOVE                             R2 R4
       41 RETURN                           R2 1

PROTO_80:
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

PROTO_81:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["getPlaybackState"]
        6 GETTABLEKS                       R5 R1 K1 ["toolUseId"]
        8 CALL                             R4 1 1
        9 MOVE                             R2 R4
       10 RETURN                           R2 1

PROTO_82:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 CALL                             R2 2 1
        6 RETURN                           R2 1

PROTO_83:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["isOwnedBy"]
        6 GETTABLEKS                       R4 R1 K1 ["sourceToolUseId"]
        8 GETTABLEKS                       R5 R1 K2 ["editSessionId"]
       10 CALL                             R3 2 1
       11 JUMPIFNOT                        R3 ; [+7]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["discardSession"]
       15 GETTABLEKS                       R4 R1 K1 ["sourceToolUseId"]
       17 LOADK                            R5 K4 ["discarded"]
       18 CALL                             R3 2 0
       19 RETURN                           R0 0

PROTO_84:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 CALL                             R1 1 1
        5 RETURN                           R1 1

PROTO_85:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_86:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_87:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["previewClipToUpscaleAsync"]
        3 MOVE                             R3 R1
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R0
        6 CALL                             R4 1 1
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_88:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+5]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["clearClipToUpscalePreview"]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_89:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["insertClipToUpscalePreviewRigAsync"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

PROTO_90:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantAnimationGenDisablePreviewSelectionFollowing"]
        3 JUMPIFNOT                        R2 ; [+8]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["setClipToUpscalePreviewRig"]
        7 MOVE                             R3 R1
        8 GETUPVAL                         R4 2
        9 MOVE                             R5 R0
       10 CALL                             R4 1 1
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_91:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantAnimationGenDisablePreviewSelectionFollowing"]
        3 JUMPIFNOT                        R2 ; [+7]
        4 GETUPVAL                         R2 1
        5 JUMPIFNOT                        R2 ; [+5]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["endClipToUpscalePreviewSession"]
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_92:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["generateUpscalePreviewAsync"]
        3 MOVE                             R3 R1
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R0
        6 CALL                             R4 1 1
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_93:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["updateUpscalePreview"]
        3 MOVE                             R3 R1
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R0
        6 CALL                             R4 1 1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_94:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_95:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_96:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_97:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_98:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_99:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_100:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_101:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["resetPose"]
        6 MOVE                             R4 R1
        7 MOVE                             R5 R2
        8 CALL                             R3 2 0
        9 RETURN                           R0 0

PROTO_102:
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

PROTO_103:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_104:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 LOADB                            R0 1
        7 SETUPVAL                         R0 2
        8 RETURN                           R0 0

PROTO_105:
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
       15 GETTABLEKS                       R7 R2 K1 ["getAnimationCardState"]
       17 NEWCLOSURE                       R9 P1
       18 CAPTURE                          VAL R3
       19 CAPTURE                          UPVAL U4
       20 NAMECALL                         R7 R7 K2 ["Connect"]
       22 CALL                             R7 2 -1
       23 NAMECALL                         R5 R4 K3 ["Add"]
       25 CALL                             R5 -1 0
       26 GETTABLEKS                       R7 R2 K4 ["selectAnimationVersion"]
       28 NEWCLOSURE                       R9 P2
       29 CAPTURE                          UPVAL U5
       30 CAPTURE                          VAL R3
       31 NAMECALL                         R7 R7 K2 ["Connect"]
       33 CALL                             R7 2 -1
       34 NAMECALL                         R5 R4 K3 ["Add"]
       36 CALL                             R5 -1 0
       37 GETTABLEKS                       R7 R2 K5 ["prepareAnimationEdit"]
       39 NEWCLOSURE                       R9 P3
       40 CAPTURE                          VAL R3
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          UPVAL U6
       43 CAPTURE                          UPVAL U7
       44 CAPTURE                          UPVAL U8
       45 NAMECALL                         R7 R7 K2 ["Connect"]
       47 CALL                             R7 2 -1
       48 NAMECALL                         R5 R4 K3 ["Add"]
       50 CALL                             R5 -1 0
       51 GETTABLEKS                       R7 R2 K6 ["resolveGenerationSource"]
       53 NEWCLOSURE                       R9 P4
       54 CAPTURE                          VAL R3
       55 CAPTURE                          UPVAL U4
       56 NAMECALL                         R7 R7 K2 ["Connect"]
       58 CALL                             R7 2 -1
       59 NAMECALL                         R5 R4 K3 ["Add"]
       61 CALL                             R5 -1 0
       62 GETTABLEKS                       R7 R2 K7 ["getPlaybackState"]
       64 NEWCLOSURE                       R9 P5
       65 CAPTURE                          VAL R3
       66 CAPTURE                          UPVAL U9
       67 NAMECALL                         R7 R7 K2 ["Connect"]
       69 CALL                             R7 2 -1
       70 NAMECALL                         R5 R4 K3 ["Add"]
       72 CALL                             R5 -1 0
       73 GETTABLEKS                       R7 R2 K8 ["generateAndSaveAnimation"]
       75 NEWCLOSURE                       R9 P6
       76 CAPTURE                          UPVAL U10
       77 CAPTURE                          VAL R3
       78 NAMECALL                         R7 R7 K2 ["Connect"]
       80 CALL                             R7 2 -1
       81 NAMECALL                         R5 R4 K3 ["Add"]
       83 CALL                             R5 -1 0
       84 GETTABLEKS                       R7 R2 K9 ["discardEditAnimationPreview"]
       86 NEWCLOSURE                       R9 P7
       87 CAPTURE                          VAL R3
       88 CAPTURE                          UPVAL U7
       89 NAMECALL                         R7 R7 K2 ["Connect"]
       91 CALL                             R7 2 -1
       92 NAMECALL                         R5 R4 K3 ["Add"]
       94 CALL                             R5 -1 0
       95 GETTABLEKS                       R7 R2 K10 ["getSelectedRigRef"]
       97 NEWCLOSURE                       R9 P8
       98 CAPTURE                          UPVAL U11
       99 CAPTURE                          VAL R3
      100 NAMECALL                         R7 R7 K2 ["Connect"]
      102 CALL                             R7 2 -1
      103 NAMECALL                         R5 R4 K3 ["Add"]
      105 CALL                             R5 -1 0
      106 GETTABLEKS                       R7 R2 K11 ["setIsPlaying"]
      108 NEWCLOSURE                       R9 P9
      109 CAPTURE                          UPVAL U12
      110 CAPTURE                          VAL R3
      111 NAMECALL                         R7 R7 K2 ["Connect"]
      113 CALL                             R7 2 -1
      114 NAMECALL                         R5 R4 K3 ["Add"]
      116 CALL                             R5 -1 0
      117 GETTABLEKS                       R7 R2 K12 ["setCurrentTime"]
      119 NEWCLOSURE                       R9 P10
      120 CAPTURE                          UPVAL U13
      121 CAPTURE                          VAL R3
      122 NAMECALL                         R7 R7 K2 ["Connect"]
      124 CALL                             R7 2 -1
      125 NAMECALL                         R5 R4 K3 ["Add"]
      127 CALL                             R5 -1 0
      128 GETTABLEKS                       R7 R2 K13 ["previewClipToUpscale"]
      130 NEWCLOSURE                       R9 P11
      131 CAPTURE                          UPVAL U14
      132 CAPTURE                          VAL R3
      133 NAMECALL                         R7 R7 K2 ["Connect"]
      135 CALL                             R7 2 -1
      136 NAMECALL                         R5 R4 K3 ["Add"]
      138 CALL                             R5 -1 0
      139 GETTABLEKS                       R7 R2 K14 ["clearClipToUpscalePreview"]
      141 NEWCLOSURE                       R9 P12
      142 CAPTURE                          UPVAL U15
      143 CAPTURE                          UPVAL U14
      144 NAMECALL                         R7 R7 K2 ["Connect"]
      146 CALL                             R7 2 -1
      147 NAMECALL                         R5 R4 K3 ["Add"]
      149 CALL                             R5 -1 0
      150 GETTABLEKS                       R7 R2 K15 ["insertClipToUpscalePreviewRig"]
      152 NEWCLOSURE                       R9 P13
      153 CAPTURE                          UPVAL U14
      154 CAPTURE                          VAL R3
      155 NAMECALL                         R7 R7 K2 ["Connect"]
      157 CALL                             R7 2 -1
      158 NAMECALL                         R5 R4 K3 ["Add"]
      160 CALL                             R5 -1 0
      161 GETTABLEKS                       R7 R2 K16 ["setClipToUpscalePreviewRig"]
      163 NEWCLOSURE                       R9 P14
      164 CAPTURE                          UPVAL U16
      165 CAPTURE                          UPVAL U14
      166 CAPTURE                          VAL R3
      167 NAMECALL                         R7 R7 K2 ["Connect"]
      169 CALL                             R7 2 -1
      170 NAMECALL                         R5 R4 K3 ["Add"]
      172 CALL                             R5 -1 0
      173 GETTABLEKS                       R7 R2 K17 ["endClipToUpscalePreviewSession"]
      175 NEWCLOSURE                       R9 P15
      176 CAPTURE                          UPVAL U16
      177 CAPTURE                          UPVAL U15
      178 CAPTURE                          UPVAL U14
      179 NAMECALL                         R7 R7 K2 ["Connect"]
      181 CALL                             R7 2 -1
      182 NAMECALL                         R5 R4 K3 ["Add"]
      184 CALL                             R5 -1 0
      185 GETTABLEKS                       R7 R2 K18 ["generateUpscalePreview"]
      187 NEWCLOSURE                       R9 P16
      188 CAPTURE                          UPVAL U14
      189 CAPTURE                          VAL R3
      190 NAMECALL                         R7 R7 K2 ["Connect"]
      192 CALL                             R7 2 -1
      193 NAMECALL                         R5 R4 K3 ["Add"]
      195 CALL                             R5 -1 0
      196 GETTABLEKS                       R7 R2 K19 ["updateUpscalePreview"]
      198 NEWCLOSURE                       R9 P17
      199 CAPTURE                          UPVAL U14
      200 CAPTURE                          VAL R3
      201 NAMECALL                         R7 R7 K2 ["Connect"]
      203 CALL                             R7 2 -1
      204 NAMECALL                         R5 R4 K3 ["Add"]
      206 CALL                             R5 -1 0
      207 GETTABLEKS                       R7 R2 K20 ["openInAnimationClipEditor"]
      209 NEWCLOSURE                       R9 P18
      210 CAPTURE                          UPVAL U17
      211 CAPTURE                          VAL R3
      212 NAMECALL                         R7 R7 K2 ["Connect"]
      214 CALL                             R7 2 -1
      215 NAMECALL                         R5 R4 K3 ["Add"]
      217 CALL                             R5 -1 0
      218 GETTABLEKS                       R7 R2 K21 ["publishAnimation"]
      220 NEWCLOSURE                       R9 P19
      221 CAPTURE                          UPVAL U18
      222 CAPTURE                          VAL R3
      223 NAMECALL                         R7 R7 K2 ["Connect"]
      225 CALL                             R7 2 -1
      226 NAMECALL                         R5 R4 K3 ["Add"]
      228 CALL                             R5 -1 0
      229 GETTABLEKS                       R7 R2 K22 ["insertPose"]
      231 NEWCLOSURE                       R9 P20
      232 CAPTURE                          UPVAL U19
      233 CAPTURE                          VAL R3
      234 NAMECALL                         R7 R7 K2 ["Connect"]
      236 CALL                             R7 2 -1
      237 NAMECALL                         R5 R4 K3 ["Add"]
      239 CALL                             R5 -1 0
      240 GETTABLEKS                       R7 R2 K23 ["deletePose"]
      242 NEWCLOSURE                       R9 P21
      243 CAPTURE                          UPVAL U20
      244 CAPTURE                          VAL R3
      245 NAMECALL                         R7 R7 K2 ["Connect"]
      247 CALL                             R7 2 -1
      248 NAMECALL                         R5 R4 K3 ["Add"]
      250 CALL                             R5 -1 0
      251 GETTABLEKS                       R7 R2 K24 ["movePose"]
      253 NEWCLOSURE                       R9 P22
      254 CAPTURE                          UPVAL U21
      255 CAPTURE                          VAL R3
      256 NAMECALL                         R7 R7 K2 ["Connect"]
      258 CALL                             R7 2 -1
      259 NAMECALL                         R5 R4 K3 ["Add"]
      261 CALL                             R5 -1 0
      262 GETTABLEKS                       R7 R2 K25 ["resizePose"]
      264 NEWCLOSURE                       R9 P23
      265 CAPTURE                          UPVAL U22
      266 CAPTURE                          VAL R3
      267 NAMECALL                         R7 R7 K2 ["Connect"]
      269 CALL                             R7 2 -1
      270 NAMECALL                         R5 R4 K3 ["Add"]
      272 CALL                             R5 -1 0
      273 GETTABLEKS                       R7 R2 K26 ["getEditScrubbarState"]
      275 NEWCLOSURE                       R9 P24
      276 CAPTURE                          UPVAL U23
      277 CAPTURE                          VAL R3
      278 NAMECALL                         R7 R7 K2 ["Connect"]
      280 CALL                             R7 2 -1
      281 NAMECALL                         R5 R4 K3 ["Add"]
      283 CALL                             R5 -1 0
      284 GETTABLEKS                       R7 R2 K27 ["resetPose"]
      286 NEWCLOSURE                       R9 P25
      287 CAPTURE                          VAL R3
      288 CAPTURE                          UPVAL U24
      289 NAMECALL                         R7 R7 K2 ["Connect"]
      291 CALL                             R7 2 -1
      292 NAMECALL                         R5 R4 K3 ["Add"]
      294 CALL                             R5 -1 0
      295 GETTABLEKS                       R7 R2 K28 ["endEditSession"]
      297 NEWCLOSURE                       R9 P26
      298 CAPTURE                          VAL R3
      299 CAPTURE                          UPVAL U7
      300 NAMECALL                         R7 R7 K2 ["Connect"]
      302 CALL                             R7 2 -1
      303 NAMECALL                         R5 R4 K3 ["Add"]
      305 CALL                             R5 -1 0
      306 GETTABLEKS                       R7 R2 K29 ["beginEditPreview"]
      308 NEWCLOSURE                       R9 P27
      309 CAPTURE                          UPVAL U25
      310 CAPTURE                          VAL R3
      311 NAMECALL                         R7 R7 K2 ["Connect"]
      313 CALL                             R7 2 -1
      314 NAMECALL                         R5 R4 K3 ["Add"]
      316 CALL                             R5 -1 0
      317 GETTABLEKS                       R5 R1 K30 ["Destroying"]
      319 NEWCLOSURE                       R7 P28
      320 CAPTURE                          VAL R4
      321 CAPTURE                          UPVAL U26
      322 CAPTURE                          UPVAL U1
      323 NAMECALL                         R5 R5 K31 ["Once"]
      325 CALL                             R5 2 0
      326 RETURN                           R0 0

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
       85 GETTABLEKS                       R13 R13 K26 ["AnimationGenTelemetry"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K13 [require]
       90 GETTABLEKS                       R14 R4 K16 ["Util"]
       92 GETTABLEKS                       R14 R14 K17 ["AnimationGen"]
       94 GETTABLEKS                       R14 R14 K27 ["AnimationGenTypes"]
       96 CALL                             R13 1 1
       97 GETIMPORT                        R14 K13 [require]
       99 GETTABLEKS                       R15 R4 K16 ["Util"]
      101 GETTABLEKS                       R15 R15 K17 ["AnimationGen"]
      103 GETTABLEKS                       R15 R15 K28 ["AnimationNameUtils"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K13 [require]
      108 GETTABLEKS                       R16 R4 K16 ["Util"]
      110 GETTABLEKS                       R16 R16 K17 ["AnimationGen"]
      112 GETTABLEKS                       R16 R16 K18 ["State"]
      114 GETTABLEKS                       R16 R16 K29 ["AnimationPlayerParameters"]
      116 CALL                             R15 1 1
      117 GETIMPORT                        R16 K13 [require]
      119 GETTABLEKS                       R17 R4 K16 ["Util"]
      121 GETTABLEKS                       R17 R17 K17 ["AnimationGen"]
      123 GETTABLEKS                       R17 R17 K18 ["State"]
      125 GETTABLEKS                       R17 R17 K30 ["AnimationPlayerState"]
      127 CALL                             R16 1 1
      128 GETIMPORT                        R17 K13 [require]
      130 GETTABLEKS                       R18 R4 K16 ["Util"]
      132 GETTABLEKS                       R18 R18 K17 ["AnimationGen"]
      134 GETTABLEKS                       R18 R18 K31 ["BlendSettings"]
      136 CALL                             R17 1 1
      137 GETIMPORT                        R18 K13 [require]
      139 GETTABLEKS                       R19 R4 K32 ["Guest"]
      141 GETTABLEKS                       R19 R19 K33 ["Environment"]
      143 CALL                             R18 1 1
      144 GETIMPORT                        R19 K13 [require]
      146 GETTABLEKS                       R20 R4 K34 ["Flags"]
      148 CALL                             R19 1 1
      149 GETIMPORT                        R20 K13 [require]
      151 GETTABLEKS                       R21 R4 K16 ["Util"]
      153 GETTABLEKS                       R21 R21 K17 ["AnimationGen"]
      155 GETTABLEKS                       R21 R21 K35 ["HostTypes"]
      157 CALL                             R20 1 1
      158 GETIMPORT                        R21 K13 [require]
      160 GETTABLEKS                       R22 R4 K36 ["Types"]
      162 CALL                             R21 1 1
      163 GETIMPORT                        R22 K13 [require]
      165 GETTABLEKS                       R23 R4 K16 ["Util"]
      167 GETTABLEKS                       R23 R23 K17 ["AnimationGen"]
      169 GETTABLEKS                       R23 R23 K37 ["UpscaleSettings"]
      171 CALL                             R22 1 1
      172 GETIMPORT                        R23 K13 [require]
      174 GETTABLEKS                       R24 R4 K16 ["Util"]
      176 GETTABLEKS                       R24 R24 K17 ["AnimationGen"]
      178 GETTABLEKS                       R24 R24 K38 ["Posing"]
      180 GETTABLEKS                       R24 R24 K39 ["bakeSavedPoseEdits"]
      182 CALL                             R23 1 1
      183 GETIMPORT                        R24 K13 [require]
      185 GETTABLEKS                       R25 R4 K16 ["Util"]
      187 GETTABLEKS                       R25 R25 K17 ["AnimationGen"]
      189 GETTABLEKS                       R25 R25 K40 ["buildBlendedKeyframeSequence"]
      191 CALL                             R24 1 1
      192 GETIMPORT                        R25 K13 [require]
      194 GETTABLEKS                       R26 R4 K16 ["Util"]
      196 GETTABLEKS                       R26 R26 K17 ["AnimationGen"]
      198 GETTABLEKS                       R26 R26 K41 ["clearAnimationPose"]
      200 CALL                             R25 1 1
      201 GETIMPORT                        R26 K13 [require]
      203 GETTABLEKS                       R27 R4 K16 ["Util"]
      205 GETTABLEKS                       R27 R27 K17 ["AnimationGen"]
      207 GETTABLEKS                       R27 R27 K42 ["createClipEditorLauncher"]
      209 CALL                             R26 1 1
      210 GETIMPORT                        R27 K13 [require]
      212 GETTABLEKS                       R28 R4 K16 ["Util"]
      214 GETTABLEKS                       R28 R28 K17 ["AnimationGen"]
      216 GETTABLEKS                       R28 R28 K43 ["createClipToUpscalePreview"]
      218 CALL                             R27 1 1
      219 GETIMPORT                        R28 K13 [require]
      221 GETTABLEKS                       R29 R4 K16 ["Util"]
      223 GETTABLEKS                       R29 R29 K17 ["AnimationGen"]
      225 GETTABLEKS                       R29 R29 K44 ["createEditPreviewPlayer"]
      227 CALL                             R28 1 1
      228 GETIMPORT                        R29 K13 [require]
      230 GETTABLEKS                       R30 R4 K16 ["Util"]
      232 GETTABLEKS                       R30 R30 K17 ["AnimationGen"]
      234 GETTABLEKS                       R30 R30 K45 ["createEditSessionManager"]
      236 CALL                             R29 1 1
      237 GETIMPORT                        R30 K13 [require]
      239 GETTABLEKS                       R31 R4 K16 ["Util"]
      241 GETTABLEKS                       R31 R31 K17 ["AnimationGen"]
      243 GETTABLEKS                       R31 R31 K18 ["State"]
      245 GETTABLEKS                       R31 R31 K46 ["createGenerationHistory"]
      247 CALL                             R30 1 1
      248 GETIMPORT                        R31 K13 [require]
      250 GETTABLEKS                       R32 R4 K16 ["Util"]
      252 GETTABLEKS                       R32 R32 K17 ["AnimationGen"]
      254 GETTABLEKS                       R32 R32 K47 ["createHostAnimator"]
      256 CALL                             R31 1 1
      257 GETIMPORT                        R32 K13 [require]
      259 GETTABLEKS                       R33 R4 K16 ["Util"]
      261 GETTABLEKS                       R33 R33 K17 ["AnimationGen"]
      263 GETTABLEKS                       R33 R33 K48 ["createHostEditor"]
      265 CALL                             R32 1 1
      266 GETIMPORT                        R33 K13 [require]
      268 GETTABLEKS                       R34 R4 K16 ["Util"]
      270 GETTABLEKS                       R34 R34 K17 ["AnimationGen"]
      272 GETTABLEKS                       R34 R34 K49 ["createHostGenerator"]
      274 CALL                             R33 1 1
      275 GETIMPORT                        R34 K13 [require]
      277 GETTABLEKS                       R35 R4 K16 ["Util"]
      279 GETTABLEKS                       R35 R35 K17 ["AnimationGen"]
      281 GETTABLEKS                       R35 R35 K50 ["createHostSelection"]
      283 CALL                             R34 1 1
      284 GETIMPORT                        R35 K13 [require]
      286 GETTABLEKS                       R36 R4 K16 ["Util"]
      288 GETTABLEKS                       R36 R36 K17 ["AnimationGen"]
      290 GETTABLEKS                       R36 R36 K51 ["createPoseEditor"]
      292 CALL                             R35 1 1
      293 GETIMPORT                        R36 K13 [require]
      295 GETTABLEKS                       R37 R4 K16 ["Util"]
      297 GETTABLEKS                       R37 R37 K17 ["AnimationGen"]
      299 GETTABLEKS                       R37 R37 K52 ["createPoseSelection"]
      301 CALL                             R36 1 1
      302 GETIMPORT                        R37 K13 [require]
      304 GETTABLEKS                       R38 R4 K16 ["Util"]
      306 GETTABLEKS                       R38 R38 K17 ["AnimationGen"]
      308 GETTABLEKS                       R38 R38 K53 ["insertBlockyRigIntoWorkspace"]
      310 CALL                             R37 1 1
      311 GETIMPORT                        R38 K13 [require]
      313 GETTABLEKS                       R39 R4 K16 ["Util"]
      315 GETTABLEKS                       R39 R39 K17 ["AnimationGen"]
      317 GETTABLEKS                       R39 R39 K54 ["isRigInWorkspace"]
      319 CALL                             R38 1 1
      320 GETIMPORT                        R39 K13 [require]
      322 GETTABLEKS                       R40 R4 K16 ["Util"]
      324 GETTABLEKS                       R40 R40 K17 ["AnimationGen"]
      326 GETTABLEKS                       R40 R40 K55 ["notifyGuestEditStateChanged"]
      328 CALL                             R39 1 1
      329 DUPCLOSURE                       R40 K56 [PROTO_0]
      330 DUPCLOSURE                       R41 K57 [PROTO_1]
      331 DUPCLOSURE                       R42 K58 [PROTO_2]
      332 CAPTURE                          VAL R0
      333 CAPTURE                          VAL R13
      334 DUPCLOSURE                       R43 K59 [PROTO_5]
      335 DUPCLOSURE                       R44 K60 [PROTO_6]
      336 CAPTURE                          VAL R38
      337 DUPCLOSURE                       R45 K61 [PROTO_7]
      338 CAPTURE                          VAL R38
      339 DUPCLOSURE                       R46 K62 [PROTO_8]
      340 CAPTURE                          VAL R3
      341 CAPTURE                          VAL R10
      342 DUPCLOSURE                       R47 K63 [PROTO_10]
      343 CAPTURE                          VAL R2
      344 DUPCLOSURE                       R48 K64 [PROTO_11]
      345 CAPTURE                          VAL R2
      346 CAPTURE                          VAL R14
      347 CAPTURE                          VAL R46
      348 DUPCLOSURE                       R49 K65 [PROTO_12]
      349 NEWTABLE                         R50 0 0
      351 LOADNIL                          R51
      352 LOADNIL                          R52
      353 LOADNIL                          R53
      354 LOADNIL                          R54
      355 LOADNIL                          R55
      356 LOADNIL                          R56
      357 LOADNIL                          R57
      358 LOADNIL                          R58
      359 LOADNIL                          R59
      360 LOADNIL                          R60
      361 LOADNIL                          R61
      362 LOADNIL                          R62
      363 LOADB                            R63 0
      364 LOADB                            R64 0
      365 LOADNIL                          R65
      366 DUPCLOSURE                       R66 K66 [PROTO_13]
      367 CAPTURE                          VAL R50
      368 CAPTURE                          VAL R25
      369 NEWCLOSURE                       R67 P11
      370 CAPTURE                          REF R56
      371 CAPTURE                          REF R57
      372 NEWCLOSURE                       R68 P12
      373 CAPTURE                          VAL R16
      374 CAPTURE                          VAL R50
      375 CAPTURE                          REF R53
      376 CAPTURE                          VAL R43
      377 NEWCLOSURE                       R69 P13
      378 CAPTURE                          VAL R1
      379 CAPTURE                          VAL R42
      380 CAPTURE                          REF R52
      381 CAPTURE                          VAL R16
      382 CAPTURE                          VAL R50
      383 CAPTURE                          REF R53
      384 CAPTURE                          VAL R43
      385 CAPTURE                          VAL R49
      386 NEWCLOSURE                       R70 P14
      387 CAPTURE                          REF R54
      388 CAPTURE                          VAL R23
      389 CAPTURE                          VAL R13
      390 CAPTURE                          VAL R69
      391 CAPTURE                          REF R58
      392 NEWCLOSURE                       R71 P15
      393 CAPTURE                          REF R61
      394 CAPTURE                          VAL R13
      395 CAPTURE                          VAL R22
      396 CAPTURE                          VAL R16
      397 CAPTURE                          VAL R15
      398 CAPTURE                          VAL R17
      399 CAPTURE                          VAL R24
      400 CAPTURE                          VAL R1
      401 CAPTURE                          VAL R37
      402 CAPTURE                          REF R52
      403 CAPTURE                          VAL R68
      404 CAPTURE                          VAL R49
      405 NEWCLOSURE                       R72 P16
      406 CAPTURE                          REF R52
      407 CAPTURE                          VAL R13
      408 CAPTURE                          VAL R2
      409 CAPTURE                          VAL R14
      410 CAPTURE                          VAL R46
      411 CAPTURE                          REF R65
      412 DUPCLOSURE                       R73 K67 [PROTO_20]
      413 CAPTURE                          VAL R13
      414 CAPTURE                          VAL R50
      415 CAPTURE                          VAL R19
      416 CAPTURE                          VAL R38
      417 NEWCLOSURE                       R74 P18
      418 CAPTURE                          REF R58
      419 CAPTURE                          VAL R13
      420 CAPTURE                          VAL R73
      421 CAPTURE                          VAL R71
      422 CAPTURE                          VAL R50
      423 CAPTURE                          VAL R16
      424 CAPTURE                          VAL R48
      425 CAPTURE                          VAL R70
      426 CAPTURE                          REF R52
      427 CAPTURE                          VAL R19
      428 CAPTURE                          REF R65
      429 CAPTURE                          VAL R1
      430 CAPTURE                          VAL R37
      431 CAPTURE                          VAL R68
      432 CAPTURE                          VAL R49
      433 NEWCLOSURE                       R75 P19
      434 CAPTURE                          REF R54
      435 NEWCLOSURE                       R76 P20
      436 CAPTURE                          VAL R13
      437 CAPTURE                          REF R58
      438 CAPTURE                          REF R60
      439 CAPTURE                          VAL R75
      440 CAPTURE                          VAL R74
      441 CAPTURE                          VAL R50
      442 CAPTURE                          VAL R12
      443 CAPTURE                          REF R53
      444 CAPTURE                          VAL R43
      445 NEWCLOSURE                       R77 P21
      446 CAPTURE                          REF R60
      447 NEWCLOSURE                       R78 P22
      448 CAPTURE                          VAL R50
      449 CAPTURE                          REF R57
      450 CAPTURE                          VAL R10
      451 CAPTURE                          VAL R1
      452 CAPTURE                          REF R52
      453 NEWCLOSURE                       R79 P23
      454 CAPTURE                          REF R53
      455 NEWCLOSURE                       R80 P24
      456 CAPTURE                          REF R53
      457 CAPTURE                          VAL R43
      458 CAPTURE                          VAL R78
      459 CAPTURE                          REF R57
      460 CAPTURE                          REF R56
      461 NEWCLOSURE                       R81 P25
      462 CAPTURE                          VAL R78
      463 CAPTURE                          REF R57
      464 CAPTURE                          REF R56
      465 CAPTURE                          REF R53
      466 CAPTURE                          VAL R43
      467 DUPCLOSURE                       R82 K68 [PROTO_31]
      468 CAPTURE                          VAL R19
      469 CAPTURE                          VAL R10
      470 NEWCLOSURE                       R83 P27
      471 CAPTURE                          REF R61
      472 CAPTURE                          VAL R10
      473 CAPTURE                          VAL R50
      474 CAPTURE                          VAL R78
      475 CAPTURE                          REF R57
      476 CAPTURE                          REF R56
      477 CAPTURE                          REF R53
      478 CAPTURE                          VAL R43
      479 CAPTURE                          VAL R80
      480 NEWCLOSURE                       R84 P28
      481 CAPTURE                          VAL R50
      482 CAPTURE                          VAL R19
      483 CAPTURE                          VAL R10
      484 CAPTURE                          REF R61
      485 CAPTURE                          VAL R78
      486 CAPTURE                          REF R57
      487 CAPTURE                          REF R56
      488 CAPTURE                          REF R53
      489 CAPTURE                          VAL R43
      490 CAPTURE                          VAL R80
      491 NEWCLOSURE                       R85 P29
      492 CAPTURE                          VAL R50
      493 CAPTURE                          VAL R19
      494 CAPTURE                          VAL R10
      495 CAPTURE                          REF R61
      496 CAPTURE                          VAL R78
      497 CAPTURE                          REF R57
      498 CAPTURE                          REF R56
      499 CAPTURE                          REF R53
      500 CAPTURE                          VAL R43
      501 CAPTURE                          VAL R80
      502 NEWCLOSURE                       R86 P30
      503 CAPTURE                          REF R60
      504 NEWCLOSURE                       R87 P31
      505 CAPTURE                          VAL R50
      506 CAPTURE                          REF R53
      507 CAPTURE                          VAL R43
      508 NEWCLOSURE                       R88 P32
      509 CAPTURE                          REF R60
      510 CAPTURE                          VAL R50
      511 CAPTURE                          REF R53
      512 CAPTURE                          VAL R87
      513 CAPTURE                          VAL R85
      514 CAPTURE                          VAL R84
      515 NEWCLOSURE                       R89 P33
      516 CAPTURE                          REF R59
      517 NEWCLOSURE                       R90 P34
      518 CAPTURE                          REF R59
      519 NEWCLOSURE                       R91 P35
      520 CAPTURE                          REF R59
      521 NEWCLOSURE                       R92 P36
      522 CAPTURE                          REF R59
      523 NEWCLOSURE                       R93 P37
      524 CAPTURE                          REF R59
      525 NEWCLOSURE                       R94 P38
      526 CAPTURE                          REF R59
      527 NEWCLOSURE                       R95 P39
      528 CAPTURE                          REF R60
      529 CAPTURE                          VAL R50
      530 CAPTURE                          REF R58
      531 CAPTURE                          VAL R78
      532 NEWCLOSURE                       R96 P40
      533 CAPTURE                          REF R58
      534 NEWCLOSURE                       R97 P41
      535 CAPTURE                          REF R58
      536 NEWCLOSURE                       R98 P42
      537 CAPTURE                          REF R56
      538 CAPTURE                          VAL R50
      539 CAPTURE                          REF R58
      540 CAPTURE                          REF R57
      541 CAPTURE                          VAL R39
      542 NEWCLOSURE                       R99 P43
      543 CAPTURE                          VAL R78
      544 CAPTURE                          REF R55
      545 CAPTURE                          REF R60
      546 CAPTURE                          VAL R12
      547 NEWCLOSURE                       R100 P44
      548 CAPTURE                          VAL R19
      549 CAPTURE                          VAL R78
      550 CAPTURE                          VAL R50
      551 CAPTURE                          REF R60
      552 CAPTURE                          VAL R12
      553 NEWCLOSURE                       R101 P45
      554 CAPTURE                          REF R51
      555 CAPTURE                          VAL R34
      556 CAPTURE                          REF R52
      557 CAPTURE                          VAL R33
      558 CAPTURE                          REF R53
      559 CAPTURE                          VAL R31
      560 CAPTURE                          VAL R50
      561 CAPTURE                          REF R54
      562 CAPTURE                          VAL R32
      563 CAPTURE                          REF R58
      564 CAPTURE                          REF R57
      565 CAPTURE                          REF R55
      566 CAPTURE                          VAL R26
      567 CAPTURE                          REF R56
      568 CAPTURE                          VAL R36
      569 CAPTURE                          VAL R28
      570 CAPTURE                          VAL R43
      571 CAPTURE                          VAL R29
      572 CAPTURE                          REF R59
      573 CAPTURE                          VAL R35
      574 CAPTURE                          VAL R66
      575 CAPTURE                          REF R60
      576 CAPTURE                          VAL R30
      577 CAPTURE                          REF R61
      578 CAPTURE                          VAL R27
      579 CAPTURE                          VAL R72
      580 CAPTURE                          VAL R6
      581 CAPTURE                          REF R62
      582 CAPTURE                          REF R63
      583 NEWCLOSURE                       R65 P46
      584 CAPTURE                          REF R63
      585 CAPTURE                          REF R64
      586 CAPTURE                          VAL R101
      587 NEWCLOSURE                       R102 P47
      588 CAPTURE                          REF R63
      589 CAPTURE                          REF R62
      590 CAPTURE                          REF R55
      591 CAPTURE                          REF R61
      592 CAPTURE                          REF R53
      593 CAPTURE                          REF R51
      594 CAPTURE                          REF R58
      595 CAPTURE                          REF R54
      596 CAPTURE                          VAL R50
      597 CAPTURE                          VAL R66
      598 CAPTURE                          VAL R16
      599 CAPTURE                          REF R60
      600 CAPTURE                          REF R57
      601 CAPTURE                          REF R56
      602 NEWCLOSURE                       R103 P48
      603 CAPTURE                          REF R65
      604 NEWCLOSURE                       R104 P49
      605 CAPTURE                          REF R65
      606 DUPTABLE                         R105 K96 [{"getAnimationCardState", "selectAnimationVersion", "prepareAnimationEdit", "resolveGenerationSource", "getPlaybackState", "generateAndSaveAnimationAsync", "discardEditAnimationPreview", "getSelectedRigRef", "setIsPlaying", "setCurrentTime", "previewClipToUpscaleAsync", "clearClipToUpscalePreview", "insertClipToUpscalePreviewRigAsync", "setClipToUpscalePreviewRig", "endClipToUpscalePreviewSession", "generateUpscalePreviewAsync", "updateUpscalePreview", "openInAnimationClipEditor", "publishAnimation", "insertPose", "deletePose", "movePose", "resizePose", "getEditScrubbarState", "resetPose", "endEditSession", "beginEditPreview"}]
      607 NEWCLOSURE                       R106 P50
      608 CAPTURE                          VAL R86
      609 CAPTURE                          REF R65
      610 SETTABLEKS                       R106 R105 K69 ["getAnimationCardState"]
      612 NEWCLOSURE                       R106 P50
      613 CAPTURE                          VAL R88
      614 CAPTURE                          REF R65
      615 SETTABLEKS                       R106 R105 K70 ["selectAnimationVersion"]
      617 NEWCLOSURE                       R106 P50
      618 CAPTURE                          VAL R95
      619 CAPTURE                          REF R65
      620 SETTABLEKS                       R106 R105 K71 ["prepareAnimationEdit"]
      622 NEWCLOSURE                       R106 P50
      623 CAPTURE                          VAL R77
      624 CAPTURE                          REF R65
      625 SETTABLEKS                       R106 R105 K72 ["resolveGenerationSource"]
      627 NEWCLOSURE                       R106 P50
      628 CAPTURE                          VAL R79
      629 CAPTURE                          REF R65
      630 SETTABLEKS                       R106 R105 K73 ["getPlaybackState"]
      632 NEWCLOSURE                       R106 P50
      633 CAPTURE                          VAL R76
      634 CAPTURE                          REF R65
      635 SETTABLEKS                       R106 R105 K74 ["generateAndSaveAnimationAsync"]
      637 NEWCLOSURE                       R106 P50
      638 CAPTURE                          VAL R96
      639 CAPTURE                          REF R65
      640 SETTABLEKS                       R106 R105 K75 ["discardEditAnimationPreview"]
      642 NEWCLOSURE                       R106 P51
      643 CAPTURE                          VAL R45
      644 CAPTURE                          REF R65
      645 SETTABLEKS                       R106 R105 K76 ["getSelectedRigRef"]
      647 NEWCLOSURE                       R106 P50
      648 CAPTURE                          VAL R84
      649 CAPTURE                          REF R65
      650 SETTABLEKS                       R106 R105 K77 ["setIsPlaying"]
      652 NEWCLOSURE                       R106 P50
      653 CAPTURE                          VAL R85
      654 CAPTURE                          REF R65
      655 SETTABLEKS                       R106 R105 K78 ["setCurrentTime"]
      657 NEWCLOSURE                       R106 P52
      658 CAPTURE                          REF R61
      659 CAPTURE                          REF R65
      660 SETTABLEKS                       R106 R105 K79 ["previewClipToUpscaleAsync"]
      662 NEWCLOSURE                       R106 P53
      663 CAPTURE                          REF R63
      664 CAPTURE                          REF R61
      665 SETTABLEKS                       R106 R105 K80 ["clearClipToUpscalePreview"]
      667 NEWCLOSURE                       R106 P54
      668 CAPTURE                          REF R61
      669 CAPTURE                          REF R65
      670 SETTABLEKS                       R106 R105 K81 ["insertClipToUpscalePreviewRigAsync"]
      672 NEWCLOSURE                       R106 P55
      673 CAPTURE                          VAL R19
      674 CAPTURE                          REF R61
      675 CAPTURE                          REF R65
      676 SETTABLEKS                       R106 R105 K82 ["setClipToUpscalePreviewRig"]
      678 NEWCLOSURE                       R106 P56
      679 CAPTURE                          VAL R19
      680 CAPTURE                          REF R63
      681 CAPTURE                          REF R61
      682 SETTABLEKS                       R106 R105 K83 ["endClipToUpscalePreviewSession"]
      684 NEWCLOSURE                       R106 P57
      685 CAPTURE                          REF R61
      686 CAPTURE                          REF R65
      687 SETTABLEKS                       R106 R105 K84 ["generateUpscalePreviewAsync"]
      689 NEWCLOSURE                       R106 P58
      690 CAPTURE                          REF R61
      691 CAPTURE                          REF R65
      692 SETTABLEKS                       R106 R105 K85 ["updateUpscalePreview"]
      694 NEWCLOSURE                       R106 P50
      695 CAPTURE                          VAL R99
      696 CAPTURE                          REF R65
      697 SETTABLEKS                       R106 R105 K86 ["openInAnimationClipEditor"]
      699 NEWCLOSURE                       R106 P50
      700 CAPTURE                          VAL R100
      701 CAPTURE                          REF R65
      702 SETTABLEKS                       R106 R105 K87 ["publishAnimation"]
      704 NEWCLOSURE                       R106 P50
      705 CAPTURE                          VAL R89
      706 CAPTURE                          REF R65
      707 SETTABLEKS                       R106 R105 K88 ["insertPose"]
      709 NEWCLOSURE                       R106 P50
      710 CAPTURE                          VAL R90
      711 CAPTURE                          REF R65
      712 SETTABLEKS                       R106 R105 K89 ["deletePose"]
      714 NEWCLOSURE                       R106 P50
      715 CAPTURE                          VAL R91
      716 CAPTURE                          REF R65
      717 SETTABLEKS                       R106 R105 K90 ["movePose"]
      719 NEWCLOSURE                       R106 P50
      720 CAPTURE                          VAL R92
      721 CAPTURE                          REF R65
      722 SETTABLEKS                       R106 R105 K91 ["resizePose"]
      724 NEWCLOSURE                       R106 P50
      725 CAPTURE                          VAL R93
      726 CAPTURE                          REF R65
      727 SETTABLEKS                       R106 R105 K92 ["getEditScrubbarState"]
      729 NEWCLOSURE                       R106 P50
      730 CAPTURE                          VAL R94
      731 CAPTURE                          REF R65
      732 SETTABLEKS                       R106 R105 K93 ["resetPose"]
      734 NEWCLOSURE                       R106 P50
      735 CAPTURE                          VAL R97
      736 CAPTURE                          REF R65
      737 SETTABLEKS                       R106 R105 K94 ["endEditSession"]
      739 NEWCLOSURE                       R106 P50
      740 CAPTURE                          VAL R98
      741 CAPTURE                          REF R65
      742 SETTABLEKS                       R106 R105 K95 ["beginEditPreview"]
      744 NEWCLOSURE                       R106 P59
      745 CAPTURE                          VAL R11
      746 CAPTURE                          REF R64
      747 CAPTURE                          REF R65
      748 CAPTURE                          VAL R6
      749 CAPTURE                          REF R60
      750 CAPTURE                          VAL R88
      751 CAPTURE                          VAL R50
      752 CAPTURE                          REF R58
      753 CAPTURE                          VAL R78
      754 CAPTURE                          REF R53
      755 CAPTURE                          VAL R76
      756 CAPTURE                          VAL R45
      757 CAPTURE                          VAL R84
      758 CAPTURE                          VAL R85
      759 CAPTURE                          REF R61
      760 CAPTURE                          REF R63
      761 CAPTURE                          VAL R19
      762 CAPTURE                          VAL R99
      763 CAPTURE                          VAL R100
      764 CAPTURE                          VAL R89
      765 CAPTURE                          VAL R90
      766 CAPTURE                          VAL R91
      767 CAPTURE                          VAL R92
      768 CAPTURE                          VAL R93
      769 CAPTURE                          REF R59
      770 CAPTURE                          VAL R98
      771 CAPTURE                          VAL R102
      772 DUPTABLE                         R107 K100 [{"bridge", "destroy", "connectRemotes"}]
      773 SETTABLEKS                       R105 R107 K97 ["bridge"]
      775 SETTABLEKS                       R102 R107 K98 ["destroy"]
      777 SETTABLEKS                       R106 R107 K99 ["connectRemotes"]
      779 CLOSEUPVALS                      R51
      780 RETURN                           R107 1
