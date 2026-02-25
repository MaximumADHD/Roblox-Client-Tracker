PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R3 K0 [""]
        3 GETUPVAL                         R4 2
        4 GETUPVAL                         R5 3
        5 GETUPVAL                         R7 4
        6 GETTABLEKS                       R6 R7 K1 ["Name"]
        8 GETUPVAL                         R7 5
        9 GETUPVAL                         R8 6
       10 GETUPVAL                         R9 7
       11 NAMECALL                         R0 R0 K2 ["CreateAssetAndWaitForAssetId"]
       13 CALL                             R0 9 -1
       14 RETURN                           R0 -1

PROTO_1:
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
       11 CALL                             R0 1 2
       12 JUMPIFNOT                        R0 ; [+8]
       13 JUMPIFEQKNIL                     R1 ; [+7]
       15 JUMPIFEQKN                       R1 K2 [0] ; [+5]
       17 GETUPVAL                         R2 8
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R2 9
       22 MOVE                             R3 R1
       23 CALL                             R2 1 0
       24 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R2 K2 [task.spawn]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 GETUPVAL                         R1 2
        8 CALL                             R1 0 1
        9 JUMPIF                           R1 ; [+12]
       10 GETUPVAL                         R1 0
       11 GETUPVAL                         R3 3
       12 GETUPVAL                         R4 4
       13 MOVE                             R5 R0
       14 NEWTABLE                         R6 0 0
       16 GETUPVAL                         R7 5
       17 CALL                             R3 4 -1
       18 NAMECALL                         R1 R1 K0 ["dispatch"]
       20 CALL                             R1 -1 0
       21 JUMP                             ; [+7]
       22 GETUPVAL                         R1 0
       23 GETUPVAL                         R3 6
       24 LOADB                            R4 1
       25 CALL                             R3 1 -1
       26 NAMECALL                         R1 R1 K0 ["dispatch"]
       28 CALL                             R1 -1 0
       29 GETUPVAL                         R2 7
       30 GETTABLEKS                       R1 R2 K1 ["incrementUploadAssetSuccess"]
       32 GETUPVAL                         R2 8
       33 CALL                             R1 1 0
       34 GETUPVAL                         R1 9
       35 JUMPIFEQKNIL                     R1 ; [+11]
       37 GETUPVAL                         R1 0
       38 GETUPVAL                         R3 10
       39 GETUPVAL                         R4 4
       40 MOVE                             R5 R0
       41 GETUPVAL                         R6 9
       42 GETUPVAL                         R7 11
       43 CALL                             R3 4 -1
       44 NAMECALL                         R1 R1 K0 ["dispatch"]
       46 CALL                             R1 -1 0
       47 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["Lua toolbox: Could not upload catalog item"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 CALL                             R3 1 -1
       13 NAMECALL                         R1 R1 K4 ["dispatch"]
       15 CALL                             R1 -1 0
       16 GETUPVAL                         R1 1
       17 GETUPVAL                         R3 3
       18 LOADB                            R4 0
       19 CALL                             R3 1 -1
       20 NAMECALL                         R1 R1 K4 ["dispatch"]
       22 CALL                             R1 -1 0
       23 GETUPVAL                         R2 4
       24 GETTABLEKS                       R1 R2 K5 ["incrementUploadAssetFailure"]
       26 GETUPVAL                         R2 5
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 JUMPIFNOT                        R4 ; [+10]
        3 GETUPVAL                         R4 1
        4 LOADN                            R5 1
        5 GETUPVAL                         R7 2
        6 GETTABLEKS                       R6 R7 K0 ["NAME_CHARACTER_LIMIT"]
        8 FASTCALL                         STRING_SUB ; [+2]
        9 GETIMPORT                        R3 K3 [string.sub]
       11 CALL                             R3 3 1
       12 JUMP                             ; [+1]
       13 LOADK                            R3 K4 [""]
       14 SETUPVAL                         R3 1
       15 GETUPVAL                         R4 3
       16 JUMPIFNOT                        R4 ; [+10]
       17 GETUPVAL                         R4 3
       18 LOADN                            R5 1
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R6 R7 K5 ["DESCRIPTION_CHARACTER_LIMIT"]
       22 FASTCALL                         STRING_SUB ; [+2]
       23 GETIMPORT                        R3 K3 [string.sub]
       25 CALL                             R3 3 1
       26 JUMP                             ; [+1]
       27 LOADK                            R3 K4 [""]
       28 SETUPVAL                         R3 3
       29 GETUPVAL                         R5 4
       30 GETUPVAL                         R8 2
       31 GETTABLEKS                       R7 R8 K6 ["SCREENS"]
       33 GETTABLEKS                       R6 R7 K7 ["UPLOADING_ASSET"]
       35 CALL                             R5 1 -1
       36 NAMECALL                         R3 R0 K8 ["dispatch"]
       38 CALL                             R3 -1 0
       39 GETTABLEN                        R3 R2 1
       40 JUMPIFNOT                        R3 ; [+15]
       41 LOADK                            R6 K9 ["Handle"]
       42 NAMECALL                         R4 R3 K10 ["FindFirstChild"]
       44 CALL                             R4 2 1
       45 JUMPIFNOT                        R4 ; [+10]
       46 LOADK                            R7 K11 ["MeshPart"]
       47 NAMECALL                         R5 R4 K12 ["IsA"]
       49 CALL                             R5 2 1
       50 JUMPIFNOT                        R5 ; [+5]
       51 GETUPVAL                         R5 5
       52 MOVE                             R7 R4
       53 NAMECALL                         R5 R5 K13 ["ResetCollisionFidelity"]
       55 CALL                             R5 2 0
       56 LOADNIL                          R4
       57 LOADNIL                          R5
       58 GETUPVAL                         R6 6
       59 JUMPIFEQKNIL                     R6 ; [+5]
       61 GETIMPORT                        R4 K17 [Enum.AssetCreatorType.Group]
       63 GETUPVAL                         R5 6
       64 JUMP                             ; [+5]
       65 GETIMPORT                        R4 K19 [Enum.AssetCreatorType.User]
       67 GETUPVAL                         R6 7
       68 CALL                             R6 0 1
       69 MOVE                             R5 R6
       70 GETUPVAL                         R7 8
       71 GETTABLEKS                       R6 R7 K20 ["new"]
       73 NEWCLOSURE                       R7 P0
       74 CAPTURE                          UPVAL U9
       75 CAPTURE                          VAL R2
       76 CAPTURE                          REF R4
       77 CAPTURE                          REF R5
       78 CAPTURE                          UPVAL U10
       79 CAPTURE                          UPVAL U1
       80 CAPTURE                          UPVAL U3
       81 CAPTURE                          UPVAL U11
       82 CALL                             R6 1 1
       83 NEWCLOSURE                       R8 P1
       84 CAPTURE                          VAL R0
       85 CAPTURE                          UPVAL U12
       86 CAPTURE                          UPVAL U13
       87 CAPTURE                          UPVAL U14
       88 CAPTURE                          UPVAL U15
       89 CAPTURE                          UPVAL U16
       90 CAPTURE                          UPVAL U17
       91 CAPTURE                          UPVAL U18
       92 CAPTURE                          UPVAL U10
       93 CAPTURE                          UPVAL U19
       94 CAPTURE                          UPVAL U20
       95 CAPTURE                          UPVAL U21
       96 NAMECALL                         R6 R6 K21 ["andThen"]
       98 CALL                             R6 2 1
       99 NEWCLOSURE                       R8 P2
      100 CAPTURE                          UPVAL U22
      101 CAPTURE                          VAL R0
      102 CAPTURE                          UPVAL U23
      103 CAPTURE                          UPVAL U17
      104 CAPTURE                          UPVAL U18
      105 CAPTURE                          UPVAL U10
      106 NAMECALL                         R6 R6 K22 ["catch"]
      108 CALL                             R6 2 -1
      109 CLOSEUPVALS                      R4
      110 RETURN                           R6 -1

PROTO_6:
        0 NEWCLOSURE                       R10 P0
        1 CAPTURE                          VAL R4
        2 CAPTURE                          REF R1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          REF R2
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R6
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          VAL R3
       12 CAPTURE                          VAL R9
       13 CAPTURE                          UPVAL U6
       14 CAPTURE                          UPVAL U7
       15 CAPTURE                          UPVAL U8
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R5
       18 CAPTURE                          UPVAL U9
       19 CAPTURE                          UPVAL U10
       20 CAPTURE                          VAL R7
       21 CAPTURE                          UPVAL U11
       22 CAPTURE                          VAL R8
       23 CAPTURE                          UPVAL U12
       24 CAPTURE                          UPVAL U13
       25 CLOSEUPVALS                      R1
       26 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["PublishService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["UGCValidationService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R6 K6 [script]
       15 GETTABLEKS                       R5 R6 K7 ["Parent"]
       17 GETTABLEKS                       R4 R5 K7 ["Parent"]
       19 GETTABLEKS                       R3 R4 K7 ["Parent"]
       21 GETTABLEKS                       R2 R3 K7 ["Parent"]
       23 GETIMPORT                        R3 K9 [require]
       25 GETTABLEKS                       R6 R2 K10 ["Src"]
       27 GETTABLEKS                       R5 R6 K11 ["Actions"]
       29 GETTABLEKS                       R4 R5 K12 ["SetAssetId"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K9 [require]
       34 GETTABLEKS                       R7 R2 K10 ["Src"]
       36 GETTABLEKS                       R6 R7 K11 ["Actions"]
       38 GETTABLEKS                       R5 R6 K13 ["NetworkError"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K9 [require]
       43 GETTABLEKS                       R8 R2 K10 ["Src"]
       45 GETTABLEKS                       R7 R8 K11 ["Actions"]
       47 GETTABLEKS                       R6 R7 K14 ["SetCurrentScreen"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K9 [require]
       52 GETTABLEKS                       R9 R2 K10 ["Src"]
       54 GETTABLEKS                       R8 R9 K11 ["Actions"]
       56 GETTABLEKS                       R7 R8 K15 ["UploadResult"]
       58 CALL                             R6 1 1
       59 GETTABLEKS                       R8 R2 K10 ["Src"]
       61 GETTABLEKS                       R7 R8 K16 ["Util"]
       63 GETIMPORT                        R8 K9 [require]
       65 GETTABLEKS                       R9 R7 K17 ["DebugFlags"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K9 [require]
       70 GETTABLEKS                       R10 R7 K18 ["getUserId"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K9 [require]
       75 GETTABLEKS                       R11 R7 K19 ["AssetConfigConstants"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K9 [require]
       80 GETTABLEKS                       R13 R7 K20 ["Analytics"]
       82 GETTABLEKS                       R12 R13 K20 ["Analytics"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K9 [require]
       87 GETTABLEKS                       R15 R2 K10 ["Src"]
       89 GETTABLEKS                       R14 R15 K21 ["Flags"]
       91 GETTABLEKS                       R13 R14 K22 ["getFFlagRemoveItemTags"]
       93 CALL                             R12 1 1
       94 MOVE                             R14 R12
       95 CALL                             R14 0 1
       96 JUMPIFNOT                        R14 ; [+2]
       97 LOADNIL                          R13
       98 JUMP                             ; [+11]
       99 GETIMPORT                        R13 K9 [require]
      101 GETTABLEKS                       R17 R2 K10 ["Src"]
      103 GETTABLEKS                       R16 R17 K23 ["Networking"]
      105 GETTABLEKS                       R15 R16 K24 ["Requests"]
      107 GETTABLEKS                       R14 R15 K25 ["ConfigureItemTagsRequest"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K9 [require]
      112 GETTABLEKS                       R18 R2 K10 ["Src"]
      114 GETTABLEKS                       R17 R18 K23 ["Networking"]
      116 GETTABLEKS                       R16 R17 K24 ["Requests"]
      118 GETTABLEKS                       R15 R16 K26 ["UGCAssetUploadDataSharingRequest"]
      120 CALL                             R14 1 1
      121 GETTABLEKS                       R15 R2 K27 ["Packages"]
      123 GETIMPORT                        R18 K9 [require]
      125 GETTABLEKS                       R19 R15 K28 ["Framework"]
      127 CALL                             R18 1 1
      128 GETTABLEKS                       R17 R18 K16 ["Util"]
      130 GETTABLEKS                       R16 R17 K29 ["Promise"]
      132 MOVE                             R17 R12
      133 CALL                             R17 0 1
      134 JUMPIFNOT                        R17 ; [+15]
      135 GETIMPORT                        R17 K9 [require]
      137 GETTABLEKS                       R18 R7 K30 ["Services"]
      139 CALL                             R17 1 1
      140 GETTABLEKS                       R18 R17 K3 ["GetService"]
      142 LOADK                            R19 K2 ["PublishService"]
      143 CALL                             R18 1 1
      144 MOVE                             R0 R18
      145 GETTABLEKS                       R18 R17 K3 ["GetService"]
      147 LOADK                            R19 K4 ["UGCValidationService"]
      148 CALL                             R18 1 1
      149 MOVE                             R1 R18
      150 NEWCLOSURE                       R17 P0
      151 CAPTURE                          VAL R10
      152 CAPTURE                          VAL R5
      153 CAPTURE                          REF R1
      154 CAPTURE                          VAL R9
      155 CAPTURE                          VAL R16
      156 CAPTURE                          REF R0
      157 CAPTURE                          VAL R3
      158 CAPTURE                          VAL R12
      159 CAPTURE                          VAL R13
      160 CAPTURE                          VAL R6
      161 CAPTURE                          VAL R11
      162 CAPTURE                          VAL R14
      163 CAPTURE                          VAL R8
      164 CAPTURE                          VAL R4
      165 CLOSEUPVALS                      R0
      166 RETURN                           R17 1
