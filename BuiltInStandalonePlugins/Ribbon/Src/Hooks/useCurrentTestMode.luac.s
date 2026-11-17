PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["connectTestModesAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["getCurrentTestModeSettingValueAsync"]
       10 GETUPVAL                         R2 1
       11 CALL                             R1 1 -1
       12 CALL                             R0 -1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [task.defer]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 -1
        2 CALL                             R1 1 2
        3 GETUPVAL                         R3 1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R2
        8 NEWTABLE                         R5 0 1
       10 MOVE                             R6 R0
       11 SETLIST                          R5 R6 1 [1]
       13 CALL                             R3 2 0
       14 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useEffect"]
       16 GETTABLEKS                       R3 R1 K9 ["useState"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R5 R0 K10 ["Src"]
       22 GETTABLEKS                       R5 R5 K11 ["Util"]
       24 GETTABLEKS                       R5 R5 K12 ["TestingModesHelper"]
       26 CALL                             R4 1 1
       27 DUPCLOSURE                       R5 K13 [PROTO_2]
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R4
       31 RETURN                           R5 1
