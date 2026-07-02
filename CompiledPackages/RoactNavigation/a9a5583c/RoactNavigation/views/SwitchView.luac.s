PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["navigation"]
        2 GETTABLEKS                       R2 R2 K1 ["state"]
        4 GETTABLEKS                       R4 R2 K2 ["routes"]
        6 GETTABLEKS                       R5 R2 K3 ["index"]
        8 GETTABLE                         R3 R4 R5
        9 GETTABLEKS                       R3 R3 K4 ["key"]
       11 GETTABLEKS                       R4 R0 K5 ["descriptors"]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K6 ["Dictionary"]
       16 GETTABLEKS                       R5 R5 K7 ["join"]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R7 R0 K8 ["navigationConfig"]
       21 JUMPIF                           R7 ; [+2]
       22 NEWTABLE                         R7 0 0
       24 CALL                             R5 2 1
       25 GETTABLEKS                       R6 R5 K9 ["keepVisitedScreensMounted"]
       27 NEWTABLE                         R7 1 0
       29 LOADB                            R8 1
       30 SETTABLE                         R8 R7 R3
       31 JUMPIFNOT                        R6 ; [+16]
       32 GETIMPORT                        R8 K11 [pairs]
       34 GETTABLEKS                       R9 R1 K12 ["visitedScreenKeys"]
       36 JUMPIF                           R9 ; [+2]
       37 NEWTABLE                         R9 0 0
       39 CALL                             R8 1 3
       40 FORGPREP_NEXT                    R8
       41 GETTABLE                         R13 R4 R11
       42 JUMPIFEQKNIL                     R13 ; [+3]
       44 LOADB                            R13 1
       45 SETTABLE                         R13 R7 R11
       46 FORGLOOP                         R8 1 ; [-6]
       48 DUPTABLE                         R8 K13 [{"visitedScreenKeys"}]
       49 SETTABLEKS                       R7 R8 K12 ["visitedScreenKeys"]
       51 RETURN                           R8 1

PROTO_1:
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
       27 GETIMPORT                        R7 K10 [pairs]
       29 MOVE                             R8 R3
       30 CALL                             R7 1 3
       31 FORGPREP_NEXT                    R7
       32 JUMPIFEQ                         R10 R5 ; [+2]
       34 LOADB                            R12 0 +1
       35 LOADB                            R12 1
       36 GETTABLE                         R13 R4 R10
       37 JUMPIFNOTEQKB                    R13 TRUE ; [+42]
       39 LOADK                            R14 K11 ["card_"]
       40 MOVE                             R15 R10
       41 CONCAT                           R13 R14 R15
       42 GETUPVAL                         R14 0
       43 GETTABLEKS                       R14 R14 K12 ["createElement"]
       45 LOADK                            R15 K13 ["Frame"]
       46 DUPTABLE                         R16 K22 [{["Size"], ["BackgroundTransparency"] = 1, ["ClipsDescendants"] = True, ["BorderSizePixel"] = 0, ["Visible"]}]
       47 GETIMPORT                        R17 K25 [UDim2.new]
       49 LOADN                            R18 1
       50 LOADN                            R19 0
       51 LOADN                            R20 1
       52 LOADN                            R21 0
       53 CALL                             R17 4 1
       54 SETTABLEKS                       R17 R16 K14 ["Size"]
       56 SETTABLEKS                       R12 R16 K21 ["Visible"]
       58 DUPTABLE                         R17 K27 [{"Content"}]
       59 GETUPVAL                         R18 0
       60 GETTABLEKS                       R18 R18 K12 ["createElement"]
       62 GETUPVAL                         R19 1
       63 DUPTABLE                         R20 K29 [{"component", "navigation", "screenProps"}]
       64 GETTABLEKS                       R21 R11 K30 ["getComponent"]
       66 CALL                             R21 0 1
       67 SETTABLEKS                       R21 R20 K28 ["component"]
       69 GETTABLEKS                       R21 R11 K1 ["navigation"]
       71 SETTABLEKS                       R21 R20 K1 ["navigation"]
       73 SETTABLEKS                       R2 R20 K3 ["screenProps"]
       75 CALL                             R18 2 1
       76 SETTABLEKS                       R18 R17 K26 ["Content"]
       78 CALL                             R14 3 1
       79 SETTABLE                         R14 R6 R13
       80 FORGLOOP                         R7 2 ; [-49]
       82 GETUPVAL                         R7 0
       83 GETTABLEKS                       R7 R7 K12 ["createElement"]
       85 LOADK                            R8 K31 ["Folder"]
       86 LOADNIL                          R9
       87 MOVE                             R10 R6
       88 CALL                             R7 3 -1
       89 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K4 ["Parent"]
       11 GETTABLEKS                       R1 R1 K5 ["Cryo"]
       13 CALL                             R0 1 1
       14 GETIMPORT                        R1 K1 [require]
       16 GETIMPORT                        R2 K3 [script]
       18 GETTABLEKS                       R2 R2 K4 ["Parent"]
       20 GETTABLEKS                       R2 R2 K4 ["Parent"]
       22 GETTABLEKS                       R2 R2 K4 ["Parent"]
       24 GETTABLEKS                       R2 R2 K6 ["Roact"]
       26 CALL                             R1 1 1
       27 GETIMPORT                        R2 K1 [require]
       29 GETIMPORT                        R3 K3 [script]
       31 GETTABLEKS                       R3 R3 K4 ["Parent"]
       33 GETTABLEKS                       R3 R3 K7 ["SceneView"]
       35 CALL                             R2 1 1
       36 DUPTABLE                         R3 K10 [{["keepVisitedScreensMounted"] = False}]
       37 GETTABLEKS                       R4 R1 K11 ["Component"]
       39 LOADK                            R6 K12 ["SwitchView"]
       40 NAMECALL                         R4 R4 K13 ["extend"]
       42 CALL                             R4 2 1
       43 DUPCLOSURE                       R5 K14 [PROTO_0]
       44 CAPTURE                          VAL R0
       45 CAPTURE                          VAL R3
       46 SETTABLEKS                       R5 R4 K15 ["getDerivedStateFromProps"]
       48 DUPCLOSURE                       R5 K16 [PROTO_1]
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R2
       51 SETTABLEKS                       R5 R4 K17 ["render"]
       53 RETURN                           R4 1
