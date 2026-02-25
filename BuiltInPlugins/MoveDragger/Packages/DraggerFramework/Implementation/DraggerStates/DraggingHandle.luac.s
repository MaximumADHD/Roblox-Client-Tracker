PROTO_0:
        0 DUPTABLE                         R4 K1 [{"_draggerToolModel"}]
        1 SETTABLEKS                       R0 R4 K0 ["_draggerToolModel"]
        3 GETUPVAL                         R5 0
        4 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
        6 GETIMPORT                        R3 K3 [setmetatable]
        8 CALL                             R3 2 1
        9 MOVE                             R6 R1
       10 MOVE                             R7 R2
       11 NAMECALL                         R4 R3 K4 ["_init"]
       13 CALL                             R4 3 0
       14 RETURN                           R3 1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 FASTCALL2K                       ASSERT R2 K0 ; [+5]
        2 MOVE                             R4 R2
        3 LOADK                            R5 K0 ["Missing draggingHandleId"]
        4 GETIMPORT                        R3 K2 [assert]
        6 CALL                             R3 2 0
        7 GETTABLEKS                       R4 R0 K3 ["_draggerToolModel"]
        9 GETTABLEKS                       R3 R4 K4 ["_sessionAnalytics"]
       11 GETTABLEKS                       R7 R0 K3 ["_draggerToolModel"]
       13 GETTABLEKS                       R6 R7 K4 ["_sessionAnalytics"]
       15 GETTABLEKS                       R5 R6 K6 ["handleDrags"]
       17 ADDK                             R4 R5 K5 [1]
       18 SETTABLEKS                       R4 R3 K6 ["handleDrags"]
       20 GETTABLEKS                       R4 R0 K3 ["_draggerToolModel"]
       22 GETTABLEKS                       R3 R4 K7 ["_boundsChangedTracker"]
       24 NAMECALL                         R3 R3 K8 ["uninstall"]
       26 CALL                             R3 1 0
       27 GETTABLEKS                       R6 R0 K3 ["_draggerToolModel"]
       29 GETTABLEKS                       R5 R6 K9 ["_draggerContext"]
       31 NAMECALL                         R5 R5 K10 ["getMouseRay"]
       33 CALL                             R5 1 1
       34 MOVE                             R6 R2
       35 NAMECALL                         R3 R1 K11 ["mouseDown"]
       37 CALL                             R3 3 0
       38 SETTABLEKS                       R2 R0 K12 ["_draggingHandleId"]
       40 SETTABLEKS                       R1 R0 K13 ["_draggingHandles"]
       42 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerToolModel"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["getClosedHand"]
        5 CALL                             R3 0 -1
        6 NAMECALL                         R1 R1 K2 ["setMouseCursor"]
        8 CALL                             R1 -1 0
        9 GETTABLEKS                       R1 R0 K3 ["_draggingHandles"]
       11 GETTABLEKS                       R3 R0 K4 ["_draggingHandleId"]
       13 NAMECALL                         R1 R1 K5 ["render"]
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

PROTO_5:
        0 LOADB                            R3 1
        1 NAMECALL                         R1 R0 K0 ["_endHandleDrag"]
        3 CALL                             R1 2 0
        4 GETTABLEKS                       R3 R0 K1 ["_draggingHandles"]
        6 GETTABLEKS                       R4 R0 K2 ["_draggingHandleId"]
        8 NAMECALL                         R1 R0 K3 ["_init"]
       10 CALL                             R1 3 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K1 [error]
        2 LOADK                            R2 K2 ["Mouse should already be down while dragging handle."]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_draggingHandles"]
        2 GETTABLEKS                       R4 R0 K1 ["_draggerToolModel"]
        4 GETTABLEKS                       R3 R4 K2 ["_draggerContext"]
        6 NAMECALL                         R3 R3 K3 ["getMouseRay"]
        8 CALL                             R3 1 -1
        9 NAMECALL                         R1 R1 K4 ["mouseDrag"]
       11 CALL                             R1 -1 0
       12 RETURN                           R0 0

