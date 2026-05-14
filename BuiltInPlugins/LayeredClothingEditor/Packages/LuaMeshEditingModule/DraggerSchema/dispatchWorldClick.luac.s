PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+6]
        3 NAMECALL                         R3 R1 K0 ["doesAllowFreeformDrag"]
        5 CALL                             R3 1 1
        6 JUMPIFNOT                        R3 ; [+2]
        7 LOADK                            R3 K1 ["FreeformSelectionDrag"]
        8 RETURN                           R3 1
        9 GETTABLEKS                       R3 R2 K2 ["ClickedItem"]
       11 JUMPIF                           R3 ; [+2]
       12 LOADK                            R3 K3 ["DragSelecting"]
       13 RETURN                           R3 1
       14 LOADK                            R3 K4 ["Ready"]
       15 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LuaMeshEditingModule"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R2 K7 ["getFFlagAvatarPreviewerCageEditingTools"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
