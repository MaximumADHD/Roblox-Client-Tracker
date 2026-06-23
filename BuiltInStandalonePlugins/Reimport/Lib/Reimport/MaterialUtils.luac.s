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
       37 FASTCALL2K                       ASSERT R1 K1 ; [+4]
       39 LOADK                            R2 K1 ["suffix lookup should be initialized"]
       40 GETIMPORT                        R0 K3 [assert]
       42 CALL                             R0 2 0
       43 GETUPVAL                         R0 0
       44 RETURN                           R0 1

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
       13 JUMPIFNOTEQKNIL                  R3 ; [+5]
       15 DUPTABLE                         R4 K3 [{"Color"}]
       16 SETTABLEKS                       R0 R4 K2 ["Color"]
       18 RETURN                           R4 1
       19 NEWTABLE                         R4 0 0
       21 MOVE                             R5 R1
       22 LOADNIL                          R6
       23 LOADNIL                          R7
       24 FORGPREP                         R5
       25 GETUPVAL                         R10 0
       26 GETTABLEKS                       R10 R10 K0 ["normalize"]
       28 MOVE                             R11 R9
       29 CALL                             R10 1 1
       30 MOVE                             R9 R10
       31 JUMPIFEQ                         R9 R0 ; [+18]
       33 LOADN                            R12 1
       34 LENGTH                           R13 R3
       35 FASTCALL3                        STRING_SUB R9 R12 R13
       37 MOVE                             R11 R9
       38 GETIMPORT                        R10 K6 [string.sub]
       40 CALL                             R10 3 1
       41 JUMPIFNOTEQ                      R10 R3 ; [+8]
       43 GETUPVAL                         R10 1
       44 GETTABLEKS                       R10 R10 K1 ["matchSuffix"]
       46 MOVE                             R11 R9
       47 CALL                             R10 1 2
       48 JUMPIFNOT                        R10 ; [+1]
       49 SETTABLE                         R9 R4 R10
       50 FORGLOOP                         R5 2 ; [-26]
       52 SETTABLE                         R0 R4 R2
       53 RETURN                           R4 1

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
       20 GETTABLEKS                       R3 R3 K10 ["GetFFlagReimportEmissiveMaps"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 4 0
       25 DUPTABLE                         R4 K16 [{"Color", "Metal", "Rough", "Normal", "Emissive"}]
       26 NEWTABLE                         R5 0 7
       28 LOADK                            R6 K17 ["diffuse"]
       29 LOADK                            R7 K18 ["diff"]
       30 LOADK                            R8 K19 ["albedo"]
       31 LOADK                            R9 K20 ["base"]
       32 LOADK                            R10 K21 ["col"]
       33 LOADK                            R11 K22 ["color"]
       34 LOADK                            R12 K23 ["alb"]
       35 SETLIST                          R5 R6 7 [1]
       37 SETTABLEKS                       R5 R4 K11 ["Color"]
       39 NEWTABLE                         R5 0 5
       41 LOADK                            R6 K24 ["metallic"]
       42 LOADK                            R7 K25 ["metalness"]
       43 LOADK                            R8 K26 ["metal"]
       44 LOADK                            R9 K27 ["mtl"]
       45 LOADK                            R10 K28 ["met"]
       46 SETLIST                          R5 R6 5 [1]
       48 SETTABLEKS                       R5 R4 K12 ["Metal"]
       50 NEWTABLE                         R5 0 3
       52 LOADK                            R6 K29 ["roughness"]
       53 LOADK                            R7 K30 ["rough"]
       54 LOADK                            R8 K31 ["rgh"]
       55 SETLIST                          R5 R6 3 [1]
       57 SETTABLEKS                       R5 R4 K13 ["Rough"]
       59 NEWTABLE                         R5 0 5
       61 LOADK                            R6 K32 ["normal"]
       62 LOADK                            R7 K33 ["nor"]
       63 LOADK                            R8 K34 ["nrm"]
       64 LOADK                            R9 K35 ["nrml"]
       65 LOADK                            R10 K36 ["norm"]
       66 SETLIST                          R5 R6 5 [1]
       68 SETTABLEKS                       R5 R4 K14 ["Normal"]
       70 NEWTABLE                         R5 0 10
       72 LOADK                            R6 K37 ["emissive"]
       73 LOADK                            R7 K38 ["emission"]
       74 LOADK                            R8 K39 ["emiss"]
       75 LOADK                            R9 K40 ["emit"]
       76 LOADK                            R10 K41 ["glow"]
       77 LOADK                            R11 K42 ["illum"]
       78 LOADK                            R12 K43 ["selfillum"]
       79 LOADK                            R13 K44 ["light"]
       80 LOADK                            R14 K45 ["luminance"]
       81 LOADK                            R15 K46 ["emissivemask"]
       82 SETLIST                          R5 R6 10 [1]
       84 SETTABLEKS                       R5 R4 K15 ["Emissive"]
       86 LOADNIL                          R5
       87 NEWCLOSURE                       R6 P0
       88 CAPTURE                          REF R5
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R2
       91 DUPCLOSURE                       R7 K47 [PROTO_1]
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R6
       94 SETTABLEKS                       R7 R3 K48 ["matchSuffix"]
       96 DUPCLOSURE                       R7 K49 [PROTO_2]
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R3
       99 SETTABLEKS                       R7 R3 K50 ["findMaps"]
      101 DUPCLOSURE                       R7 K51 [PROTO_3]
      102 CAPTURE                          VAL R2
      103 SETTABLEKS                       R7 R3 K52 ["setMaps"]
      105 CLOSEUPVALS                      R5
      106 RETURN                           R3 1
