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
        2 DUPTABLE                         R1 K6 [{"id", "altText", "approved", "imageId", "videoHash", "videoTitle"}]
        3 LOADK                            R2 K7 [11457774193]
        4 SETTABLEKS                       R2 R1 K0 ["id"]
        6 LOADNIL                          R2
        7 SETTABLEKS                       R2 R1 K1 ["altText"]
        9 LOADB                            R2 1
       10 SETTABLEKS                       R2 R1 K2 ["approved"]
       12 LOADK                            R2 K7 [11457774193]
       13 SETTABLEKS                       R2 R1 K3 ["imageId"]
       15 LOADNIL                          R2
       16 SETTABLEKS                       R2 R1 K4 ["videoHash"]
       18 LOADNIL                          R2
       19 SETTABLEKS                       R2 R1 K5 ["videoTitle"]
       21 DUPTABLE                         R2 K6 [{"id", "altText", "approved", "imageId", "videoHash", "videoTitle"}]
       22 LOADK                            R3 K8 [10979850405]
       23 SETTABLEKS                       R3 R2 K0 ["id"]
       25 LOADNIL                          R3
       26 SETTABLEKS                       R3 R2 K1 ["altText"]
       28 LOADB                            R3 1
       29 SETTABLEKS                       R3 R2 K2 ["approved"]
       31 LOADK                            R3 K8 [10979850405]
       32 SETTABLEKS                       R3 R2 K3 ["imageId"]
       34 LOADNIL                          R3
       35 SETTABLEKS                       R3 R2 K4 ["videoHash"]
       37 LOADNIL                          R3
       38 SETTABLEKS                       R3 R2 K5 ["videoTitle"]
       40 DUPTABLE                         R3 K6 [{"id", "altText", "approved", "imageId", "videoHash", "videoTitle"}]
       41 LOADK                            R4 K9 [11114178824]
       42 SETTABLEKS                       R4 R3 K0 ["id"]
       44 LOADNIL                          R4
       45 SETTABLEKS                       R4 R3 K1 ["altText"]
       47 LOADB                            R4 1
       48 SETTABLEKS                       R4 R3 K2 ["approved"]
       50 LOADK                            R4 K9 [11114178824]
       51 SETTABLEKS                       R4 R3 K3 ["imageId"]
       53 LOADNIL                          R4
       54 SETTABLEKS                       R4 R3 K4 ["videoHash"]
       56 LOADNIL                          R4
       57 SETTABLEKS                       R4 R3 K5 ["videoTitle"]
       59 DUPTABLE                         R4 K6 [{"id", "altText", "approved", "imageId", "videoHash", "videoTitle"}]
       60 LOADK                            R5 K10 [11588223734]
       61 SETTABLEKS                       R5 R4 K0 ["id"]
       63 LOADNIL                          R5
       64 SETTABLEKS                       R5 R4 K1 ["altText"]
       66 LOADB                            R5 1
       67 SETTABLEKS                       R5 R4 K2 ["approved"]
       69 LOADK                            R5 K10 [11588223734]
       70 SETTABLEKS                       R5 R4 K3 ["imageId"]
       72 LOADNIL                          R5
       73 SETTABLEKS                       R5 R4 K4 ["videoHash"]
       75 LOADNIL                          R5
       76 SETTABLEKS                       R5 R4 K5 ["videoTitle"]
       78 DUPTABLE                         R5 K6 [{"id", "altText", "approved", "imageId", "videoHash", "videoTitle"}]
       79 LOADN                            R6 1
       80 SETTABLEKS                       R6 R5 K0 ["id"]
       82 LOADNIL                          R6
       83 SETTABLEKS                       R6 R5 K1 ["altText"]
       85 LOADB                            R6 1
       86 SETTABLEKS                       R6 R5 K2 ["approved"]
       88 LOADN                            R6 1
       89 SETTABLEKS                       R6 R5 K3 ["imageId"]
       91 LOADK                            R6 K11 ["wBYjsROAy5w"]
       92 SETTABLEKS                       R6 R5 K4 ["videoHash"]
       94 LOADK                            R6 K12 ["RDC 2022 Intro"]
       95 SETTABLEKS                       R6 R5 K5 ["videoTitle"]
       97 SETLIST                          R0 R1 5 [1]
       99 RETURN                           R0 1

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
       45 DUPTABLE                         R8 K23 [{"name", "story"}]
       46 LOADK                            R9 K24 ["Five thumbnails in MultiImagePickerWrapper (Updateable)"]
       47 SETTABLEKS                       R9 R8 K21 ["name"]
       49 SETTABLEKS                       R5 R8 K22 ["story"]
       51 SETLIST                          R7 R8 1 [1]
       53 SETTABLEKS                       R7 R6 K19 ["stories"]
       55 RETURN                           R6 1
