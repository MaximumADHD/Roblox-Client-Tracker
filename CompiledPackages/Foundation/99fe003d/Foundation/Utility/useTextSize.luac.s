PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+5]
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 1
        8 GETUPVAL                         R1 2
        9 GETUPVAL                         R3 0
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K0 ["FontSize"]
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R5 R5 K1 ["Font"]
       16 GETUPVAL                         R7 4
       17 JUMPIFNOT                        R7 ; [+2]
       18 GETUPVAL                         R6 4
       19 JUMP                             ; [+5]
       20 GETIMPORT                        R6 K4 [Vector2.new]
       22 LOADK                            R7 K5 [∞]
       23 LOADK                            R8 K5 [∞]
       24 CALL                             R6 2 1
       25 NAMECALL                         R1 R1 K6 ["GetTextSize"]
       27 CALL                             R1 5 -1
       28 CALL                             R0 -1 0
       29 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useState"]
        3 LOADNIL                          R4
        4 CALL                             R3 1 2
        5 GETUPVAL                         R5 1
        6 CALL                             R5 0 1
        7 GETTABLEKS                       R5 R5 K1 ["preferredTextSize"]
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R6 R6 K2 ["useEffect"]
       12 NEWCLOSURE                       R7 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R4
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R2
       18 NEWTABLE                         R8 0 4
       20 MOVE                             R9 R0
       21 MOVE                             R10 R1
       22 MOVE                             R11 R2
       23 MOVE                             R12 R5
       24 SETLIST                          R8 R9 4 [1]
       26 CALL                             R6 2 0
       27 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R0 K8 ["Components"]
       16 GETIMPORT                        R4 K6 [require]
       18 GETTABLEKS                       R5 R3 K9 ["Types"]
       20 CALL                             R4 1 1
       21 GETIMPORT                        R5 K6 [require]
       23 GETTABLEKS                       R6 R0 K10 ["Providers"]
       25 GETTABLEKS                       R6 R6 K11 ["Preferences"]
       27 GETTABLEKS                       R6 R6 K12 ["usePreferences"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K6 [require]
       32 GETTABLEKS                       R7 R0 K13 ["Utility"]
       34 GETTABLEKS                       R7 R7 K14 ["Wrappers"]
       36 GETTABLEKS                       R7 R7 K15 ["Services"]
       38 CALL                             R6 1 1
       39 GETTABLEKS                       R6 R6 K16 ["TextService"]
       41 DUPCLOSURE                       R7 K17 [PROTO_1]
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R6
       45 RETURN                           R7 1
