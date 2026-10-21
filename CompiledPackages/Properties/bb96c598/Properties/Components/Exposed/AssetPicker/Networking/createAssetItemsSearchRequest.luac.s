PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["search"]
        3 GETTABLEKS                       R2 R0 K1 ["query"]
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K2 ["assetType"]
        9 SETLIST                          R3 R4 1 [1]
       11 GETTABLEKS                       R4 R0 K3 ["scopeParams"]
       13 GETTABLEKS                       R5 R0 K4 ["maxPageSize"]
       15 GETTABLEKS                       R6 R0 K5 ["pageToken"]
       17 CALL                             R1 5 -1
       18 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K1 [script]
       11 LOADK                            R4 K5 ["AssetPicker"]
       12 NAMECALL                         R2 R2 K3 ["FindFirstAncestor"]
       14 CALL                             R2 2 1
       15 GETIMPORT                        R3 K7 [require]
       17 GETTABLEKS                       R4 R1 K8 ["Networking"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K7 [require]
       22 GETTABLEKS                       R5 R2 K9 ["Types"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R3 K10 ["RobloxAPI"]
       27 GETTABLEKS                       R5 R5 K11 ["new"]
       29 GETTABLEKS                       R6 R3 K12 ["Http"]
       31 GETTABLEKS                       R6 R6 K8 ["Networking"]
       33 GETTABLEKS                       R6 R6 K11 ["new"]
       35 CALL                             R6 0 1
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R5 K13 ["API"]
       39 GETTABLEKS                       R6 R6 K14 ["CreatorInventory"]
       41 DUPCLOSURE                       R7 K15 [PROTO_0]
       42 CAPTURE                          VAL R6
       43 RETURN                           R7 1
