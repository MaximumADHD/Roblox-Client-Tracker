PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["SCREENS"]
        3 GETTABLEKS                       R2 R2 K1 ["AVATAR"]
        5 JUMPIFEQ                         R0 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["SCREENS"]
        3 GETTABLEKS                       R2 R2 K1 ["LOADING"]
        5 JUMPIFEQ                         R0 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["SCREENS"]
        3 GETTABLEKS                       R2 R2 K1 ["ERROR"]
        5 JUMPIFEQ                         R0 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["SCREENS"]
        3 GETTABLEKS                       R2 R2 K1 ["REDIRECT_RIG"]
        5 JUMPIFEQ                         R0 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["screen"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["createElement"]
        7 LOADK                            R3 K3 ["Frame"]
        8 DUPTABLE                         R4 K6 [{"BackgroundTransparency", "Size"}]
        9 LOADN                            R5 1
       10 SETTABLEKS                       R5 R4 K4 ["BackgroundTransparency"]
       12 GETIMPORT                        R5 K9 [UDim2.new]
       14 LOADN                            R6 1
       15 LOADN                            R7 0
       16 LOADN                            R8 1
       17 LOADN                            R9 0
       18 CALL                             R5 4 1
       19 SETTABLEKS                       R5 R4 K5 ["Size"]
       21 DUPTABLE                         R5 K14 [{"AvatarPrompt", "LoadingPrompt", "ErrorPrompt", "RedirectRigPrompt"}]
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R7 R7 K15 ["SCREENS"]
       25 GETTABLEKS                       R7 R7 K16 ["AVATAR"]
       27 JUMPIFEQ                         R1 R7 ; [+2]
       29 LOADB                            R6 0 +1
       30 LOADB                            R6 1
       31 JUMPIFNOT                        R6 ; [+5]
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R6 R6 K2 ["createElement"]
       35 GETUPVAL                         R7 2
       36 CALL                             R6 1 1
       37 SETTABLEKS                       R6 R5 K10 ["AvatarPrompt"]
       39 GETUPVAL                         R7 1
       40 GETTABLEKS                       R7 R7 K15 ["SCREENS"]
       42 GETTABLEKS                       R7 R7 K17 ["LOADING"]
       44 JUMPIFEQ                         R1 R7 ; [+2]
       46 LOADB                            R6 0 +1
       47 LOADB                            R6 1
       48 JUMPIFNOT                        R6 ; [+5]
       49 GETUPVAL                         R6 0
       50 GETTABLEKS                       R6 R6 K2 ["createElement"]
       52 GETUPVAL                         R7 3
       53 CALL                             R6 1 1
       54 SETTABLEKS                       R6 R5 K11 ["LoadingPrompt"]
       56 GETUPVAL                         R7 1
       57 GETTABLEKS                       R7 R7 K15 ["SCREENS"]
       59 GETTABLEKS                       R7 R7 K18 ["ERROR"]
       61 JUMPIFEQ                         R1 R7 ; [+2]
       63 LOADB                            R6 0 +1
       64 LOADB                            R6 1
       65 JUMPIFNOT                        R6 ; [+5]
       66 GETUPVAL                         R6 0
       67 GETTABLEKS                       R6 R6 K2 ["createElement"]
       69 GETUPVAL                         R7 4
       70 CALL                             R6 1 1
       71 SETTABLEKS                       R6 R5 K12 ["ErrorPrompt"]
       73 GETUPVAL                         R7 1
       74 GETTABLEKS                       R7 R7 K15 ["SCREENS"]
       76 GETTABLEKS                       R7 R7 K19 ["REDIRECT_RIG"]
       78 JUMPIFEQ                         R1 R7 ; [+2]
       80 LOADB                            R6 0 +1
       81 LOADB                            R6 1
       82 JUMPIFNOT                        R6 ; [+5]
       83 GETUPVAL                         R6 0
       84 GETTABLEKS                       R6 R6 K2 ["createElement"]
       86 GETUPVAL                         R7 5
       87 CALL                             R6 1 1
       88 SETTABLEKS                       R6 R5 K13 ["RedirectRigPrompt"]
       90 CALL                             R2 3 -1
       91 RETURN                           R2 -1

PROTO_5:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 MOVE                             R0 R1
        5 DUPTABLE                         R1 K1 [{"screen"}]
        6 GETTABLEKS                       R2 R0 K2 ["plugin"]
        8 GETTABLEKS                       R2 R2 K0 ["screen"]
       10 SETTABLEKS                       R2 R1 K0 ["screen"]
       12 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K8 ["src"]
       27 GETTABLEKS                       R4 R4 K9 ["Constants"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K8 ["src"]
       34 GETTABLEKS                       R5 R5 K10 ["components"]
       36 GETTABLEKS                       R5 R5 K11 ["AvatarPrompt"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K4 [require]
       41 GETTABLEKS                       R6 R0 K8 ["src"]
       43 GETTABLEKS                       R6 R6 K10 ["components"]
       45 GETTABLEKS                       R6 R6 K12 ["LoadingPrompt"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K4 [require]
       50 GETTABLEKS                       R7 R0 K8 ["src"]
       52 GETTABLEKS                       R7 R7 K10 ["components"]
       54 GETTABLEKS                       R7 R7 K13 ["ErrorPrompt"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K4 [require]
       59 GETTABLEKS                       R8 R0 K8 ["src"]
       61 GETTABLEKS                       R8 R8 K10 ["components"]
       63 GETTABLEKS                       R8 R8 K14 ["RedirectRigPrompt"]
       65 CALL                             R7 1 1
       66 DUPCLOSURE                       R8 K15 [PROTO_0]
       67 CAPTURE                          VAL R3
       68 DUPCLOSURE                       R9 K16 [PROTO_1]
       69 CAPTURE                          VAL R3
       70 DUPCLOSURE                       R10 K17 [PROTO_2]
       71 CAPTURE                          VAL R3
       72 DUPCLOSURE                       R11 K18 [PROTO_3]
       73 CAPTURE                          VAL R3
       74 GETTABLEKS                       R12 R1 K19 ["Component"]
       76 LOADK                            R14 K20 ["AvatarImporter"]
       77 NAMECALL                         R12 R12 K21 ["extend"]
       79 CALL                             R12 2 1
       80 DUPCLOSURE                       R13 K22 [PROTO_4]
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R7
       87 SETTABLEKS                       R13 R12 K23 ["render"]
       89 DUPCLOSURE                       R13 K24 [PROTO_5]
       90 GETTABLEKS                       R14 R2 K25 ["connect"]
       92 MOVE                             R15 R13
       93 CALL                             R14 1 1
       94 MOVE                             R15 R12
       95 CALL                             R14 1 -1
       96 RETURN                           R14 -1
