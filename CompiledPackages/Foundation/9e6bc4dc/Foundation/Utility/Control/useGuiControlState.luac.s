PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["current"]
        6 JUMPIFNOT                        R2 ; [+22]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R2 R3 K1 ["Default"]
       10 JUMPIFEQ                         R0 R2 ; [+6]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R2 R3 K2 ["Hover"]
       15 JUMPIFNOTEQ                      R0 R2 ; [+5]
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R0 R2 K3 ["Selected"]
       20 JUMP                             ; [+8]
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R2 R3 K4 ["Pressed"]
       24 JUMPIFNOTEQ                      R0 R2 ; [+4]
       26 GETUPVAL                         R2 2
       27 GETTABLEKS                       R0 R2 K5 ["SelectedPressed"]
       29 JUMPIFNOTEQ                      R1 R0 ; [+2]
       31 RETURN                           R0 0
       32 GETUPVAL                         R2 0
       33 SETTABLEKS                       R0 R2 K0 ["current"]
       35 GETUPVAL                         R2 3
       36 JUMPIFEQKNIL                     R2 ; [+4]
       38 GETUPVAL                         R2 3
       39 MOVE                             R3 R0
       40 CALL                             R2 1 0
       41 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["GuiState"]
        4 GETTABLE                         R0 R1 R2
        5 GETUPVAL                         R1 2
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K0 ["current"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K0 ["current"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 JUMPIFNOT                        R0 ; [+50]
        3 GETUPVAL                         R2 0
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R5 R0 K0 ["GuiState"]
        7 GETTABLE                         R3 R4 R5
        8 CALL                             R2 1 0
        9 MOVE                             R3 R1
       10 LOADK                            R6 K0 ["GuiState"]
       11 NAMECALL                         R4 R0 K1 ["GetPropertyChangedSignal"]
       13 CALL                             R4 2 1
       14 NEWCLOSURE                       R6 P0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U0
       18 NAMECALL                         R4 R4 K2 ["Connect"]
       20 CALL                             R4 2 -1
       21 FASTCALL                         TABLE_INSERT ; [+2]
       22 GETIMPORT                        R2 K5 [table.insert]
       24 CALL                             R2 -1 0
       25 MOVE                             R3 R1
       26 GETTABLEKS                       R4 R0 K6 ["SelectionGained"]
       28 NEWCLOSURE                       R6 P1
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          UPVAL U3
       32 NAMECALL                         R4 R4 K2 ["Connect"]
       34 CALL                             R4 2 -1
       35 FASTCALL                         TABLE_INSERT ; [+2]
       36 GETIMPORT                        R2 K5 [table.insert]
       38 CALL                             R2 -1 0
       39 MOVE                             R3 R1
       40 GETTABLEKS                       R4 R0 K7 ["SelectionLost"]
       42 NEWCLOSURE                       R6 P2
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          UPVAL U0
       45 CAPTURE                          UPVAL U3
       46 NAMECALL                         R4 R4 K2 ["Connect"]
       48 CALL                             R4 2 -1
       49 FASTCALL                         TABLE_INSERT ; [+2]
       50 GETIMPORT                        R2 K5 [table.insert]
       52 CALL                             R2 -1 0
       53 NEWCLOSURE                       R2 P3
       54 CAPTURE                          VAL R1
       55 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useRef"]
        3 LOADB                            R3 0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["useRef"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K1 ["Initialize"]
       11 CALL                             R3 1 1
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K2 ["useCallback"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R3
       17 CAPTURE                          VAL R2
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R1
       20 NEWTABLE                         R6 0 1
       22 MOVE                             R7 R1
       23 SETLIST                          R6 R7 1 [1]
       25 CALL                             R4 2 1
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R5 R6 K2 ["useCallback"]
       29 NEWCLOSURE                       R6 P1
       30 CAPTURE                          VAL R4
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 NEWTABLE                         R7 0 1
       36 MOVE                             R8 R4
       37 SETLIST                          R7 R8 1 [1]
       39 CALL                             R5 2 1
       40 GETUPVAL                         R6 3
       41 MOVE                             R7 R0
       42 MOVE                             R8 R5
       43 CALL                             R6 2 -1
       44 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ReactUtils"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["useForwardRef"]
       21 GETIMPORT                        R5 K6 [require]
       23 GETTABLEKS                       R7 R0 K10 ["Enums"]
       25 GETTABLEKS                       R6 R7 K11 ["ControlState"]
       27 CALL                             R5 1 1
       28 GETIMPORT                        R6 K6 [require]
       30 GETTABLEKS                       R8 R0 K10 ["Enums"]
       32 GETTABLEKS                       R7 R8 K12 ["ControlStateEvent"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K6 [require]
       37 GETTABLEKS                       R9 R0 K13 ["Components"]
       39 GETTABLEKS                       R8 R9 K14 ["Types"]
       41 CALL                             R7 1 1
       42 NEWTABLE                         R8 4 0
       44 GETIMPORT                        R9 K18 [Enum.GuiState.Idle]
       46 GETTABLEKS                       R10 R5 K19 ["Default"]
       48 SETTABLE                         R10 R8 R9
       49 GETIMPORT                        R9 K21 [Enum.GuiState.Hover]
       51 GETTABLEKS                       R10 R5 K20 ["Hover"]
       53 SETTABLE                         R10 R8 R9
       54 GETIMPORT                        R9 K23 [Enum.GuiState.Press]
       56 GETTABLEKS                       R10 R5 K24 ["Pressed"]
       58 SETTABLE                         R10 R8 R9
       59 GETIMPORT                        R9 K26 [Enum.GuiState.NonInteractable]
       61 GETTABLEKS                       R10 R5 K27 ["Disabled"]
       63 SETTABLE                         R10 R8 R9
       64 DUPCLOSURE                       R9 K28 [PROTO_6]
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R4
       69 RETURN                           R9 1
