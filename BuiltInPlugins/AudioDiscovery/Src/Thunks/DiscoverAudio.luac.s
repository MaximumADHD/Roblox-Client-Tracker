PROTO_0:
        0 DUPTABLE                         R1 K2 [{"Instance", "Path"}]
        1 SETTABLEKS                       R0 R1 K0 ["Instance"]
        3 NAMECALL                         R2 R0 K3 ["GetFullName"]
        5 CALL                             R2 1 1
        6 SETTABLEKS                       R2 R1 K1 ["Path"]
        8 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["Id"]
        3 GETTABLE                         R1 R2 R3
        4 JUMPIF                           R1 ; [+14]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R2 R0 K0 ["Id"]
        8 NEWTABLE                         R3 0 0
       10 SETTABLE                         R3 R1 R2
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R1 R2 K1 ["SoundAssetChecker"]
       14 GETTABLEKS                       R3 R0 K0 ["Id"]
       16 NAMECALL                         R1 R1 K2 ["resolved"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [pairs]
        4 GETUPVAL                         R4 0
        5 CALL                             R4 0 -1
        6 CALL                             R3 -1 3
        7 FORGPREP_NEXT                    R3
        8 GETTABLEKS                       R8 R1 K2 ["SoundAssetChecker"]
       10 MOVE                             R10 R6
       11 NAMECALL                         R8 R8 K3 ["addAssetId"]
       13 CALL                             R8 2 0
       14 GETUPVAL                         R8 1
       15 MOVE                             R9 R7
       16 DUPCLOSURE                       R10 K4 [PROTO_0]
       17 CALL                             R8 2 1
       18 SETTABLE                         R8 R2 R6
       19 FORGLOOP                         R3 2 ; [-12]
       21 NAMECALL                         R5 R0 K5 ["getState"]
       23 CALL                             R5 1 1
       24 GETTABLEKS                       R4 R5 K6 ["Audio"]
       26 GETTABLEKS                       R3 R4 K7 ["Rows"]
       28 GETUPVAL                         R4 2
       29 MOVE                             R5 R3
       30 NEWCLOSURE                       R6 P1
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R1
       33 CALL                             R4 2 0
       34 GETTABLEKS                       R4 R1 K2 ["SoundAssetChecker"]
       36 NAMECALL                         R4 R4 K8 ["flush"]
       38 CALL                             R4 1 0
       39 GETUPVAL                         R6 3
       40 MOVE                             R7 R2
       41 CALL                             R6 1 -1
       42 NAMECALL                         R4 R0 K9 ["dispatch"]
       44 CALL                             R4 -1 0
       45 RETURN                           R0 0

PROTO_3:
        0 DUPCLOSURE                       R0 K0 [PROTO_2]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Actions"]
       15 GETTABLEKS                       R2 R3 K7 ["UpdateLocations"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K8 ["Packages"]
       22 GETTABLEKS                       R3 R4 K9 ["Framework"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R6 R0 K5 ["Src"]
       29 GETTABLEKS                       R5 R6 K10 ["Util"]
       31 GETTABLEKS                       R4 R5 K11 ["findAllAssetIds"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R2 K12 ["Dash"]
       36 GETTABLEKS                       R5 R4 K13 ["map"]
       38 GETTABLEKS                       R6 R4 K14 ["forEach"]
       40 DUPCLOSURE                       R7 K15 [PROTO_3]
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R1
       45 RETURN                           R7 1
