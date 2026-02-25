PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"Playhead"}]
        7 GETTABLEKS                       R5 R1 K4 ["playhead"]
        9 SETTABLEKS                       R5 R4 K2 ["Playhead"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"SliderPlayhead"}]
        7 GETTABLEKS                       R5 R1 K4 ["sliderPlayhead"]
        9 SETTABLEKS                       R5 R4 K2 ["SliderPlayhead"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"IsPlaying"}]
        7 GETTABLEKS                       R5 R1 K4 ["isPlaying"]
        9 SETTABLEKS                       R5 R4 K2 ["IsPlaying"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"TrackLength"}]
        7 GETTABLEKS                       R5 R1 K4 ["trackLength"]
        9 SETTABLEKS                       R5 R4 K2 ["TrackLength"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K8 ["createReducer"]
       25 DUPTABLE                         R4 K13 [{"Playhead", "SliderPlayhead", "IsPlaying", "TrackLengh"}]
       26 LOADN                            R5 0
       27 SETTABLEKS                       R5 R4 K9 ["Playhead"]
       29 LOADN                            R5 255
       30 SETTABLEKS                       R5 R4 K10 ["SliderPlayhead"]
       32 LOADB                            R5 0
       33 SETTABLEKS                       R5 R4 K11 ["IsPlaying"]
       35 LOADN                            R5 0
       36 SETTABLEKS                       R5 R4 K12 ["TrackLengh"]
       38 DUPTABLE                         R5 K18 [{"SetPlayhead", "SetSliderPlayhead", "SetIsPlaying", "SetTrackLength"}]
       39 DUPCLOSURE                       R6 K19 [PROTO_0]
       40 CAPTURE                          VAL R2
       41 SETTABLEKS                       R6 R5 K14 ["SetPlayhead"]
       43 DUPCLOSURE                       R6 K20 [PROTO_1]
       44 CAPTURE                          VAL R2
       45 SETTABLEKS                       R6 R5 K15 ["SetSliderPlayhead"]
       47 DUPCLOSURE                       R6 K21 [PROTO_2]
       48 CAPTURE                          VAL R2
       49 SETTABLEKS                       R6 R5 K16 ["SetIsPlaying"]
       51 DUPCLOSURE                       R6 K22 [PROTO_3]
       52 CAPTURE                          VAL R2
       53 SETTABLEKS                       R6 R5 K17 ["SetTrackLength"]
       55 CALL                             R3 2 -1
       56 RETURN                           R3 -1
