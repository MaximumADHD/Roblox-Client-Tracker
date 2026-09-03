PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K0 ["InventoryFolderStatus"]
        6 GETTABLE                         R1 R2 R0
        7 JUMPIFNOT                        R1 ; [+5]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K0 ["InventoryFolderStatus"]
       11 GETTABLE                         R1 R2 R0
       12 RETURN                           R1 1
       13 JUMPIFNOTEQKS                    R0 K1 ["INVENTORY_STATUS_FOLDERS_READY"] ; [+7]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K0 ["InventoryFolderStatus"]
       18 GETTABLEKS                       R1 R1 K2 ["FoldersReady"]
       20 RETURN                           R1 1
       21 JUMPIFNOTEQKS                    R0 K3 ["INVENTORY_STATUS_FOLDERS_NOT_READY"] ; [+7]
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R1 R1 K0 ["InventoryFolderStatus"]
       26 GETTABLEKS                       R1 R1 K4 ["FoldersNotReady"]
       28 RETURN                           R1 1
       29 JUMPIFNOTEQKS                    R0 K5 ["INVENTORY_STATUS_INVALID"] ; [+7]
       31 GETUPVAL                         R1 0
       32 GETTABLEKS                       R1 R1 K0 ["InventoryFolderStatus"]
       34 GETTABLEKS                       R1 R1 K6 ["Invalid"]
       36 RETURN                           R1 1
       37 LOADNIL                          R1
       38 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 SETGLOBAL                        R2 K9 ["convertInventoryFolderStatusStringToEnum"]
       18 GETGLOBAL                        R2 K9 ["convertInventoryFolderStatusStringToEnum"]
       20 RETURN                           R2 1
