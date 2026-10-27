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
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K4 ["props"]
        8 GETTABLEKS                       R0 R0 K5 ["ComponentProps"]
       10 GETTABLEKS                       R0 R0 K6 ["OnHoverEnd"]
       12 JUMPIFNOT                        R0 ; [+13]
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K4 ["props"]
       16 GETTABLEKS                       R0 R0 K5 ["ComponentProps"]
       18 GETTABLEKS                       R0 R0 K6 ["OnHoverEnd"]
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K4 ["props"]
       23 GETTABLEKS                       R1 R1 K5 ["ComponentProps"]
       25 CALL                             R0 1 0
       26 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+59]
        4 GETUPVAL                         R2 1
        5 DUPTABLE                         R4 K2 [{[1] = True}]
        6 NAMECALL                         R2 R2 K3 ["setState"]
        8 CALL                             R2 2 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K4 ["props"]
       12 GETTABLEKS                       R2 R2 K5 ["ComponentProps"]
       14 GETTABLEKS                       R2 R2 K6 ["OnPress"]
       16 JUMPIFNOT                        R2 ; [+15]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K4 ["props"]
       20 GETTABLEKS                       R2 R2 K5 ["ComponentProps"]
       22 GETTABLEKS                       R2 R2 K6 ["OnPress"]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K4 ["props"]
       27 GETTABLEKS                       R3 R3 K5 ["ComponentProps"]
       29 MOVE                             R4 R0
       30 MOVE                             R5 R1
       31 CALL                             R2 3 0
       32 GETUPVAL                         R2 1
       33 GETTABLEKS                       R2 R2 K4 ["props"]
       35 GETTABLEKS                       R2 R2 K5 ["ComponentProps"]
       37 GETTABLEKS                       R2 R2 K7 ["OnDoubleClick"]
       39 JUMPIFNOT                        R2 ; [+52]
       40 GETUPVAL                         R2 1
       41 GETTABLEKS                       R2 R2 K8 ["DoubleClickDetector"]
       43 NAMECALL                         R2 R2 K9 ["isDoubleClick"]
       45 CALL                             R2 1 1
       46 JUMPIFNOT                        R2 ; [+45]
       47 GETUPVAL                         R2 1
       48 GETTABLEKS                       R2 R2 K4 ["props"]
       50 GETTABLEKS                       R2 R2 K5 ["ComponentProps"]
       52 GETTABLEKS                       R2 R2 K7 ["OnDoubleClick"]
       54 GETUPVAL                         R3 1
       55 GETTABLEKS                       R3 R3 K4 ["props"]
       57 GETTABLEKS                       R3 R3 K5 ["ComponentProps"]
       59 MOVE                             R4 R0
       60 MOVE                             R5 R1
       61 CALL                             R2 3 0
       62 RETURN                           R0 0
       63 GETTABLEKS                       R2 R1 K10 ["UserInputType"]
       65 GETIMPORT                        R3 K13 [Enum.UserInputType.MouseButton2]
       67 JUMPIFNOTEQ                      R2 R3 ; [+24]
       69 GETUPVAL                         R2 1
       70 GETTABLEKS                       R2 R2 K4 ["props"]
       72 GETTABLEKS                       R2 R2 K5 ["ComponentProps"]
       74 GETTABLEKS                       R2 R2 K14 ["OnSecondaryPress"]
       76 JUMPIFNOT                        R2 ; [+15]
       77 GETUPVAL                         R2 1
       78 GETTABLEKS                       R2 R2 K4 ["props"]
       80 GETTABLEKS                       R2 R2 K5 ["ComponentProps"]
       82 GETTABLEKS                       R2 R2 K14 ["OnSecondaryPress"]
       84 GETUPVAL                         R3 1
       85 GETTABLEKS                       R3 R3 K4 ["props"]
       87 GETTABLEKS                       R3 R3 K5 ["ComponentProps"]
       89 MOVE                             R4 R0
       90 MOVE                             R5 R1
       91 CALL                             R2 3 0
       92 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+28]
        4 GETUPVAL                         R2 1
        5 DUPTABLE                         R4 K2 [{[1] = False}]
        6 NAMECALL                         R2 R2 K3 ["setState"]
        8 CALL                             R2 2 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K4 ["props"]
       12 GETTABLEKS                       R2 R2 K5 ["ComponentProps"]
       14 GETTABLEKS                       R2 R2 K6 ["OnPressEnd"]
       16 JUMPIFNOT                        R2 ; [+15]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K4 ["props"]
       20 GETTABLEKS                       R2 R2 K5 ["ComponentProps"]
       22 GETTABLEKS                       R2 R2 K6 ["OnPressEnd"]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K4 ["props"]
       27 GETTABLEKS                       R3 R3 K5 ["ComponentProps"]
       29 MOVE                             R4 R0
       30 MOVE                             R5 R1
       31 CALL                             R2 3 0
       32 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K3 [{[1] = False, ["isPressing"] = False}]
        1 SETTABLEKS                       R1 R0 K4 ["state"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K5 ["new"]
        6 CALL                             R1 0 1
        7 SETTABLEKS                       R1 R0 K6 ["DoubleClickDetector"]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K7 ["onMouseEnter"]
       13 NEWCLOSURE                       R1 P1
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R1 R0 K8 ["onMouseLeave"]
       17 NEWCLOSURE                       R1 P2
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R1 R0 K9 ["onInputBegan"]
       22 NEWCLOSURE                       R1 P3
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R1 R0 K10 ["onInputEnded"]
       27 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["state"]
        2 GETTABLEKS                       R4 R0 K1 ["props"]
        4 GETTABLEKS                       R4 R4 K2 ["ComponentProps"]
        6 GETTABLEKS                       R5 R4 K3 ["OnHover"]
        8 JUMPIFNOT                        R5 ; [+13]
        9 GETTABLEKS                       R5 R3 K4 ["isHovering"]
       11 JUMPIFNOT                        R5 ; [+10]
       12 GETTABLEKS                       R5 R2 K4 ["isHovering"]
       14 JUMPIF                           R5 ; [+7]
       15 GETTABLEKS                       R5 R4 K3 ["OnHover"]
       17 GETTABLEKS                       R6 R0 K1 ["props"]
       19 GETTABLEKS                       R6 R6 K2 ["ComponentProps"]
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
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K5 ["Disabled"]
       17 JUMPIF                           R5 ; [+22]
       18 GETTABLEKS                       R6 R4 K6 ["Selected"]
       20 JUMPIFNOT                        R6 ; [+4]
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K6 ["Selected"]
       24 JUMPIF                           R5 ; [+15]
       25 GETTABLEKS                       R6 R2 K7 ["isPressing"]
       27 JUMPIFNOT                        R6 ; [+4]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K8 ["Pressed"]
       31 JUMPIF                           R5 ; [+8]
       32 GETTABLEKS                       R6 R2 K9 ["isHovering"]
       34 JUMPIFNOT                        R6 ; [+4]
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K10 ["Hover"]
       38 JUMPIF                           R5 ; [+1]
       39 LOADNIL                          R5
       40 GETUPVAL                         R6 1
       41 GETTABLEKS                       R6 R6 K11 ["createElement"]
       43 MOVE                             R7 R3
       44 GETUPVAL                         R8 2
       45 MOVE                             R9 R4
       46 DUPTABLE                         R10 K13 [{"StyleModifier", "WrapperProps"}]
       47 SETTABLEKS                       R5 R10 K4 ["StyleModifier"]
       49 NEWTABLE                         R11 4 0
       51 GETUPVAL                         R12 1
       52 GETTABLEKS                       R12 R12 K14 ["Event"]
       54 GETTABLEKS                       R12 R12 K15 ["MouseEnter"]
       56 GETTABLEKS                       R13 R0 K16 ["onMouseEnter"]
       58 SETTABLE                         R13 R11 R12
       59 GETUPVAL                         R12 1
       60 GETTABLEKS                       R12 R12 K14 ["Event"]
       62 GETTABLEKS                       R12 R12 K17 ["MouseLeave"]
       64 GETTABLEKS                       R13 R0 K18 ["onMouseLeave"]
       66 SETTABLE                         R13 R11 R12
       67 GETUPVAL                         R12 1
       68 GETTABLEKS                       R12 R12 K14 ["Event"]
       70 GETTABLEKS                       R12 R12 K19 ["InputBegan"]
       72 GETTABLEKS                       R13 R0 K20 ["onInputBegan"]
       74 SETTABLE                         R13 R11 R12
       75 GETUPVAL                         R12 1
       76 GETTABLEKS                       R12 R12 K14 ["Event"]
       78 GETTABLEKS                       R12 R12 K21 ["InputEnded"]
       80 GETTABLEKS                       R13 R0 K22 ["onInputEnded"]
       82 SETTABLE                         R13 R11 R12
       83 SETTABLEKS                       R11 R10 K12 ["WrapperProps"]
       85 CALL                             R8 2 -1
       86 CALL                             R6 -1 -1
       87 RETURN                           R6 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K2 ["Parent"]
       11 GETTABLEKS                       R2 R2 K5 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETIMPORT                        R4 K1 [script]
       23 GETTABLEKS                       R4 R4 K2 ["Parent"]
       25 GETTABLEKS                       R4 R4 K7 ["wrapperShouldUpdate"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Util"]
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R5 R4 K9 ["isInputMainPress"]
       35 GETIMPORT                        R6 K4 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Util"]
       39 GETTABLEKS                       R7 R7 K10 ["StyleModifier"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R7 R4 K11 ["DoubleClickDetector"]
       44 GETIMPORT                        R8 K4 [require]
       46 GETTABLEKS                       R9 R0 K2 ["Parent"]
       48 GETTABLEKS                       R9 R9 K12 ["Dash"]
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
