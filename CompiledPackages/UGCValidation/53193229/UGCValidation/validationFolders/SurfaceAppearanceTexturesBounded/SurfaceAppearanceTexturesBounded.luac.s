PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["editable"]
        4 NAMECALL                         R0 R0 K1 ["GetEditableImageSize"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["rootInstance"]
        2 GETTABLEKS                       R3 R1 K1 ["uploadEnum"]
        4 GETTABLEKS                       R3 R3 K2 ["assetType"]
        6 GETTABLEKS                       R4 R1 K3 ["meshTextures"]
        8 GETTABLEKS                       R5 R1 K4 ["consumerConfig"]
       10 JUMPIFNOT                        R4 ; [+5]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K5 ["DATA_FETCH_FAILURE"]
       14 JUMPIFNOTEQ                      R4 R6 ; [+6]
       16 LOADK                            R8 K6 ["Failed to load texture data for surface appearance texture bounds check"]
       17 NAMECALL                         R6 R0 K7 ["fetchError"]
       19 CALL                             R6 2 0
       20 RETURN                           R0 0
       21 NAMECALL                         R6 R2 K8 ["GetDescendants"]
       23 CALL                             R6 1 1
       24 FASTCALL2                        TABLE_INSERT R6 R2 ; [+5]
       26 MOVE                             R8 R6
       27 MOVE                             R9 R2
       28 GETIMPORT                        R7 K11 [table.insert]
       30 CALL                             R7 2 0
       31 MOVE                             R7 R6
       32 LOADNIL                          R8
       33 LOADNIL                          R9
       34 FORGPREP                         R7
       35 LOADK                            R14 K12 ["MeshPart"]
       36 NAMECALL                         R12 R11 K13 ["IsA"]
       38 CALL                             R12 2 1
       39 JUMPIFNOT                        R12 ; [+146]
       40 LOADK                            R14 K14 ["SurfaceAppearance"]
       41 NAMECALL                         R12 R11 K15 ["FindFirstChildWhichIsA"]
       43 CALL                             R12 2 1
       44 JUMPIFNOT                        R12 ; [+141]
       45 GETTABLEKS                       R14 R11 K16 ["Name"]
       47 GETTABLE                         R13 R4 R14
       48 JUMPIFNOT                        R13 ; [+137]
       49 GETTABLEKS                       R14 R13 K17 ["isPBR"]
       51 JUMPIFNOT                        R14 ; [+134]
       52 NEWTABLE                         R14 0 4
       54 LOADK                            R15 K18 ["ColorMap"]
       55 LOADK                            R16 K19 ["MetalnessMap"]
       56 LOADK                            R17 K20 ["NormalMap"]
       57 LOADK                            R18 K21 ["RoughnessMap"]
       58 SETLIST                          R14 R15 4 [1]
       60 MOVE                             R15 R14
       61 LOADNIL                          R16
       62 LOADNIL                          R17
       63 FORGPREP                         R15
       64 GETTABLE                         R20 R13 R19
       65 JUMPIFNOT                        R20 ; [+118]
       66 GETTABLEKS                       R21 R20 K22 ["editable"]
       68 JUMPIFNOT                        R21 ; [+115]
       69 LOADNIL                          R21
       70 JUMPIFNOT                        R3 ; [+9]
       71 GETUPVAL                         R22 1
       72 GETTABLEKS                       R22 R22 K23 ["getTextureLimit"]
       74 MOVE                             R23 R3
       75 MOVE                             R24 R12
       76 MOVE                             R25 R19
       77 CALL                             R22 3 1
       78 MOVE                             R21 R22
       79 JUMP                             ; [+2]
       80 GETUPVAL                         R22 2
       81 GETTABLE                         R21 R22 R19
       82 GETIMPORT                        R22 K25 [pcall]
       84 NEWCLOSURE                       R23 P0
       85 CAPTURE                          UPVAL U3
       86 CAPTURE                          VAL R20
       87 CALL                             R22 1 2
       88 JUMPIF                           R22 ; [+43]
       89 GETTABLEKS                       R24 R5 K26 ["consumerEnv"]
       91 GETUPVAL                         R25 4
       92 GETTABLEKS                       R25 R25 K27 ["ConsumerEnv"]
       94 GETTABLEKS                       R25 R25 K28 ["Backend"]
       96 JUMPIFNOTEQ                      R24 R25 ; [+15]
       98 GETIMPORT                        R26 K31 [string.format]
      100 LOADK                            R27 K32 ["Failed to get texture size for '%s'. Make sure the texture exists and try again."]
      101 NAMECALL                         R32 R12 K33 ["GetFullName"]
      103 CALL                             R32 1 1
      104 MOVE                             R29 R32
      105 LOADK                            R30 K34 ["."]
      106 MOVE                             R31 R19
      107 CONCAT                           R28 R29 R31
      108 CALL                             R26 2 -1
      109 NAMECALL                         R24 R0 K7 ["fetchError"]
      111 CALL                             R24 -1 0
      112 GETUPVAL                         R26 5
      113 GETTABLEKS                       R26 R26 K35 ["Keys"]
      115 GETTABLEKS                       R26 R26 K36 ["TextureSize_FailedToLoad"]
      117 DUPTABLE                         R27 K38 [{"FullName"}]
      118 NAMECALL                         R32 R12 K33 ["GetFullName"]
      120 CALL                             R32 1 1
      121 MOVE                             R29 R32
      122 LOADK                            R30 K34 ["."]
      123 MOVE                             R31 R19
      124 CONCAT                           R28 R29 R31
      125 SETTABLEKS                       R28 R27 K37 ["FullName"]
      127 MOVE                             R28 R12
      128 NAMECALL                         R24 R0 K39 ["fail"]
      130 CALL                             R24 4 0
      131 JUMP                             ; [+52]
      132 GETTABLEKS                       R24 R23 K40 ["X"]
      134 JUMPIFLT                         R21 R24 ; [+5]
      136 GETTABLEKS                       R24 R23 K41 ["Y"]
      138 JUMPIFNOTLT                      R21 R24 ; [+45]
      140 GETUPVAL                         R26 5
      141 GETTABLEKS                       R26 R26 K35 ["Keys"]
      143 GETTABLEKS                       R26 R26 K42 ["TextureSize_TooBig"]
      145 DUPTABLE                         R27 K47 [{"Width", "Height", "FullName", "MaxSize", "FieldName"}]
      146 GETTABLEKS                       R29 R23 K40 ["X"]
      148 FASTCALL1                        TOSTRING R29 ; [+2]
      149 GETIMPORT                        R28 K49 [tostring]
      151 CALL                             R28 1 1
      152 SETTABLEKS                       R28 R27 K43 ["Width"]
      154 GETTABLEKS                       R29 R23 K41 ["Y"]
      156 FASTCALL1                        TOSTRING R29 ; [+2]
      157 GETIMPORT                        R28 K49 [tostring]
      159 CALL                             R28 1 1
      160 SETTABLEKS                       R28 R27 K44 ["Height"]
      162 NAMECALL                         R32 R12 K33 ["GetFullName"]
      164 CALL                             R32 1 1
      165 MOVE                             R29 R32
      166 LOADK                            R30 K34 ["."]
      167 MOVE                             R31 R19
      168 CONCAT                           R28 R29 R31
      169 SETTABLEKS                       R28 R27 K37 ["FullName"]
      171 FASTCALL1                        TOSTRING R21 ; [+3]
      172 MOVE                             R29 R21
      173 GETIMPORT                        R28 K49 [tostring]
      175 CALL                             R28 1 1
      176 SETTABLEKS                       R28 R27 K45 ["MaxSize"]
      178 SETTABLEKS                       R19 R27 K46 ["FieldName"]
      180 MOVE                             R28 R12
      181 NAMECALL                         R24 R0 K39 ["fail"]
      183 CALL                             R24 4 0
      184 FORGLOOP                         R15 2 ; [-121]
      186 FORGLOOP                         R7 2 ; [-152]
      188 RETURN                           R0 0

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
       17 GETTABLEKS                       R3 R1 K9 ["ConstantsInterface"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K8 [require]
       22 GETTABLEKS                       R4 R1 K10 ["util"]
       24 GETTABLEKS                       R4 R4 K11 ["Types"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K8 [require]
       29 GETTABLEKS                       R5 R1 K12 ["validationSystem"]
       31 GETTABLEKS                       R5 R5 K13 ["ValidationEnums"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K8 [require]
       36 GETTABLEKS                       R6 R1 K12 ["validationSystem"]
       38 GETTABLEKS                       R6 R6 K14 ["ErrorSourceStrings"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K8 [require]
       43 GETTABLEKS                       R7 R1 K12 ["validationSystem"]
       45 GETTABLEKS                       R7 R7 K15 ["dataFetchModules"]
       47 GETTABLEKS                       R7 R7 K16 ["FetchAllDesiredData"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K8 [require]
       52 GETTABLEKS                       R8 R1 K17 ["flags"]
       54 GETTABLEKS                       R8 R8 K18 ["getFFlagUGCValidateMigrateTextureTransparency"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K1 [game]
       59 LOADK                            R10 K19 ["AccessoryColorMapMaxSize"]
       60 LOADN                            R11 0
       61 NAMECALL                         R8 R8 K20 ["DefineFastInt"]
       63 CALL                             R8 3 1
       64 GETIMPORT                        R9 K1 [game]
       66 LOADK                            R11 K21 ["AccessoryMetalnessMapMaxSize"]
       67 LOADN                            R12 0
       68 NAMECALL                         R9 R9 K20 ["DefineFastInt"]
       70 CALL                             R9 3 1
       71 GETIMPORT                        R10 K1 [game]
       73 LOADK                            R12 K22 ["AccessoryNormalMapMaxSize"]
       74 LOADN                            R13 0
       75 NAMECALL                         R10 R10 K20 ["DefineFastInt"]
       77 CALL                             R10 3 1
       78 GETIMPORT                        R11 K1 [game]
       80 LOADK                            R13 K23 ["AccessoryRoughnessMapMaxSize"]
       81 LOADN                            R14 0
       82 NAMECALL                         R11 R11 K20 ["DefineFastInt"]
       84 CALL                             R11 3 1
       85 DUPTABLE                         R12 K28 [{"ColorMap", "MetalnessMap", "NormalMap", "RoughnessMap"}]
       86 SETTABLEKS                       R8 R12 K24 ["ColorMap"]
       88 SETTABLEKS                       R9 R12 K25 ["MetalnessMap"]
       90 SETTABLEKS                       R10 R12 K26 ["NormalMap"]
       92 SETTABLEKS                       R11 R12 K27 ["RoughnessMap"]
       94 NEWTABLE                         R13 8 0
       96 NEWTABLE                         R14 0 2
       98 GETTABLEKS                       R15 R4 K29 ["UploadCategory"]
      100 GETTABLEKS                       R15 R15 K30 ["RIGID_ACCESSORY"]
      102 GETTABLEKS                       R16 R4 K29 ["UploadCategory"]
      104 GETTABLEKS                       R16 R16 K31 ["LAYERED_CLOTHING"]
      106 SETLIST                          R14 R15 2 [1]
      108 SETTABLEKS                       R14 R13 K32 ["categories"]
      110 NEWTABLE                         R14 0 0
      112 SETTABLEKS                       R14 R13 K33 ["requiredData"]
      114 NEWTABLE                         R14 0 1
      116 GETTABLEKS                       R15 R4 K34 ["SharedDataMember"]
      118 GETTABLEKS                       R15 R15 K35 ["meshTextures"]
      120 SETLIST                          R14 R15 1 [1]
      122 SETTABLEKS                       R14 R13 K36 ["conditionalData"]
      124 SETTABLEKS                       R7 R13 K37 ["fflag"]
      126 NEWTABLE                         R14 0 0
      128 SETTABLEKS                       R14 R13 K38 ["expectedFailures"]
      130 DUPCLOSURE                       R14 K39 [PROTO_1]
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R12
      134 CAPTURE                          VAL R0
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R5
      137 SETTABLEKS                       R14 R13 K40 ["run"]
      139 RETURN                           R13 1
