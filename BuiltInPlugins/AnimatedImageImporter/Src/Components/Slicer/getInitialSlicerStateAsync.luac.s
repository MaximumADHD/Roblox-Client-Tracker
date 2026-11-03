PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["content"]
        3 NAMECALL                         R1 R1 K1 ["CreateEditableImageAsync"]
        5 CALL                             R1 2 1
        6 DUPTABLE                         R2 K7 [{"source", "imageSize", "grid", "sheetSize", "offset"}]
        7 SETTABLEKS                       R0 R2 K2 ["source"]
        9 GETTABLEKS                       R3 R1 K8 ["Size"]
       11 SETTABLEKS                       R3 R2 K3 ["imageSize"]
       13 GETUPVAL                         R3 1
       14 MOVE                             R4 R1
       15 CALL                             R3 1 1
       16 JUMPIF                           R3 ; [+5]
       17 GETIMPORT                        R3 K11 [Vector2.new]
       19 LOADN                            R4 4
       20 LOADN                            R5 4
       21 CALL                             R3 2 1
       22 SETTABLEKS                       R3 R2 K4 ["grid"]
       24 GETTABLEKS                       R3 R1 K8 ["Size"]
       26 SETTABLEKS                       R3 R2 K5 ["sheetSize"]
       28 GETIMPORT                        R3 K13 [Vector2.zero]
       30 SETTABLEKS                       R3 R2 K6 ["offset"]
       32 NAMECALL                         R3 R1 K14 ["Destroy"]
       34 CALL                             R3 1 0
       35 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AssetService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimatedImageImporter"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Types"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Src"]
       24 GETTABLEKS                       R4 R4 K12 ["Components"]
       26 GETTABLEKS                       R4 R4 K13 ["Slicer"]
       28 GETTABLEKS                       R4 R4 K14 ["guessGrid"]
       30 CALL                             R3 1 1
       31 DUPCLOSURE                       R4 K15 [PROTO_0]
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R3
       34 RETURN                           R4 1
