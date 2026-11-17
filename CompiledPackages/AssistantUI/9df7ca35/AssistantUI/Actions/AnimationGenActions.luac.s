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
        7 GETTABLEKS                       R4 R0 K0 ["instances"]
        9 GETTABLEKS                       R4 R4 K1 ["getUniqueId"]
       11 MOVE                             R5 R1
       12 FASTPCALL                        pcall 2 ; [+2]
       13 GETIMPORT                        R3 K3 [pcall]
       15 CALL                             R3 2 2
       16 JUMPIFNOT                        R3 ; [+8]
       17 JUMPIFEQKNIL                     R4 ; [+7]
       19 FASTCALL1                        TOSTRING R4 ; [+3]
       20 MOVE                             R6 R4
       21 GETIMPORT                        R5 K5 [tostring]
       23 CALL                             R5 1 1
       24 RETURN                           R5 1
       25 LOADNIL                          R5
       26 RETURN                           R5 1

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
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantAnimationGenTrackMcpPublish"]
        3 JUMPIFNOT                        R1 ; [+10]
        4 GETIMPORT                        R1 K3 [string.lower]
        6 GETUPVAL                         R2 1
        7 LOADB                            R4 0
        8 NAMECALL                         R2 R2 K4 ["GenerateGUID"]
       10 CALL                             R2 2 -1
       11 CALL                             R1 -1 1
       12 SETTABLEKS                       R1 R0 K5 ["Guid"]
       14 RETURN                           R0 0

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["Clone"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["FFlagAssistantAnimationGenTrackMcpPublish"]
        6 JUMPIFNOT                        R2 ; [+4]
        7 GETTABLEKS                       R2 R0 K2 ["Guid"]
        9 SETTABLEKS                       R2 R1 K2 ["Guid"]
       11 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["callbacks"]
        3 GETTABLEKS                       R1 R1 K1 ["playbackStateChanged"]
        5 DUPTABLE                         R2 K4 [{"toolUseId", "state"}]
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K2 ["toolUseId"]
        9 SETTABLEKS                       R0 R2 K3 ["state"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETIMPORT                        R3 K3 [Enum.InfoType.Asset]
        4 NAMECALL                         R0 R0 K4 ["GetProductInfoAsync"]
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_12:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R1 K1 [pcall]
        6 CALL                             R1 1 2
        7 JUMPIF                           R1 ; [+2]
        8 LOADNIL                          R3
        9 RETURN                           R3 1
       10 GETTABLEKS                       R3 R2 K2 ["Name"]
       12 JUMPIFNOTEQKS                    R3 K3 [""] ; [+3]
       14 LOADNIL                          R4
       15 RETURN                           R4 1
       16 RETURN                           R3 1

PROTO_13:
        0 LOADNIL                          R3
        1 JUMPIFEQKNIL                     R0 ; [+10]
        3 GETTABLEKS                       R4 R0 K0 ["keyframeSequence"]
        5 JUMPIFEQKNIL                     R4 ; [+6]
        7 GETTABLEKS                       R4 R0 K0 ["keyframeSequence"]
        9 GETTABLEKS                       R3 R4 K1 ["Name"]
       11 JUMP                             ; [+31]
       12 JUMPIFEQKNIL                     R1 ; [+30]
       14 LOADK                            R6 K2 ["%d+"]
       15 NAMECALL                         R4 R1 K3 ["match"]
       17 CALL                             R4 2 1
       18 JUMPIFEQKNIL                     R4 ; [+24]
       20 FASTCALL1                        TONUMBER R4 ; [+3]
       21 MOVE                             R7 R4
       22 GETIMPORT                        R6 K5 [tonumber]
       24 CALL                             R6 1 1
       25 NEWCLOSURE                       R8 P0
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          VAL R6
       28 FASTPCALL                        pcall 1 ; [+2]
       29 GETIMPORT                        R7 K7 [pcall]
       31 CALL                             R7 1 2
       32 JUMPIF                           R7 ; [+2]
       33 LOADNIL                          R5
       34 JUMP                             ; [+7]
       35 GETTABLEKS                       R9 R8 K1 ["Name"]
       37 JUMPIFNOTEQKS                    R9 K8 [""] ; [+3]
       39 LOADNIL                          R5
       40 JUMP                             ; [+1]
       41 MOVE                             R5 R9
       42 OR                               R3 R5 R4
       43 JUMPIFNOTEQKNIL                  R3 ; [+7]
       45 GETUPVAL                         R4 1
       46 GETTABLEKS                       R4 R4 K9 ["computeBaseNameFromPrompt"]
       48 MOVE                             R5 R2
       49 CALL                             R4 1 -1
       50 RETURN                           R4 -1
       51 GETUPVAL                         R4 1
       52 GETTABLEKS                       R4 R4 K10 ["computeNextVersionedName"]
       54 MOVE                             R5 R3
       55 GETUPVAL                         R6 2
       56 CALL                             R6 0 1
       57 CALL                             R4 2 -1
       58 RETURN                           R4 -1

PROTO_14:
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
       37 JUMP                             ; [+24]
       38 JUMPIFNOTEQKNIL                  R2 ; [+3]
       40 LOADNIL                          R7
       41 JUMP                             ; [+20]
       42 GETTABLEKS                       R11 R8 K16 ["instances"]
       44 GETTABLEKS                       R11 R11 K17 ["getUniqueId"]
       46 MOVE                             R12 R2
       47 FASTPCALL                        pcall 2 ; [+2]
       48 GETIMPORT                        R10 K19 [pcall]
       50 CALL                             R10 2 2
       51 JUMPIFNOT                        R10 ; [+9]
       52 JUMPIFEQKNIL                     R11 ; [+8]
       54 FASTCALL1                        TOSTRING R11 ; [+3]
       55 MOVE                             R13 R11
       56 GETIMPORT                        R12 K21 [tostring]
       58 CALL                             R12 1 1
       59 MOVE                             R7 R12
       60 JUMP                             ; [+1]
       61 LOADNIL                          R7
       62 SETTABLEKS                       R7 R6 K9 ["rigUniqueId"]
       64 NAMECALL                         R7 R5 K22 ["GetFullName"]
       66 CALL                             R7 1 1
       67 SETTABLEKS                       R7 R6 K10 ["clipPath"]
       69 NAMECALL                         R7 R2 K22 ["GetFullName"]
       71 CALL                             R7 1 1
       72 SETTABLEKS                       R7 R6 K11 ["rigPath"]
       74 RETURN                           R6 1

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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
       17 GETUPVAL                         R8 1
       18 GETTABLEKS                       R8 R8 K6 ["FFlagAssistantAnimationGenTrackMcpPublish"]
       20 JUMPIFNOT                        R8 ; [+4]
       21 GETTABLEKS                       R8 R5 K7 ["Guid"]
       23 SETTABLEKS                       R8 R7 K7 ["Guid"]
       25 SETTABLEKS                       R7 R6 K8 ["undoSafeKeyframeSequence"]
       27 GETUPVAL                         R7 2
       28 SETTABLE                         R6 R7 R0
       29 GETUPVAL                         R7 3
       30 GETTABLEKS                       R7 R7 K9 ["setAnimation"]
       32 GETUPVAL                         R8 4
       33 MOVE                             R9 R0
       34 MOVE                             R10 R1
       35 CALL                             R8 2 1
       36 CALL                             R7 1 0
       37 JUMPIFNOT                        R4 ; [+12]
       38 GETTABLEKS                       R7 R1 K10 ["environment"]
       40 GETTABLEKS                       R7 R7 K11 ["selection"]
       42 GETTABLEKS                       R7 R7 K12 ["set"]
       44 NEWTABLE                         R8 0 1
       46 MOVE                             R9 R3
       47 SETLIST                          R8 R9 1 [1]
       49 CALL                             R7 1 0
       50 RETURN                           R0 0

PROTO_18:
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
       24 GETTABLEKS                       R9 R9 K5 ["FFlagAssistantAnimationGenTrackMcpPublish"]
       26 JUMPIFNOT                        R9 ; [+10]
       27 GETIMPORT                        R9 K8 [string.lower]
       29 GETUPVAL                         R10 0
       30 LOADB                            R12 0
       31 NAMECALL                         R10 R10 K0 ["GenerateGUID"]
       33 CALL                             R10 2 -1
       34 CALL                             R9 -1 1
       35 SETTABLEKS                       R9 R3 K9 ["Guid"]
       37 GETUPVAL                         R9 3
       38 GETTABLEKS                       R9 R9 K10 ["saveKeyframeSequence"]
       40 MOVE                             R10 R3
       41 MOVE                             R11 R2
       42 CALL                             R9 2 0
       43 GETTABLEKS                       R9 R7 K11 ["endRecording"]
       45 MOVE                             R10 R8
       46 CALL                             R9 1 0
       47 DUPTABLE                         R9 K14 [{"keyframeSequence", "isUpscale"}]
       48 SETTABLEKS                       R3 R9 K12 ["keyframeSequence"]
       50 SETTABLEKS                       R5 R9 K13 ["isUpscale"]
       52 GETTABLEKS                       R10 R0 K15 ["toolUseId"]
       54 GETTABLEKS                       R12 R9 K12 ["keyframeSequence"]
       56 FASTCALL2K                       ASSERT R12 K16 ; [+4]
       58 LOADK                            R13 K16 ["Generated content requires a clip"]
       59 GETIMPORT                        R11 K18 [assert]
       61 CALL                             R11 2 1
       62 GETUPVAL                         R12 4
       63 GETTABLEKS                       R12 R12 K19 ["create"]
       65 MOVE                             R13 R9
       66 MOVE                             R14 R2
       67 CALL                             R12 2 1
       68 NAMECALL                         R13 R11 K20 ["Clone"]
       70 CALL                             R13 1 1
       71 GETUPVAL                         R14 2
       72 GETTABLEKS                       R14 R14 K5 ["FFlagAssistantAnimationGenTrackMcpPublish"]
       74 JUMPIFNOT                        R14 ; [+4]
       75 GETTABLEKS                       R14 R11 K9 ["Guid"]
       77 SETTABLEKS                       R14 R13 K9 ["Guid"]
       79 SETTABLEKS                       R13 R12 K21 ["undoSafeKeyframeSequence"]
       81 GETUPVAL                         R13 5
       82 SETTABLE                         R12 R13 R10
       83 GETUPVAL                         R13 6
       84 GETTABLEKS                       R13 R13 K22 ["setAnimation"]
       86 GETUPVAL                         R14 7
       87 MOVE                             R15 R10
       88 MOVE                             R16 R1
       89 CALL                             R14 2 1
       90 CALL                             R13 1 0
       91 GETUPVAL                         R10 8
       92 MOVE                             R11 R0
       93 MOVE                             R12 R1
       94 MOVE                             R13 R2
       95 MOVE                             R14 R9
       96 DUPTABLE                         R15 K26 [{"name", "generationId", "contextId"}]
       97 GETTABLEKS                       R16 R3 K1 ["Name"]
       99 SETTABLEKS                       R16 R15 K23 ["name"]
      101 SETTABLEKS                       R6 R15 K24 ["generationId"]
      103 GETTABLEKS                       R16 R0 K27 ["priorJobId"]
      105 SETTABLEKS                       R16 R15 K25 ["contextId"]
      107 CALL                             R10 5 1
      108 RETURN                           R10 1

PROTO_19:
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
       20 GETUPVAL                         R7 1
       21 GETTABLEKS                       R7 R7 K3 ["FFlagAssistantAnimationGenNewPosing"]
       23 JUMPIFNOT                        R7 ; [+6]
       24 GETUPVAL                         R6 2
       25 GETUPVAL                         R7 0
       26 MOVE                             R8 R5
       27 MOVE                             R9 R4
       28 CALL                             R6 3 1
       29 JUMP                             ; [+5]
       30 GETUPVAL                         R6 3
       31 GETUPVAL                         R7 0
       32 MOVE                             R8 R5
       33 MOVE                             R9 R4
       34 CALL                             R6 3 1
       35 JUMPIFNOTEQKNIL                  R6 ; [+14]
       37 GETIMPORT                        R7 K5 [warn]
       39 LOADK                            R8 K6 ["[AnimationGen] Generate could not bake the authored poses"]
       40 CALL                             R7 1 0
       41 GETUPVAL                         R8 4
       42 GETTABLEKS                       R8 R8 K7 ["FailureReasons"]
       44 GETTABLEKS                       R8 R8 K8 ["GenerationFailed"]
       46 DUPTABLE                         R7 K14 [{["duration"] = 0, ["name"] = "", ["failureReason"]}]
       47 SETTABLEKS                       R8 R7 K13 ["failureReason"]
       49 RETURN                           R7 1
       50 GETUPVAL                         R7 5
       51 MOVE                             R8 R0
       52 MOVE                             R9 R1
       53 MOVE                             R10 R2
       54 MOVE                             R11 R6
       55 MOVE                             R12 R3
       56 GETTABLEKS                       R14 R0 K1 ["editSource"]
       58 GETUPVAL                         R15 4
       59 GETTABLEKS                       R15 R15 K15 ["GenerationModes"]
       61 GETTABLEKS                       R15 R15 K16 ["Upscale"]
       63 JUMPIFEQ                         R14 R15 ; [+2]
       65 LOADB                            R13 0 +1
       66 LOADB                            R13 1
       67 CALL                             R7 6 1
       68 GETUPVAL                         R8 6
       69 GETTABLEKS                       R8 R8 K17 ["discardSession"]
       71 MOVE                             R9 R5
       72 LOADK                            R10 K18 ["submitted"]
       73 CALL                             R8 2 0
       74 RETURN                           R7 1

PROTO_20:
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
      116 GETUPVAL                         R14 8
      117 GETTABLEKS                       R14 R14 K35 ["FFlagAssistantAnimationGenTrackMcpPublish"]
      119 JUMPIFNOT                        R14 ; [+10]
      120 GETIMPORT                        R14 K38 [string.lower]
      122 GETUPVAL                         R15 7
      123 LOADB                            R17 0
      124 NAMECALL                         R15 R15 K32 ["GenerateGUID"]
      126 CALL                             R15 2 -1
      127 CALL                             R14 -1 1
      128 SETTABLEKS                       R14 R11 K39 ["Guid"]
      130 JUMPIFNOT                        R3 ; [+5]
      131 GETUPVAL                         R14 9
      132 GETIMPORT                        R15 K43 [Enum.HumanoidRigType.R15]
      134 CALL                             R14 1 1
      135 MOVE                             R2 R14
      136 JUMPIFEQKNIL                     R2 ; [+7]
      138 GETUPVAL                         R14 10
      139 GETTABLEKS                       R14 R14 K44 ["saveKeyframeSequence"]
      141 MOVE                             R15 R11
      142 MOVE                             R16 R2
      143 CALL                             R14 2 0
      144 GETTABLEKS                       R14 R12 K45 ["endRecording"]
      146 MOVE                             R15 R13
      147 CALL                             R14 1 0
      148 JUMPIFNOTEQKNIL                  R2 ; [+13]
      150 NAMECALL                         R14 R11 K29 ["Destroy"]
      152 CALL                             R14 1 0
      153 GETUPVAL                         R15 1
      154 GETTABLEKS                       R15 R15 K5 ["FailureReasons"]
      156 GETTABLEKS                       R15 R15 K46 ["RigInsertFailed"]
      158 DUPTABLE                         R14 K12 [{["duration"] = 0, ["name"] = "", ["failureReason"]}]
      159 SETTABLEKS                       R15 R14 K11 ["failureReason"]
      161 RETURN                           R14 1
      162 DUPTABLE                         R14 K49 [{["keyframeSequence"], ["isUpscale"] = True}]
      163 SETTABLEKS                       R11 R14 K19 ["keyframeSequence"]
      165 GETUPVAL                         R15 11
      166 GETTABLEKS                       R16 R0 K50 ["toolUseId"]
      168 MOVE                             R17 R1
      169 MOVE                             R18 R14
      170 MOVE                             R19 R2
      171 MOVE                             R20 R3
      172 CALL                             R15 5 0
      173 GETUPVAL                         R15 12
      174 MOVE                             R16 R0
      175 MOVE                             R17 R1
      176 MOVE                             R18 R2
      177 MOVE                             R19 R14
      178 MOVE                             R20 R4
      179 CALL                             R15 5 1
      180 RETURN                           R15 1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["generateAnimationAsync"]
        3 DUPTABLE                         R3 K6 [{["prompt"] = "", ["generationMode"], ["inputAssetId"], ["outputFileName"]}]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K7 ["GenerationModes"]
        7 GETTABLEKS                       R4 R4 K8 ["Upscale"]
        9 SETTABLEKS                       R4 R3 K3 ["generationMode"]
       11 SETTABLEKS                       R0 R3 K4 ["inputAssetId"]
       13 LOADNIL                          R5
       14 JUMPIFEQKNIL                     R0 ; [+30]
       16 LOADK                            R8 K9 ["%d+"]
       17 NAMECALL                         R6 R0 K10 ["match"]
       19 CALL                             R6 2 1
       20 JUMPIFEQKNIL                     R6 ; [+24]
       22 FASTCALL1                        TONUMBER R6 ; [+3]
       23 MOVE                             R9 R6
       24 GETIMPORT                        R8 K12 [tonumber]
       26 CALL                             R8 1 1
       27 NEWCLOSURE                       R10 P0
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          VAL R8
       30 FASTPCALL                        pcall 1 ; [+2]
       31 GETIMPORT                        R9 K14 [pcall]
       33 CALL                             R9 1 2
       34 JUMPIF                           R9 ; [+2]
       35 LOADNIL                          R7
       36 JUMP                             ; [+7]
       37 GETTABLEKS                       R11 R10 K15 ["Name"]
       39 JUMPIFNOTEQKS                    R11 K2 [""] ; [+3]
       41 LOADNIL                          R7
       42 JUMP                             ; [+1]
       43 MOVE                             R7 R11
       44 OR                               R5 R7 R6
       45 JUMPIFNOTEQKNIL                  R5 ; [+8]
       47 GETUPVAL                         R6 3
       48 GETTABLEKS                       R6 R6 K16 ["computeBaseNameFromPrompt"]
       50 LOADK                            R7 K2 [""]
       51 CALL                             R6 1 1
       52 MOVE                             R4 R6
       53 JUMP                             ; [+8]
       54 GETUPVAL                         R6 3
       55 GETTABLEKS                       R6 R6 K17 ["computeNextVersionedName"]
       57 MOVE                             R7 R5
       58 GETUPVAL                         R8 4
       59 CALL                             R8 0 1
       60 CALL                             R6 2 1
       61 MOVE                             R4 R6
       62 SETTABLEKS                       R4 R3 K5 ["outputFileName"]
       64 GETTABLEKS                       R4 R1 K18 ["environment"]
       66 CALL                             R2 2 1
       67 GETUPVAL                         R3 5
       68 CALL                             R3 0 0
       69 RETURN                           R2 1

PROTO_22:
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

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["callbacks"]
        3 GETTABLEKS                       R1 R1 K1 ["thoughtReceived"]
        5 DUPTABLE                         R2 K4 [{"toolUseId", "text"}]
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K2 ["toolUseId"]
        9 SETTABLEKS                       R0 R2 K3 ["text"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_24:
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
      232 JUMPIFNOT                        R17 ; [+44]
      233 JUMPIFEQKNIL                     R16 ; [+43]
      235 GETUPVAL                         R17 11
      236 LOADB                            R19 0
      237 NAMECALL                         R17 R17 K48 ["GenerateGUID"]
      239 CALL                             R17 2 1
      240 GETTABLEKS                       R18 R2 K49 ["startRecording"]
      242 MOVE                             R19 R17
      243 LOADK                            R20 K50 ["Insert Generated Animation"]
      244 CALL                             R18 2 0
      245 GETUPVAL                         R18 9
      246 GETTABLEKS                       R18 R18 K51 ["FFlagAssistantAnimationGenTrackMcpPublish"]
      248 JUMPIFNOT                        R18 ; [+10]
      249 GETIMPORT                        R18 K54 [string.lower]
      251 GETUPVAL                         R19 11
      252 LOADB                            R21 0
      253 NAMECALL                         R19 R19 K48 ["GenerateGUID"]
      255 CALL                             R19 2 -1
      256 CALL                             R18 -1 1
      257 SETTABLEKS                       R18 R16 K55 ["Guid"]
      259 JUMPIFNOT                        R9 ; [+5]
      260 GETUPVAL                         R18 12
      261 GETIMPORT                        R19 K59 [Enum.HumanoidRigType.R15]
      263 CALL                             R18 1 1
      264 MOVE                             R8 R18
      265 JUMPIFEQKNIL                     R8 ; [+7]
      267 GETUPVAL                         R18 8
      268 GETTABLEKS                       R18 R18 K60 ["saveKeyframeSequence"]
      270 MOVE                             R19 R16
      271 MOVE                             R20 R8
      272 CALL                             R18 2 0
      273 GETTABLEKS                       R18 R2 K61 ["endRecording"]
      275 MOVE                             R19 R17
      276 CALL                             R18 1 0
      277 GETTABLEKS                       R17 R15 K47 ["success"]
      279 JUMPIFNOT                        R17 ; [+2]
      280 JUMPIFNOTEQKNIL                  R16 ; [+26]
      282 GETTABLEKS                       R17 R15 K15 ["failureReason"]
      284 JUMPIF                           R17 ; [+5]
      285 GETUPVAL                         R17 1
      286 GETTABLEKS                       R17 R17 K9 ["FailureReasons"]
      288 GETTABLEKS                       R17 R17 K10 ["GenerationFailed"]
      290 DUPTABLE                         R18 K16 [{["duration"] = 0, ["name"] = "", ["failureReason"]}]
      291 SETTABLEKS                       R17 R18 K15 ["failureReason"]
      293 DUPTABLE                         R19 K63 [{["rigInserted"] = False, ["usedBackend"], ["errorMessage"]}]
      294 GETTABLEKS                       R21 R15 K15 ["failureReason"]
      296 JUMPIFEQKNIL                     R21 ; [+2]
      298 LOADB                            R20 0 +1
      299 LOADB                            R20 1
      300 SETTABLEKS                       R20 R19 K30 ["usedBackend"]
      302 GETTABLEKS                       R20 R15 K62 ["errorMessage"]
      304 SETTABLEKS                       R20 R19 K62 ["errorMessage"]
      306 RETURN                           R18 2
      307 JUMPIFNOTEQKNIL                  R8 ; [+11]
      309 GETUPVAL                         R18 1
      310 GETTABLEKS                       R18 R18 K9 ["FailureReasons"]
      312 GETTABLEKS                       R18 R18 K64 ["RigInsertFailed"]
      314 DUPTABLE                         R17 K16 [{["duration"] = 0, ["name"] = "", ["failureReason"]}]
      315 SETTABLEKS                       R18 R17 K15 ["failureReason"]
      317 DUPTABLE                         R18 K66 [{["rigInserted"] = False, ["usedBackend"] = True}]
      318 RETURN                           R17 2
      319 DUPTABLE                         R17 K68 [{"keyframeSequence", "isUpscale"}]
      320 SETTABLEKS                       R16 R17 K37 ["keyframeSequence"]
      322 GETTABLEKS                       R19 R0 K35 ["inputAssetId"]
      324 JUMPIFEQKNIL                     R19 ; [+6]
      326 LOADB                            R18 1
      327 GETTABLEKS                       R19 R0 K35 ["inputAssetId"]
      329 JUMPIFNOTEQKS                    R19 K14 [""] ; [+12]
      331 GETTABLEKS                       R19 R0 K43 ["editSource"]
      333 GETUPVAL                         R20 1
      334 GETTABLEKS                       R20 R20 K27 ["GenerationModes"]
      336 GETTABLEKS                       R20 R20 K28 ["Upscale"]
      338 JUMPIFEQ                         R19 R20 ; [+2]
      340 LOADB                            R18 0 +1
      341 LOADB                            R18 1
      342 SETTABLEKS                       R18 R17 K67 ["isUpscale"]
      344 GETUPVAL                         R18 13
      345 MOVE                             R19 R3
      346 MOVE                             R20 R1
      347 MOVE                             R21 R17
      348 MOVE                             R22 R8
      349 MOVE                             R23 R9
      350 CALL                             R18 5 0
      351 GETUPVAL                         R18 14
      352 MOVE                             R19 R0
      353 MOVE                             R20 R1
      354 MOVE                             R21 R8
      355 MOVE                             R22 R17
      356 MOVE                             R23 R15
      357 CALL                             R18 5 1
      358 DUPTABLE                         R19 K69 [{["rigInserted"], ["usedBackend"] = True}]
      359 SETTABLEKS                       R9 R19 K29 ["rigInserted"]
      361 RETURN                           R18 2

PROTO_25:
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

PROTO_26:
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

PROTO_27:
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
       95 GETUPVAL                         R11 4
       96 MOVE                             R12 R0
       97 MOVE                             R13 R1
       98 FASTPCALL                        pcall 3 ; [+2]
       99 GETIMPORT                        R10 K21 [pcall]
      101 CALL                             R10 3 3
      102 JUMPIFEQKNIL                     R3 ; [+22]
      104 JUMPIFEQKNIL                     R4 ; [+20]
      106 GETTABLEKS                       R13 R4 K9 ["editSessionId"]
      108 GETTABLEKS                       R14 R0 K9 ["editSessionId"]
      110 JUMPIFNOTEQ                      R13 R14 ; [+14]
      112 GETUPVAL                         R13 1
      113 GETTABLEKS                       R13 R13 K3 ["getSession"]
      115 MOVE                             R14 R3
      116 CALL                             R13 1 1
      117 JUMPIFNOTEQ                      R13 R4 ; [+7]
      119 GETUPVAL                         R13 1
      120 GETTABLEKS                       R13 R13 K10 ["discardSession"]
      122 MOVE                             R14 R3
      123 LOADK                            R15 K11 ["submitted"]
      124 CALL                             R13 2 0
      125 JUMPIF                           R10 ; [+5]
      126 GETIMPORT                        R13 K23 [error]
      128 MOVE                             R14 R11
      129 LOADN                            R15 0
      130 CALL                             R13 2 0
      131 GETUPVAL                         R14 5
      132 GETTABLEKS                       R15 R0 K24 ["toolUseId"]
      134 GETTABLE                         R13 R14 R15
      135 JUMPIFEQKNIL                     R13 ; [+4]
      137 GETTABLEKS                       R14 R13 K25 ["keyframeSequence"]
      139 JUMP                             ; [+1]
      140 LOADNIL                          R14
      141 GETUPVAL                         R16 6
      142 GETTABLEKS                       R16 R16 K26 ["FFlagAssistantAnimationGenTrackMcpPublish"]
      144 JUMPIFNOT                        R16 ; [+13]
      145 GETTABLEKS                       R16 R11 K18 ["failureReason"]
      147 JUMPIFNOTEQKNIL                  R16 ; [+10]
      149 JUMPIFEQKNIL                     R14 ; [+8]
      151 GETTABLEKS                       R16 R14 K27 ["Guid"]
      153 JUMPIFEQKS                       R16 K17 [""] ; [+4]
      155 GETTABLEKS                       R15 R14 K27 ["Guid"]
      157 JUMP                             ; [+1]
      158 LOADNIL                          R15
      159 GETUPVAL                         R16 7
      160 GETTABLEKS                       R16 R16 K28 ["getGenerationDetails"]
      162 DUPTABLE                         R17 K36 [{"rig", "rigInserted", "usedBackend", "errorMessage", "editedPoseCount", "parentGenerationId", "clipGuid"}]
      163 GETTABLEKS                       R19 R11 K18 ["failureReason"]
      165 JUMPIFNOTEQKNIL                  R19 ; [+6]
      167 JUMPIFEQKNIL                     R13 ; [+4]
      169 GETTABLEKS                       R18 R13 K29 ["rig"]
      171 JUMP                             ; [+1]
      172 LOADNIL                          R18
      173 SETTABLEKS                       R18 R17 K29 ["rig"]
      175 LOADB                            R18 0
      176 GETTABLEKS                       R19 R11 K18 ["failureReason"]
      178 JUMPIFNOTEQKNIL                  R19 ; [+6]
      180 LOADB                            R18 0
      181 JUMPIFEQKNIL                     R12 ; [+3]
      183 GETTABLEKS                       R18 R12 K30 ["rigInserted"]
      185 SETTABLEKS                       R18 R17 K30 ["rigInserted"]
      187 LOADB                            R18 0
      188 JUMPIFEQKNIL                     R12 ; [+3]
      190 GETTABLEKS                       R18 R12 K31 ["usedBackend"]
      192 SETTABLEKS                       R18 R17 K31 ["usedBackend"]
      194 JUMPIFEQKNIL                     R12 ; [+4]
      196 GETTABLEKS                       R18 R12 K32 ["errorMessage"]
      198 JUMP                             ; [+1]
      199 LOADNIL                          R18
      200 SETTABLEKS                       R18 R17 K32 ["errorMessage"]
      202 SETTABLEKS                       R9 R17 K33 ["editedPoseCount"]
      204 JUMPIFEQKNIL                     R8 ; [+4]
      206 GETTABLEKS                       R18 R8 K37 ["generationId"]
      208 JUMP                             ; [+1]
      209 LOADNIL                          R18
      210 SETTABLEKS                       R18 R17 K34 ["parentGenerationId"]
      212 SETTABLEKS                       R15 R17 K35 ["clipGuid"]
      214 CALL                             R16 1 1
      215 SETTABLEKS                       R16 R11 K38 ["telemetryDetails"]
      217 GETTABLEKS                       R16 R11 K18 ["failureReason"]
      219 JUMPIFEQKNIL                     R16 ; [+2]
      221 RETURN                           R11 1
      222 GETUPVAL                         R16 2
      223 GETTABLEKS                       R16 R16 K39 ["record"]
      225 GETTABLEKS                       R17 R0 K7 ["generationScope"]
      227 DUPTABLE                         R18 K41 [{"toolUseId", "contextId", "generationId", "editSource", "name", "duration"}]
      228 GETTABLEKS                       R19 R0 K24 ["toolUseId"]
      230 SETTABLEKS                       R19 R18 K24 ["toolUseId"]
      232 GETTABLEKS                       R19 R11 K40 ["contextId"]
      234 SETTABLEKS                       R19 R18 K40 ["contextId"]
      236 GETTABLEKS                       R19 R11 K37 ["generationId"]
      238 SETTABLEKS                       R19 R18 K37 ["generationId"]
      240 SETTABLEKS                       R6 R18 K8 ["editSource"]
      242 GETTABLEKS                       R19 R11 K16 ["name"]
      244 SETTABLEKS                       R19 R18 K16 ["name"]
      246 GETTABLEKS                       R19 R11 K14 ["duration"]
      248 SETTABLEKS                       R19 R18 K14 ["duration"]
      250 MOVE                             R19 R8
      251 CALL                             R16 3 1
      252 GETUPVAL                         R17 2
      253 GETTABLEKS                       R17 R17 K42 ["listVersions"]
      255 GETTABLEKS                       R18 R16 K43 ["chainId"]
      257 CALL                             R17 1 3
      258 FORGPREP                         R17
      259 JUMPIFEQ                         R21 R16 ; [+20]
      261 GETUPVAL                         R22 8
      262 GETTABLEKS                       R22 R22 K44 ["getPlaybackState"]
      264 GETTABLEKS                       R23 R21 K24 ["toolUseId"]
      266 CALL                             R22 1 1
      267 GETTABLEKS                       R22 R22 K45 ["isPlaying"]
      269 JUMPIFNOT                        R22 ; [+10]
      270 GETUPVAL                         R22 8
      271 GETTABLEKS                       R22 R22 K46 ["setIsPlaying"]
      273 LOADB                            R23 0
      274 GETUPVAL                         R24 9
      275 GETTABLEKS                       R25 R21 K24 ["toolUseId"]
      277 MOVE                             R26 R1
      278 CALL                             R24 2 1
      279 CALL                             R22 2 0
      280 FORGLOOP                         R17 2 ; [-22]
      282 GETTABLEKS                       R17 R1 K47 ["callbacks"]
      284 GETTABLEKS                       R17 R17 K48 ["animationHistoryChanged"]
      286 DUPTABLE                         R18 K49 [{"chainId"}]
      287 GETTABLEKS                       R19 R16 K43 ["chainId"]
      289 SETTABLEKS                       R19 R18 K43 ["chainId"]
      291 CALL                             R17 1 0
      292 GETTABLEKS                       R17 R1 K50 ["environment"]
      294 GETTABLEKS                       R17 R17 K51 ["tools"]
      296 GETTABLEKS                       R17 R17 K52 ["animationGen"]
      298 GETTABLEKS                       R17 R17 K53 ["publishAnimationHeadlessAsync"]
      300 GETTABLEKS                       R18 R0 K54 ["publishHeadless"]
      302 JUMPIFNOT                        R18 ; [+21]
      303 JUMPIFEQKNIL                     R17 ; [+20]
      305 GETUPVAL                         R20 5
      306 GETTABLEKS                       R21 R0 K24 ["toolUseId"]
      308 GETTABLE                         R19 R20 R21
      309 GETTABLEKS                       R19 R19 K25 ["keyframeSequence"]
      311 FASTCALL1                        ASSERT R19 ; [+2]
      312 GETIMPORT                        R18 K56 [assert]
      314 CALL                             R18 1 1
      315 MOVE                             R19 R17
      316 MOVE                             R20 R18
      317 GETTABLEKS                       R21 R11 K16 ["name"]
      319 CALL                             R19 2 2
      320 SETTABLEKS                       R19 R11 K57 ["publishedAssetId"]
      322 SETTABLEKS                       R20 R11 K58 ["publishError"]
      324 RETURN                           R11 1

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resolveEditSource"]
        3 GETTABLEKS                       R3 R0 K1 ["scope"]
        5 GETTABLEKS                       R4 R0 K2 ["editSource"]
        7 CALL                             R2 2 1
        8 RETURN                           R2 1

PROTO_29:
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
       48 GETUPVAL                         R9 4
       49 GETTABLEKS                       R9 R9 K11 ["FFlagAssistantAnimationGenTrackMcpPublish"]
       51 JUMPIFNOT                        R9 ; [+4]
       52 GETTABLEKS                       R9 R7 K12 ["Guid"]
       54 SETTABLEKS                       R9 R8 K12 ["Guid"]
       56 GETTABLEKS                       R9 R3 K13 ["startRecording"]
       58 MOVE                             R10 R4
       59 LOADK                            R11 K14 ["Insert Generated Animation"]
       60 CALL                             R9 2 0
       61 GETUPVAL                         R9 5
       62 GETTABLEKS                       R9 R9 K15 ["saveKeyframeSequence"]
       64 MOVE                             R10 R8
       65 MOVE                             R11 R5
       66 CALL                             R9 2 0
       67 GETTABLEKS                       R9 R3 K16 ["endRecording"]
       69 MOVE                             R10 R4
       70 CALL                             R9 1 0
       71 SETTABLEKS                       R8 R2 K2 ["keyframeSequence"]
       73 LOADB                            R9 1
       74 SETTABLEKS                       R9 R2 K17 ["needsReload"]
       76 GETTABLEKS                       R9 R2 K18 ["cache"]
       78 GETTABLEKS                       R9 R9 K19 ["editPreviewSequence"]
       80 JUMPIFEQKNIL                     R9 ; [+6]
       82 GETUPVAL                         R9 1
       83 GETTABLEKS                       R9 R9 K20 ["refreshPreview"]
       85 MOVE                             R10 R0
       86 CALL                             R9 1 0
       87 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getPlaybackState"]
        3 GETTABLEKS                       R3 R0 K1 ["toolUseId"]
        5 CALL                             R2 1 1
        6 RETURN                           R2 1

PROTO_31:
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

PROTO_32:
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

PROTO_33:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantAnimationGenDisablePreviewSelectionFollowing"]
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["CLIP_TO_UPSCALE_PREVIEW_CONTENT_ID"]
        7 JUMPIFEQ                         R0 R2 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_34:
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

PROTO_35:
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

PROTO_36:
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

PROTO_37:
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

PROTO_38:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getCardSnapshot"]
        3 GETTABLEKS                       R3 R0 K1 ["toolUseId"]
        5 CALL                             R2 1 1
        6 RETURN                           R2 1

PROTO_39:
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

PROTO_40:
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

PROTO_41:
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
       34 JUMPIFEQ                         R5 R4 ; [+34]
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
       53 NEWCLOSURE                       R9 P0
       54 CAPTURE                          UPVAL U4
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R7
       58 CAPTURE                          UPVAL U5
       59 FASTPCALL                        pcall 1 ; [+2]
       60 GETIMPORT                        R8 K12 [pcall]
       62 CALL                             R8 1 2
       63 JUMPIF                           R8 ; [+5]
       64 GETIMPORT                        R10 K14 [warn]
       66 LOADK                            R11 K15 ["[AnimationGen] Could not play the selected version:"]
       67 MOVE                             R12 R9
       68 CALL                             R10 2 0
       69 GETUPVAL                         R6 0
       70 GETTABLEKS                       R6 R6 K16 ["getCardSnapshot"]
       72 GETTABLEKS                       R7 R0 K1 ["toolUseId"]
       74 CALL                             R6 1 1
       75 RETURN                           R6 1

PROTO_42:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["insertPose"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_43:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["deletePose"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_44:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["movePose"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_45:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resizePose"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_46:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getEditScrubbarState"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_47:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resetPose"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_48:
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

PROTO_49:
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

PROTO_50:
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

PROTO_51:
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

PROTO_52:
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

PROTO_53:
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

PROTO_54:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["runUndoableEdit"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_55:
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

PROTO_56:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["renderPreviewPose"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_57:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isRetargetingEnabled"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["getPlaybackContentId"]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

PROTO_58:
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

PROTO_59:
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

PROTO_60:
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

PROTO_61:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["animationHistoryChanged"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["Fire"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_62:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["playbackStateChanged"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["Fire"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_63:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["thoughtReceived"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["Fire"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_64:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["poseDeselected"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["Fire"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_65:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["poseEdited"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["Fire"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_66:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["clipToUpscalePreviewRigChanged"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["Fire"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_67:
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

PROTO_68:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["getCardSnapshot"]
        6 GETTABLEKS                       R5 R1 K1 ["toolUseId"]
        8 CALL                             R4 1 1
        9 MOVE                             R2 R4
       10 RETURN                           R2 1

PROTO_69:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 CALL                             R2 2 1
        6 RETURN                           R2 1

PROTO_70:
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

PROTO_71:
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

PROTO_72:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["getPlaybackState"]
        6 GETTABLEKS                       R5 R1 K1 ["toolUseId"]
        8 CALL                             R4 1 1
        9 MOVE                             R2 R4
       10 RETURN                           R2 1

PROTO_73:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 CALL                             R2 2 1
        6 RETURN                           R2 1

PROTO_74:
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

PROTO_75:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 CALL                             R1 1 1
        5 RETURN                           R1 1

PROTO_76:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

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
        1 GETTABLEKS                       R2 R2 K0 ["previewClipToUpscaleAsync"]
        3 MOVE                             R3 R1
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R0
        6 CALL                             R4 1 1
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_79:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+5]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["clearClipToUpscalePreview"]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_80:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["insertClipToUpscalePreviewRigAsync"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

PROTO_81:
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

PROTO_82:
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

PROTO_83:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["generateUpscalePreviewAsync"]
        3 MOVE                             R3 R1
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R0
        6 CALL                             R4 1 1
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_84:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["updateUpscalePreview"]
        3 MOVE                             R3 R1
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R0
        6 CALL                             R4 1 1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

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
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_92:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["resetPose"]
        6 MOVE                             R4 R1
        7 MOVE                             R5 R2
        8 CALL                             R3 2 0
        9 RETURN                           R0 0

PROTO_93:
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

PROTO_94:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_95:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 LOADB                            R0 1
        7 SETUPVAL                         R0 2
        8 RETURN                           R0 0

PROTO_96:
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
       56 GETTABLEKS                       R10 R4 K16 ["Util"]
       58 GETTABLEKS                       R10 R10 K17 ["AnimationGen"]
       60 GETTABLEKS                       R10 R10 K20 ["AnimationGenConstants"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K13 [require]
       65 GETTABLEKS                       R11 R4 K21 ["Remotes"]
       67 GETTABLEKS                       R11 R11 K22 ["AnimationGenRemotes"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K13 [require]
       72 GETTABLEKS                       R12 R4 K16 ["Util"]
       74 GETTABLEKS                       R12 R12 K17 ["AnimationGen"]
       76 GETTABLEKS                       R12 R12 K23 ["AnimationGenTelemetry"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K13 [require]
       81 GETTABLEKS                       R13 R4 K16 ["Util"]
       83 GETTABLEKS                       R13 R13 K17 ["AnimationGen"]
       85 GETTABLEKS                       R13 R13 K24 ["AnimationGenTypes"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K13 [require]
       90 GETTABLEKS                       R14 R4 K16 ["Util"]
       92 GETTABLEKS                       R14 R14 K17 ["AnimationGen"]
       94 GETTABLEKS                       R14 R14 K25 ["AnimationNameUtils"]
       96 CALL                             R13 1 1
       97 GETIMPORT                        R14 K13 [require]
       99 GETTABLEKS                       R15 R4 K16 ["Util"]
      101 GETTABLEKS                       R15 R15 K17 ["AnimationGen"]
      103 GETTABLEKS                       R15 R15 K18 ["State"]
      105 GETTABLEKS                       R15 R15 K26 ["AnimationPlayerParameters"]
      107 CALL                             R14 1 1
      108 GETIMPORT                        R15 K13 [require]
      110 GETTABLEKS                       R16 R4 K16 ["Util"]
      112 GETTABLEKS                       R16 R16 K17 ["AnimationGen"]
      114 GETTABLEKS                       R16 R16 K18 ["State"]
      116 GETTABLEKS                       R16 R16 K27 ["AnimationPlayerState"]
      118 CALL                             R15 1 1
      119 GETIMPORT                        R16 K13 [require]
      121 GETTABLEKS                       R17 R4 K16 ["Util"]
      123 GETTABLEKS                       R17 R17 K17 ["AnimationGen"]
      125 GETTABLEKS                       R17 R17 K28 ["BlendSettings"]
      127 CALL                             R16 1 1
      128 GETIMPORT                        R17 K13 [require]
      130 GETTABLEKS                       R18 R4 K16 ["Util"]
      132 GETTABLEKS                       R18 R18 K17 ["AnimationGen"]
      134 GETTABLEKS                       R18 R18 K29 ["Posing"]
      136 GETTABLEKS                       R18 R18 K30 ["DEPRECATED_bakeSavedPoseEdits"]
      138 CALL                             R17 1 1
      139 GETIMPORT                        R18 K13 [require]
      141 GETTABLEKS                       R19 R4 K31 ["Guest"]
      143 GETTABLEKS                       R19 R19 K32 ["Environment"]
      145 CALL                             R18 1 1
      146 GETIMPORT                        R19 K13 [require]
      148 GETTABLEKS                       R20 R4 K33 ["Flags"]
      150 CALL                             R19 1 1
      151 GETIMPORT                        R20 K13 [require]
      153 GETTABLEKS                       R21 R4 K16 ["Util"]
      155 GETTABLEKS                       R21 R21 K17 ["AnimationGen"]
      157 GETTABLEKS                       R21 R21 K34 ["HostTypes"]
      159 CALL                             R20 1 1
      160 GETIMPORT                        R21 K13 [require]
      162 GETTABLEKS                       R22 R4 K35 ["Types"]
      164 CALL                             R21 1 1
      165 GETIMPORT                        R22 K13 [require]
      167 GETTABLEKS                       R23 R4 K16 ["Util"]
      169 GETTABLEKS                       R23 R23 K17 ["AnimationGen"]
      171 GETTABLEKS                       R23 R23 K36 ["UpscaleSettings"]
      173 CALL                             R22 1 1
      174 GETIMPORT                        R23 K13 [require]
      176 GETTABLEKS                       R24 R4 K16 ["Util"]
      178 GETTABLEKS                       R24 R24 K17 ["AnimationGen"]
      180 GETTABLEKS                       R24 R24 K29 ["Posing"]
      182 GETTABLEKS                       R24 R24 K37 ["bakeSavedPoseEdits"]
      184 CALL                             R23 1 1
      185 GETIMPORT                        R24 K13 [require]
      187 GETTABLEKS                       R25 R4 K16 ["Util"]
      189 GETTABLEKS                       R25 R25 K17 ["AnimationGen"]
      191 GETTABLEKS                       R25 R25 K38 ["buildBlendedKeyframeSequence"]
      193 CALL                             R24 1 1
      194 GETIMPORT                        R25 K13 [require]
      196 GETTABLEKS                       R26 R4 K16 ["Util"]
      198 GETTABLEKS                       R26 R26 K17 ["AnimationGen"]
      200 GETTABLEKS                       R26 R26 K39 ["clearAnimationPose"]
      202 CALL                             R25 1 1
      203 GETIMPORT                        R26 K13 [require]
      205 GETTABLEKS                       R27 R4 K16 ["Util"]
      207 GETTABLEKS                       R27 R27 K17 ["AnimationGen"]
      209 GETTABLEKS                       R27 R27 K40 ["createClipEditorLauncher"]
      211 CALL                             R26 1 1
      212 GETIMPORT                        R27 K13 [require]
      214 GETTABLEKS                       R28 R4 K16 ["Util"]
      216 GETTABLEKS                       R28 R28 K17 ["AnimationGen"]
      218 GETTABLEKS                       R28 R28 K41 ["createClipToUpscalePreview"]
      220 CALL                             R27 1 1
      221 GETIMPORT                        R28 K13 [require]
      223 GETTABLEKS                       R29 R4 K16 ["Util"]
      225 GETTABLEKS                       R29 R29 K17 ["AnimationGen"]
      227 GETTABLEKS                       R29 R29 K42 ["createEditPreviewPlayer"]
      229 CALL                             R28 1 1
      230 GETIMPORT                        R29 K13 [require]
      232 GETTABLEKS                       R30 R4 K16 ["Util"]
      234 GETTABLEKS                       R30 R30 K17 ["AnimationGen"]
      236 GETTABLEKS                       R30 R30 K43 ["createEditSessionManager"]
      238 CALL                             R29 1 1
      239 GETIMPORT                        R30 K13 [require]
      241 GETTABLEKS                       R31 R4 K16 ["Util"]
      243 GETTABLEKS                       R31 R31 K17 ["AnimationGen"]
      245 GETTABLEKS                       R31 R31 K18 ["State"]
      247 GETTABLEKS                       R31 R31 K44 ["createGenerationHistory"]
      249 CALL                             R30 1 1
      250 GETIMPORT                        R31 K13 [require]
      252 GETTABLEKS                       R32 R4 K16 ["Util"]
      254 GETTABLEKS                       R32 R32 K17 ["AnimationGen"]
      256 GETTABLEKS                       R32 R32 K45 ["createHostAnimator"]
      258 CALL                             R31 1 1
      259 GETIMPORT                        R32 K13 [require]
      261 GETTABLEKS                       R33 R4 K16 ["Util"]
      263 GETTABLEKS                       R33 R33 K17 ["AnimationGen"]
      265 GETTABLEKS                       R33 R33 K46 ["createHostEditor"]
      267 CALL                             R32 1 1
      268 GETIMPORT                        R33 K13 [require]
      270 GETTABLEKS                       R34 R4 K16 ["Util"]
      272 GETTABLEKS                       R34 R34 K17 ["AnimationGen"]
      274 GETTABLEKS                       R34 R34 K47 ["createHostGenerator"]
      276 CALL                             R33 1 1
      277 GETIMPORT                        R34 K13 [require]
      279 GETTABLEKS                       R35 R4 K16 ["Util"]
      281 GETTABLEKS                       R35 R35 K17 ["AnimationGen"]
      283 GETTABLEKS                       R35 R35 K48 ["createHostSelection"]
      285 CALL                             R34 1 1
      286 GETIMPORT                        R35 K13 [require]
      288 GETTABLEKS                       R36 R4 K16 ["Util"]
      290 GETTABLEKS                       R36 R36 K17 ["AnimationGen"]
      292 GETTABLEKS                       R36 R36 K49 ["createPoseEditor"]
      294 CALL                             R35 1 1
      295 GETIMPORT                        R36 K13 [require]
      297 GETTABLEKS                       R37 R4 K16 ["Util"]
      299 GETTABLEKS                       R37 R37 K17 ["AnimationGen"]
      301 GETTABLEKS                       R37 R37 K50 ["createPoseSelection"]
      303 CALL                             R36 1 1
      304 GETIMPORT                        R37 K13 [require]
      306 GETTABLEKS                       R38 R4 K16 ["Util"]
      308 GETTABLEKS                       R38 R38 K17 ["AnimationGen"]
      310 GETTABLEKS                       R38 R38 K51 ["insertBlockyRigIntoWorkspace"]
      312 CALL                             R37 1 1
      313 GETIMPORT                        R38 K13 [require]
      315 GETTABLEKS                       R39 R4 K16 ["Util"]
      317 GETTABLEKS                       R39 R39 K17 ["AnimationGen"]
      319 GETTABLEKS                       R39 R39 K52 ["isRigInWorkspace"]
      321 CALL                             R38 1 1
      322 GETIMPORT                        R39 K13 [require]
      324 GETTABLEKS                       R40 R4 K16 ["Util"]
      326 GETTABLEKS                       R40 R40 K17 ["AnimationGen"]
      328 GETTABLEKS                       R40 R40 K53 ["notifyGuestEditStateChanged"]
      330 CALL                             R39 1 1
      331 DUPCLOSURE                       R40 K54 [PROTO_0]
      332 DUPCLOSURE                       R41 K55 [PROTO_1]
      333 DUPCLOSURE                       R42 K56 [PROTO_2]
      334 CAPTURE                          VAL R0
      335 CAPTURE                          VAL R12
      336 DUPCLOSURE                       R43 K57 [PROTO_3]
      337 CAPTURE                          VAL R19
      338 CAPTURE                          VAL R1
      339 DUPCLOSURE                       R44 K58 [PROTO_4]
      340 CAPTURE                          VAL R19
      341 DUPCLOSURE                       R45 K59 [PROTO_7]
      342 DUPCLOSURE                       R46 K60 [PROTO_8]
      343 CAPTURE                          VAL R38
      344 DUPCLOSURE                       R47 K61 [PROTO_9]
      345 CAPTURE                          VAL R38
      346 DUPCLOSURE                       R48 K62 [PROTO_10]
      347 CAPTURE                          VAL R3
      348 CAPTURE                          VAL R9
      349 DUPCLOSURE                       R49 K63 [PROTO_12]
      350 CAPTURE                          VAL R2
      351 DUPCLOSURE                       R50 K64 [PROTO_13]
      352 CAPTURE                          VAL R2
      353 CAPTURE                          VAL R13
      354 CAPTURE                          VAL R48
      355 DUPCLOSURE                       R51 K65 [PROTO_14]
      356 NEWTABLE                         R52 0 0
      358 LOADNIL                          R53
      359 LOADNIL                          R54
      360 LOADNIL                          R55
      361 LOADNIL                          R56
      362 LOADNIL                          R57
      363 LOADNIL                          R58
      364 LOADNIL                          R59
      365 LOADNIL                          R60
      366 LOADNIL                          R61
      367 LOADNIL                          R62
      368 LOADNIL                          R63
      369 LOADNIL                          R64
      370 LOADB                            R65 0
      371 LOADB                            R66 0
      372 LOADNIL                          R67
      373 DUPCLOSURE                       R68 K66 [PROTO_15]
      374 CAPTURE                          VAL R52
      375 CAPTURE                          VAL R25
      376 NEWCLOSURE                       R69 P13
      377 CAPTURE                          REF R58
      378 CAPTURE                          REF R59
      379 NEWCLOSURE                       R70 P14
      380 CAPTURE                          VAL R15
      381 CAPTURE                          VAL R19
      382 CAPTURE                          VAL R52
      383 CAPTURE                          REF R55
      384 CAPTURE                          VAL R45
      385 NEWCLOSURE                       R71 P15
      386 CAPTURE                          VAL R1
      387 CAPTURE                          VAL R42
      388 CAPTURE                          VAL R19
      389 CAPTURE                          REF R54
      390 CAPTURE                          VAL R15
      391 CAPTURE                          VAL R52
      392 CAPTURE                          REF R55
      393 CAPTURE                          VAL R45
      394 CAPTURE                          VAL R51
      395 NEWCLOSURE                       R72 P16
      396 CAPTURE                          REF R56
      397 CAPTURE                          VAL R19
      398 CAPTURE                          VAL R23
      399 CAPTURE                          VAL R17
      400 CAPTURE                          VAL R12
      401 CAPTURE                          VAL R71
      402 CAPTURE                          REF R60
      403 NEWCLOSURE                       R73 P17
      404 CAPTURE                          REF R63
      405 CAPTURE                          VAL R12
      406 CAPTURE                          VAL R22
      407 CAPTURE                          VAL R15
      408 CAPTURE                          VAL R14
      409 CAPTURE                          VAL R16
      410 CAPTURE                          VAL R24
      411 CAPTURE                          VAL R1
      412 CAPTURE                          VAL R19
      413 CAPTURE                          VAL R37
      414 CAPTURE                          REF R54
      415 CAPTURE                          VAL R70
      416 CAPTURE                          VAL R51
      417 NEWCLOSURE                       R74 P18
      418 CAPTURE                          REF R54
      419 CAPTURE                          VAL R12
      420 CAPTURE                          VAL R2
      421 CAPTURE                          VAL R13
      422 CAPTURE                          VAL R48
      423 CAPTURE                          REF R67
      424 DUPCLOSURE                       R75 K67 [PROTO_22]
      425 CAPTURE                          VAL R12
      426 CAPTURE                          VAL R52
      427 CAPTURE                          VAL R19
      428 CAPTURE                          VAL R38
      429 NEWCLOSURE                       R76 P20
      430 CAPTURE                          REF R60
      431 CAPTURE                          VAL R12
      432 CAPTURE                          VAL R75
      433 CAPTURE                          VAL R73
      434 CAPTURE                          VAL R52
      435 CAPTURE                          VAL R15
      436 CAPTURE                          VAL R50
      437 CAPTURE                          VAL R72
      438 CAPTURE                          REF R54
      439 CAPTURE                          VAL R19
      440 CAPTURE                          REF R67
      441 CAPTURE                          VAL R1
      442 CAPTURE                          VAL R37
      443 CAPTURE                          VAL R70
      444 CAPTURE                          VAL R51
      445 NEWCLOSURE                       R77 P21
      446 CAPTURE                          REF R56
      447 NEWCLOSURE                       R78 P22
      448 CAPTURE                          VAL R12
      449 CAPTURE                          REF R60
      450 CAPTURE                          REF R62
      451 CAPTURE                          VAL R77
      452 CAPTURE                          VAL R76
      453 CAPTURE                          VAL R52
      454 CAPTURE                          VAL R19
      455 CAPTURE                          VAL R11
      456 CAPTURE                          REF R55
      457 CAPTURE                          VAL R45
      458 NEWCLOSURE                       R79 P23
      459 CAPTURE                          REF R62
      460 NEWCLOSURE                       R80 P24
      461 CAPTURE                          VAL R52
      462 CAPTURE                          REF R59
      463 CAPTURE                          VAL R9
      464 CAPTURE                          VAL R1
      465 CAPTURE                          VAL R19
      466 CAPTURE                          REF R54
      467 NEWCLOSURE                       R81 P25
      468 CAPTURE                          REF R55
      469 NEWCLOSURE                       R82 P26
      470 CAPTURE                          REF R55
      471 CAPTURE                          VAL R45
      472 CAPTURE                          VAL R80
      473 CAPTURE                          REF R59
      474 CAPTURE                          REF R58
      475 NEWCLOSURE                       R83 P27
      476 CAPTURE                          VAL R80
      477 CAPTURE                          REF R59
      478 CAPTURE                          REF R58
      479 CAPTURE                          REF R55
      480 CAPTURE                          VAL R45
      481 DUPCLOSURE                       R84 K68 [PROTO_33]
      482 CAPTURE                          VAL R19
      483 CAPTURE                          VAL R9
      484 NEWCLOSURE                       R85 P29
      485 CAPTURE                          REF R63
      486 CAPTURE                          VAL R9
      487 CAPTURE                          VAL R52
      488 CAPTURE                          VAL R80
      489 CAPTURE                          REF R59
      490 CAPTURE                          REF R58
      491 CAPTURE                          REF R55
      492 CAPTURE                          VAL R45
      493 CAPTURE                          VAL R82
      494 NEWCLOSURE                       R86 P30
      495 CAPTURE                          VAL R52
      496 CAPTURE                          VAL R19
      497 CAPTURE                          VAL R9
      498 CAPTURE                          REF R63
      499 CAPTURE                          VAL R80
      500 CAPTURE                          REF R59
      501 CAPTURE                          REF R58
      502 CAPTURE                          REF R55
      503 CAPTURE                          VAL R45
      504 CAPTURE                          VAL R82
      505 NEWCLOSURE                       R87 P31
      506 CAPTURE                          VAL R52
      507 CAPTURE                          VAL R19
      508 CAPTURE                          VAL R9
      509 CAPTURE                          REF R63
      510 CAPTURE                          VAL R80
      511 CAPTURE                          REF R59
      512 CAPTURE                          REF R58
      513 CAPTURE                          REF R55
      514 CAPTURE                          VAL R45
      515 CAPTURE                          VAL R82
      516 NEWCLOSURE                       R88 P32
      517 CAPTURE                          REF R62
      518 NEWCLOSURE                       R89 P33
      519 CAPTURE                          VAL R52
      520 CAPTURE                          REF R55
      521 CAPTURE                          VAL R45
      522 NEWCLOSURE                       R90 P34
      523 CAPTURE                          REF R62
      524 CAPTURE                          VAL R52
      525 CAPTURE                          REF R55
      526 CAPTURE                          VAL R89
      527 CAPTURE                          VAL R87
      528 CAPTURE                          VAL R86
      529 NEWCLOSURE                       R91 P35
      530 CAPTURE                          REF R61
      531 NEWCLOSURE                       R92 P36
      532 CAPTURE                          REF R61
      533 NEWCLOSURE                       R93 P37
      534 CAPTURE                          REF R61
      535 NEWCLOSURE                       R94 P38
      536 CAPTURE                          REF R61
      537 NEWCLOSURE                       R95 P39
      538 CAPTURE                          REF R61
      539 NEWCLOSURE                       R96 P40
      540 CAPTURE                          REF R61
      541 NEWCLOSURE                       R97 P41
      542 CAPTURE                          REF R62
      543 CAPTURE                          VAL R52
      544 CAPTURE                          REF R60
      545 CAPTURE                          VAL R80
      546 NEWCLOSURE                       R98 P42
      547 CAPTURE                          REF R60
      548 NEWCLOSURE                       R99 P43
      549 CAPTURE                          REF R60
      550 NEWCLOSURE                       R100 P44
      551 CAPTURE                          REF R58
      552 CAPTURE                          VAL R52
      553 CAPTURE                          REF R60
      554 CAPTURE                          REF R59
      555 CAPTURE                          VAL R39
      556 NEWCLOSURE                       R101 P45
      557 CAPTURE                          VAL R80
      558 CAPTURE                          REF R57
      559 CAPTURE                          REF R62
      560 CAPTURE                          VAL R11
      561 NEWCLOSURE                       R102 P46
      562 CAPTURE                          VAL R19
      563 CAPTURE                          VAL R80
      564 CAPTURE                          VAL R52
      565 CAPTURE                          REF R62
      566 CAPTURE                          VAL R11
      567 NEWCLOSURE                       R103 P47
      568 CAPTURE                          REF R53
      569 CAPTURE                          VAL R34
      570 CAPTURE                          REF R54
      571 CAPTURE                          VAL R33
      572 CAPTURE                          REF R55
      573 CAPTURE                          VAL R31
      574 CAPTURE                          VAL R52
      575 CAPTURE                          REF R56
      576 CAPTURE                          VAL R32
      577 CAPTURE                          REF R60
      578 CAPTURE                          REF R59
      579 CAPTURE                          REF R57
      580 CAPTURE                          VAL R26
      581 CAPTURE                          REF R58
      582 CAPTURE                          VAL R36
      583 CAPTURE                          VAL R28
      584 CAPTURE                          VAL R45
      585 CAPTURE                          VAL R29
      586 CAPTURE                          REF R61
      587 CAPTURE                          VAL R35
      588 CAPTURE                          VAL R68
      589 CAPTURE                          REF R62
      590 CAPTURE                          VAL R30
      591 CAPTURE                          REF R63
      592 CAPTURE                          VAL R27
      593 CAPTURE                          VAL R74
      594 CAPTURE                          VAL R6
      595 CAPTURE                          REF R64
      596 CAPTURE                          REF R65
      597 NEWCLOSURE                       R67 P48
      598 CAPTURE                          REF R65
      599 CAPTURE                          REF R66
      600 CAPTURE                          VAL R103
      601 NEWCLOSURE                       R104 P49
      602 CAPTURE                          REF R65
      603 CAPTURE                          REF R64
      604 CAPTURE                          REF R57
      605 CAPTURE                          REF R63
      606 CAPTURE                          REF R55
      607 CAPTURE                          REF R53
      608 CAPTURE                          REF R60
      609 CAPTURE                          REF R56
      610 CAPTURE                          VAL R52
      611 CAPTURE                          VAL R68
      612 CAPTURE                          VAL R15
      613 CAPTURE                          REF R62
      614 CAPTURE                          REF R59
      615 CAPTURE                          REF R58
      616 NEWCLOSURE                       R105 P50
      617 CAPTURE                          VAL R10
      618 CAPTURE                          REF R66
      619 CAPTURE                          REF R67
      620 CAPTURE                          VAL R6
      621 CAPTURE                          REF R62
      622 CAPTURE                          VAL R90
      623 CAPTURE                          VAL R52
      624 CAPTURE                          REF R60
      625 CAPTURE                          VAL R80
      626 CAPTURE                          REF R55
      627 CAPTURE                          VAL R78
      628 CAPTURE                          VAL R47
      629 CAPTURE                          VAL R86
      630 CAPTURE                          VAL R87
      631 CAPTURE                          REF R63
      632 CAPTURE                          REF R65
      633 CAPTURE                          VAL R19
      634 CAPTURE                          VAL R101
      635 CAPTURE                          VAL R102
      636 CAPTURE                          VAL R91
      637 CAPTURE                          VAL R92
      638 CAPTURE                          VAL R93
      639 CAPTURE                          VAL R94
      640 CAPTURE                          VAL R95
      641 CAPTURE                          REF R61
      642 CAPTURE                          VAL R100
      643 CAPTURE                          VAL R104
      644 DUPTABLE                         R106 K71 [{"destroy", "connectRemotes"}]
      645 SETTABLEKS                       R104 R106 K69 ["destroy"]
      647 SETTABLEKS                       R105 R106 K70 ["connectRemotes"]
      649 CLOSEUPVALS                      R53
      650 RETURN                           R106 1
