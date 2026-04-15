PROTO_0:
        0 DUPTABLE                         R4 K4 [{"_draggerToolModel", "_dragStartLocation", "_hoverHandles", "_hoverHandleId"}]
        1 SETTABLEKS                       R0 R4 K0 ["_draggerToolModel"]
        3 GETTABLEKS                       R5 R0 K5 ["_draggerContext"]
        5 NAMECALL                         R5 R5 K6 ["getMouseLocation"]
        7 CALL                             R5 1 1
        8 SETTABLEKS                       R5 R4 K1 ["_dragStartLocation"]
       10 SETTABLEKS                       R1 R4 K2 ["_hoverHandles"]
       12 SETTABLEKS                       R2 R4 K3 ["_hoverHandleId"]
       14 GETUPVAL                         R5 0
       15 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
       17 GETIMPORT                        R3 K8 [setmetatable]
       19 CALL                             R3 2 1
       20 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["_task"]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["_draggerToolModel"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K2 ["DraggingHandle"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K3 ["_hoverHandles"]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K4 ["_hoverHandleId"]
       16 NAMECALL                         R0 R0 K5 ["transitionToState"]
       18 CALL                             R0 4 0
       19 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [os.clock]
        2 CALL                             R1 0 1
        3 SETTABLEKS                       R1 R0 K3 ["_clickTime"]
        5 GETIMPORT                        R1 K6 [task.delay]
        7 LOADK                            R2 K7 [0.1]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U0
       11 CALL                             R1 2 1
       12 SETTABLEKS                       R1 R0 K8 ["_task"]
       14 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_clickTime"]
        3 GETTABLEKS                       R1 R0 K1 ["_task"]
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETIMPORT                        R1 K4 [task.cancel]
        8 GETTABLEKS                       R2 R0 K1 ["_task"]
       10 CALL                             R1 1 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K1 ["_task"]
       14 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerToolModel"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["getClosedHand"]
        5 CALL                             R3 0 -1
        6 NAMECALL                         R1 R1 K2 ["setMouseCursor"]
        8 CALL                             R1 -1 0
        9 GETTABLEKS                       R1 R0 K3 ["_hoverHandles"]
       11 GETTABLEKS                       R3 R0 K4 ["_hoverHandleId"]
       13 NAMECALL                         R1 R1 K5 ["render"]
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["_draggerToolModel"]
        2 GETTABLEKS                       R1 R2 K1 ["_draggerContext"]
        4 NAMECALL                         R1 R1 K2 ["getMouseLocation"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R4 R0 K3 ["_dragStartLocation"]
        9 SUB                              R3 R1 R4
       10 GETTABLEKS                       R2 R3 K4 ["Magnitude"]
       12 LOADN                            R3 5
       13 JUMPIFNOTLT                      R3 R2 ; [+13]
       15 GETTABLEKS                       R3 R0 K0 ["_draggerToolModel"]
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R5 R6 K5 ["DraggingHandle"]
       20 GETTABLEKS                       R6 R0 K6 ["_hoverHandles"]
       22 GETTABLEKS                       R7 R0 K7 ["_hoverHandleId"]
       24 NAMECALL                         R3 R3 K8 ["transitionToState"]
       26 CALL                             R3 4 0
       27 RETURN                           R0 0

PROTO_7:
        0 LOADB                            R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["Should not be able to press down while in this state"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R2 K2 [os.clock]
        2 CALL                             R2 0 1
        3 GETTABLEKS                       R3 R0 K3 ["_clickTime"]
        5 SUB                              R1 R2 R3
        6 GETTABLEKS                       R3 R0 K4 ["_draggerToolModel"]
        8 GETTABLEKS                       R2 R3 K5 ["_draggerContext"]
       10 NAMECALL                         R2 R2 K6 ["getMouseLocation"]
       12 CALL                             R2 1 1
       13 GETTABLEKS                       R5 R0 K7 ["_dragStartLocation"]
       15 SUB                              R4 R2 R5
       16 GETTABLEKS                       R3 R4 K8 ["Magnitude"]
       18 LOADK                            R4 K9 [0.1]
       19 JUMPIFNOTLE                      R1 R4 ; [+13]
       21 LOADN                            R4 5
       22 JUMPIFNOTLE                      R3 R4 ; [+10]
       24 GETTABLEKS                       R4 R0 K4 ["_draggerToolModel"]
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R6 R7 K10 ["Ready"]
       29 LOADB                            R7 1
       30 NAMECALL                         R4 R4 K11 ["transitionToState"]
       32 CALL                             R4 3 0
       33 RETURN                           R0 0

PROTO_9:
        0 RETURN                           R0 0

PROTO_10:
        0 RETURN                           R0 0

PROTO_11:
        0 RETURN                           R0 0

PROTO_12:
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
       18 GETTABLEKS                       R5 R0 K6 ["Implementation"]
       20 GETTABLEKS                       R4 R5 K7 ["DraggerStateType"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K4 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Utility"]
       27 GETTABLEKS                       R5 R6 K9 ["StandardCursor"]
       29 CALL                             R4 1 1
       30 NEWTABLE                         R5 16 0
       32 SETTABLEKS                       R5 R5 K10 ["__index"]
       34 DUPCLOSURE                       R6 K11 [PROTO_0]
       35 CAPTURE                          VAL R5
       36 SETTABLEKS                       R6 R5 K12 ["new"]
       38 DUPCLOSURE                       R6 K13 [PROTO_2]
       39 CAPTURE                          VAL R3
       40 SETTABLEKS                       R6 R5 K14 ["enter"]
       42 DUPCLOSURE                       R6 K15 [PROTO_3]
       43 SETTABLEKS                       R6 R5 K16 ["leave"]
       45 DUPCLOSURE                       R6 K17 [PROTO_4]
       46 CAPTURE                          VAL R4
       47 SETTABLEKS                       R6 R5 K18 ["render"]
       49 DUPCLOSURE                       R6 K19 [PROTO_5]
       50 SETTABLEKS                       R6 R5 K20 ["processSelectionChanged"]
       52 DUPCLOSURE                       R6 K21 [PROTO_6]
       53 CAPTURE                          VAL R3
       54 SETTABLEKS                       R6 R5 K22 ["processViewChanged"]
       56 DUPCLOSURE                       R6 K23 [PROTO_7]
       57 SETTABLEKS                       R6 R5 K24 ["processMouseDown"]
       59 DUPCLOSURE                       R6 K25 [PROTO_8]
       60 CAPTURE                          VAL R3
       61 SETTABLEKS                       R6 R5 K26 ["processMouseUp"]
       63 DUPCLOSURE                       R6 K27 [PROTO_9]
       64 SETTABLEKS                       R6 R5 K28 ["processMouseEnter"]
       66 DUPCLOSURE                       R6 K29 [PROTO_10]
       67 SETTABLEKS                       R6 R5 K30 ["processMouseLeave"]
       69 DUPCLOSURE                       R6 K31 [PROTO_11]
       70 SETTABLEKS                       R6 R5 K32 ["processKeyDown"]
       72 DUPCLOSURE                       R6 K33 [PROTO_12]
       73 SETTABLEKS                       R6 R5 K34 ["processKeyUp"]
       75 RETURN                           R5 1
