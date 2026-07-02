PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NEWTABLE                         R2 0 0
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 DUPTABLE                         R1 K3 [{[1] = False, ["getUnsavedChangesDialog"]}]
        1 DUPCLOSURE                       R2 K4 [PROTO_0]
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 SETTABLEKS                       R2 R1 K2 ["getUnsavedChangesDialog"]
        6 GETUPVAL                         R2 0
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K5 ["Provider"]
       10 DUPTABLE                         R4 K7 [{"value"}]
       11 SETTABLEKS                       R1 R4 K6 ["value"]
       13 GETTABLEKS                       R5 R0 K8 ["children"]
       15 CALL                             R2 3 -1
       16 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Components"]
       20 GETTABLEKS                       R3 R3 K10 ["UnsavedChangesDialog"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Components"]
       29 GETTABLEKS                       R4 R4 K11 ["Contexts"]
       31 GETTABLEKS                       R4 R4 K12 ["UnsavedChangesDialogContext"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R1 K13 ["createElement"]
       36 DUPCLOSURE                       R5 K14 [PROTO_1]
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R3
       40 RETURN                           R5 1
