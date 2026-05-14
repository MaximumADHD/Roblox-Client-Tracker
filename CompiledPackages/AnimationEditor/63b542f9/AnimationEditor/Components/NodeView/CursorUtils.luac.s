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
        1 GETTABLEKS                       R0 R0 K0 ["_isPlaySolo"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+7]
        5 GETUPVAL                         R0 1
        6 CALL                             R0 0 1
        7 JUMPIFNOT                        R0 ; [+2]
        8 LOADK                            R0 K1 ["rbxasset://textures/Cursors/KeyboardMouse/ArrowFarCursor.png"]
        9 RETURN                           R0 1
       10 LOADK                            R0 K2 ["rbxasset://textures/advCursor-default.png"]
       11 RETURN                           R0 1
       12 LOADK                            R0 K3 ["rbxasset://SystemCursors/Arrow"]
       13 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_isPlaySolo"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+7]
        5 GETUPVAL                         R0 1
        6 CALL                             R0 0 1
        7 JUMPIFNOT                        R0 ; [+2]
        8 LOADK                            R0 K1 ["rbxasset://textures/Cursors/DragDetector/HoverCursor.png"]
        9 RETURN                           R0 1
       10 LOADK                            R0 K2 ["rbxasset://textures/advCursor-openedHand.png"]
       11 RETURN                           R0 1
       12 LOADK                            R0 K3 ["rbxasset://SystemCursors/OpenHand"]
       13 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_isPlaySolo"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+7]
        5 GETUPVAL                         R0 1
        6 CALL                             R0 0 1
        7 JUMPIFNOT                        R0 ; [+2]
        8 LOADK                            R0 K1 ["rbxasset://textures/Cursors/DragDetector/ActivatedCursor.png"]
        9 RETURN                           R0 1
       10 LOADK                            R0 K2 ["rbxasset://textures/advClosed-hand.png"]
       11 RETURN                           R0 1
       12 LOADK                            R0 K3 ["rbxasset://SystemCursors/ClosedHand"]
       13 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimationEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Flags"]
       17 GETTABLEKS                       R3 R3 K11 ["getFFlagImprovedCursors"]
       19 CALL                             R2 1 1
       20 NEWTABLE                         R3 4 0
       22 DUPCLOSURE                       R4 K12 [PROTO_0]
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R4 R3 K13 ["_isPlaySolo"]
       26 DUPCLOSURE                       R4 K14 [PROTO_1]
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R2
       29 SETTABLEKS                       R4 R3 K15 ["getArrow"]
       31 DUPCLOSURE                       R4 K16 [PROTO_2]
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R2
       34 SETTABLEKS                       R4 R3 K17 ["getOpenHand"]
       36 DUPCLOSURE                       R4 K18 [PROTO_3]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R2
       39 SETTABLEKS                       R4 R3 K19 ["getClosedHand"]
       41 RETURN                           R3 1
