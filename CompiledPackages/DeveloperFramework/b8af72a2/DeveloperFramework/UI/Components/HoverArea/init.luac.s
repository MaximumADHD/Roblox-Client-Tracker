PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Mouse"]
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R4 2
        7 NAMECALL                         R1 R1 K2 ["__pushCursor"]
        9 CALL                             R1 3 0
       10 GETTABLEKS                       R1 R0 K3 ["MouseEnter"]
       12 JUMPIFNOT                        R1 ; [+3]
       13 GETTABLEKS                       R1 R0 K3 ["MouseEnter"]
       15 CALL                             R1 0 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Mouse"]
        5 GETUPVAL                         R3 1
        6 NAMECALL                         R1 R1 K2 ["__popCursor"]
        8 CALL                             R1 2 0
        9 GETTABLEKS                       R1 R0 K3 ["MouseLeave"]
       11 JUMPIFNOT                        R1 ; [+3]
       12 GETTABLEKS                       R1 R0 K3 ["MouseLeave"]
       14 CALL                             R1 0 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["Priority"]
        2 GETTABLEKS                       R3 R1 K1 ["Cursor"]
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R3
        7 CAPTURE                          VAL R2
        8 SETTABLEKS                       R4 R0 K2 ["mouseEnter"]
       10 NEWCLOSURE                       R4 P1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R2
       13 SETTABLEKS                       R4 R0 K3 ["mouseLeave"]
       15 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Mouse"]
        4 NAMECALL                         R2 R2 K2 ["__resetCursor"]
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["AutomaticSize"]
        4 GETTABLEKS                       R3 R1 K2 ["Size"]
        6 JUMPIF                           R3 ; [+5]
        7 GETIMPORT                        R3 K5 [UDim2.fromScale]
        9 LOADN                            R4 1
       10 LOADN                            R5 1
       11 CALL                             R3 2 1
       12 GETTABLEKS                       R4 R1 K2 ["Size"]
       14 JUMPIF                           R4 ; [+32]
       15 GETIMPORT                        R4 K8 [Enum.AutomaticSize.X]
       17 JUMPIFNOTEQ                      R2 R4 ; [+8]
       19 GETIMPORT                        R4 K5 [UDim2.fromScale]
       21 LOADN                            R5 0
       22 LOADN                            R6 1
       23 CALL                             R4 2 1
       24 MOVE                             R3 R4
       25 JUMP                             ; [+21]
       26 GETIMPORT                        R4 K10 [Enum.AutomaticSize.Y]
       28 JUMPIFNOTEQ                      R2 R4 ; [+8]
       30 GETIMPORT                        R4 K5 [UDim2.fromScale]
       32 LOADN                            R5 1
       33 LOADN                            R6 0
       34 CALL                             R4 2 1
       35 MOVE                             R3 R4
       36 JUMP                             ; [+10]
       37 GETIMPORT                        R4 K12 [Enum.AutomaticSize.XY]
       39 JUMPIFNOTEQ                      R2 R4 ; [+7]
       41 GETIMPORT                        R4 K5 [UDim2.fromScale]
       43 LOADN                            R5 0
       44 LOADN                            R6 0
       45 CALL                             R4 2 1
       46 MOVE                             R3 R4
       47 GETTABLEKS                       R4 R1 K13 ["Position"]
       49 GETUPVAL                         R6 0
       50 GETTABLEKS                       R6 R6 K14 ["Children"]
       52 GETTABLE                         R5 R1 R6
       53 GETUPVAL                         R6 0
       54 GETTABLEKS                       R6 R6 K15 ["createElement"]
       56 LOADK                            R7 K16 ["Frame"]
       57 NEWTABLE                         R8 8 0
       59 GETTABLEKS                       R9 R1 K17 ["AnchorPoint"]
       61 SETTABLEKS                       R9 R8 K17 ["AnchorPoint"]
       63 SETTABLEKS                       R2 R8 K1 ["AutomaticSize"]
       65 LOADN                            R9 1
       66 SETTABLEKS                       R9 R8 K18 ["BackgroundTransparency"]
       68 GETTABLEKS                       R9 R1 K19 ["LayoutOrder"]
       70 SETTABLEKS                       R9 R8 K19 ["LayoutOrder"]
       72 SETTABLEKS                       R4 R8 K13 ["Position"]
       74 SETTABLEKS                       R3 R8 K2 ["Size"]
       76 GETUPVAL                         R9 0
       77 GETTABLEKS                       R9 R9 K20 ["Event"]
       79 GETTABLEKS                       R9 R9 K21 ["MouseEnter"]
       81 GETTABLEKS                       R10 R0 K22 ["mouseEnter"]
       83 SETTABLE                         R10 R8 R9
       84 GETUPVAL                         R9 0
       85 GETTABLEKS                       R9 R9 K20 ["Event"]
       87 GETTABLEKS                       R9 R9 K23 ["MouseLeave"]
       89 GETTABLEKS                       R10 R0 K24 ["mouseLeave"]
       91 SETTABLE                         R10 R8 R9
       92 MOVE                             R9 R5
       93 CALL                             R6 3 -1
       94 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Util"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R4 R4 K11 ["Typecheck"]
       32 GETTABLEKS                       R5 R1 K12 ["PureComponent"]
       34 LOADK                            R7 K13 ["HoverArea"]
       35 NAMECALL                         R5 R5 K14 ["extend"]
       37 CALL                             R5 2 1
       38 GETTABLEKS                       R6 R4 K15 ["wrap"]
       40 MOVE                             R7 R5
       41 GETIMPORT                        R8 K1 [script]
       43 CALL                             R6 2 0
       44 DUPCLOSURE                       R6 K16 [PROTO_2]
       45 SETTABLEKS                       R6 R5 K17 ["init"]
       47 DUPCLOSURE                       R6 K18 [PROTO_3]
       48 SETTABLEKS                       R6 R5 K19 ["willUnmount"]
       50 DUPCLOSURE                       R6 K20 [PROTO_4]
       51 CAPTURE                          VAL R1
       52 SETTABLEKS                       R6 R5 K21 ["render"]
       54 MOVE                             R6 R3
       55 DUPTABLE                         R7 K23 [{"Mouse"}]
       56 GETTABLEKS                       R8 R2 K22 ["Mouse"]
       58 SETTABLEKS                       R8 R7 K22 ["Mouse"]
       60 CALL                             R6 1 1
       61 MOVE                             R7 R5
       62 CALL                             R6 1 1
       63 MOVE                             R5 R6
       64 RETURN                           R5 1
