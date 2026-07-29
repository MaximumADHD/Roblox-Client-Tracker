PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+25]
        3 NEWTABLE                         R0 0 0
        5 GETUPVAL                         R1 1
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 FORGPREP                         R1
        9 MOVE                             R6 R5
       10 LOADNIL                          R7
       11 LOADNIL                          R8
       12 FORGPREP                         R6
       13 LENGTH                           R11 R10
       14 GETTABLE                         R12 R0 R11
       15 JUMPIFNOTEQKNIL                  R12 ; [+4]
       17 NEWTABLE                         R12 0 0
       19 SETTABLE                         R12 R0 R11
       20 GETTABLE                         R12 R0 R11
       21 SETTABLE                         R4 R12 R10
       22 FORGLOOP                         R6 2 ; [-10]
       24 FORGLOOP                         R1 2 ; [-16]
       26 SETUPVAL                         R0 0
       27 GETUPVAL                         R2 0
       28 JUMPIFNOTEQKNIL                  R2 ; [+2]
       30 LOADB                            R1 0 +1
       31 LOADB                            R1 1
       32 FASTCALL2K                       ASSERT R1 K0 ; [+4]
       34 LOADK                            R2 K0 ["suffix lookup should be initialized"]
       35 GETIMPORT                        R0 K2 [assert]
       37 CALL                             R0 2 0
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
        0 JUMPIFNOTEQKS                    R1 K0 ["Color"] ; [+6]
        2 GETTABLEKS                       R2 R0 K1 ["ColorMapContent"]
        4 GETTABLEKS                       R2 R2 K2 ["Uri"]
        6 RETURN                           R2 1
        7 JUMPIFNOTEQKS                    R1 K3 ["Metal"] ; [+6]
        9 GETTABLEKS                       R2 R0 K4 ["MetalnessMapContent"]
       11 GETTABLEKS                       R2 R2 K2 ["Uri"]
       13 RETURN                           R2 1
       14 JUMPIFNOTEQKS                    R1 K5 ["Rough"] ; [+6]
       16 GETTABLEKS                       R2 R0 K6 ["RoughnessMapContent"]
       18 GETTABLEKS                       R2 R2 K2 ["Uri"]
       20 RETURN                           R2 1
       21 JUMPIFNOTEQKS                    R1 K7 ["Normal"] ; [+6]
       23 GETTABLEKS                       R2 R0 K8 ["NormalMapContent"]
       25 GETTABLEKS                       R2 R2 K2 ["Uri"]
       27 RETURN                           R2 1
       28 JUMPIFNOTEQKS                    R1 K9 ["Emissive"] ; [+11]
       30 LOADK                            R4 K10 ["SurfaceAppearance"]
       31 NAMECALL                         R2 R0 K11 ["IsA"]
       33 CALL                             R2 2 1
       34 JUMPIFNOT                        R2 ; [+5]
       35 GETTABLEKS                       R2 R0 K12 ["EmissiveMaskContent"]
       37 GETTABLEKS                       R2 R2 K2 ["Uri"]
       39 RETURN                           R2 1
       40 LOADNIL                          R2
       41 RETURN                           R2 1

