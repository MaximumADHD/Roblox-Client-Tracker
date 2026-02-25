PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 GETTABLEKS                       R7 R6 K2 ["id"]
        9 SETTABLE                         R6 R1 R7
       10 FORGLOOP                         R2 2 ; [-4]
       12 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [ipairs]
        4 MOVE                             R4 R1
        5 CALL                             R3 1 3
        6 FORGPREP_INEXT                   R3
        7 MOVE                             R10 R7
        8 NAMECALL                         R8 R0 K2 ["GetBundleDetailsAsync"]
       10 CALL                             R8 2 1
       11 SETTABLE                         R8 R2 R7
       12 FORGLOOP                         R3 2 [inext] ; [-6]
       14 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R3 R1 K1 ["data"]
        4 NEWTABLE                         R4 0 0
        6 GETIMPORT                        R5 K3 [pairs]
        8 MOVE                             R6 R3
        9 CALL                             R5 1 3
       10 FORGPREP_NEXT                    R5
       11 GETTABLEKS                       R10 R9 K4 ["id"]
       13 SETTABLE                         R9 R4 R10
       14 FORGLOOP                         R5 2 ; [-4]
       16 MOVE                             R2 R4
       17 GETUPVAL                         R3 0
       18 GETUPVAL                         R4 1
       19 GETUPVAL                         R5 2
       20 CALL                             R3 2 1
       21 GETUPVAL                         R6 3
       22 GETTABLEKS                       R5 R6 K5 ["Dictionary"]
       24 GETTABLEKS                       R4 R5 K6 ["join"]
       26 MOVE                             R5 R2
       27 MOVE                             R6 R3
       28 CALL                             R4 2 1
       29 GETUPVAL                         R5 4
       30 GETUPVAL                         R7 5
       31 MOVE                             R8 R4
       32 CALL                             R7 1 -1
       33 NAMECALL                         R5 R5 K7 ["dispatch"]
       35 CALL                             R5 -1 0
       36 RETURN                           R0 0

PROTO_3:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+7]
        2 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        7 GETTABLEKS                       R1 R2 K1 ["errors"]
        9 JUMPIF                           R1 ; [+5]
       10 GETIMPORT                        R2 K3 [warn]
       12 LOADK                            R3 K4 ["Could not fetch information for assets"]
       13 CALL                             R2 1 0
       14 RETURN                           R0 0
       15 GETIMPORT                        R2 K6 [ipairs]
       17 MOVE                             R3 R1
       18 CALL                             R2 1 3
       19 FORGPREP_INEXT                   R2
       20 GETIMPORT                        R7 K3 [warn]
       22 LOADK                            R9 K7 ["Could not fetch information for assets: "]
       23 GETTABLEKS                       R11 R6 K8 ["message"]
       25 FASTCALL1                        TOSTRING R11 ; [+2]
       26 GETIMPORT                        R10 K10 [tostring]
       28 CALL                             R10 1 1
       29 CONCAT                           R8 R9 R10
       30 CALL                             R7 1 0
       31 FORGLOOP                         R2 2 [inext] ; [-12]
       33 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U5
       11 DUPCLOSURE                       R2 K0 [PROTO_3]
       12 GETUPVAL                         R8 6
       13 GETTABLEKS                       R7 R8 K1 ["api"]
       15 GETTABLEKS                       R6 R7 K2 ["Develop"]
       17 GETTABLEKS                       R5 R6 K3 ["V1"]
       19 GETTABLEKS                       R4 R5 K4 ["Assets"]
       21 GETTABLEKS                       R3 R4 K5 ["assets"]
       23 GETUPVAL                         R4 7
       24 CALL                             R3 1 1
       25 NAMECALL                         R3 R3 K6 ["makeRequest"]
       27 CALL                             R3 1 1
       28 MOVE                             R6 R1
       29 MOVE                             R7 R2
       30 NAMECALL                         R4 R3 K7 ["andThen"]
       32 CALL                             R4 3 0
       33 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R3
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R2
        9 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AssetService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R4 K5 [script]
        9 GETTABLEKS                       R3 R4 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K6 ["Parent"]
       13 GETTABLEKS                       R1 R2 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R4 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R4 K10 ["Cryo"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R5 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R5 K11 ["AvatarToolsShared"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R5 R3 K12 ["Util"]
       31 GETTABLEKS                       R4 R5 K13 ["isProductionEnvironment"]
       33 GETIMPORT                        R5 K8 [require]
       35 GETTABLEKS                       R8 R1 K14 ["Src"]
       37 GETTABLEKS                       R7 R8 K15 ["Actions"]
       39 GETTABLEKS                       R6 R7 K16 ["SetPrebuiltAssetsInfo"]
       41 CALL                             R5 1 1
       42 DUPCLOSURE                       R6 K17 [PROTO_0]
       43 DUPCLOSURE                       R7 K18 [PROTO_1]
       44 DUPCLOSURE                       R8 K19 [PROTO_5]
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R7
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R5
       49 RETURN                           R8 1
