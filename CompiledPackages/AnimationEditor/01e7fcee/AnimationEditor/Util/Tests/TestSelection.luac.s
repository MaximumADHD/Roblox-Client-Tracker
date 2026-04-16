PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 GETIMPORT                        R1 K4 [table.freeze]
       10 NEWTABLE                         R2 0 0
       12 CALL                             R1 1 1
       13 SETTABLEKS                       R1 R0 K5 ["_selection"]
       15 GETIMPORT                        R1 K8 [Instance.new]
       17 LOADK                            R2 K9 ["BindableEvent"]
       18 CALL                             R1 1 1
       19 SETTABLEKS                       R1 R0 K10 ["_selectionChanged"]
       21 GETTABLEKS                       R2 R0 K10 ["_selectionChanged"]
       23 GETTABLEKS                       R1 R2 K11 ["Event"]
       25 SETTABLEKS                       R1 R0 K12 ["SelectionChanged"]
       27 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_selection"]
        2 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R2 K2 [table.freeze]
        2 GETIMPORT                        R3 K4 [table.clone]
        4 MOVE                             R4 R1
        5 CALL                             R3 1 -1
        6 CALL                             R2 -1 1
        7 SETTABLEKS                       R2 R0 K5 ["_selection"]
        9 GETTABLEKS                       R2 R0 K6 ["_selectionChanged"]
       11 NAMECALL                         R2 R2 K7 ["Fire"]
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_selectionChanged"]
        2 NAMECALL                         R1 R1 K1 ["Destroy"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["Get"]
       12 DUPCLOSURE                       R1 K5 [PROTO_2]
       13 SETTABLEKS                       R1 R0 K6 ["Set"]
       15 DUPCLOSURE                       R1 K7 [PROTO_3]
       16 SETTABLEKS                       R1 R0 K8 ["Destroy"]
       18 RETURN                           R0 1
