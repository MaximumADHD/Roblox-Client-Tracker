PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NEWTABLE                         R2 0 0
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"default", "getUnsavedChangesDialog"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["default"]
        4 DUPCLOSURE                       R2 K3 [PROTO_0]
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 SETTABLEKS                       R2 R1 K1 ["getUnsavedChangesDialog"]
        9 GETUPVAL                         R2 0
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K4 ["Provider"]
       13 DUPTABLE                         R4 K6 [{"value"}]
       14 SETTABLEKS                       R1 R4 K5 ["value"]
       16 GETTABLEKS                       R5 R0 K7 ["children"]
       18 CALL                             R2 3 -1
       19 RETURN                           R2 -1

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
