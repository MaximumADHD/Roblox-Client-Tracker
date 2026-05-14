PROTO_0:
        0 DUPTABLE                         R0 K1 [{"_networkImp"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K2 ["new"]
        4 CALL                             R1 0 1
        5 SETTABLEKS                       R1 R0 K0 ["_networkImp"]
        7 GETUPVAL                         R3 1
        8 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
       10 MOVE                             R2 R0
       11 GETIMPORT                        R1 K4 [setmetatable]
       13 CALL                             R1 2 0
       14 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["shouldDebugUrls"]
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
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K6 ["reject"]
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
       31 GETUPVAL                         R3 2
       32 GETTABLEKS                       R3 R3 K7 ["attempts"]
       34 GETUPVAL                         R4 2
       35 GETTABLEKS                       R4 R4 K8 ["maxRetries"]
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
       66 GETUPVAL                         R3 1
       67 GETTABLEKS                       R3 R3 K6 ["reject"]
       69 MOVE                             R4 R0
       70 CALL                             R3 1 -1
       71 RETURN                           R3 -1
       72 LOADN                            R3 2
       73 GETUPVAL                         R5 2
       74 GETTABLEKS                       R5 R5 K7 ["attempts"]
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
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["shouldDebugUrls"]
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+21]
        6 GETIMPORT                        R1 K2 [print]
        8 LOADK                            R2 K3 ["NetworkInterface:%s()"]
        9 LOADK                            R4 K4 ["getAssets"]
       10 NAMECALL                         R2 R2 K5 ["format"]
       12 CALL                             R2 2 -1
       13 CALL                             R1 -1 0
       14 GETIMPORT                        R1 K2 [print]
       16 LOADK                            R2 K6 ["\t%s %s"]
       17 LOADK                            R5 K8 ["GET"]
       18 NAMECALL                         R5 R5 K9 ["upper"]
       20 CALL                             R5 1 1
       21 ORK                              R4 R5 K7 ["method=nil"]
       22 ORK                              R5 R0 K10 ["url=nil"]
       23 NAMECALL                         R2 R2 K5 ["format"]
       25 CALL                             R2 3 -1
       26 CALL                             R1 -1 0
       27 GETUPVAL                         R0 2
       28 GETTABLEKS                       R0 R0 K11 ["_networkImp"]
       30 GETUPVAL                         R2 0
       31 NAMECALL                         R0 R0 K12 ["httpGetJson"]
       33 CALL                             R0 2 -1
       34 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getRequestInfo"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["constructGetAssetsUrl"]
        8 GETTABLEKS                       R4 R2 K2 ["category"]
       10 GETTABLEKS                       R5 R2 K3 ["searchTerm"]
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R6 R6 K4 ["GET_ITEMS_PAGE_SIZE"]
       15 GETTABLEKS                       R7 R2 K5 ["targetPage"]
       17 GETTABLEKS                       R8 R2 K6 ["sortType"]
       19 GETTABLEKS                       R9 R2 K7 ["groupId"]
       21 GETTABLEKS                       R10 R2 K8 ["creatorId"]
       23 CALL                             R3 7 1
       24 GETUPVAL                         R4 3
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          VAL R3
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          VAL R0
       29 CALL                             R4 1 -1
       30 RETURN                           R4 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["shouldDebugUrls"]
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+21]
        6 GETIMPORT                        R1 K2 [print]
        8 LOADK                            R2 K3 ["NetworkInterface:%s()"]
        9 LOADK                            R4 K4 ["getToolboxItems"]
       10 NAMECALL                         R2 R2 K5 ["format"]
       12 CALL                             R2 2 -1
       13 CALL                             R1 -1 0
       14 GETIMPORT                        R1 K2 [print]
       16 LOADK                            R2 K6 ["\t%s %s"]
       17 LOADK                            R5 K8 ["GET"]
       18 NAMECALL                         R5 R5 K9 ["upper"]
       20 CALL                             R5 1 1
       21 ORK                              R4 R5 K7 ["method=nil"]
       22 ORK                              R5 R0 K10 ["url=nil"]
       23 NAMECALL                         R2 R2 K5 ["format"]
       25 CALL                             R2 3 -1
       26 CALL                             R1 -1 0
       27 GETUPVAL                         R0 2
       28 GETTABLEKS                       R0 R0 K11 ["_networkImp"]
       30 GETUPVAL                         R2 0
       31 NAMECALL                         R0 R0 K12 ["httpGetJson"]
       33 CALL                             R0 2 -1
       34 RETURN                           R0 -1

PROTO_9:
        0 GETTABLEKS                       R2 R1 K0 ["categoryName"]
        2 LOADNIL                          R3
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["WHITELISTED_PLUGINS"]
        6 GETTABLEKS                       R4 R4 K2 ["name"]
        8 JUMPIFNOTEQ                      R2 R4 ; [+6]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K3 ["getShouldUsePluginCreatorWhitelist"]
       13 CALL                             R4 0 1
       14 MOVE                             R3 R4
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K4 ["join"]
       18 MOVE                             R5 R1
       19 DUPTABLE                         R6 K6 [{"useCreatorWhitelist"}]
       20 SETTABLEKS                       R3 R6 K5 ["useCreatorWhitelist"]
       22 CALL                             R4 2 1
       23 LOADNIL                          R5
       24 GETUPVAL                         R6 3
       25 CALL                             R6 0 1
       26 JUMPIFNOT                        R6 ; [+23]
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R6 R6 K7 ["categoryIsModel"]
       30 MOVE                             R7 R2
       31 CALL                             R6 1 1
       32 JUMPIFNOT                        R6 ; [+17]
       33 GETUPVAL                         R6 4
       34 GETTABLEKS                       R6 R6 K8 ["convertQualityFilterDataToQueryStrings"]
       36 GETTABLEKS                       R7 R1 K9 ["qualityFilterData"]
       38 CALL                             R6 1 1
       39 MOVE                             R5 R6
       40 JUMPIFNOT                        R5 ; [+9]
       41 JUMPIFEQKS                       R5 K10 [""] ; [+8]
       43 GETUPVAL                         R6 2
       44 GETTABLEKS                       R6 R6 K4 ["join"]
       46 MOVE                             R7 R4
       47 MOVE                             R8 R5
       48 CALL                             R6 2 1
       49 MOVE                             R4 R6
       50 GETUPVAL                         R6 5
       51 GETTABLEKS                       R6 R6 K11 ["constructGetToolboxItemsUrl"]
       53 MOVE                             R7 R4
       54 CALL                             R6 1 1
       55 GETUPVAL                         R8 6
       56 CALL                             R8 0 1
       57 JUMPIFNOT                        R8 ; [+18]
       58 GETTABLEKS                       R8 R1 K12 ["sectionName"]
       60 GETUPVAL                         R9 7
       61 GETTABLEKS                       R9 R9 K13 ["CONTEXTUAL_RECOMMENDATIONS_HOME_CONFIG_SECTION_NAME"]
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
       79 CAPTURE                          VAL R6
       80 CAPTURE                          UPVAL U9
       81 CAPTURE                          VAL R0
       82 MOVE                             R10 R7
       83 CALL                             R8 2 -1
       84 RETURN                           R8 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["shouldDebugUrls"]
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+21]
        6 GETIMPORT                        R1 K2 [print]
        8 LOADK                            R2 K3 ["NetworkInterface:%s()"]
        9 LOADK                            R4 K4 ["getItemDetails"]
       10 NAMECALL                         R2 R2 K5 ["format"]
       12 CALL                             R2 2 -1
       13 CALL                             R1 -1 0
       14 GETIMPORT                        R1 K2 [print]
       16 LOADK                            R2 K6 ["\t%s %s"]
       17 LOADK                            R5 K8 ["GET"]
       18 NAMECALL                         R5 R5 K9 ["upper"]
       20 CALL                             R5 1 1
       21 ORK                              R4 R5 K7 ["method=nil"]
       22 ORK                              R5 R0 K10 ["url=nil"]
       23 NAMECALL                         R2 R2 K5 ["format"]
       25 CALL                             R2 3 -1
       26 CALL                             R1 -1 0
       27 GETUPVAL                         R0 2
       28 GETTABLEKS                       R0 R0 K11 ["_networkImp"]
       30 GETUPVAL                         R2 0
       31 NAMECALL                         R0 R0 K12 ["httpGetJson"]
       33 CALL                             R0 2 -1
       34 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["constructGetItemDetails"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R2
        8 CAPTURE                          UPVAL U2
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
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["shouldDebugUrls"]
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+21]
        6 GETIMPORT                        R1 K2 [print]
        8 LOADK                            R2 K3 ["NetworkInterface:%s()"]
        9 LOADK                            R4 K4 ["getDevelopAsset"]
       10 NAMECALL                         R2 R2 K5 ["format"]
       12 CALL                             R2 2 -1
       13 CALL                             R1 -1 0
       14 GETIMPORT                        R1 K2 [print]
       16 LOADK                            R2 K6 ["\t%s %s"]
       17 LOADK                            R5 K8 ["GET"]
       18 NAMECALL                         R5 R5 K9 ["upper"]
       20 CALL                             R5 1 1
       21 ORK                              R4 R5 K7 ["method=nil"]
       22 ORK                              R5 R0 K10 ["url=nil"]
       23 NAMECALL                         R2 R2 K5 ["format"]
       25 CALL                             R2 3 -1
       26 CALL                             R1 -1 0
       27 GETUPVAL                         R0 2
       28 GETTABLEKS                       R0 R0 K11 ["_networkImp"]
       30 GETUPVAL                         R2 0
       31 NAMECALL                         R0 R0 K12 ["httpGetJson"]
       33 CALL                             R0 2 -1
       34 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getRequestInfo"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["getDevelopAssetUrl"]
        8 GETTABLEKS                       R4 R2 K2 ["category"]
       10 GETTABLEKS                       R5 R2 K3 ["searchTerm"]
       12 GETTABLEKS                       R6 R2 K4 ["sortType"]
       14 GETTABLEKS                       R7 R2 K5 ["creatorId"]
       16 GETUPVAL                         R8 2
       17 GETTABLEKS                       R8 R8 K6 ["GET_ITEMS_PAGE_SIZE"]
       19 GETTABLEKS                       R9 R2 K7 ["targetPage"]
       21 GETTABLEKS                       R10 R2 K8 ["groupId"]
       23 GETTABLEKS                       R11 R2 K9 ["creatorType"]
       25 CALL                             R3 8 1
       26 GETUPVAL                         R4 3
       27 NEWCLOSURE                       R5 P0
       28 CAPTURE                          VAL R3
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          VAL R0
       31 CALL                             R4 1 -1
       32 RETURN                           R4 -1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["shouldDebugUrls"]
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+21]
        6 GETIMPORT                        R1 K2 [print]
        8 LOADK                            R2 K3 ["NetworkInterface:%s()"]
        9 LOADK                            R4 K4 ["getAllowedItemTypes"]
       10 NAMECALL                         R2 R2 K5 ["format"]
       12 CALL                             R2 2 -1
       13 CALL                             R1 -1 0
       14 GETIMPORT                        R1 K2 [print]
       16 LOADK                            R2 K6 ["\t%s %s"]
       17 LOADK                            R5 K8 ["GET"]
       18 NAMECALL                         R5 R5 K9 ["upper"]
       20 CALL                             R5 1 1
       21 ORK                              R4 R5 K7 ["method=nil"]
       22 ORK                              R5 R0 K10 ["url=nil"]
       23 NAMECALL                         R2 R2 K5 ["format"]
       25 CALL                             R2 3 -1
       26 CALL                             R1 -1 0
       27 GETUPVAL                         R0 2
       28 GETTABLEKS                       R0 R0 K11 ["_networkImp"]
       30 GETUPVAL                         R2 0
       31 NAMECALL                         R0 R0 K12 ["httpGetJson"]
       33 CALL                             R0 2 -1
       34 RETURN                           R0 -1

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructGetAllowedItemTypesUrl"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 1
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          VAL R3
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R0
       11 CALL                             R4 1 -1
       12 RETURN                           R4 -1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["shouldDebugUrls"]
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+21]
        6 GETIMPORT                        R1 K2 [print]
        8 LOADK                            R2 K3 ["NetworkInterface:%s()"]
        9 LOADK                            R4 K4 ["getAssetCreations"]
       10 NAMECALL                         R2 R2 K5 ["format"]
       12 CALL                             R2 2 -1
       13 CALL                             R1 -1 0
       14 GETIMPORT                        R1 K2 [print]
       16 LOADK                            R2 K6 ["\t%s %s"]
       17 LOADK                            R5 K8 ["GET"]
       18 NAMECALL                         R5 R5 K9 ["upper"]
       20 CALL                             R5 1 1
       21 ORK                              R4 R5 K7 ["method=nil"]
       22 ORK                              R5 R0 K10 ["url=nil"]
       23 NAMECALL                         R2 R2 K5 ["format"]
       25 CALL                             R2 3 -1
       26 CALL                             R1 -1 0
       27 GETUPVAL                         R0 2
       28 GETTABLEKS                       R0 R0 K11 ["_networkImp"]
       30 GETUPVAL                         R2 0
       31 NAMECALL                         R0 R0 K12 ["httpGetJson"]
       33 CALL                             R0 2 -1
       34 RETURN                           R0 -1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+3]
        2 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 1
        6 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        8 GETTABLEKS                       R2 R0 K0 ["responseBody"]
       10 GETTABLEKS                       R2 R2 K1 ["items"]
       12 SETTABLEKS                       R2 R1 K2 ["data"]
       14 GETTABLEKS                       R1 R0 K0 ["responseBody"]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K3 ["None"]
       19 SETTABLEKS                       R2 R1 K1 ["items"]
       21 RETURN                           R0 1

PROTO_19:
        0 JUMPIFNOT                        R1 ; [+6]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K0 ["getEngineAssetTypeForPageInfoCategory"]
        4 MOVE                             R5 R1
        5 CALL                             R4 1 1
        6 JUMP                             ; [+1]
        7 MOVE                             R4 R3
        8 GETUPVAL                         R5 1
        9 CALL                             R5 0 1
       10 GETUPVAL                         R7 2
       11 GETTABLEKS                       R7 R7 K1 ["EngineAssetTypeIdToToolboxAssetType"]
       13 GETTABLEKS                       R8 R4 K2 ["Value"]
       15 GETTABLE                         R6 R7 R8
       16 LOADNIL                          R7
       17 LOADNIL                          R8
       18 GETUPVAL                         R10 2
       19 GETTABLEKS                       R10 R10 K3 ["ToolboxMarketplaceAssetTypes"]
       21 GETTABLE                         R9 R10 R6
       22 JUMPIFNOTEQKNIL                  R9 ; [+2]
       24 LOADB                            R7 0 +1
       25 LOADB                            R7 1
       26 GETUPVAL                         R9 3
       27 GETTABLEKS                       R9 R9 K4 ["isCatalogAsset"]
       29 MOVE                             R10 R4
       30 CALL                             R9 1 1
       31 MOVE                             R8 R9
       32 GETTABLEKS                       R9 R4 K5 ["Name"]
       34 LOADNIL                          R10
       35 JUMPIFNOT                        R7 ; [+13]
       36 GETUPVAL                         R11 4
       37 GETTABLEKS                       R11 R11 K6 ["constructGetAssetCreationsUrlToolboxService"]
       39 MOVE                             R12 R9
       40 GETUPVAL                         R13 5
       41 GETTABLEKS                       R13 R13 K7 ["GET_ITEMS_DETAILS_PAGE_SIZE_LIMIT"]
       43 MOVE                             R14 R2
       44 LOADB                            R15 1
       45 MOVE                             R16 R5
       46 CALL                             R11 5 1
       47 MOVE                             R10 R11
       48 JUMP                             ; [+26]
       49 JUMPIFNOT                        R8 ; [+14]
       50 GETUPVAL                         R11 4
       51 GETTABLEKS                       R11 R11 K8 ["constructGetItemsByCreatorUrl"]
       53 GETTABLEKS                       R12 R4 K2 ["Value"]
       55 LOADB                            R13 0
       56 MOVE                             R14 R2
       57 GETUPVAL                         R15 5
       58 GETTABLEKS                       R15 R15 K9 ["GET_ITEMS_BY_CREATOR_PAGE_SIZE_LIMIT"]
       60 LOADNIL                          R16
       61 CALL                             R11 5 1
       62 MOVE                             R10 R11
       63 JUMP                             ; [+11]
       64 GETUPVAL                         R11 6
       65 GETTABLEKS                       R11 R11 K10 ["reject"]
       67 GETIMPORT                        R12 K13 [string.format]
       69 LOADK                            R13 K14 ["Invalid asset type: %s"]
       70 MOVE                             R14 R9
       71 CALL                             R12 2 -1
       72 CALL                             R11 -1 -1
       73 CLOSEUPVALS                      R7
       74 RETURN                           R11 -1
       75 GETUPVAL                         R11 7
       76 NEWCLOSURE                       R12 P0
       77 CAPTURE                          REF R10
       78 CAPTURE                          UPVAL U8
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
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["shouldDebugUrls"]
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+21]
        6 GETIMPORT                        R1 K2 [print]
        8 LOADK                            R2 K3 ["NetworkInterface:%s()"]
        9 LOADK                            R4 K4 ["getAssetGroupCreations"]
       10 NAMECALL                         R2 R2 K5 ["format"]
       12 CALL                             R2 2 -1
       13 CALL                             R1 -1 0
       14 GETIMPORT                        R1 K2 [print]
       16 LOADK                            R2 K6 ["\t%s %s"]
       17 LOADK                            R5 K8 ["GET"]
       18 NAMECALL                         R5 R5 K9 ["upper"]
       20 CALL                             R5 1 1
       21 ORK                              R4 R5 K7 ["method=nil"]
       22 ORK                              R5 R0 K10 ["url=nil"]
       23 NAMECALL                         R2 R2 K5 ["format"]
       25 CALL                             R2 3 -1
       26 CALL                             R1 -1 0
       27 GETUPVAL                         R0 2
       28 GETTABLEKS                       R0 R0 K11 ["_networkImp"]
       30 GETUPVAL                         R2 0
       31 NAMECALL                         R0 R0 K12 ["httpGetJson"]
       33 CALL                             R0 2 -1
       34 RETURN                           R0 -1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+3]
        2 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 1
        6 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        8 GETTABLEKS                       R2 R0 K0 ["responseBody"]
       10 GETTABLEKS                       R2 R2 K1 ["items"]
       12 SETTABLEKS                       R2 R1 K2 ["data"]
       14 GETTABLEKS                       R1 R0 K0 ["responseBody"]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K3 ["None"]
       19 SETTABLEKS                       R2 R1 K1 ["items"]
       21 RETURN                           R0 1

