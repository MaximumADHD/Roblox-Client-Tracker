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
        0 GETTABLEKS                       R2 R0 K0 ["_networkImp"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["jsonEncode"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R11 0
        1 GETTABLEKS                       R10 R11 K0 ["constructPostUploadAssetUrl"]
        3 MOVE                             R11 R1
        4 MOVE                             R12 R2
        5 MOVE                             R13 R3
        6 MOVE                             R14 R4
        7 MOVE                             R15 R5
        8 MOVE                             R16 R6
        9 MOVE                             R17 R7
       10 MOVE                             R18 R8
       11 CALL                             R10 8 1
       12 GETUPVAL                         R11 1
       13 LOADK                            R12 K1 ["uploadCatalogItem"]
       14 LOADK                            R13 K2 ["POST"]
       15 MOVE                             R14 R10
       16 MOVE                             R15 R9
       17 CALL                             R11 4 0
       18 GETTABLEKS                       R11 R0 K3 ["_networkImp"]
       20 MOVE                             R13 R10
       21 MOVE                             R14 R9
       22 NAMECALL                         R11 R11 K4 ["httpPost"]
       24 CALL                             R11 3 -1
       25 RETURN                           R11 -1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["constructGetGroupsForSurfaceUrl"]
        3 LOADK                            R3 K1 ["StudioConvertToPackage"]
        4 CALL                             R2 1 1
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K2 ["shouldDebugUrls"]
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+21]
       10 GETIMPORT                        R3 K4 [print]
       12 LOADK                            R4 K5 ["NetworkInterface:%s()"]
       13 LOADK                            R6 K6 ["getMyGroups"]
       14 NAMECALL                         R4 R4 K7 ["format"]
       16 CALL                             R4 2 -1
       17 CALL                             R3 -1 0
       18 GETIMPORT                        R3 K4 [print]
       20 LOADK                            R4 K8 ["\t%s %s"]
       21 LOADK                            R7 K10 ["GET"]
       22 NAMECALL                         R7 R7 K11 ["upper"]
       24 CALL                             R7 1 1
       25 ORK                              R6 R7 K9 ["method=nil"]
       26 ORK                              R7 R2 K12 ["url=nil"]
       27 NAMECALL                         R4 R4 K7 ["format"]
       29 CALL                             R4 3 -1
       30 CALL                             R3 -1 0
       31 GETTABLEKS                       R3 R0 K13 ["_networkImp"]
       33 MOVE                             R5 R2
       34 NAMECALL                         R3 R3 K14 ["httpGetJson"]
       36 CALL                             R3 2 -1
       37 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["DEPRECATED_modules"]
       13 GETTABLEKS                       R3 R4 K6 ["Http"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R1 R2 K7 ["Networking"]
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R5 R0 K8 ["Src"]
       22 GETTABLEKS                       R4 R5 K9 ["Util"]
       24 GETTABLEKS                       R3 R4 K10 ["DebugFlags"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R6 R0 K8 ["Src"]
       31 GETTABLEKS                       R5 R6 K9 ["Util"]
       33 GETTABLEKS                       R4 R5 K11 ["Urls"]
       35 CALL                             R3 1 1
       36 NEWTABLE                         R4 8 0
       38 SETTABLEKS                       R4 R4 K12 ["__index"]
       40 DUPCLOSURE                       R5 K13 [PROTO_0]
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R4
       43 SETTABLEKS                       R5 R4 K14 ["new"]
       45 DUPCLOSURE                       R5 K15 [PROTO_1]
       46 CAPTURE                          VAL R2
       47 DUPCLOSURE                       R6 K16 [PROTO_2]
       48 SETTABLEKS                       R6 R4 K17 ["jsonEncode"]
       50 DUPCLOSURE                       R6 K18 [PROTO_3]
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R5
       53 SETTABLEKS                       R6 R4 K19 ["postUploadAsset"]
       55 DUPCLOSURE                       R6 K20 [PROTO_4]
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R2
       58 SETTABLEKS                       R6 R4 K21 ["getMyGroups"]
       60 RETURN                           R4 1
