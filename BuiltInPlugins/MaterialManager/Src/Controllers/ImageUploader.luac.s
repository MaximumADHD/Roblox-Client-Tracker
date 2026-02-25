PROTO_0:
        0 DUPTABLE                         R0 K2 [{"_publishService", "_promises"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["_publishService"]
        4 NEWTABLE                         R1 0 0
        6 SETTABLEKS                       R1 R0 K1 ["_promises"]
        8 GETUPVAL                         R3 1
        9 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
       11 MOVE                             R2 R0
       12 GETIMPORT                        R1 K4 [setmetatable]
       14 CALL                             R1 2 0
       15 RETURN                           R0 1

PROTO_1:
        0 FASTCALL2K                       ASSERT R0 K0 ; [+5]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K0 ["ImageUploader.mock expects a mock PublishService"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K3 ["new"]
       10 CALL                             R1 0 1
       11 SETTABLEKS                       R0 R1 K4 ["_publishService"]
       13 RETURN                           R1 1

PROTO_2:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_publishService"]
        3 NEWTABLE                         R1 0 0
        5 SETTABLEKS                       R1 R0 K1 ["_promises"]
        7 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R3
        1 LOADNIL                          R4
        2 GETUPVAL                         R5 0
        3 CALL                             R5 0 1
        4 JUMPIFNOT                        R5 ; [+22]
        5 GETIMPORT                        R6 K1 [game]
        7 GETTABLEKS                       R5 R6 K2 ["CreatorType"]
        9 GETIMPORT                        R6 K5 [Enum.CreatorType.Group]
       11 JUMPIFNOTEQ                      R5 R6 ; [+15]
       13 GETIMPORT                        R6 K1 [game]
       15 GETTABLEKS                       R5 R6 K6 ["CreatorId"]
       17 LOADN                            R6 0
       18 JUMPIFNOTLT                      R6 R5 ; [+8]
       20 GETIMPORT                        R3 K8 [Enum.AssetCreatorType.Group]
       22 GETIMPORT                        R5 K1 [game]
       24 GETTABLEKS                       R4 R5 K6 ["CreatorId"]
       26 JUMP                             ; [+7]
       27 GETIMPORT                        R3 K10 [Enum.AssetCreatorType.User]
       29 GETUPVAL                         R5 1
       30 NAMECALL                         R5 R5 K11 ["GetUserId"]
       32 CALL                             R5 1 1
       33 MOVE                             R4 R5
       34 MOVE                             R5 R0
       35 GETUPVAL                         R7 2
       36 GETTABLEKS                       R6 R7 K12 ["_publishService"]
       38 GETUPVAL                         R8 3
       39 MOVE                             R9 R3
       40 MOVE                             R10 R4
       41 LOADK                            R11 K13 ["Image"]
       42 LOADN                            R12 0
       43 GETUPVAL                         R13 4
       44 GETUPVAL                         R14 5
       45 LOADK                            R15 K14 [""]
       46 LOADK                            R16 K14 [""]
       47 LOADN                            R17 0
       48 NAMECALL                         R6 R6 K15 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsync"]
       50 CALL                             R6 11 -1
       51 CALL                             R5 -1 0
       52 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["AssetId"]
        2 RETURN                           R1 1

PROTO_5:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R8 R1
        2 GETIMPORT                        R7 K1 [type]
        4 CALL                             R7 1 1
        5 JUMPIFEQKS                       R7 K2 ["string"] ; [+2]
        7 LOADB                            R6 0 +1
        8 LOADB                            R6 1
        9 FASTCALL2K                       ASSERT R6 K3 ; [+4]
       11 LOADK                            R7 K3 ["ImageUploader:upload() expects tempId to be a string"]
       12 GETIMPORT                        R5 K5 [assert]
       14 CALL                             R5 2 0
       15 FASTCALL1                        TYPE R2 ; [+3]
       16 MOVE                             R8 R2
       17 GETIMPORT                        R7 K1 [type]
       19 CALL                             R7 1 1
       20 JUMPIFEQKS                       R7 K2 ["string"] ; [+2]
       22 LOADB                            R6 0 +1
       23 LOADB                            R6 1
       24 FASTCALL2K                       ASSERT R6 K6 ; [+4]
       26 LOADK                            R7 K6 ["ImageUploader:upload() expects name to be a string"]
       27 GETIMPORT                        R5 K5 [assert]
       29 CALL                             R5 2 0
       30 LOADB                            R6 1
       31 FASTCALL1                        TYPE R3 ; [+3]
       32 MOVE                             R8 R3
       33 GETIMPORT                        R7 K1 [type]
       35 CALL                             R7 1 1
       36 JUMPIFEQKS                       R7 K2 ["string"] ; [+10]
       38 FASTCALL1                        TYPE R3 ; [+3]
       39 MOVE                             R8 R3
       40 GETIMPORT                        R7 K1 [type]
       42 CALL                             R7 1 1
       43 JUMPIFEQKS                       R7 K7 ["nil"] ; [+2]
       45 LOADB                            R6 0 +1
       46 LOADB                            R6 1
       47 FASTCALL2K                       ASSERT R6 K8 ; [+4]
       49 LOADK                            R7 K8 ["ImageUploader:upload() expects description to be a string or nil"]
       50 GETIMPORT                        R5 K5 [assert]
       52 CALL                             R5 2 0
       53 FASTCALL1                        TYPE R4 ; [+3]
       54 MOVE                             R8 R4
       55 GETIMPORT                        R7 K1 [type]
       57 CALL                             R7 1 1
       58 JUMPIFEQKS                       R7 K2 ["string"] ; [+2]
       60 LOADB                            R6 0 +1
       61 LOADB                            R6 1
       62 FASTCALL2K                       ASSERT R6 K9 ; [+4]
       64 LOADK                            R7 K9 ["ImageUploader:upload() expects contents to be a string"]
       65 GETIMPORT                        R5 K5 [assert]
       67 CALL                             R5 2 0
       68 ORK                              R3 R3 K10 [""]
       69 GETTABLEKS                       R6 R0 K11 ["_promises"]
       71 GETTABLE                         R5 R6 R1
       72 JUMPIFNOT                        R5 ; [+5]
       73 GETTABLEKS                       R6 R0 K11 ["_promises"]
       75 GETTABLE                         R5 R6 R1
       76 CLOSEUPVALS                      R3
       77 RETURN                           R5 1
       78 GETUPVAL                         R6 0
       79 GETTABLEKS                       R5 R6 K12 ["new"]
       81 NEWCLOSURE                       R6 P0
       82 CAPTURE                          UPVAL U1
       83 CAPTURE                          UPVAL U2
       84 CAPTURE                          VAL R0
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R2
       87 CAPTURE                          REF R3
       88 CALL                             R5 1 1
       89 DUPCLOSURE                       R8 K13 [PROTO_4]
       90 NAMECALL                         R6 R5 K14 ["andThen"]
       92 CALL                             R6 2 1
       93 MOVE                             R5 R6
       94 GETTABLEKS                       R6 R0 K11 ["_promises"]
       96 SETTABLE                         R5 R6 R1
       97 CLOSEUPVALS                      R3
       98 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [game]
       11 LOADK                            R3 K5 ["PublishService"]
       12 NAMECALL                         R1 R1 K6 ["GetService"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K4 [game]
       17 LOADK                            R4 K7 ["StudioService"]
       18 NAMECALL                         R2 R2 K6 ["GetService"]
       20 CALL                             R2 2 1
       21 GETIMPORT                        R5 K9 [require]
       23 GETTABLEKS                       R7 R0 K10 ["Packages"]
       25 GETTABLEKS                       R6 R7 K11 ["Framework"]
       27 CALL                             R5 1 1
       28 GETTABLEKS                       R4 R5 K12 ["Util"]
       30 GETTABLEKS                       R3 R4 K13 ["Promise"]
       32 GETIMPORT                        R4 K9 [require]
       34 GETTABLEKS                       R7 R0 K14 ["Src"]
       36 GETTABLEKS                       R6 R7 K15 ["Flags"]
       38 GETTABLEKS                       R5 R6 K16 ["getFFlagFixMaterialManagerGroupUpload"]
       40 CALL                             R4 1 1
       41 NEWTABLE                         R5 8 0
       43 SETTABLEKS                       R5 R5 K17 ["__index"]
       45 DUPCLOSURE                       R6 K18 [PROTO_0]
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R5
       48 SETTABLEKS                       R6 R5 K19 ["new"]
       50 DUPCLOSURE                       R6 K20 [PROTO_1]
       51 CAPTURE                          VAL R5
       52 SETTABLEKS                       R6 R5 K21 ["mock"]
       54 DUPCLOSURE                       R6 K22 [PROTO_2]
       55 SETTABLEKS                       R6 R5 K23 ["destroy"]
       57 DUPCLOSURE                       R6 K24 [PROTO_5]
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R2
       61 SETTABLEKS                       R6 R5 K25 ["upload"]
       63 RETURN                           R5 1
