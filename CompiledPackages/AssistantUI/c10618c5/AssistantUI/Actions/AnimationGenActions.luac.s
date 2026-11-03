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
       71 CALL                             R7 2 3
       72 JUMPIFEQKNIL                     R9 ; [+2]
       74 RETURN                           R9 1
       75 GETTABLEKS                       R10 R0 K22 ["commitUpscalePreview"]
       77 JUMPIFNOT                        R10 ; [+19]
       78 GETTABLEKS                       R10 R0 K23 ["generationMode"]
       80 GETUPVAL                         R11 1
       81 GETTABLEKS                       R11 R11 K24 ["GenerationModes"]
       83 GETTABLEKS                       R11 R11 K25 ["Upscale"]
       85 JUMPIFNOTEQ                      R10 R11 ; [+11]
       87 GETUPVAL                         R10 3
       88 MOVE                             R11 R0
       89 MOVE                             R12 R1
       90 MOVE                             R13 R7
       91 MOVE                             R14 R8
       92 CALL                             R10 4 1
       93 DUPTABLE                         R11 K29 [{["rigInserted"], ["usedBackend"] = False}]
       94 SETTABLEKS                       R8 R11 K26 ["rigInserted"]
       96 RETURN                           R10 2
       97 GETTABLEKS                       R10 R0 K2 ["savedKeyframesContentId"]
       99 JUMPIF                           R10 ; [+4]
      100 GETTABLEKS                       R10 R0 K30 ["editSourceToolUseId"]
      102 JUMPIF                           R10 ; [+1]
      103 MOVE                             R10 R3
      104 GETUPVAL                         R12 4
      105 GETTABLE                         R11 R12 R10
      106 JUMPIFEQKNIL                     R11 ; [+7]
      108 GETUPVAL                         R12 5
      109 GETTABLEKS                       R12 R12 K31 ["getContent"]
      111 MOVE                             R13 R11
      112 CALL                             R12 1 1
      113 JUMP                             ; [+1]
      114 LOADNIL                          R12
      115 GETUPVAL                         R13 6
      116 MOVE                             R14 R12
      117 GETTABLEKS                       R15 R0 K32 ["inputAssetId"]
      119 GETTABLEKS                       R16 R0 K33 ["prompt"]
      121 CALL                             R13 3 1
      122 GETUPVAL                         R14 7
      123 MOVE                             R15 R0
      124 MOVE                             R16 R1
      125 MOVE                             R17 R7
      126 MOVE                             R18 R13
      127 JUMPIFEQKNIL                     R12 ; [+4]
      129 GETTABLEKS                       R19 R12 K34 ["keyframeSequence"]
      131 JUMP                             ; [+1]
      132 LOADNIL                          R19
      133 CALL                             R14 5 1
      134 JUMPIFEQKNIL                     R14 ; [+6]
      136 MOVE                             R15 R14
      137 DUPTABLE                         R16 K29 [{["rigInserted"], ["usedBackend"] = False}]
      138 SETTABLEKS                       R8 R16 K26 ["rigInserted"]
      140 RETURN                           R15 2
      141 JUMPIFEQKNIL                     R4 ; [+33]
      143 GETUPVAL                         R15 0
      144 GETTABLEKS                       R15 R15 K3 ["getSession"]
      146 MOVE                             R16 R4
      147 CALL                             R15 1 1
      148 JUMPIFNOTEQ                      R15 R5 ; [+7]
      150 JUMPIFEQKNIL                     R5 ; [+18]
      152 GETTABLEKS                       R15 R5 K4 ["revision"]
      154 JUMPIFEQ                         R15 R6 ; [+14]
      156 GETIMPORT                        R15 K7 [warn]
      158 LOADK                            R16 K35 ["[AnimationGen] Generate discarded an edit that changed while preparing its request"]
      159 CALL                             R15 1 0
      160 GETUPVAL                         R16 1
      161 GETTABLEKS                       R16 R16 K9 ["FailureReasons"]
      163 GETTABLEKS                       R16 R16 K10 ["GenerationFailed"]
      165 DUPTABLE                         R15 K16 [{["duration"] = 0, ["name"] = "", ["failureReason"]}]
      166 SETTABLEKS                       R16 R15 K15 ["failureReason"]
      168 RETURN                           R15 1
      169 GETUPVAL                         R15 0
      170 GETTABLEKS                       R15 R15 K36 ["discardSession"]
      172 MOVE                             R16 R4
      173 LOADK                            R17 K37 ["submitted"]
      174 CALL                             R15 2 0
      175 GETUPVAL                         R15 8
      176 GETTABLEKS                       R15 R15 K38 ["generateAnimationAsync"]
      178 DUPTABLE                         R16 K42 [{"prompt", "generationMode", "duration", "inputAssetId", "outputFileName", "priorJobId", "editSource", "onThoughtReceived"}]
      179 GETTABLEKS                       R17 R0 K33 ["prompt"]
      181 SETTABLEKS                       R17 R16 K33 ["prompt"]
      183 GETTABLEKS                       R17 R0 K23 ["generationMode"]
      185 SETTABLEKS                       R17 R16 K23 ["generationMode"]
      187 GETTABLEKS                       R17 R0 K11 ["duration"]
      189 SETTABLEKS                       R17 R16 K11 ["duration"]
      191 GETTABLEKS                       R17 R0 K32 ["inputAssetId"]
      193 SETTABLEKS                       R17 R16 K32 ["inputAssetId"]
      195 SETTABLEKS                       R13 R16 K39 ["outputFileName"]
      197 GETTABLEKS                       R17 R0 K18 ["priorJobId"]
      199 SETTABLEKS                       R17 R16 K18 ["priorJobId"]
      201 GETTABLEKS                       R17 R0 K40 ["editSource"]
      203 SETTABLEKS                       R17 R16 K40 ["editSource"]
      205 GETUPVAL                         R18 9
      206 GETTABLEKS                       R18 R18 K43 ["FFlagAssistantAnimationGenShowThoughts"]
      208 JUMPIFNOT                        R18 ; [+4]
      209 NEWCLOSURE                       R17 P0
      210 CAPTURE                          VAL R1
      211 CAPTURE                          VAL R3
      212 JUMP                             ; [+1]
      213 LOADNIL                          R17
      214 SETTABLEKS                       R17 R16 K41 ["onThoughtReceived"]
      216 MOVE                             R17 R2
      217 CALL                             R15 2 1
      218 GETUPVAL                         R16 10
      219 CALL                             R16 0 0
      220 GETTABLEKS                       R16 R15 K34 ["keyframeSequence"]
      222 GETTABLEKS                       R17 R15 K44 ["success"]
      224 JUMPIFNOT                        R17 ; [+30]
      225 JUMPIFEQKNIL                     R16 ; [+29]
      227 GETUPVAL                         R17 11
      228 LOADB                            R19 0
      229 NAMECALL                         R17 R17 K45 ["GenerateGUID"]
      231 CALL                             R17 2 1
      232 GETTABLEKS                       R18 R2 K46 ["startRecording"]
      234 MOVE                             R19 R17
      235 LOADK                            R20 K47 ["Insert Generated Animation"]
      236 CALL                             R18 2 0
      237 JUMPIFNOT                        R8 ; [+5]
      238 GETUPVAL                         R18 12
      239 GETIMPORT                        R19 K51 [Enum.HumanoidRigType.R15]
      241 CALL                             R18 1 1
      242 MOVE                             R7 R18
      243 JUMPIFEQKNIL                     R7 ; [+7]
      245 GETUPVAL                         R18 8
      246 GETTABLEKS                       R18 R18 K52 ["saveKeyframeSequence"]
      248 MOVE                             R19 R16
      249 MOVE                             R20 R7
      250 CALL                             R18 2 0
      251 GETTABLEKS                       R18 R2 K53 ["endRecording"]
      253 MOVE                             R19 R17
      254 CALL                             R18 1 0
      255 GETTABLEKS                       R17 R15 K44 ["success"]
      257 JUMPIFNOT                        R17 ; [+2]
      258 JUMPIFNOTEQKNIL                  R16 ; [+26]
      260 GETTABLEKS                       R17 R15 K15 ["failureReason"]
      262 JUMPIF                           R17 ; [+5]
      263 GETUPVAL                         R17 1
      264 GETTABLEKS                       R17 R17 K9 ["FailureReasons"]
      266 GETTABLEKS                       R17 R17 K10 ["GenerationFailed"]
      268 DUPTABLE                         R18 K16 [{["duration"] = 0, ["name"] = "", ["failureReason"]}]
      269 SETTABLEKS                       R17 R18 K15 ["failureReason"]
      271 DUPTABLE                         R19 K55 [{["rigInserted"] = False, ["usedBackend"], ["errorMessage"]}]
      272 GETTABLEKS                       R21 R15 K15 ["failureReason"]
      274 JUMPIFEQKNIL                     R21 ; [+2]
      276 LOADB                            R20 0 +1
      277 LOADB                            R20 1
      278 SETTABLEKS                       R20 R19 K27 ["usedBackend"]
      280 GETTABLEKS                       R20 R15 K54 ["errorMessage"]
      282 SETTABLEKS                       R20 R19 K54 ["errorMessage"]
      284 RETURN                           R18 2
      285 JUMPIFNOTEQKNIL                  R7 ; [+11]
      287 GETUPVAL                         R18 1
      288 GETTABLEKS                       R18 R18 K9 ["FailureReasons"]
      290 GETTABLEKS                       R18 R18 K56 ["RigInsertFailed"]
      292 DUPTABLE                         R17 K16 [{["duration"] = 0, ["name"] = "", ["failureReason"]}]
      293 SETTABLEKS                       R18 R17 K15 ["failureReason"]
      295 DUPTABLE                         R18 K58 [{["rigInserted"] = False, ["usedBackend"] = True}]
      296 RETURN                           R17 2
      297 DUPTABLE                         R17 K60 [{"keyframeSequence", "isUpscale"}]
      298 SETTABLEKS                       R16 R17 K34 ["keyframeSequence"]
      300 GETTABLEKS                       R19 R0 K32 ["inputAssetId"]
      302 JUMPIFEQKNIL                     R19 ; [+6]
      304 LOADB                            R18 1
      305 GETTABLEKS                       R19 R0 K32 ["inputAssetId"]
      307 JUMPIFNOTEQKS                    R19 K14 [""] ; [+12]
      309 GETTABLEKS                       R19 R0 K40 ["editSource"]
      311 GETUPVAL                         R20 1
      312 GETTABLEKS                       R20 R20 K24 ["GenerationModes"]
      314 GETTABLEKS                       R20 R20 K25 ["Upscale"]
      316 JUMPIFEQ                         R19 R20 ; [+2]
      318 LOADB                            R18 0 +1
      319 LOADB                            R18 1
      320 SETTABLEKS                       R18 R17 K59 ["isUpscale"]
      322 GETUPVAL                         R18 13
      323 MOVE                             R19 R3
      324 MOVE                             R20 R1
      325 MOVE                             R21 R17
      326 MOVE                             R22 R7
      327 MOVE                             R23 R8
      328 CALL                             R18 5 0
      329 GETUPVAL                         R18 14
      330 MOVE                             R19 R0
      331 MOVE                             R20 R1
      332 MOVE                             R21 R7
      333 MOVE                             R22 R17
      334 MOVE                             R23 R15
      335 CALL                             R18 5 1
      336 DUPTABLE                         R19 K61 [{["rigInserted"], ["usedBackend"] = True}]
      337 SETTABLEKS                       R8 R19 K26 ["rigInserted"]
      339 RETURN                           R18 2

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

