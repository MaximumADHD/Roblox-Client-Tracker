PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Enabled"]
        5 JUMPIFNOT                        R0 ; [+9]
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K2 ["onEnter"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["props"]
       12 GETTABLEKS                       R1 R1 K3 ["Mouse"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Enabled"]
        5 JUMPIFNOT                        R0 ; [+9]
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K2 ["onLeave"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["props"]
       12 GETTABLEKS                       R1 R1 K3 ["Mouse"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["IsOn"]
        5 JUMPIFNOT                        R0 ; [+7]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K2 ["OnClickedOff"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K0 ["props"]
       16 GETTABLEKS                       R0 R0 K3 ["OnClickedOn"]
       18 CALL                             R0 0 0
       19 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 LOADK                            R1 K1 ["ImageButton"]
        4 NEWTABLE                         R2 8 0
        6 LOADN                            R3 1
        7 SETTABLEKS                       R3 R2 K2 ["BackgroundTransparency"]
        9 GETUPVAL                         R3 1
       10 GETUPVAL                         R4 2
       11 CALL                             R3 1 1
       12 SETTABLEKS                       R3 R2 K3 ["Image"]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K4 ["props"]
       17 GETTABLEKS                       R3 R3 K5 ["Position"]
       19 SETTABLEKS                       R3 R2 K5 ["Position"]
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K4 ["props"]
       24 GETTABLEKS                       R3 R3 K6 ["Size"]
       26 JUMPIF                           R3 ; [+7]
       27 GETIMPORT                        R3 K9 [UDim2.new]
       29 LOADN                            R4 0
       30 LOADN                            R5 40
       31 LOADN                            R6 0
       32 LOADN                            R7 24
       33 CALL                             R3 4 1
       34 SETTABLEKS                       R3 R2 K6 ["Size"]
       36 GETUPVAL                         R4 2
       37 GETTABLEKS                       R4 R4 K4 ["props"]
       39 GETTABLEKS                       R4 R4 K11 ["LayoutOrder"]
       41 ORK                              R3 R4 K10 [1]
       42 SETTABLEKS                       R3 R2 K11 ["LayoutOrder"]
       44 GETUPVAL                         R3 0
       45 GETTABLEKS                       R3 R3 K12 ["Event"]
       47 GETTABLEKS                       R3 R3 K13 ["MouseEnter"]
       49 NEWCLOSURE                       R4 P0
       50 CAPTURE                          UPVAL U2
       51 CAPTURE                          UPVAL U3
       52 SETTABLE                         R4 R2 R3
       53 GETUPVAL                         R3 0
       54 GETTABLEKS                       R3 R3 K12 ["Event"]
       56 GETTABLEKS                       R3 R3 K14 ["MouseLeave"]
       58 NEWCLOSURE                       R4 P1
       59 CAPTURE                          UPVAL U2
       60 CAPTURE                          UPVAL U3
       61 SETTABLE                         R4 R2 R3
       62 GETUPVAL                         R3 0
       63 GETTABLEKS                       R3 R3 K12 ["Event"]
       65 GETTABLEKS                       R3 R3 K15 ["MouseButton1Click"]
       67 NEWCLOSURE                       R4 P2
       68 CAPTURE                          UPVAL U2
       69 SETTABLE                         R4 R2 R3
       70 CALL                             R0 2 -1
       71 RETURN                           R0 -1

PROTO_4:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["createElement"]
        8 GETUPVAL                         R3 3
        9 DUPTABLE                         R4 K2 [{"render"}]
       10 SETTABLEKS                       R1 R4 K1 ["render"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["DarkStyle"]
        3 JUMPIFEQKNIL                     R0 ; [+5]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["DarkStyle"]
        8 RETURN                           R0 1
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K1 ["isDarkerTheme"]
       12 CALL                             R0 0 -1
       13 RETURN                           R0 -1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["DarkStyle"]
        2 JUMPIFEQKNIL                     R2 ; [+4]
        4 GETTABLEKS                       R1 R0 K0 ["DarkStyle"]
        6 JUMP                             ; [+4]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["isDarkerTheme"]
       10 CALL                             R1 0 1
       11 GETTABLEKS                       R2 R0 K2 ["props"]
       13 GETTABLEKS                       R2 R2 K3 ["Enabled"]
       15 JUMPIFNOT                        R2 ; [+15]
       16 GETTABLEKS                       R2 R0 K2 ["props"]
       18 GETTABLEKS                       R2 R2 K4 ["IsOn"]
       20 JUMPIFNOT                        R2 ; [+5]
       21 JUMPIFNOT                        R1 ; [+2]
       22 LOADK                            R2 K5 ["rbxasset://textures/RoactStudioWidgets/toggle_on_dark.png"]
       23 RETURN                           R2 1
       24 LOADK                            R2 K6 ["rbxasset://textures/RoactStudioWidgets/toggle_on_light.png"]
       25 RETURN                           R2 1
       26 JUMPIFNOT                        R1 ; [+2]
       27 LOADK                            R2 K7 ["rbxasset://textures/RoactStudioWidgets/toggle_off_dark.png"]
       28 RETURN                           R2 1
       29 LOADK                            R2 K8 ["rbxasset://textures/RoactStudioWidgets/toggle_off_light.png"]
       30 RETURN                           R2 1
       31 JUMPIFNOT                        R1 ; [+2]
       32 LOADK                            R2 K9 ["rbxasset://textures/RoactStudioWidgets/toggle_disable_dark.png"]
       33 RETURN                           R2 1
       34 LOADK                            R2 K10 ["rbxasset://textures/RoactStudioWidgets/toggle_disable_light.png"]
       35 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Internal"]
        9 GETTABLEKS                       R1 R1 K6 ["RequireRoact"]
       11 CALL                             R0 1 1
       12 GETIMPORT                        R1 K1 [require]
       14 GETIMPORT                        R2 K3 [script]
       16 GETTABLEKS                       R2 R2 K4 ["Parent"]
       18 GETTABLEKS                       R2 R2 K5 ["Internal"]
       20 GETTABLEKS                       R2 R2 K7 ["Mouse"]
       22 CALL                             R1 1 1
       23 GETIMPORT                        R2 K1 [require]
       25 GETIMPORT                        R3 K3 [script]
       27 GETTABLEKS                       R3 R3 K4 ["Parent"]
       29 GETTABLEKS                       R3 R3 K5 ["Internal"]
       31 GETTABLEKS                       R3 R3 K8 ["ThemeChangeListener"]
       33 CALL                             R2 1 1
       34 GETIMPORT                        R3 K1 [require]
       36 GETIMPORT                        R4 K3 [script]
       38 GETTABLEKS                       R4 R4 K4 ["Parent"]
       40 GETTABLEKS                       R4 R4 K5 ["Internal"]
       42 GETTABLEKS                       R4 R4 K9 ["Theme"]
       44 CALL                             R3 1 1
       45 LOADNIL                          R4
       46 GETTABLEKS                       R5 R0 K10 ["PureComponent"]
       48 LOADK                            R7 K11 ["ToggleButton"]
       49 NAMECALL                         R5 R5 K12 ["extend"]
       51 CALL                             R5 2 1
       52 NEWCLOSURE                       R6 P0
       53 CAPTURE                          VAL R0
       54 CAPTURE                          REF R4
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R2
       57 SETTABLEKS                       R6 R5 K13 ["render"]
       59 DUPCLOSURE                       R4 K14 [PROTO_6]
       60 CAPTURE                          VAL R3
       61 CLOSEUPVALS                      R4
       62 RETURN                           R5 1
