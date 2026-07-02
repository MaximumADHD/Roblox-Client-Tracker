PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 NAMECALL                         R4 R0 K0 ["GetDescendants"]
        6 CALL                             R4 1 1
        7 FASTCALL2                        TABLE_INSERT R4 R0 ; [+5]
        9 MOVE                             R6 R4
       10 MOVE                             R7 R0
       11 GETIMPORT                        R5 K3 [table.insert]
       13 CALL                             R5 2 0
       14 MOVE                             R5 R4
       15 LOADNIL                          R6
       16 LOADNIL                          R7
       17 FORGPREP                         R5
       18 LOADK                            R12 K4 ["SurfaceAppearance"]
       19 NAMECALL                         R10 R9 K5 ["IsA"]
       21 CALL                             R10 2 1
       22 JUMPIFNOT                        R10 ; [+100]
       23 GETUPVAL                         R10 0
       24 MOVE                             R12 R9
       25 LOADK                            R13 K6 ["TexturePack"]
       26 NAMECALL                         R10 R10 K7 ["GetPropertyValue"]
       28 CALL                             R10 3 1
       29 JUMPIFNOT                        R10 ; [+6]
       30 GETUPVAL                         R11 1
       31 GETTABLEKS                       R11 R11 K8 ["tryGetAssetIdFromContentId"]
       33 MOVE                             R12 R10
       34 CALL                             R11 1 1
       35 JUMP                             ; [+1]
       36 LOADNIL                          R11
       37 JUMPIFNOT                        R11 ; [+8]
       38 FASTCALL2                        TABLE_INSERT R2 R9 ; [+5]
       40 MOVE                             R13 R2
       41 MOVE                             R14 R9
       42 GETIMPORT                        R12 K3 [table.insert]
       44 CALL                             R12 2 0
       45 JUMP                             ; [+77]
       46 GETUPVAL                         R12 2
       47 CALL                             R12 0 1
       48 JUMPIFNOT                        R12 ; [+67]
       49 GETTABLEKS                       R13 R9 K9 ["ColorMap"]
       51 JUMPIFNOT                        R13 ; [+5]
       52 LOADB                            R12 1
       53 GETTABLEKS                       R13 R9 K9 ["ColorMap"]
       55 JUMPIFNOTEQKS                    R13 K10 [""] ; [+50]
       57 GETTABLEKS                       R13 R9 K11 ["MetalnessMap"]
       59 JUMPIFNOT                        R13 ; [+5]
       60 LOADB                            R12 1
       61 GETTABLEKS                       R13 R9 K11 ["MetalnessMap"]
       63 JUMPIFNOTEQKS                    R13 K10 [""] ; [+42]
       65 GETTABLEKS                       R13 R9 K12 ["NormalMap"]
       67 JUMPIFNOT                        R13 ; [+5]
       68 LOADB                            R12 1
       69 GETTABLEKS                       R13 R9 K12 ["NormalMap"]
       71 JUMPIFNOTEQKS                    R13 K10 [""] ; [+34]
       73 GETTABLEKS                       R13 R9 K13 ["RoughnessMap"]
       75 JUMPIFNOT                        R13 ; [+5]
       76 LOADB                            R12 1
       77 GETTABLEKS                       R13 R9 K13 ["RoughnessMap"]
       79 JUMPIFNOTEQKS                    R13 K10 [""] ; [+26]
       81 GETTABLEKS                       R12 R9 K14 ["EmissiveMaskContent"]
       83 JUMPIFNOT                        R12 ; [+22]
       84 LOADB                            R12 0
       85 GETTABLEKS                       R13 R9 K14 ["EmissiveMaskContent"]
       87 GETTABLEKS                       R13 R13 K15 ["SourceType"]
       89 GETIMPORT                        R14 K19 [Enum.ContentSourceType.Uri]
       91 JUMPIFNOTEQ                      R13 R14 ; [+14]
       93 GETTABLEKS                       R12 R9 K14 ["EmissiveMaskContent"]
       95 GETTABLEKS                       R12 R12 K18 ["Uri"]
       97 JUMPIFNOT                        R12 ; [+8]
       98 GETTABLEKS                       R13 R9 K14 ["EmissiveMaskContent"]
      100 GETTABLEKS                       R13 R13 K18 ["Uri"]
      102 JUMPIFNOTEQKS                    R13 K10 [""] ; [+2]
      104 LOADB                            R12 0 +1
      105 LOADB                            R12 1
      106 JUMPIF                           R12 ; [+1]
      107 JUMPIF                           R1 ; [+15]
      108 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
      110 MOVE                             R14 R3
      111 MOVE                             R15 R9
      112 GETIMPORT                        R13 K3 [table.insert]
      114 CALL                             R13 2 0
      115 JUMP                             ; [+7]
      116 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
      118 MOVE                             R13 R3
      119 MOVE                             R14 R9
      120 GETIMPORT                        R12 K3 [table.insert]
      122 CALL                             R12 2 0
      123 FORGLOOP                         R5 2 ; [-106]
      125 RETURN                           R2 2

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 2
        4 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADB                            R3 0
        3 CALL                             R1 2 1
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UGCValidationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R2 R1 K7 ["util"]
       15 GETIMPORT                        R3 K9 [require]
       17 GETTABLEKS                       R4 R2 K10 ["ParseContentIds"]
       19 CALL                             R3 1 1
       20 GETTABLEKS                       R4 R1 K11 ["flags"]
       22 GETIMPORT                        R5 K9 [require]
       24 GETTABLEKS                       R6 R4 K12 ["getFFlagUGCValidateEmptySurfaceAppearance"]
       26 CALL                             R5 1 1
       27 NEWTABLE                         R6 2 0
       29 DUPCLOSURE                       R7 K13 [PROTO_0]
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R5
       33 DUPCLOSURE                       R8 K14 [PROTO_1]
       34 CAPTURE                          VAL R7
       35 SETTABLEKS                       R8 R6 K15 ["findSurfaceAppearancesMissingTexturePacks"]
       37 DUPCLOSURE                       R8 K16 [PROTO_2]
       38 CAPTURE                          VAL R7
       39 SETTABLEKS                       R8 R6 K17 ["findSurfaceAppearancesWithTexturePacks"]
       41 RETURN                           R6 1
