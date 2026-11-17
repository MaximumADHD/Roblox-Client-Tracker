PROTO_0:
        0 ORK                              R1 R1 K0 [100]
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["makeQueryString"]
        5 DUPTABLE                         R5 K7 [{["userId"], ["width"], ["height"], ["format"] = "png"}]
        6 SETTABLEKS                       R0 R5 K2 ["userId"]
        8 SETTABLEKS                       R1 R5 K3 ["width"]
       10 SETTABLEKS                       R1 R5 K4 ["height"]
       12 CALL                             R4 1 1
       13 CONCAT                           R2 R3 R4
       14 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R9 0
        1 GETUPVAL                         R10 1
        2 GETTABLEKS                       R10 R10 K0 ["makeQueryString"]
        4 DUPTABLE                         R11 K11 [{["assetid"], ["type"], ["name"], ["description"], ["genreTypeId"], ["ispublic"], ["allowComments"], ["groupId"], ["isPackage"] = True}]
        5 SETTABLEKS                       R0 R11 K1 ["assetid"]
        7 FASTCALL1                        TOSTRING R1 ; [+3]
        8 MOVE                             R13 R1
        9 GETIMPORT                        R12 K13 [tostring]
       11 CALL                             R12 1 1
       12 SETTABLEKS                       R12 R11 K2 ["type"]
       14 FASTCALL1                        TOSTRING R2 ; [+3]
       15 MOVE                             R13 R2
       16 GETIMPORT                        R12 K13 [tostring]
       18 CALL                             R12 1 1
       19 SETTABLEKS                       R12 R11 K3 ["name"]
       21 FASTCALL1                        TOSTRING R3 ; [+3]
       22 MOVE                             R13 R3
       23 GETIMPORT                        R12 K13 [tostring]
       25 CALL                             R12 1 1
       26 SETTABLEKS                       R12 R11 K4 ["description"]
       28 SETTABLEKS                       R4 R11 K5 ["genreTypeId"]
       30 JUMPIFNOT                        R5 ; [+2]
       31 LOADK                            R12 K14 ["True"]
       32 JUMP                             ; [+1]
       33 LOADK                            R12 K15 ["False"]
       34 SETTABLEKS                       R12 R11 K6 ["ispublic"]
       36 JUMPIFNOT                        R6 ; [+2]
       37 LOADK                            R12 K14 ["True"]
       38 JUMP                             ; [+1]
       39 LOADK                            R12 K15 ["False"]
       40 SETTABLEKS                       R12 R11 K7 ["allowComments"]
       42 ORK                              R12 R7 K16 [""]
       43 SETTABLEKS                       R12 R11 K8 ["groupId"]
       45 CALL                             R10 1 1
       46 CONCAT                           R8 R9 R10
       47 RETURN                           R8 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_3:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["https://apis.%screator-home-api/v1/groups?surface=%s"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K4 ["DOMAIN"]
        6 MOVE                             R4 R0
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["DEPRECATED_modules"]
       13 GETTABLEKS                       R2 R2 K6 ["Http"]
       15 GETTABLEKS                       R2 R2 K7 ["Url"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K8 ["Src"]
       22 GETTABLEKS                       R3 R3 K9 ["Util"]
       24 GETTABLEKS                       R3 R3 K10 ["wrapStrictTable"]
       26 CALL                             R2 1 1
       27 NEWTABLE                         R3 4 0
       29 GETTABLEKS                       R5 R1 K11 ["BASE_URL"]
       31 LOADK                            R6 K12 ["headshot-thumbnail/image?"]
       32 CONCAT                           R4 R5 R6
       33 GETTABLEKS                       R6 R1 K13 ["DEVELOP_URL"]
       35 LOADK                            R7 K14 ["/v1/groups/%s"]
       36 CONCAT                           R5 R6 R7
       37 GETTABLEKS                       R7 R1 K15 ["DATA_URL"]
       39 LOADK                            R8 K16 ["Data/Upload.ashx?"]
       40 CONCAT                           R6 R7 R8
       41 GETTABLEKS                       R8 R1 K13 ["DEVELOP_URL"]
       43 LOADK                            R9 K17 ["v1/user/groups/canmanage"]
       44 CONCAT                           R7 R8 R9
       45 DUPCLOSURE                       R8 K18 [PROTO_0]
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R1
       48 SETTABLEKS                       R8 R3 K19 ["constructUserThumbnailUrl"]
       50 DUPCLOSURE                       R8 K20 [PROTO_1]
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R1
       53 SETTABLEKS                       R8 R3 K21 ["constructPostUploadAssetUrl"]
       55 DUPCLOSURE                       R8 K22 [PROTO_2]
       56 CAPTURE                          VAL R7
       57 SETTABLEKS                       R8 R3 K23 ["constructGetMyGroupUrl"]
       59 DUPCLOSURE                       R8 K24 [PROTO_3]
       60 CAPTURE                          VAL R1
       61 SETTABLEKS                       R8 R3 K25 ["constructGetGroupsForSurfaceUrl"]
       63 MOVE                             R8 R2
       64 MOVE                             R9 R3
       65 CALL                             R8 1 -1
       66 RETURN                           R8 -1
