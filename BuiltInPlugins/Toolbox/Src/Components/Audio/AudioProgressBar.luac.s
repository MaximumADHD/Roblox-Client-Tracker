PROTO_0:
        0 LOADN                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["progress"]
        3 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R4 0
        1 GETTABLEKS                       R5 R1 K0 ["currentSoundId"]
        3 GETTABLEKS                       R6 R1 K1 ["assetId"]
        5 JUMPIFEQ                         R5 R6 ; [+7]
        7 GETTABLEKS                       R5 R0 K2 ["progress"]
        9 JUMPIFEQKN                       R5 K3 [0] ; [+2]
       11 LOADB                            R4 0 +1
       12 LOADB                            R4 1
       13 NOT                              R3 R4
       14 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["AnchorPoint"]
        4 GETTABLEKS                       R3 R1 K2 ["assetId"]
        6 GETTABLEKS                       R4 R1 K3 ["currentSoundId"]
        8 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
       10 GETTABLEKS                       R6 R1 K5 ["elapsedTime"]
       12 GETTABLEKS                       R7 R1 K6 ["Position"]
       14 GETTABLEKS                       R8 R1 K7 ["Size"]
       16 GETTABLEKS                       R9 R1 K8 ["totalTime"]
       18 GETTABLEKS                       R10 R1 K9 ["Stylizer"]
       20 GETTABLEKS                       R10 R10 K10 ["progressBarColor"]
       22 LOADN                            R11 0
       23 SETTABLEKS                       R11 R0 K11 ["progress"]
       25 JUMPIFEQKNIL                     R9 ; [+8]
       27 JUMPIFEQKN                       R9 K12 [0] ; [+6]
       29 JUMPIFNOTEQ                      R4 R3 ; [+4]
       31 DIV                              R11 R6 R9
       32 SETTABLEKS                       R11 R0 K11 ["progress"]
       34 GETUPVAL                         R11 0
       35 GETTABLEKS                       R11 R11 K13 ["createElement"]
       37 LOADK                            R12 K14 ["Frame"]
       38 DUPTABLE                         R13 K16 [{"AnchorPoint", "BackgroundTransparency", "LayoutOrder", "Position", "Size"}]
       39 SETTABLEKS                       R2 R13 K1 ["AnchorPoint"]
       41 LOADN                            R14 1
       42 SETTABLEKS                       R14 R13 K15 ["BackgroundTransparency"]
       44 SETTABLEKS                       R5 R13 K4 ["LayoutOrder"]
       46 SETTABLEKS                       R7 R13 K6 ["Position"]
       48 SETTABLEKS                       R8 R13 K7 ["Size"]
       50 DUPTABLE                         R14 K18 [{"ProgressBar"}]
       51 GETUPVAL                         R15 0
       52 GETTABLEKS                       R15 R15 K13 ["createElement"]
       54 LOADK                            R16 K14 ["Frame"]
       55 DUPTABLE                         R17 K21 [{"AnchorPoint", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Position", "Size"}]
       56 GETIMPORT                        R18 K24 [Vector2.new]
       58 LOADN                            R19 0
       59 LOADK                            R20 K25 [0.5]
       60 CALL                             R18 2 1
       61 SETTABLEKS                       R18 R17 K1 ["AnchorPoint"]
       63 SETTABLEKS                       R10 R17 K19 ["BackgroundColor3"]
       65 LOADN                            R18 0
       66 SETTABLEKS                       R18 R17 K15 ["BackgroundTransparency"]
       68 LOADN                            R18 0
       69 SETTABLEKS                       R18 R17 K20 ["BorderSizePixel"]
       71 GETIMPORT                        R18 K27 [UDim2.new]
       73 LOADN                            R19 0
       74 LOADN                            R20 0
       75 LOADK                            R21 K25 [0.5]
       76 LOADN                            R22 0
       77 CALL                             R18 4 1
       78 SETTABLEKS                       R18 R17 K6 ["Position"]
       80 GETIMPORT                        R18 K27 [UDim2.new]
       82 GETTABLEKS                       R19 R0 K11 ["progress"]
       84 LOADN                            R20 0
       85 LOADN                            R21 1
       86 LOADN                            R22 0
       87 CALL                             R18 4 1
       88 SETTABLEKS                       R18 R17 K7 ["Size"]
       90 CALL                             R15 2 1
       91 SETTABLEKS                       R15 R14 K17 ["ProgressBar"]
       93 CALL                             R11 3 -1
       94 RETURN                           R11 -1

PROTO_3:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETTABLEKS                       R2 R0 K0 ["sound"]
        7 JUMPIF                           R2 ; [+2]
        8 NEWTABLE                         R2 0 0
       10 DUPTABLE                         R3 K3 [{"elapsedTime", "totalTime"}]
       11 GETTABLEKS                       R5 R2 K1 ["elapsedTime"]
       13 ORK                              R4 R5 K4 [0]
       14 SETTABLEKS                       R4 R3 K1 ["elapsedTime"]
       16 GETTABLEKS                       R5 R2 K2 ["totalTime"]
       18 ORK                              R4 R5 K4 [0]
       19 SETTABLEKS                       R4 R3 K2 ["totalTime"]
       21 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["RoactRodux"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R1 K8 ["Framework"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R5 R4 K9 ["ContextServices"]
       30 GETTABLEKS                       R6 R5 K10 ["withContext"]
       32 GETTABLEKS                       R7 R0 K11 ["Src"]
       34 GETTABLEKS                       R7 R7 K12 ["Util"]
       36 GETTABLEKS                       R8 R2 K13 ["Component"]
       38 LOADK                            R10 K14 ["AudioProgressBar"]
       39 NAMECALL                         R8 R8 K15 ["extend"]
       41 CALL                             R8 2 1
       42 DUPCLOSURE                       R9 K16 [PROTO_0]
       43 SETTABLEKS                       R9 R8 K17 ["init"]
       45 DUPCLOSURE                       R9 K18 [PROTO_1]
       46 SETTABLEKS                       R9 R8 K19 ["shouldUpdate"]
       48 DUPCLOSURE                       R9 K20 [PROTO_2]
       49 CAPTURE                          VAL R2
       50 SETTABLEKS                       R9 R8 K21 ["render"]
       52 DUPCLOSURE                       R9 K22 [PROTO_3]
       53 MOVE                             R10 R6
       54 DUPTABLE                         R11 K24 [{"Stylizer"}]
       55 GETTABLEKS                       R12 R5 K23 ["Stylizer"]
       57 SETTABLEKS                       R12 R11 K23 ["Stylizer"]
       59 CALL                             R10 1 1
       60 MOVE                             R11 R8
       61 CALL                             R10 1 1
       62 MOVE                             R8 R10
       63 GETTABLEKS                       R10 R3 K25 ["connect"]
       65 MOVE                             R11 R9
       66 LOADNIL                          R12
       67 CALL                             R10 2 1
       68 MOVE                             R11 R8
       69 CALL                             R10 1 -1
       70 RETURN                           R10 -1
