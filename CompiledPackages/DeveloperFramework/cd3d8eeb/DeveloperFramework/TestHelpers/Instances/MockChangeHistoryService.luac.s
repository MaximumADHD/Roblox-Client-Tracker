PROTO_0:
        0 DUPTABLE                         R1 K2 [{"_undoWaypoints", "_redoWaypoints"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["_undoWaypoints"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["_redoWaypoints"]
        9 GETUPVAL                         R2 0
       10 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
       12 GETIMPORT                        R0 K4 [setmetatable]
       14 CALL                             R0 2 1
       15 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["_undoWaypoints"]
        2 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
        4 MOVE                             R4 R1
        5 GETIMPORT                        R2 K3 [table.insert]
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["_redoWaypoints"]
        2 GETTABLEKS                       R4 R0 K1 ["_undoWaypoints"]
        4 GETTABLEKS                       R6 R0 K1 ["_undoWaypoints"]
        6 LENGTH                           R5 R6
        7 GETTABLE                         R3 R4 R5
        8 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       10 GETIMPORT                        R1 K4 [table.insert]
       12 CALL                             R1 2 0
       13 GETIMPORT                        R1 K6 [table.remove]
       15 GETTABLEKS                       R2 R0 K1 ["_undoWaypoints"]
       17 GETTABLEKS                       R4 R0 K1 ["_undoWaypoints"]
       19 LENGTH                           R3 R4
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["_undoWaypoints"]
        2 GETTABLEKS                       R4 R0 K1 ["_redoWaypoints"]
        4 GETTABLEKS                       R6 R0 K1 ["_redoWaypoints"]
        6 LENGTH                           R5 R6
        7 GETTABLE                         R3 R4 R5
        8 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       10 GETIMPORT                        R1 K4 [table.insert]
       12 CALL                             R1 2 0
       13 GETIMPORT                        R1 K6 [table.remove]
       15 GETTABLEKS                       R2 R0 K1 ["_redoWaypoints"]
       17 GETTABLEKS                       R4 R0 K1 ["_redoWaypoints"]
       19 LENGTH                           R3 R4
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["Destroy"]
       12 DUPCLOSURE                       R1 K5 [PROTO_2]
       13 SETTABLEKS                       R1 R0 K6 ["SetWaypoint"]
       15 DUPCLOSURE                       R1 K7 [PROTO_3]
       16 SETTABLEKS                       R1 R0 K8 ["Undo"]
       18 DUPCLOSURE                       R1 K9 [PROTO_4]
       19 SETTABLEKS                       R1 R0 K10 ["Redo"]
       21 RETURN                           R0 1
