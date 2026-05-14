PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Mouse"]
        5 JUMPIFNOT                        R0 ; [+17]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K1 ["Mouse"]
       11 LOADK                            R2 K2 ["PointingHand"]
       12 NAMECALL                         R0 R0 K3 ["__pushCursor"]
       14 CALL                             R0 2 0
       15 GETUPVAL                         R0 0
       16 DUPTABLE                         R2 K5 [{"hovered"}]
       17 LOADB                            R3 1
       18 SETTABLEKS                       R3 R2 K4 ["hovered"]
       20 NAMECALL                         R0 R0 K6 ["setState"]
       22 CALL                             R0 2 0
       23 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Mouse"]
        5 JUMPIFNOT                        R0 ; [+16]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K1 ["Mouse"]
       11 NAMECALL                         R0 R0 K2 ["__popCursor"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 0
       15 DUPTABLE                         R2 K4 [{"hovered"}]
       16 LOADB                            R3 0
       17 SETTABLEKS                       R3 R2 K3 ["hovered"]
       19 NAMECALL                         R0 R0 K5 ["setState"]
       21 CALL                             R0 2 0
       22 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnActivated"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K1 ["OnActivated"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K1 [{"hovered"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["hovered"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["mouseEnter"]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K4 ["mouseLeave"]
       14 NEWCLOSURE                       R1 P2
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K5 ["onActivated"]
       18 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Mouse"]
        4 NAMECALL                         R1 R1 K2 ["__resetCursor"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R0 K2 ["state"]
        6 GETTABLEKS                       R4 R2 K3 ["trackTheme"]
        8 GETTABLEKS                       R5 R1 K4 ["AnchorPoint"]
       10 GETTABLEKS                       R6 R1 K5 ["Position"]
       12 GETTABLEKS                       R7 R1 K6 ["ZIndex"]
       14 GETTABLEKS                       R8 R1 K7 ["TrackSelected"]
       16 GETTABLEKS                       R9 R3 K8 ["hovered"]
       18 LOADNIL                          R10
       19 JUMPIFNOT                        R8 ; [+3]
       20 GETTABLEKS                       R10 R4 K9 ["selectedTextColor"]
       22 JUMP                             ; [+6]
       23 JUMPIFNOT                        R9 ; [+3]
       24 GETTABLEKS                       R10 R4 K10 ["hoveredButtonColor"]
       26 JUMP                             ; [+2]
       27 GETTABLEKS                       R10 R4 K11 ["buttonColor"]
       29 GETUPVAL                         R11 0
       30 GETTABLEKS                       R11 R11 K12 ["createElement"]
       32 LOADK                            R12 K13 ["ImageButton"]
       33 NEWTABLE                         R13 16 0
       35 GETIMPORT                        R14 K16 [UDim2.new]
       37 LOADN                            R15 0
       38 GETUPVAL                         R16 1
       39 GETTABLEKS                       R16 R16 K17 ["TRACKLIST_BUTTON_SIZE"]
       41 LOADN                            R17 0
       42 GETUPVAL                         R18 1
       43 GETTABLEKS                       R18 R18 K17 ["TRACKLIST_BUTTON_SIZE"]
       45 CALL                             R14 4 1
       46 SETTABLEKS                       R14 R13 K18 ["Size"]
       48 SETTABLEKS                       R5 R13 K4 ["AnchorPoint"]
       50 SETTABLEKS                       R6 R13 K5 ["Position"]
       52 LOADN                            R14 1
       53 SETTABLEKS                       R14 R13 K19 ["BackgroundTransparency"]
       55 SETTABLEKS                       R7 R13 K6 ["ZIndex"]
       57 GETTABLEKS                       R14 R4 K20 ["contextMenu"]
       59 SETTABLEKS                       R14 R13 K21 ["Image"]
       61 SETTABLEKS                       R10 R13 K22 ["ImageColor3"]
       63 GETIMPORT                        R14 K26 [Enum.ScaleType.Fit]
       65 SETTABLEKS                       R14 R13 K24 ["ScaleType"]
       67 GETUPVAL                         R14 0
       68 GETTABLEKS                       R14 R14 K27 ["Event"]
       70 GETTABLEKS                       R14 R14 K28 ["Activated"]
       72 GETTABLEKS                       R15 R0 K29 ["onActivated"]
       74 SETTABLE                         R15 R13 R14
       75 GETUPVAL                         R14 0
       76 GETTABLEKS                       R14 R14 K27 ["Event"]
       78 GETTABLEKS                       R14 R14 K30 ["MouseEnter"]
       80 GETTABLEKS                       R15 R0 K31 ["mouseEnter"]
       82 SETTABLE                         R15 R13 R14
       83 GETUPVAL                         R14 0
       84 GETTABLEKS                       R14 R14 K27 ["Event"]
       86 GETTABLEKS                       R14 R14 K32 ["MouseLeave"]
       88 GETTABLEKS                       R15 R0 K33 ["mouseLeave"]
       90 SETTABLE                         R15 R13 R14
       91 CALL                             R11 2 -1
       92 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K12 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K13 ["withContext"]
       34 GETTABLEKS                       R6 R1 K14 ["PureComponent"]
       36 LOADK                            R8 K15 ["ContextButton"]
       37 NAMECALL                         R6 R6 K16 ["extend"]
       39 CALL                             R6 2 1
       40 DUPCLOSURE                       R7 K17 [PROTO_3]
       41 SETTABLEKS                       R7 R6 K18 ["init"]
       43 DUPCLOSURE                       R7 K19 [PROTO_4]
       44 SETTABLEKS                       R7 R6 K20 ["willUnmount"]
       46 DUPCLOSURE                       R7 K21 [PROTO_5]
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R2
       49 SETTABLEKS                       R7 R6 K22 ["render"]
       51 MOVE                             R7 R5
       52 DUPTABLE                         R8 K25 [{"Stylizer", "Mouse"}]
       53 GETTABLEKS                       R9 R4 K23 ["Stylizer"]
       55 SETTABLEKS                       R9 R8 K23 ["Stylizer"]
       57 GETTABLEKS                       R9 R4 K24 ["Mouse"]
       59 SETTABLEKS                       R9 R8 K24 ["Mouse"]
       61 CALL                             R7 1 1
       62 MOVE                             R8 R6
       63 CALL                             R7 1 1
       64 MOVE                             R6 R7
       65 RETURN                           R6 1
