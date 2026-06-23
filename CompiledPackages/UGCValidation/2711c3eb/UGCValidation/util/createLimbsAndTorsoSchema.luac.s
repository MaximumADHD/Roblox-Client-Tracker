PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["ASSET_TYPE_INFO"]
        3 GETTABLE                         R3 R4 R0
        4 DUPTABLE                         R4 K4 [{"ClassName", "Name", "_children"}]
        5 LOADK                            R5 K5 ["Folder"]
        6 SETTABLEKS                       R5 R4 K1 ["ClassName"]
        8 NEWTABLE                         R5 0 1
       10 MOVE                             R6 R1
       11 SETLIST                          R5 R6 1 [1]
       13 SETTABLEKS                       R5 R4 K2 ["Name"]
       15 NEWTABLE                         R5 0 0
       17 SETTABLEKS                       R5 R4 K3 ["_children"]
       19 GETIMPORT                        R5 K7 [pairs]
       21 GETTABLEKS                       R6 R3 K8 ["subParts"]
       23 CALL                             R5 1 3
       24 FORGPREP_NEXT                    R5
       25 GETUPVAL                         R10 1
       26 MOVE                             R11 R0
       27 MOVE                             R12 R8
       28 MOVE                             R13 R2
       29 CALL                             R10 3 1
       30 GETTABLEKS                       R12 R4 K3 ["_children"]
       32 FASTCALL2                        TABLE_INSERT R12 R10 ; [+4]
       34 MOVE                             R13 R10
       35 GETIMPORT                        R11 K11 [table.insert]
       37 CALL                             R11 2 0
       38 FORGLOOP                         R5 1 ; [-14]
       40 RETURN                           R4 1

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
