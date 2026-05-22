PROTO_0:
        0 DUPTABLE                         R2 K1 [{"_draggingModifiedParts"}]
        1 NEWTABLE                         R3 0 0
        3 SETTABLEKS                       R3 R2 K0 ["_draggingModifiedParts"]
        5 GETUPVAL                         R3 0
        6 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        8 GETIMPORT                        R1 K3 [setmetatable]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K5 [ipairs]
       13 MOVE                             R3 R0
       14 CALL                             R2 1 3
       15 FORGPREP_INEXT                   R2
       16 LOADK                            R9 K6 ["BasePart"]
       17 NAMECALL                         R7 R6 K7 ["IsA"]
       19 CALL                             R7 2 1
       20 JUMPIFNOT                        R7 ; [+11]
       21 LOADK                            R7 K8 [0.4]
       22 SETTABLEKS                       R7 R6 K9 ["LocalTransparencyModifier"]
       24 GETTABLEKS                       R8 R1 K0 ["_draggingModifiedParts"]
       26 FASTCALL2                        TABLE_INSERT R8 R6 ; [+4]
       28 MOVE                             R9 R6
       29 GETIMPORT                        R7 K12 [table.insert]
       31 CALL                             R7 2 0
       32 FORGLOOP                         R2 2 [inext] ; [-17]
       34 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETTABLEKS                       R2 R0 K2 ["_draggingModifiedParts"]
        4 CALL                             R1 1 3
        5 FORGPREP_INEXT                   R1
        6 LOADN                            R6 0
        7 SETTABLEKS                       R6 R5 K3 ["LocalTransparencyModifier"]
        9 FORGLOOP                         R1 2 [inext] ; [-4]
       11 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["destroy"]
       12 RETURN                           R0 1
