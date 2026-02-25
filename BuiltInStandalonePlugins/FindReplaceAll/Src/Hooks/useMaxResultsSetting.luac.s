PROTO_0:
        0 GETIMPORT                        R2 K1 [settings]
        2 CALL                             R2 0 1
        3 GETTABLEKS                       R1 R2 K2 ["Studio"]
        5 GETTABLEKS                       R0 R1 K3 ["MaxFindReplaceAllResults"]
        7 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_0]
        3 CALL                             R0 1 2
        4 JUMPIF                           R0 ; [+4]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K3 ["MAX_RESULTS"]
        8 RETURN                           R2 1
        9 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 -1
        2 FASTCALL                         ASSERT ; [+2]
        3 GETIMPORT                        R0 K1 [assert]
        5 CALL                             R0 -1 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R0 R1 K2 ["useCallback"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 CAPTURE                          UPVAL U2
       11 NEWTABLE                         R2 0 0
       13 CALL                             R0 2 1
       14 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R4 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K11 ["Bin"]
       27 GETTABLEKS                       R5 R6 K12 ["Common"]
       29 GETTABLEKS                       R4 R5 K13 ["defineLuaFlags"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K14 ["getFFlagEnableFindReplaceAllMaxResultsSetting"]
       34 DUPCLOSURE                       R5 K15 [PROTO_2]
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R1
       38 RETURN                           R5 1
