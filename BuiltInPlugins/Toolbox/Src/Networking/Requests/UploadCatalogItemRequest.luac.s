PROTO_0:
        0 NEWTABLE                         R3 1 0
        2 DUPTABLE                         R4 K3 [{"type", "name", "description"}]
        3 GETTABLEKS                       R5 R1 K4 ["Name"]
        5 SETTABLEKS                       R5 R4 K0 ["type"]
        7 SETTABLEKS                       R0 R4 K1 ["name"]
        9 SETTABLEKS                       R2 R4 K2 ["description"]
       11 SETTABLE                         R4 R3 R0
       12 RETURN                           R3 1

PROTO_1:
        0 LOADK                            R6 K0 ["--"]
        1 MOVE                             R7 R4
        2 LOADK                            R8 K1 ["\r\n"]
        3 LOADK                            R9 K2 ["Content-Type: application/json\r\n"]
        4 LOADK                            R10 K3 ["Content-Disposition: form-data; name=\"config\"; filename=\"config.json\"\r\n"]
        5 LOADK                            R11 K1 ["\r\n"]
        6 MOVE                             R12 R0
        7 LOADK                            R13 K1 ["\r\n"]
        8 LOADK                            R14 K0 ["--"]
        9 MOVE                             R15 R4
       10 LOADK                            R16 K1 ["\r\n"]
       11 LOADK                            R17 K4 ["Content-Disposition: form-data; name=\""]
       12 MOVE                             R18 R1
       13 LOADK                            R19 K5 ["\"; filename=\""]
       14 MOVE                             R20 R1
       15 LOADK                            R21 K6 ["."]
       16 MOVE                             R22 R2
       17 LOADK                            R23 K7 ["\"\r\n"]
       18 LOADK                            R24 K8 ["Content-Type: application/octet-stream\r\n"]
       19 LOADK                            R25 K1 ["\r\n"]
       20 MOVE                             R26 R3
       21 LOADK                            R27 K1 ["\r\n"]
       22 LOADK                            R28 K0 ["--"]
       23 MOVE                             R29 R4
       24 LOADK                            R30 K9 ["--\r\n"]
       25 CONCAT                           R5 R6 R30
       26 RETURN                           R5 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+81]
        7 JUMPIFNOT                        R2 ; [+80]
        8 GETTABLEKS                       R3 R2 K2 ["AssetDetails"]
       10 JUMPIFNOT                        R3 ; [+77]
       11 GETTABLEKS                       R4 R2 K2 ["AssetDetails"]
       13 LENGTH                           R3 R4
       14 LOADN                            R4 0
       15 JUMPIFNOTLT                      R4 R3 ; [+72]
       17 GETTABLEKS                       R4 R2 K2 ["AssetDetails"]
       19 GETTABLEN                        R3 R4 1
       20 GETTABLEKS                       R4 R3 K3 ["uploadAssetError"]
       22 JUMPIFNOT                        R4 ; [+21]
       23 GETUPVAL                         R4 1
       24 GETUPVAL                         R6 2
       25 GETTABLEKS                       R7 R3 K3 ["uploadAssetError"]
       27 CALL                             R6 1 -1
       28 NAMECALL                         R4 R4 K4 ["dispatch"]
       30 CALL                             R4 -1 0
       31 GETUPVAL                         R4 1
       32 GETUPVAL                         R6 3
       33 LOADB                            R7 0
       34 CALL                             R6 1 -1
       35 NAMECALL                         R4 R4 K4 ["dispatch"]
       37 CALL                             R4 -1 0
       38 GETUPVAL                         R4 4
       39 GETTABLEKS                       R4 R4 K5 ["incrementUploadAssetFailure"]
       41 GETUPVAL                         R5 5
       42 CALL                             R4 1 0
       43 RETURN                           R0 0
       44 GETTABLEKS                       R4 R3 K6 ["assetId"]
       46 JUMPIFNOT                        R4 ; [+41]
       47 GETUPVAL                         R4 1
       48 GETUPVAL                         R6 6
       49 GETTABLEKS                       R7 R3 K6 ["assetId"]
       51 CALL                             R6 1 -1
       52 NAMECALL                         R4 R4 K4 ["dispatch"]
       54 CALL                             R4 -1 0
       55 GETUPVAL                         R4 1
       56 GETUPVAL                         R6 7
       57 GETUPVAL                         R7 8
       58 GETTABLEKS                       R8 R3 K6 ["assetId"]
       60 GETUPVAL                         R9 5
       61 GETUPVAL                         R10 9
       62 GETUPVAL                         R11 10
       63 GETUPVAL                         R12 11
       64 CALL                             R6 6 -1
       65 NAMECALL                         R4 R4 K4 ["dispatch"]
       67 CALL                             R4 -1 0
       68 GETUPVAL                         R4 4
       69 GETTABLEKS                       R4 R4 K7 ["incrementUploadAssetSuccess"]
       71 GETUPVAL                         R5 5
       72 CALL                             R4 1 0
       73 GETUPVAL                         R4 12
       74 JUMPIFEQKNIL                     R4 ; [+12]
       76 GETUPVAL                         R4 1
       77 GETUPVAL                         R6 13
       78 GETUPVAL                         R7 8
       79 GETTABLEKS                       R8 R3 K6 ["assetId"]
       81 GETUPVAL                         R9 12
       82 GETUPVAL                         R10 14
       83 CALL                             R6 4 -1
       84 NAMECALL                         R4 R4 K4 ["dispatch"]
       86 CALL                             R4 -1 0
       87 RETURN                           R0 0
       88 GETUPVAL                         R3 1
       89 GETUPVAL                         R5 2
       90 LOADK                            R6 K8 ["Unknown Error"]
       91 CALL                             R5 1 -1
       92 NAMECALL                         R3 R3 K4 ["dispatch"]
       94 CALL                             R3 -1 0
       95 GETUPVAL                         R3 1
       96 GETUPVAL                         R5 3
       97 LOADB                            R6 0
       98 CALL                             R5 1 -1
       99 NAMECALL                         R3 R3 K4 ["dispatch"]
      101 CALL                             R3 -1 0
      102 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["Lua toolbox: SerializeInstances failed"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 FASTCALL1                        TOSTRING R0 ; [+3]
       12 MOVE                             R5 R0
       13 GETIMPORT                        R4 K5 [tostring]
       15 CALL                             R4 1 1
       16 CALL                             R3 1 -1
       17 NAMECALL                         R1 R1 K6 ["dispatch"]
       19 CALL                             R1 -1 0
       20 GETUPVAL                         R1 1
       21 GETUPVAL                         R3 3
       22 LOADB                            R4 0
       23 CALL                             R3 1 -1
       24 NAMECALL                         R1 R1 K6 ["dispatch"]
       26 CALL                             R1 -1 0
       27 GETUPVAL                         R1 4
       28 GETTABLEKS                       R1 R1 K7 ["incrementUploadAssetFailure"]
       30 GETUPVAL                         R2 5
       31 CALL                             R1 1 0
       32 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETUPVAL                         R5 2
        3 GETUPVAL                         R6 3
        4 NEWTABLE                         R3 1 0
        6 DUPTABLE                         R7 K3 [{"type", "name", "description"}]
        7 GETTABLEKS                       R8 R5 K4 ["Name"]
        9 SETTABLEKS                       R8 R7 K0 ["type"]
       11 SETTABLEKS                       R4 R7 K1 ["name"]
       13 SETTABLEKS                       R6 R7 K2 ["description"]
       15 SETTABLE                         R7 R3 R4
       16 NAMECALL                         R1 R1 K5 ["jsonEncode"]
       18 CALL                             R1 2 1
       19 GETUPVAL                         R2 4
       20 NEWTABLE                         R3 0 2
       22 DUPTABLE                         R4 K9 [{[1] = "application/json", ["disposition"], ["value"]}]
       23 DUPTABLE                         R5 K13 [{["name"] = "config", ["filename"] = "config.json"}]
       24 SETTABLEKS                       R5 R4 K7 ["disposition"]
       26 SETTABLEKS                       R1 R4 K8 ["value"]
       28 DUPTABLE                         R5 K15 [{[1] = "application/octet-stream", ["disposition"], ["value"]}]
       29 DUPTABLE                         R6 K16 [{"name", "filename"}]
       30 GETUPVAL                         R7 1
       31 SETTABLEKS                       R7 R6 K1 ["name"]
       33 GETUPVAL                         R8 1
       34 LOADK                            R9 K17 ["."]
       35 GETUPVAL                         R10 5
       36 CONCAT                           R7 R8 R10
       37 SETTABLEKS                       R7 R6 K11 ["filename"]
       39 SETTABLEKS                       R6 R5 K7 ["disposition"]
       41 SETTABLEKS                       R0 R5 K8 ["value"]
       43 SETLIST                          R3 R4 2 [1]
       45 CALL                             R2 1 1
       46 GETUPVAL                         R3 0
       47 MOVE                             R5 R2
       48 GETUPVAL                         R6 6
       49 GETTABLEKS                       R6 R6 K18 ["MULTIPART_FORM_BOUNDARY"]
       51 NAMECALL                         R3 R3 K19 ["uploadCatalogItem"]
       53 CALL                             R3 3 1
       54 GETUPVAL                         R5 7
       55 GETUPVAL                         R6 8
       56 NAMECALL                         R3 R3 K20 ["andThen"]
       58 CALL                             R3 3 -1
       59 RETURN                           R3 -1

PROTO_7:
        0 GETUPVAL                         R4 0
        1 ORK                              R3 R4 K0 [""]
        2 LOADN                            R4 1
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K1 ["NAME_CHARACTER_LIMIT"]
        6 FASTCALL                         STRING_SUB ; [+2]
        7 GETIMPORT                        R2 K4 [string.sub]
        9 CALL                             R2 3 1
       10 SETUPVAL                         R2 0
       11 GETUPVAL                         R4 2
       12 ORK                              R3 R4 K0 [""]
       13 LOADN                            R4 1
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K5 ["DESCRIPTION_CHARACTER_LIMIT"]
       17 FASTCALL                         STRING_SUB ; [+2]
       18 GETIMPORT                        R2 K4 [string.sub]
       20 CALL                             R2 3 1
       21 SETUPVAL                         R2 2
       22 GETUPVAL                         R4 3
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R5 R5 K6 ["SCREENS"]
       26 GETTABLEKS                       R5 R5 K7 ["UPLOADING_ASSET"]
       28 CALL                             R4 1 -1
       29 NAMECALL                         R2 R0 K8 ["dispatch"]
       31 CALL                             R2 -1 0
       32 NEWCLOSURE                       R2 P0
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U5
       36 CAPTURE                          UPVAL U6
       37 CAPTURE                          UPVAL U7
       38 CAPTURE                          UPVAL U8
       39 CAPTURE                          UPVAL U9
       40 CAPTURE                          UPVAL U10
       41 CAPTURE                          UPVAL U11
       42 CAPTURE                          UPVAL U0
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          UPVAL U12
       45 CAPTURE                          UPVAL U13
       46 CAPTURE                          UPVAL U14
       47 CAPTURE                          UPVAL U15
       48 NEWCLOSURE                       R3 P1
       49 CAPTURE                          UPVAL U16
       50 CAPTURE                          VAL R0
       51 CAPTURE                          UPVAL U5
       52 CAPTURE                          UPVAL U6
       53 CAPTURE                          UPVAL U7
       54 CAPTURE                          UPVAL U8
       55 NEWCLOSURE                       R4 P2
       56 CAPTURE                          UPVAL U16
       57 CAPTURE                          VAL R0
       58 CAPTURE                          UPVAL U5
       59 CAPTURE                          UPVAL U6
       60 CAPTURE                          UPVAL U7
       61 CAPTURE                          UPVAL U8
       62 GETUPVAL                         R5 17
       63 GETUPVAL                         R6 12
       64 GETTABLEKS                       R7 R1 K9 ["StudioAssetService"]
       66 CALL                             R5 2 1
       67 NEWCLOSURE                       R7 P3
       68 CAPTURE                          UPVAL U11
       69 CAPTURE                          UPVAL U0
       70 CAPTURE                          UPVAL U8
       71 CAPTURE                          UPVAL U2
       72 CAPTURE                          UPVAL U18
       73 CAPTURE                          UPVAL U19
       74 CAPTURE                          UPVAL U1
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R4
       77 MOVE                             R8 R3
       78 NAMECALL                         R5 R5 K10 ["andThen"]
       80 CALL                             R5 3 -1
       81 RETURN                           R5 -1

PROTO_8:
        0 NEWCLOSURE                       R8 P0
        1 CAPTURE                          REF R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          REF R3
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          VAL R4
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R5
       14 CAPTURE                          VAL R6
       15 CAPTURE                          UPVAL U8
       16 CAPTURE                          VAL R7
       17 CAPTURE                          UPVAL U9
       18 CAPTURE                          UPVAL U10
       19 CAPTURE                          UPVAL U11
       20 CAPTURE                          VAL R2
       21 CLOSEUPVALS                      R1
       22 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETTABLEKS                       R1 R1 K6 ["Parent"]
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R3 R1 K9 ["Src"]
       21 GETTABLEKS                       R3 R3 K10 ["Actions"]
       23 GETTABLEKS                       R3 R3 K11 ["SetAssetId"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K8 [require]
       28 GETTABLEKS                       R4 R1 K9 ["Src"]
       30 GETTABLEKS                       R4 R4 K10 ["Actions"]
       32 GETTABLEKS                       R4 R4 K12 ["NetworkError"]
       34 CALL                             R3 1 1
       35 GETIMPORT                        R4 K8 [require]
       37 GETTABLEKS                       R5 R1 K9 ["Src"]
       39 GETTABLEKS                       R5 R5 K10 ["Actions"]
       41 GETTABLEKS                       R5 R5 K13 ["SetCurrentScreen"]
       43 CALL                             R4 1 1
       44 GETIMPORT                        R5 K8 [require]
       46 GETTABLEKS                       R6 R1 K9 ["Src"]
       48 GETTABLEKS                       R6 R6 K10 ["Actions"]
       50 GETTABLEKS                       R6 R6 K14 ["UploadResult"]
       52 CALL                             R5 1 1
       53 GETTABLEKS                       R6 R1 K9 ["Src"]
       55 GETTABLEKS                       R6 R6 K15 ["Util"]
       57 GETIMPORT                        R7 K8 [require]
       59 GETTABLEKS                       R8 R6 K16 ["DebugFlags"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K8 [require]
       64 GETTABLEKS                       R9 R6 K17 ["AssetConfigConstants"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K8 [require]
       69 GETTABLEKS                       R10 R6 K18 ["SerializeInstances"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K8 [require]
       74 GETTABLEKS                       R11 R6 K19 ["Analytics"]
       76 GETTABLEKS                       R11 R11 K19 ["Analytics"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K8 [require]
       81 GETTABLEKS                       R12 R6 K20 ["createMultipartFormDataBody"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K8 [require]
       86 GETTABLEKS                       R13 R1 K9 ["Src"]
       88 GETTABLEKS                       R13 R13 K21 ["Networking"]
       90 GETTABLEKS                       R13 R13 K22 ["Requests"]
       92 GETTABLEKS                       R13 R13 K23 ["UploadCatalogItemMeshPartFormatRequest"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K8 [require]
       97 GETTABLEKS                       R14 R1 K9 ["Src"]
       99 GETTABLEKS                       R14 R14 K21 ["Networking"]
      101 GETTABLEKS                       R14 R14 K22 ["Requests"]
      103 GETTABLEKS                       R14 R14 K24 ["UGCAssetUploadDataSharingRequest"]
      105 CALL                             R13 1 1
      106 DUPCLOSURE                       R14 K25 [PROTO_0]
      107 DUPCLOSURE                       R15 K26 [PROTO_1]
      108 DUPCLOSURE                       R16 K27 [PROTO_8]
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R0
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R11
      121 RETURN                           R16 1
