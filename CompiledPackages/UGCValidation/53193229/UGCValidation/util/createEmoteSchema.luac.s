PROTO_0:
        0 DUPTABLE                         R0 K2 [{"ClassName", "_children"}]
        1 LOADK                            R1 K3 ["Animation"]
        2 SETTABLEKS                       R1 R0 K0 ["ClassName"]
        4 NEWTABLE                         R1 0 0
        6 SETTABLEKS                       R1 R0 K1 ["_children"]
        8 GETUPVAL                         R1 0
        9 LOADNIL                          R2
       10 LOADNIL                          R3
       11 FORGPREP                         R1
       12 GETTABLEKS                       R7 R0 K1 ["_children"]
       14 DUPTABLE                         R8 K6 [{"Name", "ClassName", "_optional"}]
       15 SETTABLEKS                       R5 R8 K4 ["Name"]
       17 LOADK                            R9 K7 ["NumberValue"]
       18 SETTABLEKS                       R9 R8 K0 ["ClassName"]
       20 LOADB                            R9 1
       21 SETTABLEKS                       R9 R8 K5 ["_optional"]
       23 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
       25 GETIMPORT                        R6 K10 [table.insert]
       27 CALL                             R6 2 0
       28 FORGLOOP                         R1 2 ; [-17]
       30 RETURN                           R0 1

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
