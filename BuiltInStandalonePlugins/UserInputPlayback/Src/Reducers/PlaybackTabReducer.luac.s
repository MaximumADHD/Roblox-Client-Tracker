PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"currentRecordingDurationSec"}]
        3 GETTABLEKS                       R5 R1 K0 ["currentRecordingDurationSec"]
        5 SETTABLEKS                       R5 R4 K0 ["currentRecordingDurationSec"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"currentRecordingNumEvents"}]
        3 GETTABLEKS                       R5 R1 K0 ["currentRecordingNumEvents"]
        5 SETTABLEKS                       R5 R4 K0 ["currentRecordingNumEvents"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"currentRecordingResolution"}]
        3 GETTABLEKS                       R5 R1 K0 ["currentRecordingResolution"]
        5 SETTABLEKS                       R5 R4 K0 ["currentRecordingResolution"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"currentRecordingDeviceId"}]
        3 GETTABLEKS                       R5 R1 K0 ["currentRecordingDeviceId"]
        5 SETTABLEKS                       R5 R4 K0 ["currentRecordingDeviceId"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"currentRecordingDeviceOrientation"}]
        3 GETTABLEKS                       R5 R1 K0 ["currentRecordingDeviceOrientation"]
        5 SETTABLEKS                       R5 R4 K0 ["currentRecordingDeviceOrientation"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"shouldSetEmulationDevice"}]
        3 GETTABLEKS                       R5 R1 K0 ["shouldSetEmulationDevice"]
        5 SETTABLEKS                       R5 R4 K0 ["shouldSetEmulationDevice"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["Dictionary"]
       25 GETTABLEKS                       R3 R3 K9 ["join"]
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R5 R0 K10 ["Src"]
       31 GETTABLEKS                       R5 R5 K11 ["Actions"]
       33 GETTABLEKS                       R5 R5 K12 ["PlaybackTab"]
       35 GETTABLEKS                       R5 R5 K13 ["SetShouldSetEmulationDevice"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K4 [require]
       40 GETTABLEKS                       R6 R0 K10 ["Src"]
       42 GETTABLEKS                       R6 R6 K11 ["Actions"]
       44 GETTABLEKS                       R6 R6 K12 ["PlaybackTab"]
       46 GETTABLEKS                       R6 R6 K14 ["SetCurrentRecordingDurationSec"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K4 [require]
       51 GETTABLEKS                       R7 R0 K10 ["Src"]
       53 GETTABLEKS                       R7 R7 K11 ["Actions"]
       55 GETTABLEKS                       R7 R7 K12 ["PlaybackTab"]
       57 GETTABLEKS                       R7 R7 K15 ["SetCurrentRecordingNumEvents"]
       59 CALL                             R6 1 1
       60 GETIMPORT                        R7 K4 [require]
       62 GETTABLEKS                       R8 R0 K10 ["Src"]
       64 GETTABLEKS                       R8 R8 K11 ["Actions"]
       66 GETTABLEKS                       R8 R8 K12 ["PlaybackTab"]
       68 GETTABLEKS                       R8 R8 K16 ["SetCurrentRecordingResolution"]
       70 CALL                             R7 1 1
       71 GETIMPORT                        R8 K4 [require]
       73 GETTABLEKS                       R9 R0 K10 ["Src"]
       75 GETTABLEKS                       R9 R9 K11 ["Actions"]
       77 GETTABLEKS                       R9 R9 K12 ["PlaybackTab"]
       79 GETTABLEKS                       R9 R9 K17 ["SetCurrentRecordingDeviceId"]
       81 CALL                             R8 1 1
       82 GETIMPORT                        R9 K4 [require]
       84 GETTABLEKS                       R10 R0 K10 ["Src"]
       86 GETTABLEKS                       R10 R10 K11 ["Actions"]
       88 GETTABLEKS                       R10 R10 K12 ["PlaybackTab"]
       90 GETTABLEKS                       R10 R10 K18 ["SetCurrentRecordingDeviceOrientation"]
       92 CALL                             R9 1 1
       93 DUPTABLE                         R10 K33 [{["selectedRecordingIndex"] = 1, ["playbackFileNameOptions"], ["currentPlaybackRecordingDataValid"] = False, ["currentRecordingDurationSec"] = 0, ["currentRecordingNumEvents"] = 0, ["currentRecordingResolution"], ["currentRecordingDeviceId"] = "Unknown", ["currentRecordingDeviceOrientation"] = "Unknown", ["shouldSetEmulationDevice"] = True}]
       94 NEWTABLE                         R11 0 0
       96 SETTABLEKS                       R11 R10 K21 ["playbackFileNameOptions"]
       98 GETIMPORT                        R11 K36 [Vector2.new]
      100 CALL                             R11 0 1
      101 SETTABLEKS                       R11 R10 K27 ["currentRecordingResolution"]
      103 GETTABLEKS                       R11 R1 K37 ["createReducer"]
      105 MOVE                             R12 R10
      106 DUPTABLE                         R13 K38 [{"SetCurrentRecordingDurationSec", "SetCurrentRecordingNumEvents", "SetCurrentRecordingResolution", "SetCurrentRecordingDeviceId", "SetCurrentRecordingDeviceOrientation", "SetShouldSetEmulationDevice"}]
      107 DUPCLOSURE                       R14 K39 [PROTO_0]
      108 CAPTURE                          VAL R3
      109 SETTABLEKS                       R14 R13 K14 ["SetCurrentRecordingDurationSec"]
      111 DUPCLOSURE                       R14 K40 [PROTO_1]
      112 CAPTURE                          VAL R3
      113 SETTABLEKS                       R14 R13 K15 ["SetCurrentRecordingNumEvents"]
      115 DUPCLOSURE                       R14 K41 [PROTO_2]
      116 CAPTURE                          VAL R3
      117 SETTABLEKS                       R14 R13 K16 ["SetCurrentRecordingResolution"]
      119 DUPCLOSURE                       R14 K42 [PROTO_3]
      120 CAPTURE                          VAL R3
      121 SETTABLEKS                       R14 R13 K17 ["SetCurrentRecordingDeviceId"]
      123 DUPCLOSURE                       R14 K43 [PROTO_4]
      124 CAPTURE                          VAL R3
      125 SETTABLEKS                       R14 R13 K18 ["SetCurrentRecordingDeviceOrientation"]
      127 DUPCLOSURE                       R14 K44 [PROTO_5]
      128 CAPTURE                          VAL R3
      129 SETTABLEKS                       R14 R13 K13 ["SetShouldSetEmulationDevice"]
      131 CALL                             R11 2 -1
      132 RETURN                           R11 -1
