PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R2 K2 [{[1] = False}]
        1 SETTABLEKS                       R2 R0 K3 ["state"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R2 R0 K4 ["mouseEnter"]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R2 R0 K5 ["mouseLeave"]
       11 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["position"]
        6 GETTABLEKS                       R4 R1 K3 ["ShowIcon"]
        8 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
       10 GETTABLEKS                       R6 R1 K5 ["HoverSize"]
       12 JUMPIF                           R6 ; [+1]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R7 R1 K6 ["Size"]
       16 JUMPIF                           R7 ; [+1]
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R8 R2 K7 ["hovering"]
       20 GETUPVAL                         R9 2
       21 GETTABLEKS                       R9 R9 K8 ["createElement"]
       23 LOADK                            R10 K9 ["ImageButton"]
       24 NEWTABLE                         R11 16 0
       26 SETTABLEKS                       R3 R11 K10 ["Position"]
       28 GETIMPORT                        R12 K13 [Vector2.new]
       30 LOADK                            R13 K14 [0.5]
       31 LOADK                            R14 K14 [0.5]
       32 CALL                             R12 2 1
       33 SETTABLEKS                       R12 R11 K15 ["AnchorPoint"]
       35 JUMPIFNOT                        R8 ; [+2]
       36 MOVE                             R12 R6
       37 JUMPIF                           R12 ; [+1]
       38 MOVE                             R12 R7
       39 SETTABLEKS                       R12 R11 K6 ["Size"]
       41 GETUPVAL                         R12 3
       42 GETTABLEKS                       R12 R12 K16 ["MAGNIFIER_PH"]
       44 SETTABLEKS                       R12 R11 K17 ["Image"]
       46 JUMPIFNOT                        R4 ; [+2]
       47 LOADN                            R12 0
       48 JUMP                             ; [+1]
       49 LOADN                            R12 1
       50 SETTABLEKS                       R12 R11 K18 ["ImageTransparency"]
       52 LOADN                            R12 1
       53 SETTABLEKS                       R12 R11 K19 ["BackgroundTransparency"]
       55 SETTABLEKS                       R5 R11 K4 ["LayoutOrder"]
       57 GETUPVAL                         R12 2
       58 GETTABLEKS                       R12 R12 K20 ["Event"]
       60 GETTABLEKS                       R12 R12 K21 ["Activated"]
       62 GETTABLEKS                       R13 R1 K22 ["onClick"]
       64 SETTABLE                         R13 R11 R12
       65 GETUPVAL                         R12 2
       66 GETTABLEKS                       R12 R12 K20 ["Event"]
       68 GETTABLEKS                       R12 R12 K23 ["MouseEnter"]
       70 GETTABLEKS                       R13 R0 K24 ["mouseEnter"]
       72 SETTABLE                         R13 R11 R12
       73 GETUPVAL                         R12 2
       74 GETTABLEKS                       R12 R12 K20 ["Event"]
       76 GETTABLEKS                       R12 R12 K25 ["MouseLeave"]
       78 GETTABLEKS                       R13 R0 K26 ["mouseLeave"]
       80 SETTABLE                         R13 R11 R12
       81 GETTABLEKS                       R12 R1 K27 ["ZIndex"]
       83 SETTABLEKS                       R12 R11 K27 ["ZIndex"]
       85 CALL                             R9 2 -1
       86 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R0 R0 K2 ["Parent"]
       13 GETTABLEKS                       R1 R0 K3 ["Packages"]
       15 GETIMPORT                        R2 K5 [require]
       17 GETTABLEKS                       R3 R1 K6 ["Roact"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R0 K7 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Util"]
       24 GETIMPORT                        R4 K5 [require]
       26 GETTABLEKS                       R5 R3 K9 ["Images"]
       28 CALL                             R4 1 1
       29 GETTABLEKS                       R5 R2 K10 ["PureComponent"]
       31 LOADK                            R7 K11 ["PopUpWrapperButton"]
       32 NAMECALL                         R5 R5 K12 ["extend"]
       34 CALL                             R5 2 1
       35 GETIMPORT                        R6 K15 [UDim2.new]
       37 LOADN                            R7 0
       38 LOADN                            R8 32
       39 LOADN                            R9 0
       40 LOADN                            R10 32
       41 CALL                             R6 4 1
       42 GETIMPORT                        R7 K15 [UDim2.new]
       44 LOADN                            R8 0
       45 LOADN                            R9 28
       46 LOADN                            R10 0
       47 LOADN                            R11 28
       48 CALL                             R7 4 1
       49 DUPCLOSURE                       R8 K16 [PROTO_2]
       50 SETTABLEKS                       R8 R5 K17 ["init"]
       52 DUPCLOSURE                       R8 K18 [PROTO_3]
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R4
       57 SETTABLEKS                       R8 R5 K19 ["render"]
       59 RETURN                           R5 1