PROTO_8:
        0 LOADB                            R3 0
        1 NAMECALL                         R1 R0 K0 ["_endHandleDrag"]
        3 CALL                             R1 2 0
        4 GETTABLEKS                       R1 R0 K1 ["_draggerToolModel"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K2 ["Ready"]
        9 NAMECALL                         R1 R1 K3 ["transitionToState"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_9:
        0 RETURN                           R0 0

PROTO_10:
        0 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R2 K1 [pairs]
        2 GETTABLEKS                       R3 R0 K2 ["_draggerToolModel"]
        4 NAMECALL                         R3 R3 K3 ["getHandlesList"]
        6 CALL                             R3 1 -1
        7 CALL                             R2 -1 3
        8 FORGPREP_NEXT                    R2
        9 GETTABLEKS                       R7 R6 K4 ["keyDown"]
       11 JUMPIFNOT                        R7 ; [+13]
       12 MOVE                             R9 R1
       13 NAMECALL                         R7 R6 K4 ["keyDown"]
       15 CALL                             R7 2 1
       16 JUMPIFNOT                        R7 ; [+8]
       17 NAMECALL                         R7 R0 K5 ["processViewChanged"]
       19 CALL                             R7 1 0
       20 GETTABLEKS                       R7 R0 K2 ["_draggerToolModel"]
       22 NAMECALL                         R7 R7 K6 ["_scheduleRender"]
       24 CALL                             R7 1 0
       25 FORGLOOP                         R2 2 ; [-17]
       27 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R2 K1 [pairs]
        2 GETTABLEKS                       R3 R0 K2 ["_draggerToolModel"]
        4 NAMECALL                         R3 R3 K3 ["getHandlesList"]
        6 CALL                             R3 1 -1
        7 CALL                             R2 -1 3
        8 FORGPREP_NEXT                    R2
        9 GETTABLEKS                       R7 R6 K4 ["keyUp"]
       11 JUMPIFNOT                        R7 ; [+13]
       12 MOVE                             R9 R1
       13 NAMECALL                         R7 R6 K4 ["keyUp"]
       15 CALL                             R7 2 1
       16 JUMPIFNOT                        R7 ; [+8]
       17 NAMECALL                         R7 R0 K5 ["processViewChanged"]
       19 CALL                             R7 1 0
       20 GETTABLEKS                       R7 R0 K2 ["_draggerToolModel"]
       22 NAMECALL                         R7 R7 K6 ["_scheduleRender"]
       24 CALL                             R7 1 0
       25 FORGLOOP                         R2 2 ; [-17]
       27 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["_draggingHandles"]
        2 GETTABLEKS                       R5 R0 K1 ["_draggerToolModel"]
        4 GETTABLEKS                       R4 R5 K2 ["_draggerContext"]
        6 NAMECALL                         R4 R4 K3 ["getMouseRay"]
        8 CALL                             R4 1 -1
        9 NAMECALL                         R2 R2 K4 ["mouseUp"]
       11 CALL                             R2 -1 1
       12 JUMPIFNOT                        R1 ; [+7]
       13 GETTABLEKS                       R3 R0 K1 ["_draggerToolModel"]
       15 LOADNIL                          R5
       16 NAMECALL                         R3 R3 K5 ["_updateSelectionInfo"]
       18 CALL                             R3 2 0
       19 JUMP                             ; [+6]
       20 GETTABLEKS                       R3 R0 K1 ["_draggerToolModel"]
       22 MOVE                             R5 R2
       23 NAMECALL                         R3 R3 K5 ["_updateSelectionInfo"]
       25 CALL                             R3 2 0
       26 GETTABLEKS                       R4 R0 K1 ["_draggerToolModel"]
       28 GETTABLEKS                       R3 R4 K6 ["_boundsChangedTracker"]
       30 NAMECALL                         R3 R3 K7 ["install"]
       32 CALL                             R3 1 0
       33 GETTABLEKS                       R4 R0 K1 ["_draggerToolModel"]
       35 NAMECALL                         R4 R4 K8 ["getSchema"]
       37 CALL                             R4 1 1
       38 GETTABLEKS                       R3 R4 K9 ["setActivePoint"]
       40 GETTABLEKS                       R5 R0 K1 ["_draggerToolModel"]
       42 GETTABLEKS                       R4 R5 K2 ["_draggerContext"]
       44 GETTABLEKS                       R6 R0 K1 ["_draggerToolModel"]
       46 GETTABLEKS                       R5 R6 K10 ["_selectionInfo"]
       48 CALL                             R3 2 0
       49 GETTABLEKS                       R3 R0 K1 ["_draggerToolModel"]
       51 GETTABLEKS                       R5 R0 K11 ["_draggingHandleId"]
       53 NAMECALL                         R3 R3 K12 ["_analyticsSendHandleDragged"]
       55 CALL                             R3 2 0
       56 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Implementation"]
       13 GETTABLEKS                       R2 R3 K6 ["DraggerStateType"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K7 ["Utility"]
       20 GETTABLEKS                       R3 R4 K8 ["StandardCursor"]
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
       38 SETTABLEKS                       R4 R3 K17 ["_init"]
       40 DUPCLOSURE                       R4 K18 [PROTO_4]
       41 CAPTURE                          VAL R2
       42 SETTABLEKS                       R4 R3 K19 ["render"]
       44 DUPCLOSURE                       R4 K20 [PROTO_5]
       45 SETTABLEKS                       R4 R3 K21 ["processSelectionChanged"]
       47 DUPCLOSURE                       R4 K22 [PROTO_6]
       48 SETTABLEKS                       R4 R3 K23 ["processMouseDown"]
       50 DUPCLOSURE                       R4 K24 [PROTO_7]
       51 SETTABLEKS                       R4 R3 K25 ["processViewChanged"]
       53 DUPCLOSURE                       R4 K26 [PROTO_8]
       54 CAPTURE                          VAL R1
       55 SETTABLEKS                       R4 R3 K27 ["processMouseUp"]
       57 DUPCLOSURE                       R4 K28 [PROTO_9]
       58 SETTABLEKS                       R4 R3 K29 ["processMouseEnter"]
       60 DUPCLOSURE                       R4 K30 [PROTO_10]
       61 SETTABLEKS                       R4 R3 K31 ["processMouseLeave"]
       63 DUPCLOSURE                       R4 K32 [PROTO_11]
       64 SETTABLEKS                       R4 R3 K33 ["processKeyDown"]
       66 DUPCLOSURE                       R4 K34 [PROTO_12]
       67 SETTABLEKS                       R4 R3 K35 ["processKeyUp"]
       69 DUPCLOSURE                       R4 K36 [PROTO_13]
       70 SETTABLEKS                       R4 R3 K37 ["_endHandleDrag"]
       72 RETURN                           R3 1
