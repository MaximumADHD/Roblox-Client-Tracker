PROTO_0:
        0 DUPTABLE                         R0 K3 [{[1] = "Animation", ["_children"]}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K2 ["_children"]
        5 GETUPVAL                         R1 0
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 FORGPREP                         R1
        9 GETTABLEKS                       R7 R0 K2 ["_children"]
       11 DUPTABLE                         R8 K8 [{["Name"], [2] = "NumberValue", ["_optional"] = True}]
       12 SETTABLEKS                       R5 R8 K4 ["Name"]
       14 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
       16 GETIMPORT                        R6 K11 [table.insert]
       18 CALL                             R6 2 0
       19 FORGLOOP                         R1 2 ; [-11]
       21 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 7
        3 LOADK                            R1 K0 ["ThumbnailCharacterRotation"]
        4 LOADK                            R2 K1 ["ThumbnailHorizontalOffset"]
        5 LOADK                            R3 K2 ["ThumbnailKeyframe"]
        6 LOADK                            R4 K3 ["ThumbnailVerticalOffset"]
        7 LOADK                            R5 K4 ["ThumbnailZoom"]
        8 LOADK                            R6 K5 ["ThumbnailTime"]
        9 LOADK                            R7 K6 ["ThumbnailFieldOfView"]
       10 SETLIST                          R0 R1 7 [1]
       12 DUPCLOSURE                       R1 K7 [PROTO_0]
       13 CAPTURE                          VAL R0
       14 RETURN                           R1 1
