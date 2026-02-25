PROTO_0:
        0 DUPTABLE                         R3 K4 [{"Size", "Title", "Header", "Buttons"}]
        1 GETIMPORT                        R4 K7 [Vector2.new]
        3 LOADN                            R5 87
        4 LOADN                            R6 145
        5 CALL                             R4 2 1
        6 SETTABLEKS                       R4 R3 K0 ["Size"]
        8 LOADK                            R6 K8 ["General"]
        9 LOADK                            R7 K9 ["SingleImageDialogHeader"]
       10 NAMECALL                         R4 R1 K10 ["getText"]
       12 CALL                             R4 3 1
       13 SETTABLEKS                       R4 R3 K1 ["Title"]
       15 LOADK                            R6 K8 ["General"]
       16 LOADK                            R7 K11 ["SingleImageDialogBody"]
       17 NAMECALL                         R4 R1 K10 ["getText"]
       19 CALL                             R4 3 1
       20 SETTABLEKS                       R4 R3 K2 ["Header"]
       22 NEWTABLE                         R4 0 1
       24 LOADK                            R7 K8 ["General"]
       25 LOADK                            R8 K12 ["ReplyOK"]
       26 NAMECALL                         R5 R1 K10 ["getText"]
       28 CALL                             R5 3 -1
       29 SETLIST                          R4 R5 -1 [1]
       31 SETTABLEKS                       R4 R3 K3 ["Buttons"]
       33 MOVE                             R4 R2
       34 GETUPVAL                         R5 0
       35 MOVE                             R6 R3
       36 CALL                             R4 2 1
       37 NAMECALL                         R4 R4 K13 ["await"]
       39 CALL                             R4 1 0
       40 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R4 K7 [{"Size", "Title", "Header", "Entries", "Buttons", "Wrapped", "Truncate"}]
        1 GETIMPORT                        R5 K10 [Vector2.new]
        3 LOADN                            R6 204
        4 LENGTH                           R9 R3
        5 MULK                             R8 R9 K12 [22]
        6 ADDK                             R7 R8 K11 [200]
        7 CALL                             R5 2 1
        8 SETTABLEKS                       R5 R4 K0 ["Size"]
       10 LOADK                            R7 K13 ["General"]
       11 LOADK                            R8 K14 ["MultiImageDialogHeader"]
       12 NAMECALL                         R5 R1 K15 ["getText"]
       14 CALL                             R5 3 1
       15 SETTABLEKS                       R5 R4 K1 ["Title"]
       17 LOADK                            R7 K13 ["General"]
       18 LOADK                            R8 K16 ["MultiImageDialogBody"]
       19 DUPTABLE                         R9 K18 [{"maxThumbnailSize"}]
       20 GETUPVAL                         R11 0
       21 DIVK                             R10 R11 K19 [1000000]
       22 SETTABLEKS                       R10 R9 K17 ["maxThumbnailSize"]
       24 NAMECALL                         R5 R1 K15 ["getText"]
       26 CALL                             R5 4 1
       27 SETTABLEKS                       R5 R4 K2 ["Header"]
       29 SETTABLEKS                       R3 R4 K3 ["Entries"]
       31 NEWTABLE                         R5 0 1
       33 LOADK                            R8 K13 ["General"]
       34 LOADK                            R9 K20 ["ReplyOK"]
       35 NAMECALL                         R6 R1 K15 ["getText"]
       37 CALL                             R6 3 -1
       38 SETLIST                          R5 R6 -1 [1]
       40 SETTABLEKS                       R5 R4 K4 ["Buttons"]
       42 LOADB                            R5 0
       43 SETTABLEKS                       R5 R4 K5 ["Wrapped"]
       45 GETIMPORT                        R5 K24 [Enum.TextTruncate.AtEnd]
       47 SETTABLEKS                       R5 R4 K6 ["Truncate"]
       49 MOVE                             R5 R2
       50 GETUPVAL                         R6 1
       51 MOVE                             R7 R4
       52 CALL                             R5 2 1
       53 NAMECALL                         R5 R5 K25 ["await"]
       55 CALL                             R5 1 0
       56 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R3 1 0
        2 DUPTABLE                         R4 K3 [{"type", "name", "description"}]
        3 GETTABLEKS                       R5 R1 K4 ["Name"]
        5 SETTABLEKS                       R5 R4 K0 ["type"]
        7 SETTABLEKS                       R0 R4 K1 ["name"]
        9 SETTABLEKS                       R2 R4 K2 ["description"]
       11 SETTABLE                         R4 R3 R0
       12 RETURN                           R3 1

