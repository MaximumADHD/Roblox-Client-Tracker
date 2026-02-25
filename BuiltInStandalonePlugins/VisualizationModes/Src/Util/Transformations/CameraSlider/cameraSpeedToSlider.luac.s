PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 FASTCALL3                        MATH_CLAMP R0 R3 R4
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K2 [math.clamp]
        7 CALL                             R1 3 1
        8 GETUPVAL                         R5 2
        9 ADD                              R4 R1 R5
       10 GETUPVAL                         R5 3
       11 FASTCALL2                        MATH_LOG R4 R5 ; [+3]
       13 GETIMPORT                        R3 K4 [math.log]
       15 CALL                             R3 2 1
       16 GETUPVAL                         R4 4
       17 SUB                              R2 R3 R4
       18 GETUPVAL                         R5 5
       19 GETUPVAL                         R6 6
       20 FASTCALL3                        MATH_CLAMP R2 R5 R6
       22 MOVE                             R4 R2
       23 GETIMPORT                        R3 K2 [math.clamp]
       25 CALL                             R3 3 1
       26 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R6 R0 K6 ["Src"]
       11 GETTABLEKS                       R5 R6 K7 ["Util"]
       13 GETTABLEKS                       R4 R5 K8 ["Transformations"]
       15 GETTABLEKS                       R3 R4 K9 ["CameraSlider"]
       17 GETTABLEKS                       R2 R3 K10 ["cameraSliderConstants"]
       19 CALL                             R1 1 1
       20 GETTABLEKS                       R2 R1 K11 ["BASE"]
       22 GETTABLEKS                       R3 R1 K12 ["CAMERA_SPEED_OFFSET"]
       24 GETTABLEKS                       R4 R1 K13 ["SLIDER_OFFSET"]
       26 GETTABLEKS                       R5 R1 K14 ["SLIDER_MIN"]
       28 GETTABLEKS                       R6 R1 K15 ["SLIDER_MAX"]
       30 GETTABLEKS                       R7 R1 K16 ["CAMERA_SPEED_MIN"]
       32 GETTABLEKS                       R8 R1 K17 ["CAMERA_SPEED_MAX"]
       34 DUPCLOSURE                       R9 K18 [PROTO_0]
       35 CAPTURE                          VAL R7
       36 CAPTURE                          VAL R8
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R6
       42 RETURN                           R9 1
