PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onExpansionsChanged"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 GETUPVAL                         R1 2
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+8]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["useContext"]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["Context"]
        9 CALL                             R2 1 1
       10 JUMP                             ; [+1]
       11 LOADNIL                          R2
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K0 ["useContext"]
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R4 R4 K1 ["Context"]
       18 CALL                             R3 1 1
       19 GETUPVAL                         R4 4
       20 GETTABLEKS                       R4 R4 K2 ["useStagnatingState"]
       22 GETTABLEKS                       R6 R3 K3 ["expansionsRef"]
       24 GETTABLEKS                       R6 R6 K4 ["current"]
       26 GETTABLE                         R5 R6 R0
       27 GETUPVAL                         R7 0
       28 CALL                             R7 0 1
       29 JUMPIFNOT                        R7 ; [+8]
       30 NEWTABLE                         R6 0 2
       32 GETTABLEKS                       R7 R2 K5 ["datamodelType"]
       34 MOVE                             R8 R0
       35 SETLIST                          R6 R7 2 [1]
       37 JUMP                             ; [+5]
       38 NEWTABLE                         R6 0 1
       40 MOVE                             R7 R0
       41 SETLIST                          R6 R7 1 [1]
       43 CALL                             R4 2 2
       44 GETUPVAL                         R6 1
       45 GETTABLEKS                       R6 R6 K6 ["useCallback"]
       47 NEWCLOSURE                       R7 P0
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R5
       51 NEWTABLE                         R8 0 2
       53 MOVE                             R9 R0
       54 MOVE                             R10 R5
       55 SETLIST                          R8 R9 2 [1]
       57 CALL                             R6 2 1
       58 MOVE                             R7 R4
       59 JUMPIF                           R7 ; [+4]
       60 JUMPIFEQKNIL                     R4 ; [+2]
       62 LOADB                            R7 0 +1
       63 LOADB                            R7 1
       64 JUMPIFNOT                        R1 ; [+2]
       65 MOVE                             R8 R7
       66 JUMP                             ; [+1]
       67 LOADNIL                          R8
       68 JUMPIFNOT                        R1 ; [+2]
       69 MOVE                             R9 R6
       70 RETURN                           R8 2
       71 LOADNIL                          R9
       72 RETURN                           R8 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K11 ["DatamodelConfiguration"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Contexts"]
       36 GETTABLEKS                       R5 R5 K12 ["PluginConfiguration"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R6 K13 ["Types"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R0 K9 ["Src"]
       48 GETTABLEKS                       R6 R6 K14 ["Flags"]
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R8 R6 K15 ["getFFlagIAMFocusedDatamodelChanged"]
       54 CALL                             R7 1 1
       55 DUPCLOSURE                       R8 K16 [PROTO_1]
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R2
       61 RETURN                           R8 1
