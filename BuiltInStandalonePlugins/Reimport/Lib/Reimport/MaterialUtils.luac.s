PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+27]
        3 NEWTABLE                         R0 0 0
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R1 R4 K0 ["knownSuffixes"]
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 MOVE                             R6 R5
       12 LOADNIL                          R7
       13 LOADNIL                          R8
       14 FORGPREP                         R6
       15 LENGTH                           R11 R10
       16 GETTABLE                         R12 R0 R11
       17 JUMPIFNOTEQKNIL                  R12 ; [+4]
       19 NEWTABLE                         R12 0 0
       21 SETTABLE                         R12 R0 R11
       22 GETTABLE                         R12 R0 R11
       23 SETTABLE                         R4 R12 R10
       24 FORGLOOP                         R6 2 ; [-10]
       26 FORGLOOP                         R1 2 ; [-16]
       28 SETUPVAL                         R0 0
       29 GETUPVAL                         R2 0
       30 JUMPIFNOTEQKNIL                  R2 ; [+2]
       32 LOADB                            R1 0 +1
       33 LOADB                            R1 1
       34 FASTCALL1                        ASSERT R1 ; [+2]
       35 GETIMPORT                        R0 K2 [assert]
       37 CALL                             R0 1 0
       38 GETUPVAL                         R0 0
       39 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["stem"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 CALL                             R2 0 3
        7 FORGPREP                         R2
        8 GETIMPORT                        R7 K3 [string.lower]
       10 MINUS                            R10 R5
       11 FASTCALL2                        STRING_SUB R1 R10 ; [+4]
       13 MOVE                             R9 R1
       14 GETIMPORT                        R8 K5 [string.sub]
       16 CALL                             R8 2 1
       17 CALL                             R7 1 1
       18 GETTABLE                         R8 R6 R7
       19 JUMPIFNOT                        R8 ; [+10]
       20 LOADN                            R11 1
       21 MINUS                            R13 R5
       22 SUBK                             R12 R13 K6 [1]
       23 FASTCALL3                        STRING_SUB R1 R11 R12
       25 MOVE                             R10 R1
       26 GETIMPORT                        R9 K5 [string.sub]
       28 CALL                             R9 3 1
       29 RETURN                           R8 2
       30 FORGLOOP                         R2 2 ; [-23]
       32 LOADNIL                          R2
       33 LOADNIL                          R3
       34 RETURN                           R2 2

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["matchSuffix"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 2
        5 JUMPIFEQKNIL                     R2 ; [+3]
        7 JUMPIFNOTEQKNIL                  R3 ; [+3]
        9 LOADNIL                          R4
       10 RETURN                           R4 1
       11 NEWTABLE                         R4 0 0
       13 MOVE                             R5 R1
       14 LOADNIL                          R6
       15 LOADNIL                          R7
       16 FORGPREP                         R5
       17 JUMPIFEQ                         R9 R0 ; [+18]
       19 LOADN                            R12 1
       20 LENGTH                           R13 R3
       21 FASTCALL3                        STRING_SUB R9 R12 R13
       23 MOVE                             R11 R9
       24 GETIMPORT                        R10 K3 [string.sub]
       26 CALL                             R10 3 1
       27 JUMPIFNOTEQ                      R10 R3 ; [+8]
       29 GETUPVAL                         R11 0
       30 GETTABLEKS                       R10 R11 K0 ["matchSuffix"]
       32 MOVE                             R11 R9
       33 CALL                             R10 1 2
       34 JUMPIFNOT                        R10 ; [+1]
       35 SETTABLE                         R9 R4 R10
       36 FORGLOOP                         R5 2 ; [-20]
       38 SETTABLE                         R0 R4 R2
       39 RETURN                           R4 1

PROTO_3:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 JUMPIFNOTEQKS                    R5 K0 ["Color"] ; [+10]
        6 GETIMPORT                        R7 K3 [Content.fromUri]
        8 LOADK                            R9 K4 ["rbxassetid://"]
        9 MOVE                             R10 R6
       10 CONCAT                           R8 R9 R10
       11 CALL                             R7 1 1
       12 SETTABLEKS                       R7 R0 K5 ["ColorMapContent"]
       14 JUMP                             ; [+32]
       15 JUMPIFNOTEQKS                    R5 K6 ["Metal"] ; [+10]
       17 GETIMPORT                        R7 K3 [Content.fromUri]
       19 LOADK                            R9 K4 ["rbxassetid://"]
       20 MOVE                             R10 R6
       21 CONCAT                           R8 R9 R10
       22 CALL                             R7 1 1
       23 SETTABLEKS                       R7 R0 K7 ["MetalnessMapContent"]
       25 JUMP                             ; [+21]
       26 JUMPIFNOTEQKS                    R5 K8 ["Rough"] ; [+10]
       28 GETIMPORT                        R7 K3 [Content.fromUri]
       30 LOADK                            R9 K4 ["rbxassetid://"]
       31 MOVE                             R10 R6
       32 CONCAT                           R8 R9 R10
       33 CALL                             R7 1 1
       34 SETTABLEKS                       R7 R0 K9 ["RoughnessMapContent"]
       36 JUMP                             ; [+10]
       37 JUMPIFNOTEQKS                    R5 K10 ["Normal"] ; [+9]
       39 GETIMPORT                        R7 K3 [Content.fromUri]
       41 LOADK                            R9 K4 ["rbxassetid://"]
       42 MOVE                             R10 R6
       43 CONCAT                           R8 R9 R10
       44 CALL                             R7 1 1
       45 SETTABLEKS                       R7 R0 K11 ["NormalMapContent"]
       47 FORGLOOP                         R2 2 ; [-44]
       49 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Lib"]
       11 GETTABLEKS                       R3 R4 K7 ["Reimport"]
       13 GETTABLEKS                       R2 R3 K8 ["Path"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 4 0
       18 DUPTABLE                         R3 K13 [{"Color", "Metal", "Rough", "Normal"}]
       19 NEWTABLE                         R4 0 7
       21 LOADK                            R5 K14 ["diffuse"]
       22 LOADK                            R6 K15 ["diff"]
       23 LOADK                            R7 K16 ["albedo"]
       24 LOADK                            R8 K17 ["base"]
       25 LOADK                            R9 K18 ["col"]
       26 LOADK                            R10 K19 ["color"]
       27 LOADK                            R11 K20 ["alb"]
       28 SETLIST                          R4 R5 7 [1]
       30 SETTABLEKS                       R4 R3 K9 ["Color"]
       32 NEWTABLE                         R4 0 5
       34 LOADK                            R5 K21 ["metallic"]
       35 LOADK                            R6 K22 ["metalness"]
       36 LOADK                            R7 K23 ["metal"]
       37 LOADK                            R8 K24 ["mtl"]
       38 LOADK                            R9 K25 ["met"]
       39 SETLIST                          R4 R5 5 [1]
       41 SETTABLEKS                       R4 R3 K10 ["Metal"]
       43 NEWTABLE                         R4 0 3
       45 LOADK                            R5 K26 ["roughness"]
       46 LOADK                            R6 K27 ["rough"]
       47 LOADK                            R7 K28 ["rgh"]
       48 SETLIST                          R4 R5 3 [1]
       50 SETTABLEKS                       R4 R3 K11 ["Rough"]
       52 NEWTABLE                         R4 0 5
       54 LOADK                            R5 K29 ["normal"]
       55 LOADK                            R6 K30 ["nor"]
       56 LOADK                            R7 K31 ["nrm"]
       57 LOADK                            R8 K32 ["nrml"]
       58 LOADK                            R9 K33 ["norm"]
       59 SETLIST                          R4 R5 5 [1]
       61 SETTABLEKS                       R4 R3 K12 ["Normal"]
       63 SETTABLEKS                       R3 R2 K34 ["knownSuffixes"]
       65 LOADNIL                          R3
       66 NEWCLOSURE                       R4 P0
       67 CAPTURE                          REF R3
       68 CAPTURE                          VAL R2
       69 DUPCLOSURE                       R5 K35 [PROTO_1]
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R4
       72 SETTABLEKS                       R5 R2 K36 ["matchSuffix"]
       74 DUPCLOSURE                       R5 K37 [PROTO_2]
       75 CAPTURE                          VAL R2
       76 SETTABLEKS                       R5 R2 K38 ["findMaps"]
       78 DUPCLOSURE                       R5 K39 [PROTO_3]
       79 SETTABLEKS                       R5 R2 K40 ["setMaps"]
       81 CLOSEUPVALS                      R3
       82 RETURN                           R2 1
