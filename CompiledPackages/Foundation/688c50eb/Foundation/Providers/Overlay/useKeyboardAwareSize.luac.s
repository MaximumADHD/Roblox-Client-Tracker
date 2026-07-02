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
       36 GETUPVAL                         R6 4
       37 GETTABLEKS                       R6 R6 K9 ["FoundationOverlayKeyboardAwarenessHardened"]
       39 JUMPIFNOT                        R6 ; [+17]
       40 GETIMPORT                        R6 K11 [UDim2.new]
       42 LOADN                            R7 1
       43 LOADN                            R8 0
       44 LOADN                            R9 1
       45 MINUS                            R10 R5
       46 CALL                             R6 4 1
       47 GETUPVAL                         R7 5
       48 NAMECALL                         R7 R7 K12 ["getValue"]
       50 CALL                             R7 1 1
       51 JUMPIFEQ                         R7 R6 ; [+17]
       53 GETUPVAL                         R7 1
       54 MOVE                             R8 R6
       55 CALL                             R7 1 0
       56 RETURN                           R0 0
       57 GETUPVAL                         R6 1
       58 GETUPVAL                         R8 5
       59 NAMECALL                         R8 R8 K12 ["getValue"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K14 [UDim2.fromOffset]
       64 LOADN                            R10 0
       65 MOVE                             R11 R5
       66 CALL                             R9 2 1
       67 SUB                              R7 R8 R9
       68 CALL                             R6 1 0
       69 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K1 ["FoundationOverlayKeyboardAwarenessHardened"]
       11 JUMPIFNOT                        R0 ; [+4]
       12 GETUPVAL                         R0 3
       13 NAMECALL                         R0 R0 K0 ["Disconnect"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

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
        9 CAPTURE                          UPVAL U5
       10 MOVE                             R1 R0
       11 CALL                             R1 0 0
       12 GETUPVAL                         R1 1
       13 LOADK                            R3 K0 ["OnScreenKeyboardVisible"]
       14 NAMECALL                         R1 R1 K1 ["GetPropertyChangedSignal"]
       16 CALL                             R1 2 1
       17 MOVE                             R3 R0
       18 NAMECALL                         R1 R1 K2 ["Connect"]
       20 CALL                             R1 2 1
       21 GETUPVAL                         R2 1
       22 LOADK                            R4 K3 ["OnScreenKeyboardPosition"]
       23 NAMECALL                         R2 R2 K1 ["GetPropertyChangedSignal"]
       25 CALL                             R2 2 1
       26 MOVE                             R4 R0
       27 NAMECALL                         R2 R2 K2 ["Connect"]
       29 CALL                             R2 2 1
       30 LOADNIL                          R3
       31 GETUPVAL                         R4 4
       32 GETTABLEKS                       R4 R4 K4 ["FoundationOverlayKeyboardAwarenessHardened"]
       34 JUMPIFNOT                        R4 ; [+10]
       35 GETUPVAL                         R4 0
       36 LOADK                            R6 K5 ["AbsoluteSize"]
       37 NAMECALL                         R4 R4 K1 ["GetPropertyChangedSignal"]
       39 CALL                             R4 2 1
       40 MOVE                             R6 R0
       41 NAMECALL                         R4 R4 K2 ["Connect"]
       43 CALL                             R4 2 1
       44 MOVE                             R3 R4
       45 NEWCLOSURE                       R4 P1
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R2
       48 CAPTURE                          UPVAL U4
       49 CAPTURE                          REF R3
       50 CLOSEUPVALS                      R3
       51 RETURN                           R4 1

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
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          VAL R1
       19 NEWTABLE                         R5 0 1
       21 MOVE                             R6 R0
       22 SETLIST                          R5 R6 1 [1]
       24 CALL                             R3 2 0
       25 RETURN                           R1 1

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
       26 GETTABLEKS                       R6 R0 K7 ["Utility"]
       28 GETTABLEKS                       R6 R6 K12 ["Flags"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R1 K13 ["React"]
       35 CALL                             R6 1 1
       36 DUPCLOSURE                       R7 K14 [PROTO_3]
       37 CAPTURE                          VAL R6
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R5
       41 RETURN                           R7 1
