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
        7 JUMPIFNOTEQKNIL                  R3 ; [+10]
        9 GETUPVAL                         R4 1
       10 CALL                             R4 0 1
       11 JUMPIFNOT                        R4 ; [+4]
       12 DUPTABLE                         R4 K2 [{"Color"}]
       13 SETTABLEKS                       R0 R4 K1 ["Color"]
       15 RETURN                           R4 1
       16 LOADNIL                          R4
       17 RETURN                           R4 1
       18 NEWTABLE                         R4 0 0
       20 MOVE                             R5 R1
       21 LOADNIL                          R6
       22 LOADNIL                          R7
       23 FORGPREP                         R5
       24 JUMPIFEQ                         R9 R0 ; [+18]
       26 LOADN                            R12 1
       27 LENGTH                           R13 R3
       28 FASTCALL3                        STRING_SUB R9 R12 R13
       30 MOVE                             R11 R9
       31 GETIMPORT                        R10 K5 [string.sub]
       33 CALL                             R10 3 1
       34 JUMPIFNOTEQ                      R10 R3 ; [+8]
       36 GETUPVAL                         R11 0
       37 GETTABLEKS                       R10 R11 K0 ["matchSuffix"]
       39 MOVE                             R11 R9
       40 CALL                             R10 1 2
       41 JUMPIFNOT                        R10 ; [+1]
       42 SETTABLE                         R9 R4 R10
       43 FORGLOOP                         R5 2 ; [-20]
       45 SETTABLE                         R0 R4 R2
       46 RETURN                           R4 1

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
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Flags"]
       20 GETTABLEKS                       R3 R4 K10 ["GetFFlagReimportNoSuffixIsColorMap"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 4 0
       25 DUPTABLE                         R4 K15 [{"Color", "Metal", "Rough", "Normal"}]
       26 NEWTABLE                         R5 0 7
       28 LOADK                            R6 K16 ["diffuse"]
       29 LOADK                            R7 K17 ["diff"]
       30 LOADK                            R8 K18 ["albedo"]
       31 LOADK                            R9 K19 ["base"]
       32 LOADK                            R10 K20 ["col"]
       33 LOADK                            R11 K21 ["color"]
       34 LOADK                            R12 K22 ["alb"]
       35 SETLIST                          R5 R6 7 [1]
       37 SETTABLEKS                       R5 R4 K11 ["Color"]
       39 NEWTABLE                         R5 0 5
       41 LOADK                            R6 K23 ["metallic"]
       42 LOADK                            R7 K24 ["metalness"]
       43 LOADK                            R8 K25 ["metal"]
       44 LOADK                            R9 K26 ["mtl"]
       45 LOADK                            R10 K27 ["met"]
       46 SETLIST                          R5 R6 5 [1]
       48 SETTABLEKS                       R5 R4 K12 ["Metal"]
       50 NEWTABLE                         R5 0 3
       52 LOADK                            R6 K28 ["roughness"]
       53 LOADK                            R7 K29 ["rough"]
       54 LOADK                            R8 K30 ["rgh"]
       55 SETLIST                          R5 R6 3 [1]
       57 SETTABLEKS                       R5 R4 K13 ["Rough"]
       59 NEWTABLE                         R5 0 5
       61 LOADK                            R6 K31 ["normal"]
       62 LOADK                            R7 K32 ["nor"]
       63 LOADK                            R8 K33 ["nrm"]
       64 LOADK                            R9 K34 ["nrml"]
       65 LOADK                            R10 K35 ["norm"]
       66 SETLIST                          R5 R6 5 [1]
       68 SETTABLEKS                       R5 R4 K14 ["Normal"]
       70 SETTABLEKS                       R4 R3 K36 ["knownSuffixes"]
       72 LOADNIL                          R4
       73 NEWCLOSURE                       R5 P0
       74 CAPTURE                          REF R4
       75 CAPTURE                          VAL R3
       76 DUPCLOSURE                       R6 K37 [PROTO_1]
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R5
       79 SETTABLEKS                       R6 R3 K38 ["matchSuffix"]
       81 DUPCLOSURE                       R6 K39 [PROTO_2]
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R2
       84 SETTABLEKS                       R6 R3 K40 ["findMaps"]
       86 DUPCLOSURE                       R6 K41 [PROTO_3]
       87 SETTABLEKS                       R6 R3 K42 ["setMaps"]
       89 CLOSEUPVALS                      R4
       90 RETURN                           R3 1
