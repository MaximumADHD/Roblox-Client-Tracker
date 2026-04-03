PROTO_0:
        0 GETTABLE                         R4 R0 R1
        1 GETTABLE                         R3 R2 R4
        2 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R4 R0 K0 ["Creator"]
        2 GETTABLEKS                       R3 R4 K1 ["Name"]
        4 GETTABLE                         R2 R1 R3
        5 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["Archived"]
        2 JUMPIFEQ                         R3 R1 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K1 ["IsPackage"]
        2 ORK                              R1 R2 K0 [False]
        3 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["DisplayName"]
        3 NEWTABLE                         R4 0 1
        5 MOVE                             R5 R1
        6 SETLIST                          R4 R5 1 [1]
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R4 R0 R3
        2 GETTABLE                         R2 R1 R4
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["AssetInfoField"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R6 R0 K6 ["Src"]
       20 GETTABLEKS                       R5 R6 K9 ["Util"]
       22 GETTABLEKS                       R4 R5 K10 ["hasMatchingTerm"]
       24 CALL                             R3 1 1
       25 NEWTABLE                         R4 0 0
       27 DUPCLOSURE                       R5 K11 [PROTO_0]
       28 GETTABLEKS                       R6 R2 K12 ["Creator"]
       30 DUPCLOSURE                       R7 K13 [PROTO_1]
       31 SETTABLE                         R7 R4 R6
       32 GETTABLEKS                       R6 R2 K14 ["Archived"]
       34 DUPCLOSURE                       R7 K15 [PROTO_2]
       35 SETTABLE                         R7 R4 R6
       36 GETTABLEKS                       R6 R2 K16 ["IsPackage"]
       38 DUPCLOSURE                       R7 K17 [PROTO_3]
       39 SETTABLE                         R7 R4 R6
       40 GETTABLEKS                       R6 R2 K18 ["DisplayName"]
       42 DUPCLOSURE                       R7 K19 [PROTO_4]
       43 CAPTURE                          VAL R3
       44 SETTABLE                         R7 R4 R6
       45 GETTABLEKS                       R6 R1 K20 ["asList"]
       47 MOVE                             R7 R2
       48 CALL                             R6 1 3
       49 FORGPREP                         R6
       50 GETTABLE                         R11 R4 R10
       51 JUMPIF                           R11 ; [+3]
       52 NEWCLOSURE                       R11 P5
       53 CAPTURE                          VAL R10
       54 SETTABLE                         R11 R4 R10
       55 FORGLOOP                         R6 2 ; [-6]
       57 RETURN                           R4 1
