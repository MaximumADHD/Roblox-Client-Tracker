PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsRunning"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+5]
        5 GETUPVAL                         R1 0
        6 NAMECALL                         R1 R1 K1 ["IsRunMode"]
        8 CALL                             R1 1 1
        9 NOT                              R0 R1
       10 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsRunning"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+5]
        5 GETUPVAL                         R1 0
        6 NAMECALL                         R1 R1 K1 ["IsRunMode"]
        8 CALL                             R1 1 1
        9 NOT                              R0 R1
       10 JUMPIFNOT                        R0 ; [+7]
       11 GETUPVAL                         R0 1
       12 CALL                             R0 0 1
       13 JUMPIFNOT                        R0 ; [+2]
       14 LOADK                            R0 K2 ["rbxasset://textures/Cursors/KeyboardMouse/ArrowFarCursor.png"]
       15 RETURN                           R0 1
       16 LOADK                            R0 K3 ["rbxasset://textures/advCursor-default.png"]
       17 RETURN                           R0 1
       18 LOADK                            R0 K4 ["rbxasset://SystemCursors/Arrow"]
       19 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsRunning"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+5]
        5 GETUPVAL                         R1 0
        6 NAMECALL                         R1 R1 K1 ["IsRunMode"]
        8 CALL                             R1 1 1
        9 NOT                              R0 R1
       10 JUMPIFNOT                        R0 ; [+7]
       11 GETUPVAL                         R0 1
       12 CALL                             R0 0 1
       13 JUMPIFNOT                        R0 ; [+2]
       14 LOADK                            R0 K2 ["rbxasset://textures/Cursors/DragDetector/HoverCursor.png"]
       15 RETURN                           R0 1
       16 LOADK                            R0 K3 ["rbxasset://textures/advCursor-openedHand.png"]
       17 RETURN                           R0 1
       18 LOADK                            R0 K4 ["rbxasset://SystemCursors/OpenHand"]
       19 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsRunning"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+5]
        5 GETUPVAL                         R1 0
        6 NAMECALL                         R1 R1 K1 ["IsRunMode"]
        8 CALL                             R1 1 1
        9 NOT                              R0 R1
       10 JUMPIFNOT                        R0 ; [+7]
       11 GETUPVAL                         R0 1
       12 CALL                             R0 0 1
       13 JUMPIFNOT                        R0 ; [+2]
       14 LOADK                            R0 K2 ["rbxasset://textures/Cursors/DragDetector/ActivatedCursor.png"]
       15 RETURN                           R0 1
       16 LOADK                            R0 K3 ["rbxasset://textures/advClosed-hand.png"]
       17 RETURN                           R0 1
       18 LOADK                            R0 K4 ["rbxasset://SystemCursors/ClosedHand"]
       19 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R3 K5 [script]
        9 GETTABLEKS                       R2 R3 K6 ["Parent"]
       11 GETTABLEKS                       R1 R2 K6 ["Parent"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R4 R1 K9 ["Flags"]
       17 GETTABLEKS                       R3 R4 K10 ["getFFlagImprovedCursors"]
       19 CALL                             R2 1 1
       20 NEWTABLE                         R3 4 0
       22 DUPCLOSURE                       R4 K11 [PROTO_0]
       23 CAPTURE                          VAL R0
       24 DUPCLOSURE                       R5 K12 [PROTO_1]
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R2
       27 SETTABLEKS                       R5 R3 K13 ["getArrow"]
       29 DUPCLOSURE                       R5 K14 [PROTO_2]
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R2
       32 SETTABLEKS                       R5 R3 K15 ["getOpenHand"]
       34 DUPCLOSURE                       R5 K16 [PROTO_3]
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R2
       37 SETTABLEKS                       R5 R3 K17 ["getClosedHand"]
       39 RETURN                           R3 1
