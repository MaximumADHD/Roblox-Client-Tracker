PROTO_0:
        0 MOVE                             R4 R0
        1 MOVE                             R5 R1
        2 MOVE                             R6 R2
        3 CALL                             R4 2 1
        4 JUMPIFNOTEQKNIL                  R4 ; [+3]
        6 LOADK                            R5 K0 [""]
        7 RETURN                           R5 1
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K1 ["alertIcons"]
       11 MOVE                             R6 R3
       12 CALL                             R5 1 -1
       13 RETURN                           R5 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getTooltipText"]
        3 GETUPVAL                         R4 1
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R5 R5 K1 ["valueBinding"]
        7 NAMECALL                         R5 R5 K2 ["getValue"]
        9 CALL                             R5 1 -1
       10 CALL                             R3 -1 1
       11 JUMPIFNOTEQKNIL                  R3 ; [+2]
       13 RETURN                           R0 0
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K3 ["mouseEnter"]
       17 MOVE                             R5 R0
       18 MOVE                             R6 R1
       19 MOVE                             R7 R2
       20 MOVE                             R8 R3
       21 CALL                             R4 4 0
       22 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["getTooltipText"]
        4 GETUPVAL                         R3 2
        5 MOVE                             R4 R0
        6 GETUPVAL                         R5 3
        7 GETTABLEKS                       R5 R5 K1 ["theme"]
        9 CALL                             R1 4 -1
       10 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["useContext"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K4 ["Context"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 3
       16 CALL                             R3 0 1
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K5 ["useCallback"]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R3
       24 NEWTABLE                         R6 0 3
       26 GETTABLEKS                       R7 R0 K6 ["getTooltipText"]
       28 GETTABLEKS                       R8 R0 K7 ["valueBinding"]
       30 GETTABLEKS                       R9 R3 K8 ["mouseEnter"]
       32 SETLIST                          R6 R7 3 [1]
       34 CALL                             R4 2 1
       35 GETUPVAL                         R5 1
       36 GETTABLEKS                       R5 R5 K9 ["createElement"]
       38 LOADK                            R6 K10 ["ImageLabel"]
       39 NEWTABLE                         R7 8 0
       41 GETIMPORT                        R8 K13 [UDim2.fromOffset]
       43 LOADN                            R9 16
       44 LOADN                            R10 16
       45 CALL                             R8 2 1
       46 SETTABLEKS                       R8 R7 K14 ["Size"]
       48 LOADN                            R8 1
       49 SETTABLEKS                       R8 R7 K15 ["BackgroundTransparency"]
       51 GETUPVAL                         R8 1
       52 GETTABLEKS                       R8 R8 K16 ["Event"]
       54 GETTABLEKS                       R8 R8 K17 ["MouseEnter"]
       56 SETTABLE                         R4 R7 R8
       57 GETUPVAL                         R8 1
       58 GETTABLEKS                       R8 R8 K16 ["Event"]
       60 GETTABLEKS                       R8 R8 K18 ["MouseLeave"]
       62 GETTABLEKS                       R9 R3 K19 ["mouseLeave"]
       64 SETTABLE                         R9 R7 R8
       65 GETUPVAL                         R8 1
       66 GETTABLEKS                       R8 R8 K20 ["Tag"]
       68 GETTABLEKS                       R9 R0 K21 ["tag"]
       70 SETTABLE                         R9 R7 R8
       71 GETTABLEKS                       R8 R0 K7 ["valueBinding"]
       73 NEWCLOSURE                       R10 P1
       74 CAPTURE                          UPVAL U4
       75 CAPTURE                          VAL R0
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R2
       78 NAMECALL                         R8 R8 K22 ["map"]
       80 CALL                             R8 2 1
       81 SETTABLEKS                       R8 R7 K23 ["Image"]
       83 CALL                             R5 2 1
       84 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["ImageUrl"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Components"]
       32 GETTABLEKS                       R5 R5 K12 ["Contexts"]
       34 GETTABLEKS                       R5 R5 K13 ["ThemeContext"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K14 ["Hooks"]
       41 GETTABLEKS                       R6 R6 K15 ["useTooltipActions"]
       43 CALL                             R5 1 1
       44 DUPCLOSURE                       R6 K16 [PROTO_0]
       45 CAPTURE                          VAL R2
       46 DUPCLOSURE                       R7 K17 [PROTO_3]
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R6
       52 RETURN                           R7 1