PROTO_3:
        0 LOADK                            R5 K0 ["--EA0A21C3-8388-4038-9BD5-92C8B1B7BF8E\r\n"]
        1 LOADK                            R6 K1 ["Content-Type: application/json\r\n"]
        2 LOADK                            R7 K2 ["Content-Disposition: form-data; name=\"config\"; filename=\"config.json\"\r\n"]
        3 LOADK                            R8 K3 ["\r\n"]
        4 MOVE                             R9 R0
        5 LOADK                            R10 K3 ["\r\n"]
        6 LOADK                            R11 K0 ["--EA0A21C3-8388-4038-9BD5-92C8B1B7BF8E\r\n"]
        7 LOADK                            R12 K4 ["Content-Disposition: form-data; name=\""]
        8 MOVE                             R13 R1
        9 LOADK                            R14 K5 ["\"; filename=\""]
       10 MOVE                             R15 R1
       11 LOADK                            R16 K6 ["."]
       12 MOVE                             R17 R2
       13 LOADK                            R18 K7 ["\"\r\n"]
       14 LOADK                            R19 K8 ["Content-Type: application/octet-stream\r\n"]
       15 LOADK                            R20 K3 ["\r\n"]
       16 MOVE                             R21 R3
       17 LOADK                            R22 K3 ["\r\n"]
       18 LOADK                            R23 K9 ["--EA0A21C3-8388-4038-9BD5-92C8B1B7BF8E--\r\n"]
       19 CONCAT                           R4 R5 R23
       20 RETURN                           R4 1

PROTO_4:
        0 FASTCALL1                        ASSERT R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [assert]
        4 CALL                             R2 1 0
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R4 R5 K2 ["IMAGE_TYPES"]
        9 NAMECALL                         R2 R2 K3 ["PromptImportFile"]
       11 CALL                             R2 2 1
       12 JUMPIFNOT                        R2 ; [+11]
       13 GETTABLEKS                       R3 R2 K4 ["Size"]
       15 GETUPVAL                         R4 2
       16 JUMPIFNOTLT                      R4 R3 ; [+6]
       18 GETUPVAL                         R3 3
       19 MOVE                             R4 R0
       20 MOVE                             R5 R1
       21 CALL                             R3 2 0
       22 RETURN                           R0 0
       23 RETURN                           R2 1
       24 RETURN                           R0 0

PROTO_5:
        0 AND                              R4 R1 R2
        1 FASTCALL1                        ASSERT R4 ; [+2]
        2 GETIMPORT                        R3 K1 [assert]
        4 CALL                             R3 1 0
        5 GETUPVAL                         R3 0
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R5 R6 K2 ["IMAGE_TYPES"]
        9 NAMECALL                         R3 R3 K3 ["PromptImportFiles"]
       11 CALL                             R3 2 1
       12 NEWTABLE                         R4 0 0
       14 NEWTABLE                         R5 0 0
       16 JUMPIFNOT                        R3 ; [+45]
       17 LENGTH                           R6 R3
       18 LOADN                            R7 0
       19 JUMPIFNOTLT                      R7 R6 ; [+42]
       21 GETIMPORT                        R6 K5 [ipairs]
       23 MOVE                             R7 R3
       24 CALL                             R6 1 3
       25 FORGPREP_INEXT                   R6
       26 GETTABLEKS                       R11 R10 K6 ["Size"]
       28 GETUPVAL                         R12 2
       29 JUMPIFNOTLT                      R12 R11 ; [+10]
       31 GETTABLEKS                       R13 R10 K7 ["Name"]
       33 FASTCALL2                        TABLE_INSERT R4 R13 ; [+4]
       35 MOVE                             R12 R4
       36 GETIMPORT                        R11 K10 [table.insert]
       38 CALL                             R11 2 0
       39 JUMP                             ; [+7]
       40 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       42 MOVE                             R12 R5
       43 MOVE                             R13 R10
       44 GETIMPORT                        R11 K10 [table.insert]
       46 CALL                             R11 2 0
       47 FORGLOOP                         R6 2 [inext] ; [-22]
       49 GETIMPORT                        R6 K12 [next]
       51 MOVE                             R7 R4
       52 CALL                             R6 1 1
       53 JUMPIFEQKNIL                     R6 ; [+7]
       55 GETUPVAL                         R6 3
       56 MOVE                             R7 R0
       57 MOVE                             R8 R1
       58 MOVE                             R9 R2
       59 MOVE                             R10 R4
       60 CALL                             R6 4 0
       61 RETURN                           R5 1
       62 RETURN                           R0 0

