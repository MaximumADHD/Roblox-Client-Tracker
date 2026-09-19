PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 NAMECALL                         R1 R1 K0 ["GetDerives"]
        5 CALL                             R1 1 3
        6 FORGPREP                         R1
        7 GETUPVAL                         R6 1
        8 JUMPIFEQ                         R5 R6 ; [+8]
       10 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       12 MOVE                             R7 R0
       13 MOVE                             R8 R5
       14 GETIMPORT                        R6 K3 [table.insert]
       16 CALL                             R6 2 0
       17 FORGLOOP                         R1 2 ; [-11]
       19 GETUPVAL                         R1 0
       20 MOVE                             R3 R0
       21 NAMECALL                         R1 R1 K4 ["SetDerives"]
       23 CALL                             R1 2 0
       24 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETIMPORT                        R0 K2 [table.clone]
        6 GETUPVAL                         R1 0
        7 NAMECALL                         R1 R1 K3 ["GetDerives"]
        9 CALL                             R1 1 -1
       10 CALL                             R0 -1 1
       11 LOADN                            R3 1
       12 GETUPVAL                         R4 1
       13 FASTCALL3                        TABLE_INSERT R0 R3 R4
       15 MOVE                             R2 R0
       16 GETIMPORT                        R1 K5 [table.insert]
       18 CALL                             R1 3 0
       19 GETUPVAL                         R1 0
       20 MOVE                             R3 R0
       21 NAMECALL                         R1 R1 K6 ["SetDerives"]
       23 CALL                             R1 2 0
       24 NEWCLOSURE                       R1 P0
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          UPVAL U1
       27 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+9]
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K0 ["createElement"]
        8 LOADK                            R2 K1 ["StyleLink"]
        9 DUPTABLE                         R3 K3 [{"StyleSheet"}]
       10 SETTABLEKS                       R0 R3 K2 ["StyleSheet"]
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1
       14 GETUPVAL                         R1 3
       15 GETTABLEKS                       R1 R1 K4 ["ContextServices"]
       17 GETTABLEKS                       R1 R1 K5 ["Design"]
       19 GETTABLEKS                       R1 R1 K6 ["use"]
       21 CALL                             R1 0 1
       22 JUMPIFEQKNIL                     R1 ; [+5]
       24 NAMECALL                         R2 R1 K7 ["get"]
       26 CALL                             R2 1 1
       27 JUMP                             ; [+1]
       28 LOADNIL                          R2
       29 GETUPVAL                         R3 4
       30 GETTABLEKS                       R3 R3 K8 ["Hooks"]
       32 GETTABLEKS                       R3 R3 K9 ["useThemeName"]
       34 CALL                             R3 0 1
       35 GETUPVAL                         R4 2
       36 GETTABLEKS                       R4 R4 K10 ["useEffect"]
       38 NEWCLOSURE                       R5 P0
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R0
       41 NEWTABLE                         R6 0 3
       43 MOVE                             R7 R2
       44 MOVE                             R8 R0
       45 MOVE                             R9 R3
       46 SETLIST                          R6 R7 3 [1]
       48 CALL                             R4 2 0
       49 LOADNIL                          R4
       50 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ViewportToolingFramework"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Hooks"]
       32 GETTABLEKS                       R5 R5 K11 ["useStyleSheet"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Flags"]
       39 GETTABLEKS                       R6 R6 K13 ["getFFlagViewportToolingFrameworkStyleLinkInDesign"]
       41 CALL                             R5 1 1
       42 DUPCLOSURE                       R6 K14 [PROTO_2]
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R3
       48 RETURN                           R6 1
