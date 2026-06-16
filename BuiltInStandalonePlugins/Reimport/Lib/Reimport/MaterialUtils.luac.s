PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+30]
        3 NEWTABLE                         R0 0 0
        5 GETUPVAL                         R1 1
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 FORGPREP                         R1
        9 GETUPVAL                         R6 2
       10 CALL                             R6 0 1
       11 JUMPIF                           R6 ; [+2]
       12 JUMPIFEQKS                       R4 K0 ["Emissive"] ; [+16]
       14 MOVE                             R6 R5
       15 LOADNIL                          R7
       16 LOADNIL                          R8
       17 FORGPREP                         R6
       18 LENGTH                           R11 R10
       19 GETTABLE                         R12 R0 R11
       20 JUMPIFNOTEQKNIL                  R12 ; [+4]
       22 NEWTABLE                         R12 0 0
       24 SETTABLE                         R12 R0 R11
       25 GETTABLE                         R12 R0 R11
       26 SETTABLE                         R4 R12 R10
       27 FORGLOOP                         R6 2 ; [-10]
       29 FORGLOOP                         R1 2 ; [-21]
       31 SETUPVAL                         R0 0
       32 GETUPVAL                         R2 0
       33 JUMPIFNOTEQKNIL                  R2 ; [+2]
       35 LOADB                            R1 0 +1
       36 LOADB                            R1 1
       37 FASTCALL1                        ASSERT R1 ; [+2]
       38 GETIMPORT                        R0 K2 [assert]
       40 CALL                             R0 1 0
       41 GETUPVAL                         R0 0
       42 RETURN                           R0 1

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
        1 GETTABLEKS                       R2 R2 K0 ["normalize"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 MOVE                             R0 R2
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["matchSuffix"]
        9 MOVE                             R3 R0
       10 CALL                             R2 1 2
       11 JUMPIFEQKNIL                     R2 ; [+3]
       13 JUMPIFNOTEQKNIL                  R3 ; [+10]
       15 GETUPVAL                         R4 2
       16 CALL                             R4 0 1
       17 JUMPIFNOT                        R4 ; [+4]
       18 DUPTABLE                         R4 K3 [{"Color"}]
       19 SETTABLEKS                       R0 R4 K2 ["Color"]
       21 RETURN                           R4 1
       22 LOADNIL                          R4
       23 RETURN                           R4 1
       24 NEWTABLE                         R4 0 0
       26 MOVE                             R5 R1
       27 LOADNIL                          R6
       28 LOADNIL                          R7
       29 FORGPREP                         R5
       30 GETUPVAL                         R10 0
       31 GETTABLEKS                       R10 R10 K0 ["normalize"]
       33 MOVE                             R11 R9
       34 CALL                             R10 1 1
       35 MOVE                             R9 R10
       36 JUMPIFEQ                         R9 R0 ; [+18]
       38 LOADN                            R12 1
       39 LENGTH                           R13 R3
       40 FASTCALL3                        STRING_SUB R9 R12 R13
       42 MOVE                             R11 R9
       43 GETIMPORT                        R10 K6 [string.sub]
       45 CALL                             R10 3 1
       46 JUMPIFNOTEQ                      R10 R3 ; [+8]
       48 GETUPVAL                         R10 1
       49 GETTABLEKS                       R10 R10 K1 ["matchSuffix"]
       51 MOVE                             R11 R9
       52 CALL                             R10 1 2
       53 JUMPIFNOT                        R10 ; [+1]
       54 SETTABLE                         R9 R4 R10
       55 FORGLOOP                         R5 2 ; [-26]
       57 SETTABLE                         R0 R4 R2
       58 RETURN                           R4 1

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
       14 JUMP                             ; [+56]
       15 JUMPIFNOTEQKS                    R5 K6 ["Metal"] ; [+10]
       17 GETIMPORT                        R7 K3 [Content.fromUri]
       19 LOADK                            R9 K4 ["rbxassetid://"]
       20 MOVE                             R10 R6
       21 CONCAT                           R8 R9 R10
       22 CALL                             R7 1 1
       23 SETTABLEKS                       R7 R0 K7 ["MetalnessMapContent"]
       25 JUMP                             ; [+45]
       26 JUMPIFNOTEQKS                    R5 K8 ["Rough"] ; [+10]
       28 GETIMPORT                        R7 K3 [Content.fromUri]
       30 LOADK                            R9 K4 ["rbxassetid://"]
       31 MOVE                             R10 R6
       32 CONCAT                           R8 R9 R10
       33 CALL                             R7 1 1
       34 SETTABLEKS                       R7 R0 K9 ["RoughnessMapContent"]
       36 JUMP                             ; [+34]
       37 JUMPIFNOTEQKS                    R5 K10 ["Normal"] ; [+10]
       39 GETIMPORT                        R7 K3 [Content.fromUri]
       41 LOADK                            R9 K4 ["rbxassetid://"]
       42 MOVE                             R10 R6
       43 CONCAT                           R8 R9 R10
       44 CALL                             R7 1 1
       45 SETTABLEKS                       R7 R0 K11 ["NormalMapContent"]
       47 JUMP                             ; [+23]
       48 GETUPVAL                         R7 0
       49 CALL                             R7 0 1
       50 JUMPIFNOT                        R7 ; [+20]
       51 JUMPIFNOTEQKS                    R5 K12 ["Emissive"] ; [+19]
       53 LOADK                            R9 K13 ["SurfaceAppearance"]
       54 NAMECALL                         R7 R0 K14 ["IsA"]
       56 CALL                             R7 2 1
       57 JUMPIFNOT                        R7 ; [+9]
       58 GETIMPORT                        R7 K3 [Content.fromUri]
       60 LOADK                            R9 K4 ["rbxassetid://"]
       61 MOVE                             R10 R6
       62 CONCAT                           R8 R9 R10
       63 CALL                             R7 1 1
       64 SETTABLEKS                       R7 R0 K15 ["EmissiveMaskContent"]
       66 JUMP                             ; [+4]
       67 GETIMPORT                        R7 K17 [warn]
       69 LOADK                            R8 K18 ["Reimport: did not apply emissive mask to Decal"]
       70 CALL                             R7 1 0
       71 FORGLOOP                         R2 2 ; [-68]
       73 RETURN                           R0 0

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
       27 GETTABLEKS                       R4 R4 K11 ["GetFFlagReimportEmissiveMaps"]
       29 CALL                             R3 1 1
       30 NEWTABLE                         R4 4 0
       32 DUPTABLE                         R5 K17 [{"Color", "Metal", "Rough", "Normal", "Emissive"}]
       33 NEWTABLE                         R6 0 7
       35 LOADK                            R7 K18 ["diffuse"]
       36 LOADK                            R8 K19 ["diff"]
       37 LOADK                            R9 K20 ["albedo"]
       38 LOADK                            R10 K21 ["base"]
       39 LOADK                            R11 K22 ["col"]
       40 LOADK                            R12 K23 ["color"]
       41 LOADK                            R13 K24 ["alb"]
       42 SETLIST                          R6 R7 7 [1]
       44 SETTABLEKS                       R6 R5 K12 ["Color"]
       46 NEWTABLE                         R6 0 5
       48 LOADK                            R7 K25 ["metallic"]
       49 LOADK                            R8 K26 ["metalness"]
       50 LOADK                            R9 K27 ["metal"]
       51 LOADK                            R10 K28 ["mtl"]
       52 LOADK                            R11 K29 ["met"]
       53 SETLIST                          R6 R7 5 [1]
       55 SETTABLEKS                       R6 R5 K13 ["Metal"]
       57 NEWTABLE                         R6 0 3
       59 LOADK                            R7 K30 ["roughness"]
       60 LOADK                            R8 K31 ["rough"]
       61 LOADK                            R9 K32 ["rgh"]
       62 SETLIST                          R6 R7 3 [1]
       64 SETTABLEKS                       R6 R5 K14 ["Rough"]
       66 NEWTABLE                         R6 0 5
       68 LOADK                            R7 K33 ["normal"]
       69 LOADK                            R8 K34 ["nor"]
       70 LOADK                            R9 K35 ["nrm"]
       71 LOADK                            R10 K36 ["nrml"]
       72 LOADK                            R11 K37 ["norm"]
       73 SETLIST                          R6 R7 5 [1]
       75 SETTABLEKS                       R6 R5 K15 ["Normal"]
       77 NEWTABLE                         R6 0 10
       79 LOADK                            R7 K38 ["emissive"]
       80 LOADK                            R8 K39 ["emission"]
       81 LOADK                            R9 K40 ["emiss"]
       82 LOADK                            R10 K41 ["emit"]
       83 LOADK                            R11 K42 ["glow"]
       84 LOADK                            R12 K43 ["illum"]
       85 LOADK                            R13 K44 ["selfillum"]
       86 LOADK                            R14 K45 ["light"]
       87 LOADK                            R15 K46 ["luminance"]
       88 LOADK                            R16 K47 ["emissivemask"]
       89 SETLIST                          R6 R7 10 [1]
       91 SETTABLEKS                       R6 R5 K16 ["Emissive"]
       93 LOADNIL                          R6
       94 NEWCLOSURE                       R7 P0
       95 CAPTURE                          REF R6
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R3
       98 DUPCLOSURE                       R8 K48 [PROTO_1]
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R7
      101 SETTABLEKS                       R8 R4 K49 ["matchSuffix"]
      103 DUPCLOSURE                       R8 K50 [PROTO_2]
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R2
      107 SETTABLEKS                       R8 R4 K51 ["findMaps"]
      109 DUPCLOSURE                       R8 K52 [PROTO_3]
      110 CAPTURE                          VAL R3
      111 SETTABLEKS                       R8 R4 K53 ["setMaps"]
      113 CLOSEUPVALS                      R6
      114 RETURN                           R4 1
