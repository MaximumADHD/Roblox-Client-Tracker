PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["parts"]
        2 GETTABLEKS                       R2 R2 K1 ["value"]
        4 GETTABLEKS                       R2 R2 K2 ["multiple"]
        6 JUMPIFNOT                        R2 ; [+2]
        7 LOADK                            R1 K3 ["-"]
        8 RETURN                           R1 1
        9 GETTABLEKS                       R1 R0 K0 ["parts"]
       11 GETTABLEKS                       R1 R1 K1 ["value"]
       13 GETTABLEKS                       R1 R1 K1 ["value"]
       15 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useSignalBinding"]
        3 GETTABLEKS                       R2 R0 K1 ["getInfo"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["useSignalState"]
        9 GETTABLEKS                       R3 R0 K1 ["getInfo"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K3 ["readonly"]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R5 R0 K4 ["editProperty"]
       17 CALL                             R4 1 1
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R5 R5 K5 ["createElement"]
       21 GETUPVAL                         R6 3
       22 DUPTABLE                         R7 K8 [{"text", "readonly", "editText"}]
       23 DUPCLOSURE                       R10 K9 [PROTO_0]
       24 NAMECALL                         R8 R1 K10 ["map"]
       26 CALL                             R8 2 1
       27 SETTABLEKS                       R8 R7 K6 ["text"]
       29 SETTABLEKS                       R3 R7 K3 ["readonly"]
       31 SETTABLEKS                       R4 R7 K7 ["editText"]
       33 CALL                             R5 2 -1
       34 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["EditorTextbox"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R0 K9 ["PropertyEditorTypes"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K4 ["Parent"]
       25 GETTABLEKS                       R5 R5 K10 ["React"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R1 K11 ["SignalsReact"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K12 ["Hooks"]
       37 GETTABLEKS                       R7 R7 K13 ["useEditValue"]
       39 CALL                             R6 1 1
       40 DUPCLOSURE                       R7 K14 [PROTO_1]
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R6
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R2
       45 GETTABLEKS                       R8 R4 K15 ["memo"]
       47 MOVE                             R9 R7
       48 CALL                             R8 1 -1
       49 RETURN                           R8 -1
