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
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["_draggerToolModel"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["DraggingHandle"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K3 ["_hoverHandles"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K4 ["_hoverHandleId"]
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
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["getClosedHand"]
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
        0 GETTABLEKS                       R1 R0 K0 ["_draggerToolModel"]
        2 GETTABLEKS                       R1 R1 K1 ["_draggerContext"]
        4 NAMECALL                         R1 R1 K2 ["getMouseLocation"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R3 R0 K3 ["_dragStartLocation"]
        9 SUB                              R2 R1 R3
       10 GETTABLEKS                       R2 R2 K4 ["Magnitude"]
       12 LOADN                            R3 5
       13 JUMPIFNOTLT                      R3 R2 ; [+13]
       15 GETTABLEKS                       R3 R0 K0 ["_draggerToolModel"]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K5 ["DraggingHandle"]
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
        6 GETTABLEKS                       R2 R0 K4 ["_draggerToolModel"]
        8 GETTABLEKS                       R2 R2 K5 ["_draggerContext"]
       10 NAMECALL                         R2 R2 K6 ["getMouseLocation"]
       12 CALL                             R2 1 1
       13 GETTABLEKS                       R4 R0 K7 ["_dragStartLocation"]
       15 SUB                              R3 R2 R4
       16 GETTABLEKS                       R3 R3 K8 ["Magnitude"]
       18 LOADK                            R4 K9 [0.1]
       19 JUMPIFNOTLE                      R1 R4 ; [+13]
       21 LOADN                            R4 5
       22 JUMPIFNOTLE                      R3 R4 ; [+10]
       24 GETTABLEKS                       R4 R0 K4 ["_draggerToolModel"]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K10 ["Ready"]
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
       31 DUPCLOSURE                       R4 K12 [PROTO_2]
       32 CAPTURE                          VAL R1
       33 SETTABLEKS                       R4 R3 K13 ["enter"]
       35 DUPCLOSURE                       R4 K14 [PROTO_3]
       36 SETTABLEKS                       R4 R3 K15 ["leave"]
       38 DUPCLOSURE                       R4 K16 [PROTO_4]
       39 CAPTURE                          VAL R2
       40 SETTABLEKS                       R4 R3 K17 ["render"]
       42 DUPCLOSURE                       R4 K18 [PROTO_5]
       43 SETTABLEKS                       R4 R3 K19 ["processSelectionChanged"]
       45 DUPCLOSURE                       R4 K20 [PROTO_6]
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R4 R3 K21 ["processViewChanged"]
       49 DUPCLOSURE                       R4 K22 [PROTO_7]
       50 SETTABLEKS                       R4 R3 K23 ["processMouseDown"]
       52 DUPCLOSURE                       R4 K24 [PROTO_8]
       53 CAPTURE                          VAL R1
       54 SETTABLEKS                       R4 R3 K25 ["processMouseUp"]
       56 DUPCLOSURE                       R4 K26 [PROTO_9]
       57 SETTABLEKS                       R4 R3 K27 ["processMouseEnter"]
       59 DUPCLOSURE                       R4 K28 [PROTO_10]
       60 SETTABLEKS                       R4 R3 K29 ["processMouseLeave"]
       62 DUPCLOSURE                       R4 K30 [PROTO_11]
       63 SETTABLEKS                       R4 R3 K31 ["processKeyDown"]
       65 DUPCLOSURE                       R4 K32 [PROTO_12]
       66 SETTABLEKS                       R4 R3 K33 ["processKeyUp"]
       68 RETURN                           R3 1
