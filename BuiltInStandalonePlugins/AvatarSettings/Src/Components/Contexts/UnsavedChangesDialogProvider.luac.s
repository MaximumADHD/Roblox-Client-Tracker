PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+18]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R1 R1 K0 ["Fragment"]
        7 LOADNIL                          R2
        8 DUPTABLE                         R3 K3 [{"UnsavedChangesDialog", "PlaceSaveWarning"}]
        9 GETUPVAL                         R4 1
       10 GETUPVAL                         R5 3
       11 CALL                             R4 1 1
       12 SETTABLEKS                       R4 R3 K1 ["UnsavedChangesDialog"]
       14 GETUPVAL                         R4 1
       15 GETUPVAL                         R5 4
       16 CALL                             R4 1 1
       17 SETTABLEKS                       R4 R3 K2 ["PlaceSaveWarning"]
       19 CALL                             R0 3 -1
       20 RETURN                           R0 -1
       21 GETUPVAL                         R0 1
       22 GETUPVAL                         R1 3
       23 NEWTABLE                         R2 0 0
       25 CALL                             R0 2 -1
       26 RETURN                           R0 -1

PROTO_1:
        0 DUPTABLE                         R1 K3 [{[1] = False, ["getUnsavedChangesDialog"]}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K2 ["getUnsavedChangesDialog"]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K4 ["Provider"]
        8 DUPTABLE                         R4 K6 [{"value"}]
        9 SETTABLEKS                       R1 R4 K5 ["value"]
       11 GETTABLEKS                       R5 R0 K7 ["children"]
       13 CALL                             R2 3 -1
       14 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["PlaceSaveWarning"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K7 ["Components"]
       29 GETTABLEKS                       R4 R4 K11 ["UnsavedChangesDialog"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Src"]
       36 GETTABLEKS                       R5 R5 K7 ["Components"]
       38 GETTABLEKS                       R5 R5 K12 ["Contexts"]
       40 GETTABLEKS                       R5 R5 K13 ["UnsavedChangesDialogContext"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Src"]
       47 GETTABLEKS                       R6 R6 K14 ["Flags"]
       49 GETTABLEKS                       R6 R6 K15 ["getFFlagAvatarSettingsWarnOnPlaceSave"]
       51 CALL                             R5 1 1
       52 GETTABLEKS                       R6 R2 K16 ["createElement"]
       54 DUPCLOSURE                       R7 K17 [PROTO_0]
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R1
       60 DUPCLOSURE                       R8 K18 [PROTO_1]
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R4
       64 RETURN                           R8 1
