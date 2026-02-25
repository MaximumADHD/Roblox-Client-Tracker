PROTO_0:
        0 DUPTABLE                         R3 K6 [{"Name", "Id", "Textures", "BaseMaterial", "IsGenerating", "IsTemporary"}]
        1 GETUPVAL                         R4 0
        2 MOVE                             R5 R0
        3 MOVE                             R6 R2
        4 CALL                             R4 2 1
        5 SETTABLEKS                       R4 R3 K0 ["Name"]
        7 SETTABLEKS                       R1 R3 K1 ["Id"]
        9 DUPTABLE                         R4 K8 [{"ColorMap"}]
       10 SETTABLEKS                       R1 R4 K7 ["ColorMap"]
       12 SETTABLEKS                       R4 R3 K2 ["Textures"]
       14 LOADNIL                          R4
       15 SETTABLEKS                       R4 R3 K3 ["BaseMaterial"]
       17 LOADB                            R4 0
       18 SETTABLEKS                       R4 R3 K4 ["IsGenerating"]
       20 LOADB                            R4 1
       21 SETTABLEKS                       R4 R3 K5 ["IsTemporary"]
       23 GETUPVAL                         R4 1
       24 MOVE                             R5 R3
       25 CALL                             R4 1 1
       26 SETTABLEKS                       R4 R3 K9 ["MaterialVariant"]
       28 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R3 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R3 R0 K5 ["Src"]
       18 GETTABLEKS                       R2 R3 K7 ["Util"]
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R4 R2 K8 ["createMaterialVariant"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K4 [require]
       27 GETTABLEKS                       R5 R2 K9 ["getNewMaterialName"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K10 [PROTO_0]
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R3
       33 RETURN                           R5 1
