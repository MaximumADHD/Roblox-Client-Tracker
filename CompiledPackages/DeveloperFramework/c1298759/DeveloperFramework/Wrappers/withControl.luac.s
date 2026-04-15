PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isHovering"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["isHovering"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isHovering"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["isHovering"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K3 ["props"]
       11 GETTABLEKS                       R1 R2 K4 ["ComponentProps"]
       13 GETTABLEKS                       R0 R1 K5 ["OnHoverEnd"]
       15 JUMPIFNOT                        R0 ; [+13]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R2 R3 K3 ["props"]
       19 GETTABLEKS                       R1 R2 K4 ["ComponentProps"]
       21 GETTABLEKS                       R0 R1 K5 ["OnHoverEnd"]
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R2 R3 K3 ["props"]
       26 GETTABLEKS                       R1 R2 K4 ["ComponentProps"]
       28 CALL                             R0 1 0
       29 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+62]
        4 GETUPVAL                         R2 1
        5 DUPTABLE                         R4 K1 [{"isPressing"}]
        6 LOADB                            R5 1
        7 SETTABLEKS                       R5 R4 K0 ["isPressing"]
        9 NAMECALL                         R2 R2 K2 ["setState"]
       11 CALL                             R2 2 0
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K3 ["props"]
       15 GETTABLEKS                       R3 R4 K4 ["ComponentProps"]
       17 GETTABLEKS                       R2 R3 K5 ["OnPress"]
       19 JUMPIFNOT                        R2 ; [+15]
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R4 R5 K3 ["props"]
       23 GETTABLEKS                       R3 R4 K4 ["ComponentProps"]
       25 GETTABLEKS                       R2 R3 K5 ["OnPress"]
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R4 R5 K3 ["props"]
       30 GETTABLEKS                       R3 R4 K4 ["ComponentProps"]
       32 MOVE                             R4 R0
       33 MOVE                             R5 R1
       34 CALL                             R2 3 0
       35 GETUPVAL                         R5 1
       36 GETTABLEKS                       R4 R5 K3 ["props"]
       38 GETTABLEKS                       R3 R4 K4 ["ComponentProps"]
       40 GETTABLEKS                       R2 R3 K6 ["OnDoubleClick"]
       42 JUMPIFNOT                        R2 ; [+52]
       43 GETUPVAL                         R3 1
       44 GETTABLEKS                       R2 R3 K7 ["DoubleClickDetector"]
       46 NAMECALL                         R2 R2 K8 ["isDoubleClick"]
       48 CALL                             R2 1 1
       49 JUMPIFNOT                        R2 ; [+45]
       50 GETUPVAL                         R5 1
       51 GETTABLEKS                       R4 R5 K3 ["props"]
       53 GETTABLEKS                       R3 R4 K4 ["ComponentProps"]
       55 GETTABLEKS                       R2 R3 K6 ["OnDoubleClick"]
       57 GETUPVAL                         R5 1
       58 GETTABLEKS                       R4 R5 K3 ["props"]
       60 GETTABLEKS                       R3 R4 K4 ["ComponentProps"]
       62 MOVE                             R4 R0
       63 MOVE                             R5 R1
       64 CALL                             R2 3 0
       65 RETURN                           R0 0
       66 GETTABLEKS                       R2 R1 K9 ["UserInputType"]
       68 GETIMPORT                        R3 K12 [Enum.UserInputType.MouseButton2]
       70 JUMPIFNOTEQ                      R2 R3 ; [+24]
       72 GETUPVAL                         R5 1
       73 GETTABLEKS                       R4 R5 K3 ["props"]
       75 GETTABLEKS                       R3 R4 K4 ["ComponentProps"]
       77 GETTABLEKS                       R2 R3 K13 ["OnSecondaryPress"]
       79 JUMPIFNOT                        R2 ; [+15]
       80 GETUPVAL                         R5 1
       81 GETTABLEKS                       R4 R5 K3 ["props"]
       83 GETTABLEKS                       R3 R4 K4 ["ComponentProps"]
       85 GETTABLEKS                       R2 R3 K13 ["OnSecondaryPress"]
       87 GETUPVAL                         R5 1
       88 GETTABLEKS                       R4 R5 K3 ["props"]
       90 GETTABLEKS                       R3 R4 K4 ["ComponentProps"]
       92 MOVE                             R4 R0
       93 MOVE                             R5 R1
       94 CALL                             R2 3 0
       95 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+31]
        4 GETUPVAL                         R2 1
        5 DUPTABLE                         R4 K1 [{"isPressing"}]
        6 LOADB                            R5 0
        7 SETTABLEKS                       R5 R4 K0 ["isPressing"]
        9 NAMECALL                         R2 R2 K2 ["setState"]
       11 CALL                             R2 2 0
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K3 ["props"]
       15 GETTABLEKS                       R3 R4 K4 ["ComponentProps"]
       17 GETTABLEKS                       R2 R3 K5 ["OnPressEnd"]
       19 JUMPIFNOT                        R2 ; [+15]
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R4 R5 K3 ["props"]
       23 GETTABLEKS                       R3 R4 K4 ["ComponentProps"]
       25 GETTABLEKS                       R2 R3 K5 ["OnPressEnd"]
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R4 R5 K3 ["props"]
       30 GETTABLEKS                       R3 R4 K4 ["ComponentProps"]
       32 MOVE                             R4 R0
       33 MOVE                             R5 R1
       34 CALL                             R2 3 0
       35 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K2 [{"isHovering", "isPressing"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["isHovering"]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["isPressing"]
        7 SETTABLEKS                       R1 R0 K3 ["state"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K4 ["new"]
       12 CALL                             R1 0 1
       13 SETTABLEKS                       R1 R0 K5 ["DoubleClickDetector"]
       15 NEWCLOSURE                       R1 P0
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K6 ["onMouseEnter"]
       19 NEWCLOSURE                       R1 P1
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R1 R0 K7 ["onMouseLeave"]
       23 NEWCLOSURE                       R1 P2
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R1 R0 K8 ["onInputBegan"]
       28 NEWCLOSURE                       R1 P3
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R1 R0 K9 ["onInputEnded"]
       33 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["state"]
        2 GETTABLEKS                       R5 R0 K1 ["props"]
        4 GETTABLEKS                       R4 R5 K2 ["ComponentProps"]
        6 GETTABLEKS                       R5 R4 K3 ["OnHover"]
        8 JUMPIFNOT                        R5 ; [+13]
        9 GETTABLEKS                       R5 R3 K4 ["isHovering"]
       11 JUMPIFNOT                        R5 ; [+10]
       12 GETTABLEKS                       R5 R2 K4 ["isHovering"]
       14 JUMPIF                           R5 ; [+7]
       15 GETTABLEKS                       R5 R4 K3 ["OnHover"]
       17 GETTABLEKS                       R7 R0 K1 ["props"]
       19 GETTABLEKS                       R6 R7 K2 ["ComponentProps"]
       21 CALL                             R5 1 0
       22 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Component"]
        6 GETTABLEKS                       R4 R1 K3 ["ComponentProps"]
        8 GETTABLEKS                       R5 R4 K4 ["StyleModifier"]
       10 JUMPIF                           R5 ; [+29]
       11 GETTABLEKS                       R6 R4 K5 ["Disabled"]
       13 JUMPIFNOT                        R6 ; [+4]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R5 R6 K5 ["Disabled"]
       17 JUMPIF                           R5 ; [+22]
       18 GETTABLEKS                       R6 R4 K6 ["Selected"]
       20 JUMPIFNOT                        R6 ; [+4]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R5 R6 K6 ["Selected"]
       24 JUMPIF                           R5 ; [+15]
       25 GETTABLEKS                       R6 R2 K7 ["isPressing"]
       27 JUMPIFNOT                        R6 ; [+4]
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R5 R6 K8 ["Pressed"]
       31 JUMPIF                           R5 ; [+8]
       32 GETTABLEKS                       R6 R2 K9 ["isHovering"]
       34 JUMPIFNOT                        R6 ; [+4]
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R5 R6 K10 ["Hover"]
       38 JUMPIF                           R5 ; [+1]
       39 LOADNIL                          R5
       40 GETUPVAL                         R7 1
       41 GETTABLEKS                       R6 R7 K11 ["createElement"]
       43 MOVE                             R7 R3
       44 GETUPVAL                         R8 2
       45 MOVE                             R9 R4
       46 DUPTABLE                         R10 K13 [{"StyleModifier", "WrapperProps"}]
       47 SETTABLEKS                       R5 R10 K4 ["StyleModifier"]
       49 NEWTABLE                         R11 4 0
       51 GETUPVAL                         R14 1
       52 GETTABLEKS                       R13 R14 K14 ["Event"]
       54 GETTABLEKS                       R12 R13 K15 ["MouseEnter"]
       56 GETTABLEKS                       R13 R0 K16 ["onMouseEnter"]
       58 SETTABLE                         R13 R11 R12
       59 GETUPVAL                         R14 1
       60 GETTABLEKS                       R13 R14 K14 ["Event"]
       62 GETTABLEKS                       R12 R13 K17 ["MouseLeave"]
       64 GETTABLEKS                       R13 R0 K18 ["onMouseLeave"]
       66 SETTABLE                         R13 R11 R12
       67 GETUPVAL                         R14 1
       68 GETTABLEKS                       R13 R14 K14 ["Event"]
       70 GETTABLEKS                       R12 R13 K19 ["InputBegan"]
       72 GETTABLEKS                       R13 R0 K20 ["onInputBegan"]
       74 SETTABLE                         R13 R11 R12
       75 GETUPVAL                         R14 1
       76 GETTABLEKS                       R13 R14 K14 ["Event"]
       78 GETTABLEKS                       R12 R13 K21 ["InputEnded"]
       80 GETTABLEKS                       R13 R0 K22 ["onInputEnded"]
       82 SETTABLE                         R13 R11 R12
       83 SETTABLEKS                       R11 R10 K12 ["WrapperProps"]
       85 CALL                             R8 2 -1
       86 CALL                             R6 -1 -1
       87 RETURN                           R6 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"Component", "ComponentProps"}]
        5 GETUPVAL                         R4 2
        6 SETTABLEKS                       R4 R3 K1 ["Component"]
        8 SETTABLEKS                       R0 R3 K2 ["ComponentProps"]
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1

PROTO_8:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K2 ["Parent"]
       11 GETTABLEKS                       R2 R3 K5 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETIMPORT                        R6 K1 [script]
       23 GETTABLEKS                       R5 R6 K2 ["Parent"]
       25 GETTABLEKS                       R4 R5 K7 ["wrapperShouldUpdate"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Util"]
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R5 R4 K9 ["isInputMainPress"]
       35 GETIMPORT                        R6 K4 [require]
       37 GETTABLEKS                       R8 R0 K8 ["Util"]
       39 GETTABLEKS                       R7 R8 K10 ["StyleModifier"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R7 R4 K11 ["DoubleClickDetector"]
       44 GETIMPORT                        R8 K4 [require]
       46 GETTABLEKS                       R10 R0 K2 ["Parent"]
       48 GETTABLEKS                       R9 R10 K12 ["Dash"]
       50 CALL                             R8 1 1
       51 GETTABLEKS                       R9 R8 K13 ["joinDeep"]
       53 GETTABLEKS                       R10 R1 K14 ["Component"]
       55 LOADK                            R12 K15 ["Controllable"]
       56 NAMECALL                         R10 R10 K16 ["extend"]
       58 CALL                             R10 2 1
       59 SETTABLEKS                       R3 R10 K17 ["shouldUpdate"]
       61 DUPCLOSURE                       R11 K18 [PROTO_4]
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R5
       64 SETTABLEKS                       R11 R10 K19 ["init"]
       66 DUPCLOSURE                       R11 K20 [PROTO_5]
       67 SETTABLEKS                       R11 R10 K21 ["didUpdate"]
       69 DUPCLOSURE                       R11 K22 [PROTO_6]
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R9
       73 SETTABLEKS                       R11 R10 K23 ["render"]
       75 DUPCLOSURE                       R11 K24 [PROTO_8]
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R10
       78 RETURN                           R11 1
