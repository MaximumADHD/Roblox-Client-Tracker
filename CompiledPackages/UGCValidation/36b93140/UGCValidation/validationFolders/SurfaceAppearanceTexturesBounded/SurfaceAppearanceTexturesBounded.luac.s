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
       39 JUMPIFNOT                        R12 ; [+156]
       40 LOADK                            R14 K14 ["SurfaceAppearance"]
       41 NAMECALL                         R12 R11 K15 ["FindFirstChildWhichIsA"]
       43 CALL                             R12 2 1
       44 JUMPIFNOT                        R12 ; [+151]
       45 GETTABLEKS                       R14 R11 K16 ["Name"]
       47 GETTABLE                         R13 R4 R14
       48 JUMPIFNOT                        R13 ; [+147]
       49 GETTABLEKS                       R14 R13 K17 ["isPBR"]
       51 JUMPIFNOT                        R14 ; [+144]
       52 NEWTABLE                         R14 0 4
       54 LOADK                            R15 K18 ["ColorMap"]
       55 LOADK                            R16 K19 ["MetalnessMap"]
       56 LOADK                            R17 K20 ["NormalMap"]
       57 LOADK                            R18 K21 ["RoughnessMap"]
       58 SETLIST                          R14 R15 4 [1]
       60 GETUPVAL                         R15 1
       61 CALL                             R15 0 1
       62 JUMPIFNOT                        R15 ; [+7]
       63 FASTCALL2K                       TABLE_INSERT R14 K22 ; [+5]
       65 MOVE                             R16 R14
       66 LOADK                            R17 K22 ["EmissiveMask"]
       67 GETIMPORT                        R15 K11 [table.insert]
       69 CALL                             R15 2 0
       70 MOVE                             R15 R14
       71 LOADNIL                          R16
       72 LOADNIL                          R17
       73 FORGPREP                         R15
       74 GETTABLE                         R20 R13 R19
       75 JUMPIFNOT                        R20 ; [+118]
       76 GETTABLEKS                       R21 R20 K23 ["editable"]
       78 JUMPIFNOT                        R21 ; [+115]
       79 LOADNIL                          R21
       80 JUMPIFNOT                        R3 ; [+9]
       81 GETUPVAL                         R22 2
       82 GETTABLEKS                       R22 R22 K24 ["getTextureLimit"]
       84 MOVE                             R23 R3
       85 MOVE                             R24 R12
       86 MOVE                             R25 R19
       87 CALL                             R22 3 1
       88 MOVE                             R21 R22
       89 JUMP                             ; [+2]
       90 GETUPVAL                         R22 3
       91 GETTABLE                         R21 R22 R19
       92 GETIMPORT                        R22 K26 [pcall]
       94 NEWCLOSURE                       R23 P0
       95 CAPTURE                          UPVAL U4
       96 CAPTURE                          VAL R20
       97 CALL                             R22 1 2
       98 JUMPIF                           R22 ; [+43]
       99 GETTABLEKS                       R24 R5 K27 ["consumerEnv"]
      101 GETUPVAL                         R25 5
      102 GETTABLEKS                       R25 R25 K28 ["ConsumerEnv"]
      104 GETTABLEKS                       R25 R25 K29 ["Backend"]
      106 JUMPIFNOTEQ                      R24 R25 ; [+15]
      108 GETIMPORT                        R26 K32 [string.format]
      110 LOADK                            R27 K33 ["Failed to get texture size for '%s'. Make sure the texture exists and try again."]
      111 NAMECALL                         R32 R12 K34 ["GetFullName"]
      113 CALL                             R32 1 1
      114 MOVE                             R29 R32
      115 LOADK                            R30 K35 ["."]
      116 MOVE                             R31 R19
      117 CONCAT                           R28 R29 R31
      118 CALL                             R26 2 -1
      119 NAMECALL                         R24 R0 K7 ["fetchError"]
      121 CALL                             R24 -1 0
      122 GETUPVAL                         R26 6
      123 GETTABLEKS                       R26 R26 K36 ["Keys"]
      125 GETTABLEKS                       R26 R26 K37 ["TextureSize_FailedToLoad"]
      127 DUPTABLE                         R27 K39 [{"FullName"}]
      128 NAMECALL                         R32 R12 K34 ["GetFullName"]
      130 CALL                             R32 1 1
      131 MOVE                             R29 R32
      132 LOADK                            R30 K35 ["."]
      133 MOVE                             R31 R19
      134 CONCAT                           R28 R29 R31
      135 SETTABLEKS                       R28 R27 K38 ["FullName"]
      137 MOVE                             R28 R12
      138 NAMECALL                         R24 R0 K40 ["fail"]
      140 CALL                             R24 4 0
      141 JUMP                             ; [+52]
      142 GETTABLEKS                       R24 R23 K41 ["X"]
      144 JUMPIFLT                         R21 R24 ; [+5]
      146 GETTABLEKS                       R24 R23 K42 ["Y"]
      148 JUMPIFNOTLT                      R21 R24 ; [+45]
      150 GETUPVAL                         R26 6
      151 GETTABLEKS                       R26 R26 K36 ["Keys"]
      153 GETTABLEKS                       R26 R26 K43 ["TextureSize_TooBig"]
      155 DUPTABLE                         R27 K48 [{"Width", "Height", "FullName", "MaxSize", "FieldName"}]
      156 GETTABLEKS                       R29 R23 K41 ["X"]
      158 FASTCALL1                        TOSTRING R29 ; [+2]
      159 GETIMPORT                        R28 K50 [tostring]
      161 CALL                             R28 1 1
      162 SETTABLEKS                       R28 R27 K44 ["Width"]
      164 GETTABLEKS                       R29 R23 K42 ["Y"]
      166 FASTCALL1                        TOSTRING R29 ; [+2]
      167 GETIMPORT                        R28 K50 [tostring]
      169 CALL                             R28 1 1
      170 SETTABLEKS                       R28 R27 K45 ["Height"]
      172 NAMECALL                         R32 R12 K34 ["GetFullName"]
      174 CALL                             R32 1 1
      175 MOVE                             R29 R32
      176 LOADK                            R30 K35 ["."]
      177 MOVE                             R31 R19
      178 CONCAT                           R28 R29 R31
      179 SETTABLEKS                       R28 R27 K38 ["FullName"]
      181 FASTCALL1                        TOSTRING R21 ; [+3]
      182 MOVE                             R29 R21
      183 GETIMPORT                        R28 K50 [tostring]
      185 CALL                             R28 1 1
      186 SETTABLEKS                       R28 R27 K46 ["MaxSize"]
      188 SETTABLEKS                       R19 R27 K47 ["FieldName"]
      190 MOVE                             R28 R12
      191 NAMECALL                         R24 R0 K40 ["fail"]
      193 CALL                             R24 4 0
      194 FORGLOOP                         R15 2 ; [-121]
      196 FORGLOOP                         R7 2 ; [-162]
      198 RETURN                           R0 0

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
       57 GETIMPORT                        R8 K8 [require]
       59 GETTABLEKS                       R9 R1 K17 ["flags"]
       61 GETTABLEKS                       R9 R9 K19 ["getFFlagUGCValidateAllowEmissives"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K1 [game]
       66 LOADK                            R11 K20 ["AccessoryColorMapMaxSize"]
       67 LOADN                            R12 1024
       68 NAMECALL                         R9 R9 K21 ["DefineFastInt"]
       70 CALL                             R9 3 1
       71 GETIMPORT                        R10 K1 [game]
       73 LOADK                            R12 K22 ["AccessoryMetalnessMapMaxSize"]
       74 LOADN                            R13 256
       75 NAMECALL                         R10 R10 K21 ["DefineFastInt"]
       77 CALL                             R10 3 1
       78 GETIMPORT                        R11 K1 [game]
       80 LOADK                            R13 K23 ["AccessoryNormalMapMaxSize"]
       81 LOADN                            R14 256
       82 NAMECALL                         R11 R11 K21 ["DefineFastInt"]
       84 CALL                             R11 3 1
       85 GETIMPORT                        R12 K1 [game]
       87 LOADK                            R14 K24 ["AccessoryRoughnessMapMaxSize"]
       88 LOADN                            R15 256
       89 NAMECALL                         R12 R12 K21 ["DefineFastInt"]
       91 CALL                             R12 3 1
       92 DUPTABLE                         R13 K29 [{"ColorMap", "MetalnessMap", "NormalMap", "RoughnessMap"}]
       93 SETTABLEKS                       R9 R13 K25 ["ColorMap"]
       95 SETTABLEKS                       R10 R13 K26 ["MetalnessMap"]
       97 SETTABLEKS                       R11 R13 K27 ["NormalMap"]
       99 SETTABLEKS                       R12 R13 K28 ["RoughnessMap"]
      101 NEWTABLE                         R14 8 0
      103 NEWTABLE                         R15 0 2
      105 GETTABLEKS                       R16 R4 K30 ["UploadCategory"]
      107 GETTABLEKS                       R16 R16 K31 ["RIGID_ACCESSORY"]
      109 GETTABLEKS                       R17 R4 K30 ["UploadCategory"]
      111 GETTABLEKS                       R17 R17 K32 ["LAYERED_CLOTHING"]
      113 SETLIST                          R15 R16 2 [1]
      115 SETTABLEKS                       R15 R14 K33 ["categories"]
      117 NEWTABLE                         R15 0 0
      119 SETTABLEKS                       R15 R14 K34 ["requiredData"]
      121 NEWTABLE                         R15 0 1
      123 GETTABLEKS                       R16 R4 K35 ["SharedDataMember"]
      125 GETTABLEKS                       R16 R16 K36 ["meshTextures"]
      127 SETLIST                          R15 R16 1 [1]
      129 SETTABLEKS                       R15 R14 K37 ["conditionalData"]
      131 SETTABLEKS                       R7 R14 K38 ["fflag"]
      133 NEWTABLE                         R15 0 0
      135 SETTABLEKS                       R15 R14 K39 ["expectedFailures"]
      137 DUPCLOSURE                       R15 K40 [PROTO_1]
      138 CAPTURE                          VAL R6
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R2
      141 CAPTURE                          VAL R13
      142 CAPTURE                          VAL R0
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R5
      145 SETTABLEKS                       R15 R14 K41 ["run"]
      147 RETURN                           R14 1
