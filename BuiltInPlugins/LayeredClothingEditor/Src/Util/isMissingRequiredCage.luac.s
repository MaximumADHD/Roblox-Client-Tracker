PROTO_0:
        0 JUMPIFNOT                        R0 ; [+1]
        1 JUMPIF                           R1 ; [+2]
        2 LOADB                            R2 0
        3 RETURN                           R2 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K0 ["Clothing"]
        7 GETTABLEKS                       R4 R1 K1 ["AssetType"]
        9 GETTABLE                         R2 R3 R4
       10 JUMPIF                           R2 ; [+2]
       11 LOADB                            R2 0
       12 RETURN                           R2 1
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K2 ["hasAnyCage"]
       16 MOVE                             R4 R0
       17 CALL                             R3 1 1
       18 NOT                              R2 R3
       19 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["AvatarToolsShared"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["Util"]
       18 GETTABLEKS                       R2 R2 K8 ["AccessoryAndBodyToolShared"]
       20 GETTABLEKS                       R3 R2 K9 ["AssetTypeAttachmentInfo"]
       22 GETTABLEKS                       R4 R2 K10 ["ItemCharacteristics"]
       24 DUPCLOSURE                       R5 K11 [PROTO_0]
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R4
       27 RETURN                           R5 1
