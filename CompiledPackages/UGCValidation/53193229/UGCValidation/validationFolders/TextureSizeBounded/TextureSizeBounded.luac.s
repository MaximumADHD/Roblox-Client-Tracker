PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetEditableImageSize"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R7 K1 [pcall]
        2 NEWCLOSURE                       R8 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R7 1 2
        6 JUMPIF                           R7 ; [+31]
        7 JUMPIFNOT                        R6 ; [+17]
        8 GETTABLEKS                       R9 R6 K2 ["consumerEnv"]
       10 GETUPVAL                         R10 1
       11 GETTABLEKS                       R10 R10 K3 ["ConsumerEnv"]
       13 GETTABLEKS                       R10 R10 K4 ["Backend"]
       15 JUMPIFNOTEQ                      R9 R10 ; [+9]
       17 GETIMPORT                        R11 K7 [string.format]
       19 LOADK                            R12 K8 ["Failed to get texture size for '%s'. Make sure the texture exists and try again."]
       20 MOVE                             R13 R2
       21 CALL                             R11 2 -1
       22 NAMECALL                         R9 R4 K9 ["fetchError"]
       24 CALL                             R9 -1 0
       25 GETUPVAL                         R11 2
       26 GETTABLEKS                       R11 R11 K10 ["Keys"]
       28 GETTABLEKS                       R11 R11 K11 ["TextureSize_FailedToLoad"]
       30 DUPTABLE                         R12 K13 [{"FullName"}]
       31 SETTABLEKS                       R2 R12 K12 ["FullName"]
       33 MOVE                             R13 R5
       34 NAMECALL                         R9 R4 K14 ["fail"]
       36 CALL                             R9 4 0
       37 RETURN                           R0 0
       38 GETTABLEKS                       R9 R8 K15 ["X"]
       40 JUMPIFLT                         R1 R9 ; [+5]
       42 GETTABLEKS                       R9 R8 K16 ["Y"]
       44 JUMPIFNOTLT                      R1 R9 ; [+38]
       46 GETUPVAL                         R11 2
       47 GETTABLEKS                       R11 R11 K10 ["Keys"]
       49 GETTABLEKS                       R11 R11 K17 ["TextureSize_TooBig"]
       51 DUPTABLE                         R12 K22 [{"Width", "Height", "FullName", "MaxSize", "FieldName"}]
       52 GETTABLEKS                       R14 R8 K15 ["X"]
       54 FASTCALL1                        TOSTRING R14 ; [+2]
       55 GETIMPORT                        R13 K24 [tostring]
       57 CALL                             R13 1 1
       58 SETTABLEKS                       R13 R12 K18 ["Width"]
       60 GETTABLEKS                       R14 R8 K16 ["Y"]
       62 FASTCALL1                        TOSTRING R14 ; [+2]
       63 GETIMPORT                        R13 K24 [tostring]
       65 CALL                             R13 1 1
       66 SETTABLEKS                       R13 R12 K19 ["Height"]
       68 SETTABLEKS                       R2 R12 K12 ["FullName"]
       70 FASTCALL1                        TOSTRING R1 ; [+3]
       71 MOVE                             R14 R1
       72 GETIMPORT                        R13 K24 [tostring]
       74 CALL                             R13 1 1
       75 SETTABLEKS                       R13 R12 K20 ["MaxSize"]
       77 SETTABLEKS                       R3 R12 K21 ["FieldName"]
       79 MOVE                             R13 R5
       80 NAMECALL                         R9 R4 K14 ["fail"]
       82 CALL                             R9 4 0
       83 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["rootInstance"]
        2 GETTABLEKS                       R3 R1 K1 ["uploadEnum"]
        4 GETTABLEKS                       R3 R3 K2 ["assetType"]
        6 GETTABLEKS                       R4 R1 K3 ["meshTextures"]
        8 GETTABLEKS                       R5 R1 K4 ["consumerConfig"]
       10 GETTABLEKS                       R6 R1 K5 ["uploadCategory"]
       12 JUMPIFNOT                        R4 ; [+5]
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R7 R7 K6 ["DATA_FETCH_FAILURE"]
       16 JUMPIFNOTEQ                      R4 R7 ; [+6]
       18 LOADK                            R9 K7 ["Failed to load texture data for texture size check"]
       19 NAMECALL                         R7 R0 K8 ["fetchError"]
       21 CALL                             R7 2 0
       22 RETURN                           R0 0
       23 NAMECALL                         R7 R2 K9 ["GetDescendants"]
       25 CALL                             R7 1 1
       26 FASTCALL2                        TABLE_INSERT R7 R2 ; [+5]
       28 MOVE                             R9 R7
       29 MOVE                             R10 R2
       30 GETIMPORT                        R8 K12 [table.insert]
       32 CALL                             R8 2 0
       33 MOVE                             R8 R7
       34 LOADNIL                          R9
       35 LOADNIL                          R10
       36 FORGPREP                         R8
       37 LOADNIL                          R13
       38 LOADK                            R14 K13 [""]
       39 LOADK                            R17 K14 ["MeshPart"]
       40 NAMECALL                         R15 R12 K15 ["IsA"]
       42 CALL                             R15 2 1
       43 JUMPIFNOT                        R15 ; [+4]
       44 MOVE                             R13 R12
       45 GETTABLEKS                       R14 R12 K16 ["Name"]
       47 JUMP                             ; [+13]
       48 LOADK                            R17 K17 ["Part"]
       49 NAMECALL                         R15 R12 K15 ["IsA"]
       51 CALL                             R15 2 1
       52 JUMPIFNOT                        R15 ; [+8]
       53 LOADK                            R17 K18 ["SpecialMesh"]
       54 NAMECALL                         R15 R12 K19 ["FindFirstChildOfClass"]
       56 CALL                             R15 2 1
       57 JUMPIFNOT                        R15 ; [+3]
       58 MOVE                             R13 R15
       59 GETTABLEKS                       R14 R12 K16 ["Name"]
       61 JUMPIFNOT                        R13 ; [+112]
       62 GETTABLE                         R15 R4 R14
       63 JUMPIFNOT                        R15 ; [+110]
       64 LOADB                            R16 1
       65 GETUPVAL                         R17 1
       66 GETTABLEKS                       R17 R17 K20 ["UploadCategory"]
       68 GETTABLEKS                       R17 R17 K21 ["TORSO_AND_LIMBS"]
       70 JUMPIFEQ                         R6 R17 ; [+10]
       72 GETUPVAL                         R17 1
       73 GETTABLEKS                       R17 R17 K20 ["UploadCategory"]
       75 GETTABLEKS                       R17 R17 K22 ["DYNAMIC_HEAD"]
       77 JUMPIFEQ                         R6 R17 ; [+2]
       79 LOADB                            R16 0 +1
       80 LOADB                            R16 1
       81 GETTABLEKS                       R17 R15 K23 ["isPBR"]
       83 JUMPIFNOT                        R17 ; [+49]
       84 JUMPIFNOT                        R16 ; [+48]
       85 LOADK                            R19 K24 ["SurfaceAppearance"]
       86 NAMECALL                         R17 R13 K25 ["FindFirstChildWhichIsA"]
       88 CALL                             R17 2 1
       89 JUMPIFNOT                        R17 ; [+84]
       90 NEWTABLE                         R18 0 4
       92 LOADK                            R19 K26 ["ColorMap"]
       93 LOADK                            R20 K27 ["MetalnessMap"]
       94 LOADK                            R21 K28 ["NormalMap"]
       95 LOADK                            R22 K29 ["RoughnessMap"]
       96 SETLIST                          R18 R19 4 [1]
       98 MOVE                             R19 R18
       99 LOADNIL                          R20
      100 LOADNIL                          R21
      101 FORGPREP                         R19
      102 GETTABLE                         R24 R15 R23
      103 JUMPIFNOT                        R24 ; [+26]
      104 GETTABLEKS                       R25 R24 K30 ["editable"]
      106 JUMPIFNOT                        R25 ; [+23]
      107 GETUPVAL                         R25 2
      108 GETTABLEKS                       R25 R25 K31 ["getTextureLimit"]
      110 MOVE                             R26 R3
      111 MOVE                             R27 R17
      112 MOVE                             R28 R23
      113 CALL                             R25 3 1
      114 GETUPVAL                         R26 3
      115 GETTABLEKS                       R27 R24 K30 ["editable"]
      117 MOVE                             R28 R25
      118 NAMECALL                         R33 R17 K32 ["GetFullName"]
      120 CALL                             R33 1 1
      121 MOVE                             R30 R33
      122 LOADK                            R31 K33 ["."]
      123 MOVE                             R32 R23
      124 CONCAT                           R29 R30 R32
      125 MOVE                             R30 R23
      126 MOVE                             R31 R0
      127 MOVE                             R32 R17
      128 MOVE                             R33 R5
      129 CALL                             R26 7 0
      130 FORGLOOP                         R19 2 ; [-29]
      132 JUMP                             ; [+41]
      133 GETTABLEKS                       R17 R15 K23 ["isPBR"]
      135 JUMPIF                           R17 ; [+38]
      136 GETTABLEKS                       R17 R15 K34 ["Texture"]
      138 JUMPIFNOT                        R17 ; [+35]
      139 GETTABLEKS                       R17 R15 K34 ["Texture"]
      141 GETTABLEKS                       R17 R17 K30 ["editable"]
      143 JUMPIFNOT                        R17 ; [+30]
      144 LOADNIL                          R17
      145 LOADK                            R20 K14 ["MeshPart"]
      146 NAMECALL                         R18 R13 K15 ["IsA"]
      148 CALL                             R18 2 1
      149 JUMPIFNOT                        R18 ; [+2]
      150 LOADK                            R17 K35 ["TextureID"]
      151 JUMP                             ; [+1]
      152 LOADK                            R17 K36 ["TextureId"]
      153 GETUPVAL                         R18 2
      154 GETTABLEKS                       R18 R18 K31 ["getTextureLimit"]
      156 MOVE                             R19 R3
      157 MOVE                             R20 R13
      158 MOVE                             R21 R17
      159 CALL                             R18 3 1
      160 GETUPVAL                         R19 3
      161 GETTABLEKS                       R20 R15 K34 ["Texture"]
      163 GETTABLEKS                       R20 R20 K30 ["editable"]
      165 MOVE                             R21 R18
      166 NAMECALL                         R22 R13 K32 ["GetFullName"]
      168 CALL                             R22 1 1
      169 MOVE                             R23 R17
      170 MOVE                             R24 R0
      171 MOVE                             R25 R13
      172 MOVE                             R26 R5
      173 CALL                             R19 7 0
      174 FORGLOOP                         R8 2 ; [-138]
      176 RETURN                           R0 0

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
       57 NEWTABLE                         R8 8 0
       59 NEWTABLE                         R9 0 4
       61 GETTABLEKS                       R10 R4 K19 ["UploadCategory"]
       63 GETTABLEKS                       R10 R10 K20 ["TORSO_AND_LIMBS"]
       65 GETTABLEKS                       R11 R4 K19 ["UploadCategory"]
       67 GETTABLEKS                       R11 R11 K21 ["DYNAMIC_HEAD"]
       69 GETTABLEKS                       R12 R4 K19 ["UploadCategory"]
       71 GETTABLEKS                       R12 R12 K22 ["LAYERED_CLOTHING"]
       73 GETTABLEKS                       R13 R4 K19 ["UploadCategory"]
       75 GETTABLEKS                       R13 R13 K23 ["RIGID_ACCESSORY"]
       77 SETLIST                          R9 R10 4 [1]
       79 SETTABLEKS                       R9 R8 K24 ["categories"]
       81 NEWTABLE                         R9 0 0
       83 SETTABLEKS                       R9 R8 K25 ["requiredData"]
       85 NEWTABLE                         R9 0 1
       87 GETTABLEKS                       R10 R4 K26 ["SharedDataMember"]
       89 GETTABLEKS                       R10 R10 K27 ["meshTextures"]
       91 SETLIST                          R9 R10 1 [1]
       93 SETTABLEKS                       R9 R8 K28 ["conditionalData"]
       95 SETTABLEKS                       R7 R8 K29 ["fflag"]
       97 NEWTABLE                         R9 0 0
       99 SETTABLEKS                       R9 R8 K30 ["expectedFailures"]
      101 DUPCLOSURE                       R9 K31 [PROTO_1]
      102 CAPTURE                          VAL R0
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R5
      105 DUPCLOSURE                       R10 K32 [PROTO_2]
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R9
      110 SETTABLEKS                       R10 R8 K33 ["run"]
      112 RETURN                           R8 1
