PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLE                         R6 R0 R5
        5 JUMPIFNOT                        R6 ; [+5]
        6 GETIMPORT                        R7 K3 [Enum.KeyCode.None]
        8 JUMPIFEQ                         R6 R7 ; [+2]
       10 RETURN                           R6 1
       11 FORGLOOP                         R1 2 ; [-8]
       13 LOADNIL                          R1
       14 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["keyCode"]
        4 GETIMPORT                        R3 K4 [Enum.KeyCode.None]
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
       27 GETIMPORT                        R9 K4 [Enum.KeyCode.None]
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
       14 GETUPVAL                         R9 1
       15 CALL                             R9 0 1
       16 JUMPIFNOT                        R9 ; [+3]
       17 GETTABLEKS                       R9 R8 K0 ["defaultPlayerScript"]
       19 JUMPIF                           R9 ; [+29]
       20 ADDK                             R3 R3 K1 [1]
       21 NEWTABLE                         R9 0 0
       23 GETTABLEKS                       R10 R8 K2 ["bindings"]
       25 LOADNIL                          R11
       26 LOADNIL                          R12
       27 FORGPREP                         R10
       28 GETTABLE                         R15 R1 R14
       29 JUMPIFNOT                        R15 ; [+8]
       30 GETUPVAL                         R16 2
       31 MOVE                             R17 R15
       32 CALL                             R16 1 3
       33 FORGPREP                         R16
       34 LOADB                            R21 1
       35 SETTABLE                         R21 R9 R19
       36 FORGLOOP                         R16 1 ; [-3]
       38 FORGLOOP                         R10 2 ; [-11]
       40 MOVE                             R10 R9
       41 LOADNIL                          R11
       42 LOADNIL                          R12
       43 FORGPREP                         R10
       44 GETTABLE                         R15 R2 R13
       45 ADDK                             R15 R15 K1 [1]
       46 SETTABLE                         R15 R2 R13
       47 FORGLOOP                         R10 1 ; [-4]
       49 FORGLOOP                         R4 2 ; [-36]
       51 NEWTABLE                         R4 0 0
       53 GETUPVAL                         R5 0
       54 CALL                             R5 0 3
       55 FORGPREP                         R5
       56 LOADN                            R10 0
       57 JUMPIFNOTLT                      R10 R3 ; [+5]
       59 GETTABLE                         R11 R2 R9
       60 DIV                              R10 R11 R3
       61 SETTABLE                         R10 R4 R9
       62 JUMP                             ; [+2]
       63 LOADN                            R10 0
       64 SETTABLE                         R10 R4 R9
       65 FORGLOOP                         R5 2 ; [-10]
       67 RETURN                           R4 1

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
       43 GETTABLEKS                       R6 R1 K10 ["Src"]
       45 GETTABLEKS                       R6 R6 K17 ["Flags"]
       47 GETIMPORT                        R7 K9 [require]
       49 GETTABLEKS                       R8 R6 K18 ["getFFlagIAMFixCoverageDiffTelemetry"]
       51 CALL                             R7 1 1
       52 NEWTABLE                         R8 0 0
       54 MOVE                             R9 R5
       55 LOADNIL                          R10
       56 LOADNIL                          R11
       57 FORGPREP                         R9
       58 MOVE                             R14 R13
       59 LOADNIL                          R15
       60 LOADNIL                          R16
       61 FORGPREP                         R14
       62 MOVE                             R19 R18
       63 LOADNIL                          R20
       64 LOADNIL                          R21
       65 FORGPREP                         R19
       66 GETTABLE                         R24 R8 R23
       67 JUMPIF                           R24 ; [+3]
       68 NEWTABLE                         R24 0 0
       70 SETTABLE                         R24 R8 R23
       71 GETIMPORT                        R24 K21 [table.find]
       73 GETTABLE                         R25 R8 R23
       74 MOVE                             R26 R12
       75 CALL                             R24 2 1
       76 JUMPIF                           R24 ; [+7]
       77 GETTABLE                         R25 R8 R23
       78 FASTCALL2                        TABLE_INSERT R25 R12 ; [+4]
       80 MOVE                             R26 R12
       81 GETIMPORT                        R24 K23 [table.insert]
       83 CALL                             R24 2 0
       84 FORGLOOP                         R19 2 ; [-19]
       86 FORGLOOP                         R14 2 ; [-25]
       88 FORGLOOP                         R9 2 ; [-31]
       90 DUPCLOSURE                       R9 K24 [PROTO_0]
       91 CAPTURE                          VAL R3
       92 DUPCLOSURE                       R10 K25 [PROTO_1]
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R3
       95 DUPCLOSURE                       R11 K26 [PROTO_2]
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R10
       99 RETURN                           R11 1
