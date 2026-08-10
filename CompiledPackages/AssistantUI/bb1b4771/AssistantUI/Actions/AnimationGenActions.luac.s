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
        0 DUPTABLE                         R2 K3 [{"id", "animatorRemoved", "rigSelected"}]
        1 SETTABLEKS                       R0 R2 K0 ["id"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R3 R2 K1 ["animatorRemoved"]
        8 NEWCLOSURE                       R3 P1
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R3 R2 K2 ["rigSelected"]
       13 RETURN                           R2 1

PROTO_3:
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

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["destroy"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["destroy"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bridges"]
       11 GETTABLEKS                       R2 R2 K7 ["createAnimationGenBridge"]
       13 GETTABLEKS                       R2 R2 K8 ["AnimationGenBridgeTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["AnimationGen"]
       22 GETTABLEKS                       R3 R3 K11 ["AnimationGenConstants"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K9 ["Util"]
       29 GETTABLEKS                       R4 R4 K10 ["AnimationGen"]
       31 GETTABLEKS                       R4 R4 K12 ["AnimationGenTypes"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K9 ["Util"]
       38 GETTABLEKS                       R5 R5 K10 ["AnimationGen"]
       40 GETTABLEKS                       R5 R5 K13 ["HostTypes"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K9 ["Util"]
       47 GETTABLEKS                       R6 R6 K10 ["AnimationGen"]
       49 GETTABLEKS                       R6 R6 K14 ["createHostAnimator"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K9 ["Util"]
       56 GETTABLEKS                       R7 R7 K10 ["AnimationGen"]
       58 GETTABLEKS                       R7 R7 K15 ["createHostGenerator"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K9 ["Util"]
       65 GETTABLEKS                       R8 R8 K10 ["AnimationGen"]
       67 GETTABLEKS                       R8 R8 K16 ["createHostSelection"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K5 [require]
       72 GETTABLEKS                       R9 R0 K9 ["Util"]
       74 GETTABLEKS                       R9 R9 K10 ["AnimationGen"]
       76 GETTABLEKS                       R9 R9 K17 ["isRig"]
       78 CALL                             R8 1 1
       79 DUPTABLE                         R9 K22 [{["rig"] = , ["frameCount"] = 0}]
       80 NEWTABLE                         R10 0 0
       82 MOVE                             R11 R7
       83 CALL                             R11 0 1
       84 MOVE                             R12 R6
       85 CALL                             R12 0 1
       86 MOVE                             R13 R5
       87 GETTABLEKS                       R14 R11 K23 ["selectionChangedSignal"]
       89 MOVE                             R15 R10
       90 CALL                             R13 2 1
       91 DUPCLOSURE                       R14 K24 [PROTO_2]
       92 DUPCLOSURE                       R15 K25 [PROTO_3]
       93 CAPTURE                          VAL R8
       94 DUPCLOSURE                       R16 K26 [PROTO_4]
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R13
      100 CAPTURE                          VAL R14
      101 CAPTURE                          VAL R2
      102 DUPCLOSURE                       R17 K27 [PROTO_5]
      103 CAPTURE                          VAL R10
      104 CAPTURE                          VAL R13
      105 CAPTURE                          VAL R14
      106 DUPCLOSURE                       R18 K28 [PROTO_6]
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R13
      109 CAPTURE                          VAL R14
      110 DUPCLOSURE                       R19 K29 [PROTO_7]
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R14
      114 DUPCLOSURE                       R20 K30 [PROTO_8]
      115 CAPTURE                          VAL R10
      116 DUPCLOSURE                       R21 K31 [PROTO_9]
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R11
      119 DUPTABLE                         R22 K38 [{"generateAndSaveAnimationAsync", "getSelectedRigRef", "setIsPlaying", "setCurrentTime", "setPlaybackSpeed", "publishAnimationAsync"}]
      120 SETTABLEKS                       R16 R22 K32 ["generateAndSaveAnimationAsync"]
      122 SETTABLEKS                       R15 R22 K33 ["getSelectedRigRef"]
      124 SETTABLEKS                       R17 R22 K34 ["setIsPlaying"]
      126 SETTABLEKS                       R18 R22 K35 ["setCurrentTime"]
      128 SETTABLEKS                       R19 R22 K36 ["setPlaybackSpeed"]
      130 SETTABLEKS                       R20 R22 K37 ["publishAnimationAsync"]
      132 DUPTABLE                         R23 K41 [{"bridge", "destroy"}]
      133 SETTABLEKS                       R22 R23 K39 ["bridge"]
      135 SETTABLEKS                       R21 R23 K40 ["destroy"]
      137 RETURN                           R23 1
