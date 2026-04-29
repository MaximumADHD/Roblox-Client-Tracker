PROTO_0:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K2 ["Generated"]
        5 GETTABLEKS                       R2 R3 K3 ["StyleRules"]
        7 GETTABLEKS                       R1 R2 K4 ["CommonStatic"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K2 ["Generated"]
        5 GETTABLEKS                       R2 R3 K3 ["StyleRules"]
        7 GETTABLEKS                       R1 R2 K4 ["DarkStatic"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K2 ["Generated"]
        5 GETTABLEKS                       R2 R3 K3 ["StyleRules"]
        7 GETTABLEKS                       R1 R2 K4 ["LightStatic"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K2 ["Generated"]
        5 GETTABLEKS                       R2 R3 K3 ["StyleRules"]
        7 GETTABLEKS                       R1 R2 K4 ["ConsoleStatic"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_4:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K2 ["Generated"]
        5 GETTABLEKS                       R2 R3 K3 ["StyleRules"]
        7 GETTABLEKS                       R1 R2 K4 ["DesktopStatic"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_5:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K2 ["Generated"]
        5 GETTABLEKS                       R2 R3 K3 ["StyleRules"]
        7 GETTABLEKS                       R1 R2 K4 ["CommonAttribute"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_6:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K2 ["Generated"]
        5 GETTABLEKS                       R2 R3 K3 ["StyleRules"]
        7 GETTABLEKS                       R1 R2 K4 ["DarkAttribute"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_7:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K2 ["Generated"]
        5 GETTABLEKS                       R2 R3 K3 ["StyleRules"]
        7 GETTABLEKS                       R1 R2 K4 ["LightAttribute"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_8:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K2 ["Generated"]
        5 GETTABLEKS                       R2 R3 K3 ["StyleRules"]
        7 GETTABLEKS                       R1 R2 K4 ["ConsoleAttribute"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_9:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K2 ["Generated"]
        5 GETTABLEKS                       R2 R3 K3 ["StyleRules"]
        7 GETTABLEKS                       R1 R2 K4 ["DesktopAttribute"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Attribute"]
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 GETUPVAL                         R7 1
        7 GETTABLEKS                       R6 R7 K1 ["FoundationUseAttributeTokens"]
        9 JUMPIFNOT                        R6 ; [+10]
       10 GETUPVAL                         R8 2
       11 GETUPVAL                         R10 0
       12 GETTABLEKS                       R9 R10 K0 ["Attribute"]
       14 GETTABLE                         R7 R8 R9
       15 GETTABLEKS                       R6 R7 K2 ["Common"]
       17 CALL                             R6 0 1
       18 MOVE                             R5 R6
       19 JUMP                             ; [+9]
       20 GETUPVAL                         R8 2
       21 GETUPVAL                         R10 0
       22 GETTABLEKS                       R9 R10 K3 ["Static"]
       24 GETTABLE                         R7 R8 R9
       25 GETTABLEKS                       R6 R7 K2 ["Common"]
       27 CALL                             R6 0 1
       28 MOVE                             R5 R6
       29 GETUPVAL                         R7 3
       30 GETTABLEKS                       R6 R7 K4 ["Dark"]
       32 JUMPIFNOTEQ                      R0 R6 ; [+25]
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R6 R7 K1 ["FoundationUseAttributeTokens"]
       37 JUMPIFNOT                        R6 ; [+10]
       38 GETUPVAL                         R8 2
       39 GETUPVAL                         R10 0
       40 GETTABLEKS                       R9 R10 K0 ["Attribute"]
       42 GETTABLE                         R7 R8 R9
       43 GETTABLEKS                       R6 R7 K4 ["Dark"]
       45 CALL                             R6 0 1
       46 MOVE                             R3 R6
       47 JUMP                             ; [+38]
       48 GETUPVAL                         R8 2
       49 GETUPVAL                         R10 0
       50 GETTABLEKS                       R9 R10 K3 ["Static"]
       52 GETTABLE                         R7 R8 R9
       53 GETTABLEKS                       R6 R7 K4 ["Dark"]
       55 CALL                             R6 0 1
       56 MOVE                             R3 R6
       57 JUMP                             ; [+28]
       58 GETUPVAL                         R7 3
       59 GETTABLEKS                       R6 R7 K5 ["Light"]
       61 JUMPIFNOTEQ                      R0 R6 ; [+24]
       63 GETUPVAL                         R7 1
       64 GETTABLEKS                       R6 R7 K1 ["FoundationUseAttributeTokens"]
       66 JUMPIFNOT                        R6 ; [+10]
       67 GETUPVAL                         R8 2
       68 GETUPVAL                         R10 0
       69 GETTABLEKS                       R9 R10 K0 ["Attribute"]
       71 GETTABLE                         R7 R8 R9
       72 GETTABLEKS                       R6 R7 K5 ["Light"]
       74 CALL                             R6 0 1
       75 MOVE                             R3 R6
       76 JUMP                             ; [+9]
       77 GETUPVAL                         R8 2
       78 GETUPVAL                         R10 0
       79 GETTABLEKS                       R9 R10 K3 ["Static"]
       81 GETTABLE                         R7 R8 R9
       82 GETTABLEKS                       R6 R7 K5 ["Light"]
       84 CALL                             R6 0 1
       85 MOVE                             R3 R6
       86 GETUPVAL                         R7 4
       87 GETTABLEKS                       R6 R7 K6 ["Console"]
       89 JUMPIFNOTEQ                      R1 R6 ; [+12]
       91 GETUPVAL                         R7 1
       92 GETTABLEKS                       R6 R7 K7 ["FoundationDisableTokenScaling"]
       94 JUMPIF                           R6 ; [+7]
       95 GETUPVAL                         R8 2
       96 GETTABLE                         R7 R8 R2
       97 GETTABLEKS                       R6 R7 K6 ["Console"]
       99 CALL                             R6 0 1
      100 MOVE                             R4 R6
      101 JUMP                             ; [+6]
      102 GETUPVAL                         R8 2
      103 GETTABLE                         R7 R8 R2
      104 GETTABLEKS                       R6 R7 K8 ["Desktop"]
      106 CALL                             R6 0 1
      107 MOVE                             R4 R6
      108 JUMPIFNOT                        R3 ; [+2]
      109 JUMPIFNOT                        R4 ; [+1]
      110 JUMPIF                           R5 ; [+3]
      111 NEWTABLE                         R6 0 0
      113 RETURN                           R6 1
      114 GETIMPORT                        R6 K11 [table.clone]
      116 MOVE                             R7 R4
      117 CALL                             R6 1 1
      118 MOVE                             R7 R5
      119 LOADNIL                          R8
      120 LOADNIL                          R9
      121 FORGPREP                         R7
      122 SETTABLE                         R11 R6 R10
      123 FORGLOOP                         R7 2 ; [-2]
      125 MOVE                             R7 R3
      126 LOADNIL                          R8
      127 LOADNIL                          R9
      128 FORGPREP                         R7
      129 SETTABLE                         R11 R6 R10
      130 FORGLOOP                         R7 2 ; [-2]
      132 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R3 K7 ["Device"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Utility"]
       18 GETTABLEKS                       R3 R4 K9 ["Flags"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Enums"]
       25 GETTABLEKS                       R4 R5 K10 ["StyleTagFormat"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Enums"]
       32 GETTABLEKS                       R5 R6 K11 ["Theme"]
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
       63 DUPTABLE                         R7 K18 [{"Common", "Dark", "Light", "Console", "Desktop"}]
       64 DUPCLOSURE                       R8 K25 [PROTO_5]
       65 CAPTURE                          VAL R0
       66 SETTABLEKS                       R8 R7 K13 ["Common"]
       68 DUPCLOSURE                       R8 K26 [PROTO_6]
       69 CAPTURE                          VAL R0
       70 SETTABLEKS                       R8 R7 K14 ["Dark"]
       72 DUPCLOSURE                       R8 K27 [PROTO_7]
       73 CAPTURE                          VAL R0
       74 SETTABLEKS                       R8 R7 K15 ["Light"]
       76 DUPCLOSURE                       R8 K28 [PROTO_8]
       77 CAPTURE                          VAL R0
       78 SETTABLEKS                       R8 R7 K16 ["Console"]
       80 DUPCLOSURE                       R8 K29 [PROTO_9]
       81 CAPTURE                          VAL R0
       82 SETTABLEKS                       R8 R7 K17 ["Desktop"]
       84 SETTABLE                         R7 R5 R6
       85 DUPCLOSURE                       R6 K30 [PROTO_10]
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R1
       91 RETURN                           R6 1
