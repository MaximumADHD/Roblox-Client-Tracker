PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["AnimationData"]
        5 GETTABLEKS                       R4 R1 K2 ["Status"]
        7 GETTABLEKS                       R3 R4 K3 ["EditorMode"]
        9 GETUPVAL                         R4 0
       10 JUMPIFEQ                         R3 R4 ; [+28]
       12 GETTABLEKS                       R5 R1 K2 ["Status"]
       14 GETTABLEKS                       R4 R5 K4 ["EditorModeSwitchTime"]
       16 JUMPIFNOT                        R4 ; [+22]
       17 GETIMPORT                        R6 K7 [os.time]
       19 CALL                             R6 0 1
       20 SUB                              R5 R6 R4
       21 GETUPVAL                         R6 1
       22 LOADK                            R8 K8 ["onEditorModeSwitch"]
       23 MOVE                             R9 R3
       24 GETUPVAL                         R10 0
       25 MOVE                             R11 R5
       26 JUMPIFNOT                        R2 ; [+8]
       27 GETTABLEKS                       R13 R2 K9 ["Metadata"]
       29 JUMPIFNOT                        R13 ; [+5]
       30 GETTABLEKS                       R13 R2 K9 ["Metadata"]
       32 GETTABLEKS                       R12 R13 K10 ["Guid"]
       34 JUMP                             ; [+1]
       35 LOADNIL                          R12
       36 NAMECALL                         R6 R6 K11 ["report"]
       38 CALL                             R6 6 0
       39 GETUPVAL                         R6 2
       40 GETUPVAL                         R7 0
       41 CALL                             R6 1 -1
       42 NAMECALL                         R4 R0 K12 ["dispatch"]
       44 CALL                             R4 -1 0
       45 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Actions"]
       13 GETTABLEKS                       R2 R3 K8 ["SetEditorMode"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R4 K9 ["Types"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K10 [PROTO_1]
       24 CAPTURE                          VAL R1
       25 RETURN                           R3 1
