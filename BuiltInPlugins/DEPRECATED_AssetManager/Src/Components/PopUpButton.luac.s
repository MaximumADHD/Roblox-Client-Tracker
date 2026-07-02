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
        0 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Position"]
        6 GETTABLEKS                       R4 R1 K3 ["ShowIcon"]
        8 GETTABLEKS                       R5 R1 K4 ["Image"]
       10 GETTABLEKS                       R6 R1 K5 ["OnClick"]
       12 GETTABLEKS                       R8 R1 K6 ["OnRightClick"]
       14 JUMPIFNOT                        R8 ; [+3]
       15 GETTABLEKS                       R7 R1 K6 ["OnRightClick"]
       17 JUMPIF                           R7 ; [+1]
       18 DUPCLOSURE                       R7 K7 [PROTO_3]
       19 GETTABLEKS                       R8 R2 K8 ["hovering"]
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R9 R9 K9 ["createElement"]
       24 LOADK                            R10 K10 ["ImageButton"]
       25 NEWTABLE                         R11 16 0
       27 SETTABLEKS                       R3 R11 K2 ["Position"]
       29 GETIMPORT                        R12 K13 [Vector2.new]
       31 LOADK                            R13 K14 [0.5]
       32 LOADK                            R14 K14 [0.5]
       33 CALL                             R12 2 1
       34 SETTABLEKS                       R12 R11 K15 ["AnchorPoint"]
       36 JUMPIFNOT                        R8 ; [+2]
       37 GETUPVAL                         R12 1
       38 JUMPIF                           R12 ; [+1]
       39 GETUPVAL                         R12 2
       40 SETTABLEKS                       R12 R11 K16 ["Size"]
       42 SETTABLEKS                       R5 R11 K4 ["Image"]
       44 JUMPIFNOT                        R4 ; [+2]
       45 LOADN                            R12 0
       46 JUMP                             ; [+1]
       47 LOADN                            R12 1
       48 SETTABLEKS                       R12 R11 K17 ["ImageTransparency"]
       50 LOADN                            R12 1
       51 SETTABLEKS                       R12 R11 K18 ["BackgroundTransparency"]
       53 GETUPVAL                         R12 0
       54 GETTABLEKS                       R12 R12 K19 ["Event"]
       56 GETTABLEKS                       R12 R12 K20 ["Activated"]
       58 SETTABLE                         R6 R11 R12
       59 GETUPVAL                         R12 0
       60 GETTABLEKS                       R12 R12 K19 ["Event"]
       62 GETTABLEKS                       R12 R12 K21 ["MouseButton2Click"]
       64 SETTABLE                         R7 R11 R12
       65 GETUPVAL                         R12 0
       66 GETTABLEKS                       R12 R12 K19 ["Event"]
       68 GETTABLEKS                       R12 R12 K22 ["MouseEnter"]
       70 GETTABLEKS                       R13 R0 K23 ["mouseEnter"]
       72 SETTABLE                         R13 R11 R12
       73 GETUPVAL                         R12 0
       74 GETTABLEKS                       R12 R12 K19 ["Event"]
       76 GETTABLEKS                       R12 R12 K24 ["MouseLeave"]
       78 GETTABLEKS                       R13 R0 K25 ["mouseLeave"]
       80 SETTABLE                         R13 R11 R12
       81 DUPTABLE                         R12 K27 [{"Hover"}]
       82 GETUPVAL                         R13 0
       83 GETTABLEKS                       R13 R13 K9 ["createElement"]
       85 GETUPVAL                         R14 3
       86 DUPTABLE                         R15 K30 [{["Cursor"] = "PointingHand"}]
       87 CALL                             R13 2 1
       88 SETTABLEKS                       R13 R12 K26 ["Hover"]
       90 CALL                             R9 3 -1
       91 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["UI"]
       25 GETTABLEKS                       R4 R3 K9 ["HoverArea"]
       27 GETTABLEKS                       R5 R1 K10 ["PureComponent"]
       29 LOADK                            R7 K11 ["PopUpButton"]
       30 NAMECALL                         R5 R5 K12 ["extend"]
       32 CALL                             R5 2 1
       33 GETIMPORT                        R6 K15 [UDim2.new]
       35 LOADN                            R7 0
       36 LOADN                            R8 32
       37 LOADN                            R9 0
       38 LOADN                            R10 32
       39 CALL                             R6 4 1
       40 GETIMPORT                        R7 K15 [UDim2.new]
       42 LOADN                            R8 0
       43 LOADN                            R9 28
       44 LOADN                            R10 0
       45 LOADN                            R11 28
       46 CALL                             R7 4 1
       47 DUPCLOSURE                       R8 K16 [PROTO_2]
       48 SETTABLEKS                       R8 R5 K17 ["init"]
       50 DUPCLOSURE                       R8 K18 [PROTO_4]
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R4
       55 SETTABLEKS                       R8 R5 K19 ["render"]
       57 RETURN                           R5 1
