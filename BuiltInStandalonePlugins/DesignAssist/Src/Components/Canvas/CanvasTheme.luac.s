PROTO_0:
        0 GETIMPORT                        R1 K2 [Enum.StudioStyleGuideColor]
        2 GETUPVAL                         R2 0
        3 GETTABLE                         R0 R1 R2
        4 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 GETTABLEKS                       R0 R0 K3 ["Theme"]
        7 GETUPVAL                         R2 0
        8 NAMECALL                         R0 R0 K4 ["GetColor"]
       10 CALL                             R0 2 -1
       11 RETURN                           R0 -1

PROTO_2:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETIMPORT                        R7 K1 [pcall]
        6 NEWCLOSURE                       R8 P0
        7 CAPTURE                          VAL R6
        8 CALL                             R7 1 2
        9 JUMPIFNOT                        R7 ; [+9]
       10 JUMPIFNOT                        R8 ; [+8]
       11 GETIMPORT                        R9 K1 [pcall]
       13 NEWCLOSURE                       R10 P1
       14 CAPTURE                          VAL R8
       15 CALL                             R9 1 2
       16 JUMPIFNOT                        R9 ; [+2]
       17 JUMPIFNOT                        R10 ; [+1]
       18 RETURN                           R10 1
       19 FORGLOOP                         R2 2 ; [-16]
       21 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 GETTABLEKS                       R0 R0 K3 ["Theme"]
        7 GETTABLEKS                       R0 R0 K4 ["Name"]
        9 RETURN                           R0 1

PROTO_4:
        0 JUMPIFNOT                        R0 ; [+8]
        1 GETTABLEKS                       R1 R0 K0 ["Enums"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETTABLEKS                       R1 R0 K0 ["Enums"]
        6 GETTABLEKS                       R1 R1 K1 ["Theme"]
        8 JUMPIF                           R1 ; [+2]
        9 LOADNIL                          R1
       10 RETURN                           R1 1
       11 GETIMPORT                        R1 K3 [pcall]
       13 DUPCLOSURE                       R2 K4 [PROTO_3]
       14 CALL                             R1 1 2
       15 JUMPIFNOT                        R1 ; [+18]
       16 JUMPIFNOTEQKS                    R2 K5 ["Light"] ; [+8]
       18 GETTABLEKS                       R3 R0 K0 ["Enums"]
       20 GETTABLEKS                       R3 R3 K1 ["Theme"]
       22 GETTABLEKS                       R3 R3 K5 ["Light"]
       24 RETURN                           R3 1
       25 JUMPIFNOTEQKS                    R2 K6 ["Dark"] ; [+8]
       27 GETTABLEKS                       R3 R0 K0 ["Enums"]
       29 GETTABLEKS                       R3 R3 K1 ["Theme"]
       31 GETTABLEKS                       R3 R3 K6 ["Dark"]
       33 RETURN                           R3 1
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R3 R3 K7 ["studioColorByNames"]
       37 NEWTABLE                         R4 0 1
       39 LOADK                            R5 K8 ["MainBackground"]
       40 SETLIST                          R4 R5 1 [1]
       42 GETIMPORT                        R5 K11 [Color3.fromRGB]
       44 LOADN                            R6 36
       45 LOADN                            R7 37
       46 LOADN                            R8 39
       47 CALL                             R5 3 -1
       48 CALL                             R3 -1 1
       49 GETTABLEKS                       R7 R3 K13 ["R"]
       51 GETTABLEKS                       R8 R3 K14 ["G"]
       53 ADD                              R6 R7 R8
       54 GETTABLEKS                       R7 R3 K15 ["B"]
       56 ADD                              R5 R6 R7
       57 DIVK                             R4 R5 K12 [3]
       58 LOADK                            R6 K16 [0.5]
       59 JUMPIFNOTLT                      R6 R4 ; [+8]
       61 GETTABLEKS                       R5 R0 K0 ["Enums"]
       63 GETTABLEKS                       R5 R5 K1 ["Theme"]
       65 GETTABLEKS                       R5 R5 K5 ["Light"]
       67 RETURN                           R5 1
       68 GETTABLEKS                       R5 R0 K0 ["Enums"]
       70 GETTABLEKS                       R5 R5 K1 ["Theme"]
       72 GETTABLEKS                       R5 R5 K6 ["Dark"]
       74 RETURN                           R5 1

PROTO_5:
        0 JUMPIFNOT                        R0 ; [+8]
        1 GETTABLEKS                       R2 R0 K0 ["Enums"]
        3 JUMPIFNOT                        R2 ; [+5]
        4 GETTABLEKS                       R2 R0 K0 ["Enums"]
        6 GETTABLEKS                       R2 R2 K1 ["Theme"]
        8 JUMPIF                           R2 ; [+2]
        9 LOADNIL                          R2
       10 RETURN                           R2 1
       11 JUMPIFNOTEQKS                    R1 K2 ["light"] ; [+8]
       13 GETTABLEKS                       R2 R0 K0 ["Enums"]
       15 GETTABLEKS                       R2 R2 K1 ["Theme"]
       17 GETTABLEKS                       R2 R2 K3 ["Light"]
       19 RETURN                           R2 1
       20 GETTABLEKS                       R2 R0 K0 ["Enums"]
       22 GETTABLEKS                       R2 R2 K1 ["Theme"]
       24 GETTABLEKS                       R2 R2 K4 ["Dark"]
       26 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getStudioFoundationTheme"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R0 ; [+18]
        6 GETTABLEKS                       R2 R0 K1 ["Enums"]
        8 JUMPIFNOT                        R2 ; [+15]
        9 GETTABLEKS                       R2 R0 K1 ["Enums"]
       11 GETTABLEKS                       R2 R2 K2 ["Theme"]
       13 JUMPIFNOT                        R2 ; [+10]
       14 GETTABLEKS                       R2 R0 K1 ["Enums"]
       16 GETTABLEKS                       R2 R2 K2 ["Theme"]
       18 GETTABLEKS                       R2 R2 K3 ["Light"]
       20 JUMPIFNOTEQ                      R1 R2 ; [+3]
       22 LOADK                            R2 K4 ["light"]
       23 RETURN                           R2 1
       24 LOADK                            R2 K5 ["dark"]
       25 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPCLOSURE                       R1 K0 [PROTO_2]
        4 SETTABLEKS                       R1 R0 K1 ["studioColorByNames"]
        6 DUPCLOSURE                       R1 K2 [PROTO_4]
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["getStudioFoundationTheme"]
       10 DUPCLOSURE                       R1 K4 [PROTO_5]
       11 SETTABLEKS                       R1 R0 K5 ["foundationThemeFromOverride"]
       13 DUPCLOSURE                       R1 K6 [PROTO_6]
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R1 R0 K7 ["initialCanvasOverride"]
       17 RETURN                           R0 1