PROTO_22:
        0 MOVE                             R5 R3
        1 MOVE                             R6 R4
        2 JUMPIFNOT                        R1 ; [+21]
        3 GETUPVAL                         R7 0
        4 GETTABLEKS                       R7 R7 K0 ["getEngineAssetTypeForPageInfoCategory"]
        6 MOVE                             R8 R1
        7 CALL                             R7 1 1
        8 MOVE                             R5 R7
        9 GETUPVAL                         R7 1
       10 GETTABLEKS                       R7 R7 K1 ["categoryIsGroupAsset"]
       12 GETTABLEKS                       R8 R1 K2 ["categoryName"]
       14 CALL                             R7 1 1
       15 JUMPIFNOT                        R7 ; [+6]
       16 GETUPVAL                         R8 0
       17 GETTABLEKS                       R8 R8 K3 ["getGroupIdForPageInfo"]
       19 MOVE                             R9 R1
       20 CALL                             R8 1 1
       21 JUMPIF                           R8 ; [+1]
       22 LOADNIL                          R8
       23 MOVE                             R6 R8
       24 GETUPVAL                         R8 1
       25 GETTABLEKS                       R8 R8 K4 ["EngineAssetTypeIdToToolboxAssetType"]
       27 GETTABLEKS                       R9 R5 K5 ["Value"]
       29 GETTABLE                         R7 R8 R9
       30 LOADNIL                          R8
       31 LOADNIL                          R9
       32 GETUPVAL                         R11 1
       33 GETTABLEKS                       R11 R11 K6 ["ToolboxMarketplaceAssetTypes"]
       35 GETTABLE                         R10 R11 R7
       36 JUMPIFNOTEQKNIL                  R10 ; [+2]
       38 LOADB                            R8 0 +1
       39 LOADB                            R8 1
       40 GETUPVAL                         R10 2
       41 GETTABLEKS                       R10 R10 K7 ["isCatalogAsset"]
       43 MOVE                             R11 R5
       44 CALL                             R10 1 1
       45 MOVE                             R9 R10
       46 GETTABLEKS                       R10 R5 K8 ["Name"]
       48 LOADNIL                          R11
       49 JUMPIFNOT                        R8 ; [+13]
       50 GETUPVAL                         R12 3
       51 GETTABLEKS                       R12 R12 K9 ["constructGetAssetGroupCreationsUrl"]
       53 MOVE                             R13 R10
       54 GETUPVAL                         R14 4
       55 GETTABLEKS                       R14 R14 K10 ["GET_ITEMS_DETAILS_PAGE_SIZE_LIMIT"]
       57 MOVE                             R15 R2
       58 LOADNIL                          R16
       59 MOVE                             R17 R6
       60 CALL                             R12 5 1
       61 MOVE                             R11 R12
       62 JUMP                             ; [+26]
       63 JUMPIFNOT                        R9 ; [+14]
       64 GETUPVAL                         R12 3
       65 GETTABLEKS                       R12 R12 K11 ["constructGetItemsByCreatorUrl"]
       67 GETTABLEKS                       R13 R5 K5 ["Value"]
       69 LOADB                            R14 0
       70 MOVE                             R15 R2
       71 GETUPVAL                         R16 4
       72 GETTABLEKS                       R16 R16 K12 ["GET_ITEMS_BY_CREATOR_PAGE_SIZE_LIMIT"]
       74 MOVE                             R17 R6
       75 CALL                             R12 5 1
       76 MOVE                             R11 R12
       77 JUMP                             ; [+11]
       78 GETUPVAL                         R12 5
       79 GETTABLEKS                       R12 R12 K13 ["reject"]
       81 GETIMPORT                        R13 K16 [string.format]
       83 LOADK                            R14 K17 ["Invalid asset type: %s"]
       84 MOVE                             R15 R10
       85 CALL                             R13 2 -1
       86 CALL                             R12 -1 -1
       87 CLOSEUPVALS                      R8
       88 RETURN                           R12 -1
       89 GETUPVAL                         R12 6
       90 NEWCLOSURE                       R13 P0
       91 CAPTURE                          REF R11
       92 CAPTURE                          UPVAL U7
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
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["shouldDebugUrls"]
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+21]
        6 GETIMPORT                        R1 K2 [print]
        8 LOADK                            R2 K3 ["NetworkInterface:%s()"]
        9 LOADK                            R4 K4 ["getItem"]
       10 NAMECALL                         R2 R2 K5 ["format"]
       12 CALL                             R2 2 -1
       13 CALL                             R1 -1 0
       14 GETIMPORT                        R1 K2 [print]
       16 LOADK                            R2 K6 ["\t%s %s"]
       17 LOADK                            R5 K8 ["GET"]
       18 NAMECALL                         R5 R5 K9 ["upper"]
       20 CALL                             R5 1 1
       21 ORK                              R4 R5 K7 ["method=nil"]
       22 ORK                              R5 R0 K10 ["url=nil"]
       23 NAMECALL                         R2 R2 K5 ["format"]
       25 CALL                             R2 3 -1
       26 CALL                             R1 -1 0
       27 GETUPVAL                         R0 2
       28 GETTABLEKS                       R0 R0 K11 ["_networkImp"]
       30 GETUPVAL                         R2 0
       31 NAMECALL                         R0 R0 K12 ["httpGetJson"]
       33 CALL                             R0 2 -1
       34 RETURN                           R0 -1

PROTO_24:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructGetItemConfigurationDetailsUrl"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 1
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          VAL R3
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R0
       11 CALL                             R4 1 -1
       12 RETURN                           R4 -1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["shouldDebugUrls"]
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+21]
        6 GETIMPORT                        R1 K2 [print]
        8 LOADK                            R2 K3 ["NetworkInterface:%s()"]
        9 LOADK                            R4 K4 ["getItemsByCreator"]
       10 NAMECALL                         R2 R2 K5 ["format"]
       12 CALL                             R2 2 -1
       13 CALL                             R1 -1 0
       14 GETIMPORT                        R1 K2 [print]
       16 LOADK                            R2 K6 ["\t%s %s"]
       17 LOADK                            R5 K8 ["GET"]
       18 NAMECALL                         R5 R5 K9 ["upper"]
       20 CALL                             R5 1 1
       21 ORK                              R4 R5 K7 ["method=nil"]
       22 ORK                              R5 R0 K10 ["url=nil"]
       23 NAMECALL                         R2 R2 K5 ["format"]
       25 CALL                             R2 3 -1
       26 CALL                             R1 -1 0
       27 GETUPVAL                         R0 2
       28 GETTABLEKS                       R0 R0 K11 ["_networkImp"]
       30 GETUPVAL                         R2 0
       31 NAMECALL                         R0 R0 K12 ["httpGetJson"]
       33 CALL                             R0 2 -1
       34 RETURN                           R0 -1

PROTO_26:
        0 LOADNIL                          R6
        1 JUMPIFEQKNIL                     R1 ; [+12]
        3 GETUPVAL                         R7 0
        4 GETTABLEKS                       R7 R7 K0 ["constructGetItemsByCreatorUrl"]
        6 ORK                              R8 R1 K1 [0]
        7 LOADB                            R9 1
        8 MOVE                             R10 R3
        9 MOVE                             R11 R4
       10 MOVE                             R12 R5
       11 CALL                             R7 5 1
       12 MOVE                             R6 R7
       13 JUMP                             ; [+10]
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R7 R7 K0 ["constructGetItemsByCreatorUrl"]
       17 ORK                              R8 R2 K1 [0]
       18 LOADB                            R9 0
       19 MOVE                             R10 R3
       20 MOVE                             R11 R4
       21 MOVE                             R12 R5
       22 CALL                             R7 5 1
       23 MOVE                             R6 R7
       24 GETUPVAL                         R7 1
       25 NEWCLOSURE                       R8 P0
       26 CAPTURE                          REF R6
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          VAL R0
       29 CALL                             R7 1 -1
       30 CLOSEUPVALS                      R6
       31 RETURN                           R7 -1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["shouldDebugUrls"]
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+21]
        6 GETIMPORT                        R1 K2 [print]
        8 LOADK                            R2 K3 ["NetworkInterface:%s()"]
        9 LOADK                            R4 K4 ["getCreatorInfo"]
       10 NAMECALL                         R2 R2 K5 ["format"]
       12 CALL                             R2 2 -1
       13 CALL                             R1 -1 0
       14 GETIMPORT                        R1 K2 [print]
       16 LOADK                            R2 K6 ["\t%s %s"]
       17 LOADK                            R5 K8 ["GET"]
       18 NAMECALL                         R5 R5 K9 ["upper"]
       20 CALL                             R5 1 1
       21 ORK                              R4 R5 K7 ["method=nil"]
       22 ORK                              R5 R0 K10 ["url=nil"]
       23 NAMECALL                         R2 R2 K5 ["format"]
       25 CALL                             R2 3 -1
       26 CALL                             R1 -1 0
       27 GETUPVAL                         R0 2
       28 GETTABLEKS                       R0 R0 K11 ["_networkImp"]
       30 GETUPVAL                         R2 0
       31 NAMECALL                         R0 R0 K12 ["httpGetJson"]
       33 CALL                             R0 2 -1
       34 RETURN                           R0 -1

PROTO_28:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructGetCreatorInfoUrl"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 1
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          VAL R3
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R0
       11 CALL                             R4 1 -1
       12 RETURN                           R4 -1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["shouldDebugUrls"]
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+21]
        6 GETIMPORT                        R1 K2 [print]
        8 LOADK                            R2 K3 ["NetworkInterface:%s()"]
        9 LOADK                            R4 K4 ["getUploadPermissionStatus"]
       10 NAMECALL                         R2 R2 K5 ["format"]
       12 CALL                             R2 2 -1
       13 CALL                             R1 -1 0
       14 GETIMPORT                        R1 K2 [print]
       16 LOADK                            R2 K6 ["\t%s %s"]
       17 LOADK                            R5 K8 ["GET"]
       18 NAMECALL                         R5 R5 K9 ["upper"]
       20 CALL                             R5 1 1
       21 ORK                              R4 R5 K7 ["method=nil"]
       22 ORK                              R5 R0 K10 ["url=nil"]
       23 NAMECALL                         R2 R2 K5 ["format"]
       25 CALL                             R2 3 -1
       26 CALL                             R1 -1 0
       27 GETUPVAL                         R0 2
       28 GETTABLEKS                       R0 R0 K11 ["_networkImp"]
       30 GETUPVAL                         R2 0
       31 NAMECALL                         R0 R0 K12 ["httpGetJson"]
       33 CALL                             R0 2 -1
       34 RETURN                           R0 -1

