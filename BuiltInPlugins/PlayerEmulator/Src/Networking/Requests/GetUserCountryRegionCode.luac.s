PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseCode"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["StatusCodes"]
        5 GETTABLEKS                       R2 R3 K2 ["OK"]
        7 JUMPIFNOTEQ                      R1 R2 ; [+9]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R3 R0 K3 ["responseBody"]
       12 GETTABLEKS                       R2 R3 K4 ["countryCode"]
       14 SETTABLEKS                       R2 R1 K5 ["EmulatedCountryCode"]
       16 RETURN                           R0 0
       17 GETIMPORT                        R1 K7 [warn]
       19 LOADK                            R3 K8 ["Player Emulator can't get country region list: HTTP error "]
       20 GETTABLEKS                       R5 R0 K0 ["responseCode"]
       22 FASTCALL1                        TOSTRING R5 ; [+2]
       23 GETIMPORT                        R4 K10 [tostring]
       25 CALL                             R4 1 1
       26 CONCAT                           R2 R3 R4
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

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
       15 DUPCLOSURE                       R5 K3 [PROTO_0]
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U3
       18 DUPCLOSURE                       R6 K4 [PROTO_1]
       19 NAMECALL                         R3 R3 K5 ["andThen"]
       21 CALL                             R3 3 0
       22 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 RETURN                           R1 1

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
       27 GETIMPORT                        R3 K11 [game]
       29 LOADK                            R5 K12 ["PlayerEmulatorService"]
       30 NAMECALL                         R3 R3 K13 ["GetService"]
       32 CALL                             R3 2 1
       33 GETTABLEKS                       R4 R1 K14 ["BuildUrl"]
       35 LOADK                            R5 K15 ["users"]
       36 LOADK                            R6 K16 ["v1/users/authenticated/country-code"]
       37 CALL                             R4 2 1
       38 DUPCLOSURE                       R5 K17 [PROTO_3]
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R3
       42 RETURN                           R5 1
