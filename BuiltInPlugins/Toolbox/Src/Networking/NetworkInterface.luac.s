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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_networkImp"]
        3 GETTABLEKS                       R3 R0 K1 ["Body"]
        5 NAMECALL                         R1 R1 K2 ["jsonDecode"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_58:
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

PROTO_59:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+6]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["reject"]
        6 LOADK                            R4 K1 ["Avatar item update is not enabled."]
        7 CALL                             R3 1 -1
        8 RETURN                           R3 -1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["constructPostAvatarItemUpdateContextUrl"]
       12 CALL                             R3 0 1
       13 GETTABLEKS                       R4 R0 K3 ["_networkImp"]
       15 DUPTABLE                         R6 K6 [{"originalAssetId", "assetType"}]
       16 SETTABLEKS                       R1 R6 K4 ["originalAssetId"]
       18 SETTABLEKS                       R2 R6 K5 ["assetType"]
       20 NAMECALL                         R4 R4 K7 ["jsonEncode"]
       22 CALL                             R4 2 1
       23 DUPTABLE                         R5 K13 [{["Url"], ["Method"] = "POST", ["Body"], ["Headers"]}]
       24 SETTABLEKS                       R3 R5 K8 ["Url"]
       26 SETTABLEKS                       R4 R5 K11 ["Body"]
       28 NEWTABLE                         R6 1 0
       30 LOADK                            R7 K14 ["application/json"]
       31 SETTABLEKS                       R7 R6 K15 ["Content-Type"]
       33 SETTABLEKS                       R6 R5 K12 ["Headers"]
       35 GETUPVAL                         R6 3
       36 LOADK                            R7 K16 ["createAvatarItemUpdateContext"]
       37 LOADK                            R8 K10 ["POST"]
       38 MOVE                             R9 R3
       39 MOVE                             R10 R4
       40 CALL                             R6 4 0
       41 GETTABLEKS                       R6 R0 K3 ["_networkImp"]
       43 MOVE                             R8 R5
       44 NAMECALL                         R6 R6 K17 ["requestInternalRaw"]
       46 CALL                             R6 2 1
       47 NEWCLOSURE                       R8 P0
       48 CAPTURE                          VAL R0
       49 NAMECALL                         R6 R6 K18 ["andThen"]
       51 CALL                             R6 2 1
       52 NEWCLOSURE                       R8 P1
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U1
       55 NAMECALL                         R6 R6 K19 ["catch"]
       57 CALL                             R6 2 -1
       58 RETURN                           R6 -1

PROTO_60:
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

PROTO_61:
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

PROTO_62:
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

PROTO_63:
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

PROTO_64:
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

PROTO_65:
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

PROTO_66:
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

PROTO_67:
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

PROTO_68:
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

PROTO_69:
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

PROTO_70:
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

PROTO_71:
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

PROTO_72:
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

PROTO_73:
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

PROTO_74:
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

PROTO_75:
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

PROTO_76:
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

PROTO_77:
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

PROTO_78:
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

PROTO_79:
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

PROTO_80:
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

PROTO_81:
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

PROTO_82:
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

PROTO_83:
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

