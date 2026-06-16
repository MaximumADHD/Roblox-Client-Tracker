PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["toolArgs"]
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
        0 GETTABLEKS                       R2 R1 K0 ["toolArgs"]
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
       54 DUPTABLE                         R5 K26 [{"rig", "prompt", "mode", "duration", "loop", "startFrame", "endFrame", "styleConstraint", "styleStrength", "numPriorFrames", "contentId", "messageId"}]
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
       90 GETTABLEKS                       R6 R6 K27 ["frameCount"]
       92 SETTABLEKS                       R6 R5 K23 ["numPriorFrames"]
       94 GETTABLEKS                       R6 R1 K28 ["handlerArgs"]
       96 GETTABLEKS                       R6 R6 K24 ["contentId"]
       98 SETTABLEKS                       R6 R5 K24 ["contentId"]
      100 GETTABLEKS                       R6 R1 K28 ["handlerArgs"]
      102 GETTABLEKS                       R6 R6 K25 ["messageId"]
      104 SETTABLEKS                       R6 R5 K25 ["messageId"]
      106 MOVE                             R6 R1
      107 CALL                             R4 2 1
      108 GETTABLEKS                       R5 R4 K29 ["success"]
      110 JUMPIFNOT                        R5 ; [+4]
      111 GETTABLEKS                       R5 R4 K30 ["keyframeSequence"]
      113 JUMPIFNOTEQKNIL                  R5 ; [+3]
      115 LOADN                            R5 0
      116 RETURN                           R5 1
      117 GETUPVAL                         R5 3
      118 GETTABLEKS                       R6 R1 K28 ["handlerArgs"]
      120 GETTABLEKS                       R6 R6 K24 ["contentId"]
      122 DUPTABLE                         R7 K32 [{"rig", "keyframeSequence", "needsReload"}]
      123 SETTABLEKS                       R3 R7 K11 ["rig"]
      125 GETTABLEKS                       R8 R4 K30 ["keyframeSequence"]
      127 SETTABLEKS                       R8 R7 K30 ["keyframeSequence"]
      129 LOADB                            R8 1
      130 SETTABLEKS                       R8 R7 K31 ["needsReload"]
      132 SETTABLE                         R7 R5 R6
      133 GETUPVAL                         R5 4
      134 GETTABLEKS                       R5 R5 K33 ["setAnimation"]
      136 MOVE                             R6 R1
      137 CALL                             R5 1 0
      138 GETTABLEKS                       R5 R4 K30 ["keyframeSequence"]
      140 GETTABLEKS                       R5 R5 K34 ["Length"]
      142 LOADN                            R6 0
      143 JUMPIFNOTLT                      R6 R5 ; [+25]
      145 GETUPVAL                         R6 1
      146 SETTABLEKS                       R3 R6 K11 ["rig"]
      148 GETUPVAL                         R6 1
      149 LOADN                            R8 1
      150 GETTABLEKS                       R11 R4 K30 ["keyframeSequence"]
      152 GETTABLEKS                       R11 R11 K34 ["Length"]
      154 GETUPVAL                         R12 5
      155 GETTABLEKS                       R12 R12 K35 ["DEFAULT_GENERATION_FPS"]
      157 MUL                              R10 R11 R12
      158 FASTCALL1                        MATH_ROUND R10 ; [+2]
      159 GETIMPORT                        R9 K38 [math.round]
      161 CALL                             R9 1 1
      162 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
      164 GETIMPORT                        R7 K40 [math.max]
      166 CALL                             R7 2 1
      167 SETTABLEKS                       R7 R6 K27 ["frameCount"]
      169 RETURN                           R5 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["handlerArgs"]
        3 GETTABLEKS                       R3 R3 K1 ["contentId"]
        5 GETTABLE                         R1 R2 R3
        6 GETTABLEKS                       R2 R0 K2 ["toolArgs"]
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
       80 DUPTABLE                         R11 K21 [{"rig", "frameCount"}]
       81 LOADNIL                          R12
       82 SETTABLEKS                       R12 R11 K19 ["rig"]
       84 LOADN                            R12 0
       85 SETTABLEKS                       R12 R11 K20 ["frameCount"]
       87 NEWTABLE                         R12 0 0
       89 DUPCLOSURE                       R13 K22 [PROTO_0]
       90 CAPTURE                          VAL R10
       91 MOVE                             R14 R9
       92 CALL                             R14 0 1
       93 MOVE                             R15 R8
       94 CALL                             R15 0 1
       95 MOVE                             R16 R7
       96 GETTABLEKS                       R17 R14 K23 ["selectionChangedSignal"]
       98 MOVE                             R18 R12
       99 CALL                             R16 2 1
      100 DUPCLOSURE                       R17 K24 [PROTO_1]
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R15
      104 CAPTURE                          VAL R12
      105 CAPTURE                          VAL R16
      106 CAPTURE                          VAL R4
      107 DUPCLOSURE                       R18 K25 [PROTO_2]
      108 CAPTURE                          VAL R12
      109 DUPCLOSURE                       R19 K26 [PROTO_3]
      110 CAPTURE                          VAL R16
      111 CAPTURE                          VAL R14
      112 DUPTABLE                         R20 K33 [{"generateAndSaveAnimationAsync", "getSelectedRigRef", "setIsPlaying", "setCurrentTime", "setPlaybackSpeed", "publishAnimationAsync"}]
      113 SETTABLEKS                       R17 R20 K27 ["generateAndSaveAnimationAsync"]
      115 SETTABLEKS                       R13 R20 K28 ["getSelectedRigRef"]
      117 GETTABLEKS                       R21 R16 K29 ["setIsPlaying"]
      119 SETTABLEKS                       R21 R20 K29 ["setIsPlaying"]
      121 GETTABLEKS                       R21 R16 K30 ["setCurrentTime"]
      123 SETTABLEKS                       R21 R20 K30 ["setCurrentTime"]
      125 GETTABLEKS                       R21 R16 K31 ["setPlaybackSpeed"]
      127 SETTABLEKS                       R21 R20 K31 ["setPlaybackSpeed"]
      129 SETTABLEKS                       R18 R20 K32 ["publishAnimationAsync"]
      131 DUPTABLE                         R21 K36 [{"bridge", "destroy"}]
      132 SETTABLEKS                       R20 R21 K34 ["bridge"]
      134 SETTABLEKS                       R19 R21 K35 ["destroy"]
      136 RETURN                           R21 1
