PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseCode"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["StatusCodes"]
        5 GETTABLEKS                       R2 R3 K2 ["OK"]
        7 JUMPIFNOTEQ                      R1 R2 ; [+13]
        9 GETTABLEKS                       R1 R0 K3 ["responseBody"]
       11 GETUPVAL                         R2 1
       12 GETUPVAL                         R4 2
       13 GETUPVAL                         R5 3
       14 MOVE                             R6 R1
       15 GETUPVAL                         R7 4
       16 CALL                             R4 3 -1
       17 NAMECALL                         R2 R2 K4 ["dispatch"]
       19 CALL                             R2 -1 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R1 1
       22 GETUPVAL                         R3 2
       23 GETUPVAL                         R4 3
       24 NEWTABLE                         R5 0 0
       26 GETUPVAL                         R6 4
       27 CALL                             R3 3 -1
       28 NAMECALL                         R1 R1 K4 ["dispatch"]
       30 CALL                             R1 -1 0
       31 GETIMPORT                        R1 K6 [warn]
       33 LOADK                            R3 K7 ["Player Emulator can't get player policy info: HTTP error "]
       34 GETTABLEKS                       R5 R0 K0 ["responseCode"]
       36 FASTCALL1                        TOSTRING R5 ; [+2]
       37 GETIMPORT                        R4 K9 [tostring]
       39 CALL                             R4 1 1
       40 CONCAT                           R2 R3 R4
       41 CALL                             R1 1 0
       42 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 NEWTABLE                         R5 0 0
        5 GETUPVAL                         R6 3
        6 CALL                             R3 3 -1
        7 NAMECALL                         R1 R1 K0 ["dispatch"]
        9 CALL                             R1 -1 0
       10 GETIMPORT                        R1 K2 [warn]
       12 LOADK                            R3 K3 ["Player Emulator can't get player policy info: "]
       13 MOVE                             R4 R0
       14 CONCAT                           R2 R3 R4
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R6 0
        1 NAMECALL                         R4 R2 K0 ["get"]
        3 CALL                             R4 2 1
        4 MOVE                             R7 R4
        5 NAMECALL                         R5 R2 K1 ["handleRetry"]
        7 CALL                             R5 2 1
        8 GETTABLEKS                       R6 R2 K2 ["parseJson"]
       10 MOVE                             R7 R5
       11 CALL                             R6 1 1
       12 NEWCLOSURE                       R8 P0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R3
       18 NEWCLOSURE                       R9 P1
       19 CAPTURE                          VAL R1
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R3
       23 NAMECALL                         R6 R6 K3 ["andThen"]
       25 CALL                             R6 3 0
       26 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["responseCode"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["StatusCodes"]
        5 GETTABLEKS                       R2 R3 K2 ["OK"]
        7 JUMPIFNOTEQ                      R1 R2 ; [+10]
        9 GETTABLEKS                       R1 R0 K3 ["responseBody"]
       11 GETUPVAL                         R2 1
       12 MOVE                             R3 R1
       13 GETUPVAL                         R4 2
       14 GETUPVAL                         R5 3
       15 GETUPVAL                         R6 4
       16 CALL                             R2 4 0
       17 RETURN                           R0 0
       18 GETIMPORT                        R1 K5 [warn]
       20 LOADK                            R2 K6 ["Player Emulator failed to load policy section data"]
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Player Emulator can't get policies info: "]
        3 MOVE                             R4 R0
        4 CONCAT                           R2 R3 R4
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_5:
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
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          UPVAL U4
       21 DUPCLOSURE                       R6 K3 [PROTO_4]
       22 NAMECALL                         R3 R3 K4 ["andThen"]
       24 CALL                             R3 3 0
       25 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R1
        6 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Http"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R5 R0 K7 ["Src"]
       22 GETTABLEKS                       R4 R5 K8 ["Networking"]
       24 GETTABLEKS                       R3 R4 K9 ["UrlConstructor"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R6 R0 K7 ["Src"]
       31 GETTABLEKS                       R5 R6 K10 ["Thunks"]
       33 GETTABLEKS                       R4 R5 K11 ["InitPolicySettingStatus"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K13 [game]
       38 LOADK                            R6 K14 ["PlayerEmulatorPolicyServiceEndpointMigrationEnabled2"]
       39 LOADB                            R7 0
       40 NAMECALL                         R4 R4 K15 ["DefineFastFlag"]
       42 CALL                             R4 3 0
       43 LOADNIL                          R4
       44 LOADNIL                          R5
       45 GETIMPORT                        R6 K13 [game]
       47 LOADK                            R8 K14 ["PlayerEmulatorPolicyServiceEndpointMigrationEnabled2"]
       48 NAMECALL                         R6 R6 K16 ["GetFastFlag"]
       50 CALL                             R6 2 1
       51 JUMPIFNOT                        R6 ; [+13]
       52 GETTABLEKS                       R6 R2 K17 ["BuildUrl"]
       54 LOADK                            R7 K18 ["apis"]
       55 LOADK                            R8 K19 ["player-policy-service/v1/player-policy-all-values"]
       56 CALL                             R6 2 1
       57 MOVE                             R4 R6
       58 GETTABLEKS                       R6 R2 K17 ["BuildUrl"]
       60 LOADK                            R7 K18 ["apis"]
       61 LOADK                            R8 K20 ["player-policy-service/v1/player-policy-client"]
       62 CALL                             R6 2 1
       63 MOVE                             R5 R6
       64 JUMP                             ; [+12]
       65 GETTABLEKS                       R6 R2 K17 ["BuildUrl"]
       67 LOADK                            R7 K21 ["gameinternationalization"]
       68 LOADK                            R8 K22 ["v1/player-policies/all-values"]
       69 CALL                             R6 2 1
       70 MOVE                             R4 R6
       71 GETTABLEKS                       R6 R2 K17 ["BuildUrl"]
       73 LOADK                            R7 K21 ["gameinternationalization"]
       74 LOADK                            R8 K23 ["v1/player-policies-client"]
       75 CALL                             R6 2 1
       76 MOVE                             R5 R6
       77 NEWCLOSURE                       R6 P0
       78 CAPTURE                          REF R5
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R3
       81 NEWCLOSURE                       R7 P1
       82 CAPTURE                          REF R4
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R6
       85 CLOSEUPVALS                      R4
       86 RETURN                           R7 1
