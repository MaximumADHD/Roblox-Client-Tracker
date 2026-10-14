PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 NOT                              R1 R2
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["isPluginGuiFocused"]
        7 CALL                             R2 1 1
        8 NOT                              R1 R2
        9 JUMPIFNOT                        R0 ; [+1]
       10 JUMPIFNOT                        R1 ; [+4]
       11 GETUPVAL                         R2 2
       12 LOADB                            R3 0
       13 CALL                             R2 1 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R2 1
       16 MOVE                             R4 R0
       17 NAMECALL                         R2 R2 K1 ["getSidebarHoveredCanvasY"]
       19 CALL                             R2 2 1
       20 JUMPIFNOTEQKNIL                  R2 ; [+5]
       22 GETUPVAL                         R3 2
       23 LOADB                            R4 0
       24 CALL                             R3 1 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R3 2
       27 LOADB                            R4 0
       28 GETUPVAL                         R5 3
       29 JUMPIFNOTLE                      R5 R2 ; [+8]
       31 GETUPVAL                         R6 3
       32 GETUPVAL                         R7 4
       33 ADD                              R5 R6 R7
       34 JUMPIFLT                         R2 R5 ; [+2]
       36 LOADB                            R4 0 +1
       37 LOADB                            R4 1
       38 CALL                             R3 1 0
       39 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["getMousePosition"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R0 4 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["Size"]
        5 GETTABLEKS                       R1 R1 K1 ["Size_600"]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          VAL R1
       13 GETUPVAL                         R3 5
       14 GETTABLEKS                       R3 R3 K2 ["OnMouseMove"]
       16 MOVE                             R5 R2
       17 NAMECALL                         R3 R3 K3 ["Connect"]
       19 CALL                             R3 2 1
       20 SETTABLEKS                       R3 R0 K4 ["MouseMoveConnection"]
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R3 R3 K5 ["OnSidebarScrollChanged"]
       25 NEWCLOSURE                       R5 P1
       26 CAPTURE                          VAL R2
       27 CAPTURE                          UPVAL U5
       28 NAMECALL                         R3 R3 K3 ["Connect"]
       30 CALL                             R3 2 1
       31 SETTABLEKS                       R3 R0 K6 ["ScrollConnection"]
       33 GETUPVAL                         R3 2
       34 NAMECALL                         R3 R3 K7 ["getPluginGui"]
       36 CALL                             R3 1 1
       37 GETTABLEKS                       R4 R3 K8 ["WindowFocusReleased"]
       39 NEWCLOSURE                       R6 P2
       40 CAPTURE                          UPVAL U3
       41 NAMECALL                         R4 R4 K3 ["Connect"]
       43 CALL                             R4 2 1
       44 SETTABLEKS                       R4 R0 K9 ["FocusReleasedConnection"]
       46 NEWCLOSURE                       R4 P3
       47 CAPTURE                          UPVAL U6
       48 CAPTURE                          VAL R0
       49 RETURN                           R4 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["Hooks"]
       11 GETTABLEKS                       R3 R3 K2 ["useTokens"]
       13 CALL                             R3 0 1
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R4 R4 K3 ["useState"]
       17 LOADB                            R5 0
       18 CALL                             R4 1 2
       19 GETUPVAL                         R6 3
       20 GETTABLEKS                       R6 R6 K4 ["useEffect"]
       22 NEWCLOSURE                       R7 P0
       23 CAPTURE                          VAL R3
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R5
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R1
       29 CAPTURE                          UPVAL U5
       30 NEWTABLE                         R8 0 3
       32 MOVE                             R9 R1
       33 MOVE                             R10 R2
       34 MOVE                             R11 R0
       35 SETLIST                          R8 R9 3 [1]
       37 CALL                             R6 2 0
       38 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Controllers"]
       27 GETTABLEKS                       R4 R4 K11 ["Input"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Controllers"]
       36 GETTABLEKS                       R5 R5 K12 ["LayoutController"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R6 K13 ["Util"]
       45 GETTABLEKS                       R6 R6 K14 ["cleanConnections"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K9 ["Src"]
       52 GETTABLEKS                       R7 R7 K15 ["Flags"]
       54 GETTABLEKS                       R7 R7 K16 ["getFFlagAmrUseQWidgetPopovers"]
       56 CALL                             R6 1 1
       57 DUPCLOSURE                       R7 K17 [PROTO_5]
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R5
       64 RETURN                           R7 1
