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
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_2:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K2 [{"originalAssetId", "assetType"}]
        5 GETUPVAL                         R5 2
        6 SETTABLEKS                       R5 R4 K0 ["originalAssetId"]
        8 GETUPVAL                         R5 3
        9 SETTABLEKS                       R5 R4 K1 ["assetType"]
       11 CALL                             R2 2 1
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          REF R0
       14 NEWCLOSURE                       R5 P1
       15 CAPTURE                          REF R1
       16 NAMECALL                         R2 R2 K3 ["andThen"]
       18 CALL                             R2 3 1
       19 NAMECALL                         R2 R2 K4 ["await"]
       21 CALL                             R2 1 0
       22 JUMPIFEQKNIL                     R1 ; [+6]
       24 GETUPVAL                         R2 4
       25 MOVE                             R3 R1
       26 CALL                             R2 1 -1
       27 CLOSEUPVALS                      R0
       28 RETURN                           R2 -1
       29 JUMPIFEQKNIL                     R0 ; [+3]
       31 JUMPIFNOTEQKS                    R0 K5 [""] ; [+6]
       33 GETUPVAL                         R2 4
       34 LOADK                            R3 K6 ["Couldn't start the update. Please try again."]
       35 CALL                             R2 1 -1
       36 CLOSEUPVALS                      R0
       37 RETURN                           R2 -1
       38 GETIMPORT                        R2 K8 [pcall]
       40 NEWCLOSURE                       R3 P2
       41 CAPTURE                          UPVAL U5
       42 CAPTURE                          UPVAL U6
       43 CAPTURE                          REF R0
       44 CAPTURE                          UPVAL U7
       45 CAPTURE                          UPVAL U8
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          UPVAL U9
       48 CAPTURE                          UPVAL U10
       49 CAPTURE                          UPVAL U11
       50 CALL                             R2 1 2
       51 JUMPIFNOT                        R2 ; [+4]
       52 JUMPIFEQKNIL                     R3 ; [+3]
       54 JUMPIFNOTEQKN                    R3 K9 [0] ; [+6]
       56 GETUPVAL                         R4 4
       57 MOVE                             R5 R3
       58 CALL                             R4 1 -1
       59 CLOSEUPVALS                      R0
       60 RETURN                           R4 -1
       61 GETUPVAL                         R4 12
       62 GETTABLEKS                       R4 R4 K10 ["shouldDebugWarnings"]
       64 CALL                             R4 0 1
       65 JUMPIFNOT                        R4 ; [+10]
       66 GETIMPORT                        R4 K12 [print]
       68 LOADK                            R6 K13 ["[AvatarItemUpdate] update succeeded → newAssetId="]
       69 FASTCALL1                        TOSTRING R3 ; [+3]
       70 MOVE                             R8 R3
       71 GETIMPORT                        R7 K15 [tostring]
       73 CALL                             R7 1 1
       74 CONCAT                           R5 R6 R7
       75 CALL                             R4 1 0
       76 GETUPVAL                         R4 13
       77 GETUPVAL                         R6 14
       78 MOVE                             R7 R3
       79 CALL                             R6 1 -1
       80 NAMECALL                         R4 R4 K16 ["dispatch"]
       82 CALL                             R4 -1 0
       83 GETUPVAL                         R4 13
       84 GETUPVAL                         R6 15
       85 LOADB                            R7 1
       86 CALL                             R6 1 -1
       87 NAMECALL                         R4 R4 K16 ["dispatch"]
       89 CALL                             R4 -1 0
       90 GETUPVAL                         R4 16
       91 GETTABLEKS                       R4 R4 K17 ["incrementUploadAssetSuccess"]
       93 GETUPVAL                         R5 3
       94 CALL                             R4 1 0
       95 GETUPVAL                         R4 17
       96 JUMPIFEQKNIL                     R4 ; [+11]
       98 GETUPVAL                         R4 13
       99 GETUPVAL                         R6 18
      100 GETUPVAL                         R7 1
      101 MOVE                             R8 R3
      102 GETUPVAL                         R9 17
      103 GETUPVAL                         R10 19
      104 CALL                             R6 4 -1
      105 NAMECALL                         R4 R4 K16 ["dispatch"]
      107 CALL                             R4 -1 0
      108 CLOSEUPVALS                      R0
      109 RETURN                           R0 0

