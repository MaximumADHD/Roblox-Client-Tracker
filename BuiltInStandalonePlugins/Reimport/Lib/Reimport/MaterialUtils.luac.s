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
       27 GETTABLEKS                       R4 R4 K11 ["GetFFlagReimportNormalizeMapPaths"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Flags"]
       34 GETTABLEKS                       R5 R5 K12 ["GetFFlagReimportEmissiveMaps"]
       36 CALL                             R4 1 1
       37 NEWTABLE                         R5 4 0
       39 DUPTABLE                         R6 K18 [{"Color", "Metal", "Rough", "Normal", "Emissive"}]
       40 NEWTABLE                         R7 0 7
       42 LOADK                            R8 K19 ["diffuse"]
       43 LOADK                            R9 K20 ["diff"]
       44 LOADK                            R10 K21 ["albedo"]
       45 LOADK                            R11 K22 ["base"]
       46 LOADK                            R12 K23 ["col"]
       47 LOADK                            R13 K24 ["color"]
       48 LOADK                            R14 K25 ["alb"]
       49 SETLIST                          R7 R8 7 [1]
       51 SETTABLEKS                       R7 R6 K13 ["Color"]
       53 NEWTABLE                         R7 0 5
       55 LOADK                            R8 K26 ["metallic"]
       56 LOADK                            R9 K27 ["metalness"]
       57 LOADK                            R10 K28 ["metal"]
       58 LOADK                            R11 K29 ["mtl"]
       59 LOADK                            R12 K30 ["met"]
       60 SETLIST                          R7 R8 5 [1]
       62 SETTABLEKS                       R7 R6 K14 ["Metal"]
       64 NEWTABLE                         R7 0 3
       66 LOADK                            R8 K31 ["roughness"]
       67 LOADK                            R9 K32 ["rough"]
       68 LOADK                            R10 K33 ["rgh"]
       69 SETLIST                          R7 R8 3 [1]
       71 SETTABLEKS                       R7 R6 K15 ["Rough"]
       73 NEWTABLE                         R7 0 5
       75 LOADK                            R8 K34 ["normal"]
       76 LOADK                            R9 K35 ["nor"]
       77 LOADK                            R10 K36 ["nrm"]
       78 LOADK                            R11 K37 ["nrml"]
       79 LOADK                            R12 K38 ["norm"]
       80 SETLIST                          R7 R8 5 [1]
       82 SETTABLEKS                       R7 R6 K16 ["Normal"]
       84 NEWTABLE                         R7 0 10
       86 LOADK                            R8 K39 ["emissive"]
       87 LOADK                            R9 K40 ["emission"]
       88 LOADK                            R10 K41 ["emiss"]
       89 LOADK                            R11 K42 ["emit"]
       90 LOADK                            R12 K43 ["glow"]
       91 LOADK                            R13 K44 ["illum"]
       92 LOADK                            R14 K45 ["selfillum"]
       93 LOADK                            R15 K46 ["light"]
       94 LOADK                            R16 K47 ["luminance"]
       95 LOADK                            R17 K48 ["emissivemask"]
       96 SETLIST                          R7 R8 10 [1]
       98 SETTABLEKS                       R7 R6 K17 ["Emissive"]
      100 LOADNIL                          R7
      101 NEWCLOSURE                       R8 P0
      102 CAPTURE                          REF R7
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R4
      105 DUPCLOSURE                       R9 K49 [PROTO_1]
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R8
      108 SETTABLEKS                       R9 R5 K50 ["matchSuffix"]
      110 DUPCLOSURE                       R9 K51 [PROTO_2]
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R2
      115 SETTABLEKS                       R9 R5 K52 ["findMaps"]
      117 DUPCLOSURE                       R9 K53 [PROTO_3]
      118 CAPTURE                          VAL R4
      119 SETTABLEKS                       R9 R5 K54 ["setMaps"]
      121 CLOSEUPVALS                      R7
      122 RETURN                           R5 1
