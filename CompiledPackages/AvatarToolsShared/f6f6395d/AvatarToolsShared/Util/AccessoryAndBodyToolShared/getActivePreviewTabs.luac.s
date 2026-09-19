PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isAvatar"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+5]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["getTabsForAvatarEditing"]
        9 CALL                             R1 0 -1
       10 RETURN                           R1 -1
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K2 ["isClothes"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 1
       16 JUMPIFNOT                        R1 ; [+5]
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K3 ["getTabsForClothesEditing"]
       20 CALL                             R1 0 -1
       21 RETURN                           R1 -1
       22 NEWTABLE                         R1 0 0
       24 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["ItemCharacteristics"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["PreviewConstantsInterface"]
       18 CALL                             R1 1 1
       19 DUPCLOSURE                       R2 K7 [PROTO_0]
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R1
       22 RETURN                           R2 1
