PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["ContextStack"]
        6 DUPTABLE                         R3 K3 [{"providers"}]
        7 NEWTABLE                         R4 0 3
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R5 R6 K0 ["createElement"]
       12 GETUPVAL                         R7 2
       13 GETTABLEKS                       R6 R7 K4 ["EditableDataModelProvider"]
       15 DUPTABLE                         R7 K6 [{"plugin"}]
       16 GETTABLEKS                       R8 R0 K5 ["plugin"]
       18 SETTABLEKS                       R8 R7 K5 ["plugin"]
       20 CALL                             R5 2 1
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R6 R7 K0 ["createElement"]
       24 GETUPVAL                         R8 3
       25 GETTABLEKS                       R7 R8 K4 ["EditableDataModelProvider"]
       27 DUPTABLE                         R8 K9 [{"selectedInstance", "updateContextFunction"}]
       28 GETTABLEKS                       R9 R0 K7 ["selectedInstance"]
       30 SETTABLEKS                       R9 R8 K7 ["selectedInstance"]
       32 GETTABLEKS                       R9 R0 K8 ["updateContextFunction"]
       34 SETTABLEKS                       R9 R8 K8 ["updateContextFunction"]
       36 CALL                             R6 2 1
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R7 R8 K0 ["createElement"]
       40 GETUPVAL                         R9 4
       41 GETTABLEKS                       R8 R9 K4 ["EditableDataModelProvider"]
       43 DUPTABLE                         R9 K10 [{"selectedInstance"}]
       44 GETTABLEKS                       R10 R0 K7 ["selectedInstance"]
       46 SETTABLEKS                       R10 R9 K7 ["selectedInstance"]
       48 CALL                             R7 2 -1
       49 SETLIST                          R4 R5 -1 [1]
       51 SETTABLEKS                       R4 R3 K2 ["providers"]
       53 GETTABLEKS                       R4 R0 K11 ["children"]
       55 CALL                             R1 3 -1
       56 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FaceControlEditorComponent"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ReactUtils"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Contexts"]
       23 GETTABLEKS                       R5 R6 K10 ["NetworkingContext"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Contexts"]
       30 GETTABLEKS                       R6 R7 K11 ["FaceControlEditorContext"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K9 ["Contexts"]
       37 GETTABLEKS                       R7 R8 K12 ["FocusOnFaceContext"]
       39 CALL                             R6 1 1
       40 DUPCLOSURE                       R7 K13 [PROTO_0]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R6
       46 RETURN                           R7 1
