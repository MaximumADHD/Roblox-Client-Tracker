PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+27]
        3 NEWTABLE                         R0 0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["knownSuffixes"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["stem"]
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
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["normalize"]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 1
        8 MOVE                             R0 R2
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K1 ["matchSuffix"]
       12 MOVE                             R3 R0
       13 CALL                             R2 1 2
       14 JUMPIFEQKNIL                     R2 ; [+3]
       16 JUMPIFNOTEQKNIL                  R3 ; [+10]
       18 GETUPVAL                         R4 3
       19 CALL                             R4 0 1
       20 JUMPIFNOT                        R4 ; [+4]
       21 DUPTABLE                         R4 K3 [{"Color"}]
       22 SETTABLEKS                       R0 R4 K2 ["Color"]
       24 RETURN                           R4 1
       25 LOADNIL                          R4
       26 RETURN                           R4 1
       27 NEWTABLE                         R4 0 0
       29 MOVE                             R5 R1
       30 LOADNIL                          R6
       31 LOADNIL                          R7
       32 FORGPREP                         R5
       33 GETUPVAL                         R10 0
       34 CALL                             R10 0 1
       35 JUMPIFNOT                        R10 ; [+6]
       36 GETUPVAL                         R10 1
       37 GETTABLEKS                       R10 R10 K0 ["normalize"]
       39 MOVE                             R11 R9
       40 CALL                             R10 1 1
       41 MOVE                             R9 R10
       42 JUMPIFEQ                         R9 R0 ; [+18]
       44 LOADN                            R12 1
       45 LENGTH                           R13 R3
       46 FASTCALL3                        STRING_SUB R9 R12 R13
       48 MOVE                             R11 R9
       49 GETIMPORT                        R10 K6 [string.sub]
       51 CALL                             R10 3 1
       52 JUMPIFNOTEQ                      R10 R3 ; [+8]
       54 GETUPVAL                         R10 2
       55 GETTABLEKS                       R10 R10 K1 ["matchSuffix"]
       57 MOVE                             R11 R9
       58 CALL                             R10 1 2
       59 JUMPIFNOT                        R10 ; [+1]
       60 SETTABLE                         R9 R4 R10
       61 FORGLOOP                         R5 2 ; [-29]
       63 SETTABLE                         R0 R4 R2
       64 RETURN                           R4 1

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
        9 GETTABLEKS                       R2 R0 K6 ["Lib"]
       11 GETTABLEKS                       R2 R2 K7 ["Reimport"]
       13 GETTABLEKS                       R2 R2 K8 ["Path"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Flags"]
       20 GETTABLEKS                       R3 R3 K10 ["GetFFlagReimportNoSuffixIsColorMap"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Flags"]
       27 GETTABLEKS                       R4 R4 K11 ["GetFFlagReimportNormalizeMapPaths"]
       29 CALL                             R3 1 1
       30 NEWTABLE                         R4 4 0
       32 DUPTABLE                         R5 K16 [{"Color", "Metal", "Rough", "Normal"}]
       33 NEWTABLE                         R6 0 7
       35 LOADK                            R7 K17 ["diffuse"]
       36 LOADK                            R8 K18 ["diff"]
       37 LOADK                            R9 K19 ["albedo"]
       38 LOADK                            R10 K20 ["base"]
       39 LOADK                            R11 K21 ["col"]
       40 LOADK                            R12 K22 ["color"]
       41 LOADK                            R13 K23 ["alb"]
       42 SETLIST                          R6 R7 7 [1]
       44 SETTABLEKS                       R6 R5 K12 ["Color"]
       46 NEWTABLE                         R6 0 5
       48 LOADK                            R7 K24 ["metallic"]
       49 LOADK                            R8 K25 ["metalness"]
       50 LOADK                            R9 K26 ["metal"]
       51 LOADK                            R10 K27 ["mtl"]
       52 LOADK                            R11 K28 ["met"]
       53 SETLIST                          R6 R7 5 [1]
       55 SETTABLEKS                       R6 R5 K13 ["Metal"]
       57 NEWTABLE                         R6 0 3
       59 LOADK                            R7 K29 ["roughness"]
       60 LOADK                            R8 K30 ["rough"]
       61 LOADK                            R9 K31 ["rgh"]
       62 SETLIST                          R6 R7 3 [1]
       64 SETTABLEKS                       R6 R5 K14 ["Rough"]
       66 NEWTABLE                         R6 0 5
       68 LOADK                            R7 K32 ["normal"]
       69 LOADK                            R8 K33 ["nor"]
       70 LOADK                            R9 K34 ["nrm"]
       71 LOADK                            R10 K35 ["nrml"]
       72 LOADK                            R11 K36 ["norm"]
       73 SETLIST                          R6 R7 5 [1]
       75 SETTABLEKS                       R6 R5 K15 ["Normal"]
       77 SETTABLEKS                       R5 R4 K37 ["knownSuffixes"]
       79 LOADNIL                          R5
       80 NEWCLOSURE                       R6 P0
       81 CAPTURE                          REF R5
       82 CAPTURE                          VAL R4
       83 DUPCLOSURE                       R7 K38 [PROTO_1]
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R6
       86 SETTABLEKS                       R7 R4 K39 ["matchSuffix"]
       88 DUPCLOSURE                       R7 K40 [PROTO_2]
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R2
       93 SETTABLEKS                       R7 R4 K41 ["findMaps"]
       95 DUPCLOSURE                       R7 K42 [PROTO_3]
       96 SETTABLEKS                       R7 R4 K43 ["setMaps"]
       98 CLOSEUPVALS                      R5
       99 RETURN                           R4 1
