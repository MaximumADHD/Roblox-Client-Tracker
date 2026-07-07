PROTO_0:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["FFlagAnimGraphUI_DynamicZIndex not enabled"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 LOADN                            R1 0
        8 GETTABLEKS                       R2 R0 K3 ["getMap"]
       10 CALL                             R2 0 3
       11 FORGPREP                         R2
       12 GETTABLEKS                       R9 R6 K4 ["zIndex"]
       14 FASTCALL2                        MATH_MAX R1 R9 ; [+4]
       16 MOVE                             R8 R1
       17 GETIMPORT                        R7 K7 [math.max]
       19 CALL                             R7 2 1
       20 MOVE                             R1 R7
       21 FORGLOOP                         R2 2 ; [-10]
       23 ADDK                             R2 R1 K8 [1]
       24 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R2 K7 ["FFlagAnimGraphUI_DynamicZIndex"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["NodeViewTypes"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Hooks"]
       23 GETTABLEKS                       R4 R4 K10 ["useSignalDispatcher"]
       25 CALL                             R3 1 1
       26 DUPCLOSURE                       R4 K11 [PROTO_0]
       27 CAPTURE                          VAL R1
       28 RETURN                           R4 1
