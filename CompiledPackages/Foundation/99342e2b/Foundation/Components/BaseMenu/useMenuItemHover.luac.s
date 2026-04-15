PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isSubmenu"]
        3 JUMPIFNOT                        R0 ; [+46]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["isDisabled"]
        7 JUMPIFNOT                        R0 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K2 ["itemRef"]
       12 GETTABLEKS                       R2 R3 K3 ["current"]
       14 GETTABLEKS                       R1 R2 K4 ["GuiState"]
       16 GETIMPORT                        R2 K7 [Enum.GuiState.Hover]
       18 JUMPIFEQ                         R1 R2 ; [+2]
       20 LOADB                            R0 0 +1
       21 LOADB                            R0 1
       22 JUMPIFNOT                        R0 ; [+15]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R1 R2 K8 ["hoverOpenAtDepth"]
       26 JUMPIFNOT                        R1 ; [+45]
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R1 R2 K8 ["hoverOpenAtDepth"]
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R2 R3 K9 ["depth"]
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R3 R4 K10 ["id"]
       36 CALL                             R1 2 0
       37 RETURN                           R0 0
       38 GETUPVAL                         R2 0
       39 GETTABLEKS                       R1 R2 K11 ["hoverCloseAtDepth"]
       41 JUMPIFNOT                        R1 ; [+30]
       42 GETUPVAL                         R2 0
       43 GETTABLEKS                       R1 R2 K11 ["hoverCloseAtDepth"]
       45 GETUPVAL                         R3 0
       46 GETTABLEKS                       R2 R3 K9 ["depth"]
       48 CALL                             R1 1 0
       49 RETURN                           R0 0
       50 GETUPVAL                         R3 0
       51 GETTABLEKS                       R2 R3 K2 ["itemRef"]
       53 GETTABLEKS                       R1 R2 K3 ["current"]
       55 GETTABLEKS                       R0 R1 K4 ["GuiState"]
       57 GETIMPORT                        R1 K7 [Enum.GuiState.Hover]
       59 JUMPIFNOTEQ                      R0 R1 ; [+12]
       61 GETUPVAL                         R1 0
       62 GETTABLEKS                       R0 R1 K11 ["hoverCloseAtDepth"]
       64 JUMPIFNOT                        R0 ; [+7]
       65 GETUPVAL                         R1 0
       66 GETTABLEKS                       R0 R1 K11 ["hoverCloseAtDepth"]
       68 GETUPVAL                         R2 0
       69 GETTABLEKS                       R1 R2 K9 ["depth"]
       71 CALL                             R0 1 0
       72 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["itemRef"]
        3 GETTABLEKS                       R0 R1 K1 ["current"]
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K0 ["itemRef"]
       11 GETTABLEKS                       R1 R2 K1 ["current"]
       13 FASTCALL1                        TYPEOF R1 ; [+2]
       14 GETIMPORT                        R0 K3 [typeof]
       16 CALL                             R0 1 1
       17 JUMPIFEQKS                       R0 K4 ["Instance"] ; [+2]
       19 RETURN                           R0 0
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R1 R2 K0 ["itemRef"]
       23 GETTABLEKS                       R0 R1 K1 ["current"]
       25 LOADK                            R2 K5 ["GuiState"]
       26 NAMECALL                         R0 R0 K6 ["GetPropertyChangedSignal"]
       28 CALL                             R0 2 1
       29 NEWCLOSURE                       R2 P0
       30 CAPTURE                          UPVAL U0
       31 NAMECALL                         R0 R0 K7 ["Connect"]
       33 CALL                             R0 2 1
       34 NEWCLOSURE                       R1 P1
       35 CAPTURE                          VAL R0
       36 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useEffect"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 7
        7 GETTABLEKS                       R4 R0 K1 ["isSubmenu"]
        9 GETTABLEKS                       R5 R0 K2 ["isDisabled"]
       11 GETTABLEKS                       R6 R0 K3 ["id"]
       13 GETTABLEKS                       R7 R0 K4 ["depth"]
       15 GETTABLEKS                       R8 R0 K5 ["hoverCloseAtDepth"]
       17 GETTABLEKS                       R9 R0 K6 ["hoverOpenAtDepth"]
       19 GETTABLEKS                       R10 R0 K7 ["itemRef"]
       21 SETLIST                          R3 R4 7 [1]
       23 CALL                             R1 2 0
       24 RETURN                           R0 0

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
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["Types"]
       20 CALL                             R3 1 1
       21 DUPCLOSURE                       R4 K10 [PROTO_3]
       22 CAPTURE                          VAL R2
       23 RETURN                           R4 1