PROTO_30:
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

PROTO_31:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getCardSnapshot"]
        3 GETTABLEKS                       R3 R0 K1 ["toolUseId"]
        5 CALL                             R2 1 1
        6 RETURN                           R2 1

PROTO_32:
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

PROTO_33:
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

PROTO_34:
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

PROTO_35:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["insertPose"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_36:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["deletePose"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_37:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["movePose"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_38:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resizePose"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_39:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getEditScrubbarState"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_40:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resetPose"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_41:
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

PROTO_42:
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

PROTO_43:
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

PROTO_44:
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

PROTO_45:
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

PROTO_46:
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

PROTO_47:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["runUndoableEdit"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_48:
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

PROTO_49:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["renderPreviewPose"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_50:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isRetargetingEnabled"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["getPlaybackContentId"]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

PROTO_51:
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

PROTO_52:
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

PROTO_53:
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

PROTO_54:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 DUPTABLE                         R1 K2 [{"environment", "callbacks"}]
        3 GETTABLEKS                       R2 R0 K3 ["initArgs"]
        5 GETTABLEKS                       R2 R2 K0 ["environment"]
        7 SETTABLEKS                       R2 R1 K0 ["environment"]
        9 GETTABLEKS                       R2 R0 K4 ["bridge"]
       11 SETTABLEKS                       R2 R1 K1 ["callbacks"]
       13 RETURN                           R1 1

PROTO_55:
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

PROTO_56:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 RETURN                           R1 1

PROTO_57:
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

PROTO_58:
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

PROTO_59:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["clearClipToUpscalePreview"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_60:
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

PROTO_61:
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

PROTO_62:
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

PROTO_63:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["animationHistoryChanged"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["Fire"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_64:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["playbackStateChanged"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["Fire"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_65:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["thoughtReceived"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["Fire"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_66:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["poseDeselected"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["Fire"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_67:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["poseEdited"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["Fire"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_68:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 DUPTABLE                         R1 K2 [{"environment", "callbacks"}]
        3 GETUPVAL                         R2 1
        4 SETTABLEKS                       R2 R1 K0 ["environment"]
        6 DUPTABLE                         R2 K8 [{"animationHistoryChanged", "playbackStateChanged", "thoughtReceived", "poseDeselected", "poseEdited"}]
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
       32 SETTABLEKS                       R2 R1 K1 ["callbacks"]
       34 RETURN                           R1 1

PROTO_69:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["getCardSnapshot"]
        6 GETTABLEKS                       R5 R1 K1 ["toolUseId"]
        8 CALL                             R4 1 1
        9 MOVE                             R2 R4
       10 RETURN                           R2 1

PROTO_70:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 CALL                             R2 2 1
        6 RETURN                           R2 1

PROTO_71:
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

PROTO_72:
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

PROTO_73:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["getPlaybackState"]
        6 GETTABLEKS                       R5 R1 K1 ["toolUseId"]
        8 CALL                             R4 1 1
        9 MOVE                             R2 R4
       10 RETURN                           R2 1

PROTO_74:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 CALL                             R2 2 1
        6 RETURN                           R2 1

PROTO_75:
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

PROTO_76:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 CALL                             R1 1 1
        5 RETURN                           R1 1

PROTO_77:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_78:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_79:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["previewClipToUpscaleAsync"]
        3 MOVE                             R3 R1
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R0
        6 CALL                             R4 1 1
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_80:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+5]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["clearClipToUpscalePreview"]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_81:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["insertClipToUpscalePreviewRigAsync"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

PROTO_82:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["generateUpscalePreviewAsync"]
        3 MOVE                             R3 R1
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R0
        6 CALL                             R4 1 1
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_83:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["updateUpscalePreview"]
        3 MOVE                             R3 R1
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R0
        6 CALL                             R4 1 1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_84:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

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
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_87:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_88:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_89:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_90:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_91:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["resetPose"]
        6 MOVE                             R4 R1
        7 MOVE                             R5 R2
        8 CALL                             R3 2 0
        9 RETURN                           R0 0

PROTO_92:
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

PROTO_93:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_94:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 LOADB                            R0 1
        7 SETUPVAL                         R0 2
        8 RETURN                           R0 0

PROTO_95:
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
      161 GETTABLEKS                       R7 R2 K16 ["generateUpscalePreview"]
      163 NEWCLOSURE                       R9 P14
      164 CAPTURE                          UPVAL U14
      165 CAPTURE                          VAL R3
      166 NAMECALL                         R7 R7 K2 ["Connect"]
      168 CALL                             R7 2 -1
      169 NAMECALL                         R5 R4 K3 ["Add"]
      171 CALL                             R5 -1 0
      172 GETTABLEKS                       R7 R2 K17 ["updateUpscalePreview"]
      174 NEWCLOSURE                       R9 P15
      175 CAPTURE                          UPVAL U14
      176 CAPTURE                          VAL R3
      177 NAMECALL                         R7 R7 K2 ["Connect"]
      179 CALL                             R7 2 -1
      180 NAMECALL                         R5 R4 K3 ["Add"]
      182 CALL                             R5 -1 0
      183 GETTABLEKS                       R7 R2 K18 ["openInAnimationClipEditor"]
      185 NEWCLOSURE                       R9 P16
      186 CAPTURE                          UPVAL U16
      187 CAPTURE                          VAL R3
      188 NAMECALL                         R7 R7 K2 ["Connect"]
      190 CALL                             R7 2 -1
      191 NAMECALL                         R5 R4 K3 ["Add"]
      193 CALL                             R5 -1 0
      194 GETTABLEKS                       R7 R2 K19 ["publishAnimation"]
      196 NEWCLOSURE                       R9 P17
      197 CAPTURE                          UPVAL U17
      198 CAPTURE                          VAL R3
      199 NAMECALL                         R7 R7 K2 ["Connect"]
      201 CALL                             R7 2 -1
      202 NAMECALL                         R5 R4 K3 ["Add"]
      204 CALL                             R5 -1 0
      205 GETTABLEKS                       R7 R2 K20 ["insertPose"]
      207 NEWCLOSURE                       R9 P18
      208 CAPTURE                          UPVAL U18
      209 CAPTURE                          VAL R3
      210 NAMECALL                         R7 R7 K2 ["Connect"]
      212 CALL                             R7 2 -1
      213 NAMECALL                         R5 R4 K3 ["Add"]
      215 CALL                             R5 -1 0
      216 GETTABLEKS                       R7 R2 K21 ["deletePose"]
      218 NEWCLOSURE                       R9 P19
      219 CAPTURE                          UPVAL U19
      220 CAPTURE                          VAL R3
      221 NAMECALL                         R7 R7 K2 ["Connect"]
      223 CALL                             R7 2 -1
      224 NAMECALL                         R5 R4 K3 ["Add"]
      226 CALL                             R5 -1 0
      227 GETTABLEKS                       R7 R2 K22 ["movePose"]
      229 NEWCLOSURE                       R9 P20
      230 CAPTURE                          UPVAL U20
      231 CAPTURE                          VAL R3
      232 NAMECALL                         R7 R7 K2 ["Connect"]
      234 CALL                             R7 2 -1
      235 NAMECALL                         R5 R4 K3 ["Add"]
      237 CALL                             R5 -1 0
      238 GETTABLEKS                       R7 R2 K23 ["resizePose"]
      240 NEWCLOSURE                       R9 P21
      241 CAPTURE                          UPVAL U21
      242 CAPTURE                          VAL R3
      243 NAMECALL                         R7 R7 K2 ["Connect"]
      245 CALL                             R7 2 -1
      246 NAMECALL                         R5 R4 K3 ["Add"]
      248 CALL                             R5 -1 0
      249 GETTABLEKS                       R7 R2 K24 ["getEditScrubbarState"]
      251 NEWCLOSURE                       R9 P22
      252 CAPTURE                          UPVAL U22
      253 CAPTURE                          VAL R3
      254 NAMECALL                         R7 R7 K2 ["Connect"]
      256 CALL                             R7 2 -1
      257 NAMECALL                         R5 R4 K3 ["Add"]
      259 CALL                             R5 -1 0
      260 GETTABLEKS                       R7 R2 K25 ["resetPose"]
      262 NEWCLOSURE                       R9 P23
      263 CAPTURE                          VAL R3
      264 CAPTURE                          UPVAL U23
      265 NAMECALL                         R7 R7 K2 ["Connect"]
      267 CALL                             R7 2 -1
      268 NAMECALL                         R5 R4 K3 ["Add"]
      270 CALL                             R5 -1 0
      271 GETTABLEKS                       R7 R2 K26 ["endEditSession"]
      273 NEWCLOSURE                       R9 P24
      274 CAPTURE                          VAL R3
      275 CAPTURE                          UPVAL U7
      276 NAMECALL                         R7 R7 K2 ["Connect"]
      278 CALL                             R7 2 -1
      279 NAMECALL                         R5 R4 K3 ["Add"]
      281 CALL                             R5 -1 0
      282 GETTABLEKS                       R7 R2 K27 ["beginEditPreview"]
      284 NEWCLOSURE                       R9 P25
      285 CAPTURE                          UPVAL U24
      286 CAPTURE                          VAL R3
      287 NAMECALL                         R7 R7 K2 ["Connect"]
      289 CALL                             R7 2 -1
      290 NAMECALL                         R5 R4 K3 ["Add"]
      292 CALL                             R5 -1 0
      293 GETTABLEKS                       R5 R1 K28 ["Destroying"]
      295 NEWCLOSURE                       R7 P26
      296 CAPTURE                          VAL R4
      297 CAPTURE                          UPVAL U25
      298 CAPTURE                          UPVAL U1
      299 NAMECALL                         R5 R5 K29 ["Once"]
      301 CALL                             R5 2 0
      302 RETURN                           R0 0

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
      415 CAPTURE                          VAL R38
      416 NEWCLOSURE                       R74 P18
      417 CAPTURE                          REF R58
      418 CAPTURE                          VAL R13
      419 CAPTURE                          VAL R73
      420 CAPTURE                          VAL R71
      421 CAPTURE                          VAL R50
      422 CAPTURE                          VAL R16
      423 CAPTURE                          VAL R48
      424 CAPTURE                          VAL R70
      425 CAPTURE                          REF R52
      426 CAPTURE                          VAL R19
      427 CAPTURE                          REF R65
      428 CAPTURE                          VAL R1
      429 CAPTURE                          VAL R37
      430 CAPTURE                          VAL R68
      431 CAPTURE                          VAL R49
      432 NEWCLOSURE                       R75 P19
      433 CAPTURE                          REF R54
      434 NEWCLOSURE                       R76 P20
      435 CAPTURE                          VAL R13
      436 CAPTURE                          REF R58
      437 CAPTURE                          REF R60
      438 CAPTURE                          VAL R75
      439 CAPTURE                          VAL R74
      440 CAPTURE                          VAL R50
      441 CAPTURE                          VAL R12
      442 CAPTURE                          REF R53
      443 CAPTURE                          VAL R43
      444 NEWCLOSURE                       R77 P21
      445 CAPTURE                          REF R60
      446 NEWCLOSURE                       R78 P22
      447 CAPTURE                          VAL R50
      448 CAPTURE                          REF R57
      449 CAPTURE                          VAL R10
      450 CAPTURE                          VAL R1
      451 CAPTURE                          REF R52
      452 NEWCLOSURE                       R79 P23
      453 CAPTURE                          REF R53
      454 NEWCLOSURE                       R80 P24
      455 CAPTURE                          VAL R50
      456 CAPTURE                          REF R53
      457 CAPTURE                          VAL R43
      458 CAPTURE                          VAL R78
      459 CAPTURE                          REF R57
      460 CAPTURE                          REF R56
      461 NEWCLOSURE                       R81 P25
      462 CAPTURE                          VAL R50
      463 CAPTURE                          VAL R78
      464 CAPTURE                          REF R57
      465 CAPTURE                          REF R56
      466 CAPTURE                          REF R53
      467 CAPTURE                          VAL R43
      468 NEWCLOSURE                       R82 P26
      469 CAPTURE                          REF R60
      470 NEWCLOSURE                       R83 P27
      471 CAPTURE                          VAL R50
      472 CAPTURE                          REF R53
      473 CAPTURE                          VAL R43
      474 NEWCLOSURE                       R84 P28
      475 CAPTURE                          REF R60
      476 CAPTURE                          VAL R50
      477 CAPTURE                          REF R53
      478 CAPTURE                          VAL R83
      479 CAPTURE                          VAL R81
      480 CAPTURE                          VAL R80
      481 NEWCLOSURE                       R85 P29
      482 CAPTURE                          REF R59
      483 NEWCLOSURE                       R86 P30
      484 CAPTURE                          REF R59
      485 NEWCLOSURE                       R87 P31
      486 CAPTURE                          REF R59
      487 NEWCLOSURE                       R88 P32
      488 CAPTURE                          REF R59
      489 NEWCLOSURE                       R89 P33
      490 CAPTURE                          REF R59
      491 NEWCLOSURE                       R90 P34
      492 CAPTURE                          REF R59
      493 NEWCLOSURE                       R91 P35
      494 CAPTURE                          REF R60
      495 CAPTURE                          VAL R50
      496 CAPTURE                          REF R58
      497 CAPTURE                          VAL R78
      498 NEWCLOSURE                       R92 P36
      499 CAPTURE                          REF R58
      500 NEWCLOSURE                       R93 P37
      501 CAPTURE                          REF R58
      502 NEWCLOSURE                       R94 P38
      503 CAPTURE                          REF R56
      504 CAPTURE                          VAL R50
      505 CAPTURE                          REF R58
      506 CAPTURE                          REF R57
      507 CAPTURE                          VAL R39
      508 NEWCLOSURE                       R95 P39
      509 CAPTURE                          VAL R78
      510 CAPTURE                          REF R55
      511 CAPTURE                          REF R60
      512 CAPTURE                          VAL R12
      513 NEWCLOSURE                       R96 P40
      514 CAPTURE                          VAL R19
      515 CAPTURE                          VAL R78
      516 CAPTURE                          VAL R50
      517 CAPTURE                          REF R60
      518 CAPTURE                          VAL R12
      519 NEWCLOSURE                       R97 P41
      520 CAPTURE                          REF R51
      521 CAPTURE                          VAL R34
      522 CAPTURE                          REF R52
      523 CAPTURE                          VAL R33
      524 CAPTURE                          REF R53
      525 CAPTURE                          VAL R31
      526 CAPTURE                          VAL R50
      527 CAPTURE                          REF R54
      528 CAPTURE                          VAL R32
      529 CAPTURE                          REF R58
      530 CAPTURE                          REF R57
      531 CAPTURE                          REF R55
      532 CAPTURE                          VAL R26
      533 CAPTURE                          REF R56
      534 CAPTURE                          VAL R36
      535 CAPTURE                          VAL R28
      536 CAPTURE                          VAL R43
      537 CAPTURE                          VAL R29
      538 CAPTURE                          REF R59
      539 CAPTURE                          VAL R35
      540 CAPTURE                          VAL R66
      541 CAPTURE                          REF R60
      542 CAPTURE                          VAL R30
      543 CAPTURE                          REF R61
      544 CAPTURE                          VAL R27
      545 CAPTURE                          VAL R72
      546 CAPTURE                          VAL R6
      547 CAPTURE                          REF R62
      548 CAPTURE                          REF R63
      549 NEWCLOSURE                       R65 P42
      550 CAPTURE                          REF R63
      551 CAPTURE                          REF R64
      552 CAPTURE                          VAL R97
      553 NEWCLOSURE                       R98 P43
      554 CAPTURE                          REF R63
      555 CAPTURE                          REF R62
      556 CAPTURE                          REF R55
      557 CAPTURE                          REF R61
      558 CAPTURE                          REF R53
      559 CAPTURE                          REF R51
      560 CAPTURE                          REF R58
      561 CAPTURE                          REF R54
      562 CAPTURE                          VAL R50
      563 CAPTURE                          VAL R66
      564 CAPTURE                          VAL R16
      565 CAPTURE                          REF R60
      566 CAPTURE                          REF R57
      567 CAPTURE                          REF R56
      568 NEWCLOSURE                       R99 P44
      569 CAPTURE                          REF R65
      570 NEWCLOSURE                       R100 P45
      571 CAPTURE                          REF R65
      572 DUPTABLE                         R101 K93 [{"getAnimationCardState", "selectAnimationVersion", "prepareAnimationEdit", "resolveGenerationSource", "getPlaybackState", "generateAndSaveAnimationAsync", "discardEditAnimationPreview", "getSelectedRigRef", "setIsPlaying", "setCurrentTime", "previewClipToUpscaleAsync", "clearClipToUpscalePreview", "insertClipToUpscalePreviewRigAsync", "generateUpscalePreviewAsync", "updateUpscalePreview", "openInAnimationClipEditor", "publishAnimation", "insertPose", "deletePose", "movePose", "resizePose", "getEditScrubbarState", "resetPose", "endEditSession", "beginEditPreview"}]
      573 NEWCLOSURE                       R102 P46
      574 CAPTURE                          VAL R82
      575 CAPTURE                          REF R65
      576 SETTABLEKS                       R102 R101 K68 ["getAnimationCardState"]
      578 NEWCLOSURE                       R102 P46
      579 CAPTURE                          VAL R84
      580 CAPTURE                          REF R65
      581 SETTABLEKS                       R102 R101 K69 ["selectAnimationVersion"]
      583 NEWCLOSURE                       R102 P46
      584 CAPTURE                          VAL R91
      585 CAPTURE                          REF R65
      586 SETTABLEKS                       R102 R101 K70 ["prepareAnimationEdit"]
      588 NEWCLOSURE                       R102 P46
      589 CAPTURE                          VAL R77
      590 CAPTURE                          REF R65
      591 SETTABLEKS                       R102 R101 K71 ["resolveGenerationSource"]
      593 NEWCLOSURE                       R102 P46
      594 CAPTURE                          VAL R79
      595 CAPTURE                          REF R65
      596 SETTABLEKS                       R102 R101 K72 ["getPlaybackState"]
      598 NEWCLOSURE                       R102 P46
      599 CAPTURE                          VAL R76
      600 CAPTURE                          REF R65
      601 SETTABLEKS                       R102 R101 K73 ["generateAndSaveAnimationAsync"]
      603 NEWCLOSURE                       R102 P46
      604 CAPTURE                          VAL R92
      605 CAPTURE                          REF R65
      606 SETTABLEKS                       R102 R101 K74 ["discardEditAnimationPreview"]
      608 NEWCLOSURE                       R102 P47
      609 CAPTURE                          VAL R45
      610 CAPTURE                          REF R65
      611 SETTABLEKS                       R102 R101 K75 ["getSelectedRigRef"]
      613 NEWCLOSURE                       R102 P46
      614 CAPTURE                          VAL R80
      615 CAPTURE                          REF R65
      616 SETTABLEKS                       R102 R101 K76 ["setIsPlaying"]
      618 NEWCLOSURE                       R102 P46
      619 CAPTURE                          VAL R81
      620 CAPTURE                          REF R65
      621 SETTABLEKS                       R102 R101 K77 ["setCurrentTime"]
      623 NEWCLOSURE                       R102 P48
      624 CAPTURE                          REF R61
      625 CAPTURE                          REF R65
      626 SETTABLEKS                       R102 R101 K78 ["previewClipToUpscaleAsync"]
      628 NEWCLOSURE                       R102 P49
      629 CAPTURE                          REF R63
      630 CAPTURE                          REF R61
      631 SETTABLEKS                       R102 R101 K79 ["clearClipToUpscalePreview"]
      633 NEWCLOSURE                       R102 P50
      634 CAPTURE                          REF R61
      635 CAPTURE                          REF R65
      636 SETTABLEKS                       R102 R101 K80 ["insertClipToUpscalePreviewRigAsync"]
      638 NEWCLOSURE                       R102 P51
      639 CAPTURE                          REF R61
      640 CAPTURE                          REF R65
      641 SETTABLEKS                       R102 R101 K81 ["generateUpscalePreviewAsync"]
      643 NEWCLOSURE                       R102 P52
      644 CAPTURE                          REF R61
      645 CAPTURE                          REF R65
      646 SETTABLEKS                       R102 R101 K82 ["updateUpscalePreview"]
      648 NEWCLOSURE                       R102 P46
      649 CAPTURE                          VAL R95
      650 CAPTURE                          REF R65
      651 SETTABLEKS                       R102 R101 K83 ["openInAnimationClipEditor"]
      653 NEWCLOSURE                       R102 P46
      654 CAPTURE                          VAL R96
      655 CAPTURE                          REF R65
      656 SETTABLEKS                       R102 R101 K84 ["publishAnimation"]
      658 NEWCLOSURE                       R102 P46
      659 CAPTURE                          VAL R85
      660 CAPTURE                          REF R65
      661 SETTABLEKS                       R102 R101 K85 ["insertPose"]
      663 NEWCLOSURE                       R102 P46
      664 CAPTURE                          VAL R86
      665 CAPTURE                          REF R65
      666 SETTABLEKS                       R102 R101 K86 ["deletePose"]
      668 NEWCLOSURE                       R102 P46
      669 CAPTURE                          VAL R87
      670 CAPTURE                          REF R65
      671 SETTABLEKS                       R102 R101 K87 ["movePose"]
      673 NEWCLOSURE                       R102 P46
      674 CAPTURE                          VAL R88
      675 CAPTURE                          REF R65
      676 SETTABLEKS                       R102 R101 K88 ["resizePose"]
      678 NEWCLOSURE                       R102 P46
      679 CAPTURE                          VAL R89
      680 CAPTURE                          REF R65
      681 SETTABLEKS                       R102 R101 K89 ["getEditScrubbarState"]
      683 NEWCLOSURE                       R102 P46
      684 CAPTURE                          VAL R90
      685 CAPTURE                          REF R65
      686 SETTABLEKS                       R102 R101 K90 ["resetPose"]
      688 NEWCLOSURE                       R102 P46
      689 CAPTURE                          VAL R93
      690 CAPTURE                          REF R65
      691 SETTABLEKS                       R102 R101 K91 ["endEditSession"]
      693 NEWCLOSURE                       R102 P46
      694 CAPTURE                          VAL R94
      695 CAPTURE                          REF R65
      696 SETTABLEKS                       R102 R101 K92 ["beginEditPreview"]
      698 NEWCLOSURE                       R102 P53
      699 CAPTURE                          VAL R11
      700 CAPTURE                          REF R64
      701 CAPTURE                          REF R65
      702 CAPTURE                          VAL R6
      703 CAPTURE                          REF R60
      704 CAPTURE                          VAL R84
      705 CAPTURE                          VAL R50
      706 CAPTURE                          REF R58
      707 CAPTURE                          VAL R78
      708 CAPTURE                          REF R53
      709 CAPTURE                          VAL R76
      710 CAPTURE                          VAL R45
      711 CAPTURE                          VAL R80
      712 CAPTURE                          VAL R81
      713 CAPTURE                          REF R61
      714 CAPTURE                          REF R63
      715 CAPTURE                          VAL R95
      716 CAPTURE                          VAL R96
      717 CAPTURE                          VAL R85
      718 CAPTURE                          VAL R86
      719 CAPTURE                          VAL R87
      720 CAPTURE                          VAL R88
      721 CAPTURE                          VAL R89
      722 CAPTURE                          REF R59
      723 CAPTURE                          VAL R94
      724 CAPTURE                          VAL R98
      725 DUPTABLE                         R103 K97 [{"bridge", "destroy", "connectRemotes"}]
      726 SETTABLEKS                       R101 R103 K94 ["bridge"]
      728 SETTABLEKS                       R98 R103 K95 ["destroy"]
      730 SETTABLEKS                       R102 R103 K96 ["connectRemotes"]
      732 CLOSEUPVALS                      R51
      733 RETURN                           R103 1
