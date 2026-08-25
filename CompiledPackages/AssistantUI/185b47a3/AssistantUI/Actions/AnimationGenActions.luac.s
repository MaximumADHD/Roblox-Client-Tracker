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
        6 GETTABLEKS                       R5 R0 K3 ["rigUniqueId"]
        8 JUMPIFEQKNIL                     R5 ; [+9]
       10 GETTABLEKS                       R4 R2 K4 ["instances"]
       12 GETTABLEKS                       R4 R4 K5 ["getInstanceFromUniqueId"]
       14 GETTABLEKS                       R5 R0 K3 ["rigUniqueId"]
       16 CALL                             R4 1 1
       17 JUMP                             ; [+1]
       18 LOADNIL                          R4
       19 JUMPIFEQKNIL                     R4 ; [+10]
       21 GETTABLEKS                       R5 R4 K6 ["Parent"]
       23 JUMPIFEQKNIL                     R5 ; [+6]
       25 LOADK                            R7 K7 ["Model"]
       26 NAMECALL                         R5 R4 K8 ["IsA"]
       28 CALL                             R5 2 1
       29 JUMPIF                           R5 ; [+2]
       30 DUPTABLE                         R5 K13 [{["duration"] = 0, ["name"] = ""}]
       31 RETURN                           R5 1
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K14 ["generateAndSaveAnimationAsync"]
       35 DUPTABLE                         R6 K19 [{"rig", "prompt", "duration", "loop", "id"}]
       36 SETTABLEKS                       R4 R6 K15 ["rig"]
       38 GETTABLEKS                       R7 R0 K16 ["prompt"]
       40 SETTABLEKS                       R7 R6 K16 ["prompt"]
       42 GETTABLEKS                       R7 R0 K9 ["duration"]
       44 SETTABLEKS                       R7 R6 K9 ["duration"]
       46 GETTABLEKS                       R7 R0 K17 ["loop"]
       48 SETTABLEKS                       R7 R6 K17 ["loop"]
       50 SETTABLEKS                       R3 R6 K18 ["id"]
       52 MOVE                             R7 R2
       53 CALL                             R5 2 1
       54 GETTABLEKS                       R6 R5 K20 ["success"]
       56 JUMPIFNOT                        R6 ; [+4]
       57 GETTABLEKS                       R6 R5 K21 ["keyframeSequence"]
       59 JUMPIFNOTEQKNIL                  R6 ; [+3]
       61 DUPTABLE                         R6 K13 [{["duration"] = 0, ["name"] = ""}]
       62 RETURN                           R6 1
       63 GETUPVAL                         R6 1
       64 DUPTABLE                         R7 K24 [{["rig"], ["keyframeSequence"], ["needsReload"] = True}]
       65 SETTABLEKS                       R4 R7 K15 ["rig"]
       67 GETTABLEKS                       R8 R5 K21 ["keyframeSequence"]
       69 SETTABLEKS                       R8 R7 K21 ["keyframeSequence"]
       71 SETTABLE                         R7 R6 R3
       72 GETUPVAL                         R6 2
       73 GETTABLEKS                       R6 R6 K25 ["setAnimation"]
       75 GETUPVAL                         R7 3
       76 MOVE                             R8 R3
       77 MOVE                             R9 R1
       78 CALL                             R7 2 1
       79 CALL                             R6 1 0
       80 DUPTABLE                         R6 K27 [{"duration", "name", "generationId"}]
       81 GETTABLEKS                       R7 R5 K21 ["keyframeSequence"]
       83 GETTABLEKS                       R7 R7 K28 ["Length"]
       85 SETTABLEKS                       R7 R6 K9 ["duration"]
       87 GETTABLEKS                       R7 R5 K21 ["keyframeSequence"]
       89 GETTABLEKS                       R7 R7 K29 ["Name"]
       91 SETTABLEKS                       R7 R6 K11 ["name"]
       93 GETTABLEKS                       R7 R5 K26 ["generationId"]
       95 SETTABLEKS                       R7 R6 K26 ["generationId"]
       97 RETURN                           R6 1

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
       51 GETTABLEKS                       R8 R4 K19 ["Flags"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K12 [require]
       56 GETTABLEKS                       R9 R4 K16 ["Util"]
       58 GETTABLEKS                       R9 R9 K17 ["AnimationGen"]
       60 GETTABLEKS                       R9 R9 K20 ["HostTypes"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K12 [require]
       65 GETTABLEKS                       R10 R4 K16 ["Util"]
       67 GETTABLEKS                       R10 R10 K17 ["AnimationGen"]
       69 GETTABLEKS                       R10 R10 K21 ["createHostAnimator"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K12 [require]
       74 GETTABLEKS                       R11 R4 K16 ["Util"]
       76 GETTABLEKS                       R11 R11 K17 ["AnimationGen"]
       78 GETTABLEKS                       R11 R11 K22 ["createHostGenerator"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K12 [require]
       83 GETTABLEKS                       R12 R4 K16 ["Util"]
       85 GETTABLEKS                       R12 R12 K17 ["AnimationGen"]
       87 GETTABLEKS                       R12 R12 K23 ["createHostSelection"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K12 [require]
       92 GETTABLEKS                       R13 R4 K16 ["Util"]
       94 GETTABLEKS                       R13 R13 K17 ["AnimationGen"]
       96 GETTABLEKS                       R13 R13 K24 ["isRig"]
       98 CALL                             R12 1 1
       99 GETTABLEKS                       R13 R6 K25 ["RBX_ANIMSAVES_FOLDER_NAME"]
      101 GETTABLEKS                       R14 R6 K26 ["ANIM_SAVES_INSTANCE_NAME"]
      103 NEWTABLE                         R15 0 0
      105 LOADNIL                          R16
      106 MOVE                             R17 R11
      107 CALL                             R17 0 1
      108 MOVE                             R18 R10
      109 CALL                             R18 0 1
      110 MOVE                             R19 R9
      111 GETTABLEKS                       R20 R17 K27 ["selectionChangedSignal"]
      113 MOVE                             R21 R15
      114 CALL                             R19 2 1
      115 DUPCLOSURE                       R20 K28 [PROTO_3]
      116 DUPCLOSURE                       R21 K29 [PROTO_4]
      117 CAPTURE                          VAL R12
      118 DUPCLOSURE                       R22 K30 [PROTO_5]
      119 CAPTURE                          VAL R18
      120 CAPTURE                          VAL R15
      121 CAPTURE                          VAL R19
      122 CAPTURE                          VAL R20
      123 DUPCLOSURE                       R23 K31 [PROTO_6]
      124 CAPTURE                          VAL R15
      125 CAPTURE                          VAL R19
      126 CAPTURE                          VAL R20
      127 DUPCLOSURE                       R24 K32 [PROTO_7]
      128 CAPTURE                          VAL R15
      129 CAPTURE                          VAL R19
      130 CAPTURE                          VAL R20
      131 DUPCLOSURE                       R25 K33 [PROTO_8]
      132 CAPTURE                          VAL R15
      133 CAPTURE                          VAL R19
      134 CAPTURE                          VAL R20
      135 DUPCLOSURE                       R26 K34 [PROTO_9]
      136 CAPTURE                          VAL R15
      137 DUPCLOSURE                       R27 K35 [PROTO_10]
      138 CAPTURE                          VAL R0
      139 CAPTURE                          VAL R7
      140 DUPCLOSURE                       R28 K36 [PROTO_11]
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R13
      143 CAPTURE                          VAL R14
      144 DUPCLOSURE                       R29 K37 [PROTO_12]
      145 CAPTURE                          VAL R28
      146 CAPTURE                          VAL R0
      147 NEWCLOSURE                       R30 P10
      148 CAPTURE                          VAL R7
      149 CAPTURE                          VAL R15
      150 CAPTURE                          VAL R27
      151 CAPTURE                          VAL R29
      152 CAPTURE                          VAL R1
      153 CAPTURE                          VAL R2
      154 CAPTURE                          REF R16
      155 NEWCLOSURE                       R31 P11
      156 CAPTURE                          REF R16
      157 CAPTURE                          VAL R19
      158 CAPTURE                          VAL R17
      159 DUPTABLE                         R32 K45 [{"generateAndSaveAnimationAsync", "getSelectedRigRef", "setIsPlaying", "setCurrentTime", "setPlaybackSpeed", "publishAnimationAsync", "openInAnimationClipEditor"}]
      160 SETTABLEKS                       R22 R32 K38 ["generateAndSaveAnimationAsync"]
      162 SETTABLEKS                       R21 R32 K39 ["getSelectedRigRef"]
      164 SETTABLEKS                       R23 R32 K40 ["setIsPlaying"]
      166 SETTABLEKS                       R24 R32 K41 ["setCurrentTime"]
      168 SETTABLEKS                       R25 R32 K42 ["setPlaybackSpeed"]
      170 SETTABLEKS                       R26 R32 K43 ["publishAnimationAsync"]
      172 SETTABLEKS                       R30 R32 K44 ["openInAnimationClipEditor"]
      174 DUPTABLE                         R33 K48 [{"bridge", "destroy"}]
      175 SETTABLEKS                       R32 R33 K46 ["bridge"]
      177 SETTABLEKS                       R31 R33 K47 ["destroy"]
      179 CLOSEUPVALS                      R16
      180 RETURN                           R33 1
