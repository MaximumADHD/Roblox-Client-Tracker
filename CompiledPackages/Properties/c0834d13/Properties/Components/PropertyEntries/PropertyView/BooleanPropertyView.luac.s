PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["beginEditingAsync"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["setPart"]
        7 LOADK                            R2 K2 ["value"]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K3 ["finishEditing"]
       13 GETIMPORT                        R2 K7 [Enum.FinishRecordingOperation.Commit]
       15 CALL                             R1 1 0
       16 LOADB                            R1 1
       17 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R4 R0 K0 ["info"]
        2 GETTABLEKS                       R3 R4 K1 ["parts"]
        4 GETTABLEKS                       R2 R3 K2 ["value"]
        6 GETTABLEKS                       R1 R2 K3 ["multiple"]
        8 JUMPIFNOT                        R1 ; [+2]
        9 LOADB                            R2 1
       10 JUMP                             ; [+8]
       11 GETTABLEKS                       R5 R0 K0 ["info"]
       13 GETTABLEKS                       R4 R5 K1 ["parts"]
       15 GETTABLEKS                       R3 R4 K2 ["value"]
       17 GETTABLEKS                       R2 R3 K2 ["value"]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R3 R4 K4 ["createElement"]
       22 GETUPVAL                         R4 1
       23 DUPTABLE                         R5 K11 [{"isChecked", "isIndeterminate", "label", "onActivated", "isDisabled", "size"}]
       24 SETTABLEKS                       R2 R5 K5 ["isChecked"]
       26 SETTABLEKS                       R1 R5 K6 ["isIndeterminate"]
       28 LOADK                            R6 K12 [""]
       29 SETTABLEKS                       R6 R5 K7 ["label"]
       31 NEWCLOSURE                       R6 P0
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R6 R5 K8 ["onActivated"]
       35 GETTABLEKS                       R7 R0 K0 ["info"]
       37 GETTABLEKS                       R6 R7 K13 ["readonly"]
       39 SETTABLEKS                       R6 R5 K9 ["isDisabled"]
       41 GETUPVAL                         R7 2
       42 GETTABLEKS                       R6 R7 K14 ["XSmall"]
       44 SETTABLEKS                       R6 R5 K10 ["size"]
       46 CALL                             R3 2 -1
       47 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["PropertyEditorTypes"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R5 R0 K6 ["Parent"]
       23 GETTABLEKS                       R4 R5 K9 ["React"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R1 K10 ["Checkbox"]
       28 GETTABLEKS                       R6 R1 K11 ["Enums"]
       30 GETTABLEKS                       R5 R6 K12 ["InputSize"]
       32 DUPCLOSURE                       R6 K13 [PROTO_1]
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R5
       36 RETURN                           R6 1
