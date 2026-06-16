PROTO_0:
        0 DUPTABLE                         R1 K2 [{"Color", "Transparency"}]
        1 GETTABLEKS                       R2 R0 K3 ["Color3"]
        3 SETTABLEKS                       R2 R1 K0 ["Color"]
        5 GETTABLEKS                       R2 R0 K1 ["Transparency"]
        7 SETTABLEKS                       R2 R1 K1 ["Transparency"]
        9 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R3 0 0
        2 GETUPVAL                         R4 0
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 GETTABLE                         R9 R0 R7
        7 FASTCALL1                        TYPE R1 ; [+3]
        8 MOVE                             R12 R1
        9 GETIMPORT                        R11 K1 [type]
       11 CALL                             R11 1 1
       12 JUMPIFNOTEQKS                    R11 K2 ["table"] ; [+11]
       14 DUPTABLE                         R10 K4 [{"Foreground"}]
       15 GETUPVAL                         R11 1
       16 GETTABLEKS                       R11 R11 K5 ["get"]
       18 MOVE                             R12 R9
       19 MOVE                             R13 R1
       20 CALL                             R11 2 1
       21 SETTABLEKS                       R11 R10 K3 ["Foreground"]
       23 JUMP                             ; [+1]
       24 GETTABLE                         R10 R9 R1
       25 DUPTABLE                         R11 K8 [{"container", "content"}]
       26 DUPTABLE                         R12 K12 [{"style", "stroke", "stateLayer"}]
       27 GETTABLEKS                       R13 R10 K13 ["Background"]
       29 SETTABLEKS                       R13 R12 K9 ["style"]
       31 GETTABLEKS                       R14 R10 K14 ["Border"]
       33 JUMPIFNOT                        R14 ; [+12]
       34 GETTABLEKS                       R14 R10 K14 ["Border"]
       36 DUPTABLE                         R13 K17 [{"Color", "Transparency"}]
       37 GETTABLEKS                       R15 R14 K18 ["Color3"]
       39 SETTABLEKS                       R15 R13 K15 ["Color"]
       41 GETTABLEKS                       R15 R14 K16 ["Transparency"]
       43 SETTABLEKS                       R15 R13 K16 ["Transparency"]
       45 JUMP                             ; [+1]
       46 LOADNIL                          R13
       47 SETTABLEKS                       R13 R12 K10 ["stroke"]
       49 DUPTABLE                         R13 K20 [{"mode"}]
       50 GETUPVAL                         R16 2
       51 GETTABLEKS                       R16 R16 K21 ["COLOR_MODE_TO_STATE_LAYER_MODE"]
       53 ORK                              R17 R2 K22 [False]
       54 GETTABLE                         R15 R16 R17
       55 GETTABLE                         R14 R15 R7
       56 SETTABLEKS                       R14 R13 K19 ["mode"]
       58 SETTABLEKS                       R13 R12 K11 ["stateLayer"]
       60 SETTABLEKS                       R12 R11 K6 ["container"]
       62 DUPTABLE                         R12 K23 [{"style"}]
       63 GETTABLEKS                       R13 R10 K3 ["Foreground"]
       65 SETTABLEKS                       R13 R12 K9 ["style"]
       67 SETTABLEKS                       R12 R11 K7 ["content"]
       69 SETTABLE                         R11 R3 R7
       70 FORGLOOP                         R4 1 ; [-65]
       72 RETURN                           R3 1