PROTO_30:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructUploadPermissionStatusUrl"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 1
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          VAL R3
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R0
       11 CALL                             R4 1 -1
       12 RETURN                           R4 -1

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["shouldDebugUrls"]
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+21]
        6 GETIMPORT                        R1 K2 [print]
        8 LOADK                            R2 K3 ["NetworkInterface:%s()"]
        9 LOADK                            R4 K4 ["getBundleMetadata"]
       10 NAMECALL                         R2 R2 K5 ["format"]
       12 CALL                             R2 2 -1
       13 CALL                             R1 -1 0
       14 GETIMPORT                        R1 K2 [print]
       16 LOADK                            R2 K6 ["\t%s %s"]
       17 LOADK                            R5 K8 ["GET"]
       18 NAMECALL                         R5 R5 K9 ["upper"]
       20 CALL                             R5 1 1
       21 ORK                              R4 R5 K7 ["method=nil"]
       22 ORK                              R5 R0 K10 ["url=nil"]
       23 NAMECALL                         R2 R2 K5 ["format"]
       25 CALL                             R2 3 -1
       26 CALL                             R1 -1 0
       27 GETUPVAL                         R0 2
       28 GETTABLEKS                       R0 R0 K11 ["_networkImp"]
       30 GETUPVAL                         R2 0
       31 NAMECALL                         R0 R0 K12 ["httpGetJson"]
       33 CALL                             R0 2 -1
       34 RETURN                           R0 -1

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["constructGetBundleMetadataUrl"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 CALL                             R2 1 -1
       10 RETURN                           R2 -1

PROTO_33:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_networkImp"]
        3 GETTABLEKS                       R3 R0 K1 ["Body"]
        5 NAMECALL                         R1 R1 K2 ["jsonDecode"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_34:
        0 GETTABLEKS                       R2 R0 K0 ["Body"]
        2 JUMPIFNOT                        R2 ; [+9]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["_networkImp"]
        6 GETTABLEKS                       R3 R0 K0 ["Body"]
        8 NAMECALL                         R1 R1 K2 ["jsonDecode"]
       10 CALL                             R1 2 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K0 ["Body"]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K3 ["reject"]
       18 MOVE                             R3 R0
       19 CALL                             R2 1 -1
       20 RETURN                           R2 -1

PROTO_35:
        0 GETUPVAL                         R8 0
        1 GETTABLEKS                       R8 R8 K0 ["constructPostBundleCreationContextUrl"]
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

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_networkImp"]
        3 GETTABLEKS                       R3 R0 K1 ["Body"]
        5 NAMECALL                         R1 R1 K2 ["jsonDecode"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_37:
        0 GETTABLEKS                       R2 R0 K0 ["Body"]
        2 JUMPIFNOT                        R2 ; [+9]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["_networkImp"]
        6 GETTABLEKS                       R3 R0 K0 ["Body"]
        8 NAMECALL                         R1 R1 K2 ["jsonDecode"]
       10 CALL                             R1 2 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K0 ["Body"]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K3 ["reject"]
       18 MOVE                             R3 R0
       19 CALL                             R2 1 -1
       20 RETURN                           R2 -1

PROTO_38:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R7 R7 K0 ["constructPostCreateBundleUrl"]
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

PROTO_39:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["shouldDebugUrls"]
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+21]
        6 GETIMPORT                        R1 K2 [print]
        8 LOADK                            R2 K3 ["NetworkInterface:%s()"]
        9 LOADK                            R4 K4 ["getBundleCreationStatus"]
       10 NAMECALL                         R2 R2 K5 ["format"]
       12 CALL                             R2 2 -1
       13 CALL                             R1 -1 0
       14 GETIMPORT                        R1 K2 [print]
       16 LOADK                            R2 K6 ["\t%s %s"]
       17 LOADK                            R5 K8 ["GET"]
       18 NAMECALL                         R5 R5 K9 ["upper"]
       20 CALL                             R5 1 1
       21 ORK                              R4 R5 K7 ["method=nil"]
       22 ORK                              R5 R0 K10 ["url=nil"]
       23 NAMECALL                         R2 R2 K5 ["format"]
       25 CALL                             R2 3 -1
       26 CALL                             R1 -1 0
       27 GETUPVAL                         R0 2
       28 GETTABLEKS                       R0 R0 K11 ["_networkImp"]
       30 GETUPVAL                         R2 0
       31 NAMECALL                         R0 R0 K12 ["httpGetJson"]
       33 CALL                             R0 2 -1
       34 RETURN                           R0 -1

PROTO_40:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["constructGetBundleCreationStatusUrl"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R2
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R0
       10 CALL                             R3 1 -1
       11 RETURN                           R3 -1

PROTO_41:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["shouldDebugUrls"]
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+21]
        6 GETIMPORT                        R1 K2 [print]
        8 LOADK                            R2 K3 ["NetworkInterface:%s()"]
        9 LOADK                            R4 K4 ["getDefaultBundleDataSharing"]
       10 NAMECALL                         R2 R2 K5 ["format"]
       12 CALL                             R2 2 -1
       13 CALL                             R1 -1 0
       14 GETIMPORT                        R1 K2 [print]
       16 LOADK                            R2 K6 ["\t%s %s"]
       17 LOADK                            R5 K8 ["GET"]
       18 NAMECALL                         R5 R5 K9 ["upper"]
       20 CALL                             R5 1 1
       21 ORK                              R4 R5 K7 ["method=nil"]
       22 ORK                              R5 R0 K10 ["url=nil"]
       23 NAMECALL                         R2 R2 K5 ["format"]
       25 CALL                             R2 3 -1
       26 CALL                             R1 -1 0
       27 GETUPVAL                         R0 2
       28 GETTABLEKS                       R0 R0 K11 ["_networkImp"]
       30 GETUPVAL                         R2 0
       31 NAMECALL                         R0 R0 K12 ["httpGetJson"]
       33 CALL                             R0 2 -1
       34 RETURN                           R0 -1

PROTO_42:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["constructGetDefaultCreateBundleDataSharingUrl"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 CALL                             R2 1 -1
       10 RETURN                           R2 -1

PROTO_43:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["postBundleDataSharing"]
        2 LOADK                            R2 K1 ["POST"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 CALL                             R0 4 0
        6 GETUPVAL                         R0 3
        7 GETTABLEKS                       R0 R0 K2 ["_networkImp"]
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 2
       11 NAMECALL                         R0 R0 K3 ["httpPostJson"]
       13 CALL                             R0 3 -1
       14 RETURN                           R0 -1

PROTO_44:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructPostCreateBundleDataSharingUrl"]
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

PROTO_45:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["postAvatarAssetDataSharing"]
        2 LOADK                            R2 K1 ["POST"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 CALL                             R0 4 0
        6 GETUPVAL                         R0 3
        7 GETTABLEKS                       R0 R0 K2 ["_networkImp"]
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 2
       11 NAMECALL                         R0 R0 K3 ["httpPostJson"]
       13 CALL                             R0 3 -1
       14 RETURN                           R0 -1

PROTO_46:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructPostCreateAvatarAssetDataSharingUrl"]
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

PROTO_47:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["shouldDebugUrls"]
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+21]
        6 GETIMPORT                        R1 K2 [print]
        8 LOADK                            R2 K3 ["NetworkInterface:%s()"]
        9 LOADK                            R4 K4 ["getAssetMediaIds"]
       10 NAMECALL                         R2 R2 K5 ["format"]
       12 CALL                             R2 2 -1
       13 CALL                             R1 -1 0
       14 GETIMPORT                        R1 K2 [print]
       16 LOADK                            R2 K6 ["\t%s %s"]
       17 LOADK                            R5 K8 ["GET"]
       18 NAMECALL                         R5 R5 K9 ["upper"]
       20 CALL                             R5 1 1
       21 ORK                              R4 R5 K7 ["method=nil"]
       22 ORK                              R5 R0 K10 ["url=nil"]
       23 NAMECALL                         R2 R2 K5 ["format"]
       25 CALL                             R2 3 -1
       26 CALL                             R1 -1 0
       27 GETUPVAL                         R0 2
       28 GETTABLEKS                       R0 R0 K11 ["_networkImp"]
       30 GETUPVAL                         R2 0
       31 NAMECALL                         R0 R0 K12 ["httpGetJson"]
       33 CALL                             R0 2 -1
       34 RETURN                           R0 -1

PROTO_48:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["constructGetAssetMediaIdsUrl"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R2
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R0
       10 CALL                             R3 1 -1
       11 RETURN                           R3 -1

PROTO_49:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["shouldDebugUrls"]
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+21]
        6 GETIMPORT                        R1 K2 [print]
        8 LOADK                            R2 K3 ["NetworkInterface:%s()"]
        9 LOADK                            R4 K4 ["getVote"]
       10 NAMECALL                         R2 R2 K5 ["format"]
       12 CALL                             R2 2 -1
       13 CALL                             R1 -1 0
       14 GETIMPORT                        R1 K2 [print]
       16 LOADK                            R2 K6 ["\t%s %s"]
       17 LOADK                            R5 K8 ["GET"]
       18 NAMECALL                         R5 R5 K9 ["upper"]
       20 CALL                             R5 1 1
       21 ORK                              R4 R5 K7 ["method=nil"]
       22 ORK                              R5 R0 K10 ["url=nil"]
       23 NAMECALL                         R2 R2 K5 ["format"]
       25 CALL                             R2 3 -1
       26 CALL                             R1 -1 0
       27 GETUPVAL                         R0 2
       28 GETTABLEKS                       R0 R0 K11 ["_networkImp"]
       30 GETUPVAL                         R2 0
       31 NAMECALL                         R0 R0 K12 ["httpGetJson"]
       33 CALL                             R0 2 -1
       34 RETURN                           R0 -1

PROTO_50:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructGetVoteUrl"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 1
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          VAL R3
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R0
       11 CALL                             R4 1 -1
       12 RETURN                           R4 -1

PROTO_51:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["postVote"]
        2 LOADK                            R2 K1 ["POST"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 CALL                             R0 4 0
        6 GETUPVAL                         R0 3
        7 GETTABLEKS                       R0 R0 K2 ["_networkImp"]
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 2
       11 NAMECALL                         R0 R0 K3 ["httpPostJson"]
       13 CALL                             R0 3 -1
       14 RETURN                           R0 -1

PROTO_52:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructPostVoteUrl"]
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

PROTO_53:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["configureSales"]
        2 LOADK                            R2 K1 ["POST"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 CALL                             R0 4 0
        6 GETUPVAL                         R0 3
        7 GETTABLEKS                       R0 R0 K2 ["_networkImp"]
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 2
       11 NAMECALL                         R0 R0 K3 ["httpPostJson"]
       13 CALL                             R0 3 -1
       14 RETURN                           R0 -1

PROTO_54:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["constructConfigureSalesUrl"]
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

PROTO_55:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["updateSales"]
        2 LOADK                            R2 K1 ["POST"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 CALL                             R0 4 0
        6 GETUPVAL                         R0 3
        7 GETTABLEKS                       R0 R0 K2 ["_networkImp"]
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 2
       11 NAMECALL                         R0 R0 K3 ["httpPostJson"]
       13 CALL                             R0 3 -1
       14 RETURN                           R0 -1

PROTO_56:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructUpdateSalesUrl"]
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

PROTO_57:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["postUnvote"]
        2 LOADK                            R2 K1 ["POST"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 CALL                             R0 4 0
        6 GETUPVAL                         R0 3
        7 GETTABLEKS                       R0 R0 K2 ["_networkImp"]
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 2
       11 NAMECALL                         R0 R0 K3 ["httpPostJson"]
       13 CALL                             R0 3 -1
       14 RETURN                           R0 -1

PROTO_58:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["constructPostUnvoteUrl"]
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

PROTO_59:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["postInsertAsset"]
        2 LOADK                            R2 K1 ["POST"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 CALL                             R0 4 0
        6 GETUPVAL                         R0 3
        7 GETTABLEKS                       R0 R0 K2 ["_networkImp"]
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 2
       11 NAMECALL                         R0 R0 K3 ["httpPost"]
       13 CALL                             R0 3 -1
       14 RETURN                           R0 -1

PROTO_60:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["constructInsertAssetUrl"]
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
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["shouldDebugUrls"]
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+21]
        6 GETIMPORT                        R1 K2 [print]
        8 LOADK                            R2 K3 ["NetworkInterface:%s()"]
        9 LOADK                            R4 K4 ["getManageableGroups"]
       10 NAMECALL                         R2 R2 K5 ["format"]
       12 CALL                             R2 2 -1
       13 CALL                             R1 -1 0
       14 GETIMPORT                        R1 K2 [print]
       16 LOADK                            R2 K6 ["\t%s %s"]
       17 LOADK                            R5 K8 ["GET"]
       18 NAMECALL                         R5 R5 K9 ["upper"]
       20 CALL                             R5 1 1
       21 ORK                              R4 R5 K7 ["method=nil"]
       22 ORK                              R5 R0 K10 ["url=nil"]
       23 NAMECALL                         R2 R2 K5 ["format"]
       25 CALL                             R2 3 -1
       26 CALL                             R1 -1 0
       27 GETUPVAL                         R0 2
       28 GETTABLEKS                       R0 R0 K11 ["_networkImp"]
       30 GETUPVAL                         R2 0
       31 NAMECALL                         R0 R0 K12 ["httpGetJson"]
       33 CALL                             R0 2 -1
       34 RETURN                           R0 -1

PROTO_62:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["constructGetGroupsForSurfaceUrl"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R2
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R0
       10 CALL                             R3 1 -1
       11 RETURN                           R3 -1

PROTO_63:
        0 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R2 R2 K1 ["searchResults"]
        4 GETTABLEN                        R1 R2 1
        5 GETTABLEKS                       R1 R1 K2 ["contents"]
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

PROTO_64:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructUserSearchUrl"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K1 ["shouldDebugUrls"]
        8 CALL                             R4 0 1
        9 JUMPIFNOT                        R4 ; [+21]
       10 GETIMPORT                        R4 K3 [print]
       12 LOADK                            R5 K4 ["NetworkInterface:%s()"]
       13 LOADK                            R7 K5 ["getUsers"]
       14 NAMECALL                         R5 R5 K6 ["format"]
       16 CALL                             R5 2 -1
       17 CALL                             R4 -1 0
       18 GETIMPORT                        R4 K3 [print]
       20 LOADK                            R5 K7 ["\t%s %s"]
       21 LOADK                            R8 K9 ["GET"]
       22 NAMECALL                         R8 R8 K10 ["upper"]
       24 CALL                             R8 1 1
       25 ORK                              R7 R8 K8 ["method=nil"]
       26 ORK                              R8 R3 K11 ["url=nil"]
       27 NAMECALL                         R5 R5 K6 ["format"]
       29 CALL                             R5 3 -1
       30 CALL                             R4 -1 0
       31 GETTABLEKS                       R4 R0 K12 ["_networkImp"]
       33 MOVE                             R6 R3
       34 NAMECALL                         R4 R4 K13 ["httpGetJson"]
       36 CALL                             R4 2 1
       37 NEWCLOSURE                       R6 P0
       38 CAPTURE                          VAL R2
       39 NAMECALL                         R4 R4 K14 ["andThen"]
       41 CALL                             R4 2 -1
       42 RETURN                           R4 -1

PROTO_65:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["constructFavoriteCountsUrl"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["shouldDebugUrls"]
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+21]
       10 GETIMPORT                        R3 K3 [print]
       12 LOADK                            R4 K4 ["NetworkInterface:%s()"]
       13 LOADK                            R6 K5 ["getFavorites"]
       14 NAMECALL                         R4 R4 K6 ["format"]
       16 CALL                             R4 2 -1
       17 CALL                             R3 -1 0
       18 GETIMPORT                        R3 K3 [print]
       20 LOADK                            R4 K7 ["\t%s %s"]
       21 LOADK                            R7 K9 ["GET"]
       22 NAMECALL                         R7 R7 K10 ["upper"]
       24 CALL                             R7 1 1
       25 ORK                              R6 R7 K8 ["method=nil"]
       26 ORK                              R7 R2 K11 ["url=nil"]
       27 NAMECALL                         R4 R4 K6 ["format"]
       29 CALL                             R4 3 -1
       30 CALL                             R3 -1 0
       31 GETTABLEKS                       R3 R0 K12 ["_networkImp"]
       33 MOVE                             R5 R2
       34 NAMECALL                         R3 R3 K13 ["httpGet"]
       36 CALL                             R3 2 -1
       37 RETURN                           R3 -1

PROTO_66:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructGetFavoritedUrl"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K1 ["shouldDebugUrls"]
        9 CALL                             R4 0 1
       10 JUMPIFNOT                        R4 ; [+21]
       11 GETIMPORT                        R4 K3 [print]
       13 LOADK                            R5 K4 ["NetworkInterface:%s()"]
       14 LOADK                            R7 K5 ["getFavorited"]
       15 NAMECALL                         R5 R5 K6 ["format"]
       17 CALL                             R5 2 -1
       18 CALL                             R4 -1 0
       19 GETIMPORT                        R4 K3 [print]
       21 LOADK                            R5 K7 ["\t%s %s"]
       22 LOADK                            R8 K9 ["GET"]
       23 NAMECALL                         R8 R8 K10 ["upper"]
       25 CALL                             R8 1 1
       26 ORK                              R7 R8 K8 ["method=nil"]
       27 ORK                              R8 R3 K11 ["url=nil"]
       28 NAMECALL                         R5 R5 K6 ["format"]
       30 CALL                             R5 3 -1
       31 CALL                             R4 -1 0
       32 GETTABLEKS                       R4 R0 K12 ["_networkImp"]
       34 MOVE                             R6 R3
       35 NAMECALL                         R4 R4 K13 ["httpGet"]
       37 CALL                             R4 2 -1
       38 RETURN                           R4 -1

PROTO_67:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructCreateSaveUrl"]
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

PROTO_68:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructDeleteSaveUrl"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K1 ["shouldDebugUrls"]
        9 CALL                             R4 0 1
       10 JUMPIFNOT                        R4 ; [+21]
       11 GETIMPORT                        R4 K3 [print]
       13 LOADK                            R5 K4 ["NetworkInterface:%s()"]
       14 LOADK                            R7 K5 ["deleteSave"]
       15 NAMECALL                         R5 R5 K6 ["format"]
       17 CALL                             R5 2 -1
       18 CALL                             R4 -1 0
       19 GETIMPORT                        R4 K3 [print]
       21 LOADK                            R5 K7 ["\t%s %s"]
       22 LOADK                            R8 K9 ["DELETE"]
       23 NAMECALL                         R8 R8 K10 ["upper"]
       25 CALL                             R8 1 1
       26 ORK                              R7 R8 K8 ["method=nil"]
       27 ORK                              R8 R3 K11 ["url=nil"]
       28 NAMECALL                         R5 R5 K6 ["format"]
       30 CALL                             R5 3 -1
       31 CALL                             R4 -1 0
       32 GETTABLEKS                       R4 R0 K12 ["_networkImp"]
       34 MOVE                             R6 R3
       35 NAMECALL                         R4 R4 K13 ["httpDelete"]
       37 CALL                             R4 2 -1
       38 RETURN                           R4 -1

PROTO_69:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructGetSaveUrl"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K1 ["shouldDebugUrls"]
        9 CALL                             R4 0 1
       10 JUMPIFNOT                        R4 ; [+21]
       11 GETIMPORT                        R4 K3 [print]
       13 LOADK                            R5 K4 ["NetworkInterface:%s()"]
       14 LOADK                            R7 K5 ["getSave"]
       15 NAMECALL                         R5 R5 K6 ["format"]
       17 CALL                             R5 2 -1
       18 CALL                             R4 -1 0
       19 GETIMPORT                        R4 K3 [print]
       21 LOADK                            R5 K7 ["\t%s %s"]
       22 LOADK                            R8 K9 ["GET"]
       23 NAMECALL                         R8 R8 K10 ["upper"]
       25 CALL                             R8 1 1
       26 ORK                              R7 R8 K8 ["method=nil"]
       27 ORK                              R8 R3 K11 ["url=nil"]
       28 NAMECALL                         R5 R5 K6 ["format"]
       30 CALL                             R5 3 -1
       31 CALL                             R4 -1 0
       32 GETTABLEKS                       R4 R0 K12 ["_networkImp"]
       34 MOVE                             R6 R3
       35 NAMECALL                         R4 R4 K13 ["httpGetJson"]
       37 CALL                             R4 2 -1
       38 RETURN                           R4 -1

PROTO_70:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["constructGetDevelopAssetMetadata"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["shouldDebugUrls"]
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+21]
       10 GETIMPORT                        R3 K3 [print]
       12 LOADK                            R4 K4 ["NetworkInterface:%s()"]
       13 LOADK                            R6 K5 ["getDevelopAssetMetadata"]
       14 NAMECALL                         R4 R4 K6 ["format"]
       16 CALL                             R4 2 -1
       17 CALL                             R3 -1 0
       18 GETIMPORT                        R3 K3 [print]
       20 LOADK                            R4 K7 ["\t%s %s"]
       21 LOADK                            R7 K9 ["GET"]
       22 NAMECALL                         R7 R7 K10 ["upper"]
       24 CALL                             R7 1 1
       25 ORK                              R6 R7 K8 ["method=nil"]
       26 ORK                              R7 R2 K11 ["url=nil"]
       27 NAMECALL                         R4 R4 K6 ["format"]
       29 CALL                             R4 3 -1
       30 CALL                             R3 -1 0
       31 GETTABLEKS                       R3 R0 K12 ["_networkImp"]
       33 MOVE                             R5 R2
       34 NAMECALL                         R3 R3 K13 ["httpGet"]
       36 CALL                             R3 2 -1
       37 RETURN                           R3 -1

PROTO_71:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["constructAssetSavedVersionString"]
        3 MOVE                             R5 R1
        4 MOVE                             R6 R2
        5 MOVE                             R7 R3
        6 CALL                             R4 3 1
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K1 ["shouldDebugUrls"]
       10 CALL                             R5 0 1
       11 JUMPIFNOT                        R5 ; [+21]
       12 GETIMPORT                        R5 K3 [print]
       14 LOADK                            R6 K4 ["NetworkInterface:%s()"]
       15 LOADK                            R8 K5 ["getVersionHistory"]
       16 NAMECALL                         R6 R6 K6 ["format"]
       18 CALL                             R6 2 -1
       19 CALL                             R5 -1 0
       20 GETIMPORT                        R5 K3 [print]
       22 LOADK                            R6 K7 ["\t%s %s"]
       23 LOADK                            R9 K9 ["GET"]
       24 NAMECALL                         R9 R9 K10 ["upper"]
       26 CALL                             R9 1 1
       27 ORK                              R8 R9 K8 ["method=nil"]
       28 ORK                              R9 R4 K11 ["url=nil"]
       29 NAMECALL                         R6 R6 K6 ["format"]
       31 CALL                             R6 3 -1
       32 CALL                             R5 -1 0
       33 GETTABLEKS                       R5 R0 K12 ["_networkImp"]
       35 MOVE                             R7 R4
       36 NAMECALL                         R5 R5 K13 ["httpGet"]
       38 CALL                             R5 2 -1
       39 RETURN                           R5 -1

PROTO_72:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructRevertAssetVersionString"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K1 ["shouldDebugUrls"]
        9 CALL                             R4 0 1
       10 JUMPIFNOT                        R4 ; [+21]
       11 GETIMPORT                        R4 K3 [print]
       13 LOADK                            R5 K4 ["NetworkInterface:%s()"]
       14 LOADK                            R7 K5 ["postRevertVersion"]
       15 NAMECALL                         R5 R5 K6 ["format"]
       17 CALL                             R5 2 -1
       18 CALL                             R4 -1 0
       19 GETIMPORT                        R4 K3 [print]
       21 LOADK                            R5 K7 ["\t%s %s"]
       22 LOADK                            R8 K9 ["POST"]
       23 NAMECALL                         R8 R8 K10 ["upper"]
       25 CALL                             R8 1 1
       26 ORK                              R7 R8 K8 ["method=nil"]
       27 ORK                              R8 R3 K11 ["url=nil"]
       28 NAMECALL                         R5 R5 K6 ["format"]
       30 CALL                             R5 3 -1
       31 CALL                             R4 -1 0
       32 GETTABLEKS                       R4 R0 K12 ["_networkImp"]
       34 MOVE                             R6 R3
       35 NEWTABLE                         R7 0 0
       37 NAMECALL                         R4 R4 K13 ["httpPostJson"]
       39 CALL                             R4 3 -1
       40 RETURN                           R4 -1

PROTO_73:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["constructGetPackageVersionDescriptionString"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["shouldDebugUrls"]
        7 CALL                             R3 0 1
        8 JUMPIFNOT                        R3 ; [+21]
        9 GETIMPORT                        R3 K3 [print]
       11 LOADK                            R4 K4 ["NetworkInterface:%s()"]
       12 LOADK                            R6 K5 ["getVersionDescriptions"]
       13 NAMECALL                         R4 R4 K6 ["format"]
       15 CALL                             R4 2 -1
       16 CALL                             R3 -1 0
       17 GETIMPORT                        R3 K3 [print]
       19 LOADK                            R4 K7 ["\t%s %s"]
       20 LOADK                            R7 K9 ["POST"]
       21 NAMECALL                         R7 R7 K10 ["upper"]
       23 CALL                             R7 1 1
       24 ORK                              R6 R7 K8 ["method=nil"]
       25 ORK                              R7 R2 K11 ["url=nil"]
       26 NAMECALL                         R4 R4 K6 ["format"]
       28 CALL                             R4 3 -1
       29 CALL                             R3 -1 0
       30 GETTABLEKS                       R3 R0 K12 ["_networkImp"]
       32 MOVE                             R5 R1
       33 NAMECALL                         R3 R3 K13 ["jsonEncode"]
       35 CALL                             R3 2 1
       36 GETTABLEKS                       R4 R0 K12 ["_networkImp"]
       38 MOVE                             R6 R2
       39 MOVE                             R7 R3
       40 NAMECALL                         R4 R4 K14 ["httpPostJson"]
       42 CALL                             R4 3 -1
       43 RETURN                           R4 -1

PROTO_74:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["constructAssetSavedVersionWithNotesString"]
        3 FASTCALL1                        TOSTRING R1 ; [+3]
        4 MOVE                             R4 R1
        5 GETIMPORT                        R3 K2 [tostring]
        7 CALL                             R3 1 1
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K3 ["shouldDebugUrls"]
       12 CALL                             R3 0 1
       13 JUMPIFNOT                        R3 ; [+21]
       14 GETIMPORT                        R3 K5 [print]
       16 LOADK                            R4 K6 ["NetworkInterface:%s()"]
       17 LOADK                            R6 K7 ["getVersionHistoryWithNotes"]
       18 NAMECALL                         R4 R4 K8 ["format"]
       20 CALL                             R4 2 -1
       21 CALL                             R3 -1 0
       22 GETIMPORT                        R3 K5 [print]
       24 LOADK                            R4 K9 ["\t%s %s"]
       25 LOADK                            R7 K11 ["GET"]
       26 NAMECALL                         R7 R7 K12 ["upper"]
       28 CALL                             R7 1 1
       29 ORK                              R6 R7 K10 ["method=nil"]
       30 ORK                              R7 R2 K13 ["url=nil"]
       31 NAMECALL                         R4 R4 K8 ["format"]
       33 CALL                             R4 3 -1
       34 CALL                             R3 -1 0
       35 GETTABLEKS                       R3 R0 K14 ["_networkImp"]
       37 MOVE                             R5 R2
       38 NAMECALL                         R3 R3 K15 ["httpGet"]
       40 CALL                             R3 2 -1
       41 RETURN                           R3 -1

PROTO_75:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["postVersionDescription"]
        2 LOADK                            R2 K1 ["POST"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 CALL                             R0 4 0
        6 GETUPVAL                         R0 3
        7 GETTABLEKS                       R0 R0 K2 ["_networkImp"]
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 2
       11 NAMECALL                         R0 R0 K3 ["httpPostJson"]
       13 CALL                             R0 3 -1
       14 RETURN                           R0 -1

PROTO_76:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["constructSetPackageVersionDescriptionString"]
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

PROTO_77:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructPostFavoriteUrl"]
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

PROTO_78:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructDeleteFavoriteUrl"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K1 ["shouldDebugUrls"]
        9 CALL                             R4 0 1
       10 JUMPIFNOT                        R4 ; [+21]
       11 GETIMPORT                        R4 K3 [print]
       13 LOADK                            R5 K4 ["NetworkInterface:%s()"]
       14 LOADK                            R7 K5 ["deleteFavorite"]
       15 NAMECALL                         R5 R5 K6 ["format"]
       17 CALL                             R5 2 -1
       18 CALL                             R4 -1 0
       19 GETIMPORT                        R4 K3 [print]
       21 LOADK                            R5 K7 ["\t%s %s"]
       22 LOADK                            R8 K9 ["DELETE"]
       23 NAMECALL                         R8 R8 K10 ["upper"]
       25 CALL                             R8 1 1
       26 ORK                              R7 R8 K8 ["method=nil"]
       27 ORK                              R8 R3 K11 ["url=nil"]
       28 NAMECALL                         R5 R5 K6 ["format"]
       30 CALL                             R5 3 -1
       31 CALL                             R4 -1 0
       32 GETTABLEKS                       R4 R0 K12 ["_networkImp"]
       34 MOVE                             R6 R3
       35 NAMECALL                         R4 R4 K13 ["httpDelete"]
       37 CALL                             R4 2 -1
       38 RETURN                           R4 -1

PROTO_79:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["reject"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_80:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructUploadCatalogItemUrl"]
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
       37 DUPCLOSURE                       R7 K18 [PROTO_79]
       38 CAPTURE                          UPVAL U2
       39 NAMECALL                         R5 R5 K19 ["catch"]
       41 CALL                             R5 2 -1
       42 RETURN                           R5 -1

PROTO_81:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["uploadCatalogItemFormat"]
        2 LOADK                            R2 K1 ["POST"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 CALL                             R0 4 0
        6 GETUPVAL                         R0 3
        7 GETTABLEKS                       R0 R0 K2 ["_networkImp"]
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 2
       11 NAMECALL                         R0 R0 K3 ["httpPost"]
       13 CALL                             R0 3 -1
       14 RETURN                           R0 -1

PROTO_82:
        0 GETUPVAL                         R8 0
        1 GETTABLEKS                       R8 R8 K0 ["constructUploadCatalogItemFormatUrl"]
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

PROTO_83:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["reject"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_84:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructUploadAssetThumbnailUrl"]
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
       21 DUPCLOSURE                       R8 K5 [PROTO_83]
       22 CAPTURE                          UPVAL U3
       23 NAMECALL                         R6 R6 K6 ["catch"]
       25 CALL                             R6 2 -1
       26 RETURN                           R6 -1

PROTO_85:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["contuctGetThumbnailStatusUrl"]
        3 NEWTABLE                         R3 0 1
        5 MOVE                             R4 R1
        6 SETLIST                          R3 R4 1 [1]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K1 ["shouldDebugUrls"]
       12 CALL                             R3 0 1
       13 JUMPIFNOT                        R3 ; [+21]
       14 GETIMPORT                        R3 K3 [print]
       16 LOADK                            R4 K4 ["NetworkInterface:%s()"]
       17 LOADK                            R6 K5 ["getThumbnailStatus"]
       18 NAMECALL                         R4 R4 K6 ["format"]
       20 CALL                             R4 2 -1
       21 CALL                             R3 -1 0
       22 GETIMPORT                        R3 K3 [print]
       24 LOADK                            R4 K7 ["\t%s %s"]
       25 LOADK                            R7 K9 ["GET"]
       26 NAMECALL                         R7 R7 K10 ["upper"]
       28 CALL                             R7 1 1
       29 ORK                              R6 R7 K8 ["method=nil"]
       30 ORK                              R7 R2 K11 ["url=nil"]
       31 NAMECALL                         R4 R4 K6 ["format"]
       33 CALL                             R4 3 -1
       34 CALL                             R3 -1 0
       35 GETTABLEKS                       R3 R0 K12 ["_networkImp"]
       37 MOVE                             R5 R2
       38 NAMECALL                         R3 R3 K13 ["httpGetJson"]
       40 CALL                             R3 2 -1
       41 RETURN                           R3 -1

PROTO_86:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["reject"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_87:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructConfigureCatalogItemUrl"]
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
       42 DUPCLOSURE                       R8 K18 [PROTO_86]
       43 CAPTURE                          UPVAL U2
       44 NAMECALL                         R6 R6 K19 ["catch"]
       46 CALL                             R6 2 -1
       47 RETURN                           R6 -1

PROTO_88:
        0 GETUPVAL                         R10 0
        1 GETTABLEKS                       R10 R10 K0 ["constructPatchAssetUrl"]
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

PROTO_89:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["constructValidateAnimationUrl"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["shouldDebugUrls"]
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+21]
       10 GETIMPORT                        R3 K3 [print]
       12 LOADK                            R4 K4 ["NetworkInterface:%s()"]
       13 LOADK                            R6 K5 ["validateAnimation"]
       14 NAMECALL                         R4 R4 K6 ["format"]
       16 CALL                             R4 2 -1
       17 CALL                             R3 -1 0
       18 GETIMPORT                        R3 K3 [print]
       20 LOADK                            R4 K7 ["\t%s %s"]
       21 LOADK                            R7 K9 ["GET"]
       22 NAMECALL                         R7 R7 K10 ["upper"]
       24 CALL                             R7 1 1
       25 ORK                              R6 R7 K8 ["method=nil"]
       26 ORK                              R7 R2 K11 ["url=nil"]
       27 NAMECALL                         R4 R4 K6 ["format"]
       29 CALL                             R4 3 -1
       30 CALL                             R3 -1 0
       31 GETTABLEKS                       R3 R0 K12 ["_networkImp"]
       33 MOVE                             R5 R2
       34 NAMECALL                         R3 R3 K13 ["httpGetJson"]
       36 CALL                             R3 2 -1
       37 RETURN                           R3 -1

PROTO_90:
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

PROTO_91:
        0 GETTABLEKS                       R1 R0 K0 ["responseCode"]
        2 JUMPIFNOTEQKN                    R1 K1 [200] ; [+25]
        4 GETTABLEKS                       R1 R0 K2 ["responseBody"]
        6 JUMPIFNOT                        R1 ; [+21]
        7 GETTABLEKS                       R1 R0 K2 ["responseBody"]
        9 GETTABLEKS                       R1 R1 K3 ["done"]
       11 JUMPIFNOT                        R1 ; [+16]
       12 GETTABLEKS                       R1 R0 K2 ["responseBody"]
       14 GETTABLEKS                       R1 R1 K4 ["error"]
       16 JUMPIFEQKNIL                     R1 ; [+6]
       18 GETTABLEKS                       R1 R0 K2 ["responseBody"]
       20 GETTABLEKS                       R1 R1 K4 ["error"]
       22 RETURN                           R1 1
       23 GETTABLEKS                       R1 R0 K2 ["responseBody"]
       25 GETTABLEKS                       R1 R1 K5 ["response"]
       27 RETURN                           R1 1
       28 GETUPVAL                         R1 0
       29 LOADN                            R2 5
       30 JUMPIFNOTLT                      R2 R1 ; [+7]
       32 GETUPVAL                         R1 1
       33 GETTABLEKS                       R1 R1 K6 ["reject"]
       35 LOADK                            R2 K7 ["Timeout"]
       36 CALL                             R1 1 -1
       37 RETURN                           R1 -1
       38 LOADN                            R2 2
       39 GETUPVAL                         R4 0
       40 SUBK                             R3 R4 K8 [1]
       41 POW                              R1 R2 R3
       42 GETIMPORT                        R2 K10 [wait]
       44 MOVE                             R3 R1
       45 CALL                             R2 1 0
       46 GETUPVAL                         R2 2
       47 GETUPVAL                         R4 3
       48 GETUPVAL                         R5 4
       49 GETUPVAL                         R7 0
       50 ADDK                             R6 R7 K8 [1]
       51 NAMECALL                         R2 R2 K11 ["waitForOperation"]
       53 CALL                             R2 4 -1
       54 RETURN                           R2 -1

PROTO_92:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["reject"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_93:
        0 ORK                              R2 R2 K0 [5]
        1 ORK                              R3 R3 K1 [0]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K2 ["constructOperationUrl"]
        5 MOVE                             R5 R1
        6 CALL                             R4 1 1
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K3 ["shouldDebugUrls"]
       10 CALL                             R5 0 1
       11 JUMPIFNOT                        R5 ; [+21]
       12 GETIMPORT                        R5 K5 [print]
       14 LOADK                            R6 K6 ["NetworkInterface:%s()"]
       15 LOADK                            R8 K7 ["waitForOperation"]
       16 NAMECALL                         R6 R6 K8 ["format"]
       18 CALL                             R6 2 -1
       19 CALL                             R5 -1 0
       20 GETIMPORT                        R5 K5 [print]
       22 LOADK                            R6 K9 ["\t%s %s"]
       23 LOADK                            R9 K11 ["GET"]
       24 NAMECALL                         R9 R9 K12 ["upper"]
       26 CALL                             R9 1 1
       27 ORK                              R8 R9 K10 ["method=nil"]
       28 ORK                              R9 R4 K13 ["url=nil"]
       29 NAMECALL                         R6 R6 K8 ["format"]
       31 CALL                             R6 3 -1
       32 CALL                             R5 -1 0
       33 GETTABLEKS                       R5 R0 K14 ["_networkImp"]
       35 MOVE                             R7 R4
       36 NAMECALL                         R5 R5 K15 ["httpGetJson"]
       38 CALL                             R5 2 1
       39 NEWCLOSURE                       R7 P0
       40 CAPTURE                          REF R3
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R1
       44 CAPTURE                          REF R2
       45 NAMECALL                         R5 R5 K16 ["andThen"]
       47 CALL                             R5 2 1
       48 DUPCLOSURE                       R7 K17 [PROTO_92]
       49 CAPTURE                          UPVAL U2
       50 NAMECALL                         R5 R5 K18 ["catch"]
       52 CALL                             R5 2 -1
       53 CLOSEUPVALS                      R2
       54 RETURN                           R5 -1

PROTO_94:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_networkImp"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["jsonDecode"]
        6 CALL                             R1 2 1
        7 SETGLOBAL                        R1 K2 ["body"]
        9 GETUPVAL                         R1 0
       10 GETGLOBAL                        R3 K2 ["body"]
       12 GETTABLEKS                       R3 R3 K3 ["operationId"]
       14 NAMECALL                         R1 R1 K4 ["waitForOperation"]
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1

PROTO_95:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["reject"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_96:
        0 GETUPVAL                         R9 0
        1 GETTABLEKS                       R9 R9 K0 ["constructPostUploadAnimationUrl"]
        3 CALL                             R9 0 1
        4 GETTABLEKS                       R10 R6 K1 ["Name"]
        6 GETUPVAL                         R11 1
        7 DUPTABLE                         R12 K4 [{"request", "fileContent"}]
        8 DUPTABLE                         R13 K7 [{"contentType", "body"}]
        9 LOADK                            R14 K8 ["application/json"]
       10 SETTABLEKS                       R14 R13 K5 ["contentType"]
       12 GETTABLEKS                       R14 R0 K9 ["_networkImp"]
       14 DUPTABLE                         R16 K14 [{"assetType", "displayName", "description", "creationContext"}]
       15 SETTABLEKS                       R10 R16 K10 ["assetType"]
       17 SETTABLEKS                       R2 R16 K11 ["displayName"]
       19 SETTABLEKS                       R3 R16 K12 ["description"]
       21 DUPTABLE                         R17 K17 [{"creator", "expectedPrice"}]
       22 DUPTABLE                         R18 K20 [{"userId", "groupId"}]
       23 JUMPIF                           R5 ; [+2]
       24 MOVE                             R19 R4
       25 JUMP                             ; [+1]
       26 LOADNIL                          R19
       27 SETTABLEKS                       R19 R18 K18 ["userId"]
       29 SETTABLEKS                       R5 R18 K19 ["groupId"]
       31 SETTABLEKS                       R18 R17 K15 ["creator"]
       33 SETTABLEKS                       R7 R17 K16 ["expectedPrice"]
       35 SETTABLEKS                       R17 R16 K13 ["creationContext"]
       37 NAMECALL                         R14 R14 K21 ["jsonEncode"]
       39 CALL                             R14 2 1
       40 SETTABLEKS                       R14 R13 K6 ["body"]
       42 SETTABLEKS                       R13 R12 K2 ["request"]
       44 DUPTABLE                         R13 K23 [{"contentType", "filename", "body"}]
       45 LOADK                            R14 K24 ["model/x-rbxm"]
       46 SETTABLEKS                       R14 R13 K5 ["contentType"]
       48 LOADK                            R14 K25 ["asset.rbxm"]
       49 SETTABLEKS                       R14 R13 K22 ["filename"]
       51 SETTABLEKS                       R8 R13 K6 ["body"]
       53 SETTABLEKS                       R13 R12 K3 ["fileContent"]
       55 CALL                             R11 1 2
       56 DUPTABLE                         R13 K31 [{"Url", "Method", "Body", "CachePolicy", "Headers"}]
       57 SETTABLEKS                       R9 R13 K26 ["Url"]
       59 LOADK                            R14 K32 ["POST"]
       60 SETTABLEKS                       R14 R13 K27 ["Method"]
       62 SETTABLEKS                       R11 R13 K28 ["Body"]
       64 GETIMPORT                        R14 K36 [Enum.HttpCachePolicy.None]
       66 SETTABLEKS                       R14 R13 K29 ["CachePolicy"]
       68 NEWTABLE                         R14 1 0
       70 LOADK                            R16 K37 ["multipart/form-data; boundary="]
       71 MOVE                             R17 R12
       72 CONCAT                           R15 R16 R17
       73 SETTABLEKS                       R15 R14 K38 ["Content-Type"]
       75 SETTABLEKS                       R14 R13 K30 ["Headers"]
       77 GETUPVAL                         R14 2
       78 LOADK                            R15 K39 ["uploadAnimation"]
       79 LOADK                            R16 K32 ["POST"]
       80 MOVE                             R17 R9
       81 MOVE                             R18 R13
       82 CALL                             R14 4 0
       83 GETTABLEKS                       R14 R0 K9 ["_networkImp"]
       85 MOVE                             R16 R13
       86 NAMECALL                         R14 R14 K40 ["requestInternal"]
       88 CALL                             R14 2 1
       89 NEWCLOSURE                       R16 P0
       90 CAPTURE                          VAL R0
       91 NAMECALL                         R14 R14 K41 ["andThen"]
       93 CALL                             R14 2 1
       94 DUPCLOSURE                       R16 K42 [PROTO_95]
       95 CAPTURE                          UPVAL U3
       96 NAMECALL                         R14 R14 K43 ["catch"]
       98 CALL                             R14 2 -1
       99 RETURN                           R14 -1

PROTO_97:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_networkImp"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["jsonDecode"]
        6 CALL                             R1 2 1
        7 SETGLOBAL                        R1 K2 ["body"]
        9 GETUPVAL                         R1 0
       10 GETGLOBAL                        R3 K2 ["body"]
       12 GETTABLEKS                       R3 R3 K3 ["operationId"]
       14 NAMECALL                         R1 R1 K4 ["waitForOperation"]
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1

PROTO_98:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["reject"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_99:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructPostOverwriteAnimationUrl"]
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
       78 DUPCLOSURE                       R9 K34 [PROTO_98]
       79 CAPTURE                          UPVAL U3
       80 NAMECALL                         R7 R7 K35 ["catch"]
       82 CALL                             R7 2 -1
       83 RETURN                           R7 -1

PROTO_100:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["constructIsVerifiedCreatorUrl"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["shouldDebugUrls"]
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+21]
        9 GETIMPORT                        R2 K3 [print]
       11 LOADK                            R3 K4 ["NetworkInterface:%s()"]
       12 LOADK                            R5 K5 ["getIsVerifiedCreator"]
       13 NAMECALL                         R3 R3 K6 ["format"]
       15 CALL                             R3 2 -1
       16 CALL                             R2 -1 0
       17 GETIMPORT                        R2 K3 [print]
       19 LOADK                            R3 K7 ["\t%s %s"]
       20 LOADK                            R6 K9 ["GET"]
       21 NAMECALL                         R6 R6 K10 ["upper"]
       23 CALL                             R6 1 1
       24 ORK                              R5 R6 K8 ["method=nil"]
       25 ORK                              R6 R1 K11 ["url=nil"]
       26 NAMECALL                         R3 R3 K6 ["format"]
       28 CALL                             R3 3 -1
       29 CALL                             R2 -1 0
       30 GETTABLEKS                       R2 R0 K12 ["_networkImp"]
       32 MOVE                             R4 R1
       33 NAMECALL                         R2 R2 K13 ["httpGetJson"]
       35 CALL                             R2 2 -1
       36 RETURN                           R2 -1

PROTO_101:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["constructGetPluginInfoUrl"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["shouldDebugUrls"]
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+21]
       10 GETIMPORT                        R3 K3 [print]
       12 LOADK                            R4 K4 ["NetworkInterface:%s()"]
       13 LOADK                            R6 K5 ["getPluginInfo"]
       14 NAMECALL                         R4 R4 K6 ["format"]
       16 CALL                             R4 2 -1
       17 CALL                             R3 -1 0
       18 GETIMPORT                        R3 K3 [print]
       20 LOADK                            R4 K7 ["\t%s %s"]
       21 LOADK                            R7 K9 ["GET"]
       22 NAMECALL                         R7 R7 K10 ["upper"]
       24 CALL                             R7 1 1
       25 ORK                              R6 R7 K8 ["method=nil"]
       26 ORK                              R7 R2 K11 ["url=nil"]
       27 NAMECALL                         R4 R4 K6 ["format"]
       29 CALL                             R4 3 -1
       30 CALL                             R3 -1 0
       31 GETTABLEKS                       R3 R0 K12 ["_networkImp"]
       33 MOVE                             R5 R2
       34 NAMECALL                         R3 R3 K13 ["httpGetJson"]
       36 CALL                             R3 2 -1
       37 RETURN                           R3 -1

PROTO_102:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["constructGetUserFriendsUrl"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["shouldDebugUrls"]
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+21]
       10 GETIMPORT                        R3 K3 [print]
       12 LOADK                            R4 K4 ["NetworkInterface:%s()"]
       13 LOADK                            R6 K5 ["getUserFriends"]
       14 NAMECALL                         R4 R4 K6 ["format"]
       16 CALL                             R4 2 -1
       17 CALL                             R3 -1 0
       18 GETIMPORT                        R3 K3 [print]
       20 LOADK                            R4 K7 ["\t%s %s"]
       21 LOADK                            R7 K9 ["GET"]
       22 NAMECALL                         R7 R7 K10 ["upper"]
       24 CALL                             R7 1 1
       25 ORK                              R6 R7 K8 ["method=nil"]
       26 ORK                              R7 R1 K11 ["url=nil"]
       27 NAMECALL                         R4 R4 K6 ["format"]
       29 CALL                             R4 3 -1
       30 CALL                             R3 -1 0
       31 GETTABLEKS                       R3 R0 K12 ["_networkImp"]
       33 MOVE                             R5 R2
       34 NAMECALL                         R3 R3 K13 ["httpGet"]
       36 CALL                             R3 2 -1
       37 RETURN                           R3 -1

PROTO_103:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["constructPostPackageMetadata"]
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

PROTO_104:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["constructGetRobuxBalanceUrl"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["shouldDebugUrls"]
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+21]
       10 GETIMPORT                        R3 K3 [print]
       12 LOADK                            R4 K4 ["NetworkInterface:%s()"]
       13 LOADK                            R6 K5 ["getRobuxBalance"]
       14 NAMECALL                         R4 R4 K6 ["format"]
       16 CALL                             R4 2 -1
       17 CALL                             R3 -1 0
       18 GETIMPORT                        R3 K3 [print]
       20 LOADK                            R4 K7 ["\t%s %s"]
       21 LOADK                            R7 K9 ["GET"]
       22 NAMECALL                         R7 R7 K10 ["upper"]
       24 CALL                             R7 1 1
       25 ORK                              R6 R7 K8 ["method=nil"]
       26 ORK                              R7 R2 K11 ["url=nil"]
       27 NAMECALL                         R4 R4 K6 ["format"]
       29 CALL                             R4 3 -1
       30 CALL                             R3 -1 0
       31 GETTABLEKS                       R3 R0 K12 ["_networkImp"]
       33 MOVE                             R5 R2
       34 NAMECALL                         R3 R3 K13 ["httpGetJson"]
       36 CALL                             R3 2 -1
       37 RETURN                           R3 -1

PROTO_105:
        0 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R2 R2 K1 ["results"]
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
       20 GETTABLEKS                       R2 R0 K0 ["responseBody"]
       22 GETTABLEKS                       R2 R2 K1 ["results"]
       24 GETTABLEN                        R1 R2 1
       25 GETTABLEKS                       R2 R1 K2 ["error"]
       27 JUMPIFNOT                        R2 ; [+5]
       28 GETIMPORT                        R2 K3 [error]
       30 GETTABLEKS                       R3 R1 K2 ["error"]
       32 CALL                             R2 1 0
       33 GETTABLEKS                       R3 R1 K10 ["value"]
       35 GETTABLEKS                       R3 R3 K11 ["status"]
       37 JUMPIFEQKS                       R3 K12 ["HasPermission"] ; [+2]
       39 LOADB                            R2 0 +1
       40 LOADB                            R2 1
       41 RETURN                           R2 1

PROTO_106:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructAssetCheckPermissionsBatchUrl"]
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

PROTO_107:
        0 MOVE                             R6 R2
        1 NAMECALL                         R4 R0 K0 ["jsonEncode"]
        3 CALL                             R4 2 1
        4 JUMPIFEQKNIL                     R1 ; [+4]
        6 GETUPVAL                         R6 0
        7 CALL                             R6 0 1
        8 JUMPIFNOT                        R6 ; [+7]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K1 ["constructAssetPurchaseUrl"]
       12 LOADNIL                          R6
       13 MOVE                             R7 R3
       14 CALL                             R5 2 1
       15 JUMP                             ; [+6]
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K1 ["constructAssetPurchaseUrl"]
       19 MOVE                             R6 R1
       20 MOVE                             R7 R3
       21 CALL                             R5 2 1
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R6 R6 K2 ["shouldDebugUrls"]
       25 CALL                             R6 0 1
       26 JUMPIFNOT                        R6 ; [+21]
       27 GETIMPORT                        R6 K4 [print]
       29 LOADK                            R7 K5 ["NetworkInterface:%s()"]
       30 LOADK                            R9 K6 ["purchaseAsset"]
       31 NAMECALL                         R7 R7 K7 ["format"]
       33 CALL                             R7 2 -1
       34 CALL                             R6 -1 0
       35 GETIMPORT                        R6 K4 [print]
       37 LOADK                            R7 K8 ["\t%s %s"]
       38 LOADK                            R10 K10 ["POST"]
       39 NAMECALL                         R10 R10 K11 ["upper"]
       41 CALL                             R10 1 1
       42 ORK                              R9 R10 K9 ["method=nil"]
       43 ORK                              R10 R5 K12 ["url=nil"]
       44 NAMECALL                         R7 R7 K7 ["format"]
       46 CALL                             R7 3 -1
       47 CALL                             R6 -1 0
       48 GETTABLEKS                       R6 R0 K13 ["_networkImp"]
       50 MOVE                             R8 R5
       51 MOVE                             R9 R4
       52 NAMECALL                         R6 R6 K14 ["httpPostJson"]
       54 CALL                             R6 3 -1
       55 RETURN                           R6 -1

PROTO_108:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["constructPurchaserStatusUrl"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["shouldDebugUrls"]
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+21]
        9 GETIMPORT                        R2 K3 [print]
       11 LOADK                            R3 K4 ["NetworkInterface:%s()"]
       12 LOADK                            R5 K5 ["getPurchaserStatus"]
       13 NAMECALL                         R3 R3 K6 ["format"]
       15 CALL                             R3 2 -1
       16 CALL                             R2 -1 0
       17 GETIMPORT                        R2 K3 [print]
       19 LOADK                            R3 K7 ["\t%s %s"]
       20 LOADK                            R6 K9 ["GET"]
       21 NAMECALL                         R6 R6 K10 ["upper"]
       23 CALL                             R6 1 1
       24 ORK                              R5 R6 K8 ["method=nil"]
       25 ORK                              R6 R1 K11 ["url=nil"]
       26 NAMECALL                         R3 R3 K6 ["format"]
       28 CALL                             R3 3 -1
       29 CALL                             R2 -1 0
       30 GETTABLEKS                       R2 R0 K12 ["_networkImp"]
       32 MOVE                             R4 R1
       33 NAMECALL                         R2 R2 K13 ["httpGetJson"]
       35 CALL                             R2 2 -1
       36 RETURN                           R2 -1

PROTO_109:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["constructSellerStatusUrl"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["shouldDebugUrls"]
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+21]
        9 GETIMPORT                        R2 K3 [print]
       11 LOADK                            R3 K4 ["NetworkInterface:%s()"]
       12 LOADK                            R5 K5 ["getSellerStatus"]
       13 NAMECALL                         R3 R3 K6 ["format"]
       15 CALL                             R3 2 -1
       16 CALL                             R2 -1 0
       17 GETIMPORT                        R2 K3 [print]
       19 LOADK                            R3 K7 ["\t%s %s"]
       20 LOADK                            R6 K9 ["GET"]
       21 NAMECALL                         R6 R6 K10 ["upper"]
       23 CALL                             R6 1 1
       24 ORK                              R5 R6 K8 ["method=nil"]
       25 ORK                              R6 R1 K11 ["url=nil"]
       26 NAMECALL                         R3 R3 K6 ["format"]
       28 CALL                             R3 3 -1
       29 CALL                             R2 -1 0
       30 GETTABLEKS                       R2 R0 K12 ["_networkImp"]
       32 MOVE                             R4 R1
       33 NAMECALL                         R2 R2 K13 ["httpGetJson"]
       35 CALL                             R2 2 -1
       36 RETURN                           R2 -1

PROTO_110:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["constructGetGroupRoleInfoUrl"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["shouldDebugUrls"]
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+21]
       10 GETIMPORT                        R3 K3 [print]
       12 LOADK                            R4 K4 ["NetworkInterface:%s()"]
       13 LOADK                            R6 K5 ["getGroupRoleInfo"]
       14 NAMECALL                         R4 R4 K6 ["format"]
       16 CALL                             R4 2 -1
       17 CALL                             R3 -1 0
       18 GETIMPORT                        R3 K3 [print]
       20 LOADK                            R4 K7 ["\t%s %s"]
       21 LOADK                            R7 K9 ["GET"]
       22 NAMECALL                         R7 R7 K10 ["upper"]
       24 CALL                             R7 1 1
       25 ORK                              R6 R7 K8 ["method=nil"]
       26 ORK                              R7 R1 K11 ["url=nil"]
       27 NAMECALL                         R4 R4 K6 ["format"]
       29 CALL                             R4 3 -1
       30 CALL                             R3 -1 0
       31 GETTABLEKS                       R3 R0 K12 ["_networkImp"]
       33 MOVE                             R5 R2
       34 NAMECALL                         R3 R3 K13 ["httpGet"]
       36 CALL                             R3 2 -1
       37 RETURN                           R3 -1

PROTO_111:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructAssetPermissionsUrl"]
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

PROTO_112:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructAssetPermissionsUrl"]
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

PROTO_113:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_networkImp"]
        3 GETTABLEKS                       R3 R0 K1 ["responseBody"]
        5 NAMECALL                         R1 R1 K2 ["jsonDecode"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_114:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["reject"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_115:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructAssetBatchGrantPermissionsUrl"]
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
       64 DUPCLOSURE                       R8 K24 [PROTO_114]
       65 CAPTURE                          UPVAL U2
       66 NAMECALL                         R6 R6 K25 ["catch"]
       68 CALL                             R6 2 -1
       69 RETURN                           R6 -1

PROTO_116:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructAssetPermissionsUrl"]
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

PROTO_117:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["constructAssetPermissionsUrl"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["shouldDebugUrls"]
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+21]
       10 GETIMPORT                        R3 K3 [print]
       12 LOADK                            R4 K4 ["NetworkInterface:%s()"]
       13 LOADK                            R6 K5 ["getAssetPermissions"]
       14 NAMECALL                         R4 R4 K6 ["format"]
       16 CALL                             R4 2 -1
       17 CALL                             R3 -1 0
       18 GETIMPORT                        R3 K3 [print]
       20 LOADK                            R4 K7 ["\t%s %s"]
       21 LOADK                            R7 K9 ["GET"]
       22 NAMECALL                         R7 R7 K10 ["upper"]
       24 CALL                             R7 1 1
       25 ORK                              R6 R7 K8 ["method=nil"]
       26 ORK                              R7 R2 K11 ["url=nil"]
       27 NAMECALL                         R4 R4 K6 ["format"]
       29 CALL                             R4 3 -1
       30 CALL                             R3 -1 0
       31 GETTABLEKS                       R3 R0 K12 ["_networkImp"]
       33 MOVE                             R5 R2
       34 NAMECALL                         R3 R3 K13 ["httpGetJson"]
       36 CALL                             R3 2 -1
       37 RETURN                           R3 -1

PROTO_118:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_networkImp"]
        3 DUPTABLE                         R2 K3 [{"actions", "assetIds"}]
        4 GETUPVAL                         R3 1
        5 SETTABLEKS                       R3 R2 K1 ["actions"]
        7 GETUPVAL                         R3 2
        8 SETTABLEKS                       R3 R2 K2 ["assetIds"]
       10 NAMECALL                         R0 R0 K4 ["jsonEncode"]
       12 CALL                             R0 2 1
       13 GETUPVAL                         R1 3
       14 GETUPVAL                         R2 4
       15 GETTABLEKS                       R2 R2 K5 ["shouldDebugUrls"]
       17 CALL                             R2 0 1
       18 JUMPIFNOT                        R2 ; [+21]
       19 GETIMPORT                        R2 K7 [print]
       21 LOADK                            R3 K8 ["NetworkInterface:%s()"]
       22 LOADK                            R5 K9 ["postAssetCheckPermissions"]
       23 NAMECALL                         R3 R3 K10 ["format"]
       25 CALL                             R3 2 -1
       26 CALL                             R2 -1 0
       27 GETIMPORT                        R2 K7 [print]
       29 LOADK                            R3 K11 ["\t%s %s"]
       30 LOADK                            R6 K13 ["POST"]
       31 NAMECALL                         R6 R6 K14 ["upper"]
       33 CALL                             R6 1 1
       34 ORK                              R5 R6 K12 ["method=nil"]
       35 ORK                              R6 R1 K15 ["url=nil"]
       36 NAMECALL                         R3 R3 K10 ["format"]
       38 CALL                             R3 3 -1
       39 CALL                             R2 -1 0
       40 GETUPVAL                         R1 0
       41 GETTABLEKS                       R1 R1 K0 ["_networkImp"]
       43 GETUPVAL                         R3 3
       44 MOVE                             R4 R0
       45 NAMECALL                         R1 R1 K16 ["httpPostJson"]
       47 CALL                             R1 3 -1
       48 RETURN                           R1 -1

PROTO_119:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructAssetCheckPermissionsUrl"]
        3 CALL                             R3 0 1
        4 GETUPVAL                         R4 1
        5 NEWCLOSURE                       R5 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R3
       10 CAPTURE                          UPVAL U2
       11 CALL                             R4 1 -1
       12 RETURN                           R4 -1

PROTO_120:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["shouldDebugUrls"]
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+21]
        6 GETIMPORT                        R1 K2 [print]
        8 LOADK                            R2 K3 ["NetworkInterface:%s()"]
        9 LOADK                            R4 K4 ["getItemUploadFee"]
       10 NAMECALL                         R2 R2 K5 ["format"]
       12 CALL                             R2 2 -1
       13 CALL                             R1 -1 0
       14 GETIMPORT                        R1 K2 [print]
       16 LOADK                            R2 K6 ["\t%s %s"]
       17 LOADK                            R5 K8 ["GET"]
       18 NAMECALL                         R5 R5 K9 ["upper"]
       20 CALL                             R5 1 1
       21 ORK                              R4 R5 K7 ["method=nil"]
       22 ORK                              R5 R0 K10 ["url=nil"]
       23 NAMECALL                         R2 R2 K5 ["format"]
       25 CALL                             R2 3 -1
       26 CALL                             R1 -1 0
       27 GETUPVAL                         R0 2
       28 GETTABLEKS                       R0 R0 K11 ["_networkImp"]
       30 GETUPVAL                         R2 0
       31 NAMECALL                         R0 R0 K12 ["httpGetJson"]
       33 CALL                             R0 2 -1
       34 RETURN                           R0 -1

PROTO_121:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructGetItemUploadFeeUrl"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 1
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          VAL R3
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R0
       11 CALL                             R4 1 -1
       12 RETURN                           R4 -1

PROTO_122:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["shouldDebugUrls"]
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+21]
        6 GETIMPORT                        R1 K2 [print]
        8 LOADK                            R2 K3 ["NetworkInterface:%s()"]
        9 LOADK                            R4 K4 ["getAssetTypeAgents"]
       10 NAMECALL                         R2 R2 K5 ["format"]
       12 CALL                             R2 2 -1
       13 CALL                             R1 -1 0
       14 GETIMPORT                        R1 K2 [print]
       16 LOADK                            R2 K6 ["\t%s %s"]
       17 LOADK                            R5 K8 ["GET"]
       18 NAMECALL                         R5 R5 K9 ["upper"]
       20 CALL                             R5 1 1
       21 ORK                              R4 R5 K7 ["method=nil"]
       22 ORK                              R5 R0 K10 ["url=nil"]
       23 NAMECALL                         R2 R2 K5 ["format"]
       25 CALL                             R2 3 -1
       26 CALL                             R1 -1 0
       27 GETUPVAL                         R0 2
       28 GETTABLEKS                       R0 R0 K11 ["_networkImp"]
       30 GETUPVAL                         R2 0
       31 NAMECALL                         R0 R0 K12 ["httpGetJson"]
       33 CALL                             R0 2 -1
       34 RETURN                           R0 -1

PROTO_123:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["constructAssetTypeAgentsUrl"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R2
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R0
       10 CALL                             R3 1 -1
       11 RETURN                           R3 -1

PROTO_124:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["constructToolboxAutocompleteUrl"]
        3 MOVE                             R5 R1
        4 MOVE                             R6 R2
        5 MOVE                             R7 R3
        6 CALL                             R4 3 1
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K1 ["shouldDebugUrls"]
       10 CALL                             R5 0 1
       11 JUMPIFNOT                        R5 ; [+21]
       12 GETIMPORT                        R5 K3 [print]
       14 LOADK                            R6 K4 ["NetworkInterface:%s()"]
       15 LOADK                            R8 K5 ["getAutocompleteResults"]
       16 NAMECALL                         R6 R6 K6 ["format"]
       18 CALL                             R6 2 -1
       19 CALL                             R5 -1 0
       20 GETIMPORT                        R5 K3 [print]
       22 LOADK                            R6 K7 ["\t%s %s"]
       23 LOADK                            R9 K9 ["GET"]
       24 NAMECALL                         R9 R9 K10 ["upper"]
       26 CALL                             R9 1 1
       27 ORK                              R8 R9 K8 ["method=nil"]
       28 ORK                              R9 R4 K11 ["url=nil"]
       29 NAMECALL                         R6 R6 K6 ["format"]
       31 CALL                             R6 3 -1
       32 CALL                             R5 -1 0
       33 GETTABLEKS                       R5 R0 K12 ["_networkImp"]
       35 MOVE                             R7 R4
       36 NAMECALL                         R5 R5 K13 ["httpGetJson"]
       38 CALL                             R5 2 -1
       39 RETURN                           R5 -1

PROTO_125:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructGetHomeConfigurationUrl"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K1 ["shouldDebugUrls"]
        9 CALL                             R4 0 1
       10 JUMPIFNOT                        R4 ; [+21]
       11 GETIMPORT                        R4 K3 [print]
       13 LOADK                            R5 K4 ["NetworkInterface:%s()"]
       14 LOADK                            R7 K5 ["getHomeConfiguration"]
       15 NAMECALL                         R5 R5 K6 ["format"]
       17 CALL                             R5 2 -1
       18 CALL                             R4 -1 0
       19 GETIMPORT                        R4 K3 [print]
       21 LOADK                            R5 K7 ["\t%s %s"]
       22 LOADK                            R8 K9 ["GET"]
       23 NAMECALL                         R8 R8 K10 ["upper"]
       25 CALL                             R8 1 1
       26 ORK                              R7 R8 K8 ["method=nil"]
       27 ORK                              R8 R3 K11 ["url=nil"]
       28 NAMECALL                         R5 R5 K6 ["format"]
       30 CALL                             R5 3 -1
       31 CALL                             R4 -1 0
       32 GETTABLEKS                       R4 R0 K12 ["_networkImp"]
       34 MOVE                             R6 R3
       35 NAMECALL                         R4 R4 K13 ["httpGetJson"]
       37 CALL                             R4 2 -1
       38 RETURN                           R4 -1

PROTO_126:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getCreatorMarketplaceQuotas"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K1 ["shouldDebugUrls"]
        9 CALL                             R4 0 1
       10 JUMPIFNOT                        R4 ; [+21]
       11 GETIMPORT                        R4 K3 [print]
       13 LOADK                            R5 K4 ["NetworkInterface:%s()"]
       14 LOADK                            R7 K0 ["getCreatorMarketplaceQuotas"]
       15 NAMECALL                         R5 R5 K5 ["format"]
       17 CALL                             R5 2 -1
       18 CALL                             R4 -1 0
       19 GETIMPORT                        R4 K3 [print]
       21 LOADK                            R5 K6 ["\t%s %s"]
       22 LOADK                            R8 K8 ["GET"]
       23 NAMECALL                         R8 R8 K9 ["upper"]
       25 CALL                             R8 1 1
       26 ORK                              R7 R8 K7 ["method=nil"]
       27 ORK                              R8 R3 K10 ["url=nil"]
       28 NAMECALL                         R5 R5 K5 ["format"]
       30 CALL                             R5 3 -1
       31 CALL                             R4 -1 0
       32 GETTABLEKS                       R4 R0 K11 ["_networkImp"]
       34 MOVE                             R6 R3
       35 NAMECALL                         R4 R4 K12 ["httpGetJson"]
       37 CALL                             R4 2 -1
       38 RETURN                           R4 -1

PROTO_127:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["constructPublishingRequirementsUrl"]
        3 MOVE                             R5 R1
        4 MOVE                             R6 R2
        5 MOVE                             R7 R3
        6 LOADK                            R8 K1 ["Creator"]
        7 CALL                             R4 4 1
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K2 ["shouldDebugUrls"]
       11 CALL                             R5 0 1
       12 JUMPIFNOT                        R5 ; [+21]
       13 GETIMPORT                        R5 K4 [print]
       15 LOADK                            R6 K5 ["NetworkInterface:%s()"]
       16 LOADK                            R8 K6 ["getPublishingRequirements"]
       17 NAMECALL                         R6 R6 K7 ["format"]
       19 CALL                             R6 2 -1
       20 CALL                             R5 -1 0
       21 GETIMPORT                        R5 K4 [print]
       23 LOADK                            R6 K8 ["\t%s %s"]
       24 LOADK                            R9 K10 ["GET"]
       25 NAMECALL                         R9 R9 K11 ["upper"]
       27 CALL                             R9 1 1
       28 ORK                              R8 R9 K9 ["method=nil"]
       29 ORK                              R9 R4 K12 ["url=nil"]
       30 NAMECALL                         R6 R6 K7 ["format"]
       32 CALL                             R6 3 -1
       33 CALL                             R5 -1 0
       34 GETTABLEKS                       R5 R0 K13 ["_networkImp"]
       36 MOVE                             R7 R4
       37 NAMECALL                         R5 R5 K14 ["httpGetJson"]
       39 CALL                             R5 2 -1
       40 RETURN                           R5 -1

PROTO_128:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["shouldDebugUrls"]
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+21]
        6 GETIMPORT                        R1 K2 [print]
        8 LOADK                            R2 K3 ["NetworkInterface:%s()"]
        9 LOADK                            R4 K4 ["deleteAssetMedia"]
       10 NAMECALL                         R2 R2 K5 ["format"]
       12 CALL                             R2 2 -1
       13 CALL                             R1 -1 0
       14 GETIMPORT                        R1 K2 [print]
       16 LOADK                            R2 K6 ["\t%s %s"]
       17 LOADK                            R5 K8 ["DELETE"]
       18 NAMECALL                         R5 R5 K9 ["upper"]
       20 CALL                             R5 1 1
       21 ORK                              R4 R5 K7 ["method=nil"]
       22 ORK                              R5 R0 K10 ["url=nil"]
       23 NAMECALL                         R2 R2 K5 ["format"]
       25 CALL                             R2 3 -1
       26 CALL                             R1 -1 0
       27 GETUPVAL                         R0 2
       28 GETTABLEKS                       R0 R0 K11 ["_networkImp"]
       30 GETUPVAL                         R2 0
       31 NAMECALL                         R0 R0 K12 ["httpDelete"]
       33 CALL                             R0 2 -1
       34 RETURN                           R0 -1

PROTO_129:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructDeleteAssetMediaUrl"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 1
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          VAL R3
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R0
       11 CALL                             R4 1 -1
       12 RETURN                           R4 -1

PROTO_130:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["postSetAssetMediaOrder"]
        2 LOADK                            R2 K1 ["POST"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 CALL                             R0 4 0
        6 GETUPVAL                         R0 3
        7 GETTABLEKS                       R0 R0 K2 ["_networkImp"]
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 2
       11 NAMECALL                         R0 R0 K3 ["httpPostJson"]
       13 CALL                             R0 3 -1
       14 RETURN                           R0 -1

PROTO_131:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructPostSetAssetMediaOrder"]
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

PROTO_132:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_networkImp"]
        3 GETTABLEKS                       R3 R0 K1 ["Body"]
        5 NAMECALL                         R1 R1 K2 ["jsonDecode"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_133:
        0 GETTABLEKS                       R2 R0 K0 ["Body"]
        2 JUMPIFNOT                        R2 ; [+9]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["_networkImp"]
        6 GETTABLEKS                       R3 R0 K0 ["Body"]
        8 NAMECALL                         R1 R1 K2 ["jsonDecode"]
       10 CALL                             R1 2 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K0 ["Body"]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K3 ["reject"]
       18 MOVE                             R3 R0
       19 CALL                             R2 1 -1
       20 RETURN                           R2 -1

PROTO_134:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["postUploadAssetMedia"]
        2 LOADK                            R2 K1 ["POST FORM-DATA"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 CALL                             R0 4 0
        6 GETUPVAL                         R0 3
        7 GETTABLEKS                       R0 R0 K2 ["_networkImp"]
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

PROTO_135:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructPostUploadAssetMedia"]
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

PROTO_136:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["constructGetUniverseInfo"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["shouldDebugUrls"]
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+21]
       10 GETIMPORT                        R3 K3 [print]
       12 LOADK                            R4 K4 ["NetworkInterface:%s()"]
       13 LOADK                            R6 K5 ["getUniverseInfo"]
       14 NAMECALL                         R4 R4 K6 ["format"]
       16 CALL                             R4 2 -1
       17 CALL                             R3 -1 0
       18 GETIMPORT                        R3 K3 [print]
       20 LOADK                            R4 K7 ["\t%s %s"]
       21 LOADK                            R7 K9 ["GET"]
       22 NAMECALL                         R7 R7 K10 ["upper"]
       24 CALL                             R7 1 1
       25 ORK                              R6 R7 K8 ["method=nil"]
       26 ORK                              R7 R2 K11 ["url=nil"]
       27 NAMECALL                         R4 R4 K6 ["format"]
       29 CALL                             R4 3 -1
       30 CALL                             R3 -1 0
       31 GETTABLEKS                       R3 R0 K12 ["_networkImp"]
       33 MOVE                             R5 R2
       34 NAMECALL                         R3 R3 K13 ["httpGet"]
       36 CALL                             R3 2 -1
       37 RETURN                           R3 -1

PROTO_137:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["constructCodeUnderstandingSummaryUrl"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["shouldDebugUrls"]
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+21]
       10 GETIMPORT                        R3 K3 [print]
       12 LOADK                            R4 K4 ["NetworkInterface:%s()"]
       13 LOADK                            R6 K5 ["getCodeSummary"]
       14 NAMECALL                         R4 R4 K6 ["format"]
       16 CALL                             R4 2 -1
       17 CALL                             R3 -1 0
       18 GETIMPORT                        R3 K3 [print]
       20 LOADK                            R4 K7 ["\t%s %s"]
       21 LOADK                            R7 K9 ["GET"]
       22 NAMECALL                         R7 R7 K10 ["upper"]
       24 CALL                             R7 1 1
       25 ORK                              R6 R7 K8 ["method=nil"]
       26 ORK                              R7 R2 K11 ["url=nil"]
       27 NAMECALL                         R4 R4 K6 ["format"]
       29 CALL                             R4 3 -1
       30 CALL                             R3 -1 0
       31 GETTABLEKS                       R3 R0 K12 ["_networkImp"]
       33 MOVE                             R5 R2
       34 NAMECALL                         R3 R3 K13 ["httpGetJson"]
       36 CALL                             R3 2 -1
       37 RETURN                           R3 -1

PROTO_138:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructGetFiatProductUrl"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K1 ["shouldDebugUrls"]
        9 CALL                             R4 0 1
       10 JUMPIFNOT                        R4 ; [+21]
       11 GETIMPORT                        R4 K3 [print]
       13 LOADK                            R5 K4 ["NetworkInterface:%s()"]
       14 LOADK                            R7 K5 ["getFiatProduct"]
       15 NAMECALL                         R5 R5 K6 ["format"]
       17 CALL                             R5 2 -1
       18 CALL                             R4 -1 0
       19 GETIMPORT                        R4 K3 [print]
       21 LOADK                            R5 K7 ["\t%s %s"]
       22 LOADK                            R8 K9 ["GET"]
       23 NAMECALL                         R8 R8 K10 ["upper"]
       25 CALL                             R8 1 1
       26 ORK                              R7 R8 K8 ["method=nil"]
       27 ORK                              R8 R3 K11 ["url=nil"]
       28 NAMECALL                         R5 R5 K6 ["format"]
       30 CALL                             R5 3 -1
       31 CALL                             R4 -1 0
       32 GETTABLEKS                       R4 R0 K12 ["_networkImp"]
       34 MOVE                             R6 R3
       35 NAMECALL                         R4 R4 K13 ["httpGetJson"]
       37 CALL                             R4 2 -1
       38 RETURN                           R4 -1

PROTO_139:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["shouldDebugUrls"]
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+21]
        6 GETIMPORT                        R1 K2 [print]
        8 LOADK                            R2 K3 ["NetworkInterface:%s()"]
        9 LOADK                            R4 K4 ["getAllowedGroupsForAction"]
       10 NAMECALL                         R2 R2 K5 ["format"]
       12 CALL                             R2 2 -1
       13 CALL                             R1 -1 0
       14 GETIMPORT                        R1 K2 [print]
       16 LOADK                            R2 K6 ["\t%s %s"]
       17 LOADK                            R5 K8 ["GET"]
       18 NAMECALL                         R5 R5 K9 ["upper"]
       20 CALL                             R5 1 1
       21 ORK                              R4 R5 K7 ["method=nil"]
       22 ORK                              R5 R0 K10 ["url=nil"]
       23 NAMECALL                         R2 R2 K5 ["format"]
       25 CALL                             R2 3 -1
       26 CALL                             R1 -1 0
       27 GETUPVAL                         R0 2
       28 GETTABLEKS                       R0 R0 K11 ["_networkImp"]
       30 GETUPVAL                         R2 0
       31 NAMECALL                         R0 R0 K12 ["httpGetJson"]
       33 CALL                             R0 2 -1
       34 RETURN                           R0 -1

PROTO_140:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["constructAllowedGroupsForActionUrl"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R2
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R0
       10 CALL                             R3 1 -1
       11 RETURN                           R3 -1

PROTO_141:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["shouldDebugUrls"]
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+21]
        6 GETIMPORT                        R1 K2 [print]
        8 LOADK                            R2 K3 ["NetworkInterface:%s()"]
        9 LOADK                            R4 K4 ["getAvatarAssetPrivacy"]
       10 NAMECALL                         R2 R2 K5 ["format"]
       12 CALL                             R2 2 -1
       13 CALL                             R1 -1 0
       14 GETIMPORT                        R1 K2 [print]
       16 LOADK                            R2 K6 ["\t%s %s"]
       17 LOADK                            R5 K8 ["POST"]
       18 NAMECALL                         R5 R5 K9 ["upper"]
       20 CALL                             R5 1 1
       21 ORK                              R4 R5 K7 ["method=nil"]
       22 ORK                              R5 R0 K10 ["url=nil"]
       23 NAMECALL                         R2 R2 K5 ["format"]
       25 CALL                             R2 3 -1
       26 CALL                             R1 -1 0
       27 GETUPVAL                         R0 2
       28 GETTABLEKS                       R0 R0 K11 ["_networkImp"]
       30 GETUPVAL                         R2 0
       31 GETUPVAL                         R3 3
       32 NAMECALL                         R0 R0 K12 ["httpPostJson"]
       34 CALL                             R0 3 -1
       35 RETURN                           R0 -1

PROTO_142:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["constructBatchAssetAccessPropertiesUrl"]
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
       31 CAPTURE                          VAL R2
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R4
       35 CALL                             R5 1 -1
       36 RETURN                           R5 -1

PROTO_143:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["makeAvatarAssetsOpenUse"]
        2 LOADK                            R2 K1 ["PATCH"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 CALL                             R0 4 0
        6 GETUPVAL                         R0 3
        7 GETTABLEKS                       R0 R0 K2 ["_networkImp"]
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 2
       11 NAMECALL                         R0 R0 K3 ["httpPatch"]
       13 CALL                             R0 3 -1
       14 RETURN                           R0 -1

PROTO_144:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["constructAssetBatchGrantPermissionsUrl"]
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

PROTO_145:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["reject"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_146:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["constructGetAssetByIdUrl"]
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
       34 DUPCLOSURE                       R6 K16 [PROTO_145]
       35 CAPTURE                          UPVAL U2
       36 NAMECALL                         R4 R4 K17 ["catch"]
       38 CALL                             R4 2 -1
       39 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Src"]
       11 GETTABLEKS                       R1 R1 K4 ["Util"]
       13 GETIMPORT                        R2 K6 [game]
       15 LOADK                            R4 K7 ["ToolboxSetMarketplaceModelsAsPackagesForAll"]
       16 NAMECALL                         R2 R2 K8 ["GetFastFlag"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K6 [game]
       21 LOADK                            R5 K9 ["ToolboxSetMarketplaceModelsAsPackagesForIXP3"]
       22 NAMECALL                         R3 R3 K8 ["GetFastFlag"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R5 R0 K3 ["Src"]
       29 GETTABLEKS                       R5 R5 K4 ["Util"]
       31 GETTABLEKS                       R5 R5 K12 ["SharedFlags"]
       33 GETTABLEKS                       R5 R5 K13 ["getFFlagEnableUGCForAllChecks"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K11 [require]
       38 GETTABLEKS                       R6 R0 K3 ["Src"]
       40 GETTABLEKS                       R6 R6 K4 ["Util"]
       42 GETTABLEKS                       R6 R6 K12 ["SharedFlags"]
       44 GETTABLEKS                       R6 R6 K14 ["getFFlagToolboxCodeUnderstandingSummary"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K11 [require]
       49 GETTABLEKS                       R7 R0 K3 ["Src"]
       51 GETTABLEKS                       R7 R7 K15 ["Flags"]
       53 GETTABLEKS                       R7 R7 K16 ["getFFlagToolboxDisableContextualRecommendationRetries"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K11 [require]
       58 GETTABLEKS                       R8 R1 K12 ["SharedFlags"]
       60 GETTABLEKS                       R8 R8 K17 ["getFFlagToolboxRemoveRobuxProductEntirely"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K11 [require]
       65 GETTABLEKS                       R9 R0 K3 ["Src"]
       67 GETTABLEKS                       R9 R9 K15 ["Flags"]
       69 GETTABLEKS                       R9 R9 K18 ["getFFlagQualityFiltersInToolboxSearch"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K11 [require]
       74 GETTABLEKS                       R10 R1 K12 ["SharedFlags"]
       76 GETTABLEKS                       R10 R10 K19 ["getFFlagToolboxAssetConfigOnboardingLink"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K11 [require]
       81 GETTABLEKS                       R11 R1 K12 ["SharedFlags"]
       83 GETTABLEKS                       R11 R11 K20 ["getFFlagEnableUGCBundleUploadBodyScale"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K11 [require]
       88 GETTABLEKS                       R12 R1 K12 ["SharedFlags"]
       90 GETTABLEKS                       R12 R12 K21 ["getFFlagEnableBodyColorSetUploadSupport"]
       92 CALL                             R11 1 1
       93 GETIMPORT                        R12 K11 [require]
       95 GETTABLEKS                       R13 R0 K3 ["Src"]
       97 GETTABLEKS                       R13 R13 K15 ["Flags"]
       99 GETTABLEKS                       R13 R13 K22 ["getFFlagEnableUploadingGroupBundles"]
      101 CALL                             R12 1 1
      102 GETIMPORT                        R13 K11 [require]
      104 GETTABLEKS                       R14 R0 K3 ["Src"]
      106 GETTABLEKS                       R14 R14 K15 ["Flags"]
      108 GETTABLEKS                       R14 R14 K23 ["getFFlagCheckAvatarAssetPrivacy"]
      110 CALL                             R13 1 1
      111 GETIMPORT                        R14 K11 [require]
      113 GETTABLEKS                       R15 R0 K24 ["Libs"]
      115 GETTABLEKS                       R15 R15 K25 ["Http"]
      117 GETTABLEKS                       R15 R15 K26 ["Networking"]
      119 CALL                             R14 1 1
      120 GETTABLEKS                       R15 R0 K27 ["Packages"]
      122 GETIMPORT                        R16 K11 [require]
      124 GETTABLEKS                       R17 R15 K28 ["Framework"]
      126 CALL                             R16 1 1
      127 GETIMPORT                        R17 K11 [require]
      129 GETTABLEKS                       R18 R15 K29 ["Dash"]
      131 CALL                             R17 1 1
      132 GETTABLEKS                       R18 R16 K4 ["Util"]
      134 GETTABLEKS                       R18 R18 K30 ["Promise"]
      136 GETIMPORT                        R19 K11 [require]
      138 GETTABLEKS                       R20 R1 K31 ["DebugFlags"]
      140 CALL                             R19 1 1
      141 GETIMPORT                        R20 K11 [require]
      143 GETTABLEKS                       R21 R1 K32 ["getUserId"]
      145 CALL                             R20 1 1
      146 GETIMPORT                        R21 K11 [require]
      148 GETTABLEKS                       R22 R1 K33 ["PageInfoHelper"]
      150 CALL                             R21 1 1
      151 GETIMPORT                        R22 K11 [require]
      153 GETTABLEKS                       R23 R1 K34 ["Urls"]
      155 CALL                             R22 1 1
      156 GETIMPORT                        R23 K11 [require]
      158 GETTABLEKS                       R24 R1 K35 ["Constants"]
      160 CALL                             R23 1 1
      161 GETIMPORT                        R24 K11 [require]
      163 GETTABLEKS                       R25 R1 K36 ["AssetQualityUtil"]
      165 CALL                             R24 1 1
      166 GETIMPORT                        R25 K11 [require]
      168 GETTABLEKS                       R26 R0 K3 ["Src"]
      170 GETTABLEKS                       R26 R26 K37 ["Types"]
      172 GETTABLEKS                       R26 R26 K38 ["AssetQuotaTypes"]
      174 CALL                             R25 1 1
      175 GETIMPORT                        R26 K11 [require]
      177 GETTABLEKS                       R27 R0 K3 ["Src"]
      179 GETTABLEKS                       R27 R27 K37 ["Types"]
      181 GETTABLEKS                       R27 R27 K39 ["AssetSubTypes"]
      183 CALL                             R26 1 1
      184 GETIMPORT                        R27 K11 [require]
      186 GETTABLEKS                       R28 R0 K3 ["Src"]
      188 GETTABLEKS                       R28 R28 K37 ["Types"]
      190 GETTABLEKS                       R28 R28 K40 ["HomeTypes"]
      192 CALL                             R27 1 1
      193 GETIMPORT                        R28 K11 [require]
      195 GETTABLEKS                       R29 R0 K3 ["Src"]
      197 GETTABLEKS                       R29 R29 K37 ["Types"]
      199 GETTABLEKS                       R29 R29 K41 ["Category"]
      201 CALL                             R28 1 1
      202 GETIMPORT                        R29 K11 [require]
      204 GETTABLEKS                       R30 R0 K3 ["Src"]
      206 GETTABLEKS                       R30 R30 K4 ["Util"]
      208 GETTABLEKS                       R30 R30 K42 ["AssetConfigUtil"]
      210 CALL                             R29 1 1
      211 GETIMPORT                        R30 K11 [require]
      213 GETTABLEKS                       R31 R1 K43 ["ToolboxUtilities"]
      215 CALL                             R30 1 1
      216 GETIMPORT                        R31 K6 [game]
      218 LOADK                            R33 K44 ["ToolboxGrantUniverseAudioPermissionsTimeoutInMS"]
      219 NAMECALL                         R31 R31 K45 ["GetFastInt"]
      221 CALL                             R31 2 1
      222 GETIMPORT                        R32 K6 [game]
      224 LOADK                            R34 K46 ["HttpService"]
      225 NAMECALL                         R32 R32 K47 ["GetService"]
      227 CALL                             R32 2 1
      228 NEWTABLE                         R33 128 0
      230 SETTABLEKS                       R33 R33 K48 ["__index"]
      232 GETIMPORT                        R34 K11 [require]
      234 GETTABLEKS                       R35 R15 K49 ["Cryo"]
      236 CALL                             R34 1 1
      237 GETIMPORT                        R35 K11 [require]
      239 GETTABLEKS                       R36 R0 K3 ["Src"]
      241 GETTABLEKS                       R36 R36 K50 ["Reducers"]
      243 GETTABLEKS                       R36 R36 K51 ["PageInfo"]
      245 CALL                             R35 1 1
      246 DUPCLOSURE                       R36 K52 [PROTO_0]
      247 CAPTURE                          VAL R14
      248 CAPTURE                          VAL R33
      249 SETTABLEKS                       R36 R33 K53 ["new"]
      251 DUPCLOSURE                       R36 K54 [PROTO_1]
      252 CAPTURE                          VAL R19
      253 DUPCLOSURE                       R37 K55 [PROTO_3]
      254 CAPTURE                          VAL R18
      255 CAPTURE                          VAL R37
      256 DUPCLOSURE                       R38 K56 [PROTO_4]
      257 CAPTURE                          VAL R32
      258 DUPCLOSURE                       R39 K57 [PROTO_5]
      259 SETTABLEKS                       R39 R33 K58 ["jsonEncode"]
      261 DUPCLOSURE                       R39 K59 [PROTO_7]
      262 CAPTURE                          VAL R21
      263 CAPTURE                          VAL R22
      264 CAPTURE                          VAL R23
      265 CAPTURE                          VAL R37
      266 CAPTURE                          VAL R19
      267 SETTABLEKS                       R39 R33 K60 ["getAssets"]
      269 DUPCLOSURE                       R39 K61 [PROTO_9]
      270 CAPTURE                          VAL R28
      271 CAPTURE                          VAL R30
      272 CAPTURE                          VAL R17
      273 CAPTURE                          VAL R8
      274 CAPTURE                          VAL R24
      275 CAPTURE                          VAL R22
      276 CAPTURE                          VAL R6
      277 CAPTURE                          VAL R23
      278 CAPTURE                          VAL R37
      279 CAPTURE                          VAL R19
      280 SETTABLEKS                       R39 R33 K62 ["getToolboxItems"]
      282 DUPCLOSURE                       R39 K63 [PROTO_11]
      283 CAPTURE                          VAL R22
      284 CAPTURE                          VAL R37
      285 CAPTURE                          VAL R19
      286 SETTABLEKS                       R39 R33 K64 ["getItemDetailsAssetIds"]
      288 DUPCLOSURE                       R39 K65 [PROTO_12]
      289 SETTABLEKS                       R39 R33 K66 ["getItemDetails"]
      291 DUPCLOSURE                       R39 K67 [PROTO_14]
      292 CAPTURE                          VAL R21
      293 CAPTURE                          VAL R22
      294 CAPTURE                          VAL R23
      295 CAPTURE                          VAL R37
      296 CAPTURE                          VAL R19
      297 SETTABLEKS                       R39 R33 K68 ["getDevelopAsset"]
      299 DUPCLOSURE                       R39 K69 [PROTO_16]
      300 CAPTURE                          VAL R22
      301 CAPTURE                          VAL R37
      302 CAPTURE                          VAL R19
      303 SETTABLEKS                       R39 R33 K70 ["getAllowedItemTypes"]
      305 DUPCLOSURE                       R39 K71 [PROTO_19]
      306 CAPTURE                          VAL R21
      307 CAPTURE                          VAL R20
      308 CAPTURE                          VAL R28
      309 CAPTURE                          VAL R29
      310 CAPTURE                          VAL R22
      311 CAPTURE                          VAL R23
      312 CAPTURE                          VAL R18
      313 CAPTURE                          VAL R37
      314 CAPTURE                          VAL R19
      315 CAPTURE                          VAL R34
      316 SETTABLEKS                       R39 R33 K72 ["getAssetCreations"]
      318 DUPCLOSURE                       R39 K73 [PROTO_22]
      319 CAPTURE                          VAL R21
      320 CAPTURE                          VAL R28
      321 CAPTURE                          VAL R29
      322 CAPTURE                          VAL R22
      323 CAPTURE                          VAL R23
      324 CAPTURE                          VAL R18
      325 CAPTURE                          VAL R37
      326 CAPTURE                          VAL R19
      327 CAPTURE                          VAL R34
      328 SETTABLEKS                       R39 R33 K74 ["getAssetGroupCreations"]
      330 DUPCLOSURE                       R39 K75 [PROTO_24]
      331 CAPTURE                          VAL R22
      332 CAPTURE                          VAL R37
      333 CAPTURE                          VAL R19
      334 SETTABLEKS                       R39 R33 K76 ["getItem"]
      336 DUPCLOSURE                       R39 K77 [PROTO_26]
      337 CAPTURE                          VAL R22
      338 CAPTURE                          VAL R37
      339 CAPTURE                          VAL R19
      340 SETTABLEKS                       R39 R33 K78 ["getItemsByCreator"]
      342 DUPCLOSURE                       R39 K79 [PROTO_28]
      343 CAPTURE                          VAL R22
      344 CAPTURE                          VAL R37
      345 CAPTURE                          VAL R19
      346 SETTABLEKS                       R39 R33 K80 ["getCreatorInfo"]
      348 MOVE                             R39 R4
      349 CALL                             R39 0 1
      350 JUMPIFNOT                        R39 ; [+6]
      351 DUPCLOSURE                       R39 K81 [PROTO_30]
      352 CAPTURE                          VAL R22
      353 CAPTURE                          VAL R37
      354 CAPTURE                          VAL R19
      355 SETTABLEKS                       R39 R33 K82 ["getUploadPermissionStatus"]
      357 DUPCLOSURE                       R39 K83 [PROTO_32]
      358 CAPTURE                          VAL R22
      359 CAPTURE                          VAL R37
      360 CAPTURE                          VAL R19
      361 SETTABLEKS                       R39 R33 K84 ["getBundleMetadata"]
      363 DUPCLOSURE                       R39 K85 [PROTO_35]
      364 CAPTURE                          VAL R22
      365 CAPTURE                          VAL R10
      366 CAPTURE                          VAL R11
      367 CAPTURE                          VAL R12
      368 CAPTURE                          VAL R36
      369 CAPTURE                          VAL R18
      370 SETTABLEKS                       R39 R33 K86 ["postBundleCreationContext"]
      372 DUPCLOSURE                       R39 K87 [PROTO_38]
      373 CAPTURE                          VAL R22
      374 CAPTURE                          VAL R36
      375 CAPTURE                          VAL R18
      376 SETTABLEKS                       R39 R33 K88 ["postCreateBundle"]
      378 DUPCLOSURE                       R39 K89 [PROTO_40]
      379 CAPTURE                          VAL R22
      380 CAPTURE                          VAL R37
      381 CAPTURE                          VAL R19
      382 SETTABLEKS                       R39 R33 K90 ["getBundleCreationStatus"]
      384 DUPCLOSURE                       R39 K91 [PROTO_42]
      385 CAPTURE                          VAL R22
      386 CAPTURE                          VAL R37
      387 CAPTURE                          VAL R19
      388 SETTABLEKS                       R39 R33 K92 ["getDefaultCreateBundleDataSharing"]
      390 DUPCLOSURE                       R39 K93 [PROTO_44]
      391 CAPTURE                          VAL R22
      392 CAPTURE                          VAL R37
      393 CAPTURE                          VAL R36
      394 SETTABLEKS                       R39 R33 K94 ["postCreateBundleDataSharing"]
      396 DUPCLOSURE                       R39 K95 [PROTO_46]
      397 CAPTURE                          VAL R22
      398 CAPTURE                          VAL R37
      399 CAPTURE                          VAL R36
      400 SETTABLEKS                       R39 R33 K96 ["postCreateAvatarAssetDataSharing"]
      402 DUPCLOSURE                       R39 K97 [PROTO_48]
      403 CAPTURE                          VAL R22
      404 CAPTURE                          VAL R37
      405 CAPTURE                          VAL R19
      406 SETTABLEKS                       R39 R33 K98 ["getAssetMediaIds"]
      408 DUPCLOSURE                       R39 K99 [PROTO_50]
      409 CAPTURE                          VAL R22
      410 CAPTURE                          VAL R37
      411 CAPTURE                          VAL R19
      412 SETTABLEKS                       R39 R33 K100 ["getVote"]
      414 DUPCLOSURE                       R39 K101 [PROTO_52]
      415 CAPTURE                          VAL R22
      416 CAPTURE                          VAL R37
      417 CAPTURE                          VAL R36
      418 SETTABLEKS                       R39 R33 K102 ["postVote"]
      420 DUPCLOSURE                       R39 K103 [PROTO_54]
      421 CAPTURE                          VAL R22
      422 CAPTURE                          VAL R37
      423 CAPTURE                          VAL R36
      424 SETTABLEKS                       R39 R33 K104 ["configureSales"]
      426 DUPCLOSURE                       R39 K105 [PROTO_56]
      427 CAPTURE                          VAL R22
      428 CAPTURE                          VAL R37
      429 CAPTURE                          VAL R36
      430 SETTABLEKS                       R39 R33 K106 ["updateSales"]
      432 DUPCLOSURE                       R39 K107 [PROTO_58]
      433 CAPTURE                          VAL R22
      434 CAPTURE                          VAL R37
      435 CAPTURE                          VAL R36
      436 SETTABLEKS                       R39 R33 K108 ["postUnvote"]
      438 DUPCLOSURE                       R39 K109 [PROTO_60]
      439 CAPTURE                          VAL R22
      440 CAPTURE                          VAL R37
      441 CAPTURE                          VAL R36
      442 SETTABLEKS                       R39 R33 K110 ["postInsertAsset"]
      444 DUPCLOSURE                       R39 K111 [PROTO_62]
      445 CAPTURE                          VAL R22
      446 CAPTURE                          VAL R37
      447 CAPTURE                          VAL R19
      448 SETTABLEKS                       R39 R33 K112 ["getManageableGroups"]
      450 DUPCLOSURE                       R39 K113 [PROTO_64]
      451 CAPTURE                          VAL R22
      452 CAPTURE                          VAL R19
      453 SETTABLEKS                       R39 R33 K114 ["getUsers"]
      455 DUPCLOSURE                       R39 K115 [PROTO_65]
      456 CAPTURE                          VAL R22
      457 CAPTURE                          VAL R19
      458 SETTABLEKS                       R39 R33 K116 ["getFavoriteCounts"]
      460 DUPCLOSURE                       R39 K117 [PROTO_66]
      461 CAPTURE                          VAL R22
      462 CAPTURE                          VAL R19
      463 SETTABLEKS                       R39 R33 K118 ["getFavorited"]
      465 DUPCLOSURE                       R39 K119 [PROTO_67]
      466 CAPTURE                          VAL R22
      467 CAPTURE                          VAL R36
      468 SETTABLEKS                       R39 R33 K120 ["createSave"]
      470 DUPCLOSURE                       R39 K121 [PROTO_68]
      471 CAPTURE                          VAL R22
      472 CAPTURE                          VAL R19
      473 SETTABLEKS                       R39 R33 K122 ["deleteSave"]
      475 DUPCLOSURE                       R39 K123 [PROTO_69]
      476 CAPTURE                          VAL R22
      477 CAPTURE                          VAL R19
      478 SETTABLEKS                       R39 R33 K124 ["getSave"]
      480 DUPCLOSURE                       R39 K125 [PROTO_70]
      481 CAPTURE                          VAL R22
      482 CAPTURE                          VAL R19
      483 SETTABLEKS                       R39 R33 K126 ["getDevelopAssetMetadata"]
      485 DUPCLOSURE                       R39 K127 [PROTO_71]
      486 CAPTURE                          VAL R22
      487 CAPTURE                          VAL R19
      488 SETTABLEKS                       R39 R33 K128 ["getVersionHistory"]
      490 DUPCLOSURE                       R39 K129 [PROTO_72]
      491 CAPTURE                          VAL R22
      492 CAPTURE                          VAL R19
      493 SETTABLEKS                       R39 R33 K130 ["postRevertVersion"]
      495 DUPCLOSURE                       R39 K131 [PROTO_73]
      496 CAPTURE                          VAL R22
      497 CAPTURE                          VAL R19
      498 SETTABLEKS                       R39 R33 K132 ["getVersionDescriptions"]
      500 DUPCLOSURE                       R39 K133 [PROTO_74]
      501 CAPTURE                          VAL R22
      502 CAPTURE                          VAL R19
      503 SETTABLEKS                       R39 R33 K134 ["getVersionHistoryWithNotes"]
      505 DUPCLOSURE                       R39 K135 [PROTO_76]
      506 CAPTURE                          VAL R22
      507 CAPTURE                          VAL R37
      508 CAPTURE                          VAL R36
      509 SETTABLEKS                       R39 R33 K136 ["postVersionDescription"]
      511 DUPCLOSURE                       R39 K137 [PROTO_77]
      512 CAPTURE                          VAL R22
      513 CAPTURE                          VAL R36
      514 SETTABLEKS                       R39 R33 K138 ["postFavorite"]
      516 DUPCLOSURE                       R39 K139 [PROTO_78]
      517 CAPTURE                          VAL R22
      518 CAPTURE                          VAL R19
      519 SETTABLEKS                       R39 R33 K140 ["deleteFavorite"]
      521 DUPCLOSURE                       R39 K141 [PROTO_80]
      522 CAPTURE                          VAL R22
      523 CAPTURE                          VAL R36
      524 CAPTURE                          VAL R18
      525 SETTABLEKS                       R39 R33 K142 ["uploadCatalogItem"]
      527 DUPCLOSURE                       R39 K143 [PROTO_82]
      528 CAPTURE                          VAL R22
      529 CAPTURE                          VAL R37
      530 CAPTURE                          VAL R36
      531 SETTABLEKS                       R39 R33 K144 ["uploadCatalogItemFormat"]
      533 DUPCLOSURE                       R39 K145 [PROTO_84]
      534 CAPTURE                          VAL R22
      535 CAPTURE                          VAL R38
      536 CAPTURE                          VAL R36
      537 CAPTURE                          VAL R18
      538 SETTABLEKS                       R39 R33 K146 ["uploadAssetThumbnail"]
      540 DUPCLOSURE                       R39 K147 [PROTO_85]
      541 CAPTURE                          VAL R22
      542 CAPTURE                          VAL R19
      543 SETTABLEKS                       R39 R33 K148 ["getThumbnailStatus"]
      545 DUPCLOSURE                       R39 K149 [PROTO_87]
      546 CAPTURE                          VAL R22
      547 CAPTURE                          VAL R36
      548 CAPTURE                          VAL R18
      549 SETTABLEKS                       R39 R33 K150 ["configureCatalogItem"]
      551 DUPCLOSURE                       R39 K151 [PROTO_88]
      552 CAPTURE                          VAL R22
      553 CAPTURE                          VAL R2
      554 CAPTURE                          VAL R3
      555 CAPTURE                          VAL R36
      556 SETTABLEKS                       R39 R33 K152 ["patchAsset"]
      558 DUPCLOSURE                       R39 K153 [PROTO_89]
      559 CAPTURE                          VAL R22
      560 CAPTURE                          VAL R19
      561 SETTABLEKS                       R39 R33 K154 ["validateAnimation"]
      563 DUPCLOSURE                       R39 K155 [PROTO_90]
      564 CAPTURE                          VAL R32
      565 DUPCLOSURE                       R40 K156 [PROTO_93]
      566 CAPTURE                          VAL R22
      567 CAPTURE                          VAL R19
      568 CAPTURE                          VAL R18
      569 SETTABLEKS                       R40 R33 K157 ["waitForOperation"]
      571 DUPCLOSURE                       R40 K158 [PROTO_96]
      572 CAPTURE                          VAL R22
      573 CAPTURE                          VAL R39
      574 CAPTURE                          VAL R36
      575 CAPTURE                          VAL R18
      576 SETTABLEKS                       R40 R33 K159 ["postUploadAnimation"]
      578 DUPCLOSURE                       R40 K160 [PROTO_99]
      579 CAPTURE                          VAL R22
      580 CAPTURE                          VAL R39
      581 CAPTURE                          VAL R36
      582 CAPTURE                          VAL R18
      583 SETTABLEKS                       R40 R33 K161 ["postOverrideAnimation"]
      585 DUPCLOSURE                       R40 K162 [PROTO_100]
      586 CAPTURE                          VAL R22
      587 CAPTURE                          VAL R19
      588 SETTABLEKS                       R40 R33 K163 ["getIsVerifiedCreator"]
      590 DUPCLOSURE                       R40 K164 [PROTO_101]
      591 CAPTURE                          VAL R22
      592 CAPTURE                          VAL R19
      593 SETTABLEKS                       R40 R33 K165 ["getPluginInfo"]
      595 DUPCLOSURE                       R40 K166 [PROTO_102]
      596 CAPTURE                          VAL R22
      597 CAPTURE                          VAL R19
      598 SETTABLEKS                       R40 R33 K167 ["getLocalUserFriends"]
      600 DUPCLOSURE                       R40 K168 [PROTO_103]
      601 CAPTURE                          VAL R22
      602 SETTABLEKS                       R40 R33 K169 ["postForPackageMetadata"]
      604 DUPCLOSURE                       R40 K170 [PROTO_104]
      605 CAPTURE                          VAL R22
      606 CAPTURE                          VAL R19
      607 SETTABLEKS                       R40 R33 K171 ["getRobuxBalance"]
      609 DUPCLOSURE                       R40 K172 [PROTO_106]
      610 CAPTURE                          VAL R22
      611 CAPTURE                          VAL R36
      612 SETTABLEKS                       R40 R33 K173 ["getHasEditPermissionForAsset"]
      614 DUPCLOSURE                       R40 K174 [PROTO_107]
      615 CAPTURE                          VAL R7
      616 CAPTURE                          VAL R22
      617 CAPTURE                          VAL R19
      618 SETTABLEKS                       R40 R33 K175 ["purchaseAsset"]
      620 DUPCLOSURE                       R40 K176 [PROTO_108]
      621 CAPTURE                          VAL R22
      622 CAPTURE                          VAL R19
      623 SETTABLEKS                       R40 R33 K177 ["getPurchaserStatus"]
      625 MOVE                             R40 R9
      626 CALL                             R40 0 1
      627 JUMPIFNOT                        R40 ; [+5]
      628 DUPCLOSURE                       R40 K178 [PROTO_109]
      629 CAPTURE                          VAL R22
      630 CAPTURE                          VAL R19
      631 SETTABLEKS                       R40 R33 K179 ["getSellerStatus"]
      633 DUPCLOSURE                       R40 K180 [PROTO_110]
      634 CAPTURE                          VAL R22
      635 CAPTURE                          VAL R19
      636 SETTABLEKS                       R40 R33 K181 ["getGroupRoleInfo"]
      638 DUPCLOSURE                       R40 K182 [PROTO_111]
      639 CAPTURE                          VAL R22
      640 CAPTURE                          VAL R36
      641 SETTABLEKS                       R40 R33 K183 ["grantAssetPermissions"]
      643 DUPCLOSURE                       R40 K184 [PROTO_112]
      644 CAPTURE                          VAL R22
      645 CAPTURE                          VAL R31
      646 SETTABLEKS                       R40 R33 K185 ["grantAssetPermissionWithTimeout"]
      648 DUPCLOSURE                       R40 K186 [PROTO_115]
      649 CAPTURE                          VAL R22
      650 CAPTURE                          VAL R36
      651 CAPTURE                          VAL R18
      652 SETTABLEKS                       R40 R33 K187 ["batchGrantAssetPermissions"]
      654 DUPCLOSURE                       R40 K188 [PROTO_116]
      655 CAPTURE                          VAL R22
      656 CAPTURE                          VAL R36
      657 SETTABLEKS                       R40 R33 K189 ["revokeAssetPermissions"]
      659 DUPCLOSURE                       R40 K190 [PROTO_117]
      660 CAPTURE                          VAL R22
      661 CAPTURE                          VAL R19
      662 SETTABLEKS                       R40 R33 K191 ["getAssetPermissions"]
      664 DUPCLOSURE                       R40 K192 [PROTO_119]
      665 CAPTURE                          VAL R22
      666 CAPTURE                          VAL R37
      667 CAPTURE                          VAL R19
      668 SETTABLEKS                       R40 R33 K193 ["postAssetCheckPermissions"]
      670 DUPCLOSURE                       R40 K194 [PROTO_121]
      671 CAPTURE                          VAL R22
      672 CAPTURE                          VAL R37
      673 CAPTURE                          VAL R19
      674 SETTABLEKS                       R40 R33 K195 ["getItemUploadFee"]
      676 DUPCLOSURE                       R40 K196 [PROTO_123]
      677 CAPTURE                          VAL R22
      678 CAPTURE                          VAL R37
      679 CAPTURE                          VAL R19
      680 SETTABLEKS                       R40 R33 K197 ["getAssetTypeAgents"]
      682 DUPCLOSURE                       R40 K198 [PROTO_124]
      683 CAPTURE                          VAL R22
      684 CAPTURE                          VAL R19
      685 SETTABLEKS                       R40 R33 K199 ["getAutocompleteResults"]
      687 DUPCLOSURE                       R40 K200 [PROTO_125]
      688 CAPTURE                          VAL R22
      689 CAPTURE                          VAL R19
      690 SETTABLEKS                       R40 R33 K201 ["getHomeConfiguration"]
      692 DUPCLOSURE                       R40 K202 [PROTO_126]
      693 CAPTURE                          VAL R22
      694 CAPTURE                          VAL R19
      695 SETTABLEKS                       R40 R33 K203 ["getCreatorMarketplaceQuotas"]
      697 DUPCLOSURE                       R40 K204 [PROTO_127]
      698 CAPTURE                          VAL R22
      699 CAPTURE                          VAL R19
      700 SETTABLEKS                       R40 R33 K205 ["getPublishingRequirements"]
      702 DUPCLOSURE                       R40 K206 [PROTO_129]
      703 CAPTURE                          VAL R22
      704 CAPTURE                          VAL R37
      705 CAPTURE                          VAL R19
      706 SETTABLEKS                       R40 R33 K207 ["deleteAssetMedia"]
      708 DUPCLOSURE                       R40 K208 [PROTO_131]
      709 CAPTURE                          VAL R22
      710 CAPTURE                          VAL R37
      711 CAPTURE                          VAL R36
      712 SETTABLEKS                       R40 R33 K209 ["postSetAssetMediaOrder"]
      714 DUPCLOSURE                       R40 K210 [PROTO_135]
      715 CAPTURE                          VAL R22
      716 CAPTURE                          VAL R38
      717 CAPTURE                          VAL R37
      718 CAPTURE                          VAL R36
      719 CAPTURE                          VAL R18
      720 SETTABLEKS                       R40 R33 K211 ["postUploadAssetMedia"]
      722 DUPCLOSURE                       R40 K212 [PROTO_136]
      723 CAPTURE                          VAL R22
      724 CAPTURE                          VAL R19
      725 SETTABLEKS                       R40 R33 K213 ["getUniverseInfo"]
      727 MOVE                             R40 R5
      728 CALL                             R40 0 1
      729 JUMPIFNOT                        R40 ; [+5]
      730 DUPCLOSURE                       R40 K214 [PROTO_137]
      731 CAPTURE                          VAL R22
      732 CAPTURE                          VAL R19
      733 SETTABLEKS                       R40 R33 K215 ["getCodeSummary"]
      735 DUPCLOSURE                       R40 K216 [PROTO_138]
      736 CAPTURE                          VAL R22
      737 CAPTURE                          VAL R19
      738 SETTABLEKS                       R40 R33 K217 ["getFiatProduct"]
      740 MOVE                             R40 R12
      741 CALL                             R40 0 1
      742 JUMPIFNOT                        R40 ; [+6]
      743 DUPCLOSURE                       R40 K218 [PROTO_140]
      744 CAPTURE                          VAL R22
      745 CAPTURE                          VAL R37
      746 CAPTURE                          VAL R19
      747 SETTABLEKS                       R40 R33 K219 ["getAllowedGroupsForAction"]
      749 MOVE                             R40 R13
      750 CALL                             R40 0 1
      751 JUMPIFNOT                        R40 ; [+12]
      752 DUPCLOSURE                       R40 K220 [PROTO_142]
      753 CAPTURE                          VAL R22
      754 CAPTURE                          VAL R37
      755 CAPTURE                          VAL R19
      756 SETTABLEKS                       R40 R33 K221 ["getAvatarAssetsPrivacy"]
      758 DUPCLOSURE                       R40 K222 [PROTO_144]
      759 CAPTURE                          VAL R22
      760 CAPTURE                          VAL R37
      761 CAPTURE                          VAL R36
      762 SETTABLEKS                       R40 R33 K223 ["makeAvatarAssetsOpenUse"]
      764 DUPCLOSURE                       R40 K224 [PROTO_146]
      765 CAPTURE                          VAL R22
      766 CAPTURE                          VAL R36
      767 CAPTURE                          VAL R18
      768 SETTABLEKS                       R40 R33 K225 ["getAsset"]
      770 RETURN                           R33 1