PROTO_5:
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
       23 CALL                             R0 1 2
       24 JUMPIF                           R0 ; [+3]
       25 GETUPVAL                         R2 4
       26 MOVE                             R3 R1
       27 CALL                             R2 1 0
       28 GETUPVAL                         R2 20
       29 CALL                             R2 0 0
       30 RETURN                           R0 0

PROTO_6:
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
       23 CAPTURE                          VAL R0
       24 CALL                             R1 1 0
       25 RETURN                           R0 0

PROTO_7:
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
      117 CAPTURE                          UPVAL U11
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R3
      121 CAPTURE                          VAL R11
      122 CAPTURE                          UPVAL U12
      123 CAPTURE                          VAL R4
      124 CAPTURE                          REF R12
      125 CAPTURE                          REF R13
      126 CAPTURE                          VAL R9
      127 CAPTURE                          VAL R10
      128 CAPTURE                          VAL R6
      129 CAPTURE                          UPVAL U3
      130 CAPTURE                          VAL R0
      131 CAPTURE                          UPVAL U13
      132 CAPTURE                          UPVAL U5
      133 CAPTURE                          UPVAL U6
      134 CAPTURE                          VAL R7
      135 CAPTURE                          UPVAL U14
      136 CAPTURE                          VAL R8
      137 CALL                             R15 1 -1
      138 CLOSEUPVALS                      R12
      139 RETURN                           R15 -1

PROTO_8:
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
       16 RETURN                           R1 1

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
       47 GETTABLEKS                       R5 R0 K5 ["Src"]
       49 GETTABLEKS                       R5 R5 K11 ["Util"]
       51 GETIMPORT                        R6 K4 [require]
       53 GETTABLEKS                       R7 R0 K5 ["Src"]
       55 GETTABLEKS                       R7 R7 K12 ["Flags"]
       57 GETTABLEKS                       R7 R7 K13 ["getFFlagEnableUpdateAvatarItem"]
       59 CALL                             R6 1 1
       60 GETIMPORT                        R7 K4 [require]
       62 GETTABLEKS                       R8 R5 K14 ["DebugFlags"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K4 [require]
       67 GETTABLEKS                       R9 R5 K15 ["getUserId"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K4 [require]
       72 GETTABLEKS                       R10 R5 K16 ["AssetConfigConstants"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K4 [require]
       77 GETTABLEKS                       R11 R5 K17 ["Analytics"]
       79 GETTABLEKS                       R11 R11 K17 ["Analytics"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K4 [require]
       84 GETTABLEKS                       R12 R0 K5 ["Src"]
       86 GETTABLEKS                       R12 R12 K18 ["Networking"]
       88 GETTABLEKS                       R12 R12 K19 ["Requests"]
       90 GETTABLEKS                       R12 R12 K20 ["UGCAssetUploadDataSharingRequest"]
       92 CALL                             R11 1 1
       93 GETTABLEKS                       R12 R0 K5 ["Src"]
       95 GETTABLEKS                       R12 R12 K18 ["Networking"]
       97 GETTABLEKS                       R12 R12 K19 ["Requests"]
       99 GETTABLEKS                       R12 R12 K21 ["AvatarItemUpdate"]
      101 GETIMPORT                        R13 K4 [require]
      103 GETTABLEKS                       R14 R12 K22 ["CreateAvatarItemUpdateContextRequest"]
      105 CALL                             R13 1 1
      106 GETTABLEKS                       R14 R0 K23 ["Packages"]
      108 GETIMPORT                        R15 K4 [require]
      110 GETTABLEKS                       R16 R14 K24 ["Framework"]
      112 CALL                             R15 1 1
      113 GETTABLEKS                       R15 R15 K11 ["Util"]
      115 GETTABLEKS                       R15 R15 K25 ["Promise"]
      117 GETIMPORT                        R16 K4 [require]
      119 GETTABLEKS                       R17 R5 K26 ["Services"]
      121 CALL                             R16 1 1
      122 GETTABLEKS                       R17 R16 K27 ["GetService"]
      124 LOADK                            R18 K28 ["PublishService"]
      125 CALL                             R17 1 1
      126 GETTABLEKS                       R18 R16 K27 ["GetService"]
      128 LOADK                            R19 K29 ["UGCValidationService"]
      129 CALL                             R18 1 1
      130 DUPCLOSURE                       R19 K30 [PROTO_8]
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R9
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R10
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R18
      140 CAPTURE                          VAL R15
      141 CAPTURE                          VAL R13
      142 CAPTURE                          VAL R17
      143 CAPTURE                          VAL R1
      144 CAPTURE                          VAL R11
      145 RETURN                           R19 1
