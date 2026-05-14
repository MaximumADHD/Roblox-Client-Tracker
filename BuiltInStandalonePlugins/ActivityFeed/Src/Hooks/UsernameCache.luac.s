PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Dictionary"]
        3 GETTABLEKS                       R1 R1 K1 ["join"]
        5 MOVE                             R2 R0
        6 GETUPVAL                         R3 1
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["activityHistoryClient"]
        3 GETTABLEKS                       R1 R1 K1 ["fetchUsernames"]
        5 MOVE                             R2 R0
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 NEWTABLE                         R1 0 0
        5 CALL                             R0 1 2
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["useContext"]
        9 GETUPVAL                         R3 1
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K2 ["useCallback"]
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          VAL R2
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U2
       18 NEWTABLE                         R5 0 0
       20 CALL                             R3 2 1
       21 DUPTABLE                         R4 K5 [{"cache", "fetchUsernames"}]
       22 SETTABLEKS                       R0 R4 K3 ["cache"]
       24 SETTABLEKS                       R3 R4 K4 ["fetchUsernames"]
       26 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Contexts"]
       15 GETTABLEKS                       R2 R2 K7 ["ActivityHistoryContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Util"]
       24 GETTABLEKS                       R3 R3 K9 ["SharedTypes"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K10 ["Packages"]
       31 GETTABLEKS                       R4 R4 K11 ["React"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K10 ["Packages"]
       38 GETTABLEKS                       R5 R5 K12 ["Cryo"]
       40 CALL                             R4 1 1
       41 DUPCLOSURE                       R5 K13 [PROTO_3]
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R4
       45 RETURN                           R5 1
