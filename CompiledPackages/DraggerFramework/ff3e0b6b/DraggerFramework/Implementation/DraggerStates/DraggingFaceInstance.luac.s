PROTO_0:
        0 DUPTABLE                         R3 K2 [{"_draggerToolModel", "_connectionToBreak"}]
        1 SETTABLEKS                       R0 R3 K0 ["_draggerToolModel"]
        3 SETTABLEKS                       R1 R3 K1 ["_connectionToBreak"]
        5 GETUPVAL                         R4 0
        6 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        8 GETIMPORT                        R2 K4 [setmetatable]
       10 CALL                             R2 2 1
       11 RETURN                           R2 1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerToolModel"]
        2 GETTABLEKS                       R1 R1 K1 ["_draggerSchema"]
        4 GETTABLEKS                       R1 R1 K2 ["addUndoWaypoint"]
        6 GETTABLEKS                       R2 R0 K0 ["_draggerToolModel"]
        8 GETTABLEKS                       R2 R2 K3 ["_draggerContext"]
       10 LOADK                            R3 K4 ["Drag Face Instance"]
       11 CALL                             R1 2 0
       12 GETTABLEKS                       R1 R0 K5 ["_connectionToBreak"]
       14 JUMPIFNOT                        R1 ; [+5]
       15 GETTABLEKS                       R1 R0 K5 ["_connectionToBreak"]
       17 NAMECALL                         R1 R1 K6 ["Disconnect"]
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerToolModel"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["getClosedHand"]
        5 CALL                             R3 0 -1
        6 NAMECALL                         R1 R1 K2 ["setMouseCursor"]
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getPartAndSurface"]
        3 GETTABLEKS                       R2 R0 K1 ["_draggerToolModel"]
        5 GETTABLEKS                       R2 R2 K2 ["_draggerContext"]
        7 NAMECALL                         R2 R2 K3 ["getMouseRay"]
        9 CALL                             R2 1 -1
       10 CALL                             R1 -1 2
       11 GETTABLEKS                       R3 R0 K1 ["_draggerToolModel"]
       13 GETTABLEKS                       R3 R3 K4 ["_selectionInfo"]
       15 GETTABLEKS                       R3 R3 K5 ["instancesWithConfigurableFace"]
       17 JUMPIFNOT                        R3 ; [+15]
       18 GETIMPORT                        R4 K7 [pairs]
       20 MOVE                             R5 R3
       21 CALL                             R4 1 3
       22 FORGPREP_NEXT                    R4
       23 JUMPIFNOT                        R1 ; [+7]
       24 JUMPIFNOT                        R2 ; [+6]
       25 SETTABLEKS                       R1 R8 K8 ["Parent"]
       27 GETUPVAL                         R10 1
       28 GETTABLE                         R9 R10 R2
       29 SETTABLEKS                       R9 R8 K9 ["Face"]
       31 FORGLOOP                         R4 2 ; [-9]
       33 RETURN                           R0 0

PROTO_7:
        0 NAMECALL                         R1 R0 K0 ["_endDrag"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

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
       20 GETTABLEKS                       R3 R3 K8 ["DragHelper"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["Utility"]
       27 GETTABLEKS                       R4 R4 K9 ["StandardCursor"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K12 [table.freeze]
       32 NEWTABLE                         R5 8 0
       34 LOADK                            R6 K13 ["Top"]
       35 SETTABLEKS                       R6 R5 K14 ["TopSurface"]
       37 LOADK                            R6 K15 ["Bottom"]
       38 SETTABLEKS                       R6 R5 K16 ["BottomSurface"]
       40 LOADK                            R6 K17 ["Left"]
       41 SETTABLEKS                       R6 R5 K18 ["LeftSurface"]
       43 LOADK                            R6 K19 ["Right"]
       44 SETTABLEKS                       R6 R5 K20 ["RightSurface"]
       46 LOADK                            R6 K21 ["Front"]
       47 SETTABLEKS                       R6 R5 K22 ["FrontSurface"]
       49 LOADK                            R6 K23 ["Back"]
       50 SETTABLEKS                       R6 R5 K24 ["BackSurface"]
       52 CALL                             R4 1 1
       53 NEWTABLE                         R5 16 0
       55 SETTABLEKS                       R5 R5 K25 ["__index"]
       57 DUPCLOSURE                       R6 K26 [PROTO_0]
       58 CAPTURE                          VAL R5
       59 SETTABLEKS                       R6 R5 K27 ["new"]
       61 DUPCLOSURE                       R6 K28 [PROTO_1]
       62 SETTABLEKS                       R6 R5 K29 ["enter"]
       64 DUPCLOSURE                       R6 K30 [PROTO_2]
       65 SETTABLEKS                       R6 R5 K31 ["leave"]
       67 DUPCLOSURE                       R6 K32 [PROTO_3]
       68 CAPTURE                          VAL R3
       69 SETTABLEKS                       R6 R5 K33 ["render"]
       71 DUPCLOSURE                       R6 K34 [PROTO_4]
       72 SETTABLEKS                       R6 R5 K35 ["processSelectionChanged"]
       74 DUPCLOSURE                       R6 K36 [PROTO_5]
       75 SETTABLEKS                       R6 R5 K37 ["processMouseDown"]
       77 DUPCLOSURE                       R6 K38 [PROTO_6]
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R4
       80 SETTABLEKS                       R6 R5 K39 ["processViewChanged"]
       82 DUPCLOSURE                       R6 K40 [PROTO_7]
       83 SETTABLEKS                       R6 R5 K41 ["processMouseUp"]
       85 DUPCLOSURE                       R6 K42 [PROTO_8]
       86 SETTABLEKS                       R6 R5 K43 ["processMouseEnter"]
       88 DUPCLOSURE                       R6 K44 [PROTO_9]
       89 SETTABLEKS                       R6 R5 K45 ["processMouseLeave"]
       91 DUPCLOSURE                       R6 K46 [PROTO_10]
       92 SETTABLEKS                       R6 R5 K47 ["processKeyDown"]
       94 DUPCLOSURE                       R6 K48 [PROTO_11]
       95 SETTABLEKS                       R6 R5 K49 ["processKeyUp"]
       97 DUPCLOSURE                       R6 K50 [PROTO_12]
       98 CAPTURE                          VAL R1
       99 SETTABLEKS                       R6 R5 K51 ["_endDrag"]
      101 RETURN                           R5 1
