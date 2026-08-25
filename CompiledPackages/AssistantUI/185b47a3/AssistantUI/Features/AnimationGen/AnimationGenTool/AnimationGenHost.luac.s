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
        4 GETTABLEKS                       R4 R0 K2 ["rigUniqueId"]
        6 JUMPIFEQKNIL                     R4 ; [+9]
        8 GETTABLEKS                       R3 R2 K3 ["instances"]
       10 GETTABLEKS                       R3 R3 K4 ["getInstanceFromUniqueId"]
       12 GETTABLEKS                       R4 R0 K2 ["rigUniqueId"]
       14 CALL                             R3 1 1
       15 JUMP                             ; [+1]
       16 LOADNIL                          R3
       17 JUMPIFEQKNIL                     R3 ; [+10]
       19 GETTABLEKS                       R4 R3 K5 ["Parent"]
       21 JUMPIFEQKNIL                     R4 ; [+6]
       23 LOADK                            R6 K6 ["Model"]
       24 NAMECALL                         R4 R3 K7 ["IsA"]
       26 CALL                             R4 2 1
       27 JUMPIF                           R4 ; [+2]
       28 DUPTABLE                         R4 K12 [{["duration"] = 0, ["name"] = ""}]
       29 RETURN                           R4 1
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K13 ["generateAndSaveAnimationAsync"]
       33 DUPTABLE                         R5 K18 [{"rig", "prompt", "duration", "loop", "id"}]
       34 SETTABLEKS                       R3 R5 K14 ["rig"]
       36 GETTABLEKS                       R6 R0 K15 ["prompt"]
       38 SETTABLEKS                       R6 R5 K15 ["prompt"]
       40 GETTABLEKS                       R6 R0 K8 ["duration"]
       42 SETTABLEKS                       R6 R5 K8 ["duration"]
       44 GETTABLEKS                       R6 R0 K16 ["loop"]
       46 SETTABLEKS                       R6 R5 K16 ["loop"]
       48 GETTABLEKS                       R6 R1 K19 ["callArgs"]
       50 GETTABLEKS                       R6 R6 K20 ["contentId"]
       52 SETTABLEKS                       R6 R5 K17 ["id"]
       54 MOVE                             R6 R2
       55 CALL                             R4 2 1
       56 GETTABLEKS                       R5 R4 K21 ["success"]
       58 JUMPIFNOT                        R5 ; [+4]
       59 GETTABLEKS                       R5 R4 K22 ["keyframeSequence"]
       61 JUMPIFNOTEQKNIL                  R5 ; [+3]
       63 DUPTABLE                         R5 K12 [{["duration"] = 0, ["name"] = ""}]
       64 RETURN                           R5 1
       65 GETUPVAL                         R5 1
       66 GETTABLEKS                       R6 R1 K19 ["callArgs"]
       68 GETTABLEKS                       R6 R6 K20 ["contentId"]
       70 DUPTABLE                         R7 K25 [{["rig"], ["keyframeSequence"], ["needsReload"] = True}]
       71 SETTABLEKS                       R3 R7 K14 ["rig"]
       73 GETTABLEKS                       R8 R4 K22 ["keyframeSequence"]
       75 SETTABLEKS                       R8 R7 K22 ["keyframeSequence"]
       77 SETTABLE                         R7 R5 R6
       78 GETUPVAL                         R5 2
       79 GETTABLEKS                       R5 R5 K26 ["setAnimation"]
       81 GETUPVAL                         R6 3
       82 MOVE                             R7 R1
       83 CALL                             R6 1 1
       84 CALL                             R5 1 0
       85 DUPTABLE                         R5 K27 [{"duration", "name"}]
       86 GETTABLEKS                       R6 R4 K22 ["keyframeSequence"]
       88 GETTABLEKS                       R6 R6 K28 ["Length"]
       90 SETTABLEKS                       R6 R5 K8 ["duration"]
       92 GETTABLEKS                       R6 R4 K22 ["keyframeSequence"]
       94 GETTABLEKS                       R6 R6 K29 ["Name"]
       96 SETTABLEKS                       R6 R5 K10 ["name"]
       98 RETURN                           R5 1

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
       28 GETTABLEKS                       R5 R1 K13 ["Flags"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K10 [require]
       33 GETTABLEKS                       R6 R1 K14 ["Util"]
       35 GETTABLEKS                       R6 R6 K8 ["AnimationGen"]
       37 GETTABLEKS                       R6 R6 K15 ["HostTypes"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K10 [require]
       42 GETTABLEKS                       R7 R1 K14 ["Util"]
       44 GETTABLEKS                       R7 R7 K16 ["Tagging"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K10 [require]
       49 GETTABLEKS                       R8 R1 K17 ["Types"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K10 [require]
       54 GETTABLEKS                       R9 R1 K14 ["Util"]
       56 GETTABLEKS                       R9 R9 K8 ["AnimationGen"]
       58 GETTABLEKS                       R9 R9 K18 ["createHostAnimator"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K10 [require]
       63 GETTABLEKS                       R10 R1 K14 ["Util"]
       65 GETTABLEKS                       R10 R10 K8 ["AnimationGen"]
       67 GETTABLEKS                       R10 R10 K19 ["createHostGenerator"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K10 [require]
       72 GETTABLEKS                       R11 R1 K14 ["Util"]
       74 GETTABLEKS                       R11 R11 K8 ["AnimationGen"]
       76 GETTABLEKS                       R11 R11 K20 ["createHostSelection"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K10 [require]
       81 GETTABLEKS                       R12 R1 K14 ["Util"]
       83 GETTABLEKS                       R12 R12 K8 ["AnimationGen"]
       85 GETTABLEKS                       R12 R12 K21 ["isRig"]
       87 CALL                             R11 1 1
       88 NEWTABLE                         R12 0 0
       90 DUPCLOSURE                       R13 K22 [PROTO_2]
       91 DUPCLOSURE                       R14 K23 [PROTO_3]
       92 CAPTURE                          VAL R11
       93 MOVE                             R15 R10
       94 CALL                             R15 0 1
       95 MOVE                             R16 R9
       96 CALL                             R16 0 1
       97 MOVE                             R17 R8
       98 GETTABLEKS                       R18 R15 K24 ["selectionChangedSignal"]
      100 MOVE                             R19 R12
      101 CALL                             R17 2 1
      102 DUPCLOSURE                       R18 K25 [PROTO_4]
      103 CAPTURE                          VAL R16
      104 CAPTURE                          VAL R12
      105 CAPTURE                          VAL R17
      106 CAPTURE                          VAL R13
      107 DUPCLOSURE                       R19 K26 [PROTO_5]
      108 CAPTURE                          VAL R12
      109 DUPCLOSURE                       R20 K27 [PROTO_6]
      110 CAPTURE                          VAL R0
      111 CAPTURE                          VAL R4
      112 DUPCLOSURE                       R21 K28 [PROTO_7]
      113 CAPTURE                          VAL R12
      114 DUPCLOSURE                       R22 K29 [PROTO_9]
      115 CAPTURE                          VAL R12
      116 CAPTURE                          VAL R20
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R0
      119 DUPCLOSURE                       R23 K30 [PROTO_10]
      120 CAPTURE                          VAL R17
      121 CAPTURE                          VAL R15
      122 DUPTABLE                         R24 K39 [{"generateAndSaveAnimationAsync", "getSelectedRigRef", "setIsPlaying", "setCurrentTime", "setPlaybackSpeed", "publishAnimationAsync", "selectLinkedAnimation", "listenToLinkChanges"}]
      123 SETTABLEKS                       R18 R24 K31 ["generateAndSaveAnimationAsync"]
      125 SETTABLEKS                       R14 R24 K32 ["getSelectedRigRef"]
      127 DUPCLOSURE                       R25 K40 [PROTO_11]
      128 CAPTURE                          VAL R17
      129 CAPTURE                          VAL R13
      130 SETTABLEKS                       R25 R24 K33 ["setIsPlaying"]
      132 DUPCLOSURE                       R25 K41 [PROTO_12]
      133 CAPTURE                          VAL R17
      134 CAPTURE                          VAL R13
      135 SETTABLEKS                       R25 R24 K34 ["setCurrentTime"]
      137 DUPCLOSURE                       R25 K42 [PROTO_13]
      138 CAPTURE                          VAL R17
      139 CAPTURE                          VAL R13
      140 SETTABLEKS                       R25 R24 K35 ["setPlaybackSpeed"]
      142 SETTABLEKS                       R19 R24 K36 ["publishAnimationAsync"]
      144 SETTABLEKS                       R21 R24 K37 ["selectLinkedAnimation"]
      146 SETTABLEKS                       R22 R24 K38 ["listenToLinkChanges"]
      148 DUPTABLE                         R25 K45 [{"bridge", "destroy"}]
      149 SETTABLEKS                       R24 R25 K43 ["bridge"]
      151 SETTABLEKS                       R23 R25 K44 ["destroy"]
      153 RETURN                           R25 1
