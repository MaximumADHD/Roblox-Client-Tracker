PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLEKS                       R2 R2 K1 ["settings"]
        5 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        7 LOADK                            R3 K2 ["Expected settings to be present in AvatarSettingsContext"]
        8 GETIMPORT                        R1 K4 [assert]
       10 CALL                             R1 2 0
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K0 ["current"]
       14 GETTABLEKS                       R1 R1 K1 ["settings"]
       16 GETTABLEKS                       R1 R1 K5 ["workspaceGravity"]
       18 GETTABLEKS                       R1 R1 K6 ["set"]
       20 MOVE                             R2 R0
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["workspaceGravitySetting"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U2
        6 NAMECALL                         R0 R0 K1 ["OnInvoke"]
        8 CALL                             R0 3 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useRef"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 SETTABLEKS                       R0 R2 K1 ["current"]
        7 GETTABLEKS                       R4 R0 K2 ["settings"]
        9 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       11 LOADK                            R5 K3 ["Expected settings to be present in AvatarSettingsContext"]
       12 GETIMPORT                        R3 K5 [assert]
       14 CALL                             R3 2 0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K6 ["useEffect"]
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R1
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R2
       22 NEWTABLE                         R5 0 0
       24 CALL                             R3 2 0
       25 GETUPVAL                         R3 2
       26 MOVE                             R4 R1
       27 GETTABLEKS                       R5 R0 K2 ["settings"]
       29 GETTABLEKS                       R5 R5 K7 ["navigationBarSettings"]
       31 GETTABLEKS                       R5 R5 K8 ["avatarType"]
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R6 R6 K8 ["avatarType"]
       36 CALL                             R3 3 0
       37 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["Contexts"]
       15 GETTABLEKS                       R2 R2 K9 ["AvatarSettingsContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Packages"]
       22 GETTABLEKS                       R3 R3 K11 ["React"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K12 ["Util"]
       31 GETTABLEKS                       R4 R4 K13 ["InvokeKeys"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K12 ["Util"]
       40 GETTABLEKS                       R5 R5 K14 ["BridgingFiles"]
       42 GETTABLEKS                       R5 R5 K15 ["StandaloneFiles"]
       44 GETTABLEKS                       R5 R5 K16 ["standaloneInvokeUtils"]
       46 CALL                             R4 1 1
       47 GETTABLEKS                       R5 R4 K17 ["useCreateInvokes"]
       49 DUPCLOSURE                       R6 K18 [PROTO_2]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R5
       53 RETURN                           R6 1
