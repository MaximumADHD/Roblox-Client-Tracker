PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["calculateAnimFramesAtOrigin"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETTABLEN                        R1 R0 1
        6 GETIMPORT                        R2 K2 [pcall]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R1
       11 CALL                             R2 1 5
       12 JUMPIF                           R2 ; [+2]
       13 LOADNIL                          R7
       14 RETURN                           R7 1
       15 DUPTABLE                         R7 K7 [{"animFrames", "animLength", "positionMagnitudeFrames", "tracks"}]
       16 SETTABLEKS                       R3 R7 K3 ["animFrames"]
       18 SETTABLEKS                       R4 R7 K4 ["animLength"]
       20 SETTABLEKS                       R5 R7 K5 ["positionMagnitudeFrames"]
       22 SETTABLEKS                       R6 R7 K6 ["tracks"]
       24 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["util"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["util"]
       20 GETTABLEKS                       R3 R3 K7 ["CurveAnimationFrameCalculator"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 1 0
       25 DUPCLOSURE                       R4 K8 [PROTO_1]
       26 CAPTURE                          VAL R2
       27 SETTABLEKS                       R4 R3 K9 ["getData"]
       29 RETURN                           R3 1
