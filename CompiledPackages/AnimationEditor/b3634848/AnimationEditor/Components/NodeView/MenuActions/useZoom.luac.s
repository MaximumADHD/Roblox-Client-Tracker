PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeZoomRatio"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 1
        5 GETUPVAL                         R4 1
        6 ADDK                             R3 R4 K1 [1]
        7 MUL                              R2 R0 R3
        8 LOADK                            R3 K2 [0.1]
        9 LOADN                            R4 1
       10 FASTCALL                         MATH_CLAMP ; [+2]
       11 GETIMPORT                        R1 K5 [math.clamp]
       13 CALL                             R1 3 1
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K6 ["setZoomRatioTarget"]
       17 MOVE                             R3 R1
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ViewportRectContext"]
        6 GETTABLEKS                       R2 R2 K2 ["Context"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["useCallback"]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R0
       15 NEWTABLE                         R4 0 3
       17 GETTABLEKS                       R5 R1 K4 ["observeZoomRatio"]
       19 GETTABLEKS                       R6 R1 K5 ["setZoomRatioTarget"]
       21 MOVE                             R7 R0
       22 SETLIST                          R4 R5 3 [1]
       24 CALL                             R2 2 1
       25 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["NodeGraphing"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_1]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R1
       24 RETURN                           R3 1