PROTO_6:
        0 NAMECALL                         R2 R0 K0 ["GetBinaryContents"]
        2 CALL                             R2 1 1
        3 GETIMPORT                        R3 K3 [string.lower]
        5 GETTABLEKS                       R4 R0 K4 ["Name"]
        7 CALL                             R3 1 1
        8 GETIMPORT                        R4 K6 [string.find]
       10 MOVE                             R5 R3
       11 LOADK                            R6 K7 ["."]
       12 LOADN                            R7 1
       13 LOADB                            R8 1
       14 CALL                             R4 4 1
       15 ADDK                             R7 R4 K8 [1]
       16 FASTCALL2                        STRING_SUB R3 R7 ; [+4]
       18 MOVE                             R6 R3
       19 GETIMPORT                        R5 K10 [string.sub]
       21 CALL                             R5 2 1
       22 GETIMPORT                        R6 K12 [string.format]
       24 LOADK                            R7 K13 ["--EA0A21C3-8388-4038-9BD5-92C8B1B7BF8E\r\nContent-Type: image/%s\r\nContent-Disposition: form-data; filename=\"%s\"; name=\"request.files\"\r\n\r\n%s\r\n--EA0A21C3-8388-4038-9BD5-92C8B1B7BF8E--\r\n"]
       25 MOVE                             R8 R5
       26 MOVE                             R9 R3
       27 MOVE                             R10 R2
       28 CALL                             R6 4 1
       29 DUPTABLE                         R7 K19 [{"Url", "Method", "Body", "CachePolicy", "Headers"}]
       30 SETTABLEKS                       R1 R7 K14 ["Url"]
       32 LOADK                            R8 K20 ["POST"]
       33 SETTABLEKS                       R8 R7 K15 ["Method"]
       35 SETTABLEKS                       R6 R7 K16 ["Body"]
       37 GETIMPORT                        R8 K24 [Enum.HttpCachePolicy.None]
       39 SETTABLEKS                       R8 R7 K17 ["CachePolicy"]
       41 NEWTABLE                         R8 1 0
       43 LOADK                            R9 K25 ["multipart/form-data; boundary=EA0A21C3-8388-4038-9BD5-92C8B1B7BF8E"]
       44 SETTABLEKS                       R9 R8 K26 ["Content-Type"]
       46 SETTABLEKS                       R8 R7 K18 ["Headers"]
       48 RETURN                           R7 1

