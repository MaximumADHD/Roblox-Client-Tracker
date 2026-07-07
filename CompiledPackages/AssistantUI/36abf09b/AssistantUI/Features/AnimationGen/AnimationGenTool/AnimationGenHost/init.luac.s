PROTO_0:
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

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["initArgs"]
        2 GETTABLEKS                       R2 R2 K1 ["environment"]
        4 LOADNIL                          R3
        5 GETTABLEKS                       R4 R0 K2 ["mode"]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K3 ["AnimationGenMode"]
       10 GETTABLEKS                       R5 R5 K4 ["New"]
       12 JUMPIFNOTEQ                      R4 R5 ; [+9]
       14 GETTABLEKS                       R4 R0 K5 ["rigUniqueId"]
       16 JUMPIFNOTEQKNIL                  R4 ; [+5]
       18 GETIMPORT                        R4 K7 [error]
       20 LOADK                            R5 K8 ["rigUniqueId is required when mode is New"]
       21 CALL                             R4 1 0
       22 GETTABLEKS                       R4 R0 K5 ["rigUniqueId"]
       24 JUMPIFEQKNIL                     R4 ; [+10]
       26 GETTABLEKS                       R4 R2 K9 ["instances"]
       28 GETTABLEKS                       R4 R4 K10 ["getInstanceFromUniqueId"]
       30 GETTABLEKS                       R5 R0 K5 ["rigUniqueId"]
       32 CALL                             R4 1 1
       33 MOVE                             R3 R4
       34 JUMP                             ; [+3]
       35 GETUPVAL                         R4 1
       36 GETTABLEKS                       R3 R4 K11 ["rig"]
       38 JUMPIFEQKNIL                     R3 ; [+10]
       40 GETTABLEKS                       R4 R3 K12 ["Parent"]
       42 JUMPIFEQKNIL                     R4 ; [+6]
       44 LOADK                            R6 K13 ["Model"]
       45 NAMECALL                         R4 R3 K14 ["IsA"]
       47 CALL                             R4 2 1
       48 JUMPIF                           R4 ; [+2]
       49 LOADN                            R4 0
       50 RETURN                           R4 1
       51 GETUPVAL                         R4 2
       52 GETTABLEKS                       R4 R4 K15 ["generateAndSaveAnimationAsync"]
       54 DUPTABLE                         R5 K25 [{"rig", "prompt", "mode", "duration", "loop", "startFrame", "endFrame", "styleConstraint", "styleStrength", "numPriorFrames", "contentId"}]
       55 SETTABLEKS                       R3 R5 K11 ["rig"]
       57 GETTABLEKS                       R6 R0 K16 ["prompt"]
       59 SETTABLEKS                       R6 R5 K16 ["prompt"]
       61 GETTABLEKS                       R6 R0 K2 ["mode"]
       63 SETTABLEKS                       R6 R5 K2 ["mode"]
       65 GETTABLEKS                       R6 R0 K17 ["duration"]
       67 SETTABLEKS                       R6 R5 K17 ["duration"]
       69 GETTABLEKS                       R6 R0 K18 ["loop"]
       71 SETTABLEKS                       R6 R5 K18 ["loop"]
       73 GETTABLEKS                       R6 R0 K19 ["startFrame"]
       75 SETTABLEKS                       R6 R5 K19 ["startFrame"]
       77 GETTABLEKS                       R6 R0 K20 ["endFrame"]
       79 SETTABLEKS                       R6 R5 K20 ["endFrame"]
       81 GETTABLEKS                       R6 R0 K21 ["styleConstraint"]
       83 SETTABLEKS                       R6 R5 K21 ["styleConstraint"]
       85 GETTABLEKS                       R6 R0 K22 ["styleStrength"]
       87 SETTABLEKS                       R6 R5 K22 ["styleStrength"]
       89 GETUPVAL                         R6 1
       90 GETTABLEKS                       R6 R6 K26 ["frameCount"]
       92 SETTABLEKS                       R6 R5 K23 ["numPriorFrames"]
       94 GETTABLEKS                       R6 R1 K27 ["callArgs"]
       96 GETTABLEKS                       R6 R6 K24 ["contentId"]
       98 SETTABLEKS                       R6 R5 K24 ["contentId"]
      100 MOVE                             R6 R1
      101 CALL                             R4 2 1
      102 GETTABLEKS                       R5 R4 K28 ["success"]
      104 JUMPIFNOT                        R5 ; [+4]
      105 GETTABLEKS                       R5 R4 K29 ["keyframeSequence"]
      107 JUMPIFNOTEQKNIL                  R5 ; [+3]
      109 LOADN                            R5 0
      110 RETURN                           R5 1
      111 GETUPVAL                         R5 3
      112 GETTABLEKS                       R6 R1 K27 ["callArgs"]
      114 GETTABLEKS                       R6 R6 K24 ["contentId"]
      116 DUPTABLE                         R7 K32 [{["rig"], ["keyframeSequence"], ["needsReload"] = True}]
      117 SETTABLEKS                       R3 R7 K11 ["rig"]
      119 GETTABLEKS                       R8 R4 K29 ["keyframeSequence"]
      121 SETTABLEKS                       R8 R7 K29 ["keyframeSequence"]
      123 SETTABLE                         R7 R5 R6
      124 GETUPVAL                         R5 4
      125 GETTABLEKS                       R5 R5 K33 ["setAnimation"]
      127 MOVE                             R6 R1
      128 CALL                             R5 1 0
      129 GETTABLEKS                       R5 R4 K29 ["keyframeSequence"]
      131 GETTABLEKS                       R5 R5 K34 ["Length"]
      133 LOADN                            R6 0
      134 JUMPIFNOTLT                      R6 R5 ; [+25]
      136 GETUPVAL                         R6 1
      137 SETTABLEKS                       R3 R6 K11 ["rig"]
      139 GETUPVAL                         R6 1
      140 LOADN                            R8 1
      141 GETTABLEKS                       R11 R4 K29 ["keyframeSequence"]
      143 GETTABLEKS                       R11 R11 K34 ["Length"]
      145 GETUPVAL                         R12 5
      146 GETTABLEKS                       R12 R12 K35 ["DEFAULT_GENERATION_FPS"]
      148 MUL                              R10 R11 R12
      149 FASTCALL1                        MATH_ROUND R10 ; [+2]
      150 GETIMPORT                        R9 K38 [math.round]
      152 CALL                             R9 1 1
      153 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
      155 GETIMPORT                        R7 K40 [math.max]
      157 CALL                             R7 2 1
      158 SETTABLEKS                       R7 R6 K26 ["frameCount"]
      160 RETURN                           R5 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["callArgs"]
        3 GETTABLEKS                       R3 R3 K1 ["contentId"]
        5 GETTABLE                         R1 R2 R3
        6 GETTABLEKS                       R2 R0 K2 ["initArgs"]
        8 GETTABLEKS                       R2 R2 K3 ["environment"]
       10 JUMPIFNOT                        R1 ; [+3]
       11 GETTABLEKS                       R3 R1 K4 ["keyframeSequence"]
       13 JUMPIF                           R3 ; [+1]
       14 RETURN                           R0 0
       15 GETTABLEKS                       R3 R2 K5 ["tools"]
       17 GETTABLEKS                       R3 R3 K6 ["animationGen"]
       19 GETTABLEKS                       R3 R3 K7 ["publishAnimationAsync"]
       21 DUPTABLE                         R4 K8 [{"keyframeSequence"}]
       22 GETTABLEKS                       R5 R1 K4 ["keyframeSequence"]
       24 SETTABLEKS                       R5 R4 K4 ["keyframeSequence"]
       26 CALL                             R3 1 0
       27 RETURN                           R0 0

