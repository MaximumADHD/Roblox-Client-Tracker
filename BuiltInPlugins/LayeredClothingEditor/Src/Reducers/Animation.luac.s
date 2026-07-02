PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"Playhead"}]
        7 GETTABLEKS                       R5 R1 K4 ["playhead"]
        9 SETTABLEKS                       R5 R4 K2 ["Playhead"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"SliderPlayhead"}]
        7 GETTABLEKS                       R5 R1 K4 ["sliderPlayhead"]
        9 SETTABLEKS                       R5 R4 K2 ["SliderPlayhead"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"IsPlaying"}]
        7 GETTABLEKS                       R5 R1 K4 ["isPlaying"]
        9 SETTABLEKS                       R5 R4 K2 ["IsPlaying"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"TrackLength"}]
        7 GETTABLEKS                       R5 R1 K4 ["trackLength"]
        9 SETTABLEKS                       R5 R4 K2 ["TrackLength"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

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
       23 GETTABLEKS                       R3 R1 K8 ["createReducer"]
       25 DUPTABLE                         R4 K16 [{["Playhead"] = 0, ["SliderPlayhead"] = -1, ["IsPlaying"] = False, ["TrackLengh"] = 0}]
       26 DUPTABLE                         R5 K21 [{"SetPlayhead", "SetSliderPlayhead", "SetIsPlaying", "SetTrackLength"}]
       27 DUPCLOSURE                       R6 K22 [PROTO_0]
       28 CAPTURE                          VAL R2
       29 SETTABLEKS                       R6 R5 K17 ["SetPlayhead"]
       31 DUPCLOSURE                       R6 K23 [PROTO_1]
       32 CAPTURE                          VAL R2
       33 SETTABLEKS                       R6 R5 K18 ["SetSliderPlayhead"]
       35 DUPCLOSURE                       R6 K24 [PROTO_2]
       36 CAPTURE                          VAL R2
       37 SETTABLEKS                       R6 R5 K19 ["SetIsPlaying"]
       39 DUPCLOSURE                       R6 K25 [PROTO_3]
       40 CAPTURE                          VAL R2
       41 SETTABLEKS                       R6 R5 K20 ["SetTrackLength"]
       43 CALL                             R3 2 -1
       44 RETURN                           R3 -1
