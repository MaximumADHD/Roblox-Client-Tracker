PROTO_0:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Generated"]
        5 GETTABLEKS                       R1 R1 K3 ["StyleRules"]
        7 GETTABLEKS                       R1 R1 K4 ["CommonStatic"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Generated"]
        5 GETTABLEKS                       R1 R1 K3 ["StyleRules"]
        7 GETTABLEKS                       R1 R1 K4 ["DarkStatic"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Generated"]
        5 GETTABLEKS                       R1 R1 K3 ["StyleRules"]
        7 GETTABLEKS                       R1 R1 K4 ["LightStatic"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Generated"]
        5 GETTABLEKS                       R1 R1 K3 ["StyleRules"]
        7 GETTABLEKS                       R1 R1 K4 ["ConsoleStatic"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_4:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Generated"]
        5 GETTABLEKS                       R1 R1 K3 ["StyleRules"]
        7 GETTABLEKS                       R1 R1 K4 ["DesktopStatic"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_5:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Generated"]
        5 GETTABLEKS                       R1 R1 K3 ["StyleRules"]
        7 GETTABLEKS                       R1 R1 K4 ["ConsoleAttribute"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_6:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Generated"]
        5 GETTABLEKS                       R1 R1 K3 ["StyleRules"]
        7 GETTABLEKS                       R1 R1 K4 ["DesktopAttribute"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Attribute"]
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 GETUPVAL                         R7 1
        6 GETUPVAL                         R8 0
        7 GETTABLEKS                       R8 R8 K2 ["Static"]
        9 GETTABLE                         R6 R7 R8
       10 GETTABLEKS                       R5 R6 K1 ["Common"]
       12 CALL                             R5 0 1
       13 GETUPVAL                         R6 2
       14 GETTABLEKS                       R6 R6 K3 ["Dark"]
       16 JUMPIFNOTEQ                      R0 R6 ; [+11]
       18 GETUPVAL                         R8 1
       19 GETUPVAL                         R9 0
       20 GETTABLEKS                       R9 R9 K2 ["Static"]
       22 GETTABLE                         R7 R8 R9
       23 GETTABLEKS                       R6 R7 K3 ["Dark"]
       25 CALL                             R6 0 1
       26 MOVE                             R3 R6
       27 JUMP                             ; [+14]
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R6 R6 K4 ["Light"]
       31 JUMPIFNOTEQ                      R0 R6 ; [+10]
       33 GETUPVAL                         R8 1
       34 GETUPVAL                         R9 0
       35 GETTABLEKS                       R9 R9 K2 ["Static"]
       37 GETTABLE                         R7 R8 R9
       38 GETTABLEKS                       R6 R7 K4 ["Light"]
       40 CALL                             R6 0 1
       41 MOVE                             R3 R6
       42 GETUPVAL                         R6 3
       43 GETTABLEKS                       R6 R6 K5 ["Console"]
       45 JUMPIFNOTEQ                      R1 R6 ; [+12]
       47 GETUPVAL                         R6 4
       48 GETTABLEKS                       R6 R6 K6 ["FoundationDisableTokenScaling"]
       50 JUMPIF                           R6 ; [+7]
       51 GETUPVAL                         R8 1
       52 GETTABLE                         R7 R8 R2
       53 GETTABLEKS                       R6 R7 K5 ["Console"]
       55 CALL                             R6 0 1
       56 MOVE                             R4 R6
       57 JUMP                             ; [+6]
       58 GETUPVAL                         R8 1
       59 GETTABLE                         R7 R8 R2
       60 GETTABLEKS                       R6 R7 K7 ["Desktop"]
       62 CALL                             R6 0 1
       63 MOVE                             R4 R6
       64 JUMPIFNOT                        R3 ; [+2]
       65 JUMPIFNOT                        R4 ; [+1]
       66 JUMPIF                           R5 ; [+3]
       67 NEWTABLE                         R6 0 0
       69 RETURN                           R6 1
       70 GETIMPORT                        R6 K10 [table.clone]
       72 MOVE                             R7 R4
       73 CALL                             R6 1 1
       74 MOVE                             R7 R5
       75 LOADNIL                          R8
       76 LOADNIL                          R9
       77 FORGPREP                         R7
       78 SETTABLE                         R11 R6 R10
       79 FORGLOOP                         R7 2 ; [-2]
       81 MOVE                             R7 R3
       82 LOADNIL                          R8
       83 LOADNIL                          R9
       84 FORGPREP                         R7
       85 SETTABLE                         R11 R6 R10
       86 FORGLOOP                         R7 2 ; [-2]
       88 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R2 K7 ["Device"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Utility"]
       18 GETTABLEKS                       R3 R3 K9 ["Flags"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Enums"]
       25 GETTABLEKS                       R4 R4 K10 ["StyleTagFormat"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Enums"]
       32 GETTABLEKS                       R5 R5 K11 ["Theme"]
       34 CALL                             R4 1 1
       35 NEWTABLE                         R5 2 0
       37 GETTABLEKS                       R6 R3 K12 ["Static"]
       39 DUPTABLE                         R7 K18 [{"Common", "Dark", "Light", "Console", "Desktop"}]
       40 DUPCLOSURE                       R8 K19 [PROTO_0]
       41 CAPTURE                          VAL R0
       42 SETTABLEKS                       R8 R7 K13 ["Common"]
       44 DUPCLOSURE                       R8 K20 [PROTO_1]
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R8 R7 K14 ["Dark"]
       48 DUPCLOSURE                       R8 K21 [PROTO_2]
       49 CAPTURE                          VAL R0
       50 SETTABLEKS                       R8 R7 K15 ["Light"]
       52 DUPCLOSURE                       R8 K22 [PROTO_3]
       53 CAPTURE                          VAL R0
       54 SETTABLEKS                       R8 R7 K16 ["Console"]
       56 DUPCLOSURE                       R8 K23 [PROTO_4]
       57 CAPTURE                          VAL R0
       58 SETTABLEKS                       R8 R7 K17 ["Desktop"]
       60 SETTABLE                         R7 R5 R6
       61 GETTABLEKS                       R6 R3 K24 ["Attribute"]
       63 DUPTABLE                         R7 K25 [{"Console", "Desktop"}]
       64 DUPCLOSURE                       R8 K26 [PROTO_5]
       65 CAPTURE                          VAL R0
       66 SETTABLEKS                       R8 R7 K16 ["Console"]
       68 DUPCLOSURE                       R8 K27 [PROTO_6]
       69 CAPTURE                          VAL R0
       70 SETTABLEKS                       R8 R7 K17 ["Desktop"]
       72 SETTABLE                         R7 R5 R6
       73 DUPCLOSURE                       R6 K28 [PROTO_7]
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R2
       79 RETURN                           R6 1
