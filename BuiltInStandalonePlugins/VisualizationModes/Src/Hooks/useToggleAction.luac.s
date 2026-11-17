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
       14 JUMPIFNOTEQKNIL                  R1 ; [+12]
       16 GETIMPORT                        R2 K2 [warn]
       18 LOADK                            R3 K3 ["VisualizationModes: Could not find toggle action { FeatureId: %*, ActionId: %* }"]
       19 GETUPVAL                         R5 1
       20 GETUPVAL                         R6 2
       21 NAMECALL                         R3 R3 K4 ["format"]
       23 CALL                             R3 3 1
       24 CALL                             R2 1 0
       25 GETUPVAL                         R2 4
       26 RETURN                           R2 1
       27 GETUPVAL                         R2 5
       28 LOADB                            R3 1
       29 SETTABLEKS                       R3 R2 K5 ["current"]
       31 GETTABLEKS                       R2 R1 K6 ["Checked"]
       33 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Checked"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+23]
        4 GETUPVAL                         R1 1
        5 NEWTABLE                         R3 0 1
        7 GETUPVAL                         R4 2
        8 GETUPVAL                         R5 3
        9 GETUPVAL                         R6 4
       10 CALL                             R4 2 -1
       11 SETLIST                          R3 R4 -1 [1]
       13 LOADB                            R4 1
       14 NAMECALL                         R1 R1 K1 ["MultiBindToChangedAsync"]
       16 CALL                             R1 3 1
       17 GETTABLEN                        R0 R1 1
       18 NEWCLOSURE                       R2 P0
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          UPVAL U6
       21 NAMECALL                         R0 R0 K2 ["Connect"]
       23 CALL                             R0 2 1
       24 NEWCLOSURE                       R1 P1
       25 CAPTURE                          VAL R0
       26 RETURN                           R1 1
       27 GETUPVAL                         R0 1
       28 GETUPVAL                         R2 2
       29 GETUPVAL                         R3 3
       30 GETUPVAL                         R4 4
       31 CALL                             R2 2 -1
       32 NAMECALL                         R0 R0 K3 ["BindToChangedAsync"]
       34 CALL                             R0 -1 1
       35 NEWCLOSURE                       R2 P2
       36 CAPTURE                          UPVAL U5
       37 NAMECALL                         R0 R0 K2 ["Connect"]
       39 CALL                             R0 2 1
       40 NEWCLOSURE                       R1 P3
       41 CAPTURE                          VAL R0
       42 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 JUMPIF                           R0 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 2
       10 CALL                             R0 0 1
       11 GETUPVAL                         R1 3
       12 JUMPIFEQ                         R0 R1 ; [+9]
       14 GETUPVAL                         R1 4
       15 GETUPVAL                         R3 5
       16 GETUPVAL                         R4 6
       17 GETUPVAL                         R5 7
       18 CALL                             R3 2 -1
       19 NAMECALL                         R1 R1 K1 ["ActivateAsync"]
       21 CALL                             R1 -1 0
       22 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 CALL                             R2 2 -1
        5 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+17]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K0 ["current"]
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 3
       12 CALL                             R1 0 1
       13 JUMPIFEQ                         R1 R0 ; [+9]
       15 GETIMPORT                        R2 K3 [task.spawn]
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          UPVAL U6
       21 CAPTURE                          UPVAL U7
       22 CALL                             R2 1 0
       23 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useContext"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["Context"]
        6 CALL                             R3 1 1
        7 GETTABLEKS                       R3 R3 K2 ["actionsComponent"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K3 ["useRef"]
       12 LOADB                            R5 0
       13 CALL                             R4 1 1
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K4 ["useCallback"]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R3
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R4
       24 NEWTABLE                         R7 0 3
       26 MOVE                             R8 R0
       27 MOVE                             R9 R1
       28 MOVE                             R10 R2
       29 SETLIST                          R7 R8 3 [1]
       31 CALL                             R5 2 1
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R6 R6 K5 ["useState"]
       35 MOVE                             R7 R5
       36 CALL                             R6 1 2
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R8 R8 K6 ["useEffect"]
       40 NEWCLOSURE                       R9 P1
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R3
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          VAL R0
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R7
       47 CAPTURE                          VAL R5
       48 NEWTABLE                         R10 0 2
       50 MOVE                             R11 R0
       51 MOVE                             R12 R1
       52 SETLIST                          R10 R11 2 [1]
       54 CALL                             R8 2 0
       55 GETUPVAL                         R8 0
       56 GETTABLEKS                       R8 R8 K6 ["useEffect"]
       58 NEWCLOSURE                       R9 P2
       59 CAPTURE                          UPVAL U3
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R3
       64 CAPTURE                          UPVAL U2
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R1
       67 NEWTABLE                         R10 0 3
       69 MOVE                             R11 R0
       70 MOVE                             R12 R1
       71 MOVE                             R13 R6
       72 SETLIST                          R10 R11 3 [1]
       74 CALL                             R8 2 0
       75 GETUPVAL                         R8 0
       76 GETTABLEKS                       R8 R8 K4 ["useCallback"]
       78 NEWCLOSURE                       R9 P3
       79 CAPTURE                          VAL R7
       80 CAPTURE                          UPVAL U3
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R3
       84 CAPTURE                          UPVAL U2
       85 CAPTURE                          VAL R0
       86 CAPTURE                          VAL R1
       87 NEWTABLE                         R10 0 2
       89 MOVE                             R11 R0
       90 MOVE                             R12 R1
       91 SETLIST                          R10 R11 2 [1]
       93 CALL                             R8 2 1
       94 MOVE                             R9 R6
       95 MOVE                             R10 R8
       96 RETURN                           R9 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R3 K10 ["ActionsContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Util"]
       29 GETTABLEKS                       R4 R4 K12 ["getActionStudioUri"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K13 ["Flags"]
       38 GETTABLEKS                       R5 R5 K14 ["getFFlagStudioFixToggleActionRace"]
       40 CALL                             R4 1 1
       41 DUPCLOSURE                       R5 K15 [PROTO_9]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R4
       46 RETURN                           R5 1
