PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+6]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["current"]
        5 JUMPIFNOTEQKNIL                  R1 ; [+5]
        7 GETUPVAL                         R1 1
        8 LOADB                            R2 0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 2
       12 NAMECALL                         R1 R1 K1 ["getContentFrame"]
       14 CALL                             R1 1 1
       15 LOADB                            R2 1
       16 JUMPIFEQKNIL                     R1 ; [+5]
       18 GETUPVAL                         R2 3
       19 MOVE                             R3 R0
       20 MOVE                             R4 R1
       21 CALL                             R2 2 1
       22 GETUPVAL                         R3 1
       23 GETUPVAL                         R5 4
       24 JUMPIF                           R5 ; [+2]
       25 MOVE                             R4 R2
       26 JUMPIFNOT                        R4 ; [+7]
       27 GETUPVAL                         R4 3
       28 MOVE                             R5 R0
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K0 ["current"]
       32 GETUPVAL                         R7 5
       33 CALL                             R4 3 1
       34 CALL                             R3 1 0
       35 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["getMousePosition"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 2 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["OnMouseMove"]
        5 GETUPVAL                         R3 1
        6 NAMECALL                         R1 R1 K1 ["Connect"]
        8 CALL                             R1 2 1
        9 SETTABLEKS                       R1 R0 K2 ["MouseMoveConnection"]
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K3 ["OnContentScrollChanged"]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U0
       17 NAMECALL                         R1 R1 K1 ["Connect"]
       19 CALL                             R1 2 1
       20 SETTABLEKS                       R1 R0 K4 ["ScrollConnection"]
       22 NEWCLOSURE                       R1 P1
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          VAL R0
       25 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["use"]
        3 CALL                             R3 0 1
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K0 ["use"]
        7 CALL                             R4 0 1
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R5 R5 K1 ["useState"]
       11 LOADB                            R6 0
       12 CALL                             R5 1 2
       13 GETUPVAL                         R7 2
       14 GETTABLEKS                       R7 R7 K2 ["useCallback"]
       16 NEWCLOSURE                       R8 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R6
       19 CAPTURE                          VAL R4
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R1
       23 NEWTABLE                         R9 0 3
       25 GETTABLEKS                       R10 R0 K3 ["current"]
       27 MOVE                             R11 R1
       28 MOVE                             R12 R2
       29 SETLIST                          R9 R10 3 [1]
       31 CALL                             R7 2 1
       32 GETUPVAL                         R8 2
       33 GETTABLEKS                       R8 R8 K4 ["useEffect"]
       35 NEWCLOSURE                       R9 P1
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R7
       38 CAPTURE                          VAL R4
       39 CAPTURE                          UPVAL U4
       40 NEWTABLE                         R10 0 1
       42 MOVE                             R11 R7
       43 SETLIST                          R10 R11 1 [1]
       45 CALL                             R8 2 0
       46 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["cleanConnections"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["isPositionInFrame"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K12 ["Controllers"]
       38 GETTABLEKS                       R5 R5 K13 ["Input"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K12 ["Controllers"]
       47 GETTABLEKS                       R6 R6 K14 ["LayoutController"]
       49 CALL                             R5 1 1
       50 DUPCLOSURE                       R6 K15 [PROTO_4]
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R2
       56 RETURN                           R6 1
