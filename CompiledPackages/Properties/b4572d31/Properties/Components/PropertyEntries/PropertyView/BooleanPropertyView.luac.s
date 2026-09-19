PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["beginEditingAsync"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["setPart"]
        7 LOADK                            R2 K2 ["value"]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K3 ["finishEditing"]
       13 GETIMPORT                        R2 K7 [Enum.FinishRecordingOperation.Commit]
       15 CALL                             R1 1 0
       16 LOADB                            R1 1
       17 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useSignalState"]
        3 GETTABLEKS                       R2 R0 K1 ["getInfo"]
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R2 R1 K2 ["parts"]
        8 GETTABLEKS                       R2 R2 K3 ["value"]
       10 GETTABLEKS                       R2 R2 K4 ["multiple"]
       12 JUMPIFNOT                        R2 ; [+2]
       13 LOADB                            R3 1
       14 JUMP                             ; [+6]
       15 GETTABLEKS                       R3 R1 K2 ["parts"]
       17 GETTABLEKS                       R3 R3 K3 ["value"]
       19 GETTABLEKS                       R3 R3 K3 ["value"]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K5 ["createElement"]
       24 GETUPVAL                         R5 2
       25 DUPTABLE                         R6 K13 [{["isChecked"], ["isIndeterminate"], ["label"] = "", ["onActivated"], ["isDisabled"], ["size"]}]
       26 SETTABLEKS                       R3 R6 K6 ["isChecked"]
       28 SETTABLEKS                       R2 R6 K7 ["isIndeterminate"]
       30 NEWCLOSURE                       R7 P0
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R7 R6 K10 ["onActivated"]
       34 GETTABLEKS                       R7 R1 K14 ["readonly"]
       36 SETTABLEKS                       R7 R6 K11 ["isDisabled"]
       38 GETUPVAL                         R7 3
       39 GETTABLEKS                       R7 R7 K15 ["XSmall"]
       41 SETTABLEKS                       R7 R6 K12 ["size"]
       43 CALL                             R4 2 -1
       44 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["PropertyEditorTypes"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["SignalsReact"]
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R6 R2 K11 ["Checkbox"]
       31 GETTABLEKS                       R7 R2 K12 ["Enums"]
       33 GETTABLEKS                       R7 R7 K13 ["InputSize"]
       35 DUPCLOSURE                       R8 K14 [PROTO_1]
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R6
       39 CAPTURE                          VAL R7
       40 RETURN                           R8 1
