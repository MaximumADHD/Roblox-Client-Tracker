PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["navigation"]
        2 GETTABLEKS                       R2 R3 K1 ["state"]
        4 GETTABLEKS                       R5 R2 K2 ["routes"]
        6 GETTABLEKS                       R6 R2 K3 ["index"]
        8 GETTABLE                         R4 R5 R6
        9 GETTABLEKS                       R3 R4 K4 ["key"]
       11 GETTABLEKS                       R4 R0 K5 ["descriptors"]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K6 ["assign"]
       16 GETIMPORT                        R6 K9 [table.clone]
       18 GETUPVAL                         R7 1
       19 CALL                             R6 1 1
       20 GETTABLEKS                       R7 R0 K10 ["navigationConfig"]
       22 JUMPIF                           R7 ; [+2]
       23 NEWTABLE                         R7 0 0
       25 CALL                             R5 2 1
       26 GETTABLEKS                       R6 R5 K11 ["keepVisitedScreensMounted"]
       28 NEWTABLE                         R7 1 0
       30 LOADB                            R8 1
       31 SETTABLE                         R8 R7 R3
       32 JUMPIFNOT                        R6 ; [+15]
       33 GETTABLEKS                       R8 R1 K12 ["visitedScreenKeys"]
       35 JUMPIFNOT                        R8 ; [+12]
       36 GETTABLEKS                       R8 R1 K12 ["visitedScreenKeys"]
       38 LOADNIL                          R9
       39 LOADNIL                          R10
       40 FORGPREP                         R8
       41 GETTABLE                         R13 R4 R11
       42 JUMPIFEQKNIL                     R13 ; [+3]
       44 LOADB                            R13 1
       45 SETTABLE                         R13 R7 R11
       46 FORGLOOP                         R8 1 ; [-6]
       48 DUPTABLE                         R8 K13 [{"visitedScreenKeys"}]
       49 SETTABLEKS                       R7 R8 K12 ["visitedScreenKeys"]
       51 RETURN                           R8 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["state"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["navigation"]
        4 GETTABLEKS                       R1 R2 K2 ["state"]
        6 GETTABLEKS                       R3 R0 K0 ["props"]
        8 GETTABLEKS                       R2 R3 K3 ["screenProps"]
       10 GETTABLEKS                       R4 R0 K0 ["props"]
       12 GETTABLEKS                       R3 R4 K4 ["descriptors"]
       14 GETTABLEKS                       R5 R0 K2 ["state"]
       16 GETTABLEKS                       R4 R5 K5 ["visitedScreenKeys"]
       18 GETTABLEKS                       R7 R1 K6 ["routes"]
       20 GETTABLEKS                       R8 R1 K7 ["index"]
       22 GETTABLE                         R6 R7 R8
       23 GETTABLEKS                       R5 R6 K8 ["key"]
       25 NEWTABLE                         R6 0 0
       27 MOVE                             R7 R3
       28 LOADNIL                          R8
       29 LOADNIL                          R9
       30 FORGPREP                         R7
       31 JUMPIFEQ                         R10 R5 ; [+2]
       33 LOADB                            R12 0 +1
       34 LOADB                            R12 1
       35 GETTABLE                         R13 R4 R10
       36 JUMPIFNOTEQKB                    R13 TRUE ; [+51]
       38 LOADK                            R14 K9 ["card_"]
       39 MOVE                             R15 R10
       40 CONCAT                           R13 R14 R15
       41 GETUPVAL                         R15 0
       42 GETTABLEKS                       R14 R15 K10 ["createElement"]
       44 LOADK                            R15 K11 ["Frame"]
       45 DUPTABLE                         R16 K17 [{"Size", "BackgroundTransparency", "ClipsDescendants", "BorderSizePixel", "Visible"}]
       46 GETIMPORT                        R17 K20 [UDim2.new]
       48 LOADN                            R18 1
       49 LOADN                            R19 0
       50 LOADN                            R20 1
       51 LOADN                            R21 0
       52 CALL                             R17 4 1
       53 SETTABLEKS                       R17 R16 K12 ["Size"]
       55 LOADN                            R17 1
       56 SETTABLEKS                       R17 R16 K13 ["BackgroundTransparency"]
       58 LOADB                            R17 0
       59 SETTABLEKS                       R17 R16 K14 ["ClipsDescendants"]
       61 LOADN                            R17 0
       62 SETTABLEKS                       R17 R16 K15 ["BorderSizePixel"]
       64 SETTABLEKS                       R12 R16 K16 ["Visible"]
       66 DUPTABLE                         R17 K22 [{"Content"}]
       67 GETUPVAL                         R19 0
       68 GETTABLEKS                       R18 R19 K10 ["createElement"]
       70 GETUPVAL                         R19 1
       71 DUPTABLE                         R20 K24 [{"component", "navigation", "screenProps"}]
       72 GETTABLEKS                       R21 R11 K25 ["getComponent"]
       74 CALL                             R21 0 1
       75 SETTABLEKS                       R21 R20 K23 ["component"]
       77 GETTABLEKS                       R21 R11 K1 ["navigation"]
       79 SETTABLEKS                       R21 R20 K1 ["navigation"]
       81 SETTABLEKS                       R2 R20 K3 ["screenProps"]
       83 CALL                             R18 2 1
       84 SETTABLEKS                       R18 R17 K21 ["Content"]
       86 CALL                             R14 3 1
       87 SETTABLE                         R14 R6 R13
       88 FORGLOOP                         R7 2 ; [-58]
       90 GETUPVAL                         R8 0
       91 GETTABLEKS                       R7 R8 K10 ["createElement"]
       93 LOADK                            R8 K26 ["Folder"]
       94 LOADNIL                          R9
       95 MOVE                             R10 R6
       96 CALL                             R7 3 -1
       97 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETTABLEKS                       R2 R1 K2 ["Parent"]
        9 GETIMPORT                        R3 K4 [require]
       11 GETTABLEKS                       R4 R2 K5 ["LuauPolyfill"]
       13 CALL                             R3 1 1
       14 GETTABLEKS                       R4 R3 K6 ["Object"]
       16 GETIMPORT                        R5 K4 [require]
       18 GETTABLEKS                       R6 R2 K7 ["Roact"]
       20 CALL                             R5 1 1
       21 GETIMPORT                        R6 K4 [require]
       23 GETTABLEKS                       R7 R0 K8 ["SceneView"]
       25 CALL                             R6 1 1
       26 DUPTABLE                         R7 K10 [{"keepVisitedScreensMounted"}]
       27 LOADB                            R8 0
       28 SETTABLEKS                       R8 R7 K9 ["keepVisitedScreensMounted"]
       30 GETTABLEKS                       R8 R5 K11 ["Component"]
       32 LOADK                            R10 K12 ["RobloxSwitchView"]
       33 NAMECALL                         R8 R8 K13 ["extend"]
       35 CALL                             R8 2 1
       36 DUPCLOSURE                       R9 K14 [PROTO_0]
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R7
       39 SETTABLEKS                       R9 R8 K15 ["getDerivedStateFromProps"]
       41 DUPCLOSURE                       R9 K16 [PROTO_1]
       42 SETTABLEKS                       R9 R8 K17 ["init"]
       44 DUPCLOSURE                       R9 K18 [PROTO_2]
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R6
       47 SETTABLEKS                       R9 R8 K19 ["render"]
       49 RETURN                           R8 1
