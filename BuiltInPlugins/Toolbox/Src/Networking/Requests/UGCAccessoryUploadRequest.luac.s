PROTO_0:
        0 NEWTABLE                         R0 0 8
        2 GETUPVAL                         R1 0
        3 LOADK                            R2 K0 [""]
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 GETUPVAL                         R5 3
        7 GETTABLEKS                       R5 R5 K1 ["Name"]
        9 GETUPVAL                         R6 4
       10 GETUPVAL                         R7 5
       11 GETUPVAL                         R8 6
       12 SETLIST                          R0 R1 8 [1]
       14 GETUPVAL                         R1 7
       15 CALL                             R1 0 1
       16 JUMPIFNOT                        R1 ; [+16]
       17 GETUPVAL                         R1 8
       18 JUMPIFEQKNIL                     R1 ; [+14]
       20 NEWTABLE                         R3 1 0
       22 GETUPVAL                         R4 9
       23 GETTABLEKS                       R4 R4 K2 ["ENCRYPTED_CREATION_CONTEXT_KEY"]
       25 GETUPVAL                         R5 8
       26 SETTABLE                         R5 R3 R4
       27 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       29 MOVE                             R2 R0
       30 GETIMPORT                        R1 K5 [table.insert]
       32 CALL                             R1 2 0
       33 GETUPVAL                         R1 10
       34 FASTCALL1                        TABLE_UNPACK R0 ; [+3]
       35 MOVE                             R4 R0
       36 GETIMPORT                        R3 K7 [table.unpack]
       38 CALL                             R3 1 -1
       39 NAMECALL                         R1 R1 K8 ["CreateAssetAndWaitForAssetId"]
       41 CALL                             R1 -1 -1
       42 RETURN                           R1 -1

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
       11 CAPTURE                          UPVAL U8
       12 CAPTURE                          UPVAL U9
       13 CAPTURE                          UPVAL U10
       14 CALL                             R0 1 2
       15 JUMPIFNOT                        R0 ; [+8]
       16 JUMPIFEQKNIL                     R1 ; [+7]
       18 JUMPIFEQKN                       R1 K2 [0] ; [+5]
       20 GETUPVAL                         R2 11
       21 MOVE                             R3 R1
       22 CALL                             R2 1 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R2 12
       25 MOVE                             R3 R1
       26 CALL                             R2 1 0
       27 RETURN                           R0 0

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
       11 CAPTURE                          UPVAL U8
       12 CAPTURE                          UPVAL U9
       13 CAPTURE                          UPVAL U10
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 GETUPVAL                         R1 0
        8 GETUPVAL                         R3 2
        9 LOADB                            R4 1
       10 CALL                             R3 1 -1
       11 NAMECALL                         R1 R1 K0 ["dispatch"]
       13 CALL                             R1 -1 0
       14 GETUPVAL                         R1 3
       15 GETTABLEKS                       R1 R1 K1 ["incrementUploadAssetSuccess"]
       17 GETUPVAL                         R2 4
       18 CALL                             R1 1 0
       19 GETUPVAL                         R1 5
       20 JUMPIFEQKNIL                     R1 ; [+11]
       22 GETUPVAL                         R1 0
       23 GETUPVAL                         R3 6
       24 GETUPVAL                         R4 7
       25 MOVE                             R5 R0
       26 GETUPVAL                         R6 5
       27 GETUPVAL                         R7 8
       28 CALL                             R3 4 -1
       29 NAMECALL                         R1 R1 K0 ["dispatch"]
       31 CALL                             R1 -1 0
       32 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugWarnings"]
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
       23 GETUPVAL                         R1 4
       24 GETTABLEKS                       R1 R1 K5 ["incrementUploadAssetFailure"]
       26 GETUPVAL                         R2 5
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 JUMPIFNOT                        R4 ; [+10]
        3 GETUPVAL                         R4 1
        4 LOADN                            R5 1
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R6 R6 K0 ["NAME_CHARACTER_LIMIT"]
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
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R6 R6 K5 ["DESCRIPTION_CHARACTER_LIMIT"]
       22 FASTCALL                         STRING_SUB ; [+2]
       23 GETIMPORT                        R3 K3 [string.sub]
       25 CALL                             R3 3 1
       26 JUMP                             ; [+1]
       27 LOADK                            R3 K4 [""]
       28 SETUPVAL                         R3 3
       29 GETUPVAL                         R5 4
       30 GETUPVAL                         R6 2
       31 GETTABLEKS                       R6 R6 K6 ["SCREENS"]
       33 GETTABLEKS                       R6 R6 K7 ["UPLOADING_ASSET"]
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
       70 GETUPVAL                         R6 8
       71 GETTABLEKS                       R6 R6 K20 ["new"]
       73 NEWCLOSURE                       R7 P0
       74 CAPTURE                          VAL R2
       75 CAPTURE                          REF R4
       76 CAPTURE                          REF R5
       77 CAPTURE                          UPVAL U9
       78 CAPTURE                          UPVAL U1
       79 CAPTURE                          UPVAL U3
       80 CAPTURE                          UPVAL U10
       81 CAPTURE                          UPVAL U11
       82 CAPTURE                          UPVAL U12
       83 CAPTURE                          UPVAL U13
       84 CAPTURE                          UPVAL U14
       85 CALL                             R6 1 1
       86 NEWCLOSURE                       R8 P1
       87 CAPTURE                          VAL R0
       88 CAPTURE                          UPVAL U15
       89 CAPTURE                          UPVAL U16
       90 CAPTURE                          UPVAL U17
       91 CAPTURE                          UPVAL U9
       92 CAPTURE                          UPVAL U18
       93 CAPTURE                          UPVAL U19
       94 CAPTURE                          UPVAL U20
       95 CAPTURE                          UPVAL U21
       96 NAMECALL                         R6 R6 K21 ["andThen"]
       98 CALL                             R6 2 1
       99 NEWCLOSURE                       R8 P2
      100 CAPTURE                          UPVAL U22
      101 CAPTURE                          VAL R0
      102 CAPTURE                          UPVAL U23
      103 CAPTURE                          UPVAL U16
      104 CAPTURE                          UPVAL U17
      105 CAPTURE                          UPVAL U9
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
        7 CAPTURE                          VAL R5
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          VAL R3
       11 CAPTURE                          VAL R8
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          VAL R9
       14 CAPTURE                          UPVAL U6
       15 CAPTURE                          UPVAL U7
       16 CAPTURE                          UPVAL U8
       17 CAPTURE                          UPVAL U9
       18 CAPTURE                          UPVAL U10
       19 CAPTURE                          VAL R6
       20 CAPTURE                          UPVAL U11
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R7
       23 CAPTURE                          UPVAL U12
       24 CAPTURE                          UPVAL U13
       25 CLOSEUPVALS                      R1
       26 RETURN                           R10 1

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
       53 GETTABLEKS                       R7 R5 K12 ["DebugFlags"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K4 [require]
       58 GETTABLEKS                       R8 R5 K13 ["getUserId"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K4 [require]
       63 GETTABLEKS                       R9 R5 K14 ["AssetConfigConstants"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K4 [require]
       68 GETTABLEKS                       R10 R5 K15 ["AssetConfigUtil"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K4 [require]
       73 GETTABLEKS                       R11 R5 K16 ["Analytics"]
       75 GETTABLEKS                       R11 R11 K16 ["Analytics"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K4 [require]
       80 GETTABLEKS                       R12 R0 K5 ["Src"]
       82 GETTABLEKS                       R12 R12 K17 ["Flags"]
       84 GETTABLEKS                       R12 R12 K18 ["getFFlagToolboxPublishOnApproval"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K4 [require]
       89 GETTABLEKS                       R13 R0 K5 ["Src"]
       91 GETTABLEKS                       R13 R13 K19 ["Networking"]
       93 GETTABLEKS                       R13 R13 K20 ["Requests"]
       95 GETTABLEKS                       R13 R13 K21 ["UGCAssetUploadDataSharingRequest"]
       97 CALL                             R12 1 1
       98 GETTABLEKS                       R13 R0 K22 ["Packages"]
      100 GETIMPORT                        R14 K4 [require]
      102 GETTABLEKS                       R15 R13 K23 ["Framework"]
      104 CALL                             R14 1 1
      105 GETTABLEKS                       R14 R14 K11 ["Util"]
      107 GETTABLEKS                       R14 R14 K24 ["Promise"]
      109 GETIMPORT                        R15 K4 [require]
      111 GETTABLEKS                       R16 R5 K25 ["Services"]
      113 CALL                             R15 1 1
      114 GETTABLEKS                       R16 R15 K26 ["GetService"]
      116 LOADK                            R17 K27 ["PublishService"]
      117 CALL                             R16 1 1
      118 GETTABLEKS                       R17 R15 K26 ["GetService"]
      120 LOADK                            R18 K28 ["UGCValidationService"]
      121 CALL                             R17 1 1
      122 DUPCLOSURE                       R18 K29 [PROTO_6]
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R17
      126 CAPTURE                          VAL R7
      127 CAPTURE                          VAL R14
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R16
      131 CAPTURE                          VAL R1
      132 CAPTURE                          VAL R4
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R12
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R2
      137 RETURN                           R18 1
