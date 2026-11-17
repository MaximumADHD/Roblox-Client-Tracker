PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseCode"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["StatusCodes"]
        5 GETTABLEKS                       R2 R2 K2 ["OK"]
        7 JUMPIFNOTEQ                      R1 R2 ; [+12]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R4 R0 K3 ["responseBody"]
       13 GETTABLEKS                       R4 R4 K4 ["data"]
       15 CALL                             R3 1 -1
       16 NAMECALL                         R1 R1 K5 ["dispatch"]
       18 CALL                             R1 -1 0
       19 RETURN                           R0 0
       20 GETIMPORT                        R1 K7 [warn]
       22 LOADK                            R3 K8 ["Player Emulator can't get language list: HTTP error "]
       23 GETTABLEKS                       R5 R0 K0 ["responseCode"]
       25 FASTCALL1                        TOSTRING R5 ; [+2]
       26 GETIMPORT                        R4 K10 [tostring]
       28 CALL                             R4 1 1
       29 CONCAT                           R2 R3 R4
       30 CALL                             R1 1 0
       31 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Player Emulator can't get languages list: "]
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
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K2 ["parseJson"]
       13 MOVE                             R4 R2
       14 CALL                             R3 1 1
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 DUPCLOSURE                       R6 K3 [PROTO_1]
       20 NAMECALL                         R3 R3 K4 ["andThen"]
       22 CALL                             R3 3 0
       23 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Networking"]
       17 GETTABLEKS                       R2 R2 K7 ["UrlConstructor"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K8 ["Packages"]
       24 GETTABLEKS                       R3 R3 K9 ["Http"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K5 ["Src"]
       31 GETTABLEKS                       R4 R4 K10 ["Util"]
       33 GETTABLEKS                       R4 R4 K11 ["PlayerEmulatorUtilities"]
       35 CALL                             R3 1 1
       36 GETTABLEKS                       R3 R3 K12 ["getStudioLocaleId"]
       38 GETIMPORT                        R4 K4 [require]
       40 GETTABLEKS                       R5 R0 K5 ["Src"]
       42 GETTABLEKS                       R5 R5 K13 ["Actions"]
       44 GETTABLEKS                       R5 R5 K14 ["LoadLanguages"]
       46 CALL                             R4 1 1
       47 MOVE                             R5 R3
       48 CALL                             R5 0 1
       49 LOADK                            R7 K15 ["v1/locales?displayValueLocale="]
       50 MOVE                             R8 R5
       51 CONCAT                           R6 R7 R8
       52 GETTABLEKS                       R7 R1 K16 ["BuildUrl"]
       54 LOADK                            R8 K17 ["locale"]
       55 MOVE                             R9 R6
       56 CALL                             R7 2 1
       57 DUPCLOSURE                       R8 K18 [PROTO_3]
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R4
       61 RETURN                           R8 1
