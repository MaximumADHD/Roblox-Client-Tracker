PROTO_0:
        0 GETUPVAL                         R1 1
        1 GETTABLEKS                       R0 R1 K0 ["primaryPreset"]
        3 CALL                             R0 0 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R1 ; [+2]
        3 LOADB                            R0 0 +1
        4 LOADB                            R0 1
        5 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isInitialized"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADB                            R1 1
        6 RETURN                           R1 1
        7 GETTABLEKS                       R3 R0 K1 ["settings"]
        9 JUMPIFNOTEQKNIL                  R3 ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       15 LOADK                            R3 K2 ["Settings must not be nil in AvatarSettingsContext"]
       16 GETIMPORT                        R1 K4 [assert]
       18 CALL                             R1 2 0
       19 GETTABLEKS                       R1 R0 K1 ["settings"]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R3 R4 K5 ["avatarType"]
       24 GETTABLEKS                       R6 R1 K6 ["navigationBarSettings"]
       26 GETTABLEKS                       R5 R6 K5 ["avatarType"]
       28 GETTABLEKS                       R4 R5 K7 ["value"]
       30 JUMPIFEQ                         R3 R4 ; [+2]
       32 LOADB                            R2 0 +1
       33 LOADB                            R2 1
       34 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isInitialized"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADB                            R1 1
        6 RETURN                           R1 1
        7 GETTABLEKS                       R3 R0 K1 ["settings"]
        9 JUMPIFNOTEQKNIL                  R3 ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       15 LOADK                            R3 K2 ["Settings must not be nil in AvatarSettingsContext"]
       16 GETIMPORT                        R1 K4 [assert]
       18 CALL                             R1 2 0
       19 GETTABLEKS                       R1 R0 K1 ["settings"]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R2 R3 K5 ["isAvatarTypeEqual"]
       24 MOVE                             R3 R0
       25 CALL                             R2 1 1
       26 JUMPIF                           R2 ; [+2]
       27 LOADB                            R2 0
       28 RETURN                           R2 1
       29 GETUPVAL                         R3 1
       30 GETTABLEKS                       R2 R3 K6 ["isEqual"]
       32 GETTABLEKS                       R3 R1 K7 ["bodySettings"]
       34 GETUPVAL                         R5 2
       35 GETTABLEKS                       R4 R5 K7 ["bodySettings"]
       37 CALL                             R2 2 1
       38 JUMPIF                           R2 ; [+2]
       39 LOADB                            R2 0
       40 RETURN                           R2 1
       41 GETUPVAL                         R3 3
       42 GETTABLEKS                       R2 R3 K6 ["isEqual"]
       44 GETTABLEKS                       R3 R1 K8 ["movementSettings"]
       46 GETUPVAL                         R5 2
       47 GETTABLEKS                       R4 R5 K8 ["movementSettings"]
       49 CALL                             R2 2 1
       50 JUMPIF                           R2 ; [+2]
       51 LOADB                            R2 0
       52 RETURN                           R2 1
       53 GETUPVAL                         R3 4
       54 GETTABLEKS                       R2 R3 K6 ["isEqual"]
       56 GETTABLEKS                       R3 R1 K9 ["animationSettings"]
       58 GETUPVAL                         R5 2
       59 GETTABLEKS                       R4 R5 K9 ["animationSettings"]
       61 CALL                             R2 2 1
       62 JUMPIF                           R2 ; [+2]
       63 LOADB                            R2 0
       64 RETURN                           R2 1
       65 GETUPVAL                         R3 5
       66 GETTABLEKS                       R2 R3 K6 ["isEqual"]
       68 GETTABLEKS                       R3 R1 K10 ["accessoriesSettings"]
       70 GETUPVAL                         R5 2
       71 GETTABLEKS                       R4 R5 K10 ["accessoriesSettings"]
       73 CALL                             R2 2 1
       74 JUMPIF                           R2 ; [+2]
       75 LOADB                            R2 0
       76 RETURN                           R2 1
       77 GETUPVAL                         R3 6
       78 GETTABLEKS                       R2 R3 K6 ["isEqual"]
       80 GETTABLEKS                       R3 R1 K11 ["clothingSettings"]
       82 GETUPVAL                         R5 2
       83 GETTABLEKS                       R4 R5 K11 ["clothingSettings"]
       85 CALL                             R2 2 1
       86 JUMPIF                           R2 ; [+2]
       87 LOADB                            R2 0
       88 RETURN                           R2 1
       89 LOADB                            R2 1
       90 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isInitialized"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R3 R0 K1 ["settings"]
        8 JUMPIFNOTEQKNIL                  R3 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       14 LOADK                            R3 K2 ["Settings must not be nil in AvatarSettingsContext"]
       15 GETIMPORT                        R1 K4 [assert]
       17 CALL                             R1 2 0
       18 GETTABLEKS                       R1 R0 K1 ["settings"]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R5 R1 K5 ["navigationBarSettings"]
       23 GETTABLEKS                       R4 R5 K6 ["avatarType"]
       25 GETTABLEKS                       R3 R4 K7 ["value"]
       27 SETTABLEKS                       R3 R2 K6 ["avatarType"]
       29 GETUPVAL                         R3 2
       30 GETTABLEKS                       R2 R3 K8 ["setPublishedBodySetting"]
       32 GETTABLEKS                       R3 R1 K9 ["bodySettings"]
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R4 R5 K9 ["bodySettings"]
       37 CALL                             R2 2 0
       38 GETUPVAL                         R3 3
       39 GETTABLEKS                       R2 R3 K10 ["setPublishedMovementSetting"]
       41 GETTABLEKS                       R3 R1 K11 ["movementSettings"]
       43 GETUPVAL                         R5 1
       44 GETTABLEKS                       R4 R5 K11 ["movementSettings"]
       46 CALL                             R2 2 0
       47 GETUPVAL                         R3 4
       48 GETTABLEKS                       R2 R3 K12 ["setPublishedAnimationSetting"]
       50 GETTABLEKS                       R3 R1 K13 ["animationSettings"]
       52 GETUPVAL                         R5 1
       53 GETTABLEKS                       R4 R5 K13 ["animationSettings"]
       55 CALL                             R2 2 0
       56 GETUPVAL                         R3 5
       57 GETTABLEKS                       R2 R3 K14 ["setPublishedAccessoriesSetting"]
       59 GETTABLEKS                       R3 R1 K15 ["accessoriesSettings"]
       61 GETUPVAL                         R5 1
       62 GETTABLEKS                       R4 R5 K15 ["accessoriesSettings"]
       64 CALL                             R2 2 0
       65 GETUPVAL                         R3 6
       66 GETTABLEKS                       R2 R3 K16 ["setPublishedClothingSetting"]
       68 GETTABLEKS                       R3 R1 K17 ["clothingSettings"]
       70 GETUPVAL                         R5 1
       71 GETTABLEKS                       R4 R5 K17 ["clothingSettings"]
       73 CALL                             R2 2 0
       74 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isInitialized"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R3 R0 K1 ["settings"]
        8 JUMPIFNOTEQKNIL                  R3 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       14 LOADK                            R3 K2 ["Settings must not be nil in AvatarSettingsContext"]
       15 GETIMPORT                        R1 K4 [assert]
       17 CALL                             R1 2 0
       18 GETTABLEKS                       R1 R0 K1 ["settings"]
       20 GETTABLEKS                       R4 R1 K5 ["navigationBarSettings"]
       22 GETTABLEKS                       R3 R4 K6 ["avatarType"]
       24 GETTABLEKS                       R2 R3 K7 ["set"]
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R3 R4 K6 ["avatarType"]
       29 CALL                             R2 1 0
       30 GETUPVAL                         R3 2
       31 GETTABLEKS                       R2 R3 K8 ["setUnpublishedBodySetting"]
       33 GETTABLEKS                       R3 R1 K9 ["bodySettings"]
       35 GETUPVAL                         R5 1
       36 GETTABLEKS                       R4 R5 K9 ["bodySettings"]
       38 CALL                             R2 2 0
       39 GETUPVAL                         R3 3
       40 GETTABLEKS                       R2 R3 K10 ["setUnpublishedMovementSetting"]
       42 GETTABLEKS                       R3 R1 K11 ["movementSettings"]
       44 GETUPVAL                         R5 1
       45 GETTABLEKS                       R4 R5 K11 ["movementSettings"]
       47 CALL                             R2 2 0
       48 GETUPVAL                         R3 4
       49 GETTABLEKS                       R2 R3 K12 ["setUnpublishedAnimationSetting"]
       51 GETTABLEKS                       R3 R1 K13 ["animationSettings"]
       53 GETUPVAL                         R5 1
       54 GETTABLEKS                       R4 R5 K13 ["animationSettings"]
       56 CALL                             R2 2 0
       57 GETUPVAL                         R3 5
       58 GETTABLEKS                       R2 R3 K14 ["setUnpublishedAccessoriesSetting"]
       60 GETTABLEKS                       R3 R1 K15 ["accessoriesSettings"]
       62 GETUPVAL                         R5 1
       63 GETTABLEKS                       R4 R5 K15 ["accessoriesSettings"]
       65 CALL                             R2 2 0
       66 GETUPVAL                         R3 6
       67 GETTABLEKS                       R2 R3 K16 ["setUnpublishedClothingSetting"]
       69 GETTABLEKS                       R3 R1 K17 ["clothingSettings"]
       71 GETUPVAL                         R5 1
       72 GETTABLEKS                       R4 R5 K17 ["clothingSettings"]
       74 CALL                             R2 2 0
       75 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Components"]
       13 GETTABLEKS                       R3 R4 K8 ["Contexts"]
       15 GETTABLEKS                       R2 R3 K9 ["AvatarSettingsContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R7 R0 K6 ["Src"]
       22 GETTABLEKS                       R6 R7 K7 ["Components"]
       24 GETTABLEKS                       R5 R6 K8 ["Contexts"]
       26 GETTABLEKS                       R4 R5 K10 ["PublishProvider"]
       28 GETTABLEKS                       R3 R4 K11 ["PublishedSettingsTypes"]
       30 CALL                             R2 1 1
       31 GETIMPORT                        R3 K5 [require]
       33 GETTABLEKS                       R8 R0 K6 ["Src"]
       35 GETTABLEKS                       R7 R8 K7 ["Components"]
       37 GETTABLEKS                       R6 R7 K8 ["Contexts"]
       39 GETTABLEKS                       R5 R6 K10 ["PublishProvider"]
       41 GETTABLEKS                       R4 R5 K12 ["createPublishedSettings"]
       43 CALL                             R3 1 1
       44 GETIMPORT                        R4 K5 [require]
       46 GETTABLEKS                       R10 R0 K6 ["Src"]
       48 GETTABLEKS                       R9 R10 K7 ["Components"]
       50 GETTABLEKS                       R8 R9 K8 ["Contexts"]
       52 GETTABLEKS                       R7 R8 K10 ["PublishProvider"]
       54 GETTABLEKS                       R6 R7 K13 ["ConversionFunctions"]
       56 GETTABLEKS                       R5 R6 K14 ["publishedAccessoriesSettingUtil"]
       58 CALL                             R4 1 1
       59 GETIMPORT                        R5 K5 [require]
       61 GETTABLEKS                       R11 R0 K6 ["Src"]
       63 GETTABLEKS                       R10 R11 K7 ["Components"]
       65 GETTABLEKS                       R9 R10 K8 ["Contexts"]
       67 GETTABLEKS                       R8 R9 K10 ["PublishProvider"]
       69 GETTABLEKS                       R7 R8 K13 ["ConversionFunctions"]
       71 GETTABLEKS                       R6 R7 K15 ["publishedAnimationSettingUtil"]
       73 CALL                             R5 1 1
       74 GETIMPORT                        R6 K5 [require]
       76 GETTABLEKS                       R12 R0 K6 ["Src"]
       78 GETTABLEKS                       R11 R12 K7 ["Components"]
       80 GETTABLEKS                       R10 R11 K8 ["Contexts"]
       82 GETTABLEKS                       R9 R10 K10 ["PublishProvider"]
       84 GETTABLEKS                       R8 R9 K13 ["ConversionFunctions"]
       86 GETTABLEKS                       R7 R8 K16 ["publishedBodySettingUtil"]
       88 CALL                             R6 1 1
       89 GETIMPORT                        R7 K5 [require]
       91 GETTABLEKS                       R13 R0 K6 ["Src"]
       93 GETTABLEKS                       R12 R13 K7 ["Components"]
       95 GETTABLEKS                       R11 R12 K8 ["Contexts"]
       97 GETTABLEKS                       R10 R11 K10 ["PublishProvider"]
       99 GETTABLEKS                       R9 R10 K13 ["ConversionFunctions"]
      101 GETTABLEKS                       R8 R9 K17 ["publishedClothingSettingUtil"]
      103 CALL                             R7 1 1
      104 GETIMPORT                        R8 K5 [require]
      106 GETTABLEKS                       R14 R0 K6 ["Src"]
      108 GETTABLEKS                       R13 R14 K7 ["Components"]
      110 GETTABLEKS                       R12 R13 K8 ["Contexts"]
      112 GETTABLEKS                       R11 R12 K10 ["PublishProvider"]
      114 GETTABLEKS                       R10 R11 K13 ["ConversionFunctions"]
      116 GETTABLEKS                       R9 R10 K18 ["publishedMovementSettingUtil"]
      118 CALL                             R8 1 1
      119 LOADNIL                          R9
      120 NEWTABLE                         R10 8 0
      122 NEWCLOSURE                       R11 P0
      123 CAPTURE                          REF R9
      124 CAPTURE                          VAL R3
      125 SETTABLEKS                       R11 R10 K19 ["initialize"]
      127 NEWCLOSURE                       R11 P1
      128 CAPTURE                          REF R9
      129 SETTABLEKS                       R11 R10 K20 ["isInitialized"]
      131 NEWCLOSURE                       R11 P2
      132 CAPTURE                          VAL R10
      133 CAPTURE                          REF R9
      134 SETTABLEKS                       R11 R10 K21 ["isAvatarTypeEqual"]
      136 NEWCLOSURE                       R11 P3
      137 CAPTURE                          VAL R10
      138 CAPTURE                          VAL R6
      139 CAPTURE                          REF R9
      140 CAPTURE                          VAL R8
      141 CAPTURE                          VAL R5
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R7
      144 SETTABLEKS                       R11 R10 K22 ["isEqualToCurrentSettings"]
      146 NEWCLOSURE                       R11 P4
      147 CAPTURE                          VAL R10
      148 CAPTURE                          REF R9
      149 CAPTURE                          VAL R6
      150 CAPTURE                          VAL R8
      151 CAPTURE                          VAL R5
      152 CAPTURE                          VAL R4
      153 CAPTURE                          VAL R7
      154 SETTABLEKS                       R11 R10 K23 ["saveUnpublishedSettings"]
      156 NEWCLOSURE                       R11 P5
      157 CAPTURE                          VAL R10
      158 CAPTURE                          REF R9
      159 CAPTURE                          VAL R6
      160 CAPTURE                          VAL R8
      161 CAPTURE                          VAL R5
      162 CAPTURE                          VAL R4
      163 CAPTURE                          VAL R7
      164 SETTABLEKS                       R11 R10 K24 ["discardUnpublishedSettings"]
      166 CLOSEUPVALS                      R9
      167 RETURN                           R10 1
