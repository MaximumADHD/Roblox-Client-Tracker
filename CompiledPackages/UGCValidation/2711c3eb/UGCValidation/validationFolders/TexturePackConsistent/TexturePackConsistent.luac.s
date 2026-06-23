PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["DoesSurfaceAppearanceMatchTexturePackAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R2 R1 K0 ["rootInstance"]
        6 GETTABLEKS                       R3 R1 K1 ["consumerConfig"]
        8 GETTABLEKS                       R3 R3 K2 ["source"]
       10 GETUPVAL                         R5 1
       11 GETTABLE                         R4 R5 R3
       12 JUMPIFNOTEQKB                    R4 TRUE ; [+2]
       14 RETURN                           R0 0
       15 GETUPVAL                         R6 2
       16 GETTABLE                         R5 R6 R3
       17 JUMPIFEQKB                       R5 TRUE ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 GETTABLEKS                       R5 R1 K3 ["uploadCategory"]
       23 LOADB                            R6 1
       24 GETUPVAL                         R7 3
       25 GETTABLEKS                       R7 R7 K4 ["UploadCategory"]
       27 GETTABLEKS                       R7 R7 K5 ["TORSO_AND_LIMBS"]
       29 JUMPIFEQ                         R5 R7 ; [+10]
       31 GETUPVAL                         R7 3
       32 GETTABLEKS                       R7 R7 K4 ["UploadCategory"]
       34 GETTABLEKS                       R7 R7 K6 ["DYNAMIC_HEAD"]
       36 JUMPIFEQ                         R5 R7 ; [+2]
       38 LOADB                            R6 0 +1
       39 LOADB                            R6 1
       40 GETUPVAL                         R7 4
       41 CALL                             R7 0 1
       42 JUMPIFNOT                        R7 ; [+29]
       43 JUMPIFNOT                        R4 ; [+55]
       44 GETUPVAL                         R7 5
       45 GETTABLEKS                       R7 R7 K7 ["findSurfaceAppearancesMissingTexturePacks"]
       47 MOVE                             R8 R2
       48 MOVE                             R9 R6
       49 CALL                             R7 2 1
       50 MOVE                             R8 R7
       51 LOADNIL                          R9
       52 LOADNIL                          R10
       53 FORGPREP                         R8
       54 GETUPVAL                         R15 6
       55 GETTABLEKS                       R15 R15 K8 ["Keys"]
       57 GETTABLEKS                       R15 R15 K9 ["TexturePackInvalidURL"]
       59 DUPTABLE                         R16 K11 [{"SurfaceAppearanceName"}]
       60 NAMECALL                         R17 R12 K12 ["GetFullName"]
       62 CALL                             R17 1 1
       63 SETTABLEKS                       R17 R16 K10 ["SurfaceAppearanceName"]
       65 MOVE                             R17 R12
       66 NAMECALL                         R13 R0 K13 ["fail"]
       68 CALL                             R13 4 0
       69 FORGLOOP                         R8 2 ; [-16]
       71 JUMP                             ; [+27]
       72 GETUPVAL                         R7 5
       73 GETTABLEKS                       R7 R7 K7 ["findSurfaceAppearancesMissingTexturePacks"]
       75 MOVE                             R8 R2
       76 MOVE                             R9 R6
       77 CALL                             R7 2 1
       78 MOVE                             R8 R7
       79 LOADNIL                          R9
       80 LOADNIL                          R10
       81 FORGPREP                         R8
       82 GETUPVAL                         R15 6
       83 GETTABLEKS                       R15 R15 K8 ["Keys"]
       85 GETTABLEKS                       R15 R15 K9 ["TexturePackInvalidURL"]
       87 DUPTABLE                         R16 K11 [{"SurfaceAppearanceName"}]
       88 NAMECALL                         R17 R12 K12 ["GetFullName"]
       90 CALL                             R17 1 1
       91 SETTABLEKS                       R17 R16 K10 ["SurfaceAppearanceName"]
       93 MOVE                             R17 R12
       94 NAMECALL                         R13 R0 K13 ["fail"]
       96 CALL                             R13 4 0
       97 FORGLOOP                         R8 2 ; [-16]
       99 GETUPVAL                         R7 5
      100 GETTABLEKS                       R7 R7 K14 ["findSurfaceAppearancesWithTexturePacks"]
      102 MOVE                             R8 R2
      103 CALL                             R7 1 3
      104 FORGPREP                         R7
      105 GETIMPORT                        R12 K16 [pcall]
      107 NEWCLOSURE                       R13 P0
      108 CAPTURE                          UPVAL U7
      109 CAPTURE                          VAL R11
      110 CALL                             R12 1 2
      111 JUMPIF                           R12 ; [+28]
      112 JUMPIFNOT                        R4 ; [+11]
      113 LOADK                            R17 K17 ["Failed to download TexturePack for SurfaceAppearance '%*'."]
      114 NAMECALL                         R19 R11 K12 ["GetFullName"]
      116 CALL                             R19 1 1
      117 NAMECALL                         R17 R17 K18 ["format"]
      119 CALL                             R17 2 1
      120 MOVE                             R16 R17
      121 NAMECALL                         R14 R0 K19 ["forceError"]
      123 CALL                             R14 2 0
      124 GETUPVAL                         R16 6
      125 GETTABLEKS                       R16 R16 K8 ["Keys"]
      127 GETTABLEKS                       R16 R16 K20 ["TexturePack_DownloadFailed"]
      129 DUPTABLE                         R17 K11 [{"SurfaceAppearanceName"}]
      130 NAMECALL                         R18 R11 K12 ["GetFullName"]
      132 CALL                             R18 1 1
      133 SETTABLEKS                       R18 R17 K10 ["SurfaceAppearanceName"]
      135 MOVE                             R18 R11
      136 NAMECALL                         R14 R0 K13 ["fail"]
      138 CALL                             R14 4 0
      139 JUMP                             ; [+16]
      140 JUMPIF                           R13 ; [+15]
      141 GETUPVAL                         R16 6
      142 GETTABLEKS                       R16 R16 K8 ["Keys"]
      144 GETTABLEKS                       R16 R16 K21 ["TexturePack_Mismatch"]
      146 DUPTABLE                         R17 K11 [{"SurfaceAppearanceName"}]
      147 NAMECALL                         R18 R11 K12 ["GetFullName"]
      149 CALL                             R18 1 1
      150 SETTABLEKS                       R18 R17 K10 ["SurfaceAppearanceName"]
      152 MOVE                             R18 R11
      153 NAMECALL                         R14 R0 K13 ["fail"]
      155 CALL                             R14 4 0
      156 FORGLOOP                         R7 2 ; [-52]
      158 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UGCValidationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["util"]
       19 GETTABLEKS                       R3 R3 K10 ["Types"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R1 K11 ["validationSystem"]
       26 GETTABLEKS                       R4 R4 K12 ["ValidationEnums"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K8 [require]
       31 GETTABLEKS                       R5 R1 K11 ["validationSystem"]
       33 GETTABLEKS                       R5 R5 K13 ["ErrorSourceStrings"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K8 [require]
       38 GETTABLEKS                       R6 R1 K9 ["util"]
       40 GETTABLEKS                       R6 R6 K14 ["TexturePackUtils"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K8 [require]
       45 GETTABLEKS                       R7 R1 K15 ["flags"]
       47 GETTABLEKS                       R7 R7 K16 ["getFFlagUGCValidateMigrateSurfaceAppearanceMeshQuality"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K8 [require]
       52 GETTABLEKS                       R8 R1 K15 ["flags"]
       54 GETTABLEKS                       R8 R8 K17 ["getFFlagUGCValidateTexturePack"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K8 [require]
       59 GETTABLEKS                       R9 R1 K15 ["flags"]
       61 GETTABLEKS                       R9 R9 K18 ["getFFlagUGCValidateTexturePackOnRCCOnly"]
       63 CALL                             R8 1 1
       64 DUPTABLE                         R9 K23 [{"Publish", "Backend", "InExpServer", "Internal"}]
       65 LOADB                            R10 1
       66 SETTABLEKS                       R10 R9 K19 ["Publish"]
       68 LOADB                            R10 1
       69 SETTABLEKS                       R10 R9 K20 ["Backend"]
       71 LOADB                            R10 1
       72 SETTABLEKS                       R10 R9 K21 ["InExpServer"]
       74 LOADB                            R10 1
       75 SETTABLEKS                       R10 R9 K22 ["Internal"]
       77 DUPTABLE                         R10 K25 [{"InExpServer", "InExpClient"}]
       78 LOADB                            R11 1
       79 SETTABLEKS                       R11 R10 K21 ["InExpServer"]
       81 LOADB                            R11 1
       82 SETTABLEKS                       R11 R10 K24 ["InExpClient"]
       84 NEWTABLE                         R11 8 0
       86 SETTABLEKS                       R6 R11 K26 ["fflag"]
       88 NEWTABLE                         R12 0 4
       90 GETTABLEKS                       R13 R3 K27 ["UploadCategory"]
       92 GETTABLEKS                       R13 R13 K28 ["TORSO_AND_LIMBS"]
       94 GETTABLEKS                       R14 R3 K27 ["UploadCategory"]
       96 GETTABLEKS                       R14 R14 K29 ["DYNAMIC_HEAD"]
       98 GETTABLEKS                       R15 R3 K27 ["UploadCategory"]
      100 GETTABLEKS                       R15 R15 K30 ["LAYERED_CLOTHING"]
      102 GETTABLEKS                       R16 R3 K27 ["UploadCategory"]
      104 GETTABLEKS                       R16 R16 K31 ["RIGID_ACCESSORY"]
      106 SETLIST                          R12 R13 4 [1]
      108 SETTABLEKS                       R12 R11 K32 ["categories"]
      110 NEWTABLE                         R12 0 0
      112 SETTABLEKS                       R12 R11 K33 ["requiredData"]
      114 NEWTABLE                         R12 0 0
      116 SETTABLEKS                       R12 R11 K34 ["expectedFailures"]
      118 DUPCLOSURE                       R12 K35 [PROTO_1]
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R9
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R0
      127 SETTABLEKS                       R12 R11 K36 ["run"]
      129 RETURN                           R11 1
