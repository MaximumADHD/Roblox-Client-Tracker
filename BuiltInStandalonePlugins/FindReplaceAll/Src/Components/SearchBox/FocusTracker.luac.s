PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["CaptureFocus"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFEQ                         R2 R3 ; [+7]
        6 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        8 GETIMPORT                        R3 K5 [Enum.UserInputType.Touch]
       10 JUMPIFNOTEQ                      R2 R3 ; [+3]
       12 GETUPVAL                         R2 0
       13 CALL                             R2 0 0
       14 RETURN                           R0 0

PROTO_2:
        0 JUMPIFEQKNIL                     R2 ; [+9]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["onFocusLost"]
        5 MOVE                             R4 R0
        6 MOVE                             R5 R1
        7 MOVE                             R6 R2
        8 GETUPVAL                         R7 1
        9 CALL                             R3 4 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["useCallback"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 NEWTABLE                         R4 0 1
       12 MOVE                             R5 R1
       13 SETLIST                          R4 R5 1 [1]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R3 R4 K1 ["useCallback"]
       19 NEWCLOSURE                       R4 P1
       20 CAPTURE                          VAL R2
       21 NEWTABLE                         R5 0 1
       23 MOVE                             R6 R2
       24 SETLIST                          R5 R6 1 [1]
       26 CALL                             R3 2 1
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R4 R5 K1 ["useCallback"]
       30 NEWCLOSURE                       R5 P2
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R2
       33 NEWTABLE                         R6 0 2
       35 GETTABLEKS                       R7 R0 K2 ["onFocusLost"]
       37 MOVE                             R8 R2
       38 SETLIST                          R6 R7 2 [1]
       40 CALL                             R4 2 1
       41 GETUPVAL                         R5 1
       42 LOADK                            R6 K3 ["Frame"]
       43 NEWTABLE                         R7 4 0
       45 LOADN                            R8 1
       46 SETTABLEKS                       R8 R7 K4 ["BackgroundTransparency"]
       48 GETIMPORT                        R8 K7 [UDim2.fromScale]
       50 LOADN                            R9 1
       51 LOADN                            R10 1
       52 CALL                             R8 2 1
       53 SETTABLEKS                       R8 R7 K8 ["Size"]
       55 GETUPVAL                         R10 0
       56 GETTABLEKS                       R9 R10 K9 ["Event"]
       58 GETTABLEKS                       R8 R9 K10 ["InputBegan"]
       60 SETTABLE                         R3 R7 R8
       61 DUPTABLE                         R8 K12 [{"Dummy"}]
       62 GETUPVAL                         R9 1
       63 LOADK                            R10 K13 ["TextBox"]
       64 NEWTABLE                         R11 4 0
       66 LOADB                            R12 0
       67 SETTABLEKS                       R12 R11 K14 ["Visible"]
       69 SETTABLEKS                       R1 R11 K15 ["ref"]
       71 GETUPVAL                         R14 0
       72 GETTABLEKS                       R13 R14 K9 ["Event"]
       74 GETTABLEKS                       R12 R13 K16 ["FocusLost"]
       76 SETTABLE                         R4 R11 R12
       77 CALL                             R9 2 1
       78 SETTABLEKS                       R9 R8 K11 ["Dummy"]
       80 CALL                             R5 3 -1
       81 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 DUPCLOSURE                       R3 K9 [PROTO_3]
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R2
       19 RETURN                           R3 1
