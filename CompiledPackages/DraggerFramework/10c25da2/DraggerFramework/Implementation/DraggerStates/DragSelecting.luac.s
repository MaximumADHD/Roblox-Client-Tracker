PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R2 K2 [{"_dragSelector", "_draggerToolModel"}]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K3 ["new"]
        4 NAMECALL                         R4 R0 K4 ["getSelectionWrapper"]
        6 CALL                             R4 1 1
        7 NAMECALL                         R6 R0 K5 ["getSchema"]
        9 CALL                             R6 1 1
       10 GETTABLEKS                       R5 R6 K6 ["beginBoxSelect"]
       12 NAMECALL                         R7 R0 K5 ["getSchema"]
       14 CALL                             R7 1 1
       15 GETTABLEKS                       R6 R7 K7 ["updateBoxSelect"]
       17 JUMPIF                           R6 ; [+1]
       18 DUPCLOSURE                       R6 K8 [PROTO_0]
       19 NAMECALL                         R8 R0 K5 ["getSchema"]
       21 CALL                             R8 1 1
       22 GETTABLEKS                       R7 R8 K9 ["endBoxSelect"]
       24 CALL                             R3 4 1
       25 SETTABLEKS                       R3 R2 K0 ["_dragSelector"]
       27 SETTABLEKS                       R0 R2 K1 ["_draggerToolModel"]
       29 GETUPVAL                         R3 1
       30 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       32 GETIMPORT                        R1 K11 [setmetatable]
       34 CALL                             R1 2 1
       35 NAMECALL                         R2 R1 K12 ["_init"]
       37 CALL                             R2 1 0
       38 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["_draggerToolModel"]
        2 GETTABLEKS                       R1 R2 K1 ["_draggerContext"]
        4 NAMECALL                         R1 R1 K2 ["getMouseLocation"]
        6 CALL                             R1 1 1
        7 SETTABLEKS                       R1 R0 K3 ["_mouseStartLocation"]
        9 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["_draggerToolModel"]
        2 GETTABLEKS                       R1 R2 K1 ["_sessionAnalytics"]
        4 GETTABLEKS                       R5 R0 K0 ["_draggerToolModel"]
        6 GETTABLEKS                       R4 R5 K1 ["_sessionAnalytics"]
        8 GETTABLEKS                       R3 R4 K3 ["dragSelects"]
       10 ADDK                             R2 R3 K2 [1]
       11 SETTABLEKS                       R2 R1 K3 ["dragSelects"]
       13 LOADB                            R1 0
       14 SETTABLEKS                       R1 R0 K4 ["_hasMovedMouse"]
       16 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerToolModel"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["getArrow"]
        5 CALL                             R3 0 -1
        6 NAMECALL                         R1 R1 K2 ["setMouseCursor"]
        8 CALL                             R1 -1 0
        9 GETTABLEKS                       R2 R0 K3 ["_hasMovedMouse"]
       11 JUMPIFNOT                        R2 ; [+6]
       12 GETTABLEKS                       R1 R0 K4 ["_dragSelector"]
       14 NAMECALL                         R1 R1 K5 ["getStartLocation"]
       16 CALL                             R1 1 1
       17 JUMPIF                           R1 ; [+7]
       18 GETTABLEKS                       R2 R0 K0 ["_draggerToolModel"]
       20 GETTABLEKS                       R1 R2 K6 ["_draggerContext"]
       22 NAMECALL                         R1 R1 K7 ["getMouseLocation"]
       24 CALL                             R1 1 1
       25 GETTABLEKS                       R2 R0 K0 ["_draggerToolModel"]
       27 NAMECALL                         R2 R2 K8 ["shouldShowDragSelect"]
       29 CALL                             R2 1 1
       30 JUMPIFNOT                        R2 ; [+18]
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R2 R3 K9 ["createElement"]
       34 GETUPVAL                         R3 2
       35 DUPTABLE                         R4 K12 [{"DragStartLocation", "DragEndLocation"}]
       36 SETTABLEKS                       R1 R4 K10 ["DragStartLocation"]
       38 GETTABLEKS                       R6 R0 K0 ["_draggerToolModel"]
       40 GETTABLEKS                       R5 R6 K6 ["_draggerContext"]
       42 NAMECALL                         R5 R5 K7 ["getMouseLocation"]
       44 CALL                             R5 1 1
       45 SETTABLEKS                       R5 R4 K11 ["DragEndLocation"]
       47 CALL                             R2 2 -1
       48 RETURN                           R2 -1
       49 LOADNIL                          R2
       50 RETURN                           R2 1

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K1 [error]
        2 LOADK                            R2 K2 ["Mouse should already be down while drag selecting."]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_hasMovedMouse"]
        2 JUMPIF                           R1 ; [+14]
        3 GETTABLEKS                       R1 R0 K1 ["_dragSelector"]
        5 GETTABLEKS                       R4 R0 K2 ["_draggerToolModel"]
        7 GETTABLEKS                       R3 R4 K3 ["_draggerContext"]
        9 GETTABLEKS                       R4 R0 K4 ["_mouseStartLocation"]
       11 NAMECALL                         R1 R1 K5 ["beginDrag"]
       13 CALL                             R1 3 0
       14 LOADB                            R1 1
       15 SETTABLEKS                       R1 R0 K0 ["_hasMovedMouse"]
       17 GETTABLEKS                       R1 R0 K1 ["_dragSelector"]
       19 GETTABLEKS                       R4 R0 K2 ["_draggerToolModel"]
       21 GETTABLEKS                       R3 R4 K3 ["_draggerContext"]
       23 NAMECALL                         R1 R1 K6 ["updateDrag"]
       25 CALL                             R1 2 0
       26 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_hasMovedMouse"]
        2 JUMPIFNOT                        R1 ; [+17]
        3 GETTABLEKS                       R1 R0 K1 ["_dragSelector"]
        5 GETTABLEKS                       R4 R0 K2 ["_draggerToolModel"]
        7 GETTABLEKS                       R3 R4 K3 ["_draggerContext"]
        9 NAMECALL                         R1 R1 K4 ["commitDrag"]
       11 CALL                             R1 2 0
       12 GETTABLEKS                       R1 R0 K2 ["_draggerToolModel"]
       14 NAMECALL                         R1 R1 K5 ["_updateSelectionInfo"]
       16 CALL                             R1 1 0
       17 LOADB                            R1 0
       18 SETTABLEKS                       R1 R0 K0 ["_hasMovedMouse"]
       20 GETTABLEKS                       R1 R0 K2 ["_draggerToolModel"]
       22 NAMECALL                         R1 R1 K6 ["_analyticsSendBoxSelect"]
       24 CALL                             R1 1 0
       25 GETTABLEKS                       R1 R0 K2 ["_draggerToolModel"]
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R3 R4 K7 ["Ready"]
       30 NAMECALL                         R1 R1 K8 ["transitionToState"]
       32 CALL                             R1 2 0
       33 RETURN                           R0 0

