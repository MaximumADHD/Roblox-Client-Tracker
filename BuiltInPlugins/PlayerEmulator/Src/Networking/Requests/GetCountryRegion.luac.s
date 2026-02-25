PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseCode"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["StatusCodes"]
        5 GETTABLEKS                       R2 R3 K2 ["OK"]
        7 JUMPIFNOTEQ                      R1 R2 ; [+20]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R5 R0 K3 ["responseBody"]
       13 GETTABLEKS                       R4 R5 K4 ["countryRegionList"]
       15 CALL                             R3 1 -1
       16 NAMECALL                         R1 R1 K5 ["dispatch"]
       18 CALL                             R1 -1 0
       19 GETUPVAL                         R1 1
       20 GETUPVAL                         R3 3
       21 GETUPVAL                         R4 4
       22 GETUPVAL                         R5 5
       23 CALL                             R3 2 -1
       24 NAMECALL                         R1 R1 K5 ["dispatch"]
       26 CALL                             R1 -1 0
       27 RETURN                           R0 0
       28 GETIMPORT                        R1 K7 [warn]
       30 LOADK                            R3 K8 ["Player Emulator can't get country region list: HTTP error "]
       31 GETTABLEKS                       R5 R0 K0 ["responseCode"]
       33 FASTCALL1                        TOSTRING R5 ; [+2]
       34 GETIMPORT                        R4 K10 [tostring]
       36 CALL                             R4 1 1
       37 CONCAT                           R2 R3 R4
       38 CALL                             R1 1 0
       39 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Player Emulator can't get country region list: "]
        3 MOVE                             R4 R0
        4 CONCAT                           R2 R3 R4
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["get"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 0
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R2 K1 ["handleRetry"]
        9 CALL                             R2 2 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K2 ["parseJson"]
       13 MOVE                             R4 R2
       14 CALL                             R3 1 1
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          UPVAL U5
       22 DUPCLOSURE                       R6 K3 [PROTO_1]
       23 NAMECALL                         R3 R3 K4 ["andThen"]
       25 CALL                             R3 3 0
       26 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          VAL R1
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Src"]
       15 GETTABLEKS                       R3 R4 K6 ["Networking"]
       17 GETTABLEKS                       R2 R3 K7 ["UrlConstructor"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R4 R0 K8 ["Packages"]
       24 GETTABLEKS                       R3 R4 K9 ["Http"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R7 R0 K5 ["Src"]
       31 GETTABLEKS                       R6 R7 K10 ["Util"]
       33 GETTABLEKS                       R5 R6 K11 ["PlayerEmulatorUtilities"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R3 R4 K12 ["getStudioLocaleId"]
       38 GETIMPORT                        R4 K4 [require]
       40 GETTABLEKS                       R7 R0 K5 ["Src"]
       42 GETTABLEKS                       R6 R7 K13 ["Actions"]
       44 GETTABLEKS                       R5 R6 K14 ["LoadCountryRegion"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K4 [require]
       49 GETTABLEKS                       R8 R0 K5 ["Src"]
       51 GETTABLEKS                       R7 R8 K15 ["Thunks"]
       53 GETTABLEKS                       R6 R7 K16 ["InitCountryRegionSetting"]
       55 CALL                             R5 1 1
       56 MOVE                             R6 R3
       57 CALL                             R6 0 1
       58 LOADK                            R8 K17 ["v1/country-regions?locale="]
       59 MOVE                             R9 R6
       60 CONCAT                           R7 R8 R9
       61 GETTABLEKS                       R8 R1 K18 ["BuildUrl"]
       63 LOADK                            R9 K19 ["locale"]
       64 MOVE                             R10 R7
       65 CALL                             R8 2 1
       66 DUPCLOSURE                       R9 K20 [PROTO_3]
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R5
       71 RETURN                           R9 1
