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
       23 MOVE                             R4 R2
       24 JUMPIFNOT                        R4 ; [+6]
       25 GETUPVAL                         R4 3
       26 MOVE                             R5 R0
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R6 R6 K0 ["current"]
       30 CALL                             R4 2 1
       31 CALL                             R3 1 0
       32 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["useState"]
       11 LOADB                            R4 0
       12 CALL                             R3 1 2
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R5 R5 K2 ["useCallback"]
       16 NEWCLOSURE                       R6 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R4
       19 CAPTURE                          VAL R2
       20 CAPTURE                          UPVAL U3
       21 NEWTABLE                         R7 0 1
       23 GETTABLEKS                       R8 R0 K3 ["current"]
       25 SETLIST                          R7 R8 1 [1]
       27 CALL                             R5 2 1
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R6 R6 K4 ["useEffect"]
       31 NEWCLOSURE                       R7 P1
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R2
       35 CAPTURE                          UPVAL U4
       36 NEWTABLE                         R8 0 1
       38 MOVE                             R9 R5
       39 SETLIST                          R8 R9 1 [1]
       41 CALL                             R6 2 0
       42 RETURN                           R3 1

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
