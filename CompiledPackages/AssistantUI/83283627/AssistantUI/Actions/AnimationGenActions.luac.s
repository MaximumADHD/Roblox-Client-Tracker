PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bridge"]
        3 GETTABLEKS                       R0 R0 K1 ["animatorRemoved"]
        5 DUPTABLE                         R1 K3 [{"toolUseId"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["toolUseId"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bridge"]
        3 GETTABLEKS                       R0 R0 K1 ["rigSelected"]
        5 DUPTABLE                         R1 K3 [{"toolUseId"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["toolUseId"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["initArgs"]
        3 GETTABLEKS                       R2 R2 K1 ["environment"]
        5 GETTABLEKS                       R2 R2 K2 ["instances"]
        7 GETTABLEKS                       R2 R2 K3 ["getUniqueId"]
        9 MOVE                             R3 R0
       10 CALL                             R2 1 -1
       11 FASTCALL                         TOSTRING ; [+2]
       12 GETIMPORT                        R1 K5 [tostring]
       14 CALL                             R1 -1 1
       15 RETURN                           R1 1

PROTO_3:
        0 DUPTABLE                         R2 K4 [{"id", "animatorRemoved", "rigSelected", "getUniqueId"}]
        1 SETTABLEKS                       R0 R2 K0 ["id"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R3 R2 K1 ["animatorRemoved"]
        8 NEWCLOSURE                       R3 P1
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R3 R2 K2 ["rigSelected"]
       13 NEWCLOSURE                       R3 P2
       14 CAPTURE                          VAL R1
       15 SETTABLEKS                       R3 R2 K3 ["getUniqueId"]
       17 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["initArgs"]
        2 GETTABLEKS                       R1 R1 K1 ["environment"]
        4 GETTABLEKS                       R2 R1 K2 ["selection"]
        6 GETTABLEKS                       R2 R2 K3 ["get"]
        8 CALL                             R2 0 1
        9 LENGTH                           R3 R2
       10 JUMPIFEQKN                       R3 K4 [1] ; [+3]
       12 LOADNIL                          R3
       13 RETURN                           R3 1
       14 GETTABLEN                        R3 R2 1
       15 GETUPVAL                         R4 0
       16 MOVE                             R5 R3
       17 CALL                             R4 1 1
       18 JUMPIF                           R4 ; [+2]
       19 LOADNIL                          R4
       20 RETURN                           R4 1
       21 GETTABLEKS                       R4 R1 K5 ["instances"]
       23 GETTABLEKS                       R4 R4 K6 ["getUniqueId"]
       25 MOVE                             R5 R3
       26 CALL                             R4 1 1
       27 DUPTABLE                         R5 K10 [{"uniqueId", "name", "className"}]
       28 SETTABLEKS                       R4 R5 K7 ["uniqueId"]
       30 GETTABLEKS                       R6 R3 K11 ["Name"]
       32 SETTABLEKS                       R6 R5 K8 ["name"]
       34 GETTABLEKS                       R6 R3 K12 ["ClassName"]
       36 SETTABLEKS                       R6 R5 K9 ["className"]
       38 RETURN                           R5 1

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["initArgs"]
        2 GETTABLEKS                       R2 R2 K1 ["environment"]
        4 GETTABLEKS                       R3 R0 K2 ["toolUseId"]
        6 LOADNIL                          R4
        7 GETTABLEKS                       R5 R0 K3 ["mode"]
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R6 R6 K4 ["AnimationGenMode"]
       12 GETTABLEKS                       R6 R6 K5 ["New"]
       14 JUMPIFNOTEQ                      R5 R6 ; [+9]
       16 GETTABLEKS                       R5 R0 K6 ["rigUniqueId"]
       18 JUMPIFNOTEQKNIL                  R5 ; [+5]
       20 GETIMPORT                        R5 K8 [error]
       22 LOADK                            R6 K9 ["rigUniqueId is required when mode is New"]
       23 CALL                             R5 1 0
       24 GETTABLEKS                       R5 R0 K6 ["rigUniqueId"]
       26 JUMPIFEQKNIL                     R5 ; [+10]
       28 GETTABLEKS                       R5 R2 K10 ["instances"]
       30 GETTABLEKS                       R5 R5 K11 ["getInstanceFromUniqueId"]
       32 GETTABLEKS                       R6 R0 K6 ["rigUniqueId"]
       34 CALL                             R5 1 1
       35 MOVE                             R4 R5
       36 JUMP                             ; [+3]
       37 GETUPVAL                         R5 1
       38 GETTABLEKS                       R4 R5 K12 ["rig"]
       40 JUMPIFEQKNIL                     R4 ; [+10]
       42 GETTABLEKS                       R5 R4 K13 ["Parent"]
       44 JUMPIFEQKNIL                     R5 ; [+6]
       46 LOADK                            R7 K14 ["Model"]
       47 NAMECALL                         R5 R4 K15 ["IsA"]
       49 CALL                             R5 2 1
       50 JUMPIF                           R5 ; [+2]
       51 DUPTABLE                         R5 K20 [{["duration"] = 0, ["name"] = ""}]
       52 RETURN                           R5 1
       53 GETUPVAL                         R5 2
       54 GETTABLEKS                       R5 R5 K21 ["generateAndSaveAnimationAsync"]
       56 DUPTABLE                         R6 K30 [{"rig", "prompt", "mode", "duration", "loop", "startFrame", "endFrame", "styleConstraint", "styleStrength", "numPriorFrames", "id"}]
       57 SETTABLEKS                       R4 R6 K12 ["rig"]
       59 GETTABLEKS                       R7 R0 K22 ["prompt"]
       61 SETTABLEKS                       R7 R6 K22 ["prompt"]
       63 GETTABLEKS                       R7 R0 K3 ["mode"]
       65 SETTABLEKS                       R7 R6 K3 ["mode"]
       67 GETTABLEKS                       R7 R0 K16 ["duration"]
       69 SETTABLEKS                       R7 R6 K16 ["duration"]
       71 GETTABLEKS                       R7 R0 K23 ["loop"]
       73 SETTABLEKS                       R7 R6 K23 ["loop"]
       75 GETTABLEKS                       R7 R0 K24 ["startFrame"]
       77 SETTABLEKS                       R7 R6 K24 ["startFrame"]
       79 GETTABLEKS                       R7 R0 K25 ["endFrame"]
       81 SETTABLEKS                       R7 R6 K25 ["endFrame"]
       83 GETTABLEKS                       R7 R0 K26 ["styleConstraint"]
       85 SETTABLEKS                       R7 R6 K26 ["styleConstraint"]
       87 GETTABLEKS                       R7 R0 K27 ["styleStrength"]
       89 SETTABLEKS                       R7 R6 K27 ["styleStrength"]
       91 GETUPVAL                         R7 1
       92 GETTABLEKS                       R7 R7 K31 ["frameCount"]
       94 SETTABLEKS                       R7 R6 K28 ["numPriorFrames"]
       96 SETTABLEKS                       R3 R6 K29 ["id"]
       98 MOVE                             R7 R2
       99 CALL                             R5 2 1
      100 GETTABLEKS                       R6 R5 K32 ["success"]
      102 JUMPIFNOT                        R6 ; [+4]
      103 GETTABLEKS                       R6 R5 K33 ["keyframeSequence"]
      105 JUMPIFNOTEQKNIL                  R6 ; [+3]
      107 DUPTABLE                         R6 K20 [{["duration"] = 0, ["name"] = ""}]
      108 RETURN                           R6 1
      109 GETUPVAL                         R6 3
      110 DUPTABLE                         R7 K36 [{["rig"], ["keyframeSequence"], ["needsReload"] = True}]
      111 SETTABLEKS                       R4 R7 K12 ["rig"]
      113 GETTABLEKS                       R8 R5 K33 ["keyframeSequence"]
      115 SETTABLEKS                       R8 R7 K33 ["keyframeSequence"]
      117 SETTABLE                         R7 R6 R3
      118 GETUPVAL                         R6 4
      119 GETTABLEKS                       R6 R6 K37 ["setAnimation"]
      121 GETUPVAL                         R7 5
      122 MOVE                             R8 R3
      123 MOVE                             R9 R1
      124 CALL                             R7 2 1
      125 CALL                             R6 1 0
      126 GETTABLEKS                       R6 R5 K33 ["keyframeSequence"]
      128 GETTABLEKS                       R6 R6 K38 ["Length"]
      130 LOADN                            R7 0
      131 JUMPIFNOTLT                      R7 R6 ; [+25]
      133 GETUPVAL                         R7 1
      134 SETTABLEKS                       R4 R7 K12 ["rig"]
      136 GETUPVAL                         R7 1
      137 LOADN                            R9 1
      138 GETTABLEKS                       R12 R5 K33 ["keyframeSequence"]
      140 GETTABLEKS                       R12 R12 K38 ["Length"]
      142 GETUPVAL                         R13 6
      143 GETTABLEKS                       R13 R13 K39 ["DEFAULT_GENERATION_FPS"]
      145 MUL                              R11 R12 R13
      146 FASTCALL1                        MATH_ROUND R11 ; [+2]
      147 GETIMPORT                        R10 K42 [math.round]
      149 CALL                             R10 1 1
      150 FASTCALL2                        MATH_MAX R9 R10 ; [+3]
      152 GETIMPORT                        R8 K44 [math.max]
      154 CALL                             R8 2 1
      155 SETTABLEKS                       R8 R7 K31 ["frameCount"]
      157 DUPTABLE                         R7 K46 [{"duration", "name", "generationId"}]
      158 SETTABLEKS                       R6 R7 K16 ["duration"]
      160 GETTABLEKS                       R8 R5 K33 ["keyframeSequence"]
      162 GETTABLEKS                       R8 R8 K47 ["Name"]
      164 SETTABLEKS                       R8 R7 K18 ["name"]
      166 GETTABLEKS                       R8 R5 K45 ["generationId"]
      168 SETTABLEKS                       R8 R7 K45 ["generationId"]
      170 RETURN                           R7 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["toolUseId"]
        3 GETTABLE                         R2 R3 R4
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K1 ["setIsPlaying"]
       10 GETTABLEKS                       R3 R0 K2 ["isPlaying"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R5 R0 K0 ["toolUseId"]
       15 MOVE                             R6 R1
       16 CALL                             R4 2 1
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["toolUseId"]
        3 GETTABLE                         R2 R3 R4
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K1 ["setCurrentTime"]
       10 GETTABLEKS                       R3 R0 K2 ["currentTime"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R5 R0 K0 ["toolUseId"]
       15 MOVE                             R6 R1
       16 CALL                             R4 2 1
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["toolUseId"]
        3 GETTABLE                         R2 R3 R4
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K1 ["setPlaybackSpeed"]
       10 GETTABLEKS                       R3 R0 K2 ["playbackSpeed"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R5 R0 K0 ["toolUseId"]
       15 MOVE                             R6 R1
       16 CALL                             R4 2 1
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["toolUseId"]
        3 GETTABLE                         R2 R3 R4
        4 GETTABLEKS                       R3 R1 K1 ["initArgs"]
        6 GETTABLEKS                       R3 R3 K2 ["environment"]
        8 JUMPIFNOT                        R2 ; [+3]
        9 GETTABLEKS                       R4 R2 K3 ["keyframeSequence"]
       11 JUMPIF                           R4 ; [+1]
       12 RETURN                           R0 0
       13 GETTABLEKS                       R4 R3 K4 ["tools"]
       15 GETTABLEKS                       R4 R4 K5 ["animationGen"]
       17 GETTABLEKS                       R4 R4 K6 ["publishAnimationAsync"]
       19 DUPTABLE                         R5 K7 [{"keyframeSequence"}]
       20 GETTABLEKS                       R6 R2 K3 ["keyframeSequence"]
       22 SETTABLEKS                       R6 R5 K3 ["keyframeSequence"]
       24 CALL                             R4 1 0
       25 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetTags"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["FFlagAssistantUseNewTags"]
        8 JUMPIFNOT                        R3 ; [+2]
        9 LOADK                            R2 K2 ["RBXAI%-Animation%-"]
       10 JUMP                             ; [+1]
       11 LOADK                            R2 K3 ["Assistant%-AnimationGenLink%-"]
       12 MOVE                             R3 R1
       13 LOADNIL                          R4
       14 LOADNIL                          R5
       15 FORGPREP                         R3
       16 GETIMPORT                        R8 K6 [string.find]
       18 MOVE                             R9 R7
       19 MOVE                             R10 R2
       20 CALL                             R8 2 1
       21 JUMPIFNOT                        R8 ; [+1]
       22 RETURN                           R7 1
       23 FORGLOOP                         R3 2 ; [-8]
       25 LOADNIL                          R3
       26 RETURN                           R3 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+12]
        7 GETIMPORT                        R2 K3 [Instance.new]
        9 LOADK                            R3 K4 ["Model"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 1
       12 SETTABLEKS                       R3 R2 K5 ["Name"]
       14 GETUPVAL                         R3 0
       15 SETTABLEKS                       R3 R2 K6 ["Parent"]
       17 MOVE                             R1 R2
       18 LOADNIL                          R2
       19 GETUPVAL                         R5 2
       20 NAMECALL                         R3 R0 K0 ["FindFirstChild"]
       22 CALL                             R3 2 1
       23 JUMPIFNOT                        R3 ; [+7]
       24 LOADK                            R6 K7 ["ObjectValue"]
       25 NAMECALL                         R4 R3 K8 ["IsA"]
       27 CALL                             R4 2 1
       28 JUMPIFNOT                        R4 ; [+2]
       29 MOVE                             R2 R3
       30 JUMP                             ; [+23]
       31 GETIMPORT                        R4 K3 [Instance.new]
       33 LOADK                            R5 K7 ["ObjectValue"]
       34 CALL                             R4 1 1
       35 GETUPVAL                         R5 2
       36 SETTABLEKS                       R5 R4 K5 ["Name"]
       38 SETTABLEKS                       R0 R4 K6 ["Parent"]
       40 JUMPIFEQKNIL                     R3 ; [+12]
       42 NAMECALL                         R5 R3 K9 ["GetChildren"]
       44 CALL                             R5 1 3
       45 FORGPREP                         R5
       46 SETTABLEKS                       R4 R9 K6 ["Parent"]
       48 FORGLOOP                         R5 2 ; [-3]
       50 NAMECALL                         R5 R3 K10 ["Destroy"]
       52 CALL                             R5 1 0
       53 MOVE                             R2 R4
       54 GETTABLEKS                       R4 R2 K11 ["Value"]
       56 JUMPIFNOT                        R4 ; [+9]
       57 LOADK                            R7 K7 ["ObjectValue"]
       58 NAMECALL                         R5 R4 K8 ["IsA"]
       60 CALL                             R5 2 1
       61 JUMPIFNOT                        R5 ; [+4]
       62 GETTABLEKS                       R5 R4 K11 ["Value"]
       64 JUMPIFEQ                         R5 R0 ; [+16]
       66 GETIMPORT                        R5 K3 [Instance.new]
       68 LOADK                            R6 K7 ["ObjectValue"]
       69 CALL                             R5 1 1
       70 GETTABLEKS                       R6 R0 K5 ["Name"]
       72 SETTABLEKS                       R6 R5 K5 ["Name"]
       74 SETTABLEKS                       R1 R5 K6 ["Parent"]
       76 SETTABLEKS                       R0 R5 K11 ["Value"]
       78 MOVE                             R4 R5
       79 SETTABLEKS                       R4 R2 K11 ["Value"]
       81 RETURN                           R4 1

PROTO_12:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 CALL                             R3 1 1
        3 LOADB                            R4 0
        4 NAMECALL                         R5 R3 K0 ["GetChildren"]
        6 CALL                             R5 1 3
        7 FORGPREP                         R5
        8 LOADK                            R12 K1 ["KeyframeSequence"]
        9 NAMECALL                         R10 R9 K2 ["IsA"]
       11 CALL                             R10 2 1
       12 JUMPIFNOT                        R10 ; [+9]
       13 GETUPVAL                         R10 1
       14 MOVE                             R12 R9
       15 MOVE                             R13 R2
       16 NAMECALL                         R10 R10 K3 ["HasTag"]
       18 CALL                             R10 3 1
       19 JUMPIFNOT                        R10 ; [+2]
       20 LOADB                            R4 1
       21 JUMP                             ; [+2]
       22 FORGLOOP                         R5 2 ; [-15]
       24 JUMPIF                           R4 ; [+5]
       25 NAMECALL                         R5 R0 K4 ["Clone"]
       27 CALL                             R5 1 1
       28 SETTABLEKS                       R3 R5 K5 ["Parent"]
       30 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 LOADK                            R2 K0 ["OpenAnimationInClipEditor"]
        7 GETUPVAL                         R3 2
        8 NAMECALL                         R0 R0 K1 ["Fire"]
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["AnimationClipEditorReady"]
        2 NAMECALL                         R1 R1 K1 ["GetItem"]
        4 CALL                             R1 2 1
        5 JUMPIFEQKS                       R1 K2 ["true"] ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_15:
        0 JUMPIFEQKS                       R0 K0 ["true"] ; [+2]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 JUMPIFEQKNIL                     R1 ; [+7]
        6 GETUPVAL                         R1 0
        7 NAMECALL                         R1 R1 K1 ["Disconnect"]
        9 CALL                             R1 1 0
       10 LOADNIL                          R1
       11 SETUPVAL                         R1 0
       12 GETUPVAL                         R1 1
       13 JUMPIFNOT                        R1 ; [+1]
       14 RETURN                           R0 0
       15 LOADB                            R1 1
       16 SETUPVAL                         R1 1
       17 GETUPVAL                         R1 2
       18 LOADK                            R3 K2 ["OpenAnimationInClipEditor"]
       19 GETUPVAL                         R4 3
       20 NAMECALL                         R1 R1 K3 ["Fire"]
       22 CALL                             R1 3 0
       23 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAnimationGenOpenACE"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R4 R0 K1 ["toolUseId"]
        8 GETTABLE                         R2 R3 R4
        9 JUMPIFEQKNIL                     R2 ; [+5]
       11 GETTABLEKS                       R3 R2 K2 ["keyframeSequence"]
       13 JUMPIFNOTEQKNIL                  R3 ; [+6]
       15 GETIMPORT                        R3 K4 [warn]
       17 LOADK                            R4 K5 ["[AnimationGen] Open in Clip Editor: no generated animation for this content."]
       18 CALL                             R3 1 0
       19 RETURN                           R0 0
       20 GETTABLEKS                       R3 R2 K6 ["rig"]
       22 JUMPIFEQKNIL                     R3 ; [+10]
       24 LOADK                            R6 K7 ["Model"]
       25 NAMECALL                         R4 R3 K8 ["IsA"]
       27 CALL                             R4 2 1
       28 JUMPIFNOT                        R4 ; [+4]
       29 GETTABLEKS                       R4 R3 K9 ["Parent"]
       31 JUMPIFNOTEQKNIL                  R4 ; [+6]
       33 GETIMPORT                        R4 K4 [warn]
       35 LOADK                            R5 K10 ["[AnimationGen] Open in Clip Editor: rig is missing or no longer in the scene."]
       36 CALL                             R4 1 0
       37 RETURN                           R0 0
       38 GETTABLEKS                       R4 R2 K2 ["keyframeSequence"]
       40 GETUPVAL                         R5 2
       41 MOVE                             R6 R4
       42 CALL                             R5 1 1
       43 JUMPIFNOTEQKNIL                  R5 ; [+6]
       45 GETIMPORT                        R6 K4 [warn]
       47 LOADK                            R7 K11 ["[AnimationGen] Open in Clip Editor: generated animation has no link tag."]
       48 CALL                             R6 1 0
       49 RETURN                           R0 0
       50 GETUPVAL                         R6 3
       51 MOVE                             R7 R4
       52 MOVE                             R8 R3
       53 MOVE                             R9 R5
       54 CALL                             R6 3 0
       55 GETTABLEKS                       R6 R1 K12 ["initArgs"]
       57 GETTABLEKS                       R6 R6 K13 ["environment"]
       59 GETUPVAL                         R7 4
       60 DUPTABLE                         R9 K16 [{"animationTag", "rigUniqueId"}]
       61 SETTABLEKS                       R5 R9 K14 ["animationTag"]
       63 GETTABLEKS                       R11 R6 K17 ["instances"]
       65 GETTABLEKS                       R11 R11 K18 ["getUniqueId"]
       67 MOVE                             R12 R3
       68 CALL                             R11 1 -1
       69 FASTCALL                         TOSTRING ; [+2]
       70 GETIMPORT                        R10 K20 [tostring]
       72 CALL                             R10 -1 1
       73 SETTABLEKS                       R10 R9 K15 ["rigUniqueId"]
       75 NAMECALL                         R7 R7 K21 ["JSONEncode"]
       77 CALL                             R7 2 1
       78 LOADB                            R8 0
       79 NEWCLOSURE                       R9 P0
       80 CAPTURE                          REF R8
       81 CAPTURE                          UPVAL U5
       82 CAPTURE                          VAL R7
       83 DUPCLOSURE                       R10 K22 [PROTO_14]
       84 CAPTURE                          UPVAL U5
       85 GETUPVAL                         R12 5
       86 LOADK                            R14 K23 ["AnimationClipEditorReady"]
       87 NAMECALL                         R12 R12 K24 ["GetItem"]
       89 CALL                             R12 2 1
       90 JUMPIFEQKS                       R12 K25 ["true"] ; [+2]
       92 LOADB                            R11 0 +1
       93 LOADB                            R11 1
       94 JUMPIFNOT                        R11 ; [+10]
       95 JUMPIFNOT                        R8 ; [+1]
       96 JUMP                             ; [+56]
       97 LOADB                            R8 1
       98 GETUPVAL                         R11 5
       99 LOADK                            R13 K26 ["OpenAnimationInClipEditor"]
      100 MOVE                             R14 R7
      101 NAMECALL                         R11 R11 K27 ["Fire"]
      103 CALL                             R11 3 0
      104 JUMP                             ; [+48]
      105 GETUPVAL                         R11 6
      106 JUMPIFEQKNIL                     R11 ; [+7]
      108 GETUPVAL                         R11 6
      109 NAMECALL                         R11 R11 K28 ["Disconnect"]
      111 CALL                             R11 1 0
      112 LOADNIL                          R11
      113 SETUPVAL                         R11 6
      114 GETUPVAL                         R11 5
      115 LOADK                            R13 K23 ["AnimationClipEditorReady"]
      116 NEWCLOSURE                       R14 P2
      117 CAPTURE                          UPVAL U6
      118 CAPTURE                          REF R8
      119 CAPTURE                          UPVAL U5
      120 CAPTURE                          VAL R7
      121 NAMECALL                         R11 R11 K29 ["Bind"]
      123 CALL                             R11 3 1
      124 SETUPVAL                         R11 6
      125 GETUPVAL                         R12 5
      126 LOADK                            R14 K23 ["AnimationClipEditorReady"]
      127 NAMECALL                         R12 R12 K24 ["GetItem"]
      129 CALL                             R12 2 1
      130 JUMPIFEQKS                       R12 K25 ["true"] ; [+2]
      132 LOADB                            R11 0 +1
      133 LOADB                            R11 1
      134 JUMPIFNOT                        R11 ; [+18]
      135 GETUPVAL                         R11 6
      136 JUMPIFEQKNIL                     R11 ; [+16]
      138 GETUPVAL                         R11 6
      139 NAMECALL                         R11 R11 K28 ["Disconnect"]
      141 CALL                             R11 1 0
      142 LOADNIL                          R11
      143 SETUPVAL                         R11 6
      144 JUMPIFNOT                        R8 ; [+1]
      145 JUMP                             ; [+7]
      146 LOADB                            R8 1
      147 GETUPVAL                         R11 5
      148 LOADK                            R13 K26 ["OpenAnimationInClipEditor"]
      149 MOVE                             R14 R7
      150 NAMECALL                         R11 R11 K27 ["Fire"]
      152 CALL                             R11 3 0
      153 GETTABLEKS                       R11 R6 K30 ["tools"]
      155 GETTABLEKS                       R11 R11 K31 ["animationGen"]
      157 GETTABLEKS                       R11 R11 K32 ["openAnimationClipEditorAsync"]
      159 JUMPIFEQKNIL                     R11 ; [+3]
      161 MOVE                             R12 R11
      162 CALL                             R12 0 0
      163 CLOSEUPVALS                      R8
      164 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+7]
        3 GETUPVAL                         R0 0
        4 NAMECALL                         R0 R0 K0 ["Disconnect"]
        6 CALL                             R0 1 0
        7 LOADNIL                          R0
        8 SETUPVAL                         R0 0
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K1 ["destroy"]
       12 CALL                             R0 0 0
       13 GETUPVAL                         R0 2
       14 GETTABLEKS                       R0 R0 K1 ["destroy"]
       16 CALL                             R0 0 0
       17 RETURN                           R0 0

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
       15 LOADK                            R4 K5 ["MemStorageService"]
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
       31 GETIMPORT                        R5 K12 [require]
       33 GETTABLEKS                       R6 R4 K13 ["Bridges"]
       35 GETTABLEKS                       R6 R6 K14 ["createAnimationGenBridge"]
       37 GETTABLEKS                       R6 R6 K15 ["AnimationGenBridgeTypes"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K12 [require]
       42 GETTABLEKS                       R7 R4 K16 ["Util"]
       44 GETTABLEKS                       R7 R7 K17 ["AnimationGen"]
       46 GETTABLEKS                       R7 R7 K18 ["AnimationGenConstants"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K12 [require]
       51 GETTABLEKS                       R8 R4 K16 ["Util"]
       53 GETTABLEKS                       R8 R8 K17 ["AnimationGen"]
       55 GETTABLEKS                       R8 R8 K19 ["AnimationGenTypes"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K12 [require]
       60 GETTABLEKS                       R9 R4 K20 ["Flags"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K12 [require]
       65 GETTABLEKS                       R10 R4 K16 ["Util"]
       67 GETTABLEKS                       R10 R10 K17 ["AnimationGen"]
       69 GETTABLEKS                       R10 R10 K21 ["HostTypes"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K12 [require]
       74 GETTABLEKS                       R11 R4 K16 ["Util"]
       76 GETTABLEKS                       R11 R11 K17 ["AnimationGen"]
       78 GETTABLEKS                       R11 R11 K22 ["createHostAnimator"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K12 [require]
       83 GETTABLEKS                       R12 R4 K16 ["Util"]
       85 GETTABLEKS                       R12 R12 K17 ["AnimationGen"]
       87 GETTABLEKS                       R12 R12 K23 ["createHostGenerator"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K12 [require]
       92 GETTABLEKS                       R13 R4 K16 ["Util"]
       94 GETTABLEKS                       R13 R13 K17 ["AnimationGen"]
       96 GETTABLEKS                       R13 R13 K24 ["createHostSelection"]
       98 CALL                             R12 1 1
       99 GETIMPORT                        R13 K12 [require]
      101 GETTABLEKS                       R14 R4 K16 ["Util"]
      103 GETTABLEKS                       R14 R14 K17 ["AnimationGen"]
      105 GETTABLEKS                       R14 R14 K25 ["isRig"]
      107 CALL                             R13 1 1
      108 GETTABLEKS                       R14 R6 K26 ["RBX_ANIMSAVES_FOLDER_NAME"]
      110 GETTABLEKS                       R15 R6 K27 ["ANIM_SAVES_INSTANCE_NAME"]
      112 DUPTABLE                         R16 K32 [{["rig"] = , ["frameCount"] = 0}]
      113 NEWTABLE                         R17 0 0
      115 LOADNIL                          R18
      116 MOVE                             R19 R12
      117 CALL                             R19 0 1
      118 MOVE                             R20 R11
      119 CALL                             R20 0 1
      120 MOVE                             R21 R10
      121 GETTABLEKS                       R22 R19 K33 ["selectionChangedSignal"]
      123 MOVE                             R23 R17
      124 CALL                             R21 2 1
      125 DUPCLOSURE                       R22 K34 [PROTO_3]
      126 DUPCLOSURE                       R23 K35 [PROTO_4]
      127 CAPTURE                          VAL R13
      128 DUPCLOSURE                       R24 K36 [PROTO_5]
      129 CAPTURE                          VAL R7
      130 CAPTURE                          VAL R16
      131 CAPTURE                          VAL R20
      132 CAPTURE                          VAL R17
      133 CAPTURE                          VAL R21
      134 CAPTURE                          VAL R22
      135 CAPTURE                          VAL R6
      136 DUPCLOSURE                       R25 K37 [PROTO_6]
      137 CAPTURE                          VAL R17
      138 CAPTURE                          VAL R21
      139 CAPTURE                          VAL R22
      140 DUPCLOSURE                       R26 K38 [PROTO_7]
      141 CAPTURE                          VAL R17
      142 CAPTURE                          VAL R21
      143 CAPTURE                          VAL R22
      144 DUPCLOSURE                       R27 K39 [PROTO_8]
      145 CAPTURE                          VAL R17
      146 CAPTURE                          VAL R21
      147 CAPTURE                          VAL R22
      148 DUPCLOSURE                       R28 K40 [PROTO_9]
      149 CAPTURE                          VAL R17
      150 DUPCLOSURE                       R29 K41 [PROTO_10]
      151 CAPTURE                          VAL R0
      152 CAPTURE                          VAL R8
      153 DUPCLOSURE                       R30 K42 [PROTO_11]
      154 CAPTURE                          VAL R3
      155 CAPTURE                          VAL R14
      156 CAPTURE                          VAL R15
      157 DUPCLOSURE                       R31 K43 [PROTO_12]
      158 CAPTURE                          VAL R30
      159 CAPTURE                          VAL R0
      160 NEWCLOSURE                       R32 P10
      161 CAPTURE                          VAL R8
      162 CAPTURE                          VAL R17
      163 CAPTURE                          VAL R29
      164 CAPTURE                          VAL R31
      165 CAPTURE                          VAL R1
      166 CAPTURE                          VAL R2
      167 CAPTURE                          REF R18
      168 NEWCLOSURE                       R33 P11
      169 CAPTURE                          REF R18
      170 CAPTURE                          VAL R21
      171 CAPTURE                          VAL R19
      172 DUPTABLE                         R34 K51 [{"generateAndSaveAnimationAsync", "getSelectedRigRef", "setIsPlaying", "setCurrentTime", "setPlaybackSpeed", "publishAnimationAsync", "openInAnimationClipEditor"}]
      173 SETTABLEKS                       R24 R34 K44 ["generateAndSaveAnimationAsync"]
      175 SETTABLEKS                       R23 R34 K45 ["getSelectedRigRef"]
      177 SETTABLEKS                       R25 R34 K46 ["setIsPlaying"]
      179 SETTABLEKS                       R26 R34 K47 ["setCurrentTime"]
      181 SETTABLEKS                       R27 R34 K48 ["setPlaybackSpeed"]
      183 SETTABLEKS                       R28 R34 K49 ["publishAnimationAsync"]
      185 SETTABLEKS                       R32 R34 K50 ["openInAnimationClipEditor"]
      187 DUPTABLE                         R35 K54 [{"bridge", "destroy"}]
      188 SETTABLEKS                       R34 R35 K52 ["bridge"]
      190 SETTABLEKS                       R33 R35 K53 ["destroy"]
      192 CLOSEUPVALS                      R18
      193 RETURN                           R35 1
