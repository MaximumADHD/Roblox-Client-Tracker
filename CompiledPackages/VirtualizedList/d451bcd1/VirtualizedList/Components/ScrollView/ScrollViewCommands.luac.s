PROTO_0:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["flashScrollIndicators not implemented"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOT                        R3 ; [+8]
        1 GETTABLEKS                       R5 R0 K0 ["_nativeRef"]
        3 GETTABLEKS                       R4 R5 K1 ["animateScrollTo"]
        5 MOVE                             R5 R1
        6 MOVE                             R6 R2
        7 CALL                             R4 2 0
        8 RETURN                           R0 0
        9 GETTABLEKS                       R5 R0 K0 ["_nativeRef"]
       11 GETTABLEKS                       R4 R5 K2 ["current"]
       13 GETIMPORT                        R5 K5 [Vector2.new]
       15 MOVE                             R6 R1
       16 MOVE                             R7 R2
       17 CALL                             R5 2 1
       18 SETTABLEKS                       R5 R4 K6 ["CanvasPosition"]
       20 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R5 R0 K0 ["_nativeRef"]
        2 GETTABLEKS                       R4 R5 K1 ["current"]
        4 GETTABLEKS                       R3 R4 K2 ["ScrollingDirection"]
        6 GETIMPORT                        R4 K5 [Enum.ScrollingDirection.Y]
        8 JUMPIFNOTEQ                      R3 R4 ; [+3]
       10 LOADN                            R2 0
       11 JUMP                             ; [+8]
       12 GETTABLEKS                       R5 R0 K0 ["_nativeRef"]
       14 GETTABLEKS                       R4 R5 K1 ["current"]
       16 GETTABLEKS                       R3 R4 K6 ["AbsoluteCanvasSize"]
       18 GETTABLEKS                       R2 R3 K7 ["X"]
       20 GETTABLEKS                       R6 R0 K0 ["_nativeRef"]
       22 GETTABLEKS                       R5 R6 K1 ["current"]
       24 GETTABLEKS                       R4 R5 K2 ["ScrollingDirection"]
       26 GETIMPORT                        R5 K5 [Enum.ScrollingDirection.Y]
       28 JUMPIFNOTEQ                      R4 R5 ; [+10]
       30 GETTABLEKS                       R6 R0 K0 ["_nativeRef"]
       32 GETTABLEKS                       R5 R6 K1 ["current"]
       34 GETTABLEKS                       R4 R5 K6 ["AbsoluteCanvasSize"]
       36 GETTABLEKS                       R3 R4 K4 ["Y"]
       38 JUMP                             ; [+1]
       39 LOADN                            R3 0
       40 JUMPIFNOT                        R1 ; [+8]
       41 GETTABLEKS                       R5 R0 K0 ["_nativeRef"]
       43 GETTABLEKS                       R4 R5 K8 ["animateScrollTo"]
       45 MOVE                             R5 R2
       46 MOVE                             R6 R3
       47 CALL                             R4 2 0
       48 RETURN                           R0 0
       49 GETTABLEKS                       R5 R0 K0 ["_nativeRef"]
       51 GETTABLEKS                       R4 R5 K1 ["current"]
       53 GETIMPORT                        R5 K11 [Vector2.new]
       55 MOVE                             R6 R2
       56 MOVE                             R7 R3
       57 CALL                             R5 2 1
       58 SETTABLEKS                       R5 R4 K12 ["CanvasPosition"]
       60 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R3 K1 [warn]
        2 LOADK                            R4 K2 ["zoomToRect not implemented"]
        3 CALL                             R3 1 0
        4 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K4 [require]
       18 GETTABLEKS                       R4 R1 K6 ["React"]
       20 CALL                             R3 1 1
       21 NEWTABLE                         R4 1 0
       23 DUPTABLE                         R5 K11 [{"flashScrollIndicators", "scrollTo", "scrollToEnd", "zoomToRect"}]
       24 DUPCLOSURE                       R6 K12 [PROTO_0]
       25 SETTABLEKS                       R6 R5 K7 ["flashScrollIndicators"]
       27 DUPCLOSURE                       R6 K13 [PROTO_1]
       28 SETTABLEKS                       R6 R5 K8 ["scrollTo"]
       30 DUPCLOSURE                       R6 K14 [PROTO_2]
       31 SETTABLEKS                       R6 R5 K9 ["scrollToEnd"]
       33 DUPCLOSURE                       R6 K15 [PROTO_3]
       34 SETTABLEKS                       R6 R5 K10 ["zoomToRect"]
       36 SETTABLEKS                       R5 R4 K16 ["default"]
       38 RETURN                           R4 1
