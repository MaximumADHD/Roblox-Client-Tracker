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
       45 JUMPIFNOTEQ                      R1 R6 ; [+8]
       47 GETUPVAL                         R8 1
       48 GETTABLE                         R7 R8 R2
       49 GETTABLEKS                       R6 R7 K5 ["Console"]
       51 CALL                             R6 0 1
       52 MOVE                             R4 R6
       53 JUMP                             ; [+6]
       54 GETUPVAL                         R8 1
       55 GETTABLE                         R7 R8 R2
       56 GETTABLEKS                       R6 R7 K6 ["Desktop"]
       58 CALL                             R6 0 1
       59 MOVE                             R4 R6
       60 JUMPIFNOT                        R3 ; [+2]
       61 JUMPIFNOT                        R4 ; [+1]
       62 JUMPIF                           R5 ; [+3]
       63 NEWTABLE                         R6 0 0
       65 RETURN                           R6 1
       66 GETIMPORT                        R6 K9 [table.clone]
       68 MOVE                             R7 R4
       69 CALL                             R6 1 1
       70 MOVE                             R7 R5
       71 LOADNIL                          R8
       72 LOADNIL                          R9
       73 FORGPREP                         R7
       74 SETTABLE                         R11 R6 R10
       75 FORGLOOP                         R7 2 ; [-2]
       77 MOVE                             R7 R3
       78 LOADNIL                          R8
       79 LOADNIL                          R9
       80 FORGPREP                         R7
       81 SETTABLE                         R11 R6 R10
       82 FORGLOOP                         R7 2 ; [-2]
       84 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R2 K7 ["Theme"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Enums"]
       18 GETTABLEKS                       R3 R3 K8 ["Device"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Enums"]
       25 GETTABLEKS                       R4 R4 K9 ["StyleTagFormat"]
       27 CALL                             R3 1 1
       28 NEWTABLE                         R4 2 0
       30 GETTABLEKS                       R5 R3 K10 ["Static"]
       32 DUPTABLE                         R6 K16 [{"Common", "Dark", "Light", "Console", "Desktop"}]
       33 DUPCLOSURE                       R7 K17 [PROTO_0]
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R7 R6 K11 ["Common"]
       37 DUPCLOSURE                       R7 K18 [PROTO_1]
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R7 R6 K12 ["Dark"]
       41 DUPCLOSURE                       R7 K19 [PROTO_2]
       42 CAPTURE                          VAL R0
       43 SETTABLEKS                       R7 R6 K13 ["Light"]
       45 DUPCLOSURE                       R7 K20 [PROTO_3]
       46 CAPTURE                          VAL R0
       47 SETTABLEKS                       R7 R6 K14 ["Console"]
       49 DUPCLOSURE                       R7 K21 [PROTO_4]
       50 CAPTURE                          VAL R0
       51 SETTABLEKS                       R7 R6 K15 ["Desktop"]
       53 SETTABLE                         R6 R4 R5
       54 GETTABLEKS                       R5 R3 K22 ["Attribute"]
       56 DUPTABLE                         R6 K23 [{"Console", "Desktop"}]
       57 DUPCLOSURE                       R7 K24 [PROTO_5]
       58 CAPTURE                          VAL R0
       59 SETTABLEKS                       R7 R6 K14 ["Console"]
       61 DUPCLOSURE                       R7 K25 [PROTO_6]
       62 CAPTURE                          VAL R0
       63 SETTABLEKS                       R7 R6 K15 ["Desktop"]
       65 SETTABLE                         R6 R4 R5
       66 DUPCLOSURE                       R5 K26 [PROTO_7]
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R2
       71 RETURN                           R5 1
