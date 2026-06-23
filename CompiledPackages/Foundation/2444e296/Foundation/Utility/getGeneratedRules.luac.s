PROTO_0:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Generated"]
        5 GETTABLEKS                       R1 R1 K3 ["StyleRules"]
        7 GETTABLEKS                       R1 R1 K4 ["CommonAttribute"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Generated"]
        5 GETTABLEKS                       R1 R1 K3 ["StyleRules"]
        7 GETTABLEKS                       R1 R1 K4 ["DarkAttribute"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Generated"]
        5 GETTABLEKS                       R1 R1 K3 ["StyleRules"]
        7 GETTABLEKS                       R1 R1 K4 ["LightAttribute"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Generated"]
        5 GETTABLEKS                       R1 R1 K3 ["StyleRules"]
        7 GETTABLEKS                       R1 R1 K4 ["ConsoleAttribute"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_4:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Generated"]
        5 GETTABLEKS                       R1 R1 K3 ["StyleRules"]
        7 GETTABLEKS                       R1 R1 K4 ["DesktopAttribute"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_5:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R5 R6 K0 ["Common"]
        6 CALL                             R5 0 1
        7 MOVE                             R4 R5
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K1 ["Dark"]
       11 JUMPIFNOTEQ                      R0 R5 ; [+7]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K1 ["Dark"]
       16 CALL                             R5 0 1
       17 MOVE                             R2 R5
       18 JUMP                             ; [+10]
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K2 ["Light"]
       22 JUMPIFNOTEQ                      R0 R5 ; [+6]
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R5 R6 K2 ["Light"]
       27 CALL                             R5 0 1
       28 MOVE                             R2 R5
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R5 R5 K3 ["Console"]
       32 JUMPIFNOTEQ                      R1 R5 ; [+11]
       34 GETUPVAL                         R5 3
       35 GETTABLEKS                       R5 R5 K4 ["FoundationDisableTokenScaling"]
       37 JUMPIF                           R5 ; [+6]
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R5 R6 K3 ["Console"]
       41 CALL                             R5 0 1
       42 MOVE                             R3 R5
       43 JUMP                             ; [+5]
       44 GETUPVAL                         R6 0
       45 GETTABLEKS                       R5 R6 K5 ["Desktop"]
       47 CALL                             R5 0 1
       48 MOVE                             R3 R5
       49 JUMPIFNOT                        R2 ; [+2]
       50 JUMPIFNOT                        R3 ; [+1]
       51 JUMPIF                           R4 ; [+3]
       52 NEWTABLE                         R5 0 0
       54 RETURN                           R5 1
       55 GETIMPORT                        R5 K8 [table.clone]
       57 MOVE                             R6 R3
       58 CALL                             R5 1 1
       59 MOVE                             R6 R4
       60 LOADNIL                          R7
       61 LOADNIL                          R8
       62 FORGPREP                         R6
       63 SETTABLE                         R10 R5 R9
       64 FORGLOOP                         R6 2 ; [-2]
       66 MOVE                             R6 R2
       67 LOADNIL                          R7
       68 LOADNIL                          R8
       69 FORGPREP                         R6
       70 SETTABLE                         R10 R5 R9
       71 FORGLOOP                         R6 2 ; [-2]
       73 RETURN                           R5 1

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
       25 GETTABLEKS                       R4 R4 K10 ["Theme"]
       27 CALL                             R3 1 1
       28 DUPTABLE                         R4 K16 [{"Common", "Dark", "Light", "Console", "Desktop"}]
       29 DUPCLOSURE                       R5 K17 [PROTO_0]
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R5 R4 K11 ["Common"]
       33 DUPCLOSURE                       R5 K18 [PROTO_1]
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R5 R4 K12 ["Dark"]
       37 DUPCLOSURE                       R5 K19 [PROTO_2]
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R5 R4 K13 ["Light"]
       41 DUPCLOSURE                       R5 K20 [PROTO_3]
       42 CAPTURE                          VAL R0
       43 SETTABLEKS                       R5 R4 K14 ["Console"]
       45 DUPCLOSURE                       R5 K21 [PROTO_4]
       46 CAPTURE                          VAL R0
       47 SETTABLEKS                       R5 R4 K15 ["Desktop"]
       49 DUPCLOSURE                       R5 K22 [PROTO_5]
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R2
       54 RETURN                           R5 1