PROTO_2:
        0 NEWTABLE                         R1 16 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["Utility"]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R0
        7 LOADK                            R5 K1 ["ActionUtility"]
        8 CALL                             R3 2 1
        9 SETTABLE                         R3 R1 R2
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K2 ["Standard"]
       13 GETUPVAL                         R3 1
       14 MOVE                             R4 R0
       15 LOADK                            R5 K3 ["ActionStandard"]
       16 CALL                             R3 2 1
       17 SETTABLE                         R3 R1 R2
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K4 ["Emphasis"]
       21 GETUPVAL                         R3 1
       22 MOVE                             R4 R0
       23 LOADK                            R5 K5 ["ActionEmphasis"]
       24 CALL                             R3 2 1
       25 SETTABLE                         R3 R1 R2
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K6 ["Alert"]
       29 GETUPVAL                         R3 1
       30 MOVE                             R4 R0
       31 LOADK                            R5 K7 ["ActionAlert"]
       32 CALL                             R3 2 1
       33 SETTABLE                         R3 R1 R2
       34 GETUPVAL                         R2 0
       35 GETTABLEKS                       R2 R2 K8 ["SubEmphasis"]
       37 GETUPVAL                         R3 1
       38 MOVE                             R4 R0
       39 LOADK                            R5 K9 ["ActionSubEmphasis"]
       40 LOADB                            R6 1
       41 CALL                             R3 3 1
       42 SETTABLE                         R3 R1 R2
       43 GETUPVAL                         R2 0
       44 GETTABLEKS                       R2 R2 K10 ["SoftEmphasis"]
       46 GETUPVAL                         R3 1
       47 MOVE                             R4 R0
       48 LOADK                            R5 K11 ["ActionSoftEmphasis"]
       49 CALL                             R3 2 1
       50 SETTABLE                         R3 R1 R2
       51 GETUPVAL                         R2 0
       52 GETTABLEKS                       R2 R2 K12 ["Subtle"]
       54 GETUPVAL                         R3 1
       55 MOVE                             R4 R0
       56 LOADK                            R5 K13 ["ActionSubtle"]
       57 CALL                             R3 2 1
       58 SETTABLE                         R3 R1 R2
       59 GETUPVAL                         R2 0
       60 GETTABLEKS                       R2 R2 K14 ["Text"]
       62 GETUPVAL                         R3 1
       63 MOVE                             R4 R0
       64 NEWTABLE                         R5 0 2
       66 LOADK                            R6 K15 ["Content"]
       67 LOADK                            R7 K4 ["Emphasis"]
       68 SETLIST                          R5 R6 2 [1]
       70 CALL                             R3 2 1
       71 SETTABLE                         R3 R1 R2
       72 GETUPVAL                         R2 0
       73 GETTABLEKS                       R2 R2 K16 ["Link"]
       75 GETUPVAL                         R3 1
       76 MOVE                             R4 R0
       77 NEWTABLE                         R5 0 2
       79 LOADK                            R6 K15 ["Content"]
       80 LOADK                            R7 K16 ["Link"]
       81 SETLIST                          R5 R6 2 [1]
       83 CALL                             R3 2 1
       84 SETTABLE                         R3 R1 R2
       85 GETUPVAL                         R2 0
       86 GETTABLEKS                       R2 R2 K17 ["OverMedia"]
       88 GETUPVAL                         R3 1
       89 MOVE                             R4 R0
       90 LOADK                            R5 K18 ["ActionOverMedia"]
       91 LOADB                            R6 1
       92 CALL                             R3 3 1
       93 SETTABLE                         R3 R1 R2
       94 RETURN                           R1 1

