PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 GETUPVAL                         R2 3
        5 NEWTABLE                         R4 0 1
        7 MOVE                             R5 R0
        8 SETLIST                          R4 R5 1 [1]
       10 NAMECALL                         R2 R2 K0 ["GetAsync"]
       12 CALL                             R2 2 1
       13 GETTABLEN                        R1 R2 1
       14 JUMPIFNOTEQKNIL                  R1 ; [+13]
       16 GETIMPORT                        R2 K2 [warn]
       18 LOADK                            R4 K3 ["VisualizationModes: Could not find toggle action { FeatureId: %*, ActionId: %* }"]
       19 GETUPVAL                         R6 1
       20 GETUPVAL                         R7 2
       21 NAMECALL                         R4 R4 K4 ["format"]
       23 CALL                             R4 3 1
       24 MOVE                             R3 R4
       25 CALL                             R2 1 0
       26 GETUPVAL                         R2 4
       27 RETURN                           R2 1
       28 GETUPVAL                         R2 5
       29 LOADB                            R3 1
       30 SETTABLEKS                       R3 R2 K5 ["current"]
       32 GETTABLEKS                       R2 R1 K6 ["Checked"]
       34 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 GETUPVAL                         R3 3
        5 NEWTABLE                         R5 0 1
        7 MOVE                             R6 R0
        8 SETLIST                          R5 R6 1 [1]
       10 NAMECALL                         R3 R3 K0 ["GetAsync"]
       12 CALL                             R3 2 1
       13 GETTABLEN                        R2 R3 1
       14 GETTABLEKS                       R1 R2 K1 ["Checked"]
       16 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Checked"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["current"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 2
        8 GETUPVAL                         R2 3
        9 GETUPVAL                         R3 4
       10 GETUPVAL                         R4 5
       11 CALL                             R2 2 -1
       12 NAMECALL                         R0 R0 K1 ["BindToChangedAsync"]
       14 CALL                             R0 -1 1
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          UPVAL U6
       17 NAMECALL                         R0 R0 K2 ["Connect"]
       19 CALL                             R0 2 1
       20 NEWCLOSURE                       R1 P1
       21 CAPTURE                          VAL R0
       22 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["current"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 2
        8 CALL                             R0 0 1
        9 GETUPVAL                         R1 3
       10 JUMPIFEQ                         R0 R1 ; [+9]
       12 GETUPVAL                         R1 4
       13 GETUPVAL                         R3 5
       14 GETUPVAL                         R4 6
       15 GETUPVAL                         R5 7
       16 CALL                             R3 2 -1
       17 NAMECALL                         R1 R1 K1 ["ActivateAsync"]
       19 CALL                             R1 -1 0
       20 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["useContext"]
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R5 R6 K1 ["Context"]
        6 CALL                             R4 1 1
        7 GETTABLEKS                       R3 R4 K2 ["actionsComponent"]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K3 ["useRef"]
       12 LOADB                            R5 0
       13 CALL                             R4 1 1
       14 LOADNIL                          R5
       15 GETUPVAL                         R6 2
       16 JUMPIFNOT                        R6 ; [+20]
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R6 R7 K4 ["useCallback"]
       20 NEWCLOSURE                       R7 P0
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R4
       27 NEWTABLE                         R8 0 3
       29 MOVE                             R9 R0
       30 MOVE                             R10 R1
       31 MOVE                             R11 R2
       32 SETLIST                          R8 R9 3 [1]
       34 CALL                             R6 2 1
       35 MOVE                             R5 R6
       36 JUMP                             ; [+16]
       37 GETUPVAL                         R7 0
       38 GETTABLEKS                       R6 R7 K4 ["useCallback"]
       40 NEWCLOSURE                       R7 P1
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R3
       45 NEWTABLE                         R8 0 2
       47 MOVE                             R9 R0
       48 MOVE                             R10 R1
       49 SETLIST                          R8 R9 2 [1]
       51 CALL                             R6 2 1
       52 MOVE                             R5 R6
       53 GETUPVAL                         R7 0
       54 GETTABLEKS                       R6 R7 K5 ["useState"]
       56 MOVE                             R7 R5
       57 CALL                             R6 1 2
       58 GETUPVAL                         R9 0
       59 GETTABLEKS                       R8 R9 K6 ["useEffect"]
       61 NEWCLOSURE                       R9 P2
       62 CAPTURE                          UPVAL U2
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R3
       65 CAPTURE                          UPVAL U3
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R7
       69 NEWTABLE                         R10 0 2
       71 MOVE                             R11 R0
       72 MOVE                             R12 R1
       73 SETLIST                          R10 R11 2 [1]
       75 CALL                             R8 2 0
       76 GETUPVAL                         R9 0
       77 GETTABLEKS                       R8 R9 K6 ["useEffect"]
       79 NEWCLOSURE                       R9 P3
       80 CAPTURE                          UPVAL U2
       81 CAPTURE                          VAL R4
       82 CAPTURE                          REF R5
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R3
       85 CAPTURE                          UPVAL U3
       86 CAPTURE                          VAL R0
       87 CAPTURE                          VAL R1
       88 NEWTABLE                         R10 0 3
       90 MOVE                             R11 R0
       91 MOVE                             R12 R1
       92 MOVE                             R13 R6
       93 SETLIST                          R10 R11 3 [1]
       95 CALL                             R8 2 0
       96 CLOSEUPVALS                      R5
       97 RETURN                           R6 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R4 K10 ["ActionsContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K11 ["Util"]
       29 GETTABLEKS                       R4 R5 K12 ["getActionStudioUri"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K8 ["Src"]
       36 GETTABLEKS                       R6 R7 K13 ["Flags"]
       38 GETTABLEKS                       R5 R6 K14 ["getFFlagStudioVisualizationModesCheckForActions"]
       40 CALL                             R4 1 1
       41 MOVE                             R5 R4
       42 CALL                             R5 0 1
       43 DUPCLOSURE                       R6 K15 [PROTO_6]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R3
       48 RETURN                           R6 1
