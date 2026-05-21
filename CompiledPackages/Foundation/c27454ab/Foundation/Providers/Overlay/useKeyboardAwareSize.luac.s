PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnScreenKeyboardVisible"]
        3 JUMPIF                           R0 ; [+8]
        4 GETUPVAL                         R0 1
        5 GETIMPORT                        R1 K3 [UDim2.fromScale]
        7 LOADN                            R2 1
        8 LOADN                            R3 1
        9 CALL                             R1 2 -1
       10 CALL                             R0 -1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 2
       13 NAMECALL                         R0 R0 K4 ["GetGuiInset"]
       15 CALL                             R0 1 1
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K5 ["OnScreenKeyboardPosition"]
       19 GETTABLEKS                       R2 R2 K6 ["Y"]
       21 GETTABLEKS                       R3 R0 K6 ["Y"]
       23 SUB                              R1 R2 R3
       24 GETUPVAL                         R2 3
       25 GETTABLEKS                       R2 R2 K7 ["AbsoluteSize"]
       27 GETUPVAL                         R3 3
       28 GETTABLEKS                       R3 R3 K8 ["AbsolutePosition"]
       30 GETTABLEKS                       R5 R3 K6 ["Y"]
       32 GETTABLEKS                       R6 R2 K6 ["Y"]
       34 ADD                              R4 R5 R6
       35 SUB                              R5 R4 R1
       36 GETUPVAL                         R6 1
       37 GETUPVAL                         R8 4
       38 NAMECALL                         R8 R8 K9 ["getValue"]
       40 CALL                             R8 1 1
       41 GETIMPORT                        R9 K11 [UDim2.fromOffset]
       43 LOADN                            R10 0
       44 MOVE                             R11 R5
       45 CALL                             R9 2 1
       46 SUB                              R7 R8 R9
       47 CALL                             R6 1 0
       48 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 NEWCLOSURE                       R0 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U4
        9 MOVE                             R1 R0
       10 CALL                             R1 0 0
       11 GETUPVAL                         R1 1
       12 LOADK                            R3 K0 ["OnScreenKeyboardVisible"]
       13 NAMECALL                         R1 R1 K1 ["GetPropertyChangedSignal"]
       15 CALL                             R1 2 1
       16 MOVE                             R3 R0
       17 NAMECALL                         R1 R1 K2 ["Connect"]
       19 CALL                             R1 2 1
       20 GETUPVAL                         R2 1
       21 LOADK                            R4 K3 ["OnScreenKeyboardPosition"]
       22 NAMECALL                         R2 R2 K1 ["GetPropertyChangedSignal"]
       24 CALL                             R2 2 1
       25 MOVE                             R4 R0
       26 NAMECALL                         R2 R2 K2 ["Connect"]
       28 CALL                             R2 2 1
       29 NEWCLOSURE                       R3 P1
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R2
       32 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useBinding"]
        3 GETIMPORT                        R2 K3 [UDim2.fromScale]
        5 LOADN                            R3 1
        6 LOADN                            R4 1
        7 CALL                             R2 2 -1
        8 CALL                             R1 -1 2
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K4 ["useLayoutEffect"]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R2
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R1
       18 NEWTABLE                         R5 0 1
       20 MOVE                             R6 R0
       21 SETLIST                          R5 R6 1 [1]
       23 CALL                             R3 2 0
       24 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Utility"]
       13 GETTABLEKS                       R3 R3 K8 ["Wrappers"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K9 ["Services"]
       18 GETTABLEKS                       R3 R3 K10 ["GuiService"]
       20 GETTABLEKS                       R4 R2 K9 ["Services"]
       22 GETTABLEKS                       R4 R4 K11 ["UserInputService"]
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K12 ["React"]
       28 CALL                             R5 1 1
       29 DUPCLOSURE                       R6 K13 [PROTO_3]
       30 CAPTURE                          VAL R5
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R3
       33 RETURN                           R6 1
