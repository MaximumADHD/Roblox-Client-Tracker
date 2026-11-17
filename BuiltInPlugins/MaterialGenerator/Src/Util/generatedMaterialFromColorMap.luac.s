PROTO_0:
        0 DUPTABLE                         R4 K9 [{[1], ["Id"], ["Textures"], ["BaseMaterial"] = , ["IsGenerating"] = False, ["IsTemporary"] = True}]
        1 GETUPVAL                         R5 0
        2 MOVE                             R6 R0
        3 GETIMPORT                        R7 K11 [game]
        5 LOADK                            R9 K12 ["MaterialService"]
        6 NAMECALL                         R7 R7 K13 ["GetService"]
        8 CALL                             R7 2 -1
        9 CALL                             R5 -1 1
       10 SETTABLEKS                       R5 R4 K0 ["Name"]
       12 SETTABLEKS                       R1 R4 K1 ["Id"]
       14 DUPTABLE                         R5 K15 [{"ColorMap"}]
       15 SETTABLEKS                       R2 R5 K14 ["ColorMap"]
       17 SETTABLEKS                       R5 R4 K2 ["Textures"]
       19 GETUPVAL                         R5 1
       20 MOVE                             R6 R4
       21 CALL                             R5 1 1
       22 SETTABLEKS                       R5 R4 K16 ["MaterialVariant"]
       24 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R0 K5 ["Src"]
       18 GETTABLEKS                       R2 R2 K7 ["Util"]
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R4 R2 K8 ["createMaterialVariant"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K4 [require]
       27 GETTABLEKS                       R5 R2 K9 ["DEPRECATED_getNewMaterialName"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K10 [PROTO_0]
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R3
       33 RETURN                           R5 1
