PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bridge"]
        3 GETTABLEKS                       R0 R0 K1 ["animatorRemoved"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bridge"]
        3 GETTABLEKS                       R0 R0 K1 ["rigSelected"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K3 [{"id", "animatorRemoved", "rigSelected"}]
        1 GETTABLEKS                       R2 R0 K4 ["callArgs"]
        3 GETTABLEKS                       R2 R2 K5 ["contentId"]
        5 SETTABLEKS                       R2 R1 K0 ["id"]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R2 R1 K1 ["animatorRemoved"]
       11 NEWCLOSURE                       R2 P1
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R2 R1 K2 ["rigSelected"]
       15 RETURN                           R1 1

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
       49 DUPTABLE                         R4 K19 [{["duration"] = 0, ["name"] = ""}]
       50 RETURN                           R4 1
       51 GETUPVAL                         R4 2
       52 GETTABLEKS                       R4 R4 K20 ["generateAndSaveAnimationAsync"]
       54 DUPTABLE                         R5 K29 [{"rig", "prompt", "mode", "duration", "loop", "startFrame", "endFrame", "styleConstraint", "styleStrength", "numPriorFrames", "id"}]
       55 SETTABLEKS                       R3 R5 K11 ["rig"]
       57 GETTABLEKS                       R6 R0 K21 ["prompt"]
       59 SETTABLEKS                       R6 R5 K21 ["prompt"]
       61 GETTABLEKS                       R6 R0 K2 ["mode"]
       63 SETTABLEKS                       R6 R5 K2 ["mode"]
       65 GETTABLEKS                       R6 R0 K15 ["duration"]
       67 SETTABLEKS                       R6 R5 K15 ["duration"]
       69 GETTABLEKS                       R6 R0 K22 ["loop"]
       71 SETTABLEKS                       R6 R5 K22 ["loop"]
       73 GETTABLEKS                       R6 R0 K23 ["startFrame"]
       75 SETTABLEKS                       R6 R5 K23 ["startFrame"]
       77 GETTABLEKS                       R6 R0 K24 ["endFrame"]
       79 SETTABLEKS                       R6 R5 K24 ["endFrame"]
       81 GETTABLEKS                       R6 R0 K25 ["styleConstraint"]
       83 SETTABLEKS                       R6 R5 K25 ["styleConstraint"]
       85 GETTABLEKS                       R6 R0 K26 ["styleStrength"]
       87 SETTABLEKS                       R6 R5 K26 ["styleStrength"]
       89 GETUPVAL                         R6 1
       90 GETTABLEKS                       R6 R6 K30 ["frameCount"]
       92 SETTABLEKS                       R6 R5 K27 ["numPriorFrames"]
       94 GETTABLEKS                       R6 R1 K31 ["callArgs"]
       96 GETTABLEKS                       R6 R6 K32 ["contentId"]
       98 SETTABLEKS                       R6 R5 K28 ["id"]
      100 MOVE                             R6 R2
      101 CALL                             R4 2 1
      102 GETTABLEKS                       R5 R4 K33 ["success"]
      104 JUMPIFNOT                        R5 ; [+4]
      105 GETTABLEKS                       R5 R4 K34 ["keyframeSequence"]
      107 JUMPIFNOTEQKNIL                  R5 ; [+3]
      109 DUPTABLE                         R5 K19 [{["duration"] = 0, ["name"] = ""}]
      110 RETURN                           R5 1
      111 GETUPVAL                         R5 3
      112 GETTABLEKS                       R6 R1 K31 ["callArgs"]
      114 GETTABLEKS                       R6 R6 K32 ["contentId"]
      116 DUPTABLE                         R7 K37 [{["rig"], ["keyframeSequence"], ["needsReload"] = True}]
      117 SETTABLEKS                       R3 R7 K11 ["rig"]
      119 GETTABLEKS                       R8 R4 K34 ["keyframeSequence"]
      121 SETTABLEKS                       R8 R7 K34 ["keyframeSequence"]
      123 SETTABLE                         R7 R5 R6
      124 GETUPVAL                         R5 4
      125 GETTABLEKS                       R5 R5 K38 ["setAnimation"]
      127 GETUPVAL                         R6 5
      128 MOVE                             R7 R1
      129 CALL                             R6 1 1
      130 CALL                             R5 1 0
      131 GETTABLEKS                       R5 R4 K34 ["keyframeSequence"]
      133 GETTABLEKS                       R5 R5 K39 ["Length"]
      135 LOADN                            R6 0
      136 JUMPIFNOTLT                      R6 R5 ; [+25]
      138 GETUPVAL                         R6 1
      139 SETTABLEKS                       R3 R6 K11 ["rig"]
      141 GETUPVAL                         R6 1
      142 LOADN                            R8 1
      143 GETTABLEKS                       R11 R4 K34 ["keyframeSequence"]
      145 GETTABLEKS                       R11 R11 K39 ["Length"]
      147 GETUPVAL                         R12 6
      148 GETTABLEKS                       R12 R12 K40 ["DEFAULT_GENERATION_FPS"]
      150 MUL                              R10 R11 R12
      151 FASTCALL1                        MATH_ROUND R10 ; [+2]
      152 GETIMPORT                        R9 K43 [math.round]
      154 CALL                             R9 1 1
      155 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
      157 GETIMPORT                        R7 K45 [math.max]
      159 CALL                             R7 2 1
      160 SETTABLEKS                       R7 R6 K30 ["frameCount"]
      162 DUPTABLE                         R6 K46 [{"duration", "name"}]
      163 SETTABLEKS                       R5 R6 K15 ["duration"]
      165 GETTABLEKS                       R7 R4 K34 ["keyframeSequence"]
      167 GETTABLEKS                       R7 R7 K47 ["Name"]
      169 SETTABLEKS                       R7 R6 K17 ["name"]
      171 RETURN                           R6 1

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["callArgs"]
        2 GETTABLEKS                       R1 R1 K1 ["contentId"]
        4 GETUPVAL                         R3 0
        5 GETTABLE                         R2 R3 R1
        6 JUMPIFNOT                        R2 ; [+23]
        7 GETTABLEKS                       R3 R2 K2 ["keyframeSequence"]
        9 JUMPIFNOT                        R3 ; [+20]
       10 GETTABLEKS                       R3 R2 K2 ["keyframeSequence"]
       12 GETTABLEKS                       R3 R3 K3 ["Parent"]
       14 JUMPIFNOT                        R3 ; [+15]
       15 GETTABLEKS                       R3 R0 K4 ["initArgs"]
       17 GETTABLEKS                       R3 R3 K5 ["environment"]
       19 GETTABLEKS                       R4 R3 K6 ["selection"]
       21 GETTABLEKS                       R4 R4 K7 ["set"]
       23 NEWTABLE                         R5 0 1
       25 GETTABLEKS                       R6 R2 K2 ["keyframeSequence"]
       27 SETLIST                          R5 R6 1 [1]
       29 CALL                             R4 1 0
       30 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetTagged"]
        4 CALL                             R0 2 1
        5 LENGTH                           R1 R0
        6 LOADN                            R3 0
        7 JUMPIFNOTLT                      R3 R1 ; [+5]
        9 GETTABLEN                        R2 R0 1
       10 GETTABLEKS                       R2 R2 K1 ["Name"]
       12 JUMP                             ; [+3]
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K2 ["generationName"]
       16 GETUPVAL                         R3 3
       17 GETTABLEKS                       R3 R3 K3 ["bridge"]
       19 GETTABLEKS                       R3 R3 K4 ["updateContentHeader"]
       21 DUPTABLE                         R4 K8 [{"newDisplayName", "newClassName", "showChip"}]
       22 SETTABLEKS                       R2 R4 K5 ["newDisplayName"]
       24 LOADN                            R6 0
       25 JUMPIFNOTLT                      R6 R1 ; [+3]
       27 LOADK                            R5 K9 ["KeyframeSequence"]
       28 JUMP                             ; [+1]
       29 LOADNIL                          R5
       30 SETTABLEKS                       R5 R4 K6 ["newClassName"]
       32 LOADN                            R6 0
       33 JUMPIFLT                         R6 R1 ; [+2]
       35 LOADB                            R5 0 +1
       36 LOADB                            R5 1
       37 SETTABLEKS                       R5 R4 K7 ["showChip"]
       39 CALL                             R3 1 0
       40 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R1 K0 ["callArgs"]
        2 GETTABLEKS                       R2 R2 K1 ["contentId"]
        4 GETUPVAL                         R4 0
        5 GETTABLE                         R3 R4 R2
        6 JUMPIFNOT                        R3 ; [+3]
        7 GETTABLEKS                       R4 R3 K2 ["keyframeSequence"]
        9 JUMPIF                           R4 ; [+1]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R4 R3 K2 ["keyframeSequence"]
       13 GETUPVAL                         R5 1
       14 MOVE                             R6 R4
       15 CALL                             R5 1 1
       16 JUMPIF                           R5 ; [+1]
       17 RETURN                           R0 0
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R6 R6 K3 ["observeTagChanges"]
       21 MOVE                             R7 R5
       22 NEWCLOSURE                       R8 P0
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          VAL R5
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R1
       27 CALL                             R6 2 0
       28 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["destroy"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["destroy"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["setIsPlaying"]
        3 MOVE                             R3 R0
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R1
        6 CALL                             R4 1 1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["setCurrentTime"]
        3 MOVE                             R3 R0
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R1
        6 CALL                             R4 1 1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["setPlaybackSpeed"]
        3 MOVE                             R3 R0
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R1
        6 CALL                             R4 1 1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CollectionService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AssistantUI"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [script]
       15 LOADK                            R4 K8 ["AnimationGen"]
       16 NAMECALL                         R2 R2 K7 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R2 K11 ["AnimationGenTool"]
       23 GETTABLEKS                       R4 R4 K12 ["AnimationGenToolBridgeTypes"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R1 K13 ["Util"]
       30 GETTABLEKS                       R5 R5 K8 ["AnimationGen"]
       32 GETTABLEKS                       R5 R5 K14 ["AnimationGenTypes"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K10 [require]
       37 GETTABLEKS                       R6 R1 K13 ["Util"]
       39 GETTABLEKS                       R6 R6 K8 ["AnimationGen"]
       41 GETTABLEKS                       R6 R6 K15 ["AnimationGenConstants"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K10 [require]
       46 GETTABLEKS                       R7 R1 K16 ["Flags"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K10 [require]
       51 GETTABLEKS                       R8 R1 K13 ["Util"]
       53 GETTABLEKS                       R8 R8 K8 ["AnimationGen"]
       55 GETTABLEKS                       R8 R8 K17 ["HostTypes"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K10 [require]
       60 GETTABLEKS                       R9 R1 K13 ["Util"]
       62 GETTABLEKS                       R9 R9 K18 ["Tagging"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K10 [require]
       67 GETTABLEKS                       R10 R1 K19 ["Types"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K10 [require]
       72 GETTABLEKS                       R11 R1 K13 ["Util"]
       74 GETTABLEKS                       R11 R11 K8 ["AnimationGen"]
       76 GETTABLEKS                       R11 R11 K20 ["createHostAnimator"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K10 [require]
       81 GETTABLEKS                       R12 R1 K13 ["Util"]
       83 GETTABLEKS                       R12 R12 K8 ["AnimationGen"]
       85 GETTABLEKS                       R12 R12 K21 ["createHostGenerator"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K10 [require]
       90 GETTABLEKS                       R13 R1 K13 ["Util"]
       92 GETTABLEKS                       R13 R13 K8 ["AnimationGen"]
       94 GETTABLEKS                       R13 R13 K22 ["createHostSelection"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K10 [require]
       99 GETTABLEKS                       R14 R1 K13 ["Util"]
      101 GETTABLEKS                       R14 R14 K8 ["AnimationGen"]
      103 GETTABLEKS                       R14 R14 K23 ["isRig"]
      105 CALL                             R13 1 1
      106 DUPTABLE                         R14 K28 [{["rig"] = , ["frameCount"] = 0}]
      107 NEWTABLE                         R15 0 0
      109 DUPCLOSURE                       R16 K29 [PROTO_2]
      110 DUPCLOSURE                       R17 K30 [PROTO_3]
      111 CAPTURE                          VAL R13
      112 MOVE                             R18 R12
      113 CALL                             R18 0 1
      114 MOVE                             R19 R11
      115 CALL                             R19 0 1
      116 MOVE                             R20 R10
      117 GETTABLEKS                       R21 R18 K31 ["selectionChangedSignal"]
      119 MOVE                             R22 R15
      120 CALL                             R20 2 1
      121 DUPCLOSURE                       R21 K32 [PROTO_4]
      122 CAPTURE                          VAL R4
      123 CAPTURE                          VAL R14
      124 CAPTURE                          VAL R19
      125 CAPTURE                          VAL R15
      126 CAPTURE                          VAL R20
      127 CAPTURE                          VAL R16
      128 CAPTURE                          VAL R5
      129 DUPCLOSURE                       R22 K33 [PROTO_5]
      130 CAPTURE                          VAL R15
      131 DUPCLOSURE                       R23 K34 [PROTO_6]
      132 CAPTURE                          VAL R0
      133 CAPTURE                          VAL R6
      134 DUPCLOSURE                       R24 K35 [PROTO_7]
      135 CAPTURE                          VAL R15
      136 DUPCLOSURE                       R25 K36 [PROTO_9]
      137 CAPTURE                          VAL R15
      138 CAPTURE                          VAL R23
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R0
      141 DUPCLOSURE                       R26 K37 [PROTO_10]
      142 CAPTURE                          VAL R20
      143 CAPTURE                          VAL R18
      144 DUPTABLE                         R27 K46 [{"generateAndSaveAnimationAsync", "getSelectedRigRef", "setIsPlaying", "setCurrentTime", "setPlaybackSpeed", "publishAnimationAsync", "selectLinkedAnimation", "listenToLinkChanges"}]
      145 SETTABLEKS                       R21 R27 K38 ["generateAndSaveAnimationAsync"]
      147 SETTABLEKS                       R17 R27 K39 ["getSelectedRigRef"]
      149 DUPCLOSURE                       R28 K47 [PROTO_11]
      150 CAPTURE                          VAL R20
      151 CAPTURE                          VAL R16
      152 SETTABLEKS                       R28 R27 K40 ["setIsPlaying"]
      154 DUPCLOSURE                       R28 K48 [PROTO_12]
      155 CAPTURE                          VAL R20
      156 CAPTURE                          VAL R16
      157 SETTABLEKS                       R28 R27 K41 ["setCurrentTime"]
      159 DUPCLOSURE                       R28 K49 [PROTO_13]
      160 CAPTURE                          VAL R20
      161 CAPTURE                          VAL R16
      162 SETTABLEKS                       R28 R27 K42 ["setPlaybackSpeed"]
      164 SETTABLEKS                       R22 R27 K43 ["publishAnimationAsync"]
      166 SETTABLEKS                       R24 R27 K44 ["selectLinkedAnimation"]
      168 SETTABLEKS                       R25 R27 K45 ["listenToLinkChanges"]
      170 DUPTABLE                         R28 K52 [{"bridge", "destroy"}]
      171 SETTABLEKS                       R27 R28 K50 ["bridge"]
      173 SETTABLEKS                       R26 R28 K51 ["destroy"]
      175 RETURN                           R28 1