PROTO_4:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 JUMPIFNOTEQKS                    R5 K0 ["Color"] ; [+15]
        6 GETIMPORT                        R7 K3 [Content.fromUri]
        8 GETUPVAL                         R8 0
        9 GETTABLEKS                       R8 R8 K4 ["buildAssetUri"]
       11 GETTABLEKS                       R9 R6 K5 ["assetId"]
       13 GETTABLEKS                       R10 R6 K6 ["versionNumber"]
       15 CALL                             R8 2 -1
       16 CALL                             R7 -1 1
       17 SETTABLEKS                       R7 R0 K7 ["ColorMapContent"]
       19 JUMP                             ; [+73]
       20 JUMPIFNOTEQKS                    R5 K8 ["Metal"] ; [+15]
       22 GETIMPORT                        R7 K3 [Content.fromUri]
       24 GETUPVAL                         R8 0
       25 GETTABLEKS                       R8 R8 K4 ["buildAssetUri"]
       27 GETTABLEKS                       R9 R6 K5 ["assetId"]
       29 GETTABLEKS                       R10 R6 K6 ["versionNumber"]
       31 CALL                             R8 2 -1
       32 CALL                             R7 -1 1
       33 SETTABLEKS                       R7 R0 K9 ["MetalnessMapContent"]
       35 JUMP                             ; [+57]
       36 JUMPIFNOTEQKS                    R5 K10 ["Rough"] ; [+15]
       38 GETIMPORT                        R7 K3 [Content.fromUri]
       40 GETUPVAL                         R8 0
       41 GETTABLEKS                       R8 R8 K4 ["buildAssetUri"]
       43 GETTABLEKS                       R9 R6 K5 ["assetId"]
       45 GETTABLEKS                       R10 R6 K6 ["versionNumber"]
       47 CALL                             R8 2 -1
       48 CALL                             R7 -1 1
       49 SETTABLEKS                       R7 R0 K11 ["RoughnessMapContent"]
       51 JUMP                             ; [+41]
       52 JUMPIFNOTEQKS                    R5 K12 ["Normal"] ; [+15]
       54 GETIMPORT                        R7 K3 [Content.fromUri]
       56 GETUPVAL                         R8 0
       57 GETTABLEKS                       R8 R8 K4 ["buildAssetUri"]
       59 GETTABLEKS                       R9 R6 K5 ["assetId"]
       61 GETTABLEKS                       R10 R6 K6 ["versionNumber"]
       63 CALL                             R8 2 -1
       64 CALL                             R7 -1 1
       65 SETTABLEKS                       R7 R0 K13 ["NormalMapContent"]
       67 JUMP                             ; [+25]
       68 JUMPIFNOTEQKS                    R5 K14 ["Emissive"] ; [+24]
       70 LOADK                            R9 K15 ["SurfaceAppearance"]
       71 NAMECALL                         R7 R0 K16 ["IsA"]
       73 CALL                             R7 2 1
       74 JUMPIFNOT                        R7 ; [+14]
       75 GETIMPORT                        R7 K3 [Content.fromUri]
       77 GETUPVAL                         R8 0
       78 GETTABLEKS                       R8 R8 K4 ["buildAssetUri"]
       80 GETTABLEKS                       R9 R6 K5 ["assetId"]
       82 GETTABLEKS                       R10 R6 K6 ["versionNumber"]
       84 CALL                             R8 2 -1
       85 CALL                             R7 -1 1
       86 SETTABLEKS                       R7 R0 K17 ["EmissiveMaskContent"]
       88 JUMP                             ; [+4]
       89 GETIMPORT                        R7 K19 [warn]
       91 LOADK                            R8 K20 ["Reimport: did not apply emissive mask to Decal"]
       92 CALL                             R7 1 0
       93 FORGLOOP                         R2 2 ; [-90]
       95 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Lib"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["AssetUri"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Lib"]
       20 GETTABLEKS                       R3 R3 K9 ["Reimport"]
       22 GETTABLEKS                       R3 R3 K10 ["Path"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETIMPORT                        R4 K1 [script]
       29 GETTABLEKS                       R4 R4 K11 ["Parent"]
       31 GETTABLEKS                       R4 R4 K12 ["Types"]
       33 CALL                             R3 1 1
       34 NEWTABLE                         R4 4 0
       36 DUPTABLE                         R5 K18 [{"Color", "Metal", "Rough", "Normal", "Emissive"}]
       37 NEWTABLE                         R6 0 7
       39 LOADK                            R7 K19 ["diffuse"]
       40 LOADK                            R8 K20 ["diff"]
       41 LOADK                            R9 K21 ["albedo"]
       42 LOADK                            R10 K22 ["base"]
       43 LOADK                            R11 K23 ["col"]
       44 LOADK                            R12 K24 ["color"]
       45 LOADK                            R13 K25 ["alb"]
       46 SETLIST                          R6 R7 7 [1]
       48 SETTABLEKS                       R6 R5 K13 ["Color"]
       50 NEWTABLE                         R6 0 5
       52 LOADK                            R7 K26 ["metallic"]
       53 LOADK                            R8 K27 ["metalness"]
       54 LOADK                            R9 K28 ["metal"]
       55 LOADK                            R10 K29 ["mtl"]
       56 LOADK                            R11 K30 ["met"]
       57 SETLIST                          R6 R7 5 [1]
       59 SETTABLEKS                       R6 R5 K14 ["Metal"]
       61 NEWTABLE                         R6 0 3
       63 LOADK                            R7 K31 ["roughness"]
       64 LOADK                            R8 K32 ["rough"]
       65 LOADK                            R9 K33 ["rgh"]
       66 SETLIST                          R6 R7 3 [1]
       68 SETTABLEKS                       R6 R5 K15 ["Rough"]
       70 NEWTABLE                         R6 0 5
       72 LOADK                            R7 K34 ["normal"]
       73 LOADK                            R8 K35 ["nor"]
       74 LOADK                            R9 K36 ["nrm"]
       75 LOADK                            R10 K37 ["nrml"]
       76 LOADK                            R11 K38 ["norm"]
       77 SETLIST                          R6 R7 5 [1]
       79 SETTABLEKS                       R6 R5 K16 ["Normal"]
       81 NEWTABLE                         R6 0 10
       83 LOADK                            R7 K39 ["emissive"]
       84 LOADK                            R8 K40 ["emission"]
       85 LOADK                            R9 K41 ["emiss"]
       86 LOADK                            R10 K42 ["emit"]
       87 LOADK                            R11 K43 ["glow"]
       88 LOADK                            R12 K44 ["illum"]
       89 LOADK                            R13 K45 ["selfillum"]
       90 LOADK                            R14 K46 ["light"]
       91 LOADK                            R15 K47 ["luminance"]
       92 LOADK                            R16 K48 ["emissivemask"]
       93 SETLIST                          R6 R7 10 [1]
       95 SETTABLEKS                       R6 R5 K17 ["Emissive"]
       97 LOADNIL                          R6
       98 NEWCLOSURE                       R7 P0
       99 CAPTURE                          REF R6
      100 CAPTURE                          VAL R5
      101 DUPCLOSURE                       R8 K49 [PROTO_1]
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R7
      104 SETTABLEKS                       R8 R4 K50 ["matchSuffix"]
      106 DUPCLOSURE                       R8 K51 [PROTO_2]
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R4
      109 SETTABLEKS                       R8 R4 K52 ["findMaps"]
      111 DUPCLOSURE                       R8 K53 [PROTO_3]
      112 SETTABLEKS                       R8 R4 K54 ["getMapUri"]
      114 DUPCLOSURE                       R8 K55 [PROTO_4]
      115 CAPTURE                          VAL R1
      116 SETTABLEKS                       R8 R4 K56 ["setMaps"]
      118 CLOSEUPVALS                      R6
      119 RETURN                           R4 1
