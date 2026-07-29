PROTO_0:
        0 DUPTABLE                         R2 K2 [{"_values", "_listeners"}]
        1 DUPTABLE                         R3 K20 [{["primaryTab"] = "screens", ["secondaryTab"] = "design", ["primaryRequested"] = True, ["secondaryRequested"] = True, ["primaryAutoCollapsed"] = False, ["secondaryAutoCollapsed"] = False, ["primaryWidth"] = 320, ["secondaryWidth"] = 320, ["screensHeight"] = 264, ["assistantHeight"] = 179}]
        2 SETTABLEKS                       R3 R2 K0 ["_values"]
        4 NEWTABLE                         R3 0 0
        6 SETTABLEKS                       R3 R2 K1 ["_listeners"]
        8 GETUPVAL                         R3 0
        9 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       11 GETIMPORT                        R1 K22 [setmetatable]
       13 CALL                             R1 2 1
       14 JUMPIFNOT                        R0 ; [+9]
       15 MOVE                             R2 R0
       16 LOADNIL                          R3
       17 LOADNIL                          R4
       18 FORGPREP                         R2
       19 GETTABLEKS                       R7 R1 K0 ["_values"]
       21 SETTABLE                         R6 R7 R5
       22 FORGLOOP                         R2 2 ; [-4]
       24 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["_values"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R4 R0 K0 ["_values"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOTEQ                      R3 R2 ; [+2]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R3 R0 K0 ["_values"]
        8 SETTABLE                         R2 R3 R1
        9 GETTABLEKS                       R4 R0 K1 ["_listeners"]
       11 GETTABLE                         R3 R4 R1
       12 JUMPIFNOT                        R3 ; [+9]
       13 MOVE                             R4 R3
       14 LOADNIL                          R5
       15 LOADNIL                          R6
       16 FORGPREP                         R4
       17 MOVE                             R9 R8
       18 MOVE                             R10 R2
       19 CALL                             R9 1 0
       20 FORGLOOP                         R4 2 ; [-4]
       22 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_listeners"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 MOVE                             R1 R0
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 GETUPVAL                         R6 2
       12 JUMPIFNOTEQ                      R5 R6 ; [+7]
       14 GETIMPORT                        R6 K3 [table.remove]
       16 MOVE                             R7 R0
       17 MOVE                             R8 R4
       18 CALL                             R6 2 0
       19 RETURN                           R0 0
       20 FORGLOOP                         R1 2 ; [-10]
       22 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R4 R0 K0 ["_listeners"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIF                           R3 ; [+5]
        4 NEWTABLE                         R3 0 0
        6 GETTABLEKS                       R4 R0 K0 ["_listeners"]
        8 SETTABLE                         R3 R4 R1
        9 FASTCALL2                        TABLE_INSERT R3 R2 ; [+5]
       11 MOVE                             R5 R3
       12 MOVE                             R6 R2
       13 GETIMPORT                        R4 K3 [table.insert]
       15 CALL                             R4 2 0
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R2
       20 RETURN                           R4 1

PROTO_5:
        0 GETIMPORT                        R1 K2 [table.clear]
        2 GETTABLEKS                       R2 R0 K3 ["_values"]
        4 CALL                             R1 1 0
        5 GETIMPORT                        R1 K2 [table.clear]
        7 GETTABLEKS                       R2 R0 K4 ["_listeners"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["get"]
       12 DUPCLOSURE                       R1 K5 [PROTO_2]
       13 SETTABLEKS                       R1 R0 K6 ["set"]
       15 DUPCLOSURE                       R1 K7 [PROTO_4]
       16 SETTABLEKS                       R1 R0 K8 ["on"]
       18 DUPCLOSURE                       R1 K9 [PROTO_5]
       19 SETTABLEKS                       R1 R0 K10 ["destroy"]
       21 RETURN                           R0 1
