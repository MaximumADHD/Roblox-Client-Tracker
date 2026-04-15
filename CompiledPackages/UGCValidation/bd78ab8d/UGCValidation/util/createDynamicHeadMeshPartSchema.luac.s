PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K3 [Enum.AssetType.DynamicHead]
        3 LOADK                            R3 K4 ["Head"]
        4 MOVE                             R4 R0
        5 CALL                             R1 3 1
        6 GETTABLEKS                       R3 R1 K5 ["_children"]
        8 DUPTABLE                         R4 K8 [{"Name", "ClassName"}]
        9 NEWTABLE                         R5 0 1
       11 LOADK                            R6 K9 ["FaceControls"]
       12 SETLIST                          R5 R6 1 [1]
       14 SETTABLEKS                       R5 R4 K6 ["Name"]
       16 LOADK                            R5 K9 ["FaceControls"]
       17 SETTABLEKS                       R5 R4 K7 ["ClassName"]
       19 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       21 GETIMPORT                        R2 K12 [table.insert]
       23 CALL                             R2 2 0
       24 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R3 K6 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R4 R0 K5 ["util"]
       18 GETTABLEKS                       R3 R4 K7 ["createIndividualBodyPartSchema"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K8 [PROTO_0]
       22 CAPTURE                          VAL R2
       23 RETURN                           R3 1
