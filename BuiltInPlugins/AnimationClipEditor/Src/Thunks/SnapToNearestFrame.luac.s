PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R3 R1 K1 ["Status"]
        5 GETTABLEKS                       R2 R3 K2 ["FrameRate"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K3 ["getNearestFrame"]
       10 GETUPVAL                         R4 1
       11 MOVE                             R5 R2
       12 CALL                             R3 2 1
       13 GETUPVAL                         R6 2
       14 MOVE                             R7 R3
       15 CALL                             R6 1 -1
       16 NAMECALL                         R4 R0 K4 ["dispatch"]
       18 CALL                             R4 -1 0
       19 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Thunks"]
       13 GETTABLEKS                       R3 R4 K8 ["Playback"]
       15 GETTABLEKS                       R2 R3 K9 ["StepAnimation"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Src"]
       22 GETTABLEKS                       R4 R5 K10 ["Util"]
       24 GETTABLEKS                       R3 R4 K11 ["KeyframeUtils"]
       26 CALL                             R2 1 1
       27 DUPCLOSURE                       R3 K12 [PROTO_1]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R1
       30 RETURN                           R3 1
