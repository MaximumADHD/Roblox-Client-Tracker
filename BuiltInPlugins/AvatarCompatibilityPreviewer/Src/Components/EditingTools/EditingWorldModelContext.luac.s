PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K1 ["current"]
        4 SUBK                             R1 R2 K0 [1]
        5 SETTABLEKS                       R1 R0 K1 ["current"]
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K1 ["current"]
        4 ADDK                             R1 R2 K0 [1]
        5 SETTABLEKS                       R1 R0 K1 ["current"]
        7 NEWCLOSURE                       R0 P0
        8 CAPTURE                          UPVAL U0
        9 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 LOADN                            R2 0
        4 JUMPIFLT                         R2 R1 ; [+2]
        6 LOADB                            R0 0 +1
        7 LOADB                            R0 1
        8 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["getFFlagAvatarPreviewerEditingTools() must be enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K3 ["useRef"]
       11 LOADN                            R2 0
       12 CALL                             R1 1 1
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K4 ["useCallback"]
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          VAL R1
       18 NEWTABLE                         R4 0 1
       20 MOVE                             R5 R1
       21 SETLIST                          R4 R5 1 [1]
       23 CALL                             R2 2 1
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K4 ["useCallback"]
       27 NEWCLOSURE                       R4 P1
       28 CAPTURE                          VAL R1
       29 NEWTABLE                         R5 0 1
       31 MOVE                             R6 R1
       32 SETLIST                          R5 R6 1 [1]
       34 CALL                             R3 2 1
       35 DUPTABLE                         R4 K8 [{"isEditingWorldModel", "getIsEditingWorldModel", "pushIsEditingWorldModel"}]
       36 GETTABLEKS                       R6 R1 K9 ["current"]
       38 LOADN                            R7 0
       39 JUMPIFLT                         R7 R6 ; [+2]
       41 LOADB                            R5 0 +1
       42 LOADB                            R5 1
       43 SETTABLEKS                       R5 R4 K5 ["isEditingWorldModel"]
       45 SETTABLEKS                       R3 R4 K6 ["getIsEditingWorldModel"]
       47 SETTABLEKS                       R2 R4 K7 ["pushIsEditingWorldModel"]
       49 GETUPVAL                         R5 1
       50 GETTABLEKS                       R5 R5 K10 ["createElement"]
       52 GETUPVAL                         R6 2
       53 GETTABLEKS                       R6 R6 K11 ["Provider"]
       55 DUPTABLE                         R7 K13 [{"value"}]
       56 SETTABLEKS                       R4 R7 K12 ["value"]
       58 GETTABLEKS                       R8 R0 K14 ["children"]
       60 CALL                             R5 3 -1
       61 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["createUnimplemented"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Flags"]
       29 GETTABLEKS                       R4 R4 K12 ["getFFlagAvatarPreviewerEditingTools"]
       31 CALL                             R3 1 1
       32 DUPTABLE                         R4 K16 [{"isEditingWorldModel", "getIsEditingWorldModel", "pushIsEditingWorldModel"}]
       33 LOADB                            R5 0
       34 SETTABLEKS                       R5 R4 K13 ["isEditingWorldModel"]
       36 MOVE                             R5 R2
       37 LOADK                            R6 K14 ["getIsEditingWorldModel"]
       38 CALL                             R5 1 1
       39 SETTABLEKS                       R5 R4 K14 ["getIsEditingWorldModel"]
       41 MOVE                             R5 R2
       42 LOADK                            R6 K15 ["pushIsEditingWorldModel"]
       43 CALL                             R5 1 1
       44 SETTABLEKS                       R5 R4 K15 ["pushIsEditingWorldModel"]
       46 GETTABLEKS                       R5 R1 K17 ["createContext"]
       48 MOVE                             R6 R4
       49 CALL                             R5 1 1
       50 DUPCLOSURE                       R6 K18 [PROTO_3]
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R5
       54 DUPTABLE                         R7 K21 [{"Context", "Provider"}]
       55 SETTABLEKS                       R5 R7 K19 ["Context"]
       57 SETTABLEKS                       R6 R7 K20 ["Provider"]
       59 RETURN                           R7 1