PROTO_7:
        0 NAMECALL                         R3 R0 K0 ["GetBinaryContents"]
        2 CALL                             R3 1 1
        3 GETIMPORT                        R4 K3 [string.lower]
        5 GETTABLEKS                       R5 R0 K4 ["Name"]
        7 CALL                             R4 1 1
        8 GETIMPORT                        R5 K6 [string.find]
       10 MOVE                             R6 R4
       11 LOADK                            R7 K7 ["."]
       12 LOADN                            R8 1
       13 LOADB                            R9 1
       14 CALL                             R5 4 1
       15 ADDK                             R8 R5 K8 [1]
       16 FASTCALL2                        STRING_SUB R4 R8 ; [+4]
       18 MOVE                             R7 R4
       19 GETIMPORT                        R6 K10 [string.sub]
       21 CALL                             R6 2 1
       22 GETTABLEKS                       R8 R0 K4 ["Name"]
       24 LOADN                            R9 1
       25 SUBK                             R10 R5 K8 [1]
       26 FASTCALL                         STRING_SUB ; [+2]
       27 GETIMPORT                        R7 K10 [string.sub]
       29 CALL                             R7 3 1
       30 GETUPVAL                         R8 0
       31 GETIMPORT                        R11 K14 [Enum.AssetType.Image]
       33 NEWTABLE                         R10 1 0
       35 DUPTABLE                         R12 K18 [{"type", "name", "description"}]
       36 GETTABLEKS                       R13 R11 K4 ["Name"]
       38 SETTABLEKS                       R13 R12 K15 ["type"]
       40 SETTABLEKS                       R7 R12 K16 ["name"]
       42 LOADK                            R13 K19 [""]
       43 SETTABLEKS                       R13 R12 K17 ["description"]
       45 SETTABLE                         R12 R10 R7
       46 NAMECALL                         R8 R8 K20 ["JSONEncode"]
       48 CALL                             R8 2 1
       49 LOADK                            R11 K21 ["--EA0A21C3-8388-4038-9BD5-92C8B1B7BF8E\r\n"]
       50 LOADK                            R12 K22 ["Content-Type: application/json\r\n"]
       51 LOADK                            R13 K23 ["Content-Disposition: form-data; name=\"config\"; filename=\"config.json\"\r\n"]
       52 LOADK                            R14 K24 ["\r\n"]
       53 MOVE                             R15 R8
       54 LOADK                            R16 K24 ["\r\n"]
       55 LOADK                            R17 K21 ["--EA0A21C3-8388-4038-9BD5-92C8B1B7BF8E\r\n"]
       56 LOADK                            R18 K25 ["Content-Disposition: form-data; name=\""]
       57 MOVE                             R19 R7
       58 LOADK                            R20 K26 ["\"; filename=\""]
       59 MOVE                             R21 R7
       60 LOADK                            R22 K7 ["."]
       61 MOVE                             R23 R6
       62 LOADK                            R24 K27 ["\"\r\n"]
       63 LOADK                            R25 K28 ["Content-Type: application/octet-stream\r\n"]
       64 LOADK                            R26 K24 ["\r\n"]
       65 MOVE                             R27 R3
       66 LOADK                            R28 K24 ["\r\n"]
       67 LOADK                            R29 K29 ["--EA0A21C3-8388-4038-9BD5-92C8B1B7BF8E--\r\n"]
       68 CONCAT                           R10 R11 R29
       69 MOVE                             R9 R10
       70 GETIMPORT                        R10 K31 [print]
       72 MOVE                             R11 R9
       73 CALL                             R10 1 0
       74 DUPTABLE                         R10 K36 [{"Url", "Method", "Body", "Headers"}]
       75 SETTABLEKS                       R1 R10 K32 ["Url"]
       77 LOADK                            R11 K37 ["POST"]
       78 SETTABLEKS                       R11 R10 K33 ["Method"]
       80 SETTABLEKS                       R9 R10 K34 ["Body"]
       82 NEWTABLE                         R11 1 0
       84 LOADK                            R12 K38 ["multipart/form-data; boundary=EA0A21C3-8388-4038-9BD5-92C8B1B7BF8E"]
       85 SETTABLEKS                       R12 R11 K39 ["Content-Type"]
       87 SETTABLEKS                       R11 R10 K35 ["Headers"]
       89 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [settings]
        3 CALL                             R1 0 1
        4 LOADK                            R3 K2 ["FileMaxSizeBytes"]
        5 NAMECALL                         R1 R1 K3 ["GetFVariable"]
        7 CALL                             R1 2 -1
        8 FASTCALL                         TONUMBER ; [+2]
        9 GETIMPORT                        R0 K5 [tonumber]
       11 CALL                             R0 -1 1
       12 GETIMPORT                        R1 K7 [game]
       14 LOADK                            R3 K8 ["StudioService"]
       15 NAMECALL                         R1 R1 K9 ["GetService"]
       17 CALL                             R1 2 1
       18 GETIMPORT                        R2 K7 [game]
       20 LOADK                            R4 K10 ["HttpService"]
       21 NAMECALL                         R2 R2 K9 ["GetService"]
       23 CALL                             R2 2 1
       24 GETIMPORT                        R6 K12 [script]
       26 GETTABLEKS                       R5 R6 K13 ["Parent"]
       28 GETTABLEKS                       R4 R5 K13 ["Parent"]
       30 GETTABLEKS                       R3 R4 K13 ["Parent"]
       32 GETIMPORT                        R4 K15 [require]
       34 GETTABLEKS                       R8 R3 K16 ["Src"]
       36 GETTABLEKS                       R7 R8 K17 ["Components"]
       38 GETTABLEKS                       R6 R7 K18 ["Dialog"]
       40 GETTABLEKS                       R5 R6 K19 ["SimpleDialog"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K15 [require]
       45 GETTABLEKS                       R9 R3 K16 ["Src"]
       47 GETTABLEKS                       R8 R9 K17 ["Components"]
       49 GETTABLEKS                       R7 R8 K18 ["Dialog"]
       51 GETTABLEKS                       R6 R7 K20 ["ListDialog"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K15 [require]
       56 GETTABLEKS                       R9 R3 K16 ["Src"]
       58 GETTABLEKS                       R8 R9 K21 ["Util"]
       60 GETTABLEKS                       R7 R8 K22 ["DEPRECATED_Constants"]
       62 CALL                             R6 1 1
       63 NEWTABLE                         R7 4 0
       65 DUPCLOSURE                       R8 K23 [PROTO_0]
       66 CAPTURE                          VAL R4
       67 DUPCLOSURE                       R9 K24 [PROTO_1]
       68 CAPTURE                          VAL R0
       69 CAPTURE                          VAL R5
       70 DUPCLOSURE                       R10 K25 [PROTO_2]
       71 DUPCLOSURE                       R11 K26 [PROTO_3]
       72 DUPCLOSURE                       R12 K27 [PROTO_4]
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R0
       76 CAPTURE                          VAL R8
       77 SETTABLEKS                       R12 R7 K28 ["PromptForGameIcon"]
       79 DUPCLOSURE                       R12 K29 [PROTO_5]
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R0
       83 CAPTURE                          VAL R9
       84 SETTABLEKS                       R12 R7 K30 ["PromptForThumbnails"]
       86 DUPCLOSURE                       R12 K31 [PROTO_6]
       87 SETTABLEKS                       R12 R7 K32 ["GetAssetPublishRequestInfo"]
       89 DUPCLOSURE                       R12 K33 [PROTO_7]
       90 CAPTURE                          VAL R2
       91 SETTABLEKS                       R12 R7 K34 ["CreatePostV1AssetsUpload"]
       93 RETURN                           R7 1
