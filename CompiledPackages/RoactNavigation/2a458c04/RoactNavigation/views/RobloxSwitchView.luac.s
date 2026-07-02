PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["navigation"]
        2 GETTABLEKS                       R2 R2 K1 ["state"]
        4 GETTABLEKS                       R4 R2 K2 ["routes"]
        6 GETTABLEKS                       R5 R2 K3 ["index"]
        8 GETTABLE                         R3 R4 R5
        9 GETTABLEKS                       R3 R3 K4 ["key"]
       11 GETTABLEKS                       R4 R0 K5 ["descriptors"]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K6 ["assign"]
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
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["navigation"]
        4 GETTABLEKS                       R1 R1 K2 ["state"]
        6 GETTABLEKS                       R2 R0 K0 ["props"]
        8 GETTABLEKS                       R2 R2 K3 ["screenProps"]
       10 GETTABLEKS                       R3 R0 K0 ["props"]
       12 GETTABLEKS                       R3 R3 K4 ["descriptors"]
       14 GETTABLEKS                       R4 R0 K2 ["state"]
       16 GETTABLEKS                       R4 R4 K5 ["visitedScreenKeys"]
       18 GETTABLEKS                       R6 R1 K6 ["routes"]
       20 GETTABLEKS                       R7 R1 K7 ["index"]
       22 GETTABLE                         R5 R6 R7
       23 GETTABLEKS                       R5 R5 K8 ["key"]
       25 NEWTABLE                         R6 0 0
       27 MOVE                             R7 R3
       28 LOADNIL                          R8
       29 LOADNIL                          R9
       30 FORGPREP                         R7
       31 JUMPIFEQ                         R10 R5 ; [+2]
       33 LOADB                            R12 0 +1
       34 LOADB                            R12 1
       35 GETTABLE                         R13 R4 R10
       36 JUMPIFNOTEQKB                    R13 TRUE ; [+42]
       38 LOADK                            R14 K9 ["card_"]
       39 MOVE                             R15 R10
       40 CONCAT                           R13 R14 R15
       41 GETUPVAL                         R14 0
       42 GETTABLEKS                       R14 R14 K10 ["createElement"]
       44 LOADK                            R15 K11 ["Frame"]
       45 DUPTABLE                         R16 K20 [{["Size"], ["BackgroundTransparency"] = 1, ["ClipsDescendants"] = False, ["BorderSizePixel"] = 0, ["Visible"]}]
       46 GETIMPORT                        R17 K23 [UDim2.new]
       48 LOADN                            R18 1
       49 LOADN                            R19 0
       50 LOADN                            R20 1
       51 LOADN                            R21 0
       52 CALL                             R17 4 1
       53 SETTABLEKS                       R17 R16 K12 ["Size"]
       55 SETTABLEKS                       R12 R16 K19 ["Visible"]
       57 DUPTABLE                         R17 K25 [{"Content"}]
       58 GETUPVAL                         R18 0
       59 GETTABLEKS                       R18 R18 K10 ["createElement"]
       61 GETUPVAL                         R19 1
       62 DUPTABLE                         R20 K27 [{"component", "navigation", "screenProps"}]
       63 GETTABLEKS                       R21 R11 K28 ["getComponent"]
       65 CALL                             R21 0 1
       66 SETTABLEKS                       R21 R20 K26 ["component"]
       68 GETTABLEKS                       R21 R11 K1 ["navigation"]
       70 SETTABLEKS                       R21 R20 K1 ["navigation"]
       72 SETTABLEKS                       R2 R20 K3 ["screenProps"]
       74 CALL                             R18 2 1
       75 SETTABLEKS                       R18 R17 K24 ["Content"]
       77 CALL                             R14 3 1
       78 SETTABLE                         R14 R6 R13
       79 FORGLOOP                         R7 2 ; [-49]
       81 GETUPVAL                         R7 0
       82 GETTABLEKS                       R7 R7 K10 ["createElement"]
       84 LOADK                            R8 K29 ["Folder"]
       85 LOADNIL                          R9
       86 MOVE                             R10 R6
       87 CALL                             R7 3 -1
       88 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
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
       26 DUPTABLE                         R7 K11 [{["keepVisitedScreensMounted"] = False}]
       27 GETTABLEKS                       R8 R5 K12 ["Component"]
       29 LOADK                            R10 K13 ["RobloxSwitchView"]
       30 NAMECALL                         R8 R8 K14 ["extend"]
       32 CALL                             R8 2 1
       33 DUPCLOSURE                       R9 K15 [PROTO_0]
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R7
       36 SETTABLEKS                       R9 R8 K16 ["getDerivedStateFromProps"]
       38 DUPCLOSURE                       R9 K17 [PROTO_1]
       39 SETTABLEKS                       R9 R8 K18 ["init"]
       41 DUPCLOSURE                       R9 K19 [PROTO_2]
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R6
       44 SETTABLEKS                       R9 R8 K20 ["render"]
       46 RETURN                           R8 1
