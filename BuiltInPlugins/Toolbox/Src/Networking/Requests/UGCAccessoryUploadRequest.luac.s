PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R3 K0 [""]
        3 GETUPVAL                         R4 2
        4 GETUPVAL                         R5 3
        5 GETUPVAL                         R6 4
        6 GETTABLEKS                       R6 R6 K1 ["Name"]
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
       88 CAPTURE                          UPVAL U10
       89 CAPTURE                          UPVAL U15
       90 CAPTURE                          UPVAL U16
       91 CAPTURE                          UPVAL U17
       92 CAPTURE                          UPVAL U18
       93 NAMECALL                         R6 R6 K21 ["andThen"]
       95 CALL                             R6 2 1
       96 NEWCLOSURE                       R8 P2
       97 CAPTURE                          UPVAL U19
       98 CAPTURE                          VAL R0
       99 CAPTURE                          UPVAL U20
      100 CAPTURE                          UPVAL U13
      101 CAPTURE                          UPVAL U14
      102 CAPTURE                          UPVAL U10
      103 NAMECALL                         R6 R6 K22 ["catch"]
      105 CALL                             R6 2 -1
      106 CLOSEUPVALS                      R4
      107 RETURN                           R6 -1

PROTO_6:
        0 NEWCLOSURE                       R9 P0
        1 CAPTURE                          VAL R4
        2 CAPTURE                          REF R1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          REF R2
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R5
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          VAL R3
       12 CAPTURE                          VAL R8
       13 CAPTURE                          UPVAL U6
       14 CAPTURE                          UPVAL U7
       15 CAPTURE                          UPVAL U8
       16 CAPTURE                          VAL R6
       17 CAPTURE                          UPVAL U9
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R7
       20 CAPTURE                          UPVAL U10
       21 CAPTURE                          UPVAL U11
       22 CLOSEUPVALS                      R1
       23 RETURN                           R9 1

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
       68 GETTABLEKS                       R10 R5 K15 ["Analytics"]
       70 GETTABLEKS                       R10 R10 K15 ["Analytics"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K4 [require]
       75 GETTABLEKS                       R11 R0 K5 ["Src"]
       77 GETTABLEKS                       R11 R11 K16 ["Networking"]
       79 GETTABLEKS                       R11 R11 K17 ["Requests"]
       81 GETTABLEKS                       R11 R11 K18 ["UGCAssetUploadDataSharingRequest"]
       83 CALL                             R10 1 1
       84 GETTABLEKS                       R11 R0 K19 ["Packages"]
       86 GETIMPORT                        R12 K4 [require]
       88 GETTABLEKS                       R13 R11 K20 ["Framework"]
       90 CALL                             R12 1 1
       91 GETTABLEKS                       R12 R12 K11 ["Util"]
       93 GETTABLEKS                       R12 R12 K21 ["Promise"]
       95 GETIMPORT                        R13 K4 [require]
       97 GETTABLEKS                       R14 R5 K22 ["Services"]
       99 CALL                             R13 1 1
      100 GETTABLEKS                       R14 R13 K23 ["GetService"]
      102 LOADK                            R15 K24 ["PublishService"]
      103 CALL                             R14 1 1
      104 GETTABLEKS                       R15 R13 K23 ["GetService"]
      106 LOADK                            R16 K25 ["UGCValidationService"]
      107 CALL                             R15 1 1
      108 DUPCLOSURE                       R16 K26 [PROTO_6]
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R15
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R14
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R10
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R2
      121 RETURN                           R16 1
