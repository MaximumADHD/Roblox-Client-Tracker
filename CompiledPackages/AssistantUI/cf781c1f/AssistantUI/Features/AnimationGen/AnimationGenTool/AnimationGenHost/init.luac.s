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
      118 GETTABLEKS                       R5 R5 K31 ["setAnimation"]
      120 GETTABLEKS                       R6 R4 K30 ["keyframeSequence"]
      122 MOVE                             R7 R3
      123 MOVE                             R8 R1
      124 CALL                             R5 3 0
      125 GETTABLEKS                       R5 R4 K30 ["keyframeSequence"]
      127 GETTABLEKS                       R5 R5 K32 ["Length"]
      129 LOADN                            R6 0
      130 JUMPIFNOTLT                      R6 R5 ; [+25]
      132 GETUPVAL                         R6 1
      133 SETTABLEKS                       R3 R6 K11 ["rig"]
      135 GETUPVAL                         R6 1
      136 LOADN                            R8 1
      137 GETTABLEKS                       R11 R4 K30 ["keyframeSequence"]
      139 GETTABLEKS                       R11 R11 K32 ["Length"]
      141 GETUPVAL                         R12 4
      142 GETTABLEKS                       R12 R12 K33 ["DEFAULT_GENERATION_FPS"]
      144 MUL                              R10 R11 R12
      145 FASTCALL1                        MATH_ROUND R10 ; [+2]
      146 GETIMPORT                        R9 K36 [math.round]
      148 CALL                             R9 1 1
      149 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
      151 GETIMPORT                        R7 K38 [math.max]
      153 CALL                             R7 2 1
      154 SETTABLEKS                       R7 R6 K27 ["frameCount"]
      156 RETURN                           R5 1

PROTO_2:
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
       32 GETTABLEKS                       R6 R0 K11 ["Types"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R1 K7 ["AnimationGenTool"]
       39 GETTABLEKS                       R7 R7 K12 ["AnimationGenHost"]
       41 GETTABLEKS                       R7 R7 K13 ["createHostAnimator"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R1 K7 ["AnimationGenTool"]
       48 GETTABLEKS                       R8 R8 K12 ["AnimationGenHost"]
       50 GETTABLEKS                       R8 R8 K14 ["createHostGenerator"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETTABLEKS                       R9 R1 K7 ["AnimationGenTool"]
       57 GETTABLEKS                       R9 R9 K12 ["AnimationGenHost"]
       59 GETTABLEKS                       R9 R9 K15 ["createHostSelection"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K6 [require]
       64 GETTABLEKS                       R10 R1 K7 ["AnimationGenTool"]
       66 GETTABLEKS                       R10 R10 K16 ["Util"]
       68 GETTABLEKS                       R10 R10 K17 ["isRig"]
       70 CALL                             R9 1 1
       71 DUPTABLE                         R10 K20 [{"rig", "frameCount"}]
       72 LOADNIL                          R11
       73 SETTABLEKS                       R11 R10 K18 ["rig"]
       75 LOADN                            R11 0
       76 SETTABLEKS                       R11 R10 K19 ["frameCount"]
       78 DUPCLOSURE                       R11 K21 [PROTO_0]
       79 CAPTURE                          VAL R9
       80 MOVE                             R12 R8
       81 CALL                             R12 0 1
       82 MOVE                             R13 R7
       83 CALL                             R13 0 1
       84 MOVE                             R14 R6
       85 GETTABLEKS                       R15 R12 K22 ["selectionChangedSignal"]
       87 CALL                             R14 1 1
       88 DUPCLOSURE                       R15 K23 [PROTO_1]
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R13
       92 CAPTURE                          VAL R14
       93 CAPTURE                          VAL R4
       94 DUPCLOSURE                       R16 K24 [PROTO_2]
       95 CAPTURE                          VAL R14
       96 CAPTURE                          VAL R12
       97 DUPTABLE                         R17 K30 [{"generateAndSaveAnimationAsync", "getSelectedRigRef", "setIsPlaying", "setCurrentTime", "setPlaybackSpeed"}]
       98 SETTABLEKS                       R15 R17 K25 ["generateAndSaveAnimationAsync"]
      100 SETTABLEKS                       R11 R17 K26 ["getSelectedRigRef"]
      102 GETTABLEKS                       R18 R14 K27 ["setIsPlaying"]
      104 SETTABLEKS                       R18 R17 K27 ["setIsPlaying"]
      106 GETTABLEKS                       R18 R14 K28 ["setCurrentTime"]
      108 SETTABLEKS                       R18 R17 K28 ["setCurrentTime"]
      110 GETTABLEKS                       R18 R14 K29 ["setPlaybackSpeed"]
      112 SETTABLEKS                       R18 R17 K29 ["setPlaybackSpeed"]
      114 DUPTABLE                         R18 K33 [{"bridge", "destroy"}]
      115 SETTABLEKS                       R17 R18 K31 ["bridge"]
      117 SETTABLEKS                       R16 R18 K32 ["destroy"]
      119 RETURN                           R18 1
