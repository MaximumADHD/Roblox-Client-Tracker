PROTO_0:
        0 NEWTABLE                         R0 1 0
        2 NEWTABLE                         R1 0 0
        4 SETTABLEKS                       R1 R0 K0 ["_invokeCallbacks"]
        6 GETUPVAL                         R3 0
        7 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        9 MOVE                             R2 R0
       10 GETIMPORT                        R1 K2 [setmetatable]
       12 CALL                             R1 2 0
       13 RETURN                           R0 1

PROTO_1:
        0 PREPVARARGS                      2
        1 GETTABLEKS                       R3 R0 K0 ["_invokeCallbacks"]
        3 GETTABLE                         R2 R3 R1
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 MOVE                             R3 R2
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 MOVE                             R8 R7
       11 GETVARARGS                       R9 -1
       12 CALL                             R8 -1 0
       13 FORGLOOP                         R3 2 ; [-4]
       15 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [table.find]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETIMPORT                        R1 K4 [table.remove]
        8 GETUPVAL                         R2 0
        9 MOVE                             R3 R0
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R4 R0 K0 ["_invokeCallbacks"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIF                           R3 ; [+5]
        4 NEWTABLE                         R3 0 0
        6 GETTABLEKS                       R4 R0 K0 ["_invokeCallbacks"]
        8 SETTABLE                         R3 R4 R1
        9 FASTCALL2                        TABLE_INSERT R3 R2 ; [+5]
       11 MOVE                             R5 R3
       12 MOVE                             R6 R2
       13 GETIMPORT                        R4 K3 [table.insert]
       15 CALL                             R4 2 0
       16 DUPTABLE                         R4 K5 [{"Disconnect"}]
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          REF R3
       19 CAPTURE                          VAL R2
       20 SETTABLEKS                       R5 R4 K4 ["Disconnect"]
       22 CLOSEUPVALS                      R3
       23 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["Invoke"]
       12 DUPCLOSURE                       R1 K5 [PROTO_3]
       13 SETTABLEKS                       R1 R0 K6 ["OnInvoke"]
       15 RETURN                           R0 1
