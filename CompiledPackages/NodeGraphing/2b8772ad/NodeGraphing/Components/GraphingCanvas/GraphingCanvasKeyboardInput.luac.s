PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.Keyboard]
        4 JUMPIFEQ                         R2 R3 ; [+2]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R2 R1 K4 ["KeyCode"]
        9 GETIMPORT                        R3 K6 [Enum.KeyCode.Delete]
       11 JUMPIFEQ                         R2 R3 ; [+7]
       13 GETTABLEKS                       R2 R1 K4 ["KeyCode"]
       15 GETIMPORT                        R3 K8 [Enum.KeyCode.Backspace]
       17 JUMPIFNOTEQ                      R2 R3 ; [+34]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K9 ["nodeRenderInfoDispatcher"]
       22 GETTABLEKS                       R2 R2 K10 ["getMap"]
       24 CALL                             R2 0 1
       25 NEWTABLE                         R3 0 0
       27 MOVE                             R4 R2
       28 LOADNIL                          R5
       29 LOADNIL                          R6
       30 FORGPREP                         R4
       31 GETTABLEKS                       R9 R8 K11 ["isSelected"]
       33 JUMPIFNOT                        R9 ; [+7]
       34 FASTCALL2                        TABLE_INSERT R3 R7 ; [+5]
       36 MOVE                             R10 R3
       37 MOVE                             R11 R7
       38 GETIMPORT                        R9 K14 [table.insert]
       40 CALL                             R9 2 0
       41 FORGLOOP                         R4 2 ; [-11]
       43 LENGTH                           R4 R3
       44 LOADN                            R5 0
       45 JUMPIFNOTLT                      R5 R4 ; [+6]
       47 GETUPVAL                         R4 0
       48 GETTABLEKS                       R4 R4 K15 ["removeNodes"]
       50 MOVE                             R5 R3
       51 CALL                             R4 1 0
       52 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K2 ["useEventCallback"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          VAL R0
       12 CALL                             R1 1 1
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K3 ["createElement"]
       16 LOADK                            R3 K4 ["Frame"]
       17 NEWTABLE                         R4 4 0
       19 GETIMPORT                        R5 K7 [UDim2.fromScale]
       21 LOADN                            R6 1
       22 LOADN                            R7 1
       23 CALL                             R5 2 1
       24 SETTABLEKS                       R5 R4 K8 ["Size"]
       26 LOADN                            R5 1
       27 SETTABLEKS                       R5 R4 K9 ["BackgroundTransparency"]
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K10 ["Event"]
       32 GETTABLEKS                       R5 R5 K11 ["InputBegan"]
       34 SETTABLE                         R1 R4 R5
       35 CALL                             R2 2 -1
       36 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["GraphContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K11 [PROTO_1]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R3
       32 RETURN                           R4 1
