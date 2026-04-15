PROTO_0:
        0 DUPTABLE                         R1 K1 [{"Hovering"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["Hovering"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R4 K1 [{"Hovering"}]
        1 SETTABLEKS                       R1 R4 K0 ["Hovering"]
        3 NAMECALL                         R2 R0 K2 ["setState"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["OnClick"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 1
        2 NAMECALL                         R0 R0 K0 ["mouseHoverChanged"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 NAMECALL                         R0 R0 K0 ["mouseHoverChanged"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Theme"]
        4 GETTABLEKS                       R3 R2 K2 ["RoundArrowButton"]
        6 GETTABLEKS                       R4 R1 K3 ["Visible"]
        8 GETTABLEKS                       R6 R1 K5 ["Flipped"]
       10 ORK                              R5 R6 K4 [False]
       11 GETTABLEKS                       R6 R1 K6 ["Position"]
       13 JUMPIF                           R6 ; [+3]
       14 GETIMPORT                        R6 K9 [UDim2.new]
       16 CALL                             R6 0 1
       17 GETTABLEKS                       R7 R1 K10 ["AnchorPoint"]
       19 JUMPIF                           R7 ; [+3]
       20 GETIMPORT                        R7 K12 [Vector2.new]
       22 CALL                             R7 0 1
       23 GETTABLEKS                       R8 R1 K13 ["Disabled"]
       25 GETTABLEKS                       R10 R0 K14 ["state"]
       27 GETTABLEKS                       R9 R10 K15 ["Hovering"]
       29 JUMPIFNOT                        R8 ; [+2]
       30 LOADK                            R10 K16 ["Forbidden"]
       31 JUMP                             ; [+1]
       32 LOADK                            R10 K17 ["PointingHand"]
       33 GETTABLEKS                       R11 R1 K18 ["Mouse"]
       35 GETUPVAL                         R13 0
       36 GETTABLEKS                       R12 R13 K19 ["createElement"]
       38 LOADK                            R13 K20 ["ImageButton"]
       39 NEWTABLE                         R14 16 0
       41 SETTABLEKS                       R4 R14 K3 ["Visible"]
       43 SETTABLEKS                       R6 R14 K6 ["Position"]
       45 SETTABLEKS                       R7 R14 K10 ["AnchorPoint"]
       47 GETTABLEKS                       R15 R3 K21 ["ButtonSize"]
       49 SETTABLEKS                       R15 R14 K22 ["Size"]
       51 LOADN                            R15 1
       52 SETTABLEKS                       R15 R14 K23 ["BackgroundTransparency"]
       54 JUMPIFNOT                        R9 ; [+3]
       55 JUMPIF                           R8 ; [+2]
       56 LOADN                            R15 0
       57 JUMP                             ; [+1]
       58 LOADK                            R15 K24 [0.3]
       59 SETTABLEKS                       R15 R14 K25 ["ImageTransparency"]
       61 GETTABLEKS                       R15 R3 K26 ["ButtonImage"]
       63 SETTABLEKS                       R15 R14 K27 ["Image"]
       65 JUMPIFNOT                        R5 ; [+2]
       66 LOADN                            R15 180
       67 JUMP                             ; [+1]
       68 LOADN                            R15 0
       69 SETTABLEKS                       R15 R14 K28 ["Rotation"]
       71 GETUPVAL                         R17 0
       72 GETTABLEKS                       R16 R17 K29 ["Event"]
       74 GETTABLEKS                       R15 R16 K30 ["Activated"]
       76 NEWCLOSURE                       R16 P0
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R1
       79 SETTABLE                         R16 R14 R15
       80 DUPTABLE                         R15 K32 [{"Hover"}]
       81 GETUPVAL                         R17 0
       82 GETTABLEKS                       R16 R17 K19 ["createElement"]
       84 GETUPVAL                         R17 1
       85 DUPTABLE                         R18 K36 [{"Cursor", "Mouse", "MouseEnter", "MouseLeave"}]
       86 LOADK                            R20 K37 ["rbxasset://SystemCursors/"]
       87 MOVE                             R21 R10
       88 CONCAT                           R19 R20 R21
       89 SETTABLEKS                       R19 R18 K33 ["Cursor"]
       91 SETTABLEKS                       R11 R18 K18 ["Mouse"]
       93 NEWCLOSURE                       R19 P1
       94 CAPTURE                          VAL R0
       95 SETTABLEKS                       R19 R18 K34 ["MouseEnter"]
       97 NEWCLOSURE                       R19 P2
       98 CAPTURE                          VAL R0
       99 SETTABLEKS                       R19 R18 K35 ["MouseLeave"]
      101 CALL                             R16 2 1
      102 SETTABLEKS                       R16 R15 K31 ["Hover"]
      104 CALL                             R12 3 -1
      105 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K8 ["ContextServices"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["withContext"]
       23 GETTABLEKS                       R5 R0 K2 ["UI"]
       25 GETTABLEKS                       R4 R5 K10 ["Components"]
       27 GETIMPORT                        R5 K6 [require]
       29 GETTABLEKS                       R6 R4 K11 ["HoverArea"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R1 K12 ["PureComponent"]
       34 LOADK                            R8 K13 ["RoundArrowButton"]
       35 NAMECALL                         R6 R6 K14 ["extend"]
       37 CALL                             R6 2 1
       38 DUPCLOSURE                       R7 K15 [PROTO_0]
       39 SETTABLEKS                       R7 R6 K16 ["init"]
       41 DUPCLOSURE                       R7 K17 [PROTO_1]
       42 SETTABLEKS                       R7 R6 K18 ["mouseHoverChanged"]
       44 DUPCLOSURE                       R7 K19 [PROTO_5]
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R5
       47 SETTABLEKS                       R7 R6 K20 ["render"]
       49 MOVE                             R7 R3
       50 DUPTABLE                         R8 K22 [{"Mouse"}]
       51 GETTABLEKS                       R9 R2 K21 ["Mouse"]
       53 SETTABLEKS                       R9 R8 K21 ["Mouse"]
       55 CALL                             R7 1 1
       56 MOVE                             R8 R6
       57 CALL                             R7 1 1
       58 MOVE                             R6 R7
       59 RETURN                           R6 1