PROTO_3:
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
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["AnimationGen"]
       10 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R3 R1 K7 ["AnimationGenTool"]
       17 GETTABLEKS                       R3 R3 K8 ["AnimationGenBridgeTypes"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R1 K9 ["AnimationGenTypes"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R1 K10 ["AnimationGenConstants"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R1 K7 ["AnimationGenTool"]
       34 GETTABLEKS                       R6 R6 K11 ["AnimationGenHost"]
       36 GETTABLEKS                       R6 R6 K12 ["HostTypes"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R0 K13 ["Types"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R1 K7 ["AnimationGenTool"]
       48 GETTABLEKS                       R8 R8 K11 ["AnimationGenHost"]
       50 GETTABLEKS                       R8 R8 K14 ["createHostAnimator"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETTABLEKS                       R9 R1 K7 ["AnimationGenTool"]
       57 GETTABLEKS                       R9 R9 K11 ["AnimationGenHost"]
       59 GETTABLEKS                       R9 R9 K15 ["createHostGenerator"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K6 [require]
       64 GETTABLEKS                       R10 R1 K7 ["AnimationGenTool"]
       66 GETTABLEKS                       R10 R10 K11 ["AnimationGenHost"]
       68 GETTABLEKS                       R10 R10 K16 ["createHostSelection"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K6 [require]
       73 GETTABLEKS                       R11 R1 K7 ["AnimationGenTool"]
       75 GETTABLEKS                       R11 R11 K17 ["Util"]
       77 GETTABLEKS                       R11 R11 K18 ["isRig"]
       79 CALL                             R10 1 1
       80 DUPTABLE                         R11 K23 [{["rig"] = , ["frameCount"] = 0}]
       81 NEWTABLE                         R12 0 0
       83 DUPCLOSURE                       R13 K24 [PROTO_0]
       84 CAPTURE                          VAL R10
       85 MOVE                             R14 R9
       86 CALL                             R14 0 1
       87 MOVE                             R15 R8
       88 CALL                             R15 0 1
       89 MOVE                             R16 R7
       90 GETTABLEKS                       R17 R14 K25 ["selectionChangedSignal"]
       92 MOVE                             R18 R12
       93 CALL                             R16 2 1
       94 DUPCLOSURE                       R17 K26 [PROTO_1]
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R15
       98 CAPTURE                          VAL R12
       99 CAPTURE                          VAL R16
      100 CAPTURE                          VAL R4
      101 DUPCLOSURE                       R18 K27 [PROTO_2]
      102 CAPTURE                          VAL R12
      103 DUPCLOSURE                       R19 K28 [PROTO_3]
      104 CAPTURE                          VAL R16
      105 CAPTURE                          VAL R14
      106 DUPTABLE                         R20 K35 [{"generateAndSaveAnimationAsync", "getSelectedRigRef", "setIsPlaying", "setCurrentTime", "setPlaybackSpeed", "publishAnimationAsync"}]
      107 SETTABLEKS                       R17 R20 K29 ["generateAndSaveAnimationAsync"]
      109 SETTABLEKS                       R13 R20 K30 ["getSelectedRigRef"]
      111 GETTABLEKS                       R21 R16 K31 ["setIsPlaying"]
      113 SETTABLEKS                       R21 R20 K31 ["setIsPlaying"]
      115 GETTABLEKS                       R21 R16 K32 ["setCurrentTime"]
      117 SETTABLEKS                       R21 R20 K32 ["setCurrentTime"]
      119 GETTABLEKS                       R21 R16 K33 ["setPlaybackSpeed"]
      121 SETTABLEKS                       R21 R20 K33 ["setPlaybackSpeed"]
      123 SETTABLEKS                       R18 R20 K34 ["publishAnimationAsync"]
      125 DUPTABLE                         R21 K38 [{"bridge", "destroy"}]
      126 SETTABLEKS                       R20 R21 K36 ["bridge"]
      128 SETTABLEKS                       R19 R21 K37 ["destroy"]
      130 RETURN                           R21 1
