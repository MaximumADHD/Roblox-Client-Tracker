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
        3 GETTABLEKS                       R0 R0 K1 ["restartPlayback"]
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
        0 DUPTABLE                         R2 K4 [{"id", "animatorRemoved", "restartPlayback", "getUniqueId"}]
        1 SETTABLEKS                       R0 R2 K0 ["id"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R3 R2 K1 ["animatorRemoved"]
        8 NEWCLOSURE                       R3 P1
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R3 R2 K2 ["restartPlayback"]
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
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["generateAnimationAsync"]
        9 DUPTABLE                         R5 K8 [{"prompt", "duration", "loop", "id"}]
       10 GETTABLEKS                       R6 R0 K4 ["prompt"]
       12 SETTABLEKS                       R6 R5 K4 ["prompt"]
       14 GETTABLEKS                       R6 R0 K5 ["duration"]
       16 SETTABLEKS                       R6 R5 K5 ["duration"]
       18 GETTABLEKS                       R6 R0 K6 ["loop"]
       20 SETTABLEKS                       R6 R5 K6 ["loop"]
       22 SETTABLEKS                       R3 R5 K7 ["id"]
       24 MOVE                             R6 R2
       25 CALL                             R4 2 1
       26 GETTABLEKS                       R5 R4 K9 ["keyframeSequence"]
       28 GETTABLEKS                       R6 R4 K10 ["success"]
       30 JUMPIFNOT                        R6 ; [+2]
       31 JUMPIFNOTEQKNIL                  R5 ; [+10]
       33 DUPTABLE                         R6 K15 [{["duration"] = 0, ["name"] = "", ["failureReason"]}]
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R7 R7 K16 ["FailureReasons"]
       37 GETTABLEKS                       R7 R7 K17 ["GenerationFailed"]
       39 SETTABLEKS                       R7 R6 K14 ["failureReason"]
       41 RETURN                           R6 1
       42 LOADNIL                          R6
       43 GETTABLEKS                       R7 R0 K18 ["rigUniqueId"]
       45 JUMPIFEQKNIL                     R7 ; [+15]
       47 GETTABLEKS                       R7 R2 K19 ["instances"]
       49 GETTABLEKS                       R7 R7 K20 ["getInstanceFromUniqueId"]
       51 GETTABLEKS                       R8 R0 K18 ["rigUniqueId"]
       53 CALL                             R7 1 1
       54 JUMPIFEQKNIL                     R7 ; [+6]
       56 GETUPVAL                         R8 2
       57 MOVE                             R9 R7
       58 CALL                             R8 1 1
       59 JUMPIFNOT                        R8 ; [+1]
       60 MOVE                             R6 R7
       61 LOADB                            R7 0
       62 GETTABLEKS                       R8 R2 K21 ["startRecording"]
       64 MOVE                             R9 R3
       65 CALL                             R8 1 0
       66 JUMPIFNOTEQKNIL                  R6 ; [+10]
       68 GETUPVAL                         R8 3
       69 GETIMPORT                        R9 K25 [Enum.HumanoidRigType.R15]
       71 CALL                             R8 1 1
       72 MOVE                             R6 R8
       73 JUMPIFNOTEQKNIL                  R6 ; [+2]
       75 LOADB                            R7 0 +1
       76 LOADB                            R7 1
       77 JUMPIFEQKNIL                     R6 ; [+7]
       79 GETUPVAL                         R8 0
       80 GETTABLEKS                       R8 R8 K26 ["saveKeyframeSequence"]
       82 MOVE                             R9 R5
       83 MOVE                             R10 R6
       84 CALL                             R8 2 0
       85 GETTABLEKS                       R8 R2 K27 ["endRecording"]
       87 MOVE                             R9 R3
       88 CALL                             R8 1 0
       89 JUMPIFNOTEQKNIL                  R6 ; [+10]
       91 DUPTABLE                         R8 K15 [{["duration"] = 0, ["name"] = "", ["failureReason"]}]
       92 GETUPVAL                         R9 1
       93 GETTABLEKS                       R9 R9 K16 ["FailureReasons"]
       95 GETTABLEKS                       R9 R9 K28 ["RigInsertFailed"]
       97 SETTABLEKS                       R9 R8 K14 ["failureReason"]
       99 RETURN                           R8 1
      100 GETUPVAL                         R8 4
      101 DUPTABLE                         R9 K32 [{["rig"], ["keyframeSequence"], ["needsReload"] = True}]
      102 SETTABLEKS                       R6 R9 K29 ["rig"]
      104 SETTABLEKS                       R5 R9 K9 ["keyframeSequence"]
      106 SETTABLE                         R9 R8 R3
      107 GETUPVAL                         R8 5
      108 GETTABLEKS                       R8 R8 K33 ["setAnimation"]
      110 GETUPVAL                         R9 6
      111 MOVE                             R10 R3
      112 MOVE                             R11 R1
      113 CALL                             R9 2 1
      114 CALL                             R8 1 0
      115 JUMPIFNOT                        R7 ; [+10]
      116 GETTABLEKS                       R8 R2 K34 ["selection"]
      118 GETTABLEKS                       R8 R8 K35 ["set"]
      120 NEWTABLE                         R9 0 1
      122 MOVE                             R10 R6
      123 SETLIST                          R9 R10 1 [1]
      125 CALL                             R8 1 0
      126 DUPTABLE                         R8 K37 [{"duration", "name", "generationId"}]
      127 GETTABLEKS                       R9 R5 K38 ["Length"]
      129 SETTABLEKS                       R9 R8 K5 ["duration"]
      131 GETTABLEKS                       R9 R5 K39 ["Name"]
      133 SETTABLEKS                       R9 R8 K12 ["name"]
      135 GETTABLEKS                       R9 R4 K36 ["generationId"]
      137 SETTABLEKS                       R9 R8 K36 ["generationId"]
      139 RETURN                           R8 1

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
      105 GETTABLEKS                       R14 R14 K25 ["insertBlockyRigIntoWorkspace"]
      107 CALL                             R13 1 1
      108 GETIMPORT                        R14 K12 [require]
      110 GETTABLEKS                       R15 R4 K16 ["Util"]
      112 GETTABLEKS                       R15 R15 K17 ["AnimationGen"]
      114 GETTABLEKS                       R15 R15 K26 ["isRigInWorkspace"]
      116 CALL                             R14 1 1
      117 GETTABLEKS                       R15 R6 K27 ["RBX_ANIMSAVES_FOLDER_NAME"]
      119 GETTABLEKS                       R16 R6 K28 ["ANIM_SAVES_INSTANCE_NAME"]
      121 NEWTABLE                         R17 0 0
      123 LOADNIL                          R18
      124 MOVE                             R19 R12
      125 CALL                             R19 0 1
      126 MOVE                             R20 R11
      127 CALL                             R20 0 1
      128 MOVE                             R21 R10
      129 GETTABLEKS                       R22 R19 K29 ["selectionChangedSignal"]
      131 MOVE                             R23 R17
      132 CALL                             R21 2 1
      133 DUPCLOSURE                       R22 K30 [PROTO_3]
      134 DUPCLOSURE                       R23 K31 [PROTO_4]
      135 CAPTURE                          VAL R14
      136 DUPCLOSURE                       R24 K32 [PROTO_5]
      137 CAPTURE                          VAL R20
      138 CAPTURE                          VAL R7
      139 CAPTURE                          VAL R14
      140 CAPTURE                          VAL R13
      141 CAPTURE                          VAL R17
      142 CAPTURE                          VAL R21
      143 CAPTURE                          VAL R22
      144 DUPCLOSURE                       R25 K33 [PROTO_6]
      145 CAPTURE                          VAL R17
      146 CAPTURE                          VAL R21
      147 CAPTURE                          VAL R22
      148 DUPCLOSURE                       R26 K34 [PROTO_7]
      149 CAPTURE                          VAL R17
      150 CAPTURE                          VAL R21
      151 CAPTURE                          VAL R22
      152 DUPCLOSURE                       R27 K35 [PROTO_8]
      153 CAPTURE                          VAL R17
      154 CAPTURE                          VAL R21
      155 CAPTURE                          VAL R22
      156 DUPCLOSURE                       R28 K36 [PROTO_9]
      157 CAPTURE                          VAL R17
      158 DUPCLOSURE                       R29 K37 [PROTO_10]
      159 CAPTURE                          VAL R0
      160 CAPTURE                          VAL R8
      161 DUPCLOSURE                       R30 K38 [PROTO_11]
      162 CAPTURE                          VAL R3
      163 CAPTURE                          VAL R15
      164 CAPTURE                          VAL R16
      165 DUPCLOSURE                       R31 K39 [PROTO_12]
      166 CAPTURE                          VAL R30
      167 CAPTURE                          VAL R0
      168 NEWCLOSURE                       R32 P10
      169 CAPTURE                          VAL R8
      170 CAPTURE                          VAL R17
      171 CAPTURE                          VAL R29
      172 CAPTURE                          VAL R31
      173 CAPTURE                          VAL R1
      174 CAPTURE                          VAL R2
      175 CAPTURE                          REF R18
      176 NEWCLOSURE                       R33 P11
      177 CAPTURE                          REF R18
      178 CAPTURE                          VAL R21
      179 CAPTURE                          VAL R19
      180 DUPTABLE                         R34 K47 [{"generateAndSaveAnimationAsync", "getSelectedRigRef", "setIsPlaying", "setCurrentTime", "setPlaybackSpeed", "publishAnimationAsync", "openInAnimationClipEditor"}]
      181 SETTABLEKS                       R24 R34 K40 ["generateAndSaveAnimationAsync"]
      183 SETTABLEKS                       R23 R34 K41 ["getSelectedRigRef"]
      185 SETTABLEKS                       R25 R34 K42 ["setIsPlaying"]
      187 SETTABLEKS                       R26 R34 K43 ["setCurrentTime"]
      189 SETTABLEKS                       R27 R34 K44 ["setPlaybackSpeed"]
      191 SETTABLEKS                       R28 R34 K45 ["publishAnimationAsync"]
      193 SETTABLEKS                       R32 R34 K46 ["openInAnimationClipEditor"]
      195 DUPTABLE                         R35 K50 [{"bridge", "destroy"}]
      196 SETTABLEKS                       R34 R35 K48 ["bridge"]
      198 SETTABLEKS                       R33 R35 K49 ["destroy"]
      200 CLOSEUPVALS                      R18
      201 RETURN                           R35 1
