PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 CALL                             R3 1 1
        3 MOVE                             R4 R3
        4 MOVE                             R5 R1
        5 LOADN                            R6 100
        6 RETURN                           R4 3

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQ                         R0 R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 2 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 FASTCALL2K                       ASSERT R4 K0 ; [+4]
       11 LOADK                            R5 K0 ["Invalid index"]
       12 GETIMPORT                        R3 K2 [assert]
       14 CALL                             R3 2 0
       15 DUPTABLE                         R3 K6 [{"MetalnessMap", "NormalMap", "RoughnessMap"}]
       16 GETUPVAL                         R5 2
       17 GETTABLE                         R4 R5 R2
       18 SETTABLEKS                       R4 R3 K3 ["MetalnessMap"]
       20 GETUPVAL                         R5 3
       21 GETTABLE                         R4 R5 R2
       22 SETTABLEKS                       R4 R3 K4 ["NormalMap"]
       24 GETUPVAL                         R5 4
       25 GETTABLE                         R4 R5 R2
       26 SETTABLEKS                       R4 R3 K5 ["RoughnessMap"]
       28 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQ                         R0 R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 2 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 FASTCALL2K                       ASSERT R4 K0 ; [+4]
       11 LOADK                            R5 K0 ["Invalid index"]
       12 GETIMPORT                        R3 K2 [assert]
       14 CALL                             R3 2 0
       15 DUPTABLE                         R3 K7 [{"ColorMap", "MetalnessMap", "NormalMap", "RoughnessMap"}]
       16 GETUPVAL                         R5 2
       17 GETTABLE                         R4 R5 R2
       18 SETTABLEKS                       R4 R3 K3 ["ColorMap"]
       20 GETUPVAL                         R5 3
       21 GETTABLE                         R4 R5 R2
       22 SETTABLEKS                       R4 R3 K4 ["MetalnessMap"]
       24 GETUPVAL                         R5 4
       25 GETTABLE                         R4 R5 R2
       26 SETTABLEKS                       R4 R3 K5 ["NormalMap"]
       28 GETUPVAL                         R5 5
       29 GETTABLE                         R4 R5 R2
       30 SETTABLEKS                       R4 R3 K6 ["RoughnessMap"]
       32 RETURN                           R3 1

PROTO_6:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TestHelpers"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Dash"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K8 ["copy"]
       18 GETTABLEKS                       R3 R1 K9 ["findIndex"]
       20 NEWTABLE                         R4 0 4
       22 LOADK                            R5 K10 ["rbxassetid://12789941723"]
       23 LOADK                            R6 K11 ["rbxassetid://12789941660"]
       24 LOADK                            R7 K12 ["rbxassetid://12789941574"]
       25 LOADK                            R8 K13 ["rbxassetid://12789941461"]
       26 SETLIST                          R4 R5 4 [1]
       28 NEWTABLE                         R5 0 4
       30 LOADK                            R6 K14 ["rbxassetid://12786287584"]
       31 LOADK                            R7 K15 ["rbxassetid://12786288920"]
       32 LOADK                            R8 K16 ["rbxassetid://12786290575"]
       33 LOADK                            R9 K17 ["rbxassetid://12786292067"]
       34 SETLIST                          R5 R6 4 [1]
       36 NEWTABLE                         R6 0 0
       38 NEWTABLE                         R7 0 4
       40 LOADK                            R8 K18 ["rbxassetid://12786287591"]
       41 LOADK                            R9 K19 ["rbxassetid://12786288913"]
       42 LOADK                            R10 K20 ["rbxassetid://12786290514"]
       43 LOADK                            R11 K21 ["rbxassetid://12786292068"]
       44 SETLIST                          R7 R8 4 [1]
       46 NEWTABLE                         R8 0 4
       48 LOADK                            R9 K22 ["rbxassetid://12786287570"]
       49 LOADK                            R10 K23 ["rbxassetid://12786288901"]
       50 LOADK                            R11 K24 ["rbxassetid://12786290539"]
       51 LOADK                            R12 K25 ["rbxassetid://12786292059"]
       52 SETLIST                          R8 R9 4 [1]
       54 NEWTABLE                         R9 8 0
       56 SETTABLEKS                       R9 R9 K26 ["__index"]
       58 DUPCLOSURE                       R10 K27 [PROTO_0]
       59 CAPTURE                          VAL R9
       60 SETTABLEKS                       R10 R9 K28 ["new"]
       62 DUPCLOSURE                       R10 K29 [PROTO_1]
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R4
       65 SETTABLEKS                       R10 R9 K30 ["GenerateImagesAsync"]
       67 DUPCLOSURE                       R10 K31 [PROTO_3]
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R8
       73 SETTABLEKS                       R10 R9 K32 ["GenerateMaterialMapsAsync"]
       75 DUPCLOSURE                       R10 K33 [PROTO_5]
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R8
       82 SETTABLEKS                       R10 R9 K34 ["UploadMaterialAsync"]
       84 DUPCLOSURE                       R10 K35 [PROTO_6]
       85 SETTABLEKS                       R10 R9 K36 ["Destroy"]
       87 RETURN                           R9 1
