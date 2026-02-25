PROTO_0:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETTABLEKS                       R1 R0 K0 ["Parent"]
        3 JUMPIF                           R1 ; [+2]
        4 LOADB                            R1 0
        5 RETURN                           R1 1
        6 GETTABLEKS                       R1 R0 K0 ["Parent"]
        8 LOADK                            R3 K1 ["ScreenGui"]
        9 NAMECALL                         R1 R1 K2 ["IsA"]
       11 CALL                             R1 2 1
       12 JUMPIFNOT                        R1 ; [+8]
       13 GETTABLEKS                       R2 R0 K0 ["Parent"]
       15 GETTABLEKS                       R1 R2 K3 ["Enabled"]
       17 JUMPIFNOTEQKB                    R1 TRUE ; [+3]
       19 LOADB                            R1 1
       20 RETURN                           R1 1
       21 GETTABLEKS                       R1 R0 K0 ["Parent"]
       23 LOADK                            R3 K4 ["GuiObject"]
       24 NAMECALL                         R1 R1 K2 ["IsA"]
       26 CALL                             R1 2 1
       27 JUMPIFNOT                        R1 ; [+11]
       28 GETTABLEKS                       R2 R0 K0 ["Parent"]
       30 GETTABLEKS                       R1 R2 K5 ["Visible"]
       32 JUMPIFNOTEQKB                    R1 TRUE ; [+6]
       34 GETUPVAL                         R1 0
       35 GETTABLEKS                       R2 R0 K0 ["Parent"]
       37 CALL                             R1 1 -1
       38 RETURN                           R1 -1
       39 GETTABLEKS                       R1 R0 K0 ["Parent"]
       41 LOADK                            R3 K6 ["Folder"]
       42 NAMECALL                         R1 R1 K2 ["IsA"]
       44 CALL                             R1 2 1
       45 JUMPIFNOT                        R1 ; [+5]
       46 GETUPVAL                         R1 0
       47 GETTABLEKS                       R2 R0 K0 ["Parent"]
       49 CALL                             R1 1 -1
       50 RETURN                           R1 -1
       51 LOADB                            R1 0
       52 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R5 K0 ["GuiObject"]
        1 NAMECALL                         R3 R1 K1 ["IsA"]
        3 CALL                             R3 2 1
        4 JUMPIF                           R3 ; [+2]
        5 LOADB                            R3 0
        6 RETURN                           R3 1
        7 LOADK                            R5 K2 ["Visible"]
        8 NAMECALL                         R3 R1 K3 ["GetStyled"]
       10 CALL                             R3 2 1
       11 JUMPIF                           R3 ; [+2]
       12 LOADB                            R3 0
       13 RETURN                           R3 1
       14 GETUPVAL                         R3 0
       15 MOVE                             R4 R1
       16 CALL                             R3 1 1
       17 JUMPIF                           R3 ; [+2]
       18 LOADB                            R3 0
       19 RETURN                           R3 1
       20 LOADK                            R5 K4 ["BackgroundTransparency"]
       21 NAMECALL                         R3 R1 K3 ["GetStyled"]
       23 CALL                             R3 2 1
       24 LOADN                            R4 1
       25 JUMPIFNOTLE                      R4 R3 ; [+57]
       27 LOADK                            R5 K5 ["ImageLabel"]
       28 NAMECALL                         R3 R1 K1 ["IsA"]
       30 CALL                             R3 2 1
       31 JUMPIF                           R3 ; [+5]
       32 LOADK                            R5 K6 ["ImageButton"]
       33 NAMECALL                         R3 R1 K1 ["IsA"]
       35 CALL                             R3 2 1
       36 JUMPIFNOT                        R3 ; [+17]
       37 LOADB                            R3 0
       38 LOADK                            R6 K7 ["Image"]
       39 NAMECALL                         R4 R1 K3 ["GetStyled"]
       41 CALL                             R4 2 1
       42 JUMPIFEQKS                       R4 K8 [""] ; [+10]
       44 LOADK                            R6 K9 ["ImageTransparency"]
       45 NAMECALL                         R4 R1 K3 ["GetStyled"]
       47 CALL                             R4 2 1
       48 LOADN                            R5 1
       49 JUMPIFLT                         R4 R5 ; [+2]
       51 LOADB                            R3 0 +1
       52 LOADB                            R3 1
       53 RETURN                           R3 1
       54 LOADK                            R5 K10 ["TextLabel"]
       55 NAMECALL                         R3 R1 K1 ["IsA"]
       57 CALL                             R3 2 1
       58 JUMPIF                           R3 ; [+5]
       59 LOADK                            R5 K11 ["TextButton"]
       60 NAMECALL                         R3 R1 K1 ["IsA"]
       62 CALL                             R3 2 1
       63 JUMPIFNOT                        R3 ; [+17]
       64 LOADB                            R3 0
       65 LOADK                            R6 K12 ["Text"]
       66 NAMECALL                         R4 R1 K3 ["GetStyled"]
       68 CALL                             R4 2 1
       69 JUMPIFEQKS                       R4 K8 [""] ; [+10]
       71 LOADK                            R6 K13 ["TextTransparency"]
       72 NAMECALL                         R4 R1 K3 ["GetStyled"]
       74 CALL                             R4 2 1
       75 LOADN                            R5 1
       76 JUMPIFLT                         R4 R5 ; [+2]
       78 LOADB                            R3 0 +1
       79 LOADB                            R3 1
       80 RETURN                           R3 1
       81 LOADB                            R3 0
       82 RETURN                           R3 1
       83 LOADB                            R3 1
       84 RETURN                           R3 1

PROTO_2:
        0 LOADK                            R4 K0 ["GuiObject"]
        1 NAMECALL                         R2 R1 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+16]
        5 LOADK                            R4 K2 ["Visible"]
        6 NAMECALL                         R2 R1 K3 ["GetStyled"]
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+11]
       10 GETUPVAL                         R2 0
       11 MOVE                             R3 R1
       12 CALL                             R2 1 1
       13 JUMPIFNOT                        R2 ; [+7]
       14 LOADK                            R4 K4 ["BackgroundTransparency"]
       15 NAMECALL                         R2 R1 K3 ["GetStyled"]
       17 CALL                             R2 2 1
       18 LOADN                            R3 0
       19 JUMPIFNOTLT                      R3 R2 ; [+3]
       21 LOADB                            R2 1
       22 RETURN                           R2 1
       23 LOADB                            R2 0
       24 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 CAPTURE                          VAL R0
        3 NEWTABLE                         R1 2 0
        5 DUPCLOSURE                       R2 K1 [PROTO_1]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R2 R1 K2 ["isVisible"]
        9 DUPCLOSURE                       R2 K3 [PROTO_2]
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R2 R1 K4 ["canSeeThrough"]
       13 RETURN                           R1 1
