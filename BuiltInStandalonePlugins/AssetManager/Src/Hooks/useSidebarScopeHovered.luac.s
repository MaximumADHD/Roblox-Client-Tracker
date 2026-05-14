PROTO_0:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K0 ["isPluginGuiFocused"]
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+4]
        6 GETUPVAL                         R1 1
        7 LOADB                            R2 0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 0
       11 MOVE                             R3 R0
       12 NAMECALL                         R1 R1 K1 ["getSidebarHoveredCanvasY"]
       14 CALL                             R1 2 1
       15 JUMPIFNOTEQKNIL                  R1 ; [+5]
       17 GETUPVAL                         R2 1
       18 LOADB                            R3 0
       19 CALL                             R2 1 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R2 1
       22 LOADB                            R3 0
       23 GETUPVAL                         R4 2
       24 JUMPIFNOTLE                      R4 R1 ; [+8]
       26 GETUPVAL                         R5 2
       27 GETUPVAL                         R6 3
       28 ADD                              R4 R5 R6
       29 JUMPIFLT                         R1 R4 ; [+2]
       31 LOADB                            R3 0 +1
       32 LOADB                            R3 1
       33 CALL                             R2 1 0
       34 RETURN                           R0 0

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
       11 CAPTURE                          VAL R1
       12 GETUPVAL                         R3 4
       13 GETTABLEKS                       R3 R3 K2 ["OnMouseMove"]
       15 MOVE                             R5 R2
       16 NAMECALL                         R3 R3 K3 ["Connect"]
       18 CALL                             R3 2 1
       19 SETTABLEKS                       R3 R0 K4 ["MouseMoveConnection"]
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K5 ["OnSidebarScrollChanged"]
       24 NEWCLOSURE                       R5 P1
       25 CAPTURE                          VAL R2
       26 CAPTURE                          UPVAL U4
       27 NAMECALL                         R3 R3 K3 ["Connect"]
       29 CALL                             R3 2 1
       30 SETTABLEKS                       R3 R0 K6 ["ScrollConnection"]
       32 GETUPVAL                         R3 1
       33 NAMECALL                         R3 R3 K7 ["getPluginGui"]
       35 CALL                             R3 1 1
       36 GETTABLEKS                       R4 R3 K8 ["WindowFocusReleased"]
       38 NEWCLOSURE                       R6 P2
       39 CAPTURE                          UPVAL U2
       40 NAMECALL                         R4 R4 K3 ["Connect"]
       42 CALL                             R4 2 1
       43 SETTABLEKS                       R4 R0 K9 ["FocusReleasedConnection"]
       45 NEWCLOSURE                       R4 P3
       46 CAPTURE                          UPVAL U5
       47 CAPTURE                          VAL R0
       48 RETURN                           R4 1

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
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R5
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R1
       28 CAPTURE                          UPVAL U4
       29 NEWTABLE                         R8 0 3
       31 MOVE                             R9 R1
       32 MOVE                             R10 R2
       33 MOVE                             R11 R0
       34 SETLIST                          R8 R9 3 [1]
       36 CALL                             R6 2 0
       37 RETURN                           R4 1

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
       48 DUPCLOSURE                       R6 K15 [PROTO_5]
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R5
       54 RETURN                           R6 1
