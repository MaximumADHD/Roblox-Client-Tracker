PROTO_0:
        0 DUPTABLE                         R0 K1 [{"_networkImp"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K2 ["new"]
        4 CALL                             R1 0 1
        5 SETTABLEKS                       R1 R0 K0 ["_networkImp"]
        7 GETUPVAL                         R3 1
        8 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
       10 MOVE                             R2 R0
       11 GETIMPORT                        R1 K4 [setmetatable]
       13 CALL                             R1 2 0
       14 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["shouldDebugUrls"]
        3 CALL                             R4 0 1
        4 JUMPIFNOT                        R4 ; [+33]
        5 GETIMPORT                        R4 K2 [print]
        7 LOADK                            R5 K3 ["NetworkInterface:%s()"]
        8 MOVE                             R7 R0
        9 NAMECALL                         R5 R5 K4 ["format"]
       11 CALL                             R5 2 -1
       12 CALL                             R4 -1 0
       13 GETIMPORT                        R4 K2 [print]
       15 LOADK                            R5 K5 ["\t%s %s"]
       16 NAMECALL                         R8 R1 K7 ["upper"]
       18 CALL                             R8 1 1
       19 ORK                              R7 R8 K6 ["method=nil"]
       20 ORK                              R8 R2 K8 ["url=nil"]
       21 NAMECALL                         R5 R5 K4 ["format"]
       23 CALL                             R5 3 -1
       24 CALL                             R4 -1 0
       25 JUMPIFNOT                        R3 ; [+12]
       26 GETIMPORT                        R4 K2 [print]
       28 LOADK                            R5 K9 ["\t%s"]
       29 FASTCALL1                        TOSTRING R3 ; [+3]
       30 MOVE                             R8 R3
       31 GETIMPORT                        R7 K11 [tostring]
       33 CALL                             R7 1 1
       34 NAMECALL                         R5 R5 K4 ["format"]
       36 CALL                             R5 2 -1
       37 CALL                             R4 -1 0
       38 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+3]
        2 GETTABLEKS                       R1 R0 K0 ["StatusCode"]
        4 JUMP                             ; [+2]
        5 GETTABLEKS                       R1 R0 K1 ["responseCode"]
        7 JUMPIFNOTEQKNIL                  R1 ; [+14]
        9 GETTABLEKS                       R2 R0 K2 ["HttpError"]
       11 GETIMPORT                        R3 K5 [Enum.HttpError.Aborted]
       13 JUMPIFNOTEQ                      R2 R3 ; [+58]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R2 R3 K6 ["reject"]
       18 MOVE                             R3 R0
       19 CALL                             R2 1 -1
       20 RETURN                           R2 -1
       21 JUMP                             ; [+50]
       22 LOADB                            R2 0
       23 LOADN                            R3 144
       24 JUMPIFNOTLE                      R3 R1 ; [+6]
       26 LOADN                            R3 243
       27 JUMPIFLE                         R1 R3 ; [+2]
       29 LOADB                            R2 0 +1
       30 LOADB                            R2 1
       31 GETUPVAL                         R4 2
       32 GETTABLEKS                       R3 R4 K7 ["attempts"]
       34 GETUPVAL                         R5 2
       35 GETTABLEKS                       R4 R5 K8 ["maxRetries"]
       37 JUMPIFLE                         R4 R3 ; [+2]
       39 JUMPIFNOT                        R2 ; [+32]
       40 GETUPVAL                         R3 0
       41 JUMPIFNOT                        R3 ; [+24]
       42 GETTABLEKS                       R3 R0 K9 ["Body"]
       44 JUMPIFNOT                        R3 ; [+18]
       45 GETTABLEKS                       R4 R0 K9 ["Body"]
       47 GETTABLEKS                       R3 R4 K10 ["errors"]
       49 JUMPIFNOT                        R3 ; [+13]
       50 GETTABLEKS                       R5 R0 K9 ["Body"]
       52 GETTABLEKS                       R4 R5 K10 ["errors"]
       54 GETTABLEN                        R3 R4 1
       55 JUMPIFNOT                        R3 ; [+7]
       56 GETTABLEKS                       R6 R0 K9 ["Body"]
       58 GETTABLEKS                       R5 R6 K10 ["errors"]
       60 GETTABLEN                        R4 R5 1
       61 GETTABLEKS                       R3 R4 K11 ["userFacingMessage"]
       63 ORK                              R4 R3 K12 ["Something went wrong"]
       64 SETTABLEKS                       R4 R0 K13 ["responseBody"]
       66 GETUPVAL                         R4 1
       67 GETTABLEKS                       R3 R4 K6 ["reject"]
       69 MOVE                             R4 R0
       70 CALL                             R3 1 -1
       71 RETURN                           R3 -1
       72 LOADN                            R3 2
       73 GETUPVAL                         R6 2
       74 GETTABLEKS                       R5 R6 K7 ["attempts"]
       76 SUBK                             R4 R5 K14 [1]
       77 POW                              R2 R3 R4
       78 GETIMPORT                        R3 K16 [wait]
       80 MOVE                             R4 R2
       81 CALL                             R3 1 0
       82 GETUPVAL                         R3 3
       83 GETUPVAL                         R4 4
       84 GETUPVAL                         R5 2
       85 GETUPVAL                         R6 0
       86 CALL                             R3 3 -1
       87 RETURN                           R3 -1

PROTO_3:
        0 MOVE                             R3 R1
        1 JUMPIF                           R3 ; [+10]
        2 DUPTABLE                         R3 K3 [{"attempts", "time", "maxRetries"}]
        3 LOADN                            R4 0
        4 SETTABLEKS                       R4 R3 K0 ["attempts"]
        6 LOADN                            R4 0
        7 SETTABLEKS                       R4 R3 K1 ["time"]
        9 LOADN                            R4 5
       10 SETTABLEKS                       R4 R3 K2 ["maxRetries"]
       12 MOVE                             R1 R3
       13 ORK                              R2 R2 K4 [False]
       14 GETTABLEKS                       R4 R1 K0 ["attempts"]
       16 ADDK                             R3 R4 K5 [1]
       17 SETTABLEKS                       R3 R1 K0 ["attempts"]
       19 MOVE                             R3 R0
       20 CALL                             R3 0 1
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          REF R2
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          REF R1
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          VAL R0
       27 NAMECALL                         R3 R3 K6 ["catch"]
       29 CALL                             R3 2 -1
       30 CLOSEUPVALS                      R1
       31 RETURN                           R3 -1

PROTO_4:
        0 NAMECALL                         R2 R1 K0 ["GetBinaryContents"]
        2 CALL                             R2 1 1
        3 GETIMPORT                        R3 K3 [string.lower]
        5 GETTABLEKS                       R4 R1 K4 ["Name"]
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
       22 GETUPVAL                         R6 0
       23 LOADB                            R8 0
       24 NAMECALL                         R6 R6 K11 ["GenerateGUID"]
       26 CALL                             R6 2 1
       27 GETIMPORT                        R7 K13 [string.format]
       29 LOADK                            R8 K14 ["--%s\r\nContent-Type: image/%s\r\nContent-Disposition: form-data; filename=\"%s\"; name=\"request.files\"\r\n\r\n%s\r\n--%s--\r\n"]
       30 MOVE                             R9 R6
       31 MOVE                             R10 R5
       32 MOVE                             R11 R3
       33 MOVE                             R12 R2
       34 MOVE                             R13 R6
       35 CALL                             R7 6 1
       36 DUPTABLE                         R8 K20 [{"Url", "Method", "Body", "CachePolicy", "Headers"}]
       37 SETTABLEKS                       R0 R8 K15 ["Url"]
       39 LOADK                            R9 K21 ["POST"]
       40 SETTABLEKS                       R9 R8 K16 ["Method"]
       42 SETTABLEKS                       R7 R8 K17 ["Body"]
       44 GETIMPORT                        R9 K25 [Enum.HttpCachePolicy.None]
       46 SETTABLEKS                       R9 R8 K18 ["CachePolicy"]
       48 NEWTABLE                         R9 1 0
       50 LOADK                            R11 K26 ["multipart/form-data; boundary="]
       51 MOVE                             R12 R6
       52 CONCAT                           R10 R11 R12
       53 SETTABLEKS                       R10 R9 K27 ["Content-Type"]
       55 SETTABLEKS                       R9 R8 K19 ["Headers"]
       57 RETURN                           R7 2

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["_networkImp"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["jsonEncode"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["getAssets"]
        2 LOADK                            R2 K1 ["GET"]
        3 GETUPVAL                         R3 1
        4 CALL                             R0 3 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R0 R1 K2 ["_networkImp"]
        8 GETUPVAL                         R2 1
        9 NAMECALL                         R0 R0 K3 ["httpGetJson"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getRequestInfo"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K1 ["constructGetAssetsUrl"]
        8 GETTABLEKS                       R4 R2 K2 ["category"]
       10 GETTABLEKS                       R5 R2 K3 ["searchTerm"]
       12 GETUPVAL                         R7 2
       13 GETTABLEKS                       R6 R7 K4 ["GET_ITEMS_PAGE_SIZE"]
       15 GETTABLEKS                       R7 R2 K5 ["targetPage"]
       17 GETTABLEKS                       R8 R2 K6 ["sortType"]
       19 GETTABLEKS                       R9 R2 K7 ["groupId"]
       21 GETTABLEKS                       R10 R2 K8 ["creatorId"]
       23 CALL                             R3 7 1
       24 GETUPVAL                         R4 3
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R0
       29 CALL                             R4 1 -1
       30 RETURN                           R4 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["getToolboxItems"]
        2 LOADK                            R2 K1 ["GET"]
        3 GETUPVAL                         R3 1
        4 CALL                             R0 3 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R0 R1 K2 ["_networkImp"]
        8 GETUPVAL                         R2 1
        9 NAMECALL                         R0 R0 K3 ["httpGetJson"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_9:
        0 GETTABLEKS                       R2 R1 K0 ["categoryName"]
        2 LOADNIL                          R3
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R5 R6 K1 ["WHITELISTED_PLUGINS"]
        6 GETTABLEKS                       R4 R5 K2 ["name"]
        8 JUMPIFNOTEQ                      R2 R4 ; [+6]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R4 R5 K3 ["getShouldUsePluginCreatorWhitelist"]
       13 CALL                             R4 0 1
       14 MOVE                             R3 R4
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R4 R5 K4 ["join"]
       18 MOVE                             R5 R1
       19 DUPTABLE                         R6 K6 [{"useCreatorWhitelist"}]
       20 SETTABLEKS                       R3 R6 K5 ["useCreatorWhitelist"]
       22 CALL                             R4 2 1
       23 LOADNIL                          R5
       24 GETUPVAL                         R6 3
       25 CALL                             R6 0 1
       26 JUMPIFNOT                        R6 ; [+23]
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R6 R7 K7 ["categoryIsModel"]
       30 MOVE                             R7 R2
       31 CALL                             R6 1 1
       32 JUMPIFNOT                        R6 ; [+17]
       33 GETUPVAL                         R7 4
       34 GETTABLEKS                       R6 R7 K8 ["convertQualityFilterDataToQueryStrings"]
       36 GETTABLEKS                       R7 R1 K9 ["qualityFilterData"]
       38 CALL                             R6 1 1
       39 MOVE                             R5 R6
       40 JUMPIFNOT                        R5 ; [+9]
       41 JUMPIFEQKS                       R5 K10 [""] ; [+8]
       43 GETUPVAL                         R7 2
       44 GETTABLEKS                       R6 R7 K4 ["join"]
       46 MOVE                             R7 R4
       47 MOVE                             R8 R5
       48 CALL                             R6 2 1
       49 MOVE                             R4 R6
       50 GETUPVAL                         R7 5
       51 GETTABLEKS                       R6 R7 K11 ["constructGetToolboxItemsUrl"]
       53 MOVE                             R7 R4
       54 CALL                             R6 1 1
       55 GETUPVAL                         R8 6
       56 CALL                             R8 0 1
       57 JUMPIFNOT                        R8 ; [+18]
       58 GETTABLEKS                       R8 R1 K12 ["sectionName"]
       60 GETUPVAL                         R10 7
       61 GETTABLEKS                       R9 R10 K13 ["CONTEXTUAL_RECOMMENDATIONS_HOME_CONFIG_SECTION_NAME"]
       63 JUMPIFNOTEQ                      R8 R9 ; [+12]
       65 DUPTABLE                         R7 K17 [{"attempts", "time", "maxRetries"}]
       66 LOADN                            R8 0
       67 SETTABLEKS                       R8 R7 K14 ["attempts"]
       69 LOADN                            R8 0
       70 SETTABLEKS                       R8 R7 K15 ["time"]
       72 LOADN                            R8 0
       73 SETTABLEKS                       R8 R7 K16 ["maxRetries"]
       75 JUMP                             ; [+1]
       76 LOADNIL                          R7
       77 GETUPVAL                         R8 8
       78 NEWCLOSURE                       R9 P0
       79 CAPTURE                          UPVAL U9
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R0
       82 MOVE                             R10 R7
       83 CALL                             R8 2 -1
       84 RETURN                           R8 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["getItemDetails"]
        2 LOADK                            R2 K1 ["GET"]
        3 GETUPVAL                         R3 1
        4 CALL                             R0 3 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R0 R1 K2 ["_networkImp"]
        8 GETUPVAL                         R2 1
        9 NAMECALL                         R0 R0 K3 ["httpGetJson"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["constructGetItemDetails"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R0
       10 CALL                             R3 1 -1
       11 RETURN                           R3 -1

PROTO_12:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [ipairs]
        4 MOVE                             R4 R1
        5 CALL                             R3 1 3
        6 FORGPREP_INEXT                   R3
        7 GETTABLEKS                       R10 R7 K2 ["id"]
        9 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       11 MOVE                             R9 R2
       12 GETIMPORT                        R8 K5 [table.insert]
       14 CALL                             R8 2 0
       15 FORGLOOP                         R3 2 [inext] ; [-9]
       17 MOVE                             R5 R2
       18 NAMECALL                         R3 R0 K6 ["getItemDetailsAssetIds"]
       20 CALL                             R3 2 -1
       21 RETURN                           R3 -1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["getDevelopAsset"]
        2 LOADK                            R2 K1 ["GET"]
        3 GETUPVAL                         R3 1
        4 CALL                             R0 3 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R0 R1 K2 ["_networkImp"]
        8 GETUPVAL                         R2 1
        9 NAMECALL                         R0 R0 K3 ["httpGetJson"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getRequestInfo"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K1 ["getDevelopAssetUrl"]
        8 GETTABLEKS                       R4 R2 K2 ["category"]
       10 GETTABLEKS                       R5 R2 K3 ["searchTerm"]
       12 GETTABLEKS                       R6 R2 K4 ["sortType"]
       14 GETTABLEKS                       R7 R2 K5 ["creatorId"]
       16 GETUPVAL                         R9 2
       17 GETTABLEKS                       R8 R9 K6 ["GET_ITEMS_PAGE_SIZE"]
       19 GETTABLEKS                       R9 R2 K7 ["targetPage"]
       21 GETTABLEKS                       R10 R2 K8 ["groupId"]
       23 GETTABLEKS                       R11 R2 K9 ["creatorType"]
       25 CALL                             R3 8 1
       26 GETUPVAL                         R4 3
       27 NEWCLOSURE                       R5 P0
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R0
       31 CALL                             R4 1 -1
       32 RETURN                           R4 -1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["getAllowedItemTypes"]
        2 LOADK                            R2 K1 ["GET"]
        3 GETUPVAL                         R3 1
        4 CALL                             R0 3 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R0 R1 K2 ["_networkImp"]
        8 GETUPVAL                         R2 1
        9 NAMECALL                         R0 R0 K3 ["httpGetJson"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_16:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["constructGetAllowedItemTypesUrl"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 1
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R3
       10 CAPTURE                          VAL R0
       11 CALL                             R4 1 -1
       12 RETURN                           R4 -1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["getAssetCreations"]
        2 LOADK                            R2 K1 ["GET"]
        3 GETUPVAL                         R3 1
        4 CALL                             R0 3 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R0 R1 K2 ["_networkImp"]
        8 GETUPVAL                         R2 1
        9 NAMECALL                         R0 R0 K3 ["httpGetJson"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+3]
        2 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 1
        6 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        8 GETTABLEKS                       R3 R0 K0 ["responseBody"]
       10 GETTABLEKS                       R2 R3 K1 ["items"]
       12 SETTABLEKS                       R2 R1 K2 ["data"]
       14 GETTABLEKS                       R1 R0 K0 ["responseBody"]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R2 R3 K3 ["None"]
       19 SETTABLEKS                       R2 R1 K1 ["items"]
       21 RETURN                           R0 1

PROTO_19:
        0 JUMPIFNOT                        R1 ; [+6]
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R4 R5 K0 ["getEngineAssetTypeForPageInfoCategory"]
        4 MOVE                             R5 R1
        5 CALL                             R4 1 1
        6 JUMP                             ; [+1]
        7 MOVE                             R4 R3
        8 GETUPVAL                         R5 1
        9 CALL                             R5 0 1
       10 GETUPVAL                         R8 2
       11 GETTABLEKS                       R7 R8 K1 ["EngineAssetTypeIdToToolboxAssetType"]
       13 GETTABLEKS                       R8 R4 K2 ["Value"]
       15 GETTABLE                         R6 R7 R8
       16 LOADNIL                          R7
       17 LOADNIL                          R8
       18 GETUPVAL                         R11 2
       19 GETTABLEKS                       R10 R11 K3 ["ToolboxMarketplaceAssetTypes"]
       21 GETTABLE                         R9 R10 R6
       22 JUMPIFNOTEQKNIL                  R9 ; [+2]
       24 LOADB                            R7 0 +1
       25 LOADB                            R7 1
       26 GETUPVAL                         R10 3
       27 GETTABLEKS                       R9 R10 K4 ["isCatalogAsset"]
       29 MOVE                             R10 R4
       30 CALL                             R9 1 1
       31 MOVE                             R8 R9
       32 GETTABLEKS                       R9 R4 K5 ["Name"]
       34 LOADNIL                          R10
       35 JUMPIFNOT                        R7 ; [+13]
       36 GETUPVAL                         R12 4
       37 GETTABLEKS                       R11 R12 K6 ["constructGetAssetCreationsUrlToolboxService"]
       39 MOVE                             R12 R9
       40 GETUPVAL                         R14 5
       41 GETTABLEKS                       R13 R14 K7 ["GET_ITEMS_DETAILS_PAGE_SIZE_LIMIT"]
       43 MOVE                             R14 R2
       44 LOADB                            R15 1
       45 MOVE                             R16 R5
       46 CALL                             R11 5 1
       47 MOVE                             R10 R11
       48 JUMP                             ; [+26]
       49 JUMPIFNOT                        R8 ; [+14]
       50 GETUPVAL                         R12 4
       51 GETTABLEKS                       R11 R12 K8 ["constructGetItemsByCreatorUrl"]
       53 GETTABLEKS                       R12 R4 K2 ["Value"]
       55 LOADB                            R13 0
       56 MOVE                             R14 R2
       57 GETUPVAL                         R16 5
       58 GETTABLEKS                       R15 R16 K9 ["GET_ITEMS_BY_CREATOR_PAGE_SIZE_LIMIT"]
       60 LOADNIL                          R16
       61 CALL                             R11 5 1
       62 MOVE                             R10 R11
       63 JUMP                             ; [+11]
       64 GETUPVAL                         R12 6
       65 GETTABLEKS                       R11 R12 K10 ["reject"]
       67 GETIMPORT                        R12 K13 [string.format]
       69 LOADK                            R13 K14 ["Invalid asset type: %s"]
       70 MOVE                             R14 R9
       71 CALL                             R12 2 -1
       72 CALL                             R11 -1 -1
       73 CLOSEUPVALS                      R7
       74 RETURN                           R11 -1
       75 GETUPVAL                         R11 7
       76 NEWCLOSURE                       R12 P0
       77 CAPTURE                          UPVAL U8
       78 CAPTURE                          REF R10
       79 CAPTURE                          VAL R0
       80 CALL                             R11 1 1
       81 NEWCLOSURE                       R13 P1
       82 CAPTURE                          REF R7
       83 CAPTURE                          UPVAL U9
       84 NAMECALL                         R11 R11 K15 ["andThen"]
       86 CALL                             R11 2 -1
       87 CLOSEUPVALS                      R7
       88 RETURN                           R11 -1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["getAssetGroupCreations"]
        2 LOADK                            R2 K1 ["GET"]
        3 GETUPVAL                         R3 1
        4 CALL                             R0 3 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R0 R1 K2 ["_networkImp"]
        8 GETUPVAL                         R2 1
        9 NAMECALL                         R0 R0 K3 ["httpGetJson"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+3]
        2 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 1
        6 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        8 GETTABLEKS                       R3 R0 K0 ["responseBody"]
       10 GETTABLEKS                       R2 R3 K1 ["items"]
       12 SETTABLEKS                       R2 R1 K2 ["data"]
       14 GETTABLEKS                       R1 R0 K0 ["responseBody"]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R2 R3 K3 ["None"]
       19 SETTABLEKS                       R2 R1 K1 ["items"]
       21 RETURN                           R0 1

PROTO_22:
        0 MOVE                             R5 R3
        1 MOVE                             R6 R4
        2 JUMPIFNOT                        R1 ; [+21]
        3 GETUPVAL                         R8 0
        4 GETTABLEKS                       R7 R8 K0 ["getEngineAssetTypeForPageInfoCategory"]
        6 MOVE                             R8 R1
        7 CALL                             R7 1 1
        8 MOVE                             R5 R7
        9 GETUPVAL                         R8 1
       10 GETTABLEKS                       R7 R8 K1 ["categoryIsGroupAsset"]
       12 GETTABLEKS                       R8 R1 K2 ["categoryName"]
       14 CALL                             R7 1 1
       15 JUMPIFNOT                        R7 ; [+6]
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R8 R9 K3 ["getGroupIdForPageInfo"]
       19 MOVE                             R9 R1
       20 CALL                             R8 1 1
       21 JUMPIF                           R8 ; [+1]
       22 LOADNIL                          R8
       23 MOVE                             R6 R8
       24 GETUPVAL                         R9 1
       25 GETTABLEKS                       R8 R9 K4 ["EngineAssetTypeIdToToolboxAssetType"]
       27 GETTABLEKS                       R9 R5 K5 ["Value"]
       29 GETTABLE                         R7 R8 R9
       30 LOADNIL                          R8
       31 LOADNIL                          R9
       32 GETUPVAL                         R12 1
       33 GETTABLEKS                       R11 R12 K6 ["ToolboxMarketplaceAssetTypes"]
       35 GETTABLE                         R10 R11 R7
       36 JUMPIFNOTEQKNIL                  R10 ; [+2]
       38 LOADB                            R8 0 +1
       39 LOADB                            R8 1
       40 GETUPVAL                         R11 2
       41 GETTABLEKS                       R10 R11 K7 ["isCatalogAsset"]
       43 MOVE                             R11 R5
       44 CALL                             R10 1 1
       45 MOVE                             R9 R10
       46 GETTABLEKS                       R10 R5 K8 ["Name"]
       48 LOADNIL                          R11
       49 JUMPIFNOT                        R8 ; [+13]
       50 GETUPVAL                         R13 3
       51 GETTABLEKS                       R12 R13 K9 ["constructGetAssetGroupCreationsUrl"]
       53 MOVE                             R13 R10
       54 GETUPVAL                         R15 4
       55 GETTABLEKS                       R14 R15 K10 ["GET_ITEMS_DETAILS_PAGE_SIZE_LIMIT"]
       57 MOVE                             R15 R2
       58 LOADNIL                          R16
       59 MOVE                             R17 R6
       60 CALL                             R12 5 1
       61 MOVE                             R11 R12
       62 JUMP                             ; [+26]
       63 JUMPIFNOT                        R9 ; [+14]
       64 GETUPVAL                         R13 3
       65 GETTABLEKS                       R12 R13 K11 ["constructGetItemsByCreatorUrl"]
       67 GETTABLEKS                       R13 R5 K5 ["Value"]
       69 LOADB                            R14 0
       70 MOVE                             R15 R2
       71 GETUPVAL                         R17 4
       72 GETTABLEKS                       R16 R17 K12 ["GET_ITEMS_BY_CREATOR_PAGE_SIZE_LIMIT"]
       74 MOVE                             R17 R6
       75 CALL                             R12 5 1
       76 MOVE                             R11 R12
       77 JUMP                             ; [+11]
       78 GETUPVAL                         R13 5
       79 GETTABLEKS                       R12 R13 K13 ["reject"]
       81 GETIMPORT                        R13 K16 [string.format]
       83 LOADK                            R14 K17 ["Invalid asset type: %s"]
       84 MOVE                             R15 R10
       85 CALL                             R13 2 -1
       86 CALL                             R12 -1 -1
       87 CLOSEUPVALS                      R8
       88 RETURN                           R12 -1
       89 GETUPVAL                         R12 6
       90 NEWCLOSURE                       R13 P0
       91 CAPTURE                          UPVAL U7
       92 CAPTURE                          REF R11
       93 CAPTURE                          VAL R0
       94 CALL                             R12 1 1
       95 NEWCLOSURE                       R14 P1
       96 CAPTURE                          REF R8
       97 CAPTURE                          UPVAL U8
       98 NAMECALL                         R12 R12 K18 ["andThen"]
      100 CALL                             R12 2 -1
      101 CLOSEUPVALS                      R8
      102 RETURN                           R12 -1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["getItem"]
        2 LOADK                            R2 K1 ["GET"]
        3 GETUPVAL                         R3 1
        4 CALL                             R0 3 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R0 R1 K2 ["_networkImp"]
        8 GETUPVAL                         R2 1
        9 NAMECALL                         R0 R0 K3 ["httpGetJson"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_24:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["constructGetItemConfigurationDetailsUrl"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 1
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R3
       10 CAPTURE                          VAL R0
       11 CALL                             R4 1 -1
       12 RETURN                           R4 -1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["getItemsByCreator"]
        2 LOADK                            R2 K1 ["GET"]
        3 GETUPVAL                         R3 1
        4 CALL                             R0 3 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R0 R1 K2 ["_networkImp"]
        8 GETUPVAL                         R2 1
        9 NAMECALL                         R0 R0 K3 ["httpGetJson"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_26:
        0 LOADNIL                          R6
        1 JUMPIFEQKNIL                     R1 ; [+12]
        3 GETUPVAL                         R8 0
        4 GETTABLEKS                       R7 R8 K0 ["constructGetItemsByCreatorUrl"]
        6 ORK                              R8 R1 K1 [0]
        7 LOADB                            R9 1
        8 MOVE                             R10 R3
        9 MOVE                             R11 R4
       10 MOVE                             R12 R5
       11 CALL                             R7 5 1
       12 MOVE                             R6 R7
       13 JUMP                             ; [+10]
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R7 R8 K0 ["constructGetItemsByCreatorUrl"]
       17 ORK                              R8 R2 K1 [0]
       18 LOADB                            R9 0
       19 MOVE                             R10 R3
       20 MOVE                             R11 R4
       21 MOVE                             R12 R5
       22 CALL                             R7 5 1
       23 MOVE                             R6 R7
       24 GETUPVAL                         R7 1
       25 NEWCLOSURE                       R8 P0
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          REF R6
       28 CAPTURE                          VAL R0
       29 CALL                             R7 1 -1
       30 CLOSEUPVALS                      R6
       31 RETURN                           R7 -1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["getAssetCreationDetails"]
        2 LOADK                            R2 K1 ["POST"]
        3 GETUPVAL                         R3 1
        4 CALL                             R0 3 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R0 R1 K2 ["_networkImp"]
        8 DUPTABLE                         R2 K4 [{"assetIds"}]
        9 GETUPVAL                         R3 3
       10 SETTABLEKS                       R3 R2 K3 ["assetIds"]
       12 NAMECALL                         R0 R0 K5 ["jsonEncode"]
       14 CALL                             R0 2 1
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R1 R2 K2 ["_networkImp"]
       18 GETUPVAL                         R3 1
       19 MOVE                             R4 R0
       20 NAMECALL                         R1 R1 K6 ["httpPostJson"]
       22 CALL                             R1 3 -1
       23 RETURN                           R1 -1

PROTO_28:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["shouldDebugWarnings"]
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+15]
        5 JUMPIFNOT                        R1 ; [+14]
        6 LENGTH                           R2 R1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K1 ["GET_ASSET_CREATIONS_DETAILS_LIMIT"]
       10 JUMPIFNOTLT                      R3 R2 ; [+9]
       12 GETIMPORT                        R2 K3 [warn]
       14 LOADK                            R3 K4 ["getAssetCreationDetails() does not support requests for more than %d assets at one time"]
       15 LENGTH                           R5 R1
       16 NAMECALL                         R3 R3 K5 ["format"]
       18 CALL                             R3 2 -1
       19 CALL                             R2 -1 0
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R2 R3 K6 ["constructGetAssetCreationDetailsUrl"]
       23 CALL                             R2 0 1
       24 GETUPVAL                         R3 3
       25 NEWCLOSURE                       R4 P0
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R1
       30 CALL                             R3 1 -1
       31 RETURN                           R3 -1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["getCreatorInfo"]
        2 LOADK                            R2 K1 ["GET"]
        3 GETUPVAL                         R3 1
        4 CALL                             R0 3 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R0 R1 K2 ["_networkImp"]
        8 GETUPVAL                         R2 1
        9 NAMECALL                         R0 R0 K3 ["httpGetJson"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_30:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["constructGetCreatorInfoUrl"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 1
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R3
       10 CAPTURE                          VAL R0
       11 CALL                             R4 1 -1
       12 RETURN                           R4 -1

PROTO_31:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["getUploadPermissionStatus"]
        2 LOADK                            R2 K1 ["GET"]
        3 GETUPVAL                         R3 1
        4 CALL                             R0 3 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R0 R1 K2 ["_networkImp"]
        8 GETUPVAL                         R2 1
        9 NAMECALL                         R0 R0 K3 ["httpGetJson"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_32:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["constructUploadPermissionStatusUrl"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 1
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R3
       10 CAPTURE                          VAL R0
       11 CALL                             R4 1 -1
       12 RETURN                           R4 -1

PROTO_33:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["getBundleMetadata"]
        2 LOADK                            R2 K1 ["GET"]
        3 GETUPVAL                         R3 1
        4 CALL                             R0 3 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R0 R1 K2 ["_networkImp"]
        8 GETUPVAL                         R2 1
        9 NAMECALL                         R0 R0 K3 ["httpGetJson"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_34:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["constructGetBundleMetadataUrl"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R0
        9 CALL                             R2 1 -1
       10 RETURN                           R2 -1

PROTO_35:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_networkImp"]
        3 GETTABLEKS                       R3 R0 K1 ["Body"]
        5 NAMECALL                         R1 R1 K2 ["jsonDecode"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_36:
        0 GETTABLEKS                       R2 R0 K0 ["Body"]
        2 JUMPIFNOT                        R2 ; [+9]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["_networkImp"]
        6 GETTABLEKS                       R3 R0 K0 ["Body"]
        8 NAMECALL                         R1 R1 K2 ["jsonDecode"]
       10 CALL                             R1 2 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K0 ["Body"]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R2 R3 K3 ["reject"]
       18 MOVE                             R3 R0
       19 CALL                             R2 1 -1
       20 RETURN                           R2 -1

PROTO_37:
        0 GETUPVAL                         R9 0
        1 GETTABLEKS                       R8 R9 K0 ["constructPostBundleCreationContextUrl"]
        3 CALL                             R8 0 1
        4 GETTABLEKS                       R9 R0 K1 ["_networkImp"]
        6 DUPTABLE                         R11 K9 [{"assetQuantities", "bundleDescription", "bundleName", "bundleType", "bodyScale", "bodyColorSet", "groupId"}]
        7 SETTABLEKS                       R2 R11 K2 ["assetQuantities"]
        9 SETTABLEKS                       R4 R11 K3 ["bundleDescription"]
       11 SETTABLEKS                       R3 R11 K4 ["bundleName"]
       13 GETTABLEKS                       R12 R1 K10 ["rawValue"]
       15 CALL                             R12 0 1
       16 SETTABLEKS                       R12 R11 K5 ["bundleType"]
       18 GETUPVAL                         R13 1
       19 CALL                             R13 0 1
       20 JUMPIFNOT                        R13 ; [+2]
       21 MOVE                             R12 R5
       22 JUMP                             ; [+1]
       23 LOADNIL                          R12
       24 SETTABLEKS                       R12 R11 K6 ["bodyScale"]
       26 GETUPVAL                         R13 2
       27 CALL                             R13 0 1
       28 JUMPIFNOT                        R13 ; [+2]
       29 MOVE                             R12 R6
       30 JUMP                             ; [+1]
       31 LOADNIL                          R12
       32 SETTABLEKS                       R12 R11 K7 ["bodyColorSet"]
       34 GETUPVAL                         R13 3
       35 CALL                             R13 0 1
       36 JUMPIFNOT                        R13 ; [+2]
       37 MOVE                             R12 R7
       38 JUMP                             ; [+1]
       39 LOADNIL                          R12
       40 SETTABLEKS                       R12 R11 K8 ["groupId"]
       42 NAMECALL                         R9 R9 K11 ["jsonEncode"]
       44 CALL                             R9 2 1
       45 DUPTABLE                         R10 K16 [{"Url", "Method", "Body", "Headers"}]
       46 SETTABLEKS                       R8 R10 K12 ["Url"]
       48 LOADK                            R11 K17 ["POST"]
       49 SETTABLEKS                       R11 R10 K13 ["Method"]
       51 SETTABLEKS                       R9 R10 K14 ["Body"]
       53 NEWTABLE                         R11 1 0
       55 LOADK                            R12 K18 ["application/json"]
       56 SETTABLEKS                       R12 R11 K19 ["Content-Type"]
       58 SETTABLEKS                       R11 R10 K15 ["Headers"]
       60 GETUPVAL                         R11 4
       61 LOADK                            R12 K20 ["postBundleCreationContext"]
       62 LOADK                            R13 K17 ["POST"]
       63 MOVE                             R14 R8
       64 MOVE                             R15 R9
       65 CALL                             R11 4 0
       66 GETTABLEKS                       R11 R0 K1 ["_networkImp"]
       68 MOVE                             R13 R10
       69 NAMECALL                         R11 R11 K21 ["requestInternalRaw"]
       71 CALL                             R11 2 1
       72 NEWCLOSURE                       R13 P0
       73 CAPTURE                          VAL R0
       74 NAMECALL                         R11 R11 K22 ["andThen"]
       76 CALL                             R11 2 1
       77 NEWCLOSURE                       R13 P1
       78 CAPTURE                          VAL R0
       79 CAPTURE                          UPVAL U5
       80 NAMECALL                         R11 R11 K23 ["catch"]
       82 CALL                             R11 2 -1
       83 RETURN                           R11 -1

PROTO_38:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_networkImp"]
        3 GETTABLEKS                       R3 R0 K1 ["Body"]
        5 NAMECALL                         R1 R1 K2 ["jsonDecode"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_39:
        0 GETTABLEKS                       R2 R0 K0 ["Body"]
        2 JUMPIFNOT                        R2 ; [+9]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["_networkImp"]
        6 GETTABLEKS                       R3 R0 K0 ["Body"]
        8 NAMECALL                         R1 R1 K2 ["jsonDecode"]
       10 CALL                             R1 2 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K0 ["Body"]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R2 R3 K3 ["reject"]
       18 MOVE                             R3 R0
       19 CALL                             R2 1 -1
       20 RETURN                           R2 -1

PROTO_40:
        0 GETUPVAL                         R8 0
        1 GETTABLEKS                       R7 R8 K0 ["constructPostCreateBundleUrl"]
        3 CALL                             R7 0 1
        4 GETTABLEKS                       R8 R0 K1 ["_networkImp"]
        6 DUPTABLE                         R10 K8 [{"bundleType", "name", "description", "assetIds", "operationId", "agreedCreationFee"}]
        7 GETTABLEKS                       R11 R1 K9 ["rawValue"]
        9 CALL                             R11 0 1
       10 SETTABLEKS                       R11 R10 K2 ["bundleType"]
       12 SETTABLEKS                       R2 R10 K3 ["name"]
       14 SETTABLEKS                       R3 R10 K4 ["description"]
       16 SETTABLEKS                       R4 R10 K5 ["assetIds"]
       18 SETTABLEKS                       R5 R10 K6 ["operationId"]
       20 SETTABLEKS                       R6 R10 K7 ["agreedCreationFee"]
       22 NAMECALL                         R8 R8 K10 ["jsonEncode"]
       24 CALL                             R8 2 1
       25 DUPTABLE                         R9 K15 [{"Url", "Method", "Body", "Headers"}]
       26 SETTABLEKS                       R7 R9 K11 ["Url"]
       28 LOADK                            R10 K16 ["POST"]
       29 SETTABLEKS                       R10 R9 K12 ["Method"]
       31 SETTABLEKS                       R8 R9 K13 ["Body"]
       33 NEWTABLE                         R10 1 0
       35 LOADK                            R11 K17 ["application/json"]
       36 SETTABLEKS                       R11 R10 K18 ["Content-Type"]
       38 SETTABLEKS                       R10 R9 K14 ["Headers"]
       40 GETUPVAL                         R10 1
       41 LOADK                            R11 K19 ["postCreateBundle"]
       42 LOADK                            R12 K16 ["POST"]
       43 MOVE                             R13 R7
       44 MOVE                             R14 R8
       45 CALL                             R10 4 0
       46 GETTABLEKS                       R10 R0 K1 ["_networkImp"]
       48 MOVE                             R12 R9
       49 NAMECALL                         R10 R10 K20 ["requestInternalRaw"]
       51 CALL                             R10 2 1
       52 NEWCLOSURE                       R12 P0
       53 CAPTURE                          VAL R0
       54 NAMECALL                         R10 R10 K21 ["andThen"]
       56 CALL                             R10 2 1
       57 NEWCLOSURE                       R12 P1
       58 CAPTURE                          VAL R0
       59 CAPTURE                          UPVAL U2
       60 NAMECALL                         R10 R10 K22 ["catch"]
       62 CALL                             R10 2 -1
       63 RETURN                           R10 -1

PROTO_41:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["getBundleCreationStatus"]
        2 LOADK                            R2 K1 ["GET"]
        3 GETUPVAL                         R3 1
        4 CALL                             R0 3 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R0 R1 K2 ["_networkImp"]
        8 GETUPVAL                         R2 1
        9 NAMECALL                         R0 R0 K3 ["httpGetJson"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_42:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["constructGetBundleCreationStatusUrl"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R0
       10 CALL                             R3 1 -1
       11 RETURN                           R3 -1

PROTO_43:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["getDefaultBundleDataSharing"]
        2 LOADK                            R2 K1 ["GET"]
        3 GETUPVAL                         R3 1
        4 CALL                             R0 3 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R0 R1 K2 ["_networkImp"]
        8 GETUPVAL                         R2 1
        9 NAMECALL                         R0 R0 K3 ["httpGetJson"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_44:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["constructGetDefaultCreateBundleDataSharingUrl"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R0
        9 CALL                             R2 1 -1
       10 RETURN                           R2 -1

PROTO_45:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["postBundleDataSharing"]
        2 LOADK                            R2 K1 ["POST"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 CALL                             R0 4 0
        6 GETUPVAL                         R1 3
        7 GETTABLEKS                       R0 R1 K2 ["_networkImp"]
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 2
       11 NAMECALL                         R0 R0 K3 ["httpPostJson"]
       13 CALL                             R0 3 -1
       14 RETURN                           R0 -1

PROTO_46:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["constructPostCreateBundleDataSharingUrl"]
        3 CALL                             R3 0 1
        4 GETTABLEKS                       R4 R0 K1 ["_networkImp"]
        6 DUPTABLE                         R6 K3 [{"configurations"}]
        7 NEWTABLE                         R7 0 1
        9 DUPTABLE                         R8 K6 [{"bundleId", "dataSharingLicenseTypes"}]
       10 SETTABLEKS                       R1 R8 K4 ["bundleId"]
       12 SETTABLEKS                       R2 R8 K5 ["dataSharingLicenseTypes"]
       14 SETLIST                          R7 R8 1 [1]
       16 SETTABLEKS                       R7 R6 K2 ["configurations"]
       18 NAMECALL                         R4 R4 K7 ["jsonEncode"]
       20 CALL                             R4 2 1
       21 GETUPVAL                         R5 1
       22 NEWCLOSURE                       R6 P0
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R0
       27 CALL                             R5 1 -1
       28 RETURN                           R5 -1

PROTO_47:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["postAvatarAssetDataSharing"]
        2 LOADK                            R2 K1 ["POST"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 CALL                             R0 4 0
        6 GETUPVAL                         R1 3
        7 GETTABLEKS                       R0 R1 K2 ["_networkImp"]
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 2
       11 NAMECALL                         R0 R0 K3 ["httpPostJson"]
       13 CALL                             R0 3 -1
       14 RETURN                           R0 -1

PROTO_48:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["constructPostCreateAvatarAssetDataSharingUrl"]
        3 CALL                             R3 0 1
        4 GETTABLEKS                       R4 R0 K1 ["_networkImp"]
        6 DUPTABLE                         R6 K3 [{"configurations"}]
        7 NEWTABLE                         R7 0 1
        9 DUPTABLE                         R8 K6 [{"assetId", "dataSharingLicenseTypes"}]
       10 SETTABLEKS                       R1 R8 K4 ["assetId"]
       12 SETTABLEKS                       R2 R8 K5 ["dataSharingLicenseTypes"]
       14 SETLIST                          R7 R8 1 [1]
       16 SETTABLEKS                       R7 R6 K2 ["configurations"]
       18 NAMECALL                         R4 R4 K7 ["jsonEncode"]
       20 CALL                             R4 2 1
       21 GETUPVAL                         R5 1
       22 NEWCLOSURE                       R6 P0
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R0
       27 CALL                             R5 1 -1
       28 RETURN                           R5 -1

PROTO_49:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["getAssetMediaIds"]
        2 LOADK                            R2 K1 ["GET"]
        3 GETUPVAL                         R3 1
        4 CALL                             R0 3 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R0 R1 K2 ["_networkImp"]
        8 GETUPVAL                         R2 1
        9 NAMECALL                         R0 R0 K3 ["httpGetJson"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_50:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["constructGetAssetMediaIdsUrl"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R0
       10 CALL                             R3 1 -1
       11 RETURN                           R3 -1

PROTO_51:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["getVote"]
        2 LOADK                            R2 K1 ["GET"]
        3 GETUPVAL                         R3 1
        4 CALL                             R0 3 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R0 R1 K2 ["_networkImp"]
        8 GETUPVAL                         R2 1
        9 NAMECALL                         R0 R0 K3 ["httpGetJson"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_52:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["constructGetVoteUrl"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 1
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R3
       10 CAPTURE                          VAL R0
       11 CALL                             R4 1 -1
       12 RETURN                           R4 -1

PROTO_53:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["postVote"]
        2 LOADK                            R2 K1 ["POST"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 CALL                             R0 4 0
        6 GETUPVAL                         R1 3
        7 GETTABLEKS                       R0 R1 K2 ["_networkImp"]
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 2
       11 NAMECALL                         R0 R0 K3 ["httpPostJson"]
       13 CALL                             R0 3 -1
       14 RETURN                           R0 -1

PROTO_54:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["constructPostVoteUrl"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 NEWTABLE                         R4 0 0
        8 GETUPVAL                         R5 1
        9 NEWCLOSURE                       R6 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R3
       12 CAPTURE                          VAL R4
       13 CAPTURE                          VAL R0
       14 CALL                             R5 1 -1
       15 RETURN                           R5 -1

PROTO_55:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["configureSales"]
        2 LOADK                            R2 K1 ["POST"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 CALL                             R0 4 0
        6 GETUPVAL                         R1 3
        7 GETTABLEKS                       R0 R1 K2 ["_networkImp"]
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 2
       11 NAMECALL                         R0 R0 K3 ["httpPostJson"]
       13 CALL                             R0 3 -1
       14 RETURN                           R0 -1

PROTO_56:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["constructConfigureSalesUrl"]
        3 MOVE                             R5 R1
        4 CALL                             R4 1 1
        5 GETTABLEKS                       R5 R0 K1 ["_networkImp"]
        7 DUPTABLE                         R7 K4 [{"price", "saleStatus"}]
        8 SETTABLEKS                       R3 R7 K2 ["price"]
       10 SETTABLEKS                       R2 R7 K3 ["saleStatus"]
       12 NAMECALL                         R5 R5 K5 ["jsonEncode"]
       14 CALL                             R5 2 1
       15 GETUPVAL                         R6 1
       16 NEWCLOSURE                       R7 P0
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R4
       19 CAPTURE                          VAL R5
       20 CAPTURE                          VAL R0
       21 CALL                             R6 1 -1
       22 RETURN                           R6 -1

PROTO_57:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["updateSales"]
        2 LOADK                            R2 K1 ["POST"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 CALL                             R0 4 0
        6 GETUPVAL                         R1 3
        7 GETTABLEKS                       R0 R1 K2 ["_networkImp"]
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 2
       11 NAMECALL                         R0 R0 K3 ["httpPostJson"]
       13 CALL                             R0 3 -1
       14 RETURN                           R0 -1

PROTO_58:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["constructUpdateSalesUrl"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R4 R0 K1 ["_networkImp"]
        7 DUPTABLE                         R6 K3 [{"price"}]
        8 SETTABLEKS                       R2 R6 K2 ["price"]
       10 NAMECALL                         R4 R4 K4 ["jsonEncode"]
       12 CALL                             R4 2 1
       13 GETUPVAL                         R5 1
       14 NEWCLOSURE                       R6 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R3
       17 CAPTURE                          VAL R4
       18 CAPTURE                          VAL R0
       19 CALL                             R5 1 -1
       20 RETURN                           R5 -1

PROTO_59:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["postUnvote"]
        2 LOADK                            R2 K1 ["POST"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 CALL                             R0 4 0
        6 GETUPVAL                         R1 3
        7 GETTABLEKS                       R0 R1 K2 ["_networkImp"]
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 2
       11 NAMECALL                         R0 R0 K3 ["httpPostJson"]
       13 CALL                             R0 3 -1
       14 RETURN                           R0 -1

PROTO_60:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["constructPostUnvoteUrl"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 NEWTABLE                         R3 0 0
        7 GETUPVAL                         R4 1
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R3
       12 CAPTURE                          VAL R0
       13 CALL                             R4 1 -1
       14 RETURN                           R4 -1

PROTO_61:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["postInsertAsset"]
        2 LOADK                            R2 K1 ["POST"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 CALL                             R0 4 0
        6 GETUPVAL                         R1 3
        7 GETTABLEKS                       R0 R1 K2 ["_networkImp"]
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 2
       11 NAMECALL                         R0 R0 K3 ["httpPost"]
       13 CALL                             R0 3 -1
       14 RETURN                           R0 -1

PROTO_62:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["constructInsertAssetUrl"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 NEWTABLE                         R3 0 0
        7 GETUPVAL                         R4 1
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R3
       12 CAPTURE                          VAL R0
       13 CALL                             R4 1 -1
       14 RETURN                           R4 -1

PROTO_63:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["getManageableGroups"]
        2 LOADK                            R2 K1 ["GET"]
        3 GETUPVAL                         R3 1
        4 CALL                             R0 3 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R0 R1 K2 ["_networkImp"]
        8 GETUPVAL                         R2 1
        9 NAMECALL                         R0 R0 K3 ["httpGetJson"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_64:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["constructGetGroupsForSurfaceUrl"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R0
       10 CALL                             R3 1 -1
       11 RETURN                           R3 -1

PROTO_65:
        0 GETTABLEKS                       R4 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R3 R4 K1 ["searchResults"]
        4 GETTABLEN                        R2 R3 1
        5 GETTABLEKS                       R1 R2 K2 ["contents"]
        7 NEWTABLE                         R2 0 0
        9 LOADN                            R5 1
       10 GETUPVAL                         R6 0
       11 ORK                              R3 R6 K3 [3]
       12 LOADN                            R4 1
       13 FORNPREP                         R3
       14 GETTABLE                         R6 R1 R5
       15 JUMPIFNOT                        R6 ; [+16]
       16 DUPTABLE                         R9 K6 [{"UserId", "Name"}]
       17 GETTABLEKS                       R10 R6 K7 ["contentId"]
       19 SETTABLEKS                       R10 R9 K4 ["UserId"]
       21 GETTABLEKS                       R10 R6 K8 ["username"]
       23 SETTABLEKS                       R10 R9 K5 ["Name"]
       25 FASTCALL2                        TABLE_INSERT R2 R9 ; [+4]
       27 MOVE                             R8 R2
       28 GETIMPORT                        R7 K11 [table.insert]
       30 CALL                             R7 2 0
       31 FORNLOOP                         R3
       32 RETURN                           R2 1

PROTO_66:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["constructUserSearchUrl"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 1
        6 LOADK                            R5 K1 ["getUsers"]
        7 LOADK                            R6 K2 ["GET"]
        8 MOVE                             R7 R3
        9 CALL                             R4 3 0
       10 GETTABLEKS                       R4 R0 K3 ["_networkImp"]
       12 MOVE                             R6 R3
       13 NAMECALL                         R4 R4 K4 ["httpGetJson"]
       15 CALL                             R4 2 1
       16 NEWCLOSURE                       R6 P0
       17 CAPTURE                          VAL R2
       18 NAMECALL                         R4 R4 K5 ["andThen"]
       20 CALL                             R4 2 -1
       21 RETURN                           R4 -1

PROTO_67:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["constructFavoriteCountsUrl"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 LOADK                            R4 K1 ["getFavorites"]
        7 LOADK                            R5 K2 ["GET"]
        8 MOVE                             R6 R2
        9 CALL                             R3 3 0
       10 GETTABLEKS                       R3 R0 K3 ["_networkImp"]
       12 MOVE                             R5 R2
       13 NAMECALL                         R3 R3 K4 ["httpGet"]
       15 CALL                             R3 2 -1
       16 RETURN                           R3 -1

PROTO_68:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["constructGetFavoritedUrl"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 1
        7 LOADK                            R5 K1 ["getFavorited"]
        8 LOADK                            R6 K2 ["GET"]
        9 MOVE                             R7 R3
       10 CALL                             R4 3 0
       11 GETTABLEKS                       R4 R0 K3 ["_networkImp"]
       13 MOVE                             R6 R3
       14 NAMECALL                         R4 R4 K4 ["httpGet"]
       16 CALL                             R4 2 -1
       17 RETURN                           R4 -1

PROTO_69:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["constructCreateSaveUrl"]
        3 CALL                             R3 0 1
        4 GETTABLEKS                       R4 R0 K1 ["_networkImp"]
        6 DUPTABLE                         R6 K4 [{"targetType", "targetId"}]
        7 SETTABLEKS                       R2 R6 K2 ["targetType"]
        9 SETTABLEKS                       R1 R6 K3 ["targetId"]
       11 NAMECALL                         R4 R4 K5 ["jsonEncode"]
       13 CALL                             R4 2 1
       14 GETUPVAL                         R5 1
       15 LOADK                            R6 K6 ["createSave"]
       16 LOADK                            R7 K7 ["POST"]
       17 MOVE                             R8 R3
       18 MOVE                             R9 R4
       19 CALL                             R5 4 0
       20 GETTABLEKS                       R5 R0 K1 ["_networkImp"]
       22 MOVE                             R7 R3
       23 MOVE                             R8 R4
       24 NAMECALL                         R5 R5 K8 ["httpPost"]
       26 CALL                             R5 3 -1
       27 RETURN                           R5 -1

PROTO_70:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["constructDeleteSaveUrl"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 1
        7 LOADK                            R5 K1 ["deleteSave"]
        8 LOADK                            R6 K2 ["DELETE"]
        9 MOVE                             R7 R3
       10 CALL                             R4 3 0
       11 GETTABLEKS                       R4 R0 K3 ["_networkImp"]
       13 MOVE                             R6 R3
       14 NAMECALL                         R4 R4 K4 ["httpDelete"]
       16 CALL                             R4 2 -1
       17 RETURN                           R4 -1

PROTO_71:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["constructGetSaveUrl"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 1
        7 LOADK                            R5 K1 ["getSave"]
        8 LOADK                            R6 K2 ["GET"]
        9 MOVE                             R7 R3
       10 CALL                             R4 3 0
       11 GETTABLEKS                       R4 R0 K3 ["_networkImp"]
       13 MOVE                             R6 R3
       14 NAMECALL                         R4 R4 K4 ["httpGetJson"]
       16 CALL                             R4 2 -1
       17 RETURN                           R4 -1

PROTO_72:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["constructGetDevelopAssetMetadata"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 LOADK                            R4 K1 ["getDevelopAssetMetadata"]
        7 LOADK                            R5 K2 ["GET"]
        8 MOVE                             R6 R2
        9 CALL                             R3 3 0
       10 GETTABLEKS                       R3 R0 K3 ["_networkImp"]
       12 MOVE                             R5 R2
       13 NAMECALL                         R3 R3 K4 ["httpGet"]
       15 CALL                             R3 2 -1
       16 RETURN                           R3 -1

PROTO_73:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["constructAssetSavedVersionString"]
        3 MOVE                             R5 R1
        4 MOVE                             R6 R2
        5 MOVE                             R7 R3
        6 CALL                             R4 3 1
        7 GETUPVAL                         R5 1
        8 LOADK                            R6 K1 ["getVersionsHistory"]
        9 LOADK                            R7 K2 ["GET"]
       10 MOVE                             R8 R4
       11 CALL                             R5 3 0
       12 GETTABLEKS                       R5 R0 K3 ["_networkImp"]
       14 MOVE                             R7 R4
       15 NAMECALL                         R5 R5 K4 ["httpGet"]
       17 CALL                             R5 2 -1
       18 RETURN                           R5 -1

PROTO_74:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["constructRevertAssetVersionString"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 1
        7 LOADK                            R5 K1 ["postRevertVersion"]
        8 LOADK                            R6 K2 ["POST"]
        9 MOVE                             R7 R3
       10 CALL                             R4 3 0
       11 GETTABLEKS                       R4 R0 K3 ["_networkImp"]
       13 MOVE                             R6 R3
       14 NEWTABLE                         R7 0 0
       16 NAMECALL                         R4 R4 K4 ["httpPostJson"]
       18 CALL                             R4 3 -1
       19 RETURN                           R4 -1

PROTO_75:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["constructGetPackageVersionDescriptionString"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 LOADK                            R4 K1 ["getVersionDescriptions"]
        6 LOADK                            R5 K2 ["POST"]
        7 MOVE                             R6 R2
        8 CALL                             R3 3 0
        9 GETTABLEKS                       R3 R0 K3 ["_networkImp"]
       11 MOVE                             R5 R1
       12 NAMECALL                         R3 R3 K4 ["jsonEncode"]
       14 CALL                             R3 2 1
       15 GETTABLEKS                       R4 R0 K3 ["_networkImp"]
       17 MOVE                             R6 R2
       18 MOVE                             R7 R3
       19 NAMECALL                         R4 R4 K5 ["httpPostJson"]
       21 CALL                             R4 3 -1
       22 RETURN                           R4 -1

PROTO_76:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["postVersionDescription"]
        2 LOADK                            R2 K1 ["POST"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 CALL                             R0 4 0
        6 GETUPVAL                         R1 3
        7 GETTABLEKS                       R0 R1 K2 ["_networkImp"]
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 2
       11 NAMECALL                         R0 R0 K3 ["httpPostJson"]
       13 CALL                             R0 3 -1
       14 RETURN                           R0 -1

PROTO_77:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["constructSetPackageVersionDescriptionString"]
        3 MOVE                             R5 R1
        4 MOVE                             R6 R2
        5 CALL                             R4 2 1
        6 GETTABLEKS                       R5 R0 K1 ["_networkImp"]
        8 DUPTABLE                         R7 K3 [{"message"}]
        9 SETTABLEKS                       R3 R7 K2 ["message"]
       11 NAMECALL                         R5 R5 K4 ["jsonEncode"]
       13 CALL                             R5 2 1
       14 GETUPVAL                         R6 1
       15 NEWCLOSURE                       R7 P0
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R4
       18 CAPTURE                          VAL R5
       19 CAPTURE                          VAL R0
       20 CALL                             R6 1 -1
       21 RETURN                           R6 -1

PROTO_78:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["constructPostFavoriteUrl"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 GETTABLEKS                       R4 R0 K1 ["_networkImp"]
        8 DUPTABLE                         R6 K4 [{"userId", "assetId"}]
        9 SETTABLEKS                       R1 R6 K2 ["userId"]
       11 SETTABLEKS                       R2 R6 K3 ["assetId"]
       13 NAMECALL                         R4 R4 K5 ["jsonEncode"]
       15 CALL                             R4 2 1
       16 GETUPVAL                         R5 1
       17 LOADK                            R6 K6 ["postFavorite"]
       18 LOADK                            R7 K7 ["POST"]
       19 MOVE                             R8 R3
       20 MOVE                             R9 R4
       21 CALL                             R5 4 0
       22 GETTABLEKS                       R5 R0 K1 ["_networkImp"]
       24 MOVE                             R7 R3
       25 MOVE                             R8 R4
       26 NAMECALL                         R5 R5 K8 ["httpPostJson"]
       28 CALL                             R5 3 -1
       29 RETURN                           R5 -1

PROTO_79:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["constructDeleteFavoriteUrl"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 1
        7 LOADK                            R5 K1 ["deleteFavorite"]
        8 LOADK                            R6 K2 ["DELETE"]
        9 MOVE                             R7 R3
       10 CALL                             R4 3 0
       11 GETTABLEKS                       R4 R0 K3 ["_networkImp"]
       13 MOVE                             R6 R3
       14 NAMECALL                         R4 R4 K4 ["httpDelete"]
       16 CALL                             R4 2 -1
       17 RETURN                           R4 -1

PROTO_80:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["reject"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_81:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["constructUploadCatalogItemUrl"]
        3 CALL                             R3 0 1
        4 DUPTABLE                         R4 K6 [{"Url", "Method", "Body", "CachePolicy", "Headers"}]
        5 SETTABLEKS                       R3 R4 K1 ["Url"]
        7 LOADK                            R5 K7 ["POST"]
        8 SETTABLEKS                       R5 R4 K2 ["Method"]
       10 SETTABLEKS                       R1 R4 K3 ["Body"]
       12 GETIMPORT                        R5 K11 [Enum.HttpCachePolicy.None]
       14 SETTABLEKS                       R5 R4 K4 ["CachePolicy"]
       16 NEWTABLE                         R5 1 0
       18 LOADK                            R7 K12 ["multipart/form-data; boundary="]
       19 MOVE                             R8 R2
       20 CONCAT                           R6 R7 R8
       21 SETTABLEKS                       R6 R5 K13 ["Content-Type"]
       23 SETTABLEKS                       R5 R4 K5 ["Headers"]
       25 GETUPVAL                         R5 1
       26 LOADK                            R6 K14 ["uploadCatalogItem"]
       27 LOADK                            R7 K15 ["POST FORM-DATA"]
       28 MOVE                             R8 R3
       29 MOVE                             R9 R1
       30 CALL                             R5 4 0
       31 GETTABLEKS                       R5 R0 K16 ["_networkImp"]
       33 MOVE                             R7 R4
       34 NAMECALL                         R5 R5 K17 ["requestInternal"]
       36 CALL                             R5 2 1
       37 DUPCLOSURE                       R7 K18 [PROTO_80]
       38 CAPTURE                          UPVAL U2
       39 NAMECALL                         R5 R5 K19 ["catch"]
       41 CALL                             R5 2 -1
       42 RETURN                           R5 -1

PROTO_82:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["uploadCatalogItemFormat"]
        2 LOADK                            R2 K1 ["POST"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 CALL                             R0 4 0
        6 GETUPVAL                         R1 3
        7 GETTABLEKS                       R0 R1 K2 ["_networkImp"]
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 2
       11 NAMECALL                         R0 R0 K3 ["httpPost"]
       13 CALL                             R0 3 -1
       14 RETURN                           R0 -1

PROTO_83:
        0 GETUPVAL                         R9 0
        1 GETTABLEKS                       R8 R9 K0 ["constructUploadCatalogItemFormatUrl"]
        3 MOVE                             R9 R1
        4 MOVE                             R10 R2
        5 MOVE                             R11 R3
        6 MOVE                             R12 R4
        7 MOVE                             R13 R5
        8 MOVE                             R14 R6
        9 CALL                             R8 6 1
       10 GETUPVAL                         R9 1
       11 NEWCLOSURE                       R10 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R8
       14 CAPTURE                          VAL R7
       15 CAPTURE                          VAL R0
       16 CALL                             R9 1 -1
       17 RETURN                           R9 -1

PROTO_84:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["reject"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_85:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["constructUploadAssetThumbnailUrl"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 1
        6 MOVE                             R5 R3
        7 MOVE                             R6 R2
        8 CALL                             R4 2 2
        9 GETUPVAL                         R6 2
       10 LOADK                            R7 K1 ["uploadAssetThumbnail"]
       11 LOADK                            R8 K2 ["POST FORM-DATA"]
       12 MOVE                             R9 R3
       13 MOVE                             R10 R4
       14 CALL                             R6 4 0
       15 GETTABLEKS                       R6 R0 K3 ["_networkImp"]
       17 MOVE                             R8 R5
       18 NAMECALL                         R6 R6 K4 ["requestInternal"]
       20 CALL                             R6 2 1
       21 DUPCLOSURE                       R8 K5 [PROTO_84]
       22 CAPTURE                          UPVAL U3
       23 NAMECALL                         R6 R6 K6 ["catch"]
       25 CALL                             R6 2 -1
       26 RETURN                           R6 -1

PROTO_86:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["contuctGetThumbnailStatusUrl"]
        3 NEWTABLE                         R3 0 1
        5 MOVE                             R4 R1
        6 SETLIST                          R3 R4 1 [1]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 1
       10 LOADK                            R4 K1 ["getThumbnailStatus"]
       11 LOADK                            R5 K2 ["GET"]
       12 MOVE                             R6 R2
       13 CALL                             R3 3 0
       14 GETTABLEKS                       R3 R0 K3 ["_networkImp"]
       16 MOVE                             R5 R2
       17 NAMECALL                         R3 R3 K4 ["httpGetJson"]
       19 CALL                             R3 2 -1
       20 RETURN                           R3 -1

PROTO_87:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["reject"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_88:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["constructConfigureCatalogItemUrl"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R4 R0 K1 ["_networkImp"]
        7 MOVE                             R6 R2
        8 NAMECALL                         R4 R4 K2 ["jsonEncode"]
       10 CALL                             R4 2 1
       11 DUPTABLE                         R5 K8 [{"Url", "Method", "Body", "CachePolicy", "Headers"}]
       12 SETTABLEKS                       R3 R5 K3 ["Url"]
       14 LOADK                            R6 K9 ["PATCH"]
       15 SETTABLEKS                       R6 R5 K4 ["Method"]
       17 SETTABLEKS                       R4 R5 K5 ["Body"]
       19 GETIMPORT                        R6 K13 [Enum.HttpCachePolicy.None]
       21 SETTABLEKS                       R6 R5 K6 ["CachePolicy"]
       23 NEWTABLE                         R6 1 0
       25 LOADK                            R7 K14 ["application/json"]
       26 SETTABLEKS                       R7 R6 K15 ["Content-Type"]
       28 SETTABLEKS                       R6 R5 K7 ["Headers"]
       30 GETUPVAL                         R6 1
       31 LOADK                            R7 K16 ["configureCatalogItem"]
       32 LOADK                            R8 K9 ["PATCH"]
       33 MOVE                             R9 R3
       34 MOVE                             R10 R4
       35 CALL                             R6 4 0
       36 GETTABLEKS                       R6 R0 K1 ["_networkImp"]
       38 MOVE                             R8 R5
       39 NAMECALL                         R6 R6 K17 ["requestInternal"]
       41 CALL                             R6 2 1
       42 DUPCLOSURE                       R8 K18 [PROTO_87]
       43 CAPTURE                          UPVAL U2
       44 NAMECALL                         R6 R6 K19 ["catch"]
       46 CALL                             R6 2 -1
       47 RETURN                           R6 -1

PROTO_89:
        0 GETUPVAL                         R11 0
        1 GETTABLEKS                       R10 R11 K0 ["constructPatchAssetUrl"]
        3 MOVE                             R11 R1
        4 CALL                             R10 1 1
        5 GETTABLEKS                       R11 R0 K1 ["_networkImp"]
        7 DUPTABLE                         R13 K11 [{"name", "description", "genres", "enableComments", "isCopyingAllowed", "locale", "localName", "localDescription", "isConvertMarketplaceModelsToPackageEnabled"}]
        8 SETTABLEKS                       R2 R13 K2 ["name"]
       10 SETTABLEKS                       R3 R13 K3 ["description"]
       12 LOADNIL                          R14
       13 SETTABLEKS                       R14 R13 K4 ["genres"]
       15 SETTABLEKS                       R4 R13 K5 ["enableComments"]
       17 SETTABLEKS                       R5 R13 K6 ["isCopyingAllowed"]
       19 SETTABLEKS                       R6 R13 K7 ["locale"]
       21 SETTABLEKS                       R7 R13 K8 ["localName"]
       23 SETTABLEKS                       R8 R13 K9 ["localDescription"]
       25 GETUPVAL                         R15 1
       26 JUMPIF                           R15 ; [+2]
       27 GETUPVAL                         R15 2
       28 JUMPIFNOT                        R15 ; [+2]
       29 MOVE                             R14 R9
       30 JUMP                             ; [+1]
       31 LOADNIL                          R14
       32 SETTABLEKS                       R14 R13 K10 ["isConvertMarketplaceModelsToPackageEnabled"]
       34 NAMECALL                         R11 R11 K12 ["jsonEncode"]
       36 CALL                             R11 2 1
       37 GETUPVAL                         R12 3
       38 LOADK                            R13 K13 ["patchAsset"]
       39 LOADK                            R14 K14 ["PATCH"]
       40 MOVE                             R15 R10
       41 MOVE                             R16 R11
       42 CALL                             R12 4 0
       43 GETTABLEKS                       R12 R0 K1 ["_networkImp"]
       45 MOVE                             R14 R10
       46 MOVE                             R15 R11
       47 NAMECALL                         R12 R12 K15 ["httpPatch"]
       49 CALL                             R12 3 -1
       50 RETURN                           R12 -1

PROTO_90:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["constructValidateAnimationUrl"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 LOADK                            R4 K1 ["validateAnimation"]
        7 LOADK                            R5 K2 ["GET"]
        8 MOVE                             R6 R2
        9 CALL                             R3 3 0
       10 GETTABLEKS                       R3 R0 K3 ["_networkImp"]
       12 MOVE                             R5 R2
       13 NAMECALL                         R3 R3 K4 ["httpGetJson"]
       15 CALL                             R3 2 -1
       16 RETURN                           R3 -1

PROTO_91:
        0 LOADK                            R1 K0 [""]
        1 GETUPVAL                         R2 0
        2 LOADB                            R4 0
        3 NAMECALL                         R2 R2 K1 ["GenerateGUID"]
        5 CALL                             R2 2 1
        6 MOVE                             R3 R0
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 MOVE                             R8 R1
       11 LOADK                            R9 K2 ["--"]
       12 MOVE                             R10 R2
       13 LOADK                            R11 K3 ["\r\n"]
       14 CONCAT                           R1 R8 R11
       15 MOVE                             R8 R1
       16 LOADK                            R9 K4 ["Content-Type: "]
       17 GETTABLEKS                       R10 R7 K5 ["contentType"]
       19 LOADK                            R11 K3 ["\r\n"]
       20 CONCAT                           R1 R8 R11
       21 MOVE                             R8 R1
       22 LOADK                            R9 K6 ["Content-Disposition: form-data; name=\""]
       23 MOVE                             R10 R6
       24 LOADK                            R11 K7 ["\""]
       25 CONCAT                           R1 R8 R11
       26 GETTABLEKS                       R8 R7 K8 ["filename"]
       28 JUMPIFNOT                        R8 ; [+6]
       29 MOVE                             R8 R1
       30 LOADK                            R9 K9 ["; filename=\""]
       31 GETTABLEKS                       R10 R7 K8 ["filename"]
       33 LOADK                            R11 K7 ["\""]
       34 CONCAT                           R1 R8 R11
       35 MOVE                             R8 R1
       36 LOADK                            R9 K3 ["\r\n"]
       37 CONCAT                           R1 R8 R9
       38 MOVE                             R8 R1
       39 LOADK                            R9 K3 ["\r\n"]
       40 CONCAT                           R1 R8 R9
       41 MOVE                             R8 R1
       42 GETTABLEKS                       R9 R7 K10 ["body"]
       44 LOADK                            R10 K3 ["\r\n"]
       45 CONCAT                           R1 R8 R10
       46 FORGLOOP                         R3 2 ; [-37]
       48 MOVE                             R3 R1
       49 LOADK                            R4 K2 ["--"]
       50 MOVE                             R5 R2
       51 LOADK                            R6 K2 ["--"]
       52 CONCAT                           R1 R3 R6
       53 RETURN                           R1 2

PROTO_92:
        0 GETTABLEKS                       R1 R0 K0 ["responseCode"]
        2 JUMPIFNOTEQKN                    R1 K1 [200] ; [+28]
        4 GETTABLEKS                       R1 R0 K2 ["responseBody"]
        6 JUMPIFNOT                        R1 ; [+24]
        7 GETTABLEKS                       R2 R0 K2 ["responseBody"]
        9 GETTABLEKS                       R1 R2 K3 ["done"]
       11 JUMPIFNOT                        R1 ; [+19]
       12 GETUPVAL                         R1 0
       13 CALL                             R1 0 1
       14 JUMPIFNOT                        R1 ; [+11]
       15 GETTABLEKS                       R2 R0 K2 ["responseBody"]
       17 GETTABLEKS                       R1 R2 K4 ["error"]
       19 JUMPIFEQKNIL                     R1 ; [+6]
       21 GETTABLEKS                       R2 R0 K2 ["responseBody"]
       23 GETTABLEKS                       R1 R2 K4 ["error"]
       25 RETURN                           R1 1
       26 GETTABLEKS                       R2 R0 K2 ["responseBody"]
       28 GETTABLEKS                       R1 R2 K5 ["response"]
       30 RETURN                           R1 1
       31 GETUPVAL                         R1 1
       32 LOADN                            R2 5
       33 JUMPIFNOTLT                      R2 R1 ; [+7]
       35 GETUPVAL                         R2 2
       36 GETTABLEKS                       R1 R2 K6 ["reject"]
       38 LOADK                            R2 K7 ["Timeout"]
       39 CALL                             R1 1 -1
       40 RETURN                           R1 -1
       41 LOADN                            R2 2
       42 GETUPVAL                         R4 1
       43 SUBK                             R3 R4 K8 [1]
       44 POW                              R1 R2 R3
       45 GETIMPORT                        R2 K10 [wait]
       47 MOVE                             R3 R1
       48 CALL                             R2 1 0
       49 GETUPVAL                         R2 3
       50 GETUPVAL                         R4 4
       51 GETUPVAL                         R5 5
       52 GETUPVAL                         R7 1
       53 ADDK                             R6 R7 K8 [1]
       54 NAMECALL                         R2 R2 K11 ["waitForOperation"]
       56 CALL                             R2 4 -1
       57 RETURN                           R2 -1

PROTO_93:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["reject"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_94:
        0 ORK                              R2 R2 K0 [5]
        1 ORK                              R3 R3 K1 [0]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K2 ["constructOperationUrl"]
        5 MOVE                             R5 R1
        6 CALL                             R4 1 1
        7 GETUPVAL                         R5 1
        8 LOADK                            R6 K3 ["waitForOperation"]
        9 LOADK                            R7 K4 ["GET"]
       10 MOVE                             R8 R4
       11 CALL                             R5 3 0
       12 GETTABLEKS                       R5 R0 K5 ["_networkImp"]
       14 MOVE                             R7 R4
       15 NAMECALL                         R5 R5 K6 ["httpGetJson"]
       17 CALL                             R5 2 1
       18 NEWCLOSURE                       R7 P0
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          REF R3
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R1
       24 CAPTURE                          REF R2
       25 NAMECALL                         R5 R5 K7 ["andThen"]
       27 CALL                             R5 2 1
       28 DUPCLOSURE                       R7 K8 [PROTO_93]
       29 CAPTURE                          UPVAL U3
       30 NAMECALL                         R5 R5 K9 ["catch"]
       32 CALL                             R5 2 -1
       33 CLOSEUPVALS                      R2
       34 RETURN                           R5 -1

PROTO_95:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_networkImp"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["jsonDecode"]
        6 CALL                             R1 2 1
        7 SETGLOBAL                        R1 K2 ["body"]
        9 GETUPVAL                         R1 0
       10 GETGLOBAL                        R4 K2 ["body"]
       12 GETTABLEKS                       R3 R4 K3 ["operationId"]
       14 NAMECALL                         R1 R1 K4 ["waitForOperation"]
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1

PROTO_96:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["reject"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_97:
        0 GETUPVAL                         R10 0
        1 GETTABLEKS                       R9 R10 K0 ["constructPostUploadAnimationUrl"]
        3 CALL                             R9 0 1
        4 GETUPVAL                         R11 1
        5 CALL                             R11 0 1
        6 JUMPIFNOT                        R11 ; [+3]
        7 GETTABLEKS                       R10 R6 K1 ["Name"]
        9 JUMP                             ; [+4]
       10 GETIMPORT                        R11 K5 [Enum.AssetType.Animation]
       12 GETTABLEKS                       R10 R11 K1 ["Name"]
       14 GETUPVAL                         R11 2
       15 DUPTABLE                         R12 K8 [{"request", "fileContent"}]
       16 DUPTABLE                         R13 K11 [{"contentType", "body"}]
       17 LOADK                            R14 K12 ["application/json"]
       18 SETTABLEKS                       R14 R13 K9 ["contentType"]
       20 GETTABLEKS                       R14 R0 K13 ["_networkImp"]
       22 DUPTABLE                         R16 K18 [{"assetType", "displayName", "description", "creationContext"}]
       23 SETTABLEKS                       R10 R16 K14 ["assetType"]
       25 SETTABLEKS                       R2 R16 K15 ["displayName"]
       27 SETTABLEKS                       R3 R16 K16 ["description"]
       29 DUPTABLE                         R17 K21 [{"creator", "expectedPrice"}]
       30 DUPTABLE                         R18 K24 [{"userId", "groupId"}]
       31 JUMPIF                           R5 ; [+2]
       32 MOVE                             R19 R4
       33 JUMP                             ; [+1]
       34 LOADNIL                          R19
       35 SETTABLEKS                       R19 R18 K22 ["userId"]
       37 SETTABLEKS                       R5 R18 K23 ["groupId"]
       39 SETTABLEKS                       R18 R17 K19 ["creator"]
       41 SETTABLEKS                       R7 R17 K20 ["expectedPrice"]
       43 SETTABLEKS                       R17 R16 K17 ["creationContext"]
       45 NAMECALL                         R14 R14 K25 ["jsonEncode"]
       47 CALL                             R14 2 1
       48 SETTABLEKS                       R14 R13 K10 ["body"]
       50 SETTABLEKS                       R13 R12 K6 ["request"]
       52 DUPTABLE                         R13 K27 [{"contentType", "filename", "body"}]
       53 LOADK                            R14 K28 ["model/x-rbxm"]
       54 SETTABLEKS                       R14 R13 K9 ["contentType"]
       56 LOADK                            R14 K29 ["asset.rbxm"]
       57 SETTABLEKS                       R14 R13 K26 ["filename"]
       59 SETTABLEKS                       R8 R13 K10 ["body"]
       61 SETTABLEKS                       R13 R12 K7 ["fileContent"]
       63 CALL                             R11 1 2
       64 DUPTABLE                         R13 K35 [{"Url", "Method", "Body", "CachePolicy", "Headers"}]
       65 SETTABLEKS                       R9 R13 K30 ["Url"]
       67 LOADK                            R14 K36 ["POST"]
       68 SETTABLEKS                       R14 R13 K31 ["Method"]
       70 SETTABLEKS                       R11 R13 K32 ["Body"]
       72 GETIMPORT                        R14 K39 [Enum.HttpCachePolicy.None]
       74 SETTABLEKS                       R14 R13 K33 ["CachePolicy"]
       76 NEWTABLE                         R14 1 0
       78 LOADK                            R16 K40 ["multipart/form-data; boundary="]
       79 MOVE                             R17 R12
       80 CONCAT                           R15 R16 R17
       81 SETTABLEKS                       R15 R14 K41 ["Content-Type"]
       83 SETTABLEKS                       R14 R13 K34 ["Headers"]
       85 GETUPVAL                         R14 3
       86 LOADK                            R15 K42 ["uploadAnimation"]
       87 LOADK                            R16 K36 ["POST"]
       88 MOVE                             R17 R9
       89 MOVE                             R18 R13
       90 CALL                             R14 4 0
       91 GETTABLEKS                       R14 R0 K13 ["_networkImp"]
       93 MOVE                             R16 R13
       94 NAMECALL                         R14 R14 K43 ["requestInternal"]
       96 CALL                             R14 2 1
       97 NEWCLOSURE                       R16 P0
       98 CAPTURE                          VAL R0
       99 NAMECALL                         R14 R14 K44 ["andThen"]
      101 CALL                             R14 2 1
      102 DUPCLOSURE                       R16 K45 [PROTO_96]
      103 CAPTURE                          UPVAL U4
      104 NAMECALL                         R14 R14 K46 ["catch"]
      106 CALL                             R14 2 -1
      107 RETURN                           R14 -1

PROTO_98:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_networkImp"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["jsonDecode"]
        6 CALL                             R1 2 1
        7 SETGLOBAL                        R1 K2 ["body"]
        9 GETUPVAL                         R1 0
       10 GETGLOBAL                        R4 K2 ["body"]
       12 GETTABLEKS                       R3 R4 K3 ["operationId"]
       14 NAMECALL                         R1 R1 K4 ["waitForOperation"]
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1

PROTO_99:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["reject"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_100:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["constructPostOverwriteAnimationUrl"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 1
        6 DUPTABLE                         R5 K3 [{"request", "fileContent"}]
        7 DUPTABLE                         R6 K6 [{"contentType", "body"}]
        8 LOADK                            R7 K7 ["application/json"]
        9 SETTABLEKS                       R7 R6 K4 ["contentType"]
       11 GETTABLEKS                       R7 R0 K8 ["_networkImp"]
       13 DUPTABLE                         R9 K10 [{"assetId"}]
       14 FASTCALL1                        TOSTRING R1 ; [+3]
       15 MOVE                             R11 R1
       16 GETIMPORT                        R10 K12 [tostring]
       18 CALL                             R10 1 1
       19 SETTABLEKS                       R10 R9 K9 ["assetId"]
       21 NAMECALL                         R7 R7 K13 ["jsonEncode"]
       23 CALL                             R7 2 1
       24 SETTABLEKS                       R7 R6 K5 ["body"]
       26 SETTABLEKS                       R6 R5 K1 ["request"]
       28 DUPTABLE                         R6 K15 [{"contentType", "filename", "body"}]
       29 LOADK                            R7 K16 ["model/x-rbxm"]
       30 SETTABLEKS                       R7 R6 K4 ["contentType"]
       32 LOADK                            R7 K17 ["asset.rbxm"]
       33 SETTABLEKS                       R7 R6 K14 ["filename"]
       35 SETTABLEKS                       R2 R6 K5 ["body"]
       37 SETTABLEKS                       R6 R5 K2 ["fileContent"]
       39 CALL                             R4 1 2
       40 DUPTABLE                         R6 K23 [{"Url", "Method", "Body", "CachePolicy", "Headers"}]
       41 SETTABLEKS                       R3 R6 K18 ["Url"]
       43 LOADK                            R7 K24 ["PATCH"]
       44 SETTABLEKS                       R7 R6 K19 ["Method"]
       46 SETTABLEKS                       R4 R6 K20 ["Body"]
       48 GETIMPORT                        R7 K28 [Enum.HttpCachePolicy.None]
       50 SETTABLEKS                       R7 R6 K21 ["CachePolicy"]
       52 NEWTABLE                         R7 1 0
       54 LOADK                            R9 K29 ["multipart/form-data; boundary="]
       55 MOVE                             R10 R5
       56 CONCAT                           R8 R9 R10
       57 SETTABLEKS                       R8 R7 K30 ["Content-Type"]
       59 SETTABLEKS                       R7 R6 K22 ["Headers"]
       61 GETUPVAL                         R7 2
       62 LOADK                            R8 K31 ["overrideAnimation"]
       63 LOADK                            R9 K24 ["PATCH"]
       64 MOVE                             R10 R3
       65 MOVE                             R11 R6
       66 CALL                             R7 4 0
       67 GETTABLEKS                       R7 R0 K8 ["_networkImp"]
       69 MOVE                             R9 R6
       70 NAMECALL                         R7 R7 K32 ["requestInternal"]
       72 CALL                             R7 2 1
       73 NEWCLOSURE                       R9 P0
       74 CAPTURE                          VAL R0
       75 NAMECALL                         R7 R7 K33 ["andThen"]
       77 CALL                             R7 2 1
       78 DUPCLOSURE                       R9 K34 [PROTO_99]
       79 CAPTURE                          UPVAL U3
       80 NAMECALL                         R7 R7 K35 ["catch"]
       82 CALL                             R7 2 -1
       83 RETURN                           R7 -1

PROTO_101:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["constructIsVerifiedCreatorUrl"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R3 K1 ["getIsVerifiedCreator"]
        6 LOADK                            R4 K2 ["GET"]
        7 MOVE                             R5 R1
        8 CALL                             R2 3 0
        9 GETTABLEKS                       R2 R0 K3 ["_networkImp"]
       11 MOVE                             R4 R1
       12 NAMECALL                         R2 R2 K4 ["httpGetJson"]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

PROTO_102:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["constructGetPluginInfoUrl"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 LOADK                            R4 K1 ["getPluginInfo"]
        7 LOADK                            R5 K2 ["GET"]
        8 MOVE                             R6 R2
        9 CALL                             R3 3 0
       10 GETTABLEKS                       R3 R0 K3 ["_networkImp"]
       12 MOVE                             R5 R2
       13 NAMECALL                         R3 R3 K4 ["httpGetJson"]
       15 CALL                             R3 2 -1
       16 RETURN                           R3 -1

PROTO_103:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["constructGetUserFriendsUrl"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 LOADK                            R4 K1 ["getUserFriends"]
        7 LOADK                            R5 K2 ["GET"]
        8 MOVE                             R6 R1
        9 CALL                             R3 3 0
       10 GETTABLEKS                       R3 R0 K3 ["_networkImp"]
       12 MOVE                             R5 R2
       13 NAMECALL                         R3 R3 K4 ["httpGet"]
       15 CALL                             R3 2 -1
       16 RETURN                           R3 -1

PROTO_104:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["constructPostPackageMetadata"]
        3 CALL                             R2 0 1
        4 LOADK                            R4 K1 ["[{ \"assetId\" : "]
        5 MOVE                             R5 R1
        6 LOADK                            R6 K2 [", \"assetVersionNumber\" : 1 }]"]
        7 CONCAT                           R3 R4 R6
        8 GETTABLEKS                       R4 R0 K3 ["_networkImp"]
       10 MOVE                             R6 R2
       11 MOVE                             R7 R3
       12 NAMECALL                         R4 R4 K4 ["httpPostJson"]
       14 CALL                             R4 3 -1
       15 RETURN                           R4 -1

PROTO_105:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["constructGetRobuxBalanceUrl"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 LOADK                            R4 K1 ["getRobuxBalance"]
        7 LOADK                            R5 K2 ["GET"]
        8 MOVE                             R6 R2
        9 CALL                             R3 3 0
       10 GETTABLEKS                       R3 R0 K3 ["_networkImp"]
       12 MOVE                             R5 R2
       13 NAMECALL                         R3 R3 K4 ["httpGetJson"]
       15 CALL                             R3 2 -1
       16 RETURN                           R3 -1

PROTO_106:
        0 GETTABLEKS                       R3 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R2 R3 K1 ["results"]
        4 LENGTH                           R1 R2
        5 LOADN                            R2 1
        6 JUMPIFNOTLT                      R1 R2 ; [+13]
        8 GETIMPORT                        R1 K3 [error]
       10 GETIMPORT                        R2 K6 [string.format]
       12 LOADK                            R3 K7 ["No results for getHasEditPermissionForAsset. assetId = %s"]
       13 GETUPVAL                         R5 0
       14 FASTCALL1                        TOSTRING R5 ; [+2]
       15 GETIMPORT                        R4 K9 [tostring]
       17 CALL                             R4 1 1
       18 CALL                             R2 2 -1
       19 CALL                             R1 -1 0
       20 GETTABLEKS                       R3 R0 K0 ["responseBody"]
       22 GETTABLEKS                       R2 R3 K1 ["results"]
       24 GETTABLEN                        R1 R2 1
       25 GETTABLEKS                       R2 R1 K2 ["error"]
       27 JUMPIFNOT                        R2 ; [+5]
       28 GETIMPORT                        R2 K3 [error]
       30 GETTABLEKS                       R3 R1 K2 ["error"]
       32 CALL                             R2 1 0
       33 GETTABLEKS                       R4 R1 K10 ["value"]
       35 GETTABLEKS                       R3 R4 K11 ["status"]
       37 JUMPIFEQKS                       R3 K12 ["HasPermission"] ; [+2]
       39 LOADB                            R2 0 +1
       40 LOADB                            R2 1
       41 RETURN                           R2 1

PROTO_107:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["constructAssetCheckPermissionsBatchUrl"]
        3 CALL                             R3 0 1
        4 GETTABLEKS                       R4 R0 K1 ["_networkImp"]
        6 DUPTABLE                         R6 K3 [{"requests"}]
        7 NEWTABLE                         R7 0 1
        9 DUPTABLE                         R8 K7 [{"subject", "action", "assetId"}]
       10 DUPTABLE                         R9 K10 [{"subjectType", "subjectId"}]
       11 LOADK                            R10 K11 ["User"]
       12 SETTABLEKS                       R10 R9 K8 ["subjectType"]
       14 SETTABLEKS                       R2 R9 K9 ["subjectId"]
       16 SETTABLEKS                       R9 R8 K4 ["subject"]
       18 LOADK                            R9 K12 ["Edit"]
       19 SETTABLEKS                       R9 R8 K5 ["action"]
       21 SETTABLEKS                       R1 R8 K6 ["assetId"]
       23 SETLIST                          R7 R8 1 [1]
       25 SETTABLEKS                       R7 R6 K2 ["requests"]
       27 NAMECALL                         R4 R4 K13 ["jsonEncode"]
       29 CALL                             R4 2 1
       30 GETUPVAL                         R5 1
       31 LOADK                            R6 K14 ["getHasEditPermissionForAsset"]
       32 LOADK                            R7 K15 ["POST"]
       33 MOVE                             R8 R3
       34 MOVE                             R9 R4
       35 CALL                             R5 4 0
       36 GETTABLEKS                       R5 R0 K1 ["_networkImp"]
       38 MOVE                             R7 R3
       39 MOVE                             R8 R4
       40 NAMECALL                         R5 R5 K16 ["httpPostJson"]
       42 CALL                             R5 3 1
       43 NEWCLOSURE                       R7 P0
       44 CAPTURE                          VAL R1
       45 NAMECALL                         R5 R5 K17 ["andThen"]
       47 CALL                             R5 2 -1
       48 RETURN                           R5 -1

PROTO_108:
        0 MOVE                             R6 R2
        1 NAMECALL                         R4 R0 K0 ["jsonEncode"]
        3 CALL                             R4 2 1
        4 JUMPIFEQKNIL                     R1 ; [+4]
        6 GETUPVAL                         R6 0
        7 CALL                             R6 0 1
        8 JUMPIFNOT                        R6 ; [+7]
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R5 R6 K1 ["constructAssetPurchaseUrl"]
       12 LOADNIL                          R6
       13 MOVE                             R7 R3
       14 CALL                             R5 2 1
       15 JUMP                             ; [+6]
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R5 R6 K1 ["constructAssetPurchaseUrl"]
       19 MOVE                             R6 R1
       20 MOVE                             R7 R3
       21 CALL                             R5 2 1
       22 GETUPVAL                         R6 2
       23 LOADK                            R7 K2 ["purchaseAsset"]
       24 LOADK                            R8 K3 ["POST"]
       25 MOVE                             R9 R5
       26 CALL                             R6 3 0
       27 GETTABLEKS                       R6 R0 K4 ["_networkImp"]
       29 MOVE                             R8 R5
       30 MOVE                             R9 R4
       31 NAMECALL                         R6 R6 K5 ["httpPostJson"]
       33 CALL                             R6 3 -1
       34 RETURN                           R6 -1

PROTO_109:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["constructPurchaserStatusUrl"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R3 K1 ["getPurchaserStatus"]
        6 LOADK                            R4 K2 ["GET"]
        7 MOVE                             R5 R1
        8 CALL                             R2 3 0
        9 GETTABLEKS                       R2 R0 K3 ["_networkImp"]
       11 MOVE                             R4 R1
       12 NAMECALL                         R2 R2 K4 ["httpGetJson"]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

PROTO_110:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["constructSellerStatusUrl"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R3 K1 ["getSellerStatus"]
        6 LOADK                            R4 K2 ["GET"]
        7 MOVE                             R5 R1
        8 CALL                             R2 3 0
        9 GETTABLEKS                       R2 R0 K3 ["_networkImp"]
       11 MOVE                             R4 R1
       12 NAMECALL                         R2 R2 K4 ["httpGetJson"]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

PROTO_111:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["constructGetGroupRoleInfoUrl"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 LOADK                            R4 K1 ["getGroupRoleInfo"]
        7 LOADK                            R5 K2 ["GET"]
        8 MOVE                             R6 R1
        9 CALL                             R3 3 0
       10 GETTABLEKS                       R3 R0 K3 ["_networkImp"]
       12 MOVE                             R5 R2
       13 NAMECALL                         R3 R3 K4 ["httpGet"]
       15 CALL                             R3 2 -1
       16 RETURN                           R3 -1

PROTO_112:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["constructAssetPermissionsUrl"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R4 R0 K1 ["_networkImp"]
        7 MOVE                             R6 R2
        8 NAMECALL                         R4 R4 K2 ["jsonEncode"]
       10 CALL                             R4 2 1
       11 GETUPVAL                         R5 1
       12 LOADK                            R6 K3 ["grantAssetPermissions"]
       13 LOADK                            R7 K4 ["PATCH"]
       14 MOVE                             R8 R3
       15 MOVE                             R9 R4
       16 CALL                             R5 4 0
       17 GETTABLEKS                       R5 R0 K1 ["_networkImp"]
       19 MOVE                             R7 R3
       20 MOVE                             R8 R4
       21 NAMECALL                         R5 R5 K5 ["httpPatch"]
       23 CALL                             R5 3 -1
       24 RETURN                           R5 -1

PROTO_113:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["constructAssetPermissionsUrl"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R4 R0 K1 ["_networkImp"]
        7 MOVE                             R6 R2
        8 NAMECALL                         R4 R4 K2 ["jsonEncode"]
       10 CALL                             R4 2 1
       11 DUPTABLE                         R5 K8 [{"Url", "Method", "Body", "Headers", "Timeout"}]
       12 SETTABLEKS                       R3 R5 K3 ["Url"]
       14 LOADK                            R6 K9 ["PATCH"]
       15 SETTABLEKS                       R6 R5 K4 ["Method"]
       17 SETTABLEKS                       R4 R5 K5 ["Body"]
       19 NEWTABLE                         R6 1 0
       21 LOADK                            R7 K10 ["application/json"]
       22 SETTABLEKS                       R7 R6 K11 ["Content-Type"]
       24 SETTABLEKS                       R6 R5 K6 ["Headers"]
       26 GETUPVAL                         R6 1
       27 SETTABLEKS                       R6 R5 K7 ["Timeout"]
       29 GETTABLEKS                       R6 R0 K1 ["_networkImp"]
       31 MOVE                             R8 R5
       32 NAMECALL                         R6 R6 K12 ["requestInternalRaw"]
       34 CALL                             R6 2 -1
       35 RETURN                           R6 -1

PROTO_114:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_networkImp"]
        3 GETTABLEKS                       R3 R0 K1 ["responseBody"]
        5 NAMECALL                         R1 R1 K2 ["jsonDecode"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_115:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["reject"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_116:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["constructAssetBatchGrantPermissionsUrl"]
        3 CALL                             R3 0 1
        4 NEWTABLE                         R4 0 0
        6 GETIMPORT                        R5 K2 [ipairs]
        8 MOVE                             R6 R1
        9 CALL                             R5 1 3
       10 FORGPREP_INEXT                   R5
       11 DUPTABLE                         R12 K5 [{"assetId", "grantToDependencies"}]
       12 SETTABLEKS                       R9 R12 K3 ["assetId"]
       14 LOADB                            R13 1
       15 SETTABLEKS                       R13 R12 K4 ["grantToDependencies"]
       17 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       19 MOVE                             R11 R4
       20 GETIMPORT                        R10 K8 [table.insert]
       22 CALL                             R10 2 0
       23 FORGLOOP                         R5 2 [inext] ; [-13]
       25 GETTABLEKS                       R5 R0 K9 ["_networkImp"]
       27 DUPTABLE                         R7 K14 [{"subjectType", "subjectId", "action", "requests"}]
       28 LOADK                            R8 K15 ["Universe"]
       29 SETTABLEKS                       R8 R7 K10 ["subjectType"]
       31 FASTCALL1                        TOSTRING R2 ; [+3]
       32 MOVE                             R9 R2
       33 GETIMPORT                        R8 K17 [tostring]
       35 CALL                             R8 1 1
       36 SETTABLEKS                       R8 R7 K11 ["subjectId"]
       38 LOADK                            R8 K18 ["Use"]
       39 SETTABLEKS                       R8 R7 K12 ["action"]
       41 SETTABLEKS                       R4 R7 K13 ["requests"]
       43 NAMECALL                         R5 R5 K19 ["jsonEncode"]
       45 CALL                             R5 2 1
       46 GETUPVAL                         R6 1
       47 LOADK                            R7 K20 ["batchGrantAssetPermissions"]
       48 LOADK                            R8 K21 ["PATCH"]
       49 MOVE                             R9 R3
       50 MOVE                             R10 R5
       51 CALL                             R6 4 0
       52 GETTABLEKS                       R6 R0 K9 ["_networkImp"]
       54 MOVE                             R8 R3
       55 MOVE                             R9 R5
       56 NAMECALL                         R6 R6 K22 ["httpPatch"]
       58 CALL                             R6 3 1
       59 NEWCLOSURE                       R8 P0
       60 CAPTURE                          VAL R0
       61 NAMECALL                         R6 R6 K23 ["andThen"]
       63 CALL                             R6 2 1
       64 DUPCLOSURE                       R8 K24 [PROTO_115]
       65 CAPTURE                          UPVAL U2
       66 NAMECALL                         R6 R6 K25 ["catch"]
       68 CALL                             R6 2 -1
       69 RETURN                           R6 -1

PROTO_117:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["constructAssetPermissionsUrl"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R4 R0 K1 ["_networkImp"]
        7 MOVE                             R6 R2
        8 NAMECALL                         R4 R4 K2 ["jsonEncode"]
       10 CALL                             R4 2 1
       11 GETUPVAL                         R5 1
       12 LOADK                            R6 K3 ["revokeAssetPermissions"]
       13 LOADK                            R7 K4 ["DELETE"]
       14 MOVE                             R8 R3
       15 MOVE                             R9 R4
       16 CALL                             R5 4 0
       17 GETTABLEKS                       R5 R0 K1 ["_networkImp"]
       19 MOVE                             R7 R3
       20 MOVE                             R8 R4
       21 NAMECALL                         R5 R5 K5 ["httpDeleteWithPayload"]
       23 CALL                             R5 3 -1
       24 RETURN                           R5 -1

PROTO_118:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["constructAssetPermissionsUrl"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 LOADK                            R4 K1 ["getAssetPermissions"]
        7 LOADK                            R5 K2 ["GET"]
        8 MOVE                             R6 R2
        9 CALL                             R3 3 0
       10 GETTABLEKS                       R3 R0 K3 ["_networkImp"]
       12 MOVE                             R5 R2
       13 NAMECALL                         R3 R3 K4 ["httpGetJson"]
       15 CALL                             R3 2 -1
       16 RETURN                           R3 -1

PROTO_119:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_networkImp"]
        3 DUPTABLE                         R2 K3 [{"actions", "assetIds"}]
        4 GETUPVAL                         R3 1
        5 SETTABLEKS                       R3 R2 K1 ["actions"]
        7 GETUPVAL                         R3 2
        8 SETTABLEKS                       R3 R2 K2 ["assetIds"]
       10 NAMECALL                         R0 R0 K4 ["jsonEncode"]
       12 CALL                             R0 2 1
       13 GETUPVAL                         R1 3
       14 LOADK                            R2 K5 ["postAssetCheckPermissions"]
       15 LOADK                            R3 K6 ["POST"]
       16 GETUPVAL                         R4 4
       17 CALL                             R1 3 0
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R1 R2 K0 ["_networkImp"]
       21 GETUPVAL                         R3 4
       22 MOVE                             R4 R0
       23 NAMECALL                         R1 R1 K7 ["httpPostJson"]
       25 CALL                             R1 3 -1
       26 RETURN                           R1 -1

PROTO_120:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["constructAssetCheckPermissionsUrl"]
        3 CALL                             R3 0 1
        4 GETUPVAL                         R4 1
        5 NEWCLOSURE                       R5 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R2
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R3
       11 CALL                             R4 1 -1
       12 RETURN                           R4 -1

PROTO_121:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["getItemUploadFee"]
        2 LOADK                            R2 K1 ["GET"]
        3 GETUPVAL                         R3 1
        4 CALL                             R0 3 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R0 R1 K2 ["_networkImp"]
        8 GETUPVAL                         R2 1
        9 NAMECALL                         R0 R0 K3 ["httpGetJson"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_122:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["constructGetItemUploadFeeUrl"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 1
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R3
       10 CAPTURE                          VAL R0
       11 CALL                             R4 1 -1
       12 RETURN                           R4 -1

PROTO_123:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["getAssetTypeAgents"]
        2 LOADK                            R2 K1 ["GET"]
        3 GETUPVAL                         R3 1
        4 CALL                             R0 3 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R0 R1 K2 ["_networkImp"]
        8 GETUPVAL                         R2 1
        9 NAMECALL                         R0 R0 K3 ["httpGetJson"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_124:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["constructAssetTypeAgentsUrl"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R0
       10 CALL                             R3 1 -1
       11 RETURN                           R3 -1

PROTO_125:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["constructToolboxAutocompleteUrl"]
        3 MOVE                             R5 R1
        4 MOVE                             R6 R2
        5 MOVE                             R7 R3
        6 CALL                             R4 3 1
        7 GETUPVAL                         R5 1
        8 LOADK                            R6 K1 ["getAutocompleteResults"]
        9 LOADK                            R7 K2 ["GET"]
       10 MOVE                             R8 R4
       11 CALL                             R5 3 0
       12 GETTABLEKS                       R5 R0 K3 ["_networkImp"]
       14 MOVE                             R7 R4
       15 NAMECALL                         R5 R5 K4 ["httpGetJson"]
       17 CALL                             R5 2 -1
       18 RETURN                           R5 -1

PROTO_126:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["constructGetHomeConfigurationUrl"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 1
        7 LOADK                            R5 K1 ["getHomeConfiguration"]
        8 LOADK                            R6 K2 ["GET"]
        9 MOVE                             R7 R3
       10 CALL                             R4 3 0
       11 GETTABLEKS                       R4 R0 K3 ["_networkImp"]
       13 MOVE                             R6 R3
       14 NAMECALL                         R4 R4 K4 ["httpGetJson"]
       16 CALL                             R4 2 -1
       17 RETURN                           R4 -1

PROTO_127:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["getCreatorMarketplaceQuotas"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 1
        7 LOADK                            R5 K0 ["getCreatorMarketplaceQuotas"]
        8 LOADK                            R6 K1 ["GET"]
        9 MOVE                             R7 R3
       10 CALL                             R4 3 0
       11 GETTABLEKS                       R4 R0 K2 ["_networkImp"]
       13 MOVE                             R6 R3
       14 NAMECALL                         R4 R4 K3 ["httpGetJson"]
       16 CALL                             R4 2 -1
       17 RETURN                           R4 -1

PROTO_128:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["constructPublishingRequirementsUrl"]
        3 MOVE                             R5 R1
        4 MOVE                             R6 R2
        5 MOVE                             R7 R3
        6 LOADK                            R8 K1 ["Creator"]
        7 CALL                             R4 4 1
        8 GETUPVAL                         R5 1
        9 LOADK                            R6 K2 ["getPublishingRequirements"]
       10 LOADK                            R7 K3 ["GET"]
       11 MOVE                             R8 R4
       12 CALL                             R5 3 0
       13 GETTABLEKS                       R5 R0 K4 ["_networkImp"]
       15 MOVE                             R7 R4
       16 NAMECALL                         R5 R5 K5 ["httpGetJson"]
       18 CALL                             R5 2 -1
       19 RETURN                           R5 -1

PROTO_129:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["deleteAssetMedia"]
        2 LOADK                            R2 K1 ["DELETE"]
        3 GETUPVAL                         R3 1
        4 CALL                             R0 3 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R0 R1 K2 ["_networkImp"]
        8 GETUPVAL                         R2 1
        9 NAMECALL                         R0 R0 K3 ["httpDelete"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_130:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["constructDeleteAssetMediaUrl"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 1
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R3
       10 CAPTURE                          VAL R0
       11 CALL                             R4 1 -1
       12 RETURN                           R4 -1

PROTO_131:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["postSetAssetMediaOrder"]
        2 LOADK                            R2 K1 ["POST"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 CALL                             R0 4 0
        6 GETUPVAL                         R1 3
        7 GETTABLEKS                       R0 R1 K2 ["_networkImp"]
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 2
       11 NAMECALL                         R0 R0 K3 ["httpPostJson"]
       13 CALL                             R0 3 -1
       14 RETURN                           R0 -1

PROTO_132:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["constructPostSetAssetMediaOrder"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R4 R0 K1 ["_networkImp"]
        7 MOVE                             R6 R2
        8 NAMECALL                         R4 R4 K2 ["jsonEncode"]
       10 CALL                             R4 2 1
       11 GETUPVAL                         R5 1
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R3
       15 CAPTURE                          VAL R4
       16 CAPTURE                          VAL R0
       17 CALL                             R5 1 -1
       18 RETURN                           R5 -1

PROTO_133:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_networkImp"]
        3 GETTABLEKS                       R3 R0 K1 ["Body"]
        5 NAMECALL                         R1 R1 K2 ["jsonDecode"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_134:
        0 GETTABLEKS                       R2 R0 K0 ["Body"]
        2 JUMPIFNOT                        R2 ; [+9]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["_networkImp"]
        6 GETTABLEKS                       R3 R0 K0 ["Body"]
        8 NAMECALL                         R1 R1 K2 ["jsonDecode"]
       10 CALL                             R1 2 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K0 ["Body"]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R2 R3 K3 ["reject"]
       18 MOVE                             R3 R0
       19 CALL                             R2 1 -1
       20 RETURN                           R2 -1

PROTO_135:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["postUploadAssetMedia"]
        2 LOADK                            R2 K1 ["POST FORM-DATA"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 CALL                             R0 4 0
        6 GETUPVAL                         R1 3
        7 GETTABLEKS                       R0 R1 K2 ["_networkImp"]
        9 GETUPVAL                         R2 4
       10 NAMECALL                         R0 R0 K3 ["requestInternalRaw"]
       12 CALL                             R0 2 1
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          UPVAL U3
       15 NAMECALL                         R0 R0 K4 ["andThen"]
       17 CALL                             R0 2 1
       18 NEWCLOSURE                       R2 P1
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U5
       21 NAMECALL                         R0 R0 K5 ["catch"]
       23 CALL                             R0 2 -1
       24 RETURN                           R0 -1

PROTO_136:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["constructPostUploadAssetMedia"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 1
        6 MOVE                             R5 R3
        7 MOVE                             R6 R2
        8 CALL                             R4 2 2
        9 GETUPVAL                         R6 2
       10 NEWCLOSURE                       R7 P0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R4
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R5
       16 CAPTURE                          UPVAL U4
       17 LOADNIL                          R8
       18 LOADB                            R9 1
       19 CALL                             R6 3 -1
       20 RETURN                           R6 -1

PROTO_137:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["constructGetUniverseInfo"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 LOADK                            R4 K1 ["getUniverseInfo"]
        7 LOADK                            R5 K2 ["GET"]
        8 MOVE                             R6 R2
        9 CALL                             R3 3 0
       10 GETTABLEKS                       R3 R0 K3 ["_networkImp"]
       12 MOVE                             R5 R2
       13 NAMECALL                         R3 R3 K4 ["httpGet"]
       15 CALL                             R3 2 -1
       16 RETURN                           R3 -1

PROTO_138:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["constructCodeUnderstandingSummaryUrl"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 LOADK                            R4 K1 ["getCodeSummary"]
        7 LOADK                            R5 K2 ["GET"]
        8 MOVE                             R6 R2
        9 CALL                             R3 3 0
       10 GETTABLEKS                       R3 R0 K3 ["_networkImp"]
       12 MOVE                             R5 R2
       13 NAMECALL                         R3 R3 K4 ["httpGetJson"]
       15 CALL                             R3 2 -1
       16 RETURN                           R3 -1

PROTO_139:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["constructGetFiatProductUrl"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 1
        7 LOADK                            R5 K1 ["getFiatProduct"]
        8 LOADK                            R6 K2 ["GET"]
        9 MOVE                             R7 R3
       10 CALL                             R4 3 0
       11 GETTABLEKS                       R4 R0 K3 ["_networkImp"]
       13 MOVE                             R6 R3
       14 NAMECALL                         R4 R4 K4 ["httpGetJson"]
       16 CALL                             R4 2 -1
       17 RETURN                           R4 -1

PROTO_140:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["getAllowedGroupsForAction"]
        2 LOADK                            R2 K1 ["GET"]
        3 GETUPVAL                         R3 1
        4 CALL                             R0 3 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R0 R1 K2 ["_networkImp"]
        8 GETUPVAL                         R2 1
        9 NAMECALL                         R0 R0 K3 ["httpGetJson"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_141:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["constructAllowedGroupsForActionUrl"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R0
       10 CALL                             R3 1 -1
       11 RETURN                           R3 -1

PROTO_142:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["getAvatarAssetPrivacy"]
        2 LOADK                            R2 K1 ["POST"]
        3 GETUPVAL                         R3 1
        4 CALL                             R0 3 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R0 R1 K2 ["_networkImp"]
        8 GETUPVAL                         R2 1
        9 GETUPVAL                         R3 3
       10 NAMECALL                         R0 R0 K3 ["httpPostJson"]
       12 CALL                             R0 3 -1
       13 RETURN                           R0 -1

PROTO_143:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["constructBatchAssetAccessPropertiesUrl"]
        3 CALL                             R2 0 1
        4 NEWTABLE                         R3 0 0
        6 MOVE                             R4 R1
        7 LOADNIL                          R5
        8 LOADNIL                          R6
        9 FORGPREP                         R4
       10 DUPTABLE                         R11 K2 [{"assetId"}]
       11 SETTABLEKS                       R8 R11 K1 ["assetId"]
       13 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       15 MOVE                             R10 R3
       16 GETIMPORT                        R9 K5 [table.insert]
       18 CALL                             R9 2 0
       19 FORGLOOP                         R4 2 ; [-10]
       21 GETTABLEKS                       R4 R0 K6 ["_networkImp"]
       23 DUPTABLE                         R6 K8 [{"requests"}]
       24 SETTABLEKS                       R3 R6 K7 ["requests"]
       26 NAMECALL                         R4 R4 K9 ["jsonEncode"]
       28 CALL                             R4 2 1
       29 GETUPVAL                         R5 1
       30 NEWCLOSURE                       R6 P0
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R4
       35 CALL                             R5 1 -1
       36 RETURN                           R5 -1

PROTO_144:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["makeAvatarAssetsOpenUse"]
        2 LOADK                            R2 K1 ["PATCH"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 CALL                             R0 4 0
        6 GETUPVAL                         R1 3
        7 GETTABLEKS                       R0 R1 K2 ["_networkImp"]
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 2
       11 NAMECALL                         R0 R0 K3 ["httpPatch"]
       13 CALL                             R0 3 -1
       14 RETURN                           R0 -1

PROTO_145:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["constructAssetBatchGrantPermissionsUrl"]
        3 CALL                             R2 0 1
        4 NEWTABLE                         R3 0 0
        6 MOVE                             R4 R1
        7 LOADNIL                          R5
        8 LOADNIL                          R6
        9 FORGPREP                         R4
       10 DUPTABLE                         R11 K2 [{"assetId"}]
       11 SETTABLEKS                       R8 R11 K1 ["assetId"]
       13 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       15 MOVE                             R10 R3
       16 GETIMPORT                        R9 K5 [table.insert]
       18 CALL                             R9 2 0
       19 FORGLOOP                         R4 2 ; [-10]
       21 GETTABLEKS                       R4 R0 K6 ["_networkImp"]
       23 DUPTABLE                         R6 K10 [{"subjectType", "action", "requests"}]
       24 LOADK                            R7 K11 ["All"]
       25 SETTABLEKS                       R7 R6 K7 ["subjectType"]
       27 LOADK                            R7 K12 ["Use"]
       28 SETTABLEKS                       R7 R6 K8 ["action"]
       30 SETTABLEKS                       R3 R6 K9 ["requests"]
       32 NAMECALL                         R4 R4 K13 ["jsonEncode"]
       34 CALL                             R4 2 1
       35 GETUPVAL                         R5 1
       36 NEWCLOSURE                       R6 P0
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R0
       41 CALL                             R5 1 -1
       42 RETURN                           R5 -1

PROTO_146:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["reject"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_147:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["constructGetAssetByIdUrl"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 DUPTABLE                         R3 K5 [{"Url", "Method", "CachePolicy", "Headers"}]
        6 SETTABLEKS                       R2 R3 K1 ["Url"]
        8 LOADK                            R4 K6 ["GET"]
        9 SETTABLEKS                       R4 R3 K2 ["Method"]
       11 GETIMPORT                        R4 K10 [Enum.HttpCachePolicy.None]
       13 SETTABLEKS                       R4 R3 K3 ["CachePolicy"]
       15 NEWTABLE                         R4 1 0
       17 LOADK                            R5 K11 ["application/json"]
       18 SETTABLEKS                       R5 R4 K12 ["Content-Type"]
       20 SETTABLEKS                       R4 R3 K4 ["Headers"]
       22 GETUPVAL                         R4 1
       23 LOADK                            R5 K13 ["getAsset"]
       24 LOADK                            R6 K6 ["GET"]
       25 MOVE                             R7 R2
       26 MOVE                             R8 R3
       27 CALL                             R4 4 0
       28 GETTABLEKS                       R4 R0 K14 ["_networkImp"]
       30 MOVE                             R6 R3
       31 NAMECALL                         R4 R4 K15 ["requestInternal"]
       33 CALL                             R4 2 1
       34 DUPCLOSURE                       R6 K16 [PROTO_146]
       35 CAPTURE                          UPVAL U2
       36 NAMECALL                         R4 R4 K17 ["catch"]
       38 CALL                             R4 2 -1
       39 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R2 R0 K3 ["Src"]
       11 GETTABLEKS                       R1 R2 K4 ["Util"]
       13 GETIMPORT                        R2 K6 [game]
       15 LOADK                            R4 K7 ["ToolboxSetMarketplaceModelsAsPackagesForAll"]
       16 NAMECALL                         R2 R2 K8 ["GetFastFlag"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K6 [game]
       21 LOADK                            R5 K9 ["ToolboxSetMarketplaceModelsAsPackagesForIXP3"]
       22 NAMECALL                         R3 R3 K8 ["GetFastFlag"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R8 R0 K3 ["Src"]
       29 GETTABLEKS                       R7 R8 K4 ["Util"]
       31 GETTABLEKS                       R6 R7 K12 ["SharedFlags"]
       33 GETTABLEKS                       R5 R6 K13 ["getFFlagEnableUGCForAllChecks"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K11 [require]
       38 GETTABLEKS                       R9 R0 K3 ["Src"]
       40 GETTABLEKS                       R8 R9 K4 ["Util"]
       42 GETTABLEKS                       R7 R8 K12 ["SharedFlags"]
       44 GETTABLEKS                       R6 R7 K14 ["getFFlagToolboxCodeUnderstandingSummary"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K11 [require]
       49 GETTABLEKS                       R9 R0 K3 ["Src"]
       51 GETTABLEKS                       R8 R9 K15 ["Flags"]
       53 GETTABLEKS                       R7 R8 K16 ["getFFlagToolboxDisableContextualRecommendationRetries"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K11 [require]
       58 GETTABLEKS                       R9 R1 K12 ["SharedFlags"]
       60 GETTABLEKS                       R8 R9 K17 ["getFFlagToolboxRemoveRobuxProductEntirely"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K11 [require]
       65 GETTABLEKS                       R11 R0 K3 ["Src"]
       67 GETTABLEKS                       R10 R11 K15 ["Flags"]
       69 GETTABLEKS                       R9 R10 K18 ["getFFlagQualityFiltersInToolboxSearch"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K11 [require]
       74 GETTABLEKS                       R11 R1 K12 ["SharedFlags"]
       76 GETTABLEKS                       R10 R11 K19 ["getFFlagToolboxAssetConfigOnboardingLink"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K11 [require]
       81 GETTABLEKS                       R12 R1 K12 ["SharedFlags"]
       83 GETTABLEKS                       R11 R12 K20 ["getFFlagEnableUGCBundleUploadBodyScale"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K11 [require]
       88 GETTABLEKS                       R13 R1 K12 ["SharedFlags"]
       90 GETTABLEKS                       R12 R13 K21 ["getFFlagEnableBodyColorSetUploadSupport"]
       92 CALL                             R11 1 1
       93 GETIMPORT                        R12 K11 [require]
       95 GETTABLEKS                       R15 R0 K3 ["Src"]
       97 GETTABLEKS                       R14 R15 K15 ["Flags"]
       99 GETTABLEKS                       R13 R14 K22 ["getFFlagEnableUploadingGroupBundles"]
      101 CALL                             R12 1 1
      102 GETIMPORT                        R13 K11 [require]
      104 GETTABLEKS                       R16 R0 K3 ["Src"]
      106 GETTABLEKS                       R15 R16 K15 ["Flags"]
      108 GETTABLEKS                       R14 R15 K23 ["getFFlagCheckAvatarAssetPrivacy"]
      110 CALL                             R13 1 1
      111 GETIMPORT                        R14 K11 [require]
      113 GETTABLEKS                       R17 R0 K3 ["Src"]
      115 GETTABLEKS                       R16 R17 K15 ["Flags"]
      117 GETTABLEKS                       R15 R16 K24 ["getFFlagEnableUploadingEmote"]
      119 CALL                             R14 1 1
      120 GETIMPORT                        R15 K11 [require]
      122 GETTABLEKS                       R18 R0 K3 ["Src"]
      124 GETTABLEKS                       R17 R18 K15 ["Flags"]
      126 GETTABLEKS                       R16 R17 K25 ["getFFlagToolboxFixOverrideAnimationError"]
      128 CALL                             R15 1 1
      129 GETIMPORT                        R16 K11 [require]
      131 GETTABLEKS                       R19 R0 K3 ["Src"]
      133 GETTABLEKS                       R18 R19 K15 ["Flags"]
      135 GETTABLEKS                       R17 R18 K26 ["getFFlagPrivacyCheckAssetType"]
      137 CALL                             R16 1 1
      138 GETIMPORT                        R17 K11 [require]
      140 GETTABLEKS                       R20 R0 K3 ["Src"]
      142 GETTABLEKS                       R19 R20 K15 ["Flags"]
      144 GETTABLEKS                       R18 R19 K27 ["getFFlagRemoveGetAssetDetails"]
      146 CALL                             R17 1 1
      147 GETIMPORT                        R18 K11 [require]
      149 GETTABLEKS                       R21 R0 K28 ["Libs"]
      151 GETTABLEKS                       R20 R21 K29 ["Http"]
      153 GETTABLEKS                       R19 R20 K30 ["Networking"]
      155 CALL                             R18 1 1
      156 GETTABLEKS                       R19 R0 K31 ["Packages"]
      158 GETIMPORT                        R20 K11 [require]
      160 GETTABLEKS                       R21 R19 K32 ["Framework"]
      162 CALL                             R20 1 1
      163 GETIMPORT                        R21 K11 [require]
      165 GETTABLEKS                       R22 R19 K33 ["Dash"]
      167 CALL                             R21 1 1
      168 GETTABLEKS                       R23 R20 K4 ["Util"]
      170 GETTABLEKS                       R22 R23 K34 ["Promise"]
      172 GETIMPORT                        R23 K11 [require]
      174 GETTABLEKS                       R24 R1 K35 ["DebugFlags"]
      176 CALL                             R23 1 1
      177 GETIMPORT                        R24 K11 [require]
      179 GETTABLEKS                       R25 R1 K36 ["getUserId"]
      181 CALL                             R24 1 1
      182 GETIMPORT                        R25 K11 [require]
      184 GETTABLEKS                       R26 R1 K37 ["PageInfoHelper"]
      186 CALL                             R25 1 1
      187 GETIMPORT                        R26 K11 [require]
      189 GETTABLEKS                       R27 R1 K38 ["Urls"]
      191 CALL                             R26 1 1
      192 GETIMPORT                        R27 K11 [require]
      194 GETTABLEKS                       R28 R1 K39 ["Constants"]
      196 CALL                             R27 1 1
      197 GETIMPORT                        R28 K11 [require]
      199 GETTABLEKS                       R29 R1 K40 ["AssetQualityUtil"]
      201 CALL                             R28 1 1
      202 GETIMPORT                        R29 K11 [require]
      204 GETTABLEKS                       R32 R0 K3 ["Src"]
      206 GETTABLEKS                       R31 R32 K41 ["Types"]
      208 GETTABLEKS                       R30 R31 K42 ["AssetQuotaTypes"]
      210 CALL                             R29 1 1
      211 GETIMPORT                        R30 K11 [require]
      213 GETTABLEKS                       R33 R0 K3 ["Src"]
      215 GETTABLEKS                       R32 R33 K41 ["Types"]
      217 GETTABLEKS                       R31 R32 K43 ["AssetSubTypes"]
      219 CALL                             R30 1 1
      220 GETIMPORT                        R31 K11 [require]
      222 GETTABLEKS                       R34 R0 K3 ["Src"]
      224 GETTABLEKS                       R33 R34 K41 ["Types"]
      226 GETTABLEKS                       R32 R33 K44 ["HomeTypes"]
      228 CALL                             R31 1 1
      229 GETIMPORT                        R32 K11 [require]
      231 GETTABLEKS                       R35 R0 K3 ["Src"]
      233 GETTABLEKS                       R34 R35 K41 ["Types"]
      235 GETTABLEKS                       R33 R34 K45 ["Category"]
      237 CALL                             R32 1 1
      238 GETIMPORT                        R33 K11 [require]
      240 GETTABLEKS                       R36 R0 K3 ["Src"]
      242 GETTABLEKS                       R35 R36 K4 ["Util"]
      244 GETTABLEKS                       R34 R35 K46 ["AssetConfigUtil"]
      246 CALL                             R33 1 1
      247 GETIMPORT                        R34 K11 [require]
      249 GETTABLEKS                       R35 R1 K47 ["ToolboxUtilities"]
      251 CALL                             R34 1 1
      252 GETIMPORT                        R35 K6 [game]
      254 LOADK                            R37 K48 ["ToolboxGrantUniverseAudioPermissionsTimeoutInMS"]
      255 NAMECALL                         R35 R35 K49 ["GetFastInt"]
      257 CALL                             R35 2 1
      258 GETIMPORT                        R36 K6 [game]
      260 LOADK                            R38 K50 ["HttpService"]
      261 NAMECALL                         R36 R36 K51 ["GetService"]
      263 CALL                             R36 2 1
      264 NEWTABLE                         R37 128 0
      266 SETTABLEKS                       R37 R37 K52 ["__index"]
      268 GETIMPORT                        R38 K11 [require]
      270 GETTABLEKS                       R39 R19 K53 ["Cryo"]
      272 CALL                             R38 1 1
      273 GETIMPORT                        R39 K11 [require]
      275 GETTABLEKS                       R42 R0 K3 ["Src"]
      277 GETTABLEKS                       R41 R42 K54 ["Reducers"]
      279 GETTABLEKS                       R40 R41 K55 ["PageInfo"]
      281 CALL                             R39 1 1
      282 DUPCLOSURE                       R40 K56 [PROTO_0]
      283 CAPTURE                          VAL R18
      284 CAPTURE                          VAL R37
      285 SETTABLEKS                       R40 R37 K57 ["new"]
      287 DUPCLOSURE                       R40 K58 [PROTO_1]
      288 CAPTURE                          VAL R23
      289 DUPCLOSURE                       R41 K59 [PROTO_3]
      290 CAPTURE                          VAL R22
      291 CAPTURE                          VAL R41
      292 DUPCLOSURE                       R42 K60 [PROTO_4]
      293 CAPTURE                          VAL R36
      294 DUPCLOSURE                       R43 K61 [PROTO_5]
      295 SETTABLEKS                       R43 R37 K62 ["jsonEncode"]
      297 DUPCLOSURE                       R43 K63 [PROTO_7]
      298 CAPTURE                          VAL R25
      299 CAPTURE                          VAL R26
      300 CAPTURE                          VAL R27
      301 CAPTURE                          VAL R41
      302 CAPTURE                          VAL R40
      303 SETTABLEKS                       R43 R37 K64 ["getAssets"]
      305 DUPCLOSURE                       R43 K65 [PROTO_9]
      306 CAPTURE                          VAL R32
      307 CAPTURE                          VAL R34
      308 CAPTURE                          VAL R21
      309 CAPTURE                          VAL R8
      310 CAPTURE                          VAL R28
      311 CAPTURE                          VAL R26
      312 CAPTURE                          VAL R6
      313 CAPTURE                          VAL R27
      314 CAPTURE                          VAL R41
      315 CAPTURE                          VAL R40
      316 SETTABLEKS                       R43 R37 K66 ["getToolboxItems"]
      318 DUPCLOSURE                       R43 K67 [PROTO_11]
      319 CAPTURE                          VAL R26
      320 CAPTURE                          VAL R41
      321 CAPTURE                          VAL R40
      322 SETTABLEKS                       R43 R37 K68 ["getItemDetailsAssetIds"]
      324 DUPCLOSURE                       R43 K69 [PROTO_12]
      325 SETTABLEKS                       R43 R37 K70 ["getItemDetails"]
      327 DUPCLOSURE                       R43 K71 [PROTO_14]
      328 CAPTURE                          VAL R25
      329 CAPTURE                          VAL R26
      330 CAPTURE                          VAL R27
      331 CAPTURE                          VAL R41
      332 CAPTURE                          VAL R40
      333 SETTABLEKS                       R43 R37 K72 ["getDevelopAsset"]
      335 DUPCLOSURE                       R43 K73 [PROTO_16]
      336 CAPTURE                          VAL R26
      337 CAPTURE                          VAL R41
      338 CAPTURE                          VAL R40
      339 SETTABLEKS                       R43 R37 K74 ["getAllowedItemTypes"]
      341 DUPCLOSURE                       R43 K75 [PROTO_19]
      342 CAPTURE                          VAL R25
      343 CAPTURE                          VAL R24
      344 CAPTURE                          VAL R32
      345 CAPTURE                          VAL R33
      346 CAPTURE                          VAL R26
      347 CAPTURE                          VAL R27
      348 CAPTURE                          VAL R22
      349 CAPTURE                          VAL R41
      350 CAPTURE                          VAL R40
      351 CAPTURE                          VAL R38
      352 SETTABLEKS                       R43 R37 K76 ["getAssetCreations"]
      354 DUPCLOSURE                       R43 K77 [PROTO_22]
      355 CAPTURE                          VAL R25
      356 CAPTURE                          VAL R32
      357 CAPTURE                          VAL R33
      358 CAPTURE                          VAL R26
      359 CAPTURE                          VAL R27
      360 CAPTURE                          VAL R22
      361 CAPTURE                          VAL R41
      362 CAPTURE                          VAL R40
      363 CAPTURE                          VAL R38
      364 SETTABLEKS                       R43 R37 K78 ["getAssetGroupCreations"]
      366 MOVE                             R43 R17
      367 CALL                             R43 0 1
      368 JUMPIFNOT                        R43 ; [+13]
      369 DUPCLOSURE                       R43 K79 [PROTO_24]
      370 CAPTURE                          VAL R26
      371 CAPTURE                          VAL R41
      372 CAPTURE                          VAL R40
      373 SETTABLEKS                       R43 R37 K80 ["getItem"]
      375 DUPCLOSURE                       R43 K81 [PROTO_26]
      376 CAPTURE                          VAL R26
      377 CAPTURE                          VAL R41
      378 CAPTURE                          VAL R40
      379 SETTABLEKS                       R43 R37 K82 ["getItemsByCreator"]
      381 JUMP                             ; [+8]
      382 DUPCLOSURE                       R43 K83 [PROTO_28]
      383 CAPTURE                          VAL R23
      384 CAPTURE                          VAL R27
      385 CAPTURE                          VAL R26
      386 CAPTURE                          VAL R41
      387 CAPTURE                          VAL R40
      388 SETTABLEKS                       R43 R37 K84 ["getAssetCreationDetails"]
      390 DUPCLOSURE                       R43 K85 [PROTO_30]
      391 CAPTURE                          VAL R26
      392 CAPTURE                          VAL R41
      393 CAPTURE                          VAL R40
      394 SETTABLEKS                       R43 R37 K86 ["getCreatorInfo"]
      396 MOVE                             R43 R4
      397 CALL                             R43 0 1
      398 JUMPIFNOT                        R43 ; [+6]
      399 DUPCLOSURE                       R43 K87 [PROTO_32]
      400 CAPTURE                          VAL R26
      401 CAPTURE                          VAL R41
      402 CAPTURE                          VAL R40
      403 SETTABLEKS                       R43 R37 K88 ["getUploadPermissionStatus"]
      405 DUPCLOSURE                       R43 K89 [PROTO_34]
      406 CAPTURE                          VAL R26
      407 CAPTURE                          VAL R41
      408 CAPTURE                          VAL R40
      409 SETTABLEKS                       R43 R37 K90 ["getBundleMetadata"]
      411 DUPCLOSURE                       R43 K91 [PROTO_37]
      412 CAPTURE                          VAL R26
      413 CAPTURE                          VAL R10
      414 CAPTURE                          VAL R11
      415 CAPTURE                          VAL R12
      416 CAPTURE                          VAL R40
      417 CAPTURE                          VAL R22
      418 SETTABLEKS                       R43 R37 K92 ["postBundleCreationContext"]
      420 DUPCLOSURE                       R43 K93 [PROTO_40]
      421 CAPTURE                          VAL R26
      422 CAPTURE                          VAL R40
      423 CAPTURE                          VAL R22
      424 SETTABLEKS                       R43 R37 K94 ["postCreateBundle"]
      426 DUPCLOSURE                       R43 K95 [PROTO_42]
      427 CAPTURE                          VAL R26
      428 CAPTURE                          VAL R41
      429 CAPTURE                          VAL R40
      430 SETTABLEKS                       R43 R37 K96 ["getBundleCreationStatus"]
      432 DUPCLOSURE                       R43 K97 [PROTO_44]
      433 CAPTURE                          VAL R26
      434 CAPTURE                          VAL R41
      435 CAPTURE                          VAL R40
      436 SETTABLEKS                       R43 R37 K98 ["getDefaultCreateBundleDataSharing"]
      438 DUPCLOSURE                       R43 K99 [PROTO_46]
      439 CAPTURE                          VAL R26
      440 CAPTURE                          VAL R41
      441 CAPTURE                          VAL R40
      442 SETTABLEKS                       R43 R37 K100 ["postCreateBundleDataSharing"]
      444 DUPCLOSURE                       R43 K101 [PROTO_48]
      445 CAPTURE                          VAL R26
      446 CAPTURE                          VAL R41
      447 CAPTURE                          VAL R40
      448 SETTABLEKS                       R43 R37 K102 ["postCreateAvatarAssetDataSharing"]
      450 DUPCLOSURE                       R43 K103 [PROTO_50]
      451 CAPTURE                          VAL R26
      452 CAPTURE                          VAL R41
      453 CAPTURE                          VAL R40
      454 SETTABLEKS                       R43 R37 K104 ["getAssetMediaIds"]
      456 DUPCLOSURE                       R43 K105 [PROTO_52]
      457 CAPTURE                          VAL R26
      458 CAPTURE                          VAL R41
      459 CAPTURE                          VAL R40
      460 SETTABLEKS                       R43 R37 K106 ["getVote"]
      462 DUPCLOSURE                       R43 K107 [PROTO_54]
      463 CAPTURE                          VAL R26
      464 CAPTURE                          VAL R41
      465 CAPTURE                          VAL R40
      466 SETTABLEKS                       R43 R37 K108 ["postVote"]
      468 DUPCLOSURE                       R43 K109 [PROTO_56]
      469 CAPTURE                          VAL R26
      470 CAPTURE                          VAL R41
      471 CAPTURE                          VAL R40
      472 SETTABLEKS                       R43 R37 K110 ["configureSales"]
      474 DUPCLOSURE                       R43 K111 [PROTO_58]
      475 CAPTURE                          VAL R26
      476 CAPTURE                          VAL R41
      477 CAPTURE                          VAL R40
      478 SETTABLEKS                       R43 R37 K112 ["updateSales"]
      480 DUPCLOSURE                       R43 K113 [PROTO_60]
      481 CAPTURE                          VAL R26
      482 CAPTURE                          VAL R41
      483 CAPTURE                          VAL R40
      484 SETTABLEKS                       R43 R37 K114 ["postUnvote"]
      486 DUPCLOSURE                       R43 K115 [PROTO_62]
      487 CAPTURE                          VAL R26
      488 CAPTURE                          VAL R41
      489 CAPTURE                          VAL R40
      490 SETTABLEKS                       R43 R37 K116 ["postInsertAsset"]
      492 DUPCLOSURE                       R43 K117 [PROTO_64]
      493 CAPTURE                          VAL R26
      494 CAPTURE                          VAL R41
      495 CAPTURE                          VAL R40
      496 SETTABLEKS                       R43 R37 K118 ["getManageableGroups"]
      498 DUPCLOSURE                       R43 K119 [PROTO_66]
      499 CAPTURE                          VAL R26
      500 CAPTURE                          VAL R40
      501 SETTABLEKS                       R43 R37 K120 ["getUsers"]
      503 DUPCLOSURE                       R43 K121 [PROTO_67]
      504 CAPTURE                          VAL R26
      505 CAPTURE                          VAL R40
      506 SETTABLEKS                       R43 R37 K122 ["getFavoriteCounts"]
      508 DUPCLOSURE                       R43 K123 [PROTO_68]
      509 CAPTURE                          VAL R26
      510 CAPTURE                          VAL R40
      511 SETTABLEKS                       R43 R37 K124 ["getFavorited"]
      513 DUPCLOSURE                       R43 K125 [PROTO_69]
      514 CAPTURE                          VAL R26
      515 CAPTURE                          VAL R40
      516 SETTABLEKS                       R43 R37 K126 ["createSave"]
      518 DUPCLOSURE                       R43 K127 [PROTO_70]
      519 CAPTURE                          VAL R26
      520 CAPTURE                          VAL R40
      521 SETTABLEKS                       R43 R37 K128 ["deleteSave"]
      523 DUPCLOSURE                       R43 K129 [PROTO_71]
      524 CAPTURE                          VAL R26
      525 CAPTURE                          VAL R40
      526 SETTABLEKS                       R43 R37 K130 ["getSave"]
      528 DUPCLOSURE                       R43 K131 [PROTO_72]
      529 CAPTURE                          VAL R26
      530 CAPTURE                          VAL R40
      531 SETTABLEKS                       R43 R37 K132 ["getDevelopAssetMetadata"]
      533 DUPCLOSURE                       R43 K133 [PROTO_73]
      534 CAPTURE                          VAL R26
      535 CAPTURE                          VAL R40
      536 SETTABLEKS                       R43 R37 K134 ["getVersionsHistory"]
      538 DUPCLOSURE                       R43 K135 [PROTO_74]
      539 CAPTURE                          VAL R26
      540 CAPTURE                          VAL R40
      541 SETTABLEKS                       R43 R37 K136 ["postRevertVersion"]
      543 DUPCLOSURE                       R43 K137 [PROTO_75]
      544 CAPTURE                          VAL R26
      545 CAPTURE                          VAL R40
      546 SETTABLEKS                       R43 R37 K138 ["getVersionDescriptions"]
      548 DUPCLOSURE                       R43 K139 [PROTO_77]
      549 CAPTURE                          VAL R26
      550 CAPTURE                          VAL R41
      551 CAPTURE                          VAL R40
      552 SETTABLEKS                       R43 R37 K140 ["postVersionDescription"]
      554 DUPCLOSURE                       R43 K141 [PROTO_78]
      555 CAPTURE                          VAL R26
      556 CAPTURE                          VAL R40
      557 SETTABLEKS                       R43 R37 K142 ["postFavorite"]
      559 DUPCLOSURE                       R43 K143 [PROTO_79]
      560 CAPTURE                          VAL R26
      561 CAPTURE                          VAL R40
      562 SETTABLEKS                       R43 R37 K144 ["deleteFavorite"]
      564 DUPCLOSURE                       R43 K145 [PROTO_81]
      565 CAPTURE                          VAL R26
      566 CAPTURE                          VAL R40
      567 CAPTURE                          VAL R22
      568 SETTABLEKS                       R43 R37 K146 ["uploadCatalogItem"]
      570 DUPCLOSURE                       R43 K147 [PROTO_83]
      571 CAPTURE                          VAL R26
      572 CAPTURE                          VAL R41
      573 CAPTURE                          VAL R40
      574 SETTABLEKS                       R43 R37 K148 ["uploadCatalogItemFormat"]
      576 DUPCLOSURE                       R43 K149 [PROTO_85]
      577 CAPTURE                          VAL R26
      578 CAPTURE                          VAL R42
      579 CAPTURE                          VAL R40
      580 CAPTURE                          VAL R22
      581 SETTABLEKS                       R43 R37 K150 ["uploadAssetThumbnail"]
      583 DUPCLOSURE                       R43 K151 [PROTO_86]
      584 CAPTURE                          VAL R26
      585 CAPTURE                          VAL R40
      586 SETTABLEKS                       R43 R37 K152 ["getThumbnailStatus"]
      588 DUPCLOSURE                       R43 K153 [PROTO_88]
      589 CAPTURE                          VAL R26
      590 CAPTURE                          VAL R40
      591 CAPTURE                          VAL R22
      592 SETTABLEKS                       R43 R37 K154 ["configureCatalogItem"]
      594 DUPCLOSURE                       R43 K155 [PROTO_89]
      595 CAPTURE                          VAL R26
      596 CAPTURE                          VAL R2
      597 CAPTURE                          VAL R3
      598 CAPTURE                          VAL R40
      599 SETTABLEKS                       R43 R37 K156 ["patchAsset"]
      601 DUPCLOSURE                       R43 K157 [PROTO_90]
      602 CAPTURE                          VAL R26
      603 CAPTURE                          VAL R40
      604 SETTABLEKS                       R43 R37 K158 ["validateAnimation"]
      606 DUPCLOSURE                       R43 K159 [PROTO_91]
      607 CAPTURE                          VAL R36
      608 DUPCLOSURE                       R44 K160 [PROTO_94]
      609 CAPTURE                          VAL R26
      610 CAPTURE                          VAL R40
      611 CAPTURE                          VAL R15
      612 CAPTURE                          VAL R22
      613 SETTABLEKS                       R44 R37 K161 ["waitForOperation"]
      615 DUPCLOSURE                       R44 K162 [PROTO_97]
      616 CAPTURE                          VAL R26
      617 CAPTURE                          VAL R14
      618 CAPTURE                          VAL R43
      619 CAPTURE                          VAL R40
      620 CAPTURE                          VAL R22
      621 SETTABLEKS                       R44 R37 K163 ["postUploadAnimation"]
      623 DUPCLOSURE                       R44 K164 [PROTO_100]
      624 CAPTURE                          VAL R26
      625 CAPTURE                          VAL R43
      626 CAPTURE                          VAL R40
      627 CAPTURE                          VAL R22
      628 SETTABLEKS                       R44 R37 K165 ["postOverrideAnimation"]
      630 DUPCLOSURE                       R44 K166 [PROTO_101]
      631 CAPTURE                          VAL R26
      632 CAPTURE                          VAL R40
      633 SETTABLEKS                       R44 R37 K167 ["getIsVerifiedCreator"]
      635 DUPCLOSURE                       R44 K168 [PROTO_102]
      636 CAPTURE                          VAL R26
      637 CAPTURE                          VAL R40
      638 SETTABLEKS                       R44 R37 K169 ["getPluginInfo"]
      640 DUPCLOSURE                       R44 K170 [PROTO_103]
      641 CAPTURE                          VAL R26
      642 CAPTURE                          VAL R40
      643 SETTABLEKS                       R44 R37 K171 ["getLocalUserFriends"]
      645 DUPCLOSURE                       R44 K172 [PROTO_104]
      646 CAPTURE                          VAL R26
      647 SETTABLEKS                       R44 R37 K173 ["postForPackageMetadata"]
      649 DUPCLOSURE                       R44 K174 [PROTO_105]
      650 CAPTURE                          VAL R26
      651 CAPTURE                          VAL R40
      652 SETTABLEKS                       R44 R37 K175 ["getRobuxBalance"]
      654 DUPCLOSURE                       R44 K176 [PROTO_107]
      655 CAPTURE                          VAL R26
      656 CAPTURE                          VAL R40
      657 SETTABLEKS                       R44 R37 K177 ["getHasEditPermissionForAsset"]
      659 DUPCLOSURE                       R44 K178 [PROTO_108]
      660 CAPTURE                          VAL R7
      661 CAPTURE                          VAL R26
      662 CAPTURE                          VAL R40
      663 SETTABLEKS                       R44 R37 K179 ["purchaseAsset"]
      665 DUPCLOSURE                       R44 K180 [PROTO_109]
      666 CAPTURE                          VAL R26
      667 CAPTURE                          VAL R40
      668 SETTABLEKS                       R44 R37 K181 ["getPurchaserStatus"]
      670 MOVE                             R44 R9
      671 CALL                             R44 0 1
      672 JUMPIFNOT                        R44 ; [+5]
      673 DUPCLOSURE                       R44 K182 [PROTO_110]
      674 CAPTURE                          VAL R26
      675 CAPTURE                          VAL R40
      676 SETTABLEKS                       R44 R37 K183 ["getSellerStatus"]
      678 DUPCLOSURE                       R44 K184 [PROTO_111]
      679 CAPTURE                          VAL R26
      680 CAPTURE                          VAL R40
      681 SETTABLEKS                       R44 R37 K185 ["getGroupRoleInfo"]
      683 DUPCLOSURE                       R44 K186 [PROTO_112]
      684 CAPTURE                          VAL R26
      685 CAPTURE                          VAL R40
      686 SETTABLEKS                       R44 R37 K187 ["grantAssetPermissions"]
      688 DUPCLOSURE                       R44 K188 [PROTO_113]
      689 CAPTURE                          VAL R26
      690 CAPTURE                          VAL R35
      691 SETTABLEKS                       R44 R37 K189 ["grantAssetPermissionWithTimeout"]
      693 DUPCLOSURE                       R44 K190 [PROTO_116]
      694 CAPTURE                          VAL R26
      695 CAPTURE                          VAL R40
      696 CAPTURE                          VAL R22
      697 SETTABLEKS                       R44 R37 K191 ["batchGrantAssetPermissions"]
      699 DUPCLOSURE                       R44 K192 [PROTO_117]
      700 CAPTURE                          VAL R26
      701 CAPTURE                          VAL R40
      702 SETTABLEKS                       R44 R37 K193 ["revokeAssetPermissions"]
      704 DUPCLOSURE                       R44 K194 [PROTO_118]
      705 CAPTURE                          VAL R26
      706 CAPTURE                          VAL R40
      707 SETTABLEKS                       R44 R37 K195 ["getAssetPermissions"]
      709 DUPCLOSURE                       R44 K196 [PROTO_120]
      710 CAPTURE                          VAL R26
      711 CAPTURE                          VAL R41
      712 CAPTURE                          VAL R40
      713 SETTABLEKS                       R44 R37 K197 ["postAssetCheckPermissions"]
      715 DUPCLOSURE                       R44 K198 [PROTO_122]
      716 CAPTURE                          VAL R26
      717 CAPTURE                          VAL R41
      718 CAPTURE                          VAL R40
      719 SETTABLEKS                       R44 R37 K199 ["getItemUploadFee"]
      721 DUPCLOSURE                       R44 K200 [PROTO_124]
      722 CAPTURE                          VAL R26
      723 CAPTURE                          VAL R41
      724 CAPTURE                          VAL R40
      725 SETTABLEKS                       R44 R37 K201 ["getAssetTypeAgents"]
      727 DUPCLOSURE                       R44 K202 [PROTO_125]
      728 CAPTURE                          VAL R26
      729 CAPTURE                          VAL R40
      730 SETTABLEKS                       R44 R37 K203 ["getAutocompleteResults"]
      732 DUPCLOSURE                       R44 K204 [PROTO_126]
      733 CAPTURE                          VAL R26
      734 CAPTURE                          VAL R40
      735 SETTABLEKS                       R44 R37 K205 ["getHomeConfiguration"]
      737 DUPCLOSURE                       R44 K206 [PROTO_127]
      738 CAPTURE                          VAL R26
      739 CAPTURE                          VAL R40
      740 SETTABLEKS                       R44 R37 K207 ["getCreatorMarketplaceQuotas"]
      742 DUPCLOSURE                       R44 K208 [PROTO_128]
      743 CAPTURE                          VAL R26
      744 CAPTURE                          VAL R40
      745 SETTABLEKS                       R44 R37 K209 ["getPublishingRequirements"]
      747 DUPCLOSURE                       R44 K210 [PROTO_130]
      748 CAPTURE                          VAL R26
      749 CAPTURE                          VAL R41
      750 CAPTURE                          VAL R40
      751 SETTABLEKS                       R44 R37 K211 ["deleteAssetMedia"]
      753 DUPCLOSURE                       R44 K212 [PROTO_132]
      754 CAPTURE                          VAL R26
      755 CAPTURE                          VAL R41
      756 CAPTURE                          VAL R40
      757 SETTABLEKS                       R44 R37 K213 ["postSetAssetMediaOrder"]
      759 DUPCLOSURE                       R44 K214 [PROTO_136]
      760 CAPTURE                          VAL R26
      761 CAPTURE                          VAL R42
      762 CAPTURE                          VAL R41
      763 CAPTURE                          VAL R40
      764 CAPTURE                          VAL R22
      765 SETTABLEKS                       R44 R37 K215 ["postUploadAssetMedia"]
      767 DUPCLOSURE                       R44 K216 [PROTO_137]
      768 CAPTURE                          VAL R26
      769 CAPTURE                          VAL R40
      770 SETTABLEKS                       R44 R37 K217 ["getUniverseInfo"]
      772 MOVE                             R44 R5
      773 CALL                             R44 0 1
      774 JUMPIFNOT                        R44 ; [+5]
      775 DUPCLOSURE                       R44 K218 [PROTO_138]
      776 CAPTURE                          VAL R26
      777 CAPTURE                          VAL R40
      778 SETTABLEKS                       R44 R37 K219 ["getCodeSummary"]
      780 DUPCLOSURE                       R44 K220 [PROTO_139]
      781 CAPTURE                          VAL R26
      782 CAPTURE                          VAL R40
      783 SETTABLEKS                       R44 R37 K221 ["getFiatProduct"]
      785 MOVE                             R44 R12
      786 CALL                             R44 0 1
      787 JUMPIFNOT                        R44 ; [+6]
      788 DUPCLOSURE                       R44 K222 [PROTO_141]
      789 CAPTURE                          VAL R26
      790 CAPTURE                          VAL R41
      791 CAPTURE                          VAL R40
      792 SETTABLEKS                       R44 R37 K223 ["getAllowedGroupsForAction"]
      794 MOVE                             R44 R13
      795 CALL                             R44 0 1
      796 JUMPIFNOT                        R44 ; [+12]
      797 DUPCLOSURE                       R44 K224 [PROTO_143]
      798 CAPTURE                          VAL R26
      799 CAPTURE                          VAL R41
      800 CAPTURE                          VAL R40
      801 SETTABLEKS                       R44 R37 K225 ["getAvatarAssetsPrivacy"]
      803 DUPCLOSURE                       R44 K226 [PROTO_145]
      804 CAPTURE                          VAL R26
      805 CAPTURE                          VAL R41
      806 CAPTURE                          VAL R40
      807 SETTABLEKS                       R44 R37 K227 ["makeAvatarAssetsOpenUse"]
      809 MOVE                             R44 R16
      810 CALL                             R44 0 1
      811 JUMPIFNOT                        R44 ; [+6]
      812 DUPCLOSURE                       R44 K228 [PROTO_147]
      813 CAPTURE                          VAL R26
      814 CAPTURE                          VAL R40
      815 CAPTURE                          VAL R22
      816 SETTABLEKS                       R44 R37 K229 ["getAsset"]
      818 RETURN                           R37 1
