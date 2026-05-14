PROTO_0:
        0 LOADN                            R0 0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["current"]
        4 LOADNIL                          R2
        5 LOADNIL                          R3
        6 FORGPREP                         R1
        7 GETTABLEKS                       R8 R4 K1 ["AbsoluteSize"]
        9 GETTABLEKS                       R8 R8 K2 ["X"]
       11 FASTCALL2                        MATH_MAX R0 R8 ; [+4]
       13 MOVE                             R7 R0
       14 GETIMPORT                        R6 K5 [math.max]
       16 CALL                             R6 2 1
       17 MOVE                             R0 R6
       18 FORGLOOP                         R1 2 ; [-12]
       20 GETUPVAL                         R1 1
       21 GETIMPORT                        R2 K8 [UDim2.fromOffset]
       23 MOVE                             R3 R0
       24 LOADN                            R4 0
       25 CALL                             R2 2 -1
       26 CALL                             R1 -1 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 MOVE                             R5 R4
        7 LOADNIL                          R6
        8 LOADNIL                          R7
        9 FORGPREP                         R5
       10 NAMECALL                         R10 R9 K1 ["Disconnect"]
       12 CALL                             R10 1 0
       13 FORGLOOP                         R5 2 ; [-4]
       15 FORGLOOP                         R0 2 ; [-10]
       17 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K1 ["current"]
       12 GETUPVAL                         R1 2
       13 LOADNIL                          R2
       14 SETTABLE                         R2 R0 R1
       15 GETUPVAL                         R0 3
       16 GETIMPORT                        R1 K4 [UDim2.new]
       18 CALL                             R1 0 -1
       19 CALL                             R0 -1 0
       20 GETUPVAL                         R0 4
       21 CALL                             R0 0 0
       22 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [UDim2.new]
        3 CALL                             R1 0 -1
        4 CALL                             R0 -1 0
        5 GETUPVAL                         R0 1
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_5:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R0 0
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K0 ["current"]
        6 GETTABLE                         R3 R4 R0
        7 JUMPIFEQKNIL                     R3 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 FASTCALL2K                       ASSERT R2 K1 ; [+4]
       13 LOADK                            R3 K1 ["Ref callback called multiple times for the same GuiObject"]
       14 GETIMPORT                        R1 K3 [assert]
       16 CALL                             R1 2 0
       17 NEWTABLE                         R1 0 0
       19 MOVE                             R3 R1
       20 LOADK                            R6 K4 ["AbsoluteSize"]
       21 NAMECALL                         R4 R0 K5 ["GetPropertyChangedSignal"]
       23 CALL                             R4 2 1
       24 GETUPVAL                         R6 1
       25 NAMECALL                         R4 R4 K6 ["Connect"]
       27 CALL                             R4 2 -1
       28 FASTCALL                         TABLE_INSERT ; [+2]
       29 GETIMPORT                        R2 K9 [table.insert]
       31 CALL                             R2 -1 0
       32 MOVE                             R3 R1
       33 GETTABLEKS                       R4 R0 K10 ["Destroying"]
       35 NEWCLOSURE                       R6 P0
       36 CAPTURE                          VAL R1
       37 CAPTURE                          UPVAL U0
       38 CAPTURE                          VAL R0
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          UPVAL U1
       41 NAMECALL                         R4 R4 K11 ["Once"]
       43 CALL                             R4 2 -1
       44 FASTCALL                         TABLE_INSERT ; [+2]
       45 GETIMPORT                        R2 K9 [table.insert]
       47 CALL                             R2 -1 0
       48 LOADK                            R4 K12 ["TextLabel"]
       49 LOADB                            R5 1
       50 NAMECALL                         R2 R0 K13 ["FindFirstChildWhichIsA"]
       52 CALL                             R2 3 1
       53 FASTCALL2K                       ASSERT R2 K14 ; [+5]
       55 MOVE                             R4 R2
       56 LOADK                            R5 K14 ["Expected button to have a TextLabel descendant"]
       57 GETIMPORT                        R3 K3 [assert]
       59 CALL                             R3 2 0
       60 MOVE                             R4 R1
       61 LOADK                            R7 K15 ["Text"]
       62 NAMECALL                         R5 R2 K5 ["GetPropertyChangedSignal"]
       64 CALL                             R5 2 1
       65 NEWCLOSURE                       R7 P1
       66 CAPTURE                          UPVAL U2
       67 CAPTURE                          UPVAL U1
       68 NAMECALL                         R5 R5 K6 ["Connect"]
       70 CALL                             R5 2 -1
       71 FASTCALL                         TABLE_INSERT ; [+2]
       72 GETIMPORT                        R3 K9 [table.insert]
       74 CALL                             R3 -1 0
       75 GETUPVAL                         R3 0
       76 GETTABLEKS                       R3 R3 K0 ["current"]
       78 SETTABLE                         R1 R3 R0
       79 GETUPVAL                         R3 1
       80 CALL                             R3 0 0
       81 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useBinding"]
        3 GETIMPORT                        R1 K3 [UDim2.new]
        5 CALL                             R1 0 -1
        6 CALL                             R0 -1 2
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K4 ["useRef"]
       10 NEWTABLE                         R3 0 0
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K5 ["useCallback"]
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R1
       19 NEWTABLE                         R5 0 2
       21 MOVE                             R6 R2
       22 MOVE                             R7 R1
       23 SETLIST                          R5 R6 2 [1]
       25 CALL                             R3 2 1
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K6 ["useEffect"]
       29 NEWCLOSURE                       R5 P1
       30 CAPTURE                          VAL R2
       31 NEWTABLE                         R6 0 1
       33 MOVE                             R7 R2
       34 SETLIST                          R6 R7 1 [1]
       36 CALL                             R4 2 0
       37 GETUPVAL                         R4 0
       38 GETTABLEKS                       R4 R4 K5 ["useCallback"]
       40 NEWCLOSURE                       R5 P2
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R1
       44 NEWTABLE                         R6 0 3
       46 MOVE                             R7 R2
       47 MOVE                             R8 R3
       48 MOVE                             R9 R1
       49 SETLIST                          R6 R7 3 [1]
       51 CALL                             R4 2 1
       52 MOVE                             R5 R0
       53 MOVE                             R6 R4
       54 RETURN                           R5 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_6]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
