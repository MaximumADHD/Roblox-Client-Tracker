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
       23 LOADN                            R3 400
       24 JUMPIFNOTLE                      R3 R1 ; [+6]
       26 LOADN                            R3 499
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
        1 JUMPIF                           R3 ; [+1]
        2 DUPTABLE                         R3 K5 [{[1] = 0, ["time"] = 0, ["maxRetries"] = 5}]
        3 MOVE                             R1 R3
        4 ORK                              R2 R2 K6 [False]
        5 GETTABLEKS                       R4 R1 K0 ["attempts"]
        7 ADDK                             R3 R4 K7 [1]
        8 SETTABLEKS                       R3 R1 K0 ["attempts"]
       10 MOVE                             R3 R0
       11 CALL                             R3 0 1
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          REF R2
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          REF R1
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          VAL R0
       18 NAMECALL                         R3 R3 K8 ["catch"]
       20 CALL                             R3 2 -1
       21 CLOSEUPVALS                      R1
       22 RETURN                           R3 -1

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
       36 DUPTABLE                         R8 K21 [{["Url"], ["Method"] = "POST", ["Body"], ["CachePolicy"], ["Headers"]}]
       37 SETTABLEKS                       R0 R8 K15 ["Url"]
       39 SETTABLEKS                       R7 R8 K18 ["Body"]
       41 GETIMPORT                        R9 K25 [Enum.HttpCachePolicy.None]
       43 SETTABLEKS                       R9 R8 K19 ["CachePolicy"]
       45 NEWTABLE                         R9 1 0
       47 LOADK                            R11 K26 ["multipart/form-data; boundary="]
       48 MOVE                             R12 R6
       49 CONCAT                           R10 R11 R12
       50 SETTABLEKS                       R10 R9 K27 ["Content-Type"]
       52 SETTABLEKS                       R9 R8 K20 ["Headers"]
       54 RETURN                           R7 2

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
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R5 R5 K7 ["constructGetToolboxItemsUrl"]
       26 MOVE                             R6 R4
       27 CALL                             R5 1 1
       28 GETTABLEKS                       R7 R1 K8 ["sectionName"]
       30 GETUPVAL                         R8 4
       31 GETTABLEKS                       R8 R8 K9 ["CONTEXTUAL_RECOMMENDATIONS_HOME_CONFIG_SECTION_NAME"]
       33 JUMPIFNOTEQ                      R7 R8 ; [+3]
       35 DUPTABLE                         R6 K14 [{["attempts"] = 0, ["time"] = 0, ["maxRetries"] = 0}]
       36 JUMP                             ; [+1]
       37 LOADNIL                          R6
       38 GETUPVAL                         R7 5
       39 NEWCLOSURE                       R8 P0
       40 CAPTURE                          VAL R5
       41 CAPTURE                          UPVAL U6
       42 CAPTURE                          VAL R0
       43 MOVE                             R9 R6
       44 CALL                             R7 2 -1
       45 RETURN                           R7 -1

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
        0 LOADNIL                          R2
        1 JUMPIFNOTEQKS                    R0 K0 ["AnimationGraph"] ; [+2]
        3 LOADK                            R2 K0 ["AnimationGraph"]
        4 NEWTABLE                         R3 0 0
        6 MOVE                             R4 R1
        7 LOADNIL                          R5
        8 LOADNIL                          R6
        9 FORGPREP                         R4
       10 GETTABLEKS                       R9 R8 K1 ["assetItem"]
       12 GETTABLEKS                       R9 R9 K2 ["asset"]
       14 GETTABLEKS                       R9 R9 K3 ["assetSubType"]
       16 JUMPIFNOTEQ                      R9 R2 ; [+8]
       18 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       20 MOVE                             R10 R3
       21 MOVE                             R11 R8
       22 GETIMPORT                        R9 K6 [table.insert]
       24 CALL                             R9 2 0
       25 FORGLOOP                         R4 2 ; [-16]
       27 RETURN                           R3 1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R1 R1 K1 ["items"]
        4 JUMPIF                           R1 ; [+2]
        5 NEWTABLE                         R1 0 0
        7 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        9 GETTABLEKS                       R2 R2 K2 ["nextPageToken"]
       11 GETUPVAL                         R3 0
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K3 ["assetType"]
       15 MOVE                             R5 R1
       16 CALL                             R3 2 3
       17 FORGPREP                         R3
       18 GETUPVAL                         R9 2
       19 FASTCALL2                        TABLE_INSERT R9 R7 ; [+4]
       21 MOVE                             R10 R7
       22 GETIMPORT                        R8 K6 [table.insert]
       24 CALL                             R8 2 0
       25 FORGLOOP                         R3 2 ; [-8]
       27 GETUPVAL                         R4 2
       28 LENGTH                           R3 R4
       29 GETUPVAL                         R4 3
       30 JUMPIFLE                         R4 R3 ; [+5]
       32 JUMPIFEQKNIL                     R2 ; [+3]
       34 GETUPVAL                         R3 4
       35 JUMPIFNOT                        R3 ; [+10]
       36 DUPTABLE                         R3 K7 [{"responseBody"}]
       37 DUPTABLE                         R4 K8 [{"items", "nextPageToken"}]
       38 GETUPVAL                         R5 2
       39 SETTABLEKS                       R5 R4 K1 ["items"]
       41 SETTABLEKS                       R2 R4 K2 ["nextPageToken"]
       43 SETTABLEKS                       R4 R3 K0 ["responseBody"]
       45 RETURN                           R3 1
       46 GETUPVAL                         R3 5
       47 GETUPVAL                         R4 1
       48 GETUPVAL                         R5 2
       49 MOVE                             R6 R2
       50 CALL                             R3 3 -1
       51 RETURN                           R3 -1

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["search"]
        3 GETTABLEKS                       R4 R0 K1 ["query"]
        5 LOADK                            R5 K2 ["Animation"]
        6 GETTABLEKS                       R6 R0 K3 ["scopeParams"]
        8 GETTABLEKS                       R7 R0 K4 ["maxPageSize"]
       10 MOVE                             R8 R2
       11 GETTABLEKS                       R9 R0 K5 ["includeFolders"]
       13 GETTABLEKS                       R10 R0 K6 ["sources"]
       15 CALL                             R3 7 1
       16 NAMECALL                         R3 R3 K7 ["makeRequest"]
       18 CALL                             R3 1 1
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U4
       26 NAMECALL                         R3 R3 K8 ["andThen"]
       28 CALL                             R3 2 -1
       29 RETURN                           R3 -1

PROTO_16:
        0 GETTABLEKS                       R2 R1 K0 ["assetType"]
        2 JUMPIFEQKS                       R2 K1 ["Animation"] ; [+27]
        4 GETTABLEKS                       R2 R1 K0 ["assetType"]
        6 JUMPIFEQKS                       R2 K2 ["AnimationGraph"] ; [+23]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K3 ["search"]
       11 GETTABLEKS                       R3 R1 K4 ["query"]
       13 GETTABLEKS                       R4 R1 K0 ["assetType"]
       15 GETTABLEKS                       R5 R1 K5 ["scopeParams"]
       17 GETTABLEKS                       R6 R1 K6 ["maxPageSize"]
       19 GETTABLEKS                       R7 R1 K7 ["pageToken"]
       21 GETTABLEKS                       R8 R1 K8 ["includeFolders"]
       23 GETTABLEKS                       R9 R1 K9 ["sources"]
       25 CALL                             R2 7 1
       26 NAMECALL                         R2 R2 K10 ["makeRequest"]
       28 CALL                             R2 1 -1
       29 RETURN                           R2 -1
       30 GETUPVAL                         R2 1
       31 MOVE                             R3 R1
       32 NEWTABLE                         R4 0 0
       34 GETTABLEKS                       R5 R1 K7 ["pageToken"]
       36 CALL                             R2 3 -1
       37 RETURN                           R2 -1

PROTO_17:
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

PROTO_18:
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

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
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

PROTO_25:
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

PROTO_26:
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

PROTO_27:
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

PROTO_28:
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

PROTO_29:
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

PROTO_30:
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

PROTO_31:
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

PROTO_32:
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

PROTO_33:
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

