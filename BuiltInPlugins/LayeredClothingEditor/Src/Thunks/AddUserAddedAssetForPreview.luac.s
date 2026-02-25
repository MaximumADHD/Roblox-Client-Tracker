PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R3 R1 K1 ["previewStatus"]
        5 GETTABLEKS                       R2 R3 K2 ["userAddedAssets"]
        7 LOADN                            R3 1
        8 GETUPVAL                         R5 0
        9 GETTABLE                         R4 R2 R5
       10 JUMPIFNOT                        R4 ; [+4]
       11 GETUPVAL                         R6 0
       12 GETTABLE                         R5 R2 R6
       13 LENGTH                           R4 R5
       14 ADDK                             R3 R4 K3 [1]
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R4 R5 K4 ["createUserAddedAsset"]
       18 GETUPVAL                         R5 2
       19 CALL                             R4 1 1
       20 GETUPVAL                         R5 3
       21 MOVE                             R6 R2
       22 NEWTABLE                         R7 1 0
       24 GETUPVAL                         R8 0
       25 NEWTABLE                         R9 1 0
       27 SETTABLE                         R4 R9 R3
       28 SETTABLE                         R9 R7 R8
       29 CALL                             R5 2 1
       30 GETUPVAL                         R8 4
       31 MOVE                             R9 R5
       32 CALL                             R8 1 -1
       33 NAMECALL                         R6 R0 K5 ["dispatch"]
       35 CALL                             R6 -1 0
       36 GETUPVAL                         R6 5
       37 JUMPIFNOT                        R6 ; [+3]
       38 GETUPVAL                         R6 5
       39 MOVE                             R7 R4
       40 CALL                             R6 1 0
       41 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R2
        7 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["AvatarToolsShared"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R4 R1 K7 ["Util"]
       18 GETTABLEKS                       R3 R4 K8 ["AccessoryAndBodyToolShared"]
       20 GETTABLEKS                       R2 R3 K9 ["PreviewUtil"]
       22 GETIMPORT                        R3 K4 [require]
       24 GETTABLEKS                       R6 R0 K10 ["Src"]
       26 GETTABLEKS                       R5 R6 K11 ["Actions"]
       28 GETTABLEKS                       R4 R5 K12 ["SetUserAddedAssets"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K4 [require]
       33 GETTABLEKS                       R6 R0 K5 ["Packages"]
       35 GETTABLEKS                       R5 R6 K13 ["Framework"]
       37 CALL                             R4 1 1
       38 GETTABLEKS                       R6 R4 K7 ["Util"]
       40 GETTABLEKS                       R5 R6 K14 ["deepJoin"]
       42 DUPCLOSURE                       R6 K15 [PROTO_1]
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R3
       46 RETURN                           R6 1
