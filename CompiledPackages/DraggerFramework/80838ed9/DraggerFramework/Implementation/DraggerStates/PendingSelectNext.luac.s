PROTO_0:
        0 DUPTABLE                         R4 K4 [{"_draggerToolModel", "_dragInfo", "_initialMouseLocation", "_wasDoubleClick"}]
        1 SETTABLEKS                       R0 R4 K0 ["_draggerToolModel"]
        3 SETTABLEKS                       R2 R4 K1 ["_dragInfo"]
        5 GETTABLEKS                       R5 R0 K5 ["_draggerContext"]
        7 NAMECALL                         R5 R5 K6 ["getMouseLocation"]
        9 CALL                             R5 1 1
       10 SETTABLEKS                       R5 R4 K2 ["_initialMouseLocation"]
       12 SETTABLEKS                       R1 R4 K3 ["_wasDoubleClick"]
       14 GETUPVAL                         R5 0
       15 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
       17 GETIMPORT                        R3 K8 [setmetatable]
       19 CALL                             R3 2 1
       20 RETURN                           R3 1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerToolModel"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["getOpenHand"]
        5 CALL                             R3 0 -1
        6 NAMECALL                         R1 R1 K2 ["setMouseCursor"]
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["_transitionBack"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_initialMouseLocation"]
        2 GETTABLEKS                       R2 R0 K1 ["_draggerToolModel"]
        4 GETTABLEKS                       R2 R2 K2 ["_draggerContext"]
        6 NAMECALL                         R2 R2 K3 ["getMouseLocation"]
        8 CALL                             R2 1 1
        9 JUMPIFNOTEQ                      R1 R2 ; [+10]
       11 GETTABLEKS                       R1 R0 K1 ["_draggerToolModel"]
       13 GETTABLEKS                       R3 R0 K4 ["_dragInfo"]
       15 GETTABLEKS                       R4 R0 K5 ["_wasDoubleClick"]
       17 NAMECALL                         R1 R1 K6 ["selectNextSelectables"]
       19 CALL                             R1 3 0
       20 NAMECALL                         R1 R0 K7 ["_transitionBack"]
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 RETURN                           R0 0

PROTO_10:
        0 RETURN                           R0 0

PROTO_11:
        0 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerToolModel"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Ready"]
        5 NAMECALL                         R1 R1 K2 ["transitionToState"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Implementation"]
       13 GETTABLEKS                       R2 R2 K6 ["DraggerStateType"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Utility"]
       20 GETTABLEKS                       R3 R3 K8 ["StandardCursor"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 16 0
       25 SETTABLEKS                       R3 R3 K9 ["__index"]
       27 DUPCLOSURE                       R4 K10 [PROTO_0]
       28 CAPTURE                          VAL R3
       29 SETTABLEKS                       R4 R3 K11 ["new"]
       31 DUPCLOSURE                       R4 K12 [PROTO_1]
       32 SETTABLEKS                       R4 R3 K13 ["enter"]
       34 DUPCLOSURE                       R4 K14 [PROTO_2]
       35 SETTABLEKS                       R4 R3 K15 ["leave"]
       37 DUPCLOSURE                       R4 K16 [PROTO_3]
       38 CAPTURE                          VAL R2
       39 SETTABLEKS                       R4 R3 K17 ["render"]
       41 DUPCLOSURE                       R4 K18 [PROTO_4]
       42 SETTABLEKS                       R4 R3 K19 ["processSelectionChanged"]
       44 DUPCLOSURE                       R4 K20 [PROTO_5]
       45 SETTABLEKS                       R4 R3 K21 ["processMouseDown"]
       47 DUPCLOSURE                       R4 K22 [PROTO_6]
       48 SETTABLEKS                       R4 R3 K23 ["processViewChanged"]
       50 DUPCLOSURE                       R4 K24 [PROTO_7]
       51 SETTABLEKS                       R4 R3 K25 ["processMouseUp"]
       53 DUPCLOSURE                       R4 K26 [PROTO_8]
       54 SETTABLEKS                       R4 R3 K27 ["processMouseEnter"]
       56 DUPCLOSURE                       R4 K28 [PROTO_9]
       57 SETTABLEKS                       R4 R3 K29 ["processMouseLeave"]
       59 DUPCLOSURE                       R4 K30 [PROTO_10]
       60 SETTABLEKS                       R4 R3 K31 ["processKeyDown"]
       62 DUPCLOSURE                       R4 K32 [PROTO_11]
       63 SETTABLEKS                       R4 R3 K33 ["processKeyUp"]
       65 DUPCLOSURE                       R4 K34 [PROTO_12]
       66 CAPTURE                          VAL R1
       67 SETTABLEKS                       R4 R3 K35 ["_transitionBack"]
       69 RETURN                           R3 1
