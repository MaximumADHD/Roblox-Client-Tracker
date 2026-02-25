PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 LOADK                            R4 K0 ["dataSharingDefault"]
        3 GETUPVAL                         R6 2
        4 GETTABLEKS                       R5 R6 K1 ["FINISHED"]
        6 CALL                             R3 2 -1
        7 NAMECALL                         R1 R1 K2 ["dispatch"]
        9 CALL                             R1 -1 0
       10 GETUPVAL                         R1 0
       11 GETUPVAL                         R3 1
       12 LOADK                            R4 K3 ["dataSharingEnabled"]
       13 MOVE                             R5 R0
       14 CALL                             R3 2 -1
       15 NAMECALL                         R1 R1 K2 ["dispatch"]
       17 CALL                             R1 -1 0
       18 RETURN                           R0 0

PROTO_1:
        0 JUMPIF                           R1 ; [+5]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["reject"]
        4 CALL                             R2 0 -1
        5 RETURN                           R2 -1
        6 GETIMPORT                        R3 K2 [game]
        8 GETTABLEKS                       R2 R3 K3 ["GameId"]
       10 JUMPIFNOTEQKN                    R2 K4 [0] ; [+23]
       12 GETTABLEN                        R3 R0 1
       13 GETTABLEKS                       R2 R3 K5 ["isOptOut"]
       15 GETUPVAL                         R3 1
       16 GETUPVAL                         R5 2
       17 LOADK                            R6 K6 ["dataSharingDefault"]
       18 GETUPVAL                         R8 3
       19 GETTABLEKS                       R7 R8 K7 ["FINISHED"]
       21 CALL                             R5 2 -1
       22 NAMECALL                         R3 R3 K8 ["dispatch"]
       24 CALL                             R3 -1 0
       25 GETUPVAL                         R3 1
       26 GETUPVAL                         R5 2
       27 LOADK                            R6 K9 ["dataSharingEnabled"]
       28 NOT                              R7 R2
       29 CALL                             R5 2 -1
       30 NAMECALL                         R3 R3 K8 ["dispatch"]
       32 CALL                             R3 -1 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R2 4
       35 GETIMPORT                        R4 K2 [game]
       37 GETTABLEKS                       R3 R4 K3 ["GameId"]
       39 CALL                             R2 1 1
       40 NEWCLOSURE                       R4 P0
       41 CAPTURE                          UPVAL U1
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          UPVAL U3
       44 NAMECALL                         R2 R2 K10 ["andThen"]
       46 CALL                             R2 2 -1
       47 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 LOADK                            R4 K0 ["dataSharingDefault"]
        3 GETUPVAL                         R6 2
        4 GETTABLEKS                       R5 R6 K1 ["ERROR"]
        6 CALL                             R3 2 -1
        7 NAMECALL                         R1 R1 K2 ["dispatch"]
        9 CALL                             R1 -1 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 LOADK                            R4 K0 ["dataSharingDefault"]
        2 GETUPVAL                         R6 1
        3 GETTABLEKS                       R5 R6 K1 ["LOADING"]
        5 CALL                             R3 2 -1
        6 NAMECALL                         R1 R0 K2 ["dispatch"]
        8 CALL                             R1 -1 0
        9 GETUPVAL                         R3 0
       10 LOADK                            R4 K3 ["dataSharingEnabled"]
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R5 R6 K4 ["None"]
       14 CALL                             R3 2 -1
       15 NAMECALL                         R1 R0 K2 ["dispatch"]
       17 CALL                             R1 -1 0
       18 GETUPVAL                         R3 3
       19 DUPTABLE                         R4 K5 [{"dataSharingDefault"}]
       20 LOADK                            R5 K6 ["Loading"]
       21 SETTABLEKS                       R5 R4 K0 ["dataSharingDefault"]
       23 CALL                             R3 1 -1
       24 NAMECALL                         R1 R0 K2 ["dispatch"]
       26 CALL                             R1 -1 0
       27 GETUPVAL                         R1 4
       28 CALL                             R1 0 1
       29 NEWCLOSURE                       R3 P0
       30 CAPTURE                          UPVAL U5
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          UPVAL U6
       35 NAMECALL                         R1 R1 K7 ["andThen"]
       37 CALL                             R1 2 1
       38 NEWCLOSURE                       R3 P1
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U0
       41 CAPTURE                          UPVAL U1
       42 NAMECALL                         R1 R1 K8 ["catch"]
       44 CALL                             R1 2 0
       45 RETURN                           R0 0

PROTO_4:
        0 DUPCLOSURE                       R0 K0 [PROTO_3]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Actions"]
       15 GETTABLEKS                       R2 R3 K7 ["AddChange"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R5 R0 K5 ["Src"]
       22 GETTABLEKS                       R4 R5 K6 ["Actions"]
       24 GETTABLEKS                       R3 R4 K8 ["AddErrors"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R7 R0 K5 ["Src"]
       31 GETTABLEKS                       R6 R7 K9 ["Network"]
       33 GETTABLEKS                       R5 R6 K10 ["Requests"]
       35 GETTABLEKS                       R4 R5 K11 ["ApiFetchUniverseOptOut"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K4 [require]
       40 GETTABLEKS                       R8 R0 K5 ["Src"]
       42 GETTABLEKS                       R7 R8 K9 ["Network"]
       44 GETTABLEKS                       R6 R7 K10 ["Requests"]
       46 GETTABLEKS                       R5 R6 K12 ["ApiFetchDataSharingEnabledForUniverse"]
       48 CALL                             R4 1 1
       49 GETIMPORT                        R5 K4 [require]
       51 GETTABLEKS                       R8 R0 K5 ["Src"]
       53 GETTABLEKS                       R7 R8 K13 ["Types"]
       55 GETTABLEKS                       R6 R7 K14 ["DataSharingFetchState"]
       57 CALL                             R5 1 1
       58 GETIMPORT                        R6 K4 [require]
       60 GETTABLEKS                       R8 R0 K15 ["Packages"]
       62 GETTABLEKS                       R7 R8 K16 ["Cryo"]
       64 CALL                             R6 1 1
       65 GETIMPORT                        R9 K4 [require]
       67 GETTABLEKS                       R11 R0 K15 ["Packages"]
       69 GETTABLEKS                       R10 R11 K17 ["Framework"]
       71 CALL                             R9 1 1
       72 GETTABLEKS                       R8 R9 K18 ["Util"]
       74 GETTABLEKS                       R7 R8 K19 ["Promise"]
       76 DUPCLOSURE                       R8 K20 [PROTO_4]
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R4
       84 RETURN                           R8 1
