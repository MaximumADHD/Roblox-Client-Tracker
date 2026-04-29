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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Checked"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 GETUPVAL                         R4 4
        9 CALL                             R2 2 -1
       10 NAMECALL                         R0 R0 K1 ["BindToChangedAsync"]
       12 CALL                             R0 -1 1
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          UPVAL U5
       15 NAMECALL                         R0 R0 K2 ["Connect"]
       17 CALL                             R0 2 1
       18 NEWCLOSURE                       R1 P1
       19 CAPTURE                          VAL R0
       20 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 CALL                             R0 0 1
        7 GETUPVAL                         R1 2
        8 JUMPIFEQ                         R0 R1 ; [+9]
       10 GETUPVAL                         R1 3
       11 GETUPVAL                         R3 4
       12 GETUPVAL                         R4 5
       13 GETUPVAL                         R5 6
       14 CALL                             R3 2 -1
       15 NAMECALL                         R1 R1 K1 ["ActivateAsync"]
       17 CALL                             R1 -1 0
       18 RETURN                           R0 0

PROTO_5:
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
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R5 R6 K4 ["useCallback"]
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
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R6 R7 K5 ["useState"]
       35 MOVE                             R7 R5
       36 CALL                             R6 1 2
       37 GETUPVAL                         R9 0
       38 GETTABLEKS                       R8 R9 K6 ["useEffect"]
       40 NEWCLOSURE                       R9 P1
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R3
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          VAL R0
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R7
       47 NEWTABLE                         R10 0 2
       49 MOVE                             R11 R0
       50 MOVE                             R12 R1
       51 SETLIST                          R10 R11 2 [1]
       53 CALL                             R8 2 0
       54 GETUPVAL                         R9 0
       55 GETTABLEKS                       R8 R9 K6 ["useEffect"]
       57 NEWCLOSURE                       R9 P2
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R3
       62 CAPTURE                          UPVAL U2
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R1
       65 NEWTABLE                         R10 0 3
       67 MOVE                             R11 R0
       68 MOVE                             R12 R1
       69 MOVE                             R13 R6
       70 SETLIST                          R10 R11 3 [1]
       72 CALL                             R8 2 0
       73 RETURN                           R6 2

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
       32 DUPCLOSURE                       R4 K13 [PROTO_5]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R3
       36 RETURN                           R4 1
