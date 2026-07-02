PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["ASSET_TYPE_INFO"]
        3 GETTABLE                         R3 R4 R0
        4 DUPTABLE                         R4 K5 [{["ClassName"] = "Folder", ["Name"], ["_children"]}]
        5 NEWTABLE                         R5 0 1
        7 MOVE                             R6 R1
        8 SETLIST                          R5 R6 1 [1]
       10 SETTABLEKS                       R5 R4 K3 ["Name"]
       12 NEWTABLE                         R5 0 0
       14 SETTABLEKS                       R5 R4 K4 ["_children"]
       16 GETIMPORT                        R5 K7 [pairs]
       18 GETTABLEKS                       R6 R3 K8 ["subParts"]
       20 CALL                             R5 1 3
       21 FORGPREP_NEXT                    R5
       22 GETUPVAL                         R10 1
       23 MOVE                             R11 R0
       24 MOVE                             R12 R8
       25 MOVE                             R13 R2
       26 CALL                             R10 3 1
       27 GETTABLEKS                       R12 R4 K4 ["_children"]
       29 FASTCALL2                        TABLE_INSERT R12 R10 ; [+4]
       31 MOVE                             R13 R10
       32 GETIMPORT                        R11 K11 [table.insert]
       34 CALL                             R11 2 0
       35 FORGLOOP                         R5 1 ; [-14]
       37 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["util"]
       16 GETTABLEKS                       R3 R3 K7 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K6 ["util"]
       23 GETTABLEKS                       R4 R4 K8 ["createIndividualBodyPartSchema"]
       25 CALL                             R3 1 1
       26 DUPCLOSURE                       R4 K9 [PROTO_0]
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R3
       29 RETURN                           R4 1
