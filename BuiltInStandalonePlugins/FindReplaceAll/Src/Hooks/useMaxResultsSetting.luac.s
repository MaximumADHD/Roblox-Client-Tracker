PROTO_0:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 GETTABLEKS                       R0 R0 K3 ["MaxFindReplaceAllResults"]
        7 RETURN                           R0 1

PROTO_1:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 FASTPCALL                        pcall 1 ; [+2]
        2 GETIMPORT                        R0 K2 [pcall]
        4 CALL                             R0 1 2
        5 JUMPIF                           R0 ; [+4]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K3 ["MAX_RESULTS"]
        9 RETURN                           R2 1
       10 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useCallback"]
        3 DUPCLOSURE                       R1 K1 [PROTO_1]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R2 0 0
        7 CALL                             R0 2 1
        8 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_2]
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R1
       26 RETURN                           R3 1
