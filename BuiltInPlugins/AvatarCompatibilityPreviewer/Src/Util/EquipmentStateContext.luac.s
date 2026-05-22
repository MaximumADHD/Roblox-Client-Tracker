PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 DUPCLOSURE                       R0 K0 [PROTO_0]
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["createUnimplemented"]
       29 CALL                             R3 1 1
       30 DUPTABLE                         R4 K24 [{"equippedItems", "addEquippedItem", "removeEquippedItem", "removeAllEquippedItems", "moveEquippedItemsToIndex", "cleanAllEquippedItems", "hideEquippedItem", "showEquippedItem", "setHideAllEquippedItems", "startIgnoringChildren", "isIgnoringChildren", "avatarAssets"}]
       31 NEWTABLE                         R5 0 0
       33 SETTABLEKS                       R5 R4 K12 ["equippedItems"]
       35 MOVE                             R5 R3
       36 LOADK                            R6 K13 ["addEquippedItem"]
       37 CALL                             R5 1 1
       38 SETTABLEKS                       R5 R4 K13 ["addEquippedItem"]
       40 MOVE                             R5 R3
       41 LOADK                            R6 K14 ["removeEquippedItem"]
       42 CALL                             R5 1 1
       43 SETTABLEKS                       R5 R4 K14 ["removeEquippedItem"]
       45 MOVE                             R5 R3
       46 LOADK                            R6 K15 ["removeAllEquippedItems"]
       47 CALL                             R5 1 1
       48 SETTABLEKS                       R5 R4 K15 ["removeAllEquippedItems"]
       50 MOVE                             R5 R3
       51 LOADK                            R6 K16 ["moveEquippedItemsToIndex"]
       52 CALL                             R5 1 1
       53 SETTABLEKS                       R5 R4 K16 ["moveEquippedItemsToIndex"]
       55 MOVE                             R5 R3
       56 LOADK                            R6 K17 ["cleanAllEquippedItems"]
       57 CALL                             R5 1 1
       58 SETTABLEKS                       R5 R4 K17 ["cleanAllEquippedItems"]
       60 MOVE                             R5 R3
       61 LOADK                            R6 K18 ["hideEquippedItem"]
       62 CALL                             R5 1 1
       63 SETTABLEKS                       R5 R4 K18 ["hideEquippedItem"]
       65 MOVE                             R5 R3
       66 LOADK                            R6 K19 ["showEquippedItem"]
       67 CALL                             R5 1 1
       68 SETTABLEKS                       R5 R4 K19 ["showEquippedItem"]
       70 MOVE                             R5 R3
       71 LOADK                            R6 K20 ["setHideAllEquippedItems"]
       72 CALL                             R5 1 1
       73 SETTABLEKS                       R5 R4 K20 ["setHideAllEquippedItems"]
       75 DUPCLOSURE                       R5 K25 [PROTO_1]
       76 SETTABLEKS                       R5 R4 K21 ["startIgnoringChildren"]
       78 LOADB                            R5 0
       79 SETTABLEKS                       R5 R4 K22 ["isIgnoringChildren"]
       81 DUPTABLE                         R5 K34 [{"accessories", "animation", "classicClothing", "clothing", "emotion", "gear", "makeup", "patches"}]
       82 NEWTABLE                         R6 0 0
       84 SETTABLEKS                       R6 R5 K26 ["accessories"]
       86 LOADNIL                          R6
       87 SETTABLEKS                       R6 R5 K27 ["animation"]
       89 NEWTABLE                         R6 0 0
       91 SETTABLEKS                       R6 R5 K28 ["classicClothing"]
       93 NEWTABLE                         R6 0 0
       95 SETTABLEKS                       R6 R5 K29 ["clothing"]
       97 LOADNIL                          R6
       98 SETTABLEKS                       R6 R5 K30 ["emotion"]
      100 NEWTABLE                         R6 0 0
      102 SETTABLEKS                       R6 R5 K31 ["gear"]
      104 NEWTABLE                         R6 0 0
      106 SETTABLEKS                       R6 R5 K32 ["makeup"]
      108 NEWTABLE                         R6 0 0
      110 SETTABLEKS                       R6 R5 K33 ["patches"]
      112 SETTABLEKS                       R5 R4 K23 ["avatarAssets"]
      114 GETTABLEKS                       R5 R1 K35 ["createContext"]
      116 MOVE                             R6 R4
      117 CALL                             R5 1 -1
      118 RETURN                           R5 -1