PROTO_10:
        0 RETURN                           R0 0

PROTO_11:
        0 RETURN                           R0 0

PROTO_12:
        0 RETURN                           R0 0

PROTO_13:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K4 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Components"]
       20 GETTABLEKS                       R4 R5 K7 ["DragSelectionView"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K4 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Implementation"]
       27 GETTABLEKS                       R5 R6 K9 ["DraggerStateType"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K4 [require]
       32 GETTABLEKS                       R7 R0 K10 ["Utility"]
       34 GETTABLEKS                       R6 R7 K11 ["DragSelector"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K4 [require]
       39 GETTABLEKS                       R8 R0 K10 ["Utility"]
       41 GETTABLEKS                       R7 R8 K12 ["StandardCursor"]
       43 CALL                             R6 1 1
       44 NEWTABLE                         R7 16 0
       46 SETTABLEKS                       R7 R7 K13 ["__index"]
       48 DUPCLOSURE                       R8 K14 [PROTO_1]
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R7
       51 SETTABLEKS                       R8 R7 K15 ["new"]
       53 DUPCLOSURE                       R8 K16 [PROTO_2]
       54 SETTABLEKS                       R8 R7 K17 ["enter"]
       56 DUPCLOSURE                       R8 K18 [PROTO_3]
       57 SETTABLEKS                       R8 R7 K19 ["leave"]
       59 DUPCLOSURE                       R8 K20 [PROTO_4]
       60 SETTABLEKS                       R8 R7 K21 ["_init"]
       62 DUPCLOSURE                       R8 K22 [PROTO_5]
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R3
       66 SETTABLEKS                       R8 R7 K23 ["render"]
       68 DUPCLOSURE                       R8 K24 [PROTO_6]
       69 SETTABLEKS                       R8 R7 K25 ["processSelectionChanged"]
       71 DUPCLOSURE                       R8 K26 [PROTO_7]
       72 SETTABLEKS                       R8 R7 K27 ["processMouseDown"]
       74 DUPCLOSURE                       R8 K28 [PROTO_8]
       75 SETTABLEKS                       R8 R7 K29 ["processViewChanged"]
       77 DUPCLOSURE                       R8 K30 [PROTO_9]
       78 CAPTURE                          VAL R4
       79 SETTABLEKS                       R8 R7 K31 ["processMouseUp"]
       81 DUPCLOSURE                       R8 K32 [PROTO_10]
       82 SETTABLEKS                       R8 R7 K33 ["processMouseEnter"]
       84 DUPCLOSURE                       R8 K34 [PROTO_11]
       85 SETTABLEKS                       R8 R7 K35 ["processMouseLeave"]
       87 DUPCLOSURE                       R8 K36 [PROTO_12]
       88 SETTABLEKS                       R8 R7 K37 ["processKeyDown"]
       90 DUPCLOSURE                       R8 K38 [PROTO_13]
       91 SETTABLEKS                       R8 R7 K39 ["processKeyUp"]
       93 RETURN                           R7 1