PROTO_3:
        0 NEWTABLE                         R1 4 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["XSmall"]
        5 DUPTABLE                         R3 K2 [{"container"}]
        6 DUPTABLE                         R4 K5 [{"radius", "height"}]
        7 GETTABLEKS                       R5 R0 K6 ["Radius"]
        9 GETTABLEKS                       R5 R5 K7 ["Small"]
       11 SETTABLEKS                       R5 R4 K3 ["radius"]
       13 GETTABLEKS                       R5 R0 K8 ["Size"]
       15 GETTABLEKS                       R5 R5 K9 ["Size_600"]
       17 SETTABLEKS                       R5 R4 K4 ["height"]
       19 SETTABLEKS                       R4 R3 K1 ["container"]
       21 SETTABLE                         R3 R1 R2
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K7 ["Small"]
       25 DUPTABLE                         R3 K2 [{"container"}]
       26 DUPTABLE                         R4 K5 [{"radius", "height"}]
       27 GETTABLEKS                       R5 R0 K6 ["Radius"]
       29 GETTABLEKS                       R5 R5 K10 ["Medium"]
       31 SETTABLEKS                       R5 R4 K3 ["radius"]
       33 GETTABLEKS                       R5 R0 K8 ["Size"]
       35 GETTABLEKS                       R5 R5 K11 ["Size_800"]
       37 SETTABLEKS                       R5 R4 K4 ["height"]
       39 SETTABLEKS                       R4 R3 K1 ["container"]
       41 SETTABLE                         R3 R1 R2
       42 GETUPVAL                         R2 0
       43 GETTABLEKS                       R2 R2 K10 ["Medium"]
       45 DUPTABLE                         R3 K2 [{"container"}]
       46 DUPTABLE                         R4 K5 [{"radius", "height"}]
       47 GETTABLEKS                       R5 R0 K6 ["Radius"]
       49 GETTABLEKS                       R5 R5 K10 ["Medium"]
       51 SETTABLEKS                       R5 R4 K3 ["radius"]
       53 GETTABLEKS                       R5 R0 K8 ["Size"]
       55 GETTABLEKS                       R5 R5 K12 ["Size_1000"]
       57 SETTABLEKS                       R5 R4 K4 ["height"]
       59 SETTABLEKS                       R4 R3 K1 ["container"]
       61 SETTABLE                         R3 R1 R2
       62 GETUPVAL                         R2 0
       63 GETTABLEKS                       R2 R2 K13 ["Large"]
       65 DUPTABLE                         R3 K2 [{"container"}]
       66 DUPTABLE                         R4 K5 [{"radius", "height"}]
       67 GETTABLEKS                       R5 R0 K6 ["Radius"]
       69 GETTABLEKS                       R5 R5 K10 ["Medium"]
       71 SETTABLEKS                       R5 R4 K3 ["radius"]
       73 GETTABLEKS                       R5 R0 K8 ["Size"]
       75 GETTABLEKS                       R5 R5 K14 ["Size_1200"]
       77 SETTABLEKS                       R5 R4 K4 ["height"]
       79 SETTABLEKS                       R4 R3 K1 ["container"]
       81 SETTABLE                         R3 R1 R2
       82 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 DUPTABLE                         R3 K2 [{"sizes", "types"}]
        7 SETTABLEKS                       R1 R3 K0 ["sizes"]
        9 SETTABLEKS                       R2 R3 K1 ["types"]
       11 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Constants"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Types"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Enums"]
       30 GETTABLEKS                       R6 R6 K12 ["ButtonVariant"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K11 ["Enums"]
       37 GETTABLEKS                       R7 R7 K13 ["ColorMode"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K11 ["Enums"]
       44 GETTABLEKS                       R8 R8 K14 ["StateLayerMode"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K15 ["Utility"]
       51 GETTABLEKS                       R9 R9 K16 ["composeStyleVariant"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K17 ["Providers"]
       58 GETTABLEKS                       R10 R10 K18 ["Style"]
       60 GETTABLEKS                       R10 R10 K19 ["Tokens"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K11 ["Enums"]
       67 GETTABLEKS                       R11 R11 K20 ["InputSize"]
       69 CALL                             R10 1 1
       70 DUPCLOSURE                       R11 K21 [PROTO_0]
       71 DUPCLOSURE                       R12 K22 [PROTO_1]
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R2
       75 DUPCLOSURE                       R13 K23 [PROTO_2]
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R12
       78 DUPCLOSURE                       R14 K24 [PROTO_3]
       79 CAPTURE                          VAL R10
       80 DUPCLOSURE                       R15 K25 [PROTO_4]
       81 CAPTURE                          VAL R14
       82 CAPTURE                          VAL R13
       83 RETURN                           R15 1
