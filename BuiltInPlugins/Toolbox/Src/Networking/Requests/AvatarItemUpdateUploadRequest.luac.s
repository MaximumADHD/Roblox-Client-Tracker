PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+10]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R3 K3 ["Lua toolbox: Could not update avatar item: "]
        8 FASTCALL1                        TOSTRING R0 ; [+3]
        9 MOVE                             R5 R0
       10 GETIMPORT                        R4 K5 [tostring]
       12 CALL                             R4 1 1
       13 CONCAT                           R2 R3 R4
       14 CALL                             R1 1 0
       15 GETUPVAL                         R1 1
       16 GETUPVAL                         R3 2
       17 MOVE                             R4 R0
       18 CALL                             R3 1 -1
       19 NAMECALL                         R1 R1 K6 ["dispatch"]
       21 CALL                             R1 -1 0
       22 GETUPVAL                         R1 1
       23 GETUPVAL                         R3 3
       24 LOADB                            R4 0
       25 CALL                             R3 1 -1
       26 NAMECALL                         R1 R1 K6 ["dispatch"]
       28 CALL                             R1 -1 0
       29 GETUPVAL                         R1 4
       30 GETTABLEKS                       R1 R1 K7 ["incrementUploadAssetFailure"]
       32 GETUPVAL                         R2 5
       33 CALL                             R1 1 0
       34 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["LoadAsset"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_3:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 GETUPVAL                         R5 4
        5 GETUPVAL                         R6 5
        6 GETTABLEKS                       R6 R6 K0 ["Name"]
        8 GETUPVAL                         R7 6
        9 GETUPVAL                         R8 7
       10 GETUPVAL                         R9 8
       11 NAMECALL                         R0 R0 K1 ["CreateAssetAndWaitForAssetId"]
       13 CALL                             R0 9 -1
       14 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R1 0
        3 GETTABLEN                        R0 R1 1
        4 JUMPIFNOT                        R0 ; [+63]
        5 GETUPVAL                         R1 1
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 LOADNIL                          R2
        9 GETIMPORT                        R3 K1 [pcall]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CALL                             R3 1 2
       15 JUMPIFNOT                        R3 ; [+20]
       16 FASTCALL1                        TYPEOF R4 ; [+3]
       17 MOVE                             R6 R4
       18 GETIMPORT                        R5 K3 [typeof]
       20 CALL                             R5 1 1
       21 JUMPIFNOTEQKS                    R5 K4 ["Instance"] ; [+14]
       23 LOADK                            R7 K5 ["MeshPart"]
       24 LOADB                            R8 1
       25 NAMECALL                         R5 R4 K6 ["FindFirstChildWhichIsA"]
       27 CALL                             R5 3 1
       28 JUMPIFNOT                        R5 ; [+4]
       29 GETUPVAL                         R5 1
       30 MOVE                             R6 R4
       31 CALL                             R5 1 1
       32 MOVE                             R2 R5
       33 NAMECALL                         R5 R4 K7 ["Destroy"]
       35 CALL                             R5 1 0
       36 JUMPIFEQKNIL                     R2 ; [+31]
       38 GETTABLEKS                       R5 R1 K8 ["hasEmissive"]
       40 GETTABLEKS                       R6 R2 K8 ["hasEmissive"]
       42 JUMPIFEQ                         R5 R6 ; [+10]
       44 GETUPVAL                         R5 4
       45 GETUPVAL                         R6 5
       46 LOADK                            R8 K9 ["AssetConfig"]
       47 LOADK                            R9 K10 ["UpdateAssetEmissiveChangeError"]
       48 NAMECALL                         R6 R6 K11 ["getText"]
       50 CALL                             R6 3 -1
       51 CALL                             R5 -1 -1
       52 RETURN                           R5 -1
       53 GETTABLEKS                       R5 R1 K12 ["hasSurfaceAppearance"]
       55 GETTABLEKS                       R6 R2 K12 ["hasSurfaceAppearance"]
       57 JUMPIFEQ                         R5 R6 ; [+10]
       59 GETUPVAL                         R5 4
       60 GETUPVAL                         R6 5
       61 LOADK                            R8 K9 ["AssetConfig"]
       62 LOADK                            R9 K13 ["UpdateAssetPbrChangeError"]
       63 NAMECALL                         R6 R6 K11 ["getText"]
       65 CALL                             R6 3 -1
       66 CALL                             R5 -1 -1
       67 RETURN                           R5 -1
       68 LOADNIL                          R1
       69 LOADNIL                          R2
       70 GETUPVAL                         R3 6
       71 GETUPVAL                         R4 7
       72 DUPTABLE                         R5 K16 [{"originalAssetId", "assetType"}]
       73 GETUPVAL                         R6 3
       74 SETTABLEKS                       R6 R5 K14 ["originalAssetId"]
       76 GETUPVAL                         R6 8
       77 SETTABLEKS                       R6 R5 K15 ["assetType"]
       79 CALL                             R3 2 1
       80 NEWCLOSURE                       R5 P1
       81 CAPTURE                          REF R1
       82 NEWCLOSURE                       R6 P2
       83 CAPTURE                          REF R2
       84 NAMECALL                         R3 R3 K17 ["andThen"]
       86 CALL                             R3 3 1
       87 NAMECALL                         R3 R3 K18 ["await"]
       89 CALL                             R3 1 0
       90 JUMPIFEQKNIL                     R2 ; [+6]
       92 GETUPVAL                         R3 4
       93 MOVE                             R4 R2
       94 CALL                             R3 1 -1
       95 CLOSEUPVALS                      R1
       96 RETURN                           R3 -1
       97 JUMPIFEQKNIL                     R1 ; [+3]
       99 JUMPIFNOTEQKS                    R1 K19 [""] ; [+6]
      101 GETUPVAL                         R3 4
      102 LOADK                            R4 K20 ["Couldn't start the update. Please try again."]
      103 CALL                             R3 1 -1
      104 CLOSEUPVALS                      R1
      105 RETURN                           R3 -1
      106 GETIMPORT                        R3 K1 [pcall]
      108 NEWCLOSURE                       R4 P3
      109 CAPTURE                          UPVAL U9
      110 CAPTURE                          UPVAL U0
      111 CAPTURE                          REF R1
      112 CAPTURE                          UPVAL U10
      113 CAPTURE                          UPVAL U11
      114 CAPTURE                          UPVAL U8
      115 CAPTURE                          UPVAL U12
      116 CAPTURE                          UPVAL U13
      117 CAPTURE                          UPVAL U14
      118 CALL                             R3 1 2
      119 JUMPIFNOT                        R3 ; [+4]
      120 JUMPIFEQKNIL                     R4 ; [+3]
      122 JUMPIFNOTEQKN                    R4 K21 [0] ; [+6]
      124 GETUPVAL                         R5 4
      125 MOVE                             R6 R4
      126 CALL                             R5 1 -1
      127 CLOSEUPVALS                      R1
      128 RETURN                           R5 -1
      129 GETUPVAL                         R5 15
      130 GETTABLEKS                       R5 R5 K22 ["shouldDebugWarnings"]
      132 CALL                             R5 0 1
      133 JUMPIFNOT                        R5 ; [+10]
      134 GETIMPORT                        R5 K24 [print]
      136 LOADK                            R7 K25 ["[AvatarItemUpdate] update succeeded → newAssetId="]
      137 FASTCALL1                        TOSTRING R4 ; [+3]
      138 MOVE                             R9 R4
      139 GETIMPORT                        R8 K27 [tostring]
      141 CALL                             R8 1 1
      142 CONCAT                           R6 R7 R8
      143 CALL                             R5 1 0
      144 GETUPVAL                         R5 16
      145 GETUPVAL                         R7 17
      146 MOVE                             R8 R4
      147 CALL                             R7 1 -1
      148 NAMECALL                         R5 R5 K28 ["dispatch"]
      150 CALL                             R5 -1 0
      151 GETUPVAL                         R5 16
      152 GETUPVAL                         R7 18
      153 DUPTABLE                         R8 K30 [{"updateOriginalAssetId"}]
      154 GETUPVAL                         R9 3
      155 SETTABLEKS                       R9 R8 K29 ["updateOriginalAssetId"]
      157 CALL                             R7 1 -1
      158 NAMECALL                         R5 R5 K28 ["dispatch"]
      160 CALL                             R5 -1 0
      161 GETUPVAL                         R5 16
      162 GETUPVAL                         R7 19
      163 LOADB                            R8 1
      164 CALL                             R7 1 -1
      165 NAMECALL                         R5 R5 K28 ["dispatch"]
      167 CALL                             R5 -1 0
      168 GETUPVAL                         R5 20
      169 GETTABLEKS                       R5 R5 K31 ["incrementUploadAssetSuccess"]
      171 GETUPVAL                         R6 8
      172 CALL                             R5 1 0
      173 GETUPVAL                         R5 21
      174 JUMPIFEQKNIL                     R5 ; [+11]
      176 GETUPVAL                         R5 16
      177 GETUPVAL                         R7 22
      178 GETUPVAL                         R8 7
      179 MOVE                             R9 R4
      180 GETUPVAL                         R10 21
      181 GETUPVAL                         R11 5
      182 CALL                             R7 4 -1
      183 NAMECALL                         R5 R5 K28 ["dispatch"]
      185 CALL                             R5 -1 0
      186 CLOSEUPVALS                      R1
      187 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 CAPTURE                          UPVAL U9
       13 CAPTURE                          UPVAL U10
       14 CAPTURE                          UPVAL U11
       15 CAPTURE                          UPVAL U12
       16 CAPTURE                          UPVAL U13
       17 CAPTURE                          UPVAL U14
       18 CAPTURE                          UPVAL U15
       19 CAPTURE                          UPVAL U16
       20 CAPTURE                          UPVAL U17
       21 CAPTURE                          UPVAL U18
       22 CAPTURE                          UPVAL U19
       23 CAPTURE                          UPVAL U20
       24 CAPTURE                          UPVAL U21
       25 CAPTURE                          UPVAL U22
       26 CALL                             R0 1 2
       27 JUMPIF                           R0 ; [+3]
       28 GETUPVAL                         R2 4
       29 MOVE                             R3 R1
       30 CALL                             R2 1 0
       31 GETUPVAL                         R2 23
       32 CALL                             R2 0 0
       33 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 CAPTURE                          UPVAL U9
       13 CAPTURE                          UPVAL U10
       14 CAPTURE                          UPVAL U11
       15 CAPTURE                          UPVAL U12
       16 CAPTURE                          UPVAL U13
       17 CAPTURE                          UPVAL U14
       18 CAPTURE                          UPVAL U15
       19 CAPTURE                          UPVAL U16
       20 CAPTURE                          UPVAL U17
       21 CAPTURE                          UPVAL U18
       22 CAPTURE                          UPVAL U19
       23 CAPTURE                          UPVAL U20
       24 CAPTURE                          UPVAL U21
       25 CAPTURE                          UPVAL U22
       26 CAPTURE                          VAL R0
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["networkInterface"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K1 ["assetTypeEnum"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K2 ["instances"]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K3 ["originalAssetId"]
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K4 ["uploadFee"]
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R7 R7 K5 ["dataSharingLicenseTypes"]
       22 GETUPVAL                         R8 1
       23 GETTABLEKS                       R8 R8 K6 ["localization"]
       25 GETUPVAL                         R10 1
       26 GETTABLEKS                       R10 R10 K7 ["name"]
       28 JUMPIFNOT                        R10 ; [+12]
       29 GETUPVAL                         R10 1
       30 GETTABLEKS                       R10 R10 K7 ["name"]
       32 LOADN                            R11 1
       33 GETUPVAL                         R12 2
       34 GETTABLEKS                       R12 R12 K8 ["NAME_CHARACTER_LIMIT"]
       36 FASTCALL                         STRING_SUB ; [+2]
       37 GETIMPORT                        R9 K11 [string.sub]
       39 CALL                             R9 3 1
       40 JUMP                             ; [+1]
       41 LOADK                            R9 K12 [""]
       42 GETUPVAL                         R11 1
       43 GETTABLEKS                       R11 R11 K13 ["description"]
       45 JUMPIFNOT                        R11 ; [+12]
       46 GETUPVAL                         R11 1
       47 GETTABLEKS                       R11 R11 K13 ["description"]
       49 LOADN                            R12 1
       50 GETUPVAL                         R13 2
       51 GETTABLEKS                       R13 R13 K14 ["DESCRIPTION_CHARACTER_LIMIT"]
       53 FASTCALL                         STRING_SUB ; [+2]
       54 GETIMPORT                        R10 K11 [string.sub]
       56 CALL                             R10 3 1
       57 JUMP                             ; [+1]
       58 LOADK                            R10 K12 [""]
       59 NEWCLOSURE                       R11 P0
       60 CAPTURE                          UPVAL U3
       61 CAPTURE                          VAL R0
       62 CAPTURE                          UPVAL U4
       63 CAPTURE                          UPVAL U5
       64 CAPTURE                          UPVAL U6
       65 CAPTURE                          VAL R3
       66 LOADNIL                          R12
       67 LOADNIL                          R13
       68 GETUPVAL                         R14 1
       69 GETTABLEKS                       R14 R14 K15 ["groupId"]
       71 JUMPIFEQKNIL                     R14 ; [+7]
       73 GETIMPORT                        R12 K19 [Enum.AssetCreatorType.Group]
       75 GETUPVAL                         R14 1
       76 GETTABLEKS                       R13 R14 K15 ["groupId"]
       78 JUMP                             ; [+5]
       79 GETIMPORT                        R12 K21 [Enum.AssetCreatorType.User]
       81 GETUPVAL                         R14 7
       82 CALL                             R14 0 1
       83 MOVE                             R13 R14
       84 GETUPVAL                         R16 8
       85 GETUPVAL                         R17 2
       86 GETTABLEKS                       R17 R17 K22 ["SCREENS"]
       88 GETTABLEKS                       R17 R17 K23 ["UPLOADING_ASSET"]
       90 CALL                             R16 1 -1
       91 NAMECALL                         R14 R0 K24 ["dispatch"]
       93 CALL                             R14 -1 0
       94 MOVE                             R14 R4
       95 JUMPIFNOT                        R14 ; [+1]
       96 GETTABLEN                        R14 R4 1
       97 JUMPIFNOT                        R14 ; [+15]
       98 LOADK                            R17 K25 ["Handle"]
       99 NAMECALL                         R15 R14 K26 ["FindFirstChild"]
      101 CALL                             R15 2 1
      102 JUMPIFNOT                        R15 ; [+10]
      103 LOADK                            R18 K27 ["MeshPart"]
      104 NAMECALL                         R16 R15 K28 ["IsA"]
      106 CALL                             R16 2 1
      107 JUMPIFNOT                        R16 ; [+5]
      108 GETUPVAL                         R16 9
      109 MOVE                             R18 R15
      110 NAMECALL                         R16 R16 K29 ["ResetCollisionFidelity"]
      112 CALL                             R16 2 0
      113 GETUPVAL                         R15 10
      114 GETTABLEKS                       R15 R15 K30 ["new"]
      116 NEWCLOSURE                       R16 P1
      117 CAPTURE                          VAL R4
      118 CAPTURE                          UPVAL U11
      119 CAPTURE                          UPVAL U12
      120 CAPTURE                          VAL R5
      121 CAPTURE                          VAL R11
      122 CAPTURE                          VAL R8
      123 CAPTURE                          UPVAL U13
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R3
      126 CAPTURE                          UPVAL U14
      127 CAPTURE                          REF R12
      128 CAPTURE                          REF R13
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R6
      132 CAPTURE                          UPVAL U3
      133 CAPTURE                          VAL R0
      134 CAPTURE                          UPVAL U15
      135 CAPTURE                          UPVAL U16
      136 CAPTURE                          UPVAL U5
      137 CAPTURE                          UPVAL U6
      138 CAPTURE                          VAL R7
      139 CAPTURE                          UPVAL U17
      140 CALL                             R15 1 -1
      141 CLOSEUPVALS                      R12
      142 RETURN                           R15 -1

PROTO_9:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          UPVAL U9
       12 CAPTURE                          UPVAL U10
       13 CAPTURE                          UPVAL U11
       14 CAPTURE                          UPVAL U12
       15 CAPTURE                          UPVAL U13
       16 CAPTURE                          UPVAL U14
       17 CAPTURE                          UPVAL U15
       18 CAPTURE                          UPVAL U16
       19 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Actions"]
       17 GETTABLEKS                       R2 R2 K7 ["SetAssetId"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Src"]
       24 GETTABLEKS                       R3 R3 K6 ["Actions"]
       26 GETTABLEKS                       R3 R3 K8 ["NetworkError"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R4 R0 K5 ["Src"]
       33 GETTABLEKS                       R4 R4 K6 ["Actions"]
       35 GETTABLEKS                       R4 R4 K9 ["SetCurrentScreen"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K4 [require]
       40 GETTABLEKS                       R5 R0 K5 ["Src"]
       42 GETTABLEKS                       R5 R5 K6 ["Actions"]
       44 GETTABLEKS                       R5 R5 K10 ["UploadResult"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K4 [require]
       49 GETTABLEKS                       R6 R0 K5 ["Src"]
       51 GETTABLEKS                       R6 R6 K6 ["Actions"]
       53 GETTABLEKS                       R6 R6 K11 ["UpdateAssetConfigStore"]
       55 CALL                             R5 1 1
       56 GETTABLEKS                       R6 R0 K5 ["Src"]
       58 GETTABLEKS                       R6 R6 K12 ["Util"]
       60 GETIMPORT                        R7 K4 [require]
       62 GETTABLEKS                       R8 R0 K5 ["Src"]
       64 GETTABLEKS                       R8 R8 K13 ["Flags"]
       66 GETTABLEKS                       R8 R8 K14 ["getFFlagEnableUpdateAvatarItem"]
       68 CALL                             R7 1 1
       69 GETIMPORT                        R8 K4 [require]
       71 GETTABLEKS                       R9 R6 K15 ["DebugFlags"]
       73 CALL                             R8 1 1
       74 GETIMPORT                        R9 K4 [require]
       76 GETTABLEKS                       R10 R6 K16 ["getUserId"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K4 [require]
       81 GETTABLEKS                       R11 R6 K17 ["AssetConfigConstants"]
       83 CALL                             R10 1 1
       84 GETIMPORT                        R11 K4 [require]
       86 GETTABLEKS                       R12 R6 K18 ["Analytics"]
       88 GETTABLEKS                       R12 R12 K18 ["Analytics"]
       90 CALL                             R11 1 1
       91 GETIMPORT                        R12 K4 [require]
       93 GETTABLEKS                       R13 R6 K19 ["detectSpecialAttributes"]
       95 CALL                             R12 1 1
       96 GETTABLEKS                       R12 R12 K20 ["detectMaterialProperties"]
       98 GETIMPORT                        R13 K4 [require]
      100 GETTABLEKS                       R14 R0 K5 ["Src"]
      102 GETTABLEKS                       R14 R14 K21 ["Networking"]
      104 GETTABLEKS                       R14 R14 K22 ["Requests"]
      106 GETTABLEKS                       R14 R14 K23 ["UGCAssetUploadDataSharingRequest"]
      108 CALL                             R13 1 1
      109 GETTABLEKS                       R14 R0 K5 ["Src"]
      111 GETTABLEKS                       R14 R14 K21 ["Networking"]
      113 GETTABLEKS                       R14 R14 K22 ["Requests"]
      115 GETTABLEKS                       R14 R14 K24 ["AvatarItemUpdate"]
      117 GETIMPORT                        R15 K4 [require]
      119 GETTABLEKS                       R16 R14 K25 ["CreateAvatarItemUpdateContextRequest"]
      121 CALL                             R15 1 1
      122 GETTABLEKS                       R16 R0 K26 ["Packages"]
      124 GETIMPORT                        R17 K4 [require]
      126 GETTABLEKS                       R18 R16 K27 ["Framework"]
      128 CALL                             R17 1 1
      129 GETTABLEKS                       R17 R17 K12 ["Util"]
      131 GETTABLEKS                       R17 R17 K28 ["Promise"]
      133 GETIMPORT                        R18 K4 [require]
      135 GETTABLEKS                       R19 R6 K29 ["Services"]
      137 CALL                             R18 1 1
      138 GETTABLEKS                       R19 R18 K30 ["GetService"]
      140 LOADK                            R20 K31 ["PublishService"]
      141 CALL                             R19 1 1
      142 GETTABLEKS                       R20 R18 K30 ["GetService"]
      144 LOADK                            R21 K32 ["UGCValidationService"]
      145 CALL                             R20 1 1
      146 GETTABLEKS                       R21 R18 K30 ["GetService"]
      148 LOADK                            R22 K33 ["InsertService"]
      149 CALL                             R21 1 1
      150 DUPCLOSURE                       R22 K34 [PROTO_9]
      151 CAPTURE                          VAL R7
      152 CAPTURE                          VAL R10
      153 CAPTURE                          VAL R8
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R4
      156 CAPTURE                          VAL R11
      157 CAPTURE                          VAL R9
      158 CAPTURE                          VAL R3
      159 CAPTURE                          VAL R20
      160 CAPTURE                          VAL R17
      161 CAPTURE                          VAL R12
      162 CAPTURE                          VAL R21
      163 CAPTURE                          VAL R15
      164 CAPTURE                          VAL R19
      165 CAPTURE                          VAL R1
      166 CAPTURE                          VAL R5
      167 CAPTURE                          VAL R13
      168 RETURN                           R22 1
