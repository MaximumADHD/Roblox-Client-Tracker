PROTO_0:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R1 K3 [{[1] = False, ["getUnsavedChangesDialog"]}]
        1 DUPCLOSURE                       R2 K4 [PROTO_0]
        2 SETTABLEKS                       R2 R1 K2 ["getUnsavedChangesDialog"]
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K5 ["Provider"]
        8 DUPTABLE                         R4 K7 [{"value"}]
        9 SETTABLEKS                       R1 R4 K6 ["value"]
       11 GETTABLEKS                       R5 R0 K8 ["children"]
       13 CALL                             R2 3 -1
       14 RETURN                           R2 -1

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
       20 GETTABLEKS                       R3 R3 K10 ["Contexts"]
       22 GETTABLEKS                       R3 R3 K11 ["UnsavedChangesDialogContext"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R1 K12 ["createElement"]
       27 DUPCLOSURE                       R4 K13 [PROTO_1]
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R2
       30 RETURN                           R4 1
