PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Fire"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Fire"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Fire"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setIsPlaying"]
        3 DUPTABLE                         R1 K4 [{["toolUseId"], ["isPlaying"] = False}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["toolUseId"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+3]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["beginEditPreview"]
        9 DUPTABLE                         R1 K3 [{"sourceToolUseId", "editToolUseId"}]
       10 GETUPVAL                         R2 2
       11 SETTABLEKS                       R2 R1 K1 ["sourceToolUseId"]
       13 GETUPVAL                         R2 3
       14 SETTABLEKS                       R2 R1 K2 ["editToolUseId"]
       16 CALL                             R0 1 0
       17 NEWCLOSURE                       R0 P0
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          UPVAL U3
       20 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+10]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["setIsPlaying"]
        5 DUPTABLE                         R2 K3 [{"toolUseId", "isPlaying"}]
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K1 ["toolUseId"]
        9 SETTABLEKS                       R0 R2 K2 ["isPlaying"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+10]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["setCurrentTime"]
        5 DUPTABLE                         R2 K3 [{"toolUseId", "currentTime"}]
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K1 ["toolUseId"]
        9 SETTABLEKS                       R0 R2 K2 ["currentTime"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R1 K2 [table.find]
        2 MOVE                             R2 R0
        3 GETUPVAL                         R3 0
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 1
        7 GETIMPORT                        R1 K4 [table.clone]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 1
       11 GETUPVAL                         R4 0
       12 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       14 MOVE                             R3 R1
       15 GETIMPORT                        R2 K6 [table.insert]
       17 CALL                             R2 2 0
       18 GETIMPORT                        R2 K8 [table.sort]
       20 MOVE                             R3 R1
       21 CALL                             R2 1 0
       22 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R1 K2 [table.find]
        2 MOVE                             R2 R0
        3 GETUPVAL                         R3 0
        4 CALL                             R1 2 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 RETURN                           R0 1
        8 GETIMPORT                        R2 K4 [table.clone]
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 GETIMPORT                        R3 K6 [table.remove]
       14 MOVE                             R4 R2
       15 MOVE                             R5 R1
       16 CALL                             R3 2 0
       17 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R0 K2 ["toolUseId"]
        9 MOVE                             R4 R2
       10 LOADK                            R5 K3 [":edit"]
       11 CONCAT                           R3 R4 R5
       12 GETTABLEKS                       R4 R0 K4 ["disabled"]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K5 ["useState"]
       17 NEWTABLE                         R6 0 0
       19 CALL                             R5 1 2
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K6 ["useMemo"]
       23 DUPCLOSURE                       R8 K7 [PROTO_0]
       24 CAPTURE                          UPVAL U2
       25 NEWTABLE                         R9 0 0
       27 CALL                             R7 2 1
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R8 R8 K6 ["useMemo"]
       31 DUPCLOSURE                       R9 K8 [PROTO_1]
       32 CAPTURE                          UPVAL U2
       33 NEWTABLE                         R10 0 0
       35 CALL                             R8 2 1
       36 GETUPVAL                         R9 0
       37 GETTABLEKS                       R9 R9 K6 ["useMemo"]
       39 DUPCLOSURE                       R10 K9 [PROTO_2]
       40 CAPTURE                          UPVAL U2
       41 NEWTABLE                         R11 0 0
       43 CALL                             R9 2 1
       44 GETUPVAL                         R10 1
       45 GETTABLEKS                       R10 R10 K10 ["useAnimatorRemoved"]
       47 MOVE                             R11 R3
       48 GETUPVAL                         R12 0
       49 GETTABLEKS                       R12 R12 K11 ["useCallback"]
       51 NEWCLOSURE                       R13 P3
       52 CAPTURE                          VAL R7
       53 NEWTABLE                         R14 0 1
       55 MOVE                             R15 R7
       56 SETLIST                          R14 R15 1 [1]
       58 CALL                             R12 2 -1
       59 CALL                             R10 -1 0
       60 GETUPVAL                         R10 1
       61 GETTABLEKS                       R10 R10 K12 ["usePlaybackRestarted"]
       63 MOVE                             R11 R3
       64 GETUPVAL                         R12 0
       65 GETTABLEKS                       R12 R12 K11 ["useCallback"]
       67 NEWCLOSURE                       R13 P4
       68 CAPTURE                          VAL R8
       69 NEWTABLE                         R14 0 1
       71 MOVE                             R15 R8
       72 SETLIST                          R14 R15 1 [1]
       74 CALL                             R12 2 -1
       75 CALL                             R10 -1 0
       76 GETUPVAL                         R10 1
       77 GETTABLEKS                       R10 R10 K13 ["usePoseDeselected"]
       79 MOVE                             R11 R3
       80 GETUPVAL                         R12 0
       81 GETTABLEKS                       R12 R12 K11 ["useCallback"]
       83 NEWCLOSURE                       R13 P5
       84 CAPTURE                          VAL R9
       85 NEWTABLE                         R14 0 1
       87 MOVE                             R15 R9
       88 SETLIST                          R14 R15 1 [1]
       90 CALL                             R12 2 -1
       91 CALL                             R10 -1 0
       92 GETUPVAL                         R10 0
       93 GETTABLEKS                       R10 R10 K14 ["useEffect"]
       95 NEWCLOSURE                       R11 P6
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R3
      100 NEWTABLE                         R12 0 4
      102 MOVE                             R13 R1
      103 MOVE                             R14 R2
      104 MOVE                             R15 R3
      105 MOVE                             R16 R4
      106 SETLIST                          R12 R13 4 [1]
      108 CALL                             R10 2 0
      109 GETUPVAL                         R10 0
      110 GETTABLEKS                       R10 R10 K11 ["useCallback"]
      112 NEWCLOSURE                       R11 P7
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R3
      115 NEWTABLE                         R12 0 2
      117 MOVE                             R13 R1
      118 MOVE                             R14 R3
      119 SETLIST                          R12 R13 2 [1]
      121 CALL                             R10 2 1
      122 GETUPVAL                         R11 0
      123 GETTABLEKS                       R11 R11 K11 ["useCallback"]
      125 NEWCLOSURE                       R12 P8
      126 CAPTURE                          VAL R1
      127 CAPTURE                          VAL R3
      128 NEWTABLE                         R13 0 2
      130 MOVE                             R14 R1
      131 MOVE                             R15 R3
      132 SETLIST                          R13 R14 2 [1]
      134 CALL                             R11 2 1
      135 GETUPVAL                         R12 0
      136 GETTABLEKS                       R12 R12 K11 ["useCallback"]
      138 NEWCLOSURE                       R13 P9
      139 CAPTURE                          VAL R6
      140 NEWTABLE                         R14 0 0
      142 CALL                             R12 2 1
      143 GETUPVAL                         R13 0
      144 GETTABLEKS                       R13 R13 K11 ["useCallback"]
      146 NEWCLOSURE                       R14 P10
      147 CAPTURE                          VAL R6
      148 NEWTABLE                         R15 0 0
      150 CALL                             R13 2 1
      151 GETUPVAL                         R14 3
      152 GETUPVAL                         R15 4
      153 DUPTABLE                         R16 K25 [{"layoutOrder", "duration", "disabled", "keyframeFrameIndices", "animatorRemovedSignal", "playbackRestartedSignal", "poseDeselectedSignal", "setHostIsPlaying", "setHostCurrentTime", "insertHostPose", "deleteHostPose"}]
      154 GETTABLEKS                       R17 R0 K15 ["layoutOrder"]
      156 SETTABLEKS                       R17 R16 K15 ["layoutOrder"]
      158 GETTABLEKS                       R17 R0 K16 ["duration"]
      160 SETTABLEKS                       R17 R16 K16 ["duration"]
      162 SETTABLEKS                       R4 R16 K4 ["disabled"]
      164 SETTABLEKS                       R5 R16 K17 ["keyframeFrameIndices"]
      166 SETTABLEKS                       R7 R16 K18 ["animatorRemovedSignal"]
      168 SETTABLEKS                       R8 R16 K19 ["playbackRestartedSignal"]
      170 SETTABLEKS                       R9 R16 K20 ["poseDeselectedSignal"]
      172 SETTABLEKS                       R10 R16 K21 ["setHostIsPlaying"]
      174 SETTABLEKS                       R11 R16 K22 ["setHostCurrentTime"]
      176 SETTABLEKS                       R12 R16 K23 ["insertHostPose"]
      178 SETTABLEKS                       R13 R16 K24 ["deleteHostPose"]
      180 CALL                             R14 2 -1
      181 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["Contexts"]
       15 GETTABLEKS                       R3 R3 K9 ["Actions"]
       17 GETTABLEKS                       R3 R3 K10 ["AnimationGenActionsContext"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R1 K11 ["React"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETIMPORT                        R5 K1 [script]
       29 GETTABLEKS                       R5 R5 K12 ["Scrubbar"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R1 K13 ["Signal"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R3 K14 ["createElement"]
       39 DUPCLOSURE                       R7 K15 [PROTO_14]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R4
       45 RETURN                           R7 1
