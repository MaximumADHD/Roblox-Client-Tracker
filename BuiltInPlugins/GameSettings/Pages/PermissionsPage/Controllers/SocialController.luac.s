PROTO_0:
        0 NEWTABLE                         R1 1 0
        2 SETTABLEKS                       R0 R1 K0 ["__networking"]
        4 GETUPVAL                         R4 0
        5 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K2 [setmetatable]
       10 CALL                             R2 2 1
       11 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["friends"]
        3 LOADK                            R7 K2 ["/v1/users/"]
        4 MOVE                             R8 R1
        5 LOADK                            R9 K3 ["/friends"]
        6 CONCAT                           R6 R7 R9
        7 NAMECALL                         R3 R2 K4 ["get"]
        9 CALL                             R3 3 -1
       10 RETURN                           R3 -1

PROTO_2:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["friendsV1GET"]
        3 CALL                             R2 2 1
        4 NAMECALL                         R2 R2 K1 ["await"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R4 R2 K2 ["responseBody"]
        9 GETTABLEKS                       R3 R4 K3 ["data"]
       11 NEWTABLE                         R4 0 0
       13 GETIMPORT                        R5 K5 [ipairs]
       15 MOVE                             R6 R3
       16 CALL                             R5 1 3
       17 FORGPREP_INEXT                   R5
       18 GETTABLEKS                       R12 R9 K6 ["id"]
       20 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       22 MOVE                             R11 R4
       23 GETIMPORT                        R10 K9 [table.insert]
       25 CALL                             R10 2 0
       26 FORGLOOP                         R5 2 [inext] ; [-9]
       28 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["friendsV1GET"]
       12 DUPCLOSURE                       R1 K5 [PROTO_2]
       13 SETTABLEKS                       R1 R0 K6 ["getUserFriends"]
       15 RETURN                           R0 1
