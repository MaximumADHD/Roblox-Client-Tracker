PROTO_0:
        0 DUPTABLE                         R6 K6 [{"id", "altText", "approved", "imageId", "videoHash", "videoTitle"}]
        1 SETTABLEKS                       R0 R6 K0 ["id"]
        3 JUMPIFEQKNIL                     R1 ; [+3]
        5 MOVE                             R7 R1
        6 JUMP                             ; [+1]
        7 LOADNIL                          R7
        8 SETTABLEKS                       R7 R6 K1 ["altText"]
       10 JUMPIFEQKNIL                     R2 ; [+3]
       12 MOVE                             R7 R2
       13 JUMP                             ; [+1]
       14 LOADB                            R7 1
       15 SETTABLEKS                       R7 R6 K2 ["approved"]
       17 JUMPIFEQKNIL                     R3 ; [+3]
       19 MOVE                             R7 R3
       20 JUMP                             ; [+1]
       21 MOVE                             R7 R0
       22 SETTABLEKS                       R7 R6 K3 ["imageId"]
       24 JUMPIFEQKNIL                     R4 ; [+3]
       26 MOVE                             R7 R4
       27 JUMP                             ; [+1]
       28 LOADNIL                          R7
       29 SETTABLEKS                       R7 R6 K4 ["videoHash"]
       31 JUMPIFEQKNIL                     R5 ; [+3]
       33 MOVE                             R7 R5
       34 JUMP                             ; [+1]
       35 LOADNIL                          R7
       36 SETTABLEKS                       R7 R6 K5 ["videoTitle"]
       38 RETURN                           R6 1

PROTO_1:
        0 NEWTABLE                         R0 0 5
        2 DUPTABLE                         R1 K9 [{[1] = 11457774193, ["altText"] = , ["approved"] = True, ["imageId"] = 11457774193, ["videoHash"] = , ["videoTitle"] = }]
        3 DUPTABLE                         R2 K11 [{[1] = 10979850405, ["altText"] = , ["approved"] = True, ["imageId"] = 10979850405, ["videoHash"] = , ["videoTitle"] = }]
        4 DUPTABLE                         R3 K13 [{[1] = 11114178824, ["altText"] = , ["approved"] = True, ["imageId"] = 11114178824, ["videoHash"] = , ["videoTitle"] = }]
        5 DUPTABLE                         R4 K15 [{[1] = 11588223734, ["altText"] = , ["approved"] = True, ["imageId"] = 11588223734, ["videoHash"] = , ["videoTitle"] = }]
        6 DUPTABLE                         R5 K19 [{[1] = 1, ["altText"] = , ["approved"] = True, ["imageId"] = 1, ["videoHash"] = "wBYjsROAy5w", ["videoTitle"] = "RDC 2022 Intro"}]
        7 SETLIST                          R0 R1 5 [1]
        9 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"thumbnailUpdateInfo"}]
        2 SETTABLEKS                       R0 R3 K0 ["thumbnailUpdateInfo"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 GETIMPORT                        R1 K4 [print]
        9 LOADK                            R2 K5 ["New thumbnail update info:"]
       10 MOVE                             R3 R0
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K1 [{"thumbnailUpdateInfo"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["thumbnailUpdateInfo"]
        5 SETTABLEKS                       R1 R0 K2 ["state"]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K0 ["thumbnailUpdateInfo"]
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"Thumbnails", "SetThumbnailUpdateInfo"}]
        5 GETUPVAL                         R4 2
        6 CALL                             R4 0 1
        7 SETTABLEKS                       R4 R3 K1 ["Thumbnails"]
        9 GETTABLEKS                       R4 R0 K4 ["thumbnailUpdateInfo"]
       11 SETTABLEKS                       R4 R3 K2 ["SetThumbnailUpdateInfo"]
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["MultiImagePickerWrapper"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K10 [PROTO_0]
       26 DUPCLOSURE                       R4 K11 [PROTO_1]
       27 GETTABLEKS                       R5 R1 K12 ["PureComponent"]
       29 LOADK                            R7 K13 ["ComponentDataProvider"]
       30 NAMECALL                         R5 R5 K14 ["extend"]
       32 CALL                             R5 2 1
       33 DUPCLOSURE                       R6 K15 [PROTO_3]
       34 SETTABLEKS                       R6 R5 K16 ["init"]
       36 DUPCLOSURE                       R6 K17 [PROTO_4]
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R4
       40 SETTABLEKS                       R6 R5 K18 ["render"]
       42 DUPTABLE                         R6 K20 [{"stories"}]
       43 NEWTABLE                         R7 0 1
       45 DUPTABLE                         R8 K24 [{["name"] = "Five thumbnails in MultiImagePickerWrapper (Updateable)", ["story"]}]
       46 SETTABLEKS                       R5 R8 K23 ["story"]
       48 SETLIST                          R7 R8 1 [1]
       50 SETTABLEKS                       R7 R6 K19 ["stories"]
       52 RETURN                           R6 1
