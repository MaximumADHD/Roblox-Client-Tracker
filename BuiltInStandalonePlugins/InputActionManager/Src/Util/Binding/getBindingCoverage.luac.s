PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLE                         R6 R0 R5
        5 JUMPIFNOT                        R6 ; [+5]
        6 GETIMPORT                        R7 K3 [Enum.KeyCode.Unknown]
        8 JUMPIFEQ                         R6 R7 ; [+2]
       10 RETURN                           R6 1
       11 FORGLOOP                         R1 2 ; [-8]
       13 LOADNIL                          R1
       14 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["keyCode"]
        4 GETIMPORT                        R3 K4 [Enum.KeyCode.Unknown]
        6 JUMPIFEQ                         R2 R3 ; [+14]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R4 R0 K0 ["keyCode"]
       11 GETTABLE                         R2 R3 R4
       12 JUMPIFNOT                        R2 ; [+8]
       13 MOVE                             R3 R2
       14 LOADNIL                          R4
       15 LOADNIL                          R5
       16 FORGPREP                         R3
       17 LOADB                            R8 1
       18 SETTABLE                         R8 R1 R7
       19 FORGLOOP                         R3 2 ; [-3]
       21 GETUPVAL                         R3 1
       22 LOADNIL                          R4
       23 LOADNIL                          R5
       24 FORGPREP                         R3
       25 GETTABLE                         R8 R0 R7
       26 JUMPIFNOT                        R8 ; [+6]
       27 GETIMPORT                        R9 K4 [Enum.KeyCode.Unknown]
       29 JUMPIFEQ                         R8 R9 ; [+3]
       31 MOVE                             R2 R8
       32 JUMP                             ; [+3]
       33 FORGLOOP                         R3 2 ; [-9]
       35 LOADNIL                          R2
       36 JUMPIFNOT                        R2 ; [+11]
       37 GETUPVAL                         R4 0
       38 GETTABLE                         R3 R4 R2
       39 JUMPIFNOT                        R3 ; [+8]
       40 MOVE                             R4 R3
       41 LOADNIL                          R5
       42 LOADNIL                          R6
       43 FORGPREP                         R4
       44 LOADB                            R9 1
       45 SETTABLE                         R9 R1 R8
       46 FORGLOOP                         R4 2 ; [-3]
       48 GETTABLEKS                       R3 R0 K5 ["uiButton"]
       50 JUMPIFNOT                        R3 ; [+3]
       51 LOADB                            R3 1
       52 SETTABLEKS                       R3 R1 K6 ["Touch"]
       54 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 CALL                             R3 0 3
        4 FORGPREP                         R3
        5 LOADN                            R8 0
        6 SETTABLE                         R8 R2 R7
        7 FORGLOOP                         R3 2 ; [-3]
        9 LOADN                            R3 0
       10 MOVE                             R4 R0
       11 LOADNIL                          R5
       12 LOADNIL                          R6
       13 FORGPREP                         R4
       14 ADDK                             R3 R3 K0 [1]
       15 NEWTABLE                         R9 0 0
       17 GETTABLEKS                       R10 R8 K1 ["bindings"]
       19 LOADNIL                          R11
       20 LOADNIL                          R12
       21 FORGPREP                         R10
       22 GETTABLE                         R15 R1 R14
       23 JUMPIFNOT                        R15 ; [+8]
       24 GETUPVAL                         R16 1
       25 MOVE                             R17 R15
       26 CALL                             R16 1 3
       27 FORGPREP                         R16
       28 LOADB                            R21 1
       29 SETTABLE                         R21 R9 R19
       30 FORGLOOP                         R16 1 ; [-3]
       32 FORGLOOP                         R10 2 ; [-11]
       34 MOVE                             R10 R9
       35 LOADNIL                          R11
       36 LOADNIL                          R12
       37 FORGPREP                         R10
       38 GETTABLE                         R15 R2 R13
       39 ADDK                             R15 R15 K0 [1]
       40 SETTABLE                         R15 R2 R13
       41 FORGLOOP                         R10 1 ; [-4]
       43 FORGLOOP                         R4 2 ; [-30]
       45 NEWTABLE                         R4 0 0
       47 GETUPVAL                         R5 0
       48 CALL                             R5 0 3
       49 FORGPREP                         R5
       50 LOADN                            R10 0
       51 JUMPIFNOTLT                      R10 R3 ; [+5]
       53 GETTABLE                         R11 R2 R9
       54 DIV                              R10 R11 R3
       55 SETTABLE                         R10 R4 R9
       56 JUMP                             ; [+2]
       57 LOADN                            R10 0
       58 SETTABLE                         R10 R4 R9
       59 FORGLOOP                         R5 2 ; [-10]
       61 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ContextActionService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["InputActionManager"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Types"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Src"]
       24 GETTABLEKS                       R4 R4 K12 ["Util"]
       26 GETTABLEKS                       R4 R4 K13 ["Constants"]
       28 GETTABLEKS                       R4 R4 K14 ["CompositeProperties"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R5 R1 K10 ["Src"]
       35 GETTABLEKS                       R5 R5 K12 ["Util"]
       37 GETTABLEKS                       R5 R5 K15 ["getSchemas"]
       39 CALL                             R4 1 1
       40 NAMECALL                         R5 R0 K16 ["GetInputSchemaKeyCodeTree"]
       42 CALL                             R5 1 1
       43 NEWTABLE                         R6 0 0
       45 MOVE                             R7 R5
       46 LOADNIL                          R8
       47 LOADNIL                          R9
       48 FORGPREP                         R7
       49 MOVE                             R12 R11
       50 LOADNIL                          R13
       51 LOADNIL                          R14
       52 FORGPREP                         R12
       53 MOVE                             R17 R16
       54 LOADNIL                          R18
       55 LOADNIL                          R19
       56 FORGPREP                         R17
       57 GETTABLE                         R22 R6 R21
       58 JUMPIF                           R22 ; [+3]
       59 NEWTABLE                         R22 0 0
       61 SETTABLE                         R22 R6 R21
       62 GETIMPORT                        R22 K19 [table.find]
       64 GETTABLE                         R23 R6 R21
       65 MOVE                             R24 R10
       66 CALL                             R22 2 1
       67 JUMPIF                           R22 ; [+7]
       68 GETTABLE                         R23 R6 R21
       69 FASTCALL2                        TABLE_INSERT R23 R10 ; [+4]
       71 MOVE                             R24 R10
       72 GETIMPORT                        R22 K21 [table.insert]
       74 CALL                             R22 2 0
       75 FORGLOOP                         R17 2 ; [-19]
       77 FORGLOOP                         R12 2 ; [-25]
       79 FORGLOOP                         R7 2 ; [-31]
       81 DUPCLOSURE                       R7 K22 [PROTO_0]
       82 CAPTURE                          VAL R3
       83 DUPCLOSURE                       R8 K23 [PROTO_1]
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R3
       86 DUPCLOSURE                       R9 K24 [PROTO_2]
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R8
       89 RETURN                           R9 1