PROTO_34:
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

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_networkImp"]
        3 GETTABLEKS                       R3 R0 K1 ["Body"]
        5 NAMECALL                         R1 R1 K2 ["jsonDecode"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_36:
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

PROTO_37:
        0 GETUPVAL                         R9 0
        1 GETTABLEKS                       R9 R9 K0 ["constructPostBundleCreationContextUrl"]
        3 CALL                             R9 0 1
        4 GETTABLEKS                       R10 R0 K1 ["_networkImp"]
        6 DUPTABLE                         R12 K10 [{"assetQuantities", "bundleDescription", "bundleName", "bundleType", "bodyScale", "bodyColorSet", "groupId", "isEmissive"}]
        7 SETTABLEKS                       R2 R12 K2 ["assetQuantities"]
        9 SETTABLEKS                       R4 R12 K3 ["bundleDescription"]
       11 SETTABLEKS                       R3 R12 K4 ["bundleName"]
       13 GETTABLEKS                       R13 R1 K11 ["rawValue"]
       15 CALL                             R13 0 1
       16 SETTABLEKS                       R13 R12 K5 ["bundleType"]
       18 GETUPVAL                         R14 1
       19 CALL                             R14 0 1
       20 JUMPIFNOT                        R14 ; [+2]
       21 MOVE                             R13 R5
       22 JUMP                             ; [+1]
       23 LOADNIL                          R13
       24 SETTABLEKS                       R13 R12 K6 ["bodyScale"]
       26 GETUPVAL                         R14 2
       27 CALL                             R14 0 1
       28 JUMPIFNOT                        R14 ; [+2]
       29 MOVE                             R13 R6
       30 JUMP                             ; [+1]
       31 LOADNIL                          R13
       32 SETTABLEKS                       R13 R12 K7 ["bodyColorSet"]
       34 SETTABLEKS                       R7 R12 K8 ["groupId"]
       36 GETUPVAL                         R14 3
       37 CALL                             R14 0 1
       38 JUMPIFNOT                        R14 ; [+2]
       39 MOVE                             R13 R8
       40 JUMP                             ; [+1]
       41 LOADNIL                          R13
       42 SETTABLEKS                       R13 R12 K9 ["isEmissive"]
       44 NAMECALL                         R10 R10 K12 ["jsonEncode"]
       46 CALL                             R10 2 1
       47 DUPTABLE                         R11 K18 [{["Url"], ["Method"] = "POST", ["Body"], ["Headers"]}]
       48 SETTABLEKS                       R9 R11 K13 ["Url"]
       50 SETTABLEKS                       R10 R11 K16 ["Body"]
       52 NEWTABLE                         R12 1 0
       54 LOADK                            R13 K19 ["application/json"]
       55 SETTABLEKS                       R13 R12 K20 ["Content-Type"]
       57 SETTABLEKS                       R12 R11 K17 ["Headers"]
       59 GETUPVAL                         R12 4
       60 LOADK                            R13 K21 ["postBundleCreationContext"]
       61 LOADK                            R14 K15 ["POST"]
       62 MOVE                             R15 R9
       63 MOVE                             R16 R10
       64 CALL                             R12 4 0
       65 GETTABLEKS                       R12 R0 K1 ["_networkImp"]
       67 MOVE                             R14 R11
       68 NAMECALL                         R12 R12 K22 ["requestInternalRaw"]
       70 CALL                             R12 2 1
       71 NEWCLOSURE                       R14 P0
       72 CAPTURE                          VAL R0
       73 NAMECALL                         R12 R12 K23 ["andThen"]
       75 CALL                             R12 2 1
       76 NEWCLOSURE                       R14 P1
       77 CAPTURE                          VAL R0
       78 CAPTURE                          UPVAL U5
       79 NAMECALL                         R12 R12 K24 ["catch"]
       81 CALL                             R12 2 -1
       82 RETURN                           R12 -1

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_networkImp"]
        3 GETTABLEKS                       R3 R0 K1 ["Body"]
        5 NAMECALL                         R1 R1 K2 ["jsonDecode"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_39:
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

PROTO_40:
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
       25 DUPTABLE                         R9 K16 [{["Url"], ["Method"] = "POST", ["Body"], ["Headers"]}]
       26 SETTABLEKS                       R7 R9 K11 ["Url"]
       28 SETTABLEKS                       R8 R9 K14 ["Body"]
       30 NEWTABLE                         R10 1 0
       32 LOADK                            R11 K17 ["application/json"]
       33 SETTABLEKS                       R11 R10 K18 ["Content-Type"]
       35 SETTABLEKS                       R10 R9 K15 ["Headers"]
       37 GETUPVAL                         R10 1
       38 LOADK                            R11 K19 ["postCreateBundle"]
       39 LOADK                            R12 K13 ["POST"]
       40 MOVE                             R13 R7
       41 MOVE                             R14 R8
       42 CALL                             R10 4 0
       43 GETTABLEKS                       R10 R0 K1 ["_networkImp"]
       45 MOVE                             R12 R9
       46 NAMECALL                         R10 R10 K20 ["requestInternalRaw"]
       48 CALL                             R10 2 1
       49 NEWCLOSURE                       R12 P0
       50 CAPTURE                          VAL R0
       51 NAMECALL                         R10 R10 K21 ["andThen"]
       53 CALL                             R10 2 1
       54 NEWCLOSURE                       R12 P1
       55 CAPTURE                          VAL R0
       56 CAPTURE                          UPVAL U2
       57 NAMECALL                         R10 R10 K22 ["catch"]
       59 CALL                             R10 2 -1
       60 RETURN                           R10 -1

PROTO_41:
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

PROTO_42:
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

PROTO_43:
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

PROTO_44:
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

PROTO_45:
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

PROTO_46:
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

PROTO_47:
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

PROTO_48:
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

PROTO_49:
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

PROTO_50:
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

PROTO_51:
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

PROTO_52:
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

PROTO_53:
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

PROTO_54:
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

PROTO_55:
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

PROTO_56:
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

PROTO_57:
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

PROTO_58:
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

PROTO_59:
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

PROTO_60:
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

PROTO_61:
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

PROTO_62:
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

PROTO_63:
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

PROTO_64:
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

PROTO_65:
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

PROTO_66:
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

PROTO_67:
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

PROTO_68:
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

PROTO_69:
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

PROTO_70:
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

PROTO_71:
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

PROTO_72:
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

PROTO_73:
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

PROTO_74:
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

PROTO_75:
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

PROTO_76:
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

PROTO_77:
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

PROTO_78:
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

PROTO_79:
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

PROTO_80:
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

PROTO_81:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["reject"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_82:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructUploadCatalogItemUrl"]
        3 CALL                             R3 0 1
        4 DUPTABLE                         R4 K7 [{["Url"], ["Method"] = "POST", ["Body"], ["CachePolicy"], ["Headers"]}]
        5 SETTABLEKS                       R3 R4 K1 ["Url"]
        7 SETTABLEKS                       R1 R4 K4 ["Body"]
        9 GETIMPORT                        R5 K11 [Enum.HttpCachePolicy.None]
       11 SETTABLEKS                       R5 R4 K5 ["CachePolicy"]
       13 NEWTABLE                         R5 1 0
       15 LOADK                            R7 K12 ["multipart/form-data; boundary="]
       16 MOVE                             R8 R2
       17 CONCAT                           R6 R7 R8
       18 SETTABLEKS                       R6 R5 K13 ["Content-Type"]
       20 SETTABLEKS                       R5 R4 K6 ["Headers"]
       22 GETUPVAL                         R5 1
       23 LOADK                            R6 K14 ["uploadCatalogItem"]
       24 LOADK                            R7 K15 ["POST FORM-DATA"]
       25 MOVE                             R8 R3
       26 MOVE                             R9 R1
       27 CALL                             R5 4 0
       28 GETTABLEKS                       R5 R0 K16 ["_networkImp"]
       30 MOVE                             R7 R4
       31 NAMECALL                         R5 R5 K17 ["requestInternal"]
       33 CALL                             R5 2 1
       34 DUPCLOSURE                       R7 K18 [PROTO_81]
       35 CAPTURE                          UPVAL U2
       36 NAMECALL                         R5 R5 K19 ["catch"]
       38 CALL                             R5 2 -1
       39 RETURN                           R5 -1

PROTO_83:
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

PROTO_84:
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

PROTO_85:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["reject"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_86:
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
       21 DUPCLOSURE                       R8 K5 [PROTO_85]
       22 CAPTURE                          UPVAL U3
       23 NAMECALL                         R6 R6 K6 ["catch"]
       25 CALL                             R6 2 -1
       26 RETURN                           R6 -1

PROTO_87:
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

PROTO_88:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["reject"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_89:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructConfigureCatalogItemUrl"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R4 R0 K1 ["_networkImp"]
        7 MOVE                             R6 R2
        8 NAMECALL                         R4 R4 K2 ["jsonEncode"]
       10 CALL                             R4 2 1
       11 DUPTABLE                         R5 K9 [{["Url"], ["Method"] = "PATCH", ["Body"], ["CachePolicy"], ["Headers"]}]
       12 SETTABLEKS                       R3 R5 K3 ["Url"]
       14 SETTABLEKS                       R4 R5 K6 ["Body"]
       16 GETIMPORT                        R6 K13 [Enum.HttpCachePolicy.None]
       18 SETTABLEKS                       R6 R5 K7 ["CachePolicy"]
       20 NEWTABLE                         R6 1 0
       22 LOADK                            R7 K14 ["application/json"]
       23 SETTABLEKS                       R7 R6 K15 ["Content-Type"]
       25 SETTABLEKS                       R6 R5 K8 ["Headers"]
       27 GETUPVAL                         R6 1
       28 LOADK                            R7 K16 ["configureCatalogItem"]
       29 LOADK                            R8 K5 ["PATCH"]
       30 MOVE                             R9 R3
       31 MOVE                             R10 R4
       32 CALL                             R6 4 0
       33 GETTABLEKS                       R6 R0 K1 ["_networkImp"]
       35 MOVE                             R8 R5
       36 NAMECALL                         R6 R6 K17 ["requestInternal"]
       38 CALL                             R6 2 1
       39 DUPCLOSURE                       R8 K18 [PROTO_88]
       40 CAPTURE                          UPVAL U2
       41 NAMECALL                         R6 R6 K19 ["catch"]
       43 CALL                             R6 2 -1
       44 RETURN                           R6 -1

PROTO_90:
        0 GETUPVAL                         R10 0
        1 GETTABLEKS                       R10 R10 K0 ["constructPatchAssetUrl"]
        3 MOVE                             R11 R1
        4 CALL                             R10 1 1
        5 GETTABLEKS                       R11 R0 K1 ["_networkImp"]
        7 DUPTABLE                         R13 K12 [{["name"], ["description"], ["genres"] = , ["enableComments"], ["isCopyingAllowed"], ["locale"], ["localName"], ["localDescription"], ["isConvertMarketplaceModelsToPackageEnabled"]}]
        8 SETTABLEKS                       R2 R13 K2 ["name"]
       10 SETTABLEKS                       R3 R13 K3 ["description"]
       12 SETTABLEKS                       R4 R13 K6 ["enableComments"]
       14 SETTABLEKS                       R5 R13 K7 ["isCopyingAllowed"]
       16 SETTABLEKS                       R6 R13 K8 ["locale"]
       18 SETTABLEKS                       R7 R13 K9 ["localName"]
       20 SETTABLEKS                       R8 R13 K10 ["localDescription"]
       22 GETUPVAL                         R15 1
       23 JUMPIF                           R15 ; [+2]
       24 GETUPVAL                         R15 2
       25 JUMPIFNOT                        R15 ; [+2]
       26 MOVE                             R14 R9
       27 JUMP                             ; [+1]
       28 LOADNIL                          R14
       29 SETTABLEKS                       R14 R13 K11 ["isConvertMarketplaceModelsToPackageEnabled"]
       31 NAMECALL                         R11 R11 K13 ["jsonEncode"]
       33 CALL                             R11 2 1
       34 GETUPVAL                         R12 3
       35 LOADK                            R13 K14 ["patchAsset"]
       36 LOADK                            R14 K15 ["PATCH"]
       37 MOVE                             R15 R10
       38 MOVE                             R16 R11
       39 CALL                             R12 4 0
       40 GETTABLEKS                       R12 R0 K1 ["_networkImp"]
       42 MOVE                             R14 R10
       43 MOVE                             R15 R11
       44 NAMECALL                         R12 R12 K16 ["httpPatch"]
       46 CALL                             R12 3 -1
       47 RETURN                           R12 -1

PROTO_91:
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

PROTO_92:
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

PROTO_93:
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

PROTO_94:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["reject"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_95:
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
       48 DUPCLOSURE                       R7 K17 [PROTO_94]
       49 CAPTURE                          UPVAL U2
       50 NAMECALL                         R5 R5 K18 ["catch"]
       52 CALL                             R5 2 -1
       53 CLOSEUPVALS                      R2
       54 RETURN                           R5 -1

PROTO_96:
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

PROTO_97:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["reject"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_98:
        0 GETUPVAL                         R9 0
        1 GETTABLEKS                       R9 R9 K0 ["constructPostUploadAnimationUrl"]
        3 CALL                             R9 0 1
        4 GETTABLEKS                       R10 R6 K1 ["Name"]
        6 GETUPVAL                         R11 1
        7 DUPTABLE                         R12 K4 [{"request", "fileContent"}]
        8 DUPTABLE                         R13 K8 [{["contentType"] = "application/json", ["body"]}]
        9 GETTABLEKS                       R14 R0 K9 ["_networkImp"]
       11 DUPTABLE                         R16 K14 [{"assetType", "displayName", "description", "creationContext"}]
       12 SETTABLEKS                       R10 R16 K10 ["assetType"]
       14 SETTABLEKS                       R2 R16 K11 ["displayName"]
       16 SETTABLEKS                       R3 R16 K12 ["description"]
       18 DUPTABLE                         R17 K17 [{"creator", "expectedPrice"}]
       19 DUPTABLE                         R18 K20 [{"userId", "groupId"}]
       20 JUMPIF                           R5 ; [+2]
       21 MOVE                             R19 R4
       22 JUMP                             ; [+1]
       23 LOADNIL                          R19
       24 SETTABLEKS                       R19 R18 K18 ["userId"]
       26 SETTABLEKS                       R5 R18 K19 ["groupId"]
       28 SETTABLEKS                       R18 R17 K15 ["creator"]
       30 SETTABLEKS                       R7 R17 K16 ["expectedPrice"]
       32 SETTABLEKS                       R17 R16 K13 ["creationContext"]
       34 NAMECALL                         R14 R14 K21 ["jsonEncode"]
       36 CALL                             R14 2 1
       37 SETTABLEKS                       R14 R13 K7 ["body"]
       39 SETTABLEKS                       R13 R12 K2 ["request"]
       41 DUPTABLE                         R13 K25 [{["contentType"] = "model/x-rbxm", ["filename"] = "asset.rbxm", ["body"]}]
       42 SETTABLEKS                       R8 R13 K7 ["body"]
       44 SETTABLEKS                       R13 R12 K3 ["fileContent"]
       46 CALL                             R11 1 2
       47 DUPTABLE                         R13 K32 [{["Url"], ["Method"] = "POST", ["Body"], ["CachePolicy"], ["Headers"]}]
       48 SETTABLEKS                       R9 R13 K26 ["Url"]
       50 SETTABLEKS                       R11 R13 K29 ["Body"]
       52 GETIMPORT                        R14 K36 [Enum.HttpCachePolicy.None]
       54 SETTABLEKS                       R14 R13 K30 ["CachePolicy"]
       56 NEWTABLE                         R14 1 0
       58 LOADK                            R16 K37 ["multipart/form-data; boundary="]
       59 MOVE                             R17 R12
       60 CONCAT                           R15 R16 R17
       61 SETTABLEKS                       R15 R14 K38 ["Content-Type"]
       63 SETTABLEKS                       R14 R13 K31 ["Headers"]
       65 GETUPVAL                         R14 2
       66 LOADK                            R15 K39 ["uploadAnimation"]
       67 LOADK                            R16 K28 ["POST"]
       68 MOVE                             R17 R9
       69 MOVE                             R18 R13
       70 CALL                             R14 4 0
       71 GETTABLEKS                       R14 R0 K9 ["_networkImp"]
       73 MOVE                             R16 R13
       74 NAMECALL                         R14 R14 K40 ["requestInternal"]
       76 CALL                             R14 2 1
       77 NEWCLOSURE                       R16 P0
       78 CAPTURE                          VAL R0
       79 NAMECALL                         R14 R14 K41 ["andThen"]
       81 CALL                             R14 2 1
       82 DUPCLOSURE                       R16 K42 [PROTO_97]
       83 CAPTURE                          UPVAL U3
       84 NAMECALL                         R14 R14 K43 ["catch"]
       86 CALL                             R14 2 -1
       87 RETURN                           R14 -1

PROTO_99:
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

PROTO_100:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["reject"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_101:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructPostOverwriteAnimationUrl"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 1
        6 DUPTABLE                         R5 K3 [{"request", "fileContent"}]
        7 DUPTABLE                         R6 K7 [{["contentType"] = "application/json", ["body"]}]
        8 GETTABLEKS                       R7 R0 K8 ["_networkImp"]
       10 DUPTABLE                         R9 K10 [{"assetId"}]
       11 FASTCALL1                        TOSTRING R1 ; [+3]
       12 MOVE                             R11 R1
       13 GETIMPORT                        R10 K12 [tostring]
       15 CALL                             R10 1 1
       16 SETTABLEKS                       R10 R9 K9 ["assetId"]
       18 NAMECALL                         R7 R7 K13 ["jsonEncode"]
       20 CALL                             R7 2 1
       21 SETTABLEKS                       R7 R6 K6 ["body"]
       23 SETTABLEKS                       R6 R5 K1 ["request"]
       25 DUPTABLE                         R6 K17 [{["contentType"] = "model/x-rbxm", ["filename"] = "asset.rbxm", ["body"]}]
       26 SETTABLEKS                       R2 R6 K6 ["body"]
       28 SETTABLEKS                       R6 R5 K2 ["fileContent"]
       30 CALL                             R4 1 2
       31 DUPTABLE                         R6 K24 [{["Url"], ["Method"] = "PATCH", ["Body"], ["CachePolicy"], ["Headers"]}]
       32 SETTABLEKS                       R3 R6 K18 ["Url"]
       34 SETTABLEKS                       R4 R6 K21 ["Body"]
       36 GETIMPORT                        R7 K28 [Enum.HttpCachePolicy.None]
       38 SETTABLEKS                       R7 R6 K22 ["CachePolicy"]
       40 NEWTABLE                         R7 1 0
       42 LOADK                            R9 K29 ["multipart/form-data; boundary="]
       43 MOVE                             R10 R5
       44 CONCAT                           R8 R9 R10
       45 SETTABLEKS                       R8 R7 K30 ["Content-Type"]
       47 SETTABLEKS                       R7 R6 K23 ["Headers"]
       49 GETUPVAL                         R7 2
       50 LOADK                            R8 K31 ["overrideAnimation"]
       51 LOADK                            R9 K20 ["PATCH"]
       52 MOVE                             R10 R3
       53 MOVE                             R11 R6
       54 CALL                             R7 4 0
       55 GETTABLEKS                       R7 R0 K8 ["_networkImp"]
       57 MOVE                             R9 R6
       58 NAMECALL                         R7 R7 K32 ["requestInternal"]
       60 CALL                             R7 2 1
       61 NEWCLOSURE                       R9 P0
       62 CAPTURE                          VAL R0
       63 NAMECALL                         R7 R7 K33 ["andThen"]
       65 CALL                             R7 2 1
       66 DUPCLOSURE                       R9 K34 [PROTO_100]
       67 CAPTURE                          UPVAL U3
       68 NAMECALL                         R7 R7 K35 ["catch"]
       70 CALL                             R7 2 -1
       71 RETURN                           R7 -1

PROTO_102:
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

PROTO_103:
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

PROTO_104:
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

PROTO_105:
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

PROTO_106:
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

PROTO_107:
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

PROTO_108:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructAssetCheckPermissionsBatchUrl"]
        3 CALL                             R3 0 1
        4 GETTABLEKS                       R4 R0 K1 ["_networkImp"]
        6 DUPTABLE                         R6 K3 [{"requests"}]
        7 NEWTABLE                         R7 0 1
        9 DUPTABLE                         R8 K8 [{["subject"], ["action"] = "Edit", ["assetId"]}]
       10 DUPTABLE                         R9 K12 [{["subjectType"] = "User", ["subjectId"]}]
       11 SETTABLEKS                       R2 R9 K11 ["subjectId"]
       13 SETTABLEKS                       R9 R8 K4 ["subject"]
       15 SETTABLEKS                       R1 R8 K7 ["assetId"]
       17 SETLIST                          R7 R8 1 [1]
       19 SETTABLEKS                       R7 R6 K2 ["requests"]
       21 NAMECALL                         R4 R4 K13 ["jsonEncode"]
       23 CALL                             R4 2 1
       24 GETUPVAL                         R5 1
       25 LOADK                            R6 K14 ["getHasEditPermissionForAsset"]
       26 LOADK                            R7 K15 ["POST"]
       27 MOVE                             R8 R3
       28 MOVE                             R9 R4
       29 CALL                             R5 4 0
       30 GETTABLEKS                       R5 R0 K1 ["_networkImp"]
       32 MOVE                             R7 R3
       33 MOVE                             R8 R4
       34 NAMECALL                         R5 R5 K16 ["httpPostJson"]
       36 CALL                             R5 3 1
       37 NEWCLOSURE                       R7 P0
       38 CAPTURE                          VAL R1
       39 NAMECALL                         R5 R5 K17 ["andThen"]
       41 CALL                             R5 2 -1
       42 RETURN                           R5 -1

PROTO_109:
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

PROTO_110:
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

PROTO_111:
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

PROTO_112:
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

PROTO_113:
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

PROTO_114:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructAssetPermissionsUrl"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R4 R0 K1 ["_networkImp"]
        7 MOVE                             R6 R2
        8 NAMECALL                         R4 R4 K2 ["jsonEncode"]
       10 CALL                             R4 2 1
       11 DUPTABLE                         R5 K9 [{["Url"], ["Method"] = "PATCH", ["Body"], ["Headers"], ["Timeout"]}]
       12 SETTABLEKS                       R3 R5 K3 ["Url"]
       14 SETTABLEKS                       R4 R5 K6 ["Body"]
       16 NEWTABLE                         R6 1 0
       18 LOADK                            R7 K10 ["application/json"]
       19 SETTABLEKS                       R7 R6 K11 ["Content-Type"]
       21 SETTABLEKS                       R6 R5 K7 ["Headers"]
       23 GETUPVAL                         R6 1
       24 SETTABLEKS                       R6 R5 K8 ["Timeout"]
       26 GETTABLEKS                       R6 R0 K1 ["_networkImp"]
       28 MOVE                             R8 R5
       29 NAMECALL                         R6 R6 K12 ["requestInternalRaw"]
       31 CALL                             R6 2 -1
       32 RETURN                           R6 -1

PROTO_115:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_networkImp"]
        3 GETTABLEKS                       R3 R0 K1 ["responseBody"]
        5 NAMECALL                         R1 R1 K2 ["jsonDecode"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_116:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["reject"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_117:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructAssetBatchGrantPermissionsUrl"]
        3 CALL                             R3 0 1
        4 NEWTABLE                         R4 0 0
        6 GETIMPORT                        R5 K2 [ipairs]
        8 MOVE                             R6 R1
        9 CALL                             R5 1 3
       10 FORGPREP_INEXT                   R5
       11 DUPTABLE                         R12 K6 [{["assetId"], ["grantToDependencies"] = True}]
       12 SETTABLEKS                       R9 R12 K3 ["assetId"]
       14 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       16 MOVE                             R11 R4
       17 GETIMPORT                        R10 K9 [table.insert]
       19 CALL                             R10 2 0
       20 FORGLOOP                         R5 2 [inext] ; [-10]
       22 GETTABLEKS                       R5 R0 K10 ["_networkImp"]
       24 DUPTABLE                         R7 K17 [{["subjectType"] = "Universe", ["subjectId"], ["action"] = "Use", ["requests"]}]
       25 FASTCALL1                        TOSTRING R2 ; [+3]
       26 MOVE                             R9 R2
       27 GETIMPORT                        R8 K19 [tostring]
       29 CALL                             R8 1 1
       30 SETTABLEKS                       R8 R7 K13 ["subjectId"]
       32 SETTABLEKS                       R4 R7 K16 ["requests"]
       34 NAMECALL                         R5 R5 K20 ["jsonEncode"]
       36 CALL                             R5 2 1
       37 GETUPVAL                         R6 1
       38 LOADK                            R7 K21 ["batchGrantAssetPermissions"]
       39 LOADK                            R8 K22 ["PATCH"]
       40 MOVE                             R9 R3
       41 MOVE                             R10 R5
       42 CALL                             R6 4 0
       43 GETTABLEKS                       R6 R0 K10 ["_networkImp"]
       45 MOVE                             R8 R3
       46 MOVE                             R9 R5
       47 NAMECALL                         R6 R6 K23 ["httpPatch"]
       49 CALL                             R6 3 1
       50 NEWCLOSURE                       R8 P0
       51 CAPTURE                          VAL R0
       52 NAMECALL                         R6 R6 K24 ["andThen"]
       54 CALL                             R6 2 1
       55 DUPCLOSURE                       R8 K25 [PROTO_116]
       56 CAPTURE                          UPVAL U2
       57 NAMECALL                         R6 R6 K26 ["catch"]
       59 CALL                             R6 2 -1
       60 RETURN                           R6 -1

PROTO_118:
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

PROTO_119:
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

PROTO_120:
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

PROTO_121:
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

PROTO_122:
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

PROTO_123:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["constructGetItemUploadFeeUrl"]
        3 MOVE                             R5 R1
        4 MOVE                             R6 R2
        5 MOVE                             R7 R3
        6 CALL                             R4 3 1
        7 GETUPVAL                         R5 1
        8 NEWCLOSURE                       R6 P0
        9 CAPTURE                          VAL R4
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R0
       12 CALL                             R5 1 -1
       13 RETURN                           R5 -1

PROTO_124:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["shouldDebugUrls"]
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+21]
        6 GETIMPORT                        R1 K2 [print]
        8 LOADK                            R2 K3 ["NetworkInterface:%s()"]
        9 LOADK                            R4 K4 ["getMetadataPermissions"]
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

PROTO_125:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructGetMetadataPermissionsUrl"]
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

PROTO_126:
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

PROTO_127:
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

PROTO_128:
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

PROTO_129:
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

PROTO_130:
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

PROTO_131:
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

PROTO_132:
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

PROTO_133:
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

PROTO_134:
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

PROTO_135:
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

PROTO_136:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_networkImp"]
        3 GETTABLEKS                       R3 R0 K1 ["Body"]
        5 NAMECALL                         R1 R1 K2 ["jsonDecode"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_137:
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

PROTO_138:
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

PROTO_139:
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

PROTO_140:
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

PROTO_141:
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

PROTO_142:
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

PROTO_143:
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

PROTO_144:
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

PROTO_145:
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

PROTO_146:
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

PROTO_147:
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

PROTO_148:
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
       23 DUPTABLE                         R6 K12 [{["subjectType"] = "All", ["action"] = "Use", ["requests"]}]
       24 SETTABLEKS                       R3 R6 K11 ["requests"]
       26 NAMECALL                         R4 R4 K13 ["jsonEncode"]
       28 CALL                             R4 2 1
       29 GETUPVAL                         R5 1
       30 NEWCLOSURE                       R6 P0
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R0
       35 CALL                             R5 1 -1
       36 RETURN                           R5 -1

PROTO_149:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["reject"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_150:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["constructGetAssetByIdUrl"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 DUPTABLE                         R3 K6 [{["Url"], ["Method"] = "GET", ["CachePolicy"], ["Headers"]}]
        6 SETTABLEKS                       R2 R3 K1 ["Url"]
        8 GETIMPORT                        R4 K10 [Enum.HttpCachePolicy.None]
       10 SETTABLEKS                       R4 R3 K4 ["CachePolicy"]
       12 NEWTABLE                         R4 1 0
       14 LOADK                            R5 K11 ["application/json"]
       15 SETTABLEKS                       R5 R4 K12 ["Content-Type"]
       17 SETTABLEKS                       R4 R3 K5 ["Headers"]
       19 GETUPVAL                         R4 1
       20 LOADK                            R5 K13 ["getAsset"]
       21 LOADK                            R6 K3 ["GET"]
       22 MOVE                             R7 R2
       23 MOVE                             R8 R3
       24 CALL                             R4 4 0
       25 GETTABLEKS                       R4 R0 K14 ["_networkImp"]
       27 MOVE                             R6 R3
       28 NAMECALL                         R4 R4 K15 ["requestInternal"]
       30 CALL                             R4 2 1
       31 DUPCLOSURE                       R6 K16 [PROTO_149]
       32 CAPTURE                          UPVAL U2
       33 NAMECALL                         R4 R4 K17 ["catch"]
       35 CALL                             R4 2 -1
       36 RETURN                           R4 -1

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
       33 GETTABLEKS                       R5 R5 K13 ["getFFlagToolboxCodeUnderstandingSummary"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K11 [require]
       38 GETTABLEKS                       R6 R1 K12 ["SharedFlags"]
       40 GETTABLEKS                       R6 R6 K14 ["getFFlagToolboxRemoveRobuxProductEntirely"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K11 [require]
       45 GETTABLEKS                       R7 R1 K12 ["SharedFlags"]
       47 GETTABLEKS                       R7 R7 K15 ["getFFlagToolboxAssetConfigOnboardingLink"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K11 [require]
       52 GETTABLEKS                       R8 R1 K12 ["SharedFlags"]
       54 GETTABLEKS                       R8 R8 K16 ["getFFlagEnableUGCBundleUploadBodyScale"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K11 [require]
       59 GETTABLEKS                       R9 R1 K12 ["SharedFlags"]
       61 GETTABLEKS                       R9 R9 K17 ["getFFlagEnableBodyColorSetUploadSupport"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K11 [require]
       66 GETTABLEKS                       R10 R0 K3 ["Src"]
       68 GETTABLEKS                       R10 R10 K18 ["Flags"]
       70 GETTABLEKS                       R10 R10 K19 ["getFFlagCheckAvatarAssetPrivacy"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K11 [require]
       75 GETTABLEKS                       R11 R0 K3 ["Src"]
       77 GETTABLEKS                       R11 R11 K18 ["Flags"]
       79 GETTABLEKS                       R11 R11 K20 ["getFFlagToolboxDynamicUploadFee"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K11 [require]
       84 GETTABLEKS                       R12 R0 K3 ["Src"]
       86 GETTABLEKS                       R12 R12 K18 ["Flags"]
       88 GETTABLEKS                       R12 R12 K21 ["getEngineFeatureToolboxPassThroughAssetType"]
       90 CALL                             R11 1 1
       91 GETIMPORT                        R12 K11 [require]
       93 GETTABLEKS                       R13 R0 K22 ["Libs"]
       95 GETTABLEKS                       R13 R13 K23 ["Http"]
       97 GETTABLEKS                       R13 R13 K24 ["Networking"]
       99 CALL                             R12 1 1
      100 GETTABLEKS                       R13 R0 K25 ["Packages"]
      102 GETIMPORT                        R14 K11 [require]
      104 GETTABLEKS                       R15 R13 K26 ["Framework"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K11 [require]
      109 GETTABLEKS                       R16 R13 K27 ["Dash"]
      111 CALL                             R15 1 1
      112 GETIMPORT                        R16 K11 [require]
      114 GETTABLEKS                       R17 R13 K24 ["Networking"]
      116 CALL                             R16 1 1
      117 GETTABLEKS                       R17 R14 K4 ["Util"]
      119 GETTABLEKS                       R17 R17 K28 ["Promise"]
      121 GETIMPORT                        R18 K11 [require]
      123 GETTABLEKS                       R19 R1 K29 ["DebugFlags"]
      125 CALL                             R18 1 1
      126 GETIMPORT                        R19 K11 [require]
      128 GETTABLEKS                       R20 R1 K30 ["getUserId"]
      130 CALL                             R19 1 1
      131 GETIMPORT                        R20 K11 [require]
      133 GETTABLEKS                       R21 R1 K31 ["PageInfoHelper"]
      135 CALL                             R20 1 1
      136 GETIMPORT                        R21 K11 [require]
      138 GETTABLEKS                       R22 R1 K32 ["Urls"]
      140 CALL                             R21 1 1
      141 GETIMPORT                        R22 K11 [require]
      143 GETTABLEKS                       R23 R1 K33 ["Constants"]
      145 CALL                             R22 1 1
      146 GETIMPORT                        R23 K11 [require]
      148 GETTABLEKS                       R24 R0 K3 ["Src"]
      150 GETTABLEKS                       R24 R24 K34 ["Types"]
      152 GETTABLEKS                       R24 R24 K35 ["AssetQuotaTypes"]
      154 CALL                             R23 1 1
      155 GETIMPORT                        R24 K11 [require]
      157 GETTABLEKS                       R25 R0 K3 ["Src"]
      159 GETTABLEKS                       R25 R25 K34 ["Types"]
      161 GETTABLEKS                       R25 R25 K36 ["AssetSubTypes"]
      163 CALL                             R24 1 1
      164 GETIMPORT                        R25 K11 [require]
      166 GETTABLEKS                       R26 R0 K3 ["Src"]
      168 GETTABLEKS                       R26 R26 K34 ["Types"]
      170 GETTABLEKS                       R26 R26 K37 ["HomeTypes"]
      172 CALL                             R25 1 1
      173 GETIMPORT                        R26 K11 [require]
      175 GETTABLEKS                       R27 R0 K3 ["Src"]
      177 GETTABLEKS                       R27 R27 K34 ["Types"]
      179 GETTABLEKS                       R27 R27 K38 ["Category"]
      181 CALL                             R26 1 1
      182 GETIMPORT                        R27 K11 [require]
      184 GETTABLEKS                       R28 R0 K3 ["Src"]
      186 GETTABLEKS                       R28 R28 K4 ["Util"]
      188 GETTABLEKS                       R28 R28 K39 ["AssetConfigUtil"]
      190 CALL                             R27 1 1
      191 GETIMPORT                        R28 K11 [require]
      193 GETTABLEKS                       R29 R1 K40 ["ToolboxUtilities"]
      195 CALL                             R28 1 1
      196 GETIMPORT                        R29 K6 [game]
      198 LOADK                            R31 K41 ["ToolboxDisableAnimationFetchLoop"]
      199 LOADB                            R32 0
      200 NAMECALL                         R29 R29 K42 ["DefineFastFlag"]
      202 CALL                             R29 3 1
      203 GETIMPORT                        R30 K6 [game]
      205 LOADK                            R32 K43 ["ToolboxGrantUniverseAudioPermissionsTimeoutInMS"]
      206 NAMECALL                         R30 R30 K44 ["GetFastInt"]
      208 CALL                             R30 2 1
      209 GETIMPORT                        R31 K6 [game]
      211 LOADK                            R33 K45 ["HttpService"]
      212 NAMECALL                         R31 R31 K46 ["GetService"]
      214 CALL                             R31 2 1
      215 NEWTABLE                         R32 128 0
      217 SETTABLEKS                       R32 R32 K47 ["__index"]
      219 GETIMPORT                        R33 K11 [require]
      221 GETTABLEKS                       R34 R13 K48 ["Cryo"]
      223 CALL                             R33 1 1
      224 GETIMPORT                        R34 K11 [require]
      226 GETTABLEKS                       R35 R0 K3 ["Src"]
      228 GETTABLEKS                       R35 R35 K49 ["Reducers"]
      230 GETTABLEKS                       R35 R35 K50 ["PageInfo"]
      232 CALL                             R34 1 1
      233 LOADNIL                          R35
      234 LOADNIL                          R36
      235 MOVE                             R37 R11
      236 CALL                             R37 0 1
      237 JUMPIFNOT                        R37 ; [+17]
      238 GETTABLEKS                       R37 R16 K51 ["RobloxAPI"]
      240 GETTABLEKS                       R37 R37 K52 ["new"]
      242 GETTABLEKS                       R38 R16 K23 ["Http"]
      244 GETTABLEKS                       R38 R38 K24 ["Networking"]
      246 GETTABLEKS                       R38 R38 K52 ["new"]
      248 CALL                             R38 0 1
      249 CALL                             R37 1 1
      250 MOVE                             R35 R37
      251 GETTABLEKS                       R37 R35 K53 ["API"]
      253 GETTABLEKS                       R36 R37 K54 ["CreatorInventory"]
      255 DUPCLOSURE                       R37 K55 [PROTO_0]
      256 CAPTURE                          VAL R12
      257 CAPTURE                          VAL R32
      258 SETTABLEKS                       R37 R32 K52 ["new"]
      260 DUPCLOSURE                       R37 K56 [PROTO_1]
      261 CAPTURE                          VAL R18
      262 DUPCLOSURE                       R38 K57 [PROTO_3]
      263 CAPTURE                          VAL R17
      264 CAPTURE                          VAL R38
      265 DUPCLOSURE                       R39 K58 [PROTO_4]
      266 CAPTURE                          VAL R31
      267 DUPCLOSURE                       R40 K59 [PROTO_5]
      268 SETTABLEKS                       R40 R32 K60 ["jsonEncode"]
      270 DUPCLOSURE                       R40 K61 [PROTO_7]
      271 CAPTURE                          VAL R20
      272 CAPTURE                          VAL R21
      273 CAPTURE                          VAL R22
      274 CAPTURE                          VAL R38
      275 CAPTURE                          VAL R18
      276 SETTABLEKS                       R40 R32 K62 ["getAssets"]
      278 DUPCLOSURE                       R40 K63 [PROTO_9]
      279 CAPTURE                          VAL R26
      280 CAPTURE                          VAL R28
      281 CAPTURE                          VAL R15
      282 CAPTURE                          VAL R21
      283 CAPTURE                          VAL R22
      284 CAPTURE                          VAL R38
      285 CAPTURE                          VAL R18
      286 SETTABLEKS                       R40 R32 K64 ["getToolboxItems"]
      288 DUPCLOSURE                       R40 K65 [PROTO_11]
      289 CAPTURE                          VAL R21
      290 CAPTURE                          VAL R38
      291 CAPTURE                          VAL R18
      292 SETTABLEKS                       R40 R32 K66 ["getItemDetailsAssetIds"]
      294 DUPCLOSURE                       R40 K67 [PROTO_12]
      295 SETTABLEKS                       R40 R32 K68 ["getItemDetails"]
      297 GETIMPORT                        R40 K6 [game]
      299 LOADK                            R42 K69 ["ToolboxMinAnimationPageSize"]
      300 LOADN                            R43 25
      301 NAMECALL                         R40 R40 K70 ["DefineFastInt"]
      303 CALL                             R40 3 1
      304 DUPCLOSURE                       R41 K71 [PROTO_13]
      305 NEWCLOSURE                       R42 P10
      306 CAPTURE                          REF R36
      307 CAPTURE                          VAL R41
      308 CAPTURE                          VAL R40
      309 CAPTURE                          VAL R29
      310 CAPTURE                          VAL R42
      311 NEWCLOSURE                       R43 P11
      312 CAPTURE                          REF R36
      313 CAPTURE                          VAL R42
      314 SETTABLEKS                       R43 R32 K72 ["requestCreatorInventoryAssets"]
      316 DUPCLOSURE                       R43 K73 [PROTO_18]
      317 CAPTURE                          VAL R20
      318 CAPTURE                          VAL R21
      319 CAPTURE                          VAL R22
      320 CAPTURE                          VAL R38
      321 CAPTURE                          VAL R18
      322 SETTABLEKS                       R43 R32 K74 ["getDevelopAsset"]
      324 DUPCLOSURE                       R43 K75 [PROTO_20]
      325 CAPTURE                          VAL R21
      326 CAPTURE                          VAL R38
      327 CAPTURE                          VAL R18
      328 SETTABLEKS                       R43 R32 K76 ["getAllowedItemTypes"]
      330 DUPCLOSURE                       R43 K77 [PROTO_23]
      331 CAPTURE                          VAL R20
      332 CAPTURE                          VAL R19
      333 CAPTURE                          VAL R26
      334 CAPTURE                          VAL R27
      335 CAPTURE                          VAL R21
      336 CAPTURE                          VAL R22
      337 CAPTURE                          VAL R17
      338 CAPTURE                          VAL R38
      339 CAPTURE                          VAL R18
      340 CAPTURE                          VAL R33
      341 SETTABLEKS                       R43 R32 K78 ["getAssetCreations"]
      343 DUPCLOSURE                       R43 K79 [PROTO_26]
      344 CAPTURE                          VAL R20
      345 CAPTURE                          VAL R26
      346 CAPTURE                          VAL R27
      347 CAPTURE                          VAL R21
      348 CAPTURE                          VAL R22
      349 CAPTURE                          VAL R17
      350 CAPTURE                          VAL R38
      351 CAPTURE                          VAL R18
      352 CAPTURE                          VAL R33
      353 SETTABLEKS                       R43 R32 K80 ["getAssetGroupCreations"]
      355 DUPCLOSURE                       R43 K81 [PROTO_28]
      356 CAPTURE                          VAL R21
      357 CAPTURE                          VAL R38
      358 CAPTURE                          VAL R18
      359 SETTABLEKS                       R43 R32 K82 ["getItem"]
      361 DUPCLOSURE                       R43 K83 [PROTO_30]
      362 CAPTURE                          VAL R21
      363 CAPTURE                          VAL R38
      364 CAPTURE                          VAL R18
      365 SETTABLEKS                       R43 R32 K84 ["getItemsByCreator"]
      367 DUPCLOSURE                       R43 K85 [PROTO_32]
      368 CAPTURE                          VAL R21
      369 CAPTURE                          VAL R38
      370 CAPTURE                          VAL R18
      371 SETTABLEKS                       R43 R32 K86 ["getCreatorInfo"]
      373 DUPCLOSURE                       R43 K87 [PROTO_34]
      374 CAPTURE                          VAL R21
      375 CAPTURE                          VAL R38
      376 CAPTURE                          VAL R18
      377 SETTABLEKS                       R43 R32 K88 ["getBundleMetadata"]
      379 DUPCLOSURE                       R43 K89 [PROTO_37]
      380 CAPTURE                          VAL R21
      381 CAPTURE                          VAL R7
      382 CAPTURE                          VAL R8
      383 CAPTURE                          VAL R10
      384 CAPTURE                          VAL R37
      385 CAPTURE                          VAL R17
      386 SETTABLEKS                       R43 R32 K90 ["postBundleCreationContext"]
      388 DUPCLOSURE                       R43 K91 [PROTO_40]
      389 CAPTURE                          VAL R21
      390 CAPTURE                          VAL R37
      391 CAPTURE                          VAL R17
      392 SETTABLEKS                       R43 R32 K92 ["postCreateBundle"]
      394 DUPCLOSURE                       R43 K93 [PROTO_42]
      395 CAPTURE                          VAL R21
      396 CAPTURE                          VAL R38
      397 CAPTURE                          VAL R18
      398 SETTABLEKS                       R43 R32 K94 ["getBundleCreationStatus"]
      400 DUPCLOSURE                       R43 K95 [PROTO_44]
      401 CAPTURE                          VAL R21
      402 CAPTURE                          VAL R38
      403 CAPTURE                          VAL R18
      404 SETTABLEKS                       R43 R32 K96 ["getDefaultCreateBundleDataSharing"]
      406 DUPCLOSURE                       R43 K97 [PROTO_46]
      407 CAPTURE                          VAL R21
      408 CAPTURE                          VAL R38
      409 CAPTURE                          VAL R37
      410 SETTABLEKS                       R43 R32 K98 ["postCreateBundleDataSharing"]
      412 DUPCLOSURE                       R43 K99 [PROTO_48]
      413 CAPTURE                          VAL R21
      414 CAPTURE                          VAL R38
      415 CAPTURE                          VAL R37
      416 SETTABLEKS                       R43 R32 K100 ["postCreateAvatarAssetDataSharing"]
      418 DUPCLOSURE                       R43 K101 [PROTO_50]
      419 CAPTURE                          VAL R21
      420 CAPTURE                          VAL R38
      421 CAPTURE                          VAL R18
      422 SETTABLEKS                       R43 R32 K102 ["getAssetMediaIds"]
      424 DUPCLOSURE                       R43 K103 [PROTO_52]
      425 CAPTURE                          VAL R21
      426 CAPTURE                          VAL R38
      427 CAPTURE                          VAL R18
      428 SETTABLEKS                       R43 R32 K104 ["getVote"]
      430 DUPCLOSURE                       R43 K105 [PROTO_54]
      431 CAPTURE                          VAL R21
      432 CAPTURE                          VAL R38
      433 CAPTURE                          VAL R37
      434 SETTABLEKS                       R43 R32 K106 ["postVote"]
      436 DUPCLOSURE                       R43 K107 [PROTO_56]
      437 CAPTURE                          VAL R21
      438 CAPTURE                          VAL R38
      439 CAPTURE                          VAL R37
      440 SETTABLEKS                       R43 R32 K108 ["configureSales"]
      442 DUPCLOSURE                       R43 K109 [PROTO_58]
      443 CAPTURE                          VAL R21
      444 CAPTURE                          VAL R38
      445 CAPTURE                          VAL R37
      446 SETTABLEKS                       R43 R32 K110 ["updateSales"]
      448 DUPCLOSURE                       R43 K111 [PROTO_60]
      449 CAPTURE                          VAL R21
      450 CAPTURE                          VAL R38
      451 CAPTURE                          VAL R37
      452 SETTABLEKS                       R43 R32 K112 ["postUnvote"]
      454 DUPCLOSURE                       R43 K113 [PROTO_62]
      455 CAPTURE                          VAL R21
      456 CAPTURE                          VAL R38
      457 CAPTURE                          VAL R37
      458 SETTABLEKS                       R43 R32 K114 ["postInsertAsset"]
      460 DUPCLOSURE                       R43 K115 [PROTO_64]
      461 CAPTURE                          VAL R21
      462 CAPTURE                          VAL R38
      463 CAPTURE                          VAL R18
      464 SETTABLEKS                       R43 R32 K116 ["getManageableGroups"]
      466 DUPCLOSURE                       R43 K117 [PROTO_66]
      467 CAPTURE                          VAL R21
      468 CAPTURE                          VAL R18
      469 SETTABLEKS                       R43 R32 K118 ["getUsers"]
      471 DUPCLOSURE                       R43 K119 [PROTO_67]
      472 CAPTURE                          VAL R21
      473 CAPTURE                          VAL R18
      474 SETTABLEKS                       R43 R32 K120 ["getFavoriteCounts"]
      476 DUPCLOSURE                       R43 K121 [PROTO_68]
      477 CAPTURE                          VAL R21
      478 CAPTURE                          VAL R18
      479 SETTABLEKS                       R43 R32 K122 ["getFavorited"]
      481 DUPCLOSURE                       R43 K123 [PROTO_69]
      482 CAPTURE                          VAL R21
      483 CAPTURE                          VAL R37
      484 SETTABLEKS                       R43 R32 K124 ["createSave"]
      486 DUPCLOSURE                       R43 K125 [PROTO_70]
      487 CAPTURE                          VAL R21
      488 CAPTURE                          VAL R18
      489 SETTABLEKS                       R43 R32 K126 ["deleteSave"]
      491 DUPCLOSURE                       R43 K127 [PROTO_71]
      492 CAPTURE                          VAL R21
      493 CAPTURE                          VAL R18
      494 SETTABLEKS                       R43 R32 K128 ["getSave"]
      496 DUPCLOSURE                       R43 K129 [PROTO_72]
      497 CAPTURE                          VAL R21
      498 CAPTURE                          VAL R18
      499 SETTABLEKS                       R43 R32 K130 ["getDevelopAssetMetadata"]
      501 DUPCLOSURE                       R43 K131 [PROTO_73]
      502 CAPTURE                          VAL R21
      503 CAPTURE                          VAL R18
      504 SETTABLEKS                       R43 R32 K132 ["getVersionHistory"]
      506 DUPCLOSURE                       R43 K133 [PROTO_74]
      507 CAPTURE                          VAL R21
      508 CAPTURE                          VAL R18
      509 SETTABLEKS                       R43 R32 K134 ["postRevertVersion"]
      511 DUPCLOSURE                       R43 K135 [PROTO_75]
      512 CAPTURE                          VAL R21
      513 CAPTURE                          VAL R18
      514 SETTABLEKS                       R43 R32 K136 ["getVersionDescriptions"]
      516 DUPCLOSURE                       R43 K137 [PROTO_76]
      517 CAPTURE                          VAL R21
      518 CAPTURE                          VAL R18
      519 SETTABLEKS                       R43 R32 K138 ["getVersionHistoryWithNotes"]
      521 DUPCLOSURE                       R43 K139 [PROTO_78]
      522 CAPTURE                          VAL R21
      523 CAPTURE                          VAL R38
      524 CAPTURE                          VAL R37
      525 SETTABLEKS                       R43 R32 K140 ["postVersionDescription"]
      527 DUPCLOSURE                       R43 K141 [PROTO_79]
      528 CAPTURE                          VAL R21
      529 CAPTURE                          VAL R37
      530 SETTABLEKS                       R43 R32 K142 ["postFavorite"]
      532 DUPCLOSURE                       R43 K143 [PROTO_80]
      533 CAPTURE                          VAL R21
      534 CAPTURE                          VAL R18
      535 SETTABLEKS                       R43 R32 K144 ["deleteFavorite"]
      537 DUPCLOSURE                       R43 K145 [PROTO_82]
      538 CAPTURE                          VAL R21
      539 CAPTURE                          VAL R37
      540 CAPTURE                          VAL R17
      541 SETTABLEKS                       R43 R32 K146 ["uploadCatalogItem"]
      543 DUPCLOSURE                       R43 K147 [PROTO_84]
      544 CAPTURE                          VAL R21
      545 CAPTURE                          VAL R38
      546 CAPTURE                          VAL R37
      547 SETTABLEKS                       R43 R32 K148 ["uploadCatalogItemFormat"]
      549 DUPCLOSURE                       R43 K149 [PROTO_86]
      550 CAPTURE                          VAL R21
      551 CAPTURE                          VAL R39
      552 CAPTURE                          VAL R37
      553 CAPTURE                          VAL R17
      554 SETTABLEKS                       R43 R32 K150 ["uploadAssetThumbnail"]
      556 DUPCLOSURE                       R43 K151 [PROTO_87]
      557 CAPTURE                          VAL R21
      558 CAPTURE                          VAL R18
      559 SETTABLEKS                       R43 R32 K152 ["getThumbnailStatus"]
      561 DUPCLOSURE                       R43 K153 [PROTO_89]
      562 CAPTURE                          VAL R21
      563 CAPTURE                          VAL R37
      564 CAPTURE                          VAL R17
      565 SETTABLEKS                       R43 R32 K154 ["configureCatalogItem"]
      567 DUPCLOSURE                       R43 K155 [PROTO_90]
      568 CAPTURE                          VAL R21
      569 CAPTURE                          VAL R2
      570 CAPTURE                          VAL R3
      571 CAPTURE                          VAL R37
      572 SETTABLEKS                       R43 R32 K156 ["patchAsset"]
      574 DUPCLOSURE                       R43 K157 [PROTO_91]
      575 CAPTURE                          VAL R21
      576 CAPTURE                          VAL R18
      577 SETTABLEKS                       R43 R32 K158 ["validateAnimation"]
      579 DUPCLOSURE                       R43 K159 [PROTO_92]
      580 CAPTURE                          VAL R31
      581 DUPCLOSURE                       R44 K160 [PROTO_95]
      582 CAPTURE                          VAL R21
      583 CAPTURE                          VAL R18
      584 CAPTURE                          VAL R17
      585 SETTABLEKS                       R44 R32 K161 ["waitForOperation"]
      587 DUPCLOSURE                       R44 K162 [PROTO_98]
      588 CAPTURE                          VAL R21
      589 CAPTURE                          VAL R43
      590 CAPTURE                          VAL R37
      591 CAPTURE                          VAL R17
      592 SETTABLEKS                       R44 R32 K163 ["postUploadAnimation"]
      594 DUPCLOSURE                       R44 K164 [PROTO_101]
      595 CAPTURE                          VAL R21
      596 CAPTURE                          VAL R43
      597 CAPTURE                          VAL R37
      598 CAPTURE                          VAL R17
      599 SETTABLEKS                       R44 R32 K165 ["postOverrideAnimation"]
      601 DUPCLOSURE                       R44 K166 [PROTO_102]
      602 CAPTURE                          VAL R21
      603 CAPTURE                          VAL R18
      604 SETTABLEKS                       R44 R32 K167 ["getIsVerifiedCreator"]
      606 DUPCLOSURE                       R44 K168 [PROTO_103]
      607 CAPTURE                          VAL R21
      608 CAPTURE                          VAL R18
      609 SETTABLEKS                       R44 R32 K169 ["getPluginInfo"]
      611 DUPCLOSURE                       R44 K170 [PROTO_104]
      612 CAPTURE                          VAL R21
      613 CAPTURE                          VAL R18
      614 SETTABLEKS                       R44 R32 K171 ["getLocalUserFriends"]
      616 DUPCLOSURE                       R44 K172 [PROTO_105]
      617 CAPTURE                          VAL R21
      618 SETTABLEKS                       R44 R32 K173 ["postForPackageMetadata"]
      620 DUPCLOSURE                       R44 K174 [PROTO_106]
      621 CAPTURE                          VAL R21
      622 CAPTURE                          VAL R18
      623 SETTABLEKS                       R44 R32 K175 ["getRobuxBalance"]
      625 DUPCLOSURE                       R44 K176 [PROTO_108]
      626 CAPTURE                          VAL R21
      627 CAPTURE                          VAL R37
      628 SETTABLEKS                       R44 R32 K177 ["getHasEditPermissionForAsset"]
      630 DUPCLOSURE                       R44 K178 [PROTO_109]
      631 CAPTURE                          VAL R5
      632 CAPTURE                          VAL R21
      633 CAPTURE                          VAL R18
      634 SETTABLEKS                       R44 R32 K179 ["purchaseAsset"]
      636 DUPCLOSURE                       R44 K180 [PROTO_110]
      637 CAPTURE                          VAL R21
      638 CAPTURE                          VAL R18
      639 SETTABLEKS                       R44 R32 K181 ["getPurchaserStatus"]
      641 MOVE                             R44 R6
      642 CALL                             R44 0 1
      643 JUMPIFNOT                        R44 ; [+5]
      644 DUPCLOSURE                       R44 K182 [PROTO_111]
      645 CAPTURE                          VAL R21
      646 CAPTURE                          VAL R18
      647 SETTABLEKS                       R44 R32 K183 ["getSellerStatus"]
      649 DUPCLOSURE                       R44 K184 [PROTO_112]
      650 CAPTURE                          VAL R21
      651 CAPTURE                          VAL R18
      652 SETTABLEKS                       R44 R32 K185 ["getGroupRoleInfo"]
      654 DUPCLOSURE                       R44 K186 [PROTO_113]
      655 CAPTURE                          VAL R21
      656 CAPTURE                          VAL R37
      657 SETTABLEKS                       R44 R32 K187 ["grantAssetPermissions"]
      659 DUPCLOSURE                       R44 K188 [PROTO_114]
      660 CAPTURE                          VAL R21
      661 CAPTURE                          VAL R30
      662 SETTABLEKS                       R44 R32 K189 ["grantAssetPermissionWithTimeout"]
      664 DUPCLOSURE                       R44 K190 [PROTO_117]
      665 CAPTURE                          VAL R21
      666 CAPTURE                          VAL R37
      667 CAPTURE                          VAL R17
      668 SETTABLEKS                       R44 R32 K191 ["batchGrantAssetPermissions"]
      670 DUPCLOSURE                       R44 K192 [PROTO_118]
      671 CAPTURE                          VAL R21
      672 CAPTURE                          VAL R37
      673 SETTABLEKS                       R44 R32 K193 ["revokeAssetPermissions"]
      675 DUPCLOSURE                       R44 K194 [PROTO_119]
      676 CAPTURE                          VAL R21
      677 CAPTURE                          VAL R18
      678 SETTABLEKS                       R44 R32 K195 ["getAssetPermissions"]
      680 DUPCLOSURE                       R44 K196 [PROTO_121]
      681 CAPTURE                          VAL R21
      682 CAPTURE                          VAL R38
      683 CAPTURE                          VAL R18
      684 SETTABLEKS                       R44 R32 K197 ["postAssetCheckPermissions"]
      686 DUPCLOSURE                       R44 K198 [PROTO_123]
      687 CAPTURE                          VAL R21
      688 CAPTURE                          VAL R38
      689 CAPTURE                          VAL R18
      690 SETTABLEKS                       R44 R32 K199 ["getItemUploadFee"]
      692 MOVE                             R44 R10
      693 CALL                             R44 0 1
      694 JUMPIFNOT                        R44 ; [+6]
      695 DUPCLOSURE                       R44 K200 [PROTO_125]
      696 CAPTURE                          VAL R21
      697 CAPTURE                          VAL R38
      698 CAPTURE                          VAL R18
      699 SETTABLEKS                       R44 R32 K201 ["getMetadataPermissions"]
      701 DUPCLOSURE                       R44 K202 [PROTO_127]
      702 CAPTURE                          VAL R21
      703 CAPTURE                          VAL R38
      704 CAPTURE                          VAL R18
      705 SETTABLEKS                       R44 R32 K203 ["getAssetTypeAgents"]
      707 DUPCLOSURE                       R44 K204 [PROTO_128]
      708 CAPTURE                          VAL R21
      709 CAPTURE                          VAL R18
      710 SETTABLEKS                       R44 R32 K205 ["getAutocompleteResults"]
      712 DUPCLOSURE                       R44 K206 [PROTO_129]
      713 CAPTURE                          VAL R21
      714 CAPTURE                          VAL R18
      715 SETTABLEKS                       R44 R32 K207 ["getHomeConfiguration"]
      717 DUPCLOSURE                       R44 K208 [PROTO_130]
      718 CAPTURE                          VAL R21
      719 CAPTURE                          VAL R18
      720 SETTABLEKS                       R44 R32 K209 ["getCreatorMarketplaceQuotas"]
      722 DUPCLOSURE                       R44 K210 [PROTO_131]
      723 CAPTURE                          VAL R21
      724 CAPTURE                          VAL R18
      725 SETTABLEKS                       R44 R32 K211 ["getPublishingRequirements"]
      727 DUPCLOSURE                       R44 K212 [PROTO_133]
      728 CAPTURE                          VAL R21
      729 CAPTURE                          VAL R38
      730 CAPTURE                          VAL R18
      731 SETTABLEKS                       R44 R32 K213 ["deleteAssetMedia"]
      733 DUPCLOSURE                       R44 K214 [PROTO_135]
      734 CAPTURE                          VAL R21
      735 CAPTURE                          VAL R38
      736 CAPTURE                          VAL R37
      737 SETTABLEKS                       R44 R32 K215 ["postSetAssetMediaOrder"]
      739 DUPCLOSURE                       R44 K216 [PROTO_139]
      740 CAPTURE                          VAL R21
      741 CAPTURE                          VAL R39
      742 CAPTURE                          VAL R38
      743 CAPTURE                          VAL R37
      744 CAPTURE                          VAL R17
      745 SETTABLEKS                       R44 R32 K217 ["postUploadAssetMedia"]
      747 DUPCLOSURE                       R44 K218 [PROTO_140]
      748 CAPTURE                          VAL R21
      749 CAPTURE                          VAL R18
      750 SETTABLEKS                       R44 R32 K219 ["getUniverseInfo"]
      752 MOVE                             R44 R4
      753 CALL                             R44 0 1
      754 JUMPIFNOT                        R44 ; [+5]
      755 DUPCLOSURE                       R44 K220 [PROTO_141]
      756 CAPTURE                          VAL R21
      757 CAPTURE                          VAL R18
      758 SETTABLEKS                       R44 R32 K221 ["getCodeSummary"]
      760 DUPCLOSURE                       R44 K222 [PROTO_142]
      761 CAPTURE                          VAL R21
      762 CAPTURE                          VAL R18
      763 SETTABLEKS                       R44 R32 K223 ["getFiatProduct"]
      765 DUPCLOSURE                       R44 K224 [PROTO_144]
      766 CAPTURE                          VAL R21
      767 CAPTURE                          VAL R38
      768 CAPTURE                          VAL R18
      769 SETTABLEKS                       R44 R32 K225 ["getAllowedGroupsForAction"]
      771 MOVE                             R44 R9
      772 CALL                             R44 0 1
      773 JUMPIFNOT                        R44 ; [+12]
      774 DUPCLOSURE                       R44 K226 [PROTO_146]
      775 CAPTURE                          VAL R21
      776 CAPTURE                          VAL R38
      777 CAPTURE                          VAL R18
      778 SETTABLEKS                       R44 R32 K227 ["getAvatarAssetsPrivacy"]
      780 DUPCLOSURE                       R44 K228 [PROTO_148]
      781 CAPTURE                          VAL R21
      782 CAPTURE                          VAL R38
      783 CAPTURE                          VAL R37
      784 SETTABLEKS                       R44 R32 K229 ["makeAvatarAssetsOpenUse"]
      786 DUPCLOSURE                       R44 K230 [PROTO_150]
      787 CAPTURE                          VAL R21
      788 CAPTURE                          VAL R37
      789 CAPTURE                          VAL R17
      790 SETTABLEKS                       R44 R32 K231 ["getAsset"]
      792 CLOSEUPVALS                      R36
      793 RETURN                           R32 1