PROTO_84:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["reject"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_85:
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
       34 DUPCLOSURE                       R7 K18 [PROTO_84]
       35 CAPTURE                          UPVAL U2
       36 NAMECALL                         R5 R5 K19 ["catch"]
       38 CALL                             R5 2 -1
       39 RETURN                           R5 -1

PROTO_86:
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

PROTO_87:
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

PROTO_88:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["reject"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_89:
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
       21 DUPCLOSURE                       R8 K5 [PROTO_88]
       22 CAPTURE                          UPVAL U3
       23 NAMECALL                         R6 R6 K6 ["catch"]
       25 CALL                             R6 2 -1
       26 RETURN                           R6 -1

PROTO_90:
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

PROTO_91:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["reject"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_92:
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
       39 DUPCLOSURE                       R8 K18 [PROTO_91]
       40 CAPTURE                          UPVAL U2
       41 NAMECALL                         R6 R6 K19 ["catch"]
       43 CALL                             R6 2 -1
       44 RETURN                           R6 -1

PROTO_93:
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

PROTO_94:
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

PROTO_95:
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

PROTO_96:
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

PROTO_97:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["reject"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_98:
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
       48 DUPCLOSURE                       R7 K17 [PROTO_97]
       49 CAPTURE                          UPVAL U2
       50 NAMECALL                         R5 R5 K18 ["catch"]
       52 CALL                             R5 2 -1
       53 CLOSEUPVALS                      R2
       54 RETURN                           R5 -1

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
       82 DUPCLOSURE                       R16 K42 [PROTO_100]
       83 CAPTURE                          UPVAL U3
       84 NAMECALL                         R14 R14 K43 ["catch"]
       86 CALL                             R14 2 -1
       87 RETURN                           R14 -1

PROTO_102:
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

PROTO_103:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["reject"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_104:
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
       66 DUPCLOSURE                       R9 K34 [PROTO_103]
       67 CAPTURE                          UPVAL U3
       68 NAMECALL                         R7 R7 K35 ["catch"]
       70 CALL                             R7 2 -1
       71 RETURN                           R7 -1

PROTO_105:
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

PROTO_106:
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

PROTO_107:
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

PROTO_108:
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

PROTO_109:
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

PROTO_110:
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

PROTO_111:
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

PROTO_112:
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

PROTO_113:
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

PROTO_114:
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

PROTO_115:
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

PROTO_117:
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

PROTO_118:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_networkImp"]
        3 GETTABLEKS                       R3 R0 K1 ["responseBody"]
        5 NAMECALL                         R1 R1 K2 ["jsonDecode"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_119:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["reject"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_120:
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
       55 DUPCLOSURE                       R8 K25 [PROTO_119]
       56 CAPTURE                          UPVAL U2
       57 NAMECALL                         R6 R6 K26 ["catch"]
       59 CALL                             R6 2 -1
       60 RETURN                           R6 -1

PROTO_121:
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

PROTO_122:
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

PROTO_123:
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

PROTO_124:
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

PROTO_125:
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

PROTO_126:
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

PROTO_127:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["shouldDebugUrls"]
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+21]
        6 GETIMPORT                        R1 K2 [print]
        8 LOADK                            R2 K3 ["NetworkInterface:%s()"]
        9 LOADK                            R4 K4 ["getPublishingPreferences"]
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

PROTO_128:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["constructGetPublishingPreferencesUrl"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R2
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R0
       10 CALL                             R3 1 -1
       11 RETURN                           R3 -1

PROTO_129:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["shouldDebugUrls"]
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+21]
        6 GETIMPORT                        R1 K2 [print]
        8 LOADK                            R2 K3 ["NetworkInterface:%s()"]
        9 LOADK                            R4 K4 ["getPublishingFeePreview"]
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

PROTO_130:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["constructGetPublishingFeePreviewUrl"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R2
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R0
       10 CALL                             R3 1 -1
       11 RETURN                           R3 -1

PROTO_131:
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

PROTO_132:
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

PROTO_133:
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

PROTO_134:
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

PROTO_135:
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

PROTO_136:
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

PROTO_137:
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

PROTO_138:
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

PROTO_139:
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

PROTO_140:
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

PROTO_141:
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

PROTO_142:
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

PROTO_143:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_networkImp"]
        3 GETTABLEKS                       R3 R0 K1 ["Body"]
        5 NAMECALL                         R1 R1 K2 ["jsonDecode"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_144:
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

PROTO_145:
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

PROTO_146:
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

PROTO_147:
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

PROTO_148:
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

PROTO_149:
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

PROTO_150:
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

PROTO_151:
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

PROTO_152:
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

PROTO_153:
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

PROTO_154:
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

PROTO_155:
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

PROTO_156:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["reject"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_157:
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
       31 DUPCLOSURE                       R6 K16 [PROTO_156]
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
       45 GETTABLEKS                       R7 R0 K3 ["Src"]
       47 GETTABLEKS                       R7 R7 K15 ["Flags"]
       49 GETTABLEKS                       R7 R7 K16 ["getFFlagToolboxPublishOnApproval"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K11 [require]
       54 GETTABLEKS                       R8 R1 K12 ["SharedFlags"]
       56 GETTABLEKS                       R8 R8 K17 ["getFFlagToolboxAssetConfigOnboardingLink"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K11 [require]
       61 GETTABLEKS                       R9 R1 K12 ["SharedFlags"]
       63 GETTABLEKS                       R9 R9 K18 ["getFFlagEnableUGCBundleUploadBodyScale"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K11 [require]
       68 GETTABLEKS                       R10 R1 K12 ["SharedFlags"]
       70 GETTABLEKS                       R10 R10 K19 ["getFFlagEnableBodyColorSetUploadSupport"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K11 [require]
       75 GETTABLEKS                       R11 R0 K3 ["Src"]
       77 GETTABLEKS                       R11 R11 K15 ["Flags"]
       79 GETTABLEKS                       R11 R11 K20 ["getFFlagCheckAvatarAssetPrivacy"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K11 [require]
       84 GETTABLEKS                       R12 R0 K3 ["Src"]
       86 GETTABLEKS                       R12 R12 K15 ["Flags"]
       88 GETTABLEKS                       R12 R12 K21 ["getFFlagToolboxDynamicUploadFee"]
       90 CALL                             R11 1 1
       91 GETIMPORT                        R12 K11 [require]
       93 GETTABLEKS                       R13 R0 K3 ["Src"]
       95 GETTABLEKS                       R13 R13 K15 ["Flags"]
       97 GETTABLEKS                       R13 R13 K22 ["getFFlagEnableUpdateAvatarItem"]
       99 CALL                             R12 1 1
      100 GETIMPORT                        R13 K11 [require]
      102 GETTABLEKS                       R14 R0 K3 ["Src"]
      104 GETTABLEKS                       R14 R14 K15 ["Flags"]
      106 GETTABLEKS                       R14 R14 K23 ["getEngineFeatureToolboxPassThroughAssetType"]
      108 CALL                             R13 1 1
      109 GETIMPORT                        R14 K11 [require]
      111 GETTABLEKS                       R15 R0 K24 ["Libs"]
      113 GETTABLEKS                       R15 R15 K25 ["Http"]
      115 GETTABLEKS                       R15 R15 K26 ["Networking"]
      117 CALL                             R14 1 1
      118 GETTABLEKS                       R15 R0 K27 ["Packages"]
      120 GETIMPORT                        R16 K11 [require]
      122 GETTABLEKS                       R17 R15 K28 ["Framework"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K11 [require]
      127 GETTABLEKS                       R18 R15 K29 ["Dash"]
      129 CALL                             R17 1 1
      130 GETIMPORT                        R18 K11 [require]
      132 GETTABLEKS                       R19 R15 K26 ["Networking"]
      134 CALL                             R18 1 1
      135 GETTABLEKS                       R19 R16 K4 ["Util"]
      137 GETTABLEKS                       R19 R19 K30 ["Promise"]
      139 GETIMPORT                        R20 K11 [require]
      141 GETTABLEKS                       R21 R1 K31 ["DebugFlags"]
      143 CALL                             R20 1 1
      144 GETIMPORT                        R21 K11 [require]
      146 GETTABLEKS                       R22 R1 K32 ["getUserId"]
      148 CALL                             R21 1 1
      149 GETIMPORT                        R22 K11 [require]
      151 GETTABLEKS                       R23 R1 K33 ["PageInfoHelper"]
      153 CALL                             R22 1 1
      154 GETIMPORT                        R23 K11 [require]
      156 GETTABLEKS                       R24 R1 K34 ["Urls"]
      158 CALL                             R23 1 1
      159 GETIMPORT                        R24 K11 [require]
      161 GETTABLEKS                       R25 R1 K35 ["Constants"]
      163 CALL                             R24 1 1
      164 GETIMPORT                        R25 K11 [require]
      166 GETTABLEKS                       R26 R0 K3 ["Src"]
      168 GETTABLEKS                       R26 R26 K36 ["Types"]
      170 GETTABLEKS                       R26 R26 K37 ["AssetQuotaTypes"]
      172 CALL                             R25 1 1
      173 GETIMPORT                        R26 K11 [require]
      175 GETTABLEKS                       R27 R0 K3 ["Src"]
      177 GETTABLEKS                       R27 R27 K36 ["Types"]
      179 GETTABLEKS                       R27 R27 K38 ["AssetSubTypes"]
      181 CALL                             R26 1 1
      182 GETIMPORT                        R27 K11 [require]
      184 GETTABLEKS                       R28 R0 K3 ["Src"]
      186 GETTABLEKS                       R28 R28 K36 ["Types"]
      188 GETTABLEKS                       R28 R28 K39 ["HomeTypes"]
      190 CALL                             R27 1 1
      191 GETIMPORT                        R28 K11 [require]
      193 GETTABLEKS                       R29 R0 K3 ["Src"]
      195 GETTABLEKS                       R29 R29 K36 ["Types"]
      197 GETTABLEKS                       R29 R29 K40 ["Category"]
      199 CALL                             R28 1 1
      200 GETIMPORT                        R29 K11 [require]
      202 GETTABLEKS                       R30 R0 K3 ["Src"]
      204 GETTABLEKS                       R30 R30 K4 ["Util"]
      206 GETTABLEKS                       R30 R30 K41 ["AssetConfigUtil"]
      208 CALL                             R29 1 1
      209 GETIMPORT                        R30 K11 [require]
      211 GETTABLEKS                       R31 R1 K42 ["ToolboxUtilities"]
      213 CALL                             R30 1 1
      214 GETIMPORT                        R31 K6 [game]
      216 LOADK                            R33 K43 ["ToolboxDisableAnimationFetchLoop"]
      217 LOADB                            R34 0
      218 NAMECALL                         R31 R31 K44 ["DefineFastFlag"]
      220 CALL                             R31 3 1
      221 GETIMPORT                        R32 K6 [game]
      223 LOADK                            R34 K45 ["ToolboxGrantUniverseAudioPermissionsTimeoutInMS"]
      224 NAMECALL                         R32 R32 K46 ["GetFastInt"]
      226 CALL                             R32 2 1
      227 GETIMPORT                        R33 K6 [game]
      229 LOADK                            R35 K47 ["HttpService"]
      230 NAMECALL                         R33 R33 K48 ["GetService"]
      232 CALL                             R33 2 1
      233 NEWTABLE                         R34 128 0
      235 SETTABLEKS                       R34 R34 K49 ["__index"]
      237 GETIMPORT                        R35 K11 [require]
      239 GETTABLEKS                       R36 R15 K50 ["Cryo"]
      241 CALL                             R35 1 1
      242 GETIMPORT                        R36 K11 [require]
      244 GETTABLEKS                       R37 R0 K3 ["Src"]
      246 GETTABLEKS                       R37 R37 K51 ["Reducers"]
      248 GETTABLEKS                       R37 R37 K52 ["PageInfo"]
      250 CALL                             R36 1 1
      251 LOADNIL                          R37
      252 LOADNIL                          R38
      253 MOVE                             R39 R13
      254 CALL                             R39 0 1
      255 JUMPIFNOT                        R39 ; [+17]
      256 GETTABLEKS                       R39 R18 K53 ["RobloxAPI"]
      258 GETTABLEKS                       R39 R39 K54 ["new"]
      260 GETTABLEKS                       R40 R18 K25 ["Http"]
      262 GETTABLEKS                       R40 R40 K26 ["Networking"]
      264 GETTABLEKS                       R40 R40 K54 ["new"]
      266 CALL                             R40 0 1
      267 CALL                             R39 1 1
      268 MOVE                             R37 R39
      269 GETTABLEKS                       R39 R37 K55 ["API"]
      271 GETTABLEKS                       R38 R39 K56 ["CreatorInventory"]
      273 DUPCLOSURE                       R39 K57 [PROTO_0]
      274 CAPTURE                          VAL R14
      275 CAPTURE                          VAL R34
      276 SETTABLEKS                       R39 R34 K54 ["new"]
      278 DUPCLOSURE                       R39 K58 [PROTO_1]
      279 CAPTURE                          VAL R20
      280 DUPCLOSURE                       R40 K59 [PROTO_3]
      281 CAPTURE                          VAL R19
      282 CAPTURE                          VAL R40
      283 DUPCLOSURE                       R41 K60 [PROTO_4]
      284 CAPTURE                          VAL R33
      285 DUPCLOSURE                       R42 K61 [PROTO_5]
      286 SETTABLEKS                       R42 R34 K62 ["jsonEncode"]
      288 DUPCLOSURE                       R42 K63 [PROTO_7]
      289 CAPTURE                          VAL R22
      290 CAPTURE                          VAL R23
      291 CAPTURE                          VAL R24
      292 CAPTURE                          VAL R40
      293 CAPTURE                          VAL R20
      294 SETTABLEKS                       R42 R34 K64 ["getAssets"]
      296 DUPCLOSURE                       R42 K65 [PROTO_9]
      297 CAPTURE                          VAL R28
      298 CAPTURE                          VAL R30
      299 CAPTURE                          VAL R17
      300 CAPTURE                          VAL R23
      301 CAPTURE                          VAL R24
      302 CAPTURE                          VAL R40
      303 CAPTURE                          VAL R20
      304 SETTABLEKS                       R42 R34 K66 ["getToolboxItems"]
      306 DUPCLOSURE                       R42 K67 [PROTO_11]
      307 CAPTURE                          VAL R23
      308 CAPTURE                          VAL R40
      309 CAPTURE                          VAL R20
      310 SETTABLEKS                       R42 R34 K68 ["getItemDetailsAssetIds"]
      312 DUPCLOSURE                       R42 K69 [PROTO_12]
      313 SETTABLEKS                       R42 R34 K70 ["getItemDetails"]
      315 GETIMPORT                        R42 K6 [game]
      317 LOADK                            R44 K71 ["ToolboxMinAnimationPageSize"]
      318 LOADN                            R45 25
      319 NAMECALL                         R42 R42 K72 ["DefineFastInt"]
      321 CALL                             R42 3 1
      322 DUPCLOSURE                       R43 K73 [PROTO_13]
      323 NEWCLOSURE                       R44 P10
      324 CAPTURE                          REF R38
      325 CAPTURE                          VAL R43
      326 CAPTURE                          VAL R42
      327 CAPTURE                          VAL R31
      328 CAPTURE                          VAL R44
      329 NEWCLOSURE                       R45 P11
      330 CAPTURE                          REF R38
      331 CAPTURE                          VAL R44
      332 SETTABLEKS                       R45 R34 K74 ["requestCreatorInventoryAssets"]
      334 DUPCLOSURE                       R45 K75 [PROTO_18]
      335 CAPTURE                          VAL R22
      336 CAPTURE                          VAL R23
      337 CAPTURE                          VAL R24
      338 CAPTURE                          VAL R40
      339 CAPTURE                          VAL R20
      340 SETTABLEKS                       R45 R34 K76 ["getDevelopAsset"]
      342 DUPCLOSURE                       R45 K77 [PROTO_20]
      343 CAPTURE                          VAL R23
      344 CAPTURE                          VAL R40
      345 CAPTURE                          VAL R20
      346 SETTABLEKS                       R45 R34 K78 ["getAllowedItemTypes"]
      348 DUPCLOSURE                       R45 K79 [PROTO_23]
      349 CAPTURE                          VAL R22
      350 CAPTURE                          VAL R21
      351 CAPTURE                          VAL R28
      352 CAPTURE                          VAL R29
      353 CAPTURE                          VAL R23
      354 CAPTURE                          VAL R24
      355 CAPTURE                          VAL R19
      356 CAPTURE                          VAL R40
      357 CAPTURE                          VAL R20
      358 CAPTURE                          VAL R35
      359 SETTABLEKS                       R45 R34 K80 ["getAssetCreations"]
      361 DUPCLOSURE                       R45 K81 [PROTO_26]
      362 CAPTURE                          VAL R22
      363 CAPTURE                          VAL R28
      364 CAPTURE                          VAL R29
      365 CAPTURE                          VAL R23
      366 CAPTURE                          VAL R24
      367 CAPTURE                          VAL R19
      368 CAPTURE                          VAL R40
      369 CAPTURE                          VAL R20
      370 CAPTURE                          VAL R35
      371 SETTABLEKS                       R45 R34 K82 ["getAssetGroupCreations"]
      373 DUPCLOSURE                       R45 K83 [PROTO_28]
      374 CAPTURE                          VAL R23
      375 CAPTURE                          VAL R40
      376 CAPTURE                          VAL R20
      377 SETTABLEKS                       R45 R34 K84 ["getItem"]
      379 DUPCLOSURE                       R45 K85 [PROTO_30]
      380 CAPTURE                          VAL R23
      381 CAPTURE                          VAL R40
      382 CAPTURE                          VAL R20
      383 SETTABLEKS                       R45 R34 K86 ["getItemsByCreator"]
      385 DUPCLOSURE                       R45 K87 [PROTO_32]
      386 CAPTURE                          VAL R23
      387 CAPTURE                          VAL R40
      388 CAPTURE                          VAL R20
      389 SETTABLEKS                       R45 R34 K88 ["getCreatorInfo"]
      391 DUPCLOSURE                       R45 K89 [PROTO_34]
      392 CAPTURE                          VAL R23
      393 CAPTURE                          VAL R40
      394 CAPTURE                          VAL R20
      395 SETTABLEKS                       R45 R34 K90 ["getBundleMetadata"]
      397 DUPCLOSURE                       R45 K91 [PROTO_37]
      398 CAPTURE                          VAL R23
      399 CAPTURE                          VAL R8
      400 CAPTURE                          VAL R9
      401 CAPTURE                          VAL R11
      402 CAPTURE                          VAL R39
      403 CAPTURE                          VAL R19
      404 SETTABLEKS                       R45 R34 K92 ["postBundleCreationContext"]
      406 DUPCLOSURE                       R45 K93 [PROTO_40]
      407 CAPTURE                          VAL R23
      408 CAPTURE                          VAL R39
      409 CAPTURE                          VAL R19
      410 SETTABLEKS                       R45 R34 K94 ["postCreateBundle"]
      412 DUPCLOSURE                       R45 K95 [PROTO_42]
      413 CAPTURE                          VAL R23
      414 CAPTURE                          VAL R40
      415 CAPTURE                          VAL R20
      416 SETTABLEKS                       R45 R34 K96 ["getBundleCreationStatus"]
      418 DUPCLOSURE                       R45 K97 [PROTO_44]
      419 CAPTURE                          VAL R23
      420 CAPTURE                          VAL R40
      421 CAPTURE                          VAL R20
      422 SETTABLEKS                       R45 R34 K98 ["getDefaultCreateBundleDataSharing"]
      424 DUPCLOSURE                       R45 K99 [PROTO_46]
      425 CAPTURE                          VAL R23
      426 CAPTURE                          VAL R40
      427 CAPTURE                          VAL R39
      428 SETTABLEKS                       R45 R34 K100 ["postCreateBundleDataSharing"]
      430 DUPCLOSURE                       R45 K101 [PROTO_48]
      431 CAPTURE                          VAL R23
      432 CAPTURE                          VAL R40
      433 CAPTURE                          VAL R39
      434 SETTABLEKS                       R45 R34 K102 ["postCreateAvatarAssetDataSharing"]
      436 DUPCLOSURE                       R45 K103 [PROTO_50]
      437 CAPTURE                          VAL R23
      438 CAPTURE                          VAL R40
      439 CAPTURE                          VAL R20
      440 SETTABLEKS                       R45 R34 K104 ["getAssetMediaIds"]
      442 DUPCLOSURE                       R45 K105 [PROTO_52]
      443 CAPTURE                          VAL R23
      444 CAPTURE                          VAL R40
      445 CAPTURE                          VAL R20
      446 SETTABLEKS                       R45 R34 K106 ["getVote"]
      448 DUPCLOSURE                       R45 K107 [PROTO_54]
      449 CAPTURE                          VAL R23
      450 CAPTURE                          VAL R40
      451 CAPTURE                          VAL R39
      452 SETTABLEKS                       R45 R34 K108 ["postVote"]
      454 DUPCLOSURE                       R45 K109 [PROTO_56]
      455 CAPTURE                          VAL R23
      456 CAPTURE                          VAL R40
      457 CAPTURE                          VAL R39
      458 SETTABLEKS                       R45 R34 K110 ["configureSales"]
      460 DUPCLOSURE                       R45 K111 [PROTO_59]
      461 CAPTURE                          VAL R12
      462 CAPTURE                          VAL R19
      463 CAPTURE                          VAL R23
      464 CAPTURE                          VAL R39
      465 SETTABLEKS                       R45 R34 K112 ["createAvatarItemUpdateContext"]
      467 DUPCLOSURE                       R45 K113 [PROTO_61]
      468 CAPTURE                          VAL R23
      469 CAPTURE                          VAL R40
      470 CAPTURE                          VAL R39
      471 SETTABLEKS                       R45 R34 K114 ["updateSales"]
      473 DUPCLOSURE                       R45 K115 [PROTO_63]
      474 CAPTURE                          VAL R23
      475 CAPTURE                          VAL R40
      476 CAPTURE                          VAL R39
      477 SETTABLEKS                       R45 R34 K116 ["postUnvote"]
      479 DUPCLOSURE                       R45 K117 [PROTO_65]
      480 CAPTURE                          VAL R23
      481 CAPTURE                          VAL R40
      482 CAPTURE                          VAL R39
      483 SETTABLEKS                       R45 R34 K118 ["postInsertAsset"]
      485 DUPCLOSURE                       R45 K119 [PROTO_67]
      486 CAPTURE                          VAL R23
      487 CAPTURE                          VAL R40
      488 CAPTURE                          VAL R20
      489 SETTABLEKS                       R45 R34 K120 ["getManageableGroups"]
      491 DUPCLOSURE                       R45 K121 [PROTO_69]
      492 CAPTURE                          VAL R23
      493 CAPTURE                          VAL R20
      494 SETTABLEKS                       R45 R34 K122 ["getUsers"]
      496 DUPCLOSURE                       R45 K123 [PROTO_70]
      497 CAPTURE                          VAL R23
      498 CAPTURE                          VAL R20
      499 SETTABLEKS                       R45 R34 K124 ["getFavoriteCounts"]
      501 DUPCLOSURE                       R45 K125 [PROTO_71]
      502 CAPTURE                          VAL R23
      503 CAPTURE                          VAL R20
      504 SETTABLEKS                       R45 R34 K126 ["getFavorited"]
      506 DUPCLOSURE                       R45 K127 [PROTO_72]
      507 CAPTURE                          VAL R23
      508 CAPTURE                          VAL R39
      509 SETTABLEKS                       R45 R34 K128 ["createSave"]
      511 DUPCLOSURE                       R45 K129 [PROTO_73]
      512 CAPTURE                          VAL R23
      513 CAPTURE                          VAL R20
      514 SETTABLEKS                       R45 R34 K130 ["deleteSave"]
      516 DUPCLOSURE                       R45 K131 [PROTO_74]
      517 CAPTURE                          VAL R23
      518 CAPTURE                          VAL R20
      519 SETTABLEKS                       R45 R34 K132 ["getSave"]
      521 DUPCLOSURE                       R45 K133 [PROTO_75]
      522 CAPTURE                          VAL R23
      523 CAPTURE                          VAL R20
      524 SETTABLEKS                       R45 R34 K134 ["getDevelopAssetMetadata"]
      526 DUPCLOSURE                       R45 K135 [PROTO_76]
      527 CAPTURE                          VAL R23
      528 CAPTURE                          VAL R20
      529 SETTABLEKS                       R45 R34 K136 ["getVersionHistory"]
      531 DUPCLOSURE                       R45 K137 [PROTO_77]
      532 CAPTURE                          VAL R23
      533 CAPTURE                          VAL R20
      534 SETTABLEKS                       R45 R34 K138 ["postRevertVersion"]
      536 DUPCLOSURE                       R45 K139 [PROTO_78]
      537 CAPTURE                          VAL R23
      538 CAPTURE                          VAL R20
      539 SETTABLEKS                       R45 R34 K140 ["getVersionDescriptions"]
      541 DUPCLOSURE                       R45 K141 [PROTO_79]
      542 CAPTURE                          VAL R23
      543 CAPTURE                          VAL R20
      544 SETTABLEKS                       R45 R34 K142 ["getVersionHistoryWithNotes"]
      546 DUPCLOSURE                       R45 K143 [PROTO_81]
      547 CAPTURE                          VAL R23
      548 CAPTURE                          VAL R40
      549 CAPTURE                          VAL R39
      550 SETTABLEKS                       R45 R34 K144 ["postVersionDescription"]
      552 DUPCLOSURE                       R45 K145 [PROTO_82]
      553 CAPTURE                          VAL R23
      554 CAPTURE                          VAL R39
      555 SETTABLEKS                       R45 R34 K146 ["postFavorite"]
      557 DUPCLOSURE                       R45 K147 [PROTO_83]
      558 CAPTURE                          VAL R23
      559 CAPTURE                          VAL R20
      560 SETTABLEKS                       R45 R34 K148 ["deleteFavorite"]
      562 DUPCLOSURE                       R45 K149 [PROTO_85]
      563 CAPTURE                          VAL R23
      564 CAPTURE                          VAL R39
      565 CAPTURE                          VAL R19
      566 SETTABLEKS                       R45 R34 K150 ["uploadCatalogItem"]
      568 DUPCLOSURE                       R45 K151 [PROTO_87]
      569 CAPTURE                          VAL R23
      570 CAPTURE                          VAL R40
      571 CAPTURE                          VAL R39
      572 SETTABLEKS                       R45 R34 K152 ["uploadCatalogItemFormat"]
      574 DUPCLOSURE                       R45 K153 [PROTO_89]
      575 CAPTURE                          VAL R23
      576 CAPTURE                          VAL R41
      577 CAPTURE                          VAL R39
      578 CAPTURE                          VAL R19
      579 SETTABLEKS                       R45 R34 K154 ["uploadAssetThumbnail"]
      581 DUPCLOSURE                       R45 K155 [PROTO_90]
      582 CAPTURE                          VAL R23
      583 CAPTURE                          VAL R20
      584 SETTABLEKS                       R45 R34 K156 ["getThumbnailStatus"]
      586 DUPCLOSURE                       R45 K157 [PROTO_92]
      587 CAPTURE                          VAL R23
      588 CAPTURE                          VAL R39
      589 CAPTURE                          VAL R19
      590 SETTABLEKS                       R45 R34 K158 ["configureCatalogItem"]
      592 DUPCLOSURE                       R45 K159 [PROTO_93]
      593 CAPTURE                          VAL R23
      594 CAPTURE                          VAL R2
      595 CAPTURE                          VAL R3
      596 CAPTURE                          VAL R39
      597 SETTABLEKS                       R45 R34 K160 ["patchAsset"]
      599 DUPCLOSURE                       R45 K161 [PROTO_94]
      600 CAPTURE                          VAL R23
      601 CAPTURE                          VAL R20
      602 SETTABLEKS                       R45 R34 K162 ["validateAnimation"]
      604 DUPCLOSURE                       R45 K163 [PROTO_95]
      605 CAPTURE                          VAL R33
      606 DUPCLOSURE                       R46 K164 [PROTO_98]
      607 CAPTURE                          VAL R23
      608 CAPTURE                          VAL R20
      609 CAPTURE                          VAL R19
      610 SETTABLEKS                       R46 R34 K165 ["waitForOperation"]
      612 DUPCLOSURE                       R46 K166 [PROTO_101]
      613 CAPTURE                          VAL R23
      614 CAPTURE                          VAL R45
      615 CAPTURE                          VAL R39
      616 CAPTURE                          VAL R19
      617 SETTABLEKS                       R46 R34 K167 ["postUploadAnimation"]
      619 DUPCLOSURE                       R46 K168 [PROTO_104]
      620 CAPTURE                          VAL R23
      621 CAPTURE                          VAL R45
      622 CAPTURE                          VAL R39
      623 CAPTURE                          VAL R19
      624 SETTABLEKS                       R46 R34 K169 ["postOverrideAnimation"]
      626 DUPCLOSURE                       R46 K170 [PROTO_105]
      627 CAPTURE                          VAL R23
      628 CAPTURE                          VAL R20
      629 SETTABLEKS                       R46 R34 K171 ["getIsVerifiedCreator"]
      631 DUPCLOSURE                       R46 K172 [PROTO_106]
      632 CAPTURE                          VAL R23
      633 CAPTURE                          VAL R20
      634 SETTABLEKS                       R46 R34 K173 ["getPluginInfo"]
      636 DUPCLOSURE                       R46 K174 [PROTO_107]
      637 CAPTURE                          VAL R23
      638 CAPTURE                          VAL R20
      639 SETTABLEKS                       R46 R34 K175 ["getLocalUserFriends"]
      641 DUPCLOSURE                       R46 K176 [PROTO_108]
      642 CAPTURE                          VAL R23
      643 SETTABLEKS                       R46 R34 K177 ["postForPackageMetadata"]
      645 DUPCLOSURE                       R46 K178 [PROTO_109]
      646 CAPTURE                          VAL R23
      647 CAPTURE                          VAL R20
      648 SETTABLEKS                       R46 R34 K179 ["getRobuxBalance"]
      650 DUPCLOSURE                       R46 K180 [PROTO_111]
      651 CAPTURE                          VAL R23
      652 CAPTURE                          VAL R39
      653 SETTABLEKS                       R46 R34 K181 ["getHasEditPermissionForAsset"]
      655 DUPCLOSURE                       R46 K182 [PROTO_112]
      656 CAPTURE                          VAL R5
      657 CAPTURE                          VAL R23
      658 CAPTURE                          VAL R20
      659 SETTABLEKS                       R46 R34 K183 ["purchaseAsset"]
      661 DUPCLOSURE                       R46 K184 [PROTO_113]
      662 CAPTURE                          VAL R23
      663 CAPTURE                          VAL R20
      664 SETTABLEKS                       R46 R34 K185 ["getPurchaserStatus"]
      666 MOVE                             R46 R7
      667 CALL                             R46 0 1
      668 JUMPIFNOT                        R46 ; [+5]
      669 DUPCLOSURE                       R46 K186 [PROTO_114]
      670 CAPTURE                          VAL R23
      671 CAPTURE                          VAL R20
      672 SETTABLEKS                       R46 R34 K187 ["getSellerStatus"]
      674 DUPCLOSURE                       R46 K188 [PROTO_115]
      675 CAPTURE                          VAL R23
      676 CAPTURE                          VAL R20
      677 SETTABLEKS                       R46 R34 K189 ["getGroupRoleInfo"]
      679 DUPCLOSURE                       R46 K190 [PROTO_116]
      680 CAPTURE                          VAL R23
      681 CAPTURE                          VAL R39
      682 SETTABLEKS                       R46 R34 K191 ["grantAssetPermissions"]
      684 DUPCLOSURE                       R46 K192 [PROTO_117]
      685 CAPTURE                          VAL R23
      686 CAPTURE                          VAL R32
      687 SETTABLEKS                       R46 R34 K193 ["grantAssetPermissionWithTimeout"]
      689 DUPCLOSURE                       R46 K194 [PROTO_120]
      690 CAPTURE                          VAL R23
      691 CAPTURE                          VAL R39
      692 CAPTURE                          VAL R19
      693 SETTABLEKS                       R46 R34 K195 ["batchGrantAssetPermissions"]
      695 DUPCLOSURE                       R46 K196 [PROTO_121]
      696 CAPTURE                          VAL R23
      697 CAPTURE                          VAL R39
      698 SETTABLEKS                       R46 R34 K197 ["revokeAssetPermissions"]
      700 DUPCLOSURE                       R46 K198 [PROTO_122]
      701 CAPTURE                          VAL R23
      702 CAPTURE                          VAL R20
      703 SETTABLEKS                       R46 R34 K199 ["getAssetPermissions"]
      705 DUPCLOSURE                       R46 K200 [PROTO_124]
      706 CAPTURE                          VAL R23
      707 CAPTURE                          VAL R40
      708 CAPTURE                          VAL R20
      709 SETTABLEKS                       R46 R34 K201 ["postAssetCheckPermissions"]
      711 DUPCLOSURE                       R46 K202 [PROTO_126]
      712 CAPTURE                          VAL R23
      713 CAPTURE                          VAL R40
      714 CAPTURE                          VAL R20
      715 SETTABLEKS                       R46 R34 K203 ["getItemUploadFee"]
      717 MOVE                             R46 R6
      718 CALL                             R46 0 1
      719 JUMPIFNOT                        R46 ; [+12]
      720 DUPCLOSURE                       R46 K204 [PROTO_128]
      721 CAPTURE                          VAL R23
      722 CAPTURE                          VAL R40
      723 CAPTURE                          VAL R20
      724 SETTABLEKS                       R46 R34 K205 ["getPublishingPreferences"]
      726 DUPCLOSURE                       R46 K206 [PROTO_130]
      727 CAPTURE                          VAL R23
      728 CAPTURE                          VAL R40
      729 CAPTURE                          VAL R20
      730 SETTABLEKS                       R46 R34 K207 ["getPublishingFeePreview"]
      732 MOVE                             R46 R11
      733 CALL                             R46 0 1
      734 JUMPIFNOT                        R46 ; [+6]
      735 DUPCLOSURE                       R46 K208 [PROTO_132]
      736 CAPTURE                          VAL R23
      737 CAPTURE                          VAL R40
      738 CAPTURE                          VAL R20
      739 SETTABLEKS                       R46 R34 K209 ["getMetadataPermissions"]
      741 DUPCLOSURE                       R46 K210 [PROTO_134]
      742 CAPTURE                          VAL R23
      743 CAPTURE                          VAL R40
      744 CAPTURE                          VAL R20
      745 SETTABLEKS                       R46 R34 K211 ["getAssetTypeAgents"]
      747 DUPCLOSURE                       R46 K212 [PROTO_135]
      748 CAPTURE                          VAL R23
      749 CAPTURE                          VAL R20
      750 SETTABLEKS                       R46 R34 K213 ["getAutocompleteResults"]
      752 DUPCLOSURE                       R46 K214 [PROTO_136]
      753 CAPTURE                          VAL R23
      754 CAPTURE                          VAL R20
      755 SETTABLEKS                       R46 R34 K215 ["getHomeConfiguration"]
      757 DUPCLOSURE                       R46 K216 [PROTO_137]
      758 CAPTURE                          VAL R23
      759 CAPTURE                          VAL R20
      760 SETTABLEKS                       R46 R34 K217 ["getCreatorMarketplaceQuotas"]
      762 DUPCLOSURE                       R46 K218 [PROTO_138]
      763 CAPTURE                          VAL R23
      764 CAPTURE                          VAL R20
      765 SETTABLEKS                       R46 R34 K219 ["getPublishingRequirements"]
      767 DUPCLOSURE                       R46 K220 [PROTO_140]
      768 CAPTURE                          VAL R23
      769 CAPTURE                          VAL R40
      770 CAPTURE                          VAL R20
      771 SETTABLEKS                       R46 R34 K221 ["deleteAssetMedia"]
      773 DUPCLOSURE                       R46 K222 [PROTO_142]
      774 CAPTURE                          VAL R23
      775 CAPTURE                          VAL R40
      776 CAPTURE                          VAL R39
      777 SETTABLEKS                       R46 R34 K223 ["postSetAssetMediaOrder"]
      779 DUPCLOSURE                       R46 K224 [PROTO_146]
      780 CAPTURE                          VAL R23
      781 CAPTURE                          VAL R41
      782 CAPTURE                          VAL R40
      783 CAPTURE                          VAL R39
      784 CAPTURE                          VAL R19
      785 SETTABLEKS                       R46 R34 K225 ["postUploadAssetMedia"]
      787 DUPCLOSURE                       R46 K226 [PROTO_147]
      788 CAPTURE                          VAL R23
      789 CAPTURE                          VAL R20
      790 SETTABLEKS                       R46 R34 K227 ["getUniverseInfo"]
      792 MOVE                             R46 R4
      793 CALL                             R46 0 1
      794 JUMPIFNOT                        R46 ; [+5]
      795 DUPCLOSURE                       R46 K228 [PROTO_148]
      796 CAPTURE                          VAL R23
      797 CAPTURE                          VAL R20
      798 SETTABLEKS                       R46 R34 K229 ["getCodeSummary"]
      800 DUPCLOSURE                       R46 K230 [PROTO_149]
      801 CAPTURE                          VAL R23
      802 CAPTURE                          VAL R20
      803 SETTABLEKS                       R46 R34 K231 ["getFiatProduct"]
      805 DUPCLOSURE                       R46 K232 [PROTO_151]
      806 CAPTURE                          VAL R23
      807 CAPTURE                          VAL R40
      808 CAPTURE                          VAL R20
      809 SETTABLEKS                       R46 R34 K233 ["getAllowedGroupsForAction"]
      811 MOVE                             R46 R10
      812 CALL                             R46 0 1
      813 JUMPIFNOT                        R46 ; [+12]
      814 DUPCLOSURE                       R46 K234 [PROTO_153]
      815 CAPTURE                          VAL R23
      816 CAPTURE                          VAL R40
      817 CAPTURE                          VAL R20
      818 SETTABLEKS                       R46 R34 K235 ["getAvatarAssetsPrivacy"]
      820 DUPCLOSURE                       R46 K236 [PROTO_155]
      821 CAPTURE                          VAL R23
      822 CAPTURE                          VAL R40
      823 CAPTURE                          VAL R39
      824 SETTABLEKS                       R46 R34 K237 ["makeAvatarAssetsOpenUse"]
      826 DUPCLOSURE                       R46 K238 [PROTO_157]
      827 CAPTURE                          VAL R23
      828 CAPTURE                          VAL R39
      829 CAPTURE                          VAL R19
      830 SETTABLEKS                       R46 R34 K239 ["getAsset"]
      832 CLOSEUPVALS                      R38
      833 RETURN                           R34 1
