PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+23]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["current"]
        6 GETTABLEKS                       R2 R3 K1 ["settings"]
        8 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       10 LOADK                            R3 K2 ["Expected settings to be present in AvatarSettingsContext"]
       11 GETIMPORT                        R1 K4 [assert]
       13 CALL                             R1 2 0
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R4 R5 K0 ["current"]
       17 GETTABLEKS                       R3 R4 K1 ["settings"]
       19 GETTABLEKS                       R2 R3 K5 ["workspaceGravity"]
       21 GETTABLEKS                       R1 R2 K6 ["set"]
       23 MOVE                             R2 R0
       24 CALL                             R1 1 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R4 2
       27 GETTABLEKS                       R3 R4 K1 ["settings"]
       29 GETTABLEKS                       R2 R3 K5 ["workspaceGravity"]
       31 GETTABLEKS                       R1 R2 K6 ["set"]
       33 MOVE                             R2 R0
       34 CALL                             R1 1 0
       35 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["workspaceGravitySetting"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 NAMECALL                         R0 R0 K1 ["OnInvoke"]
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R2
        1 GETUPVAL                         R3 0
        2 CALL                             R3 0 1
        3 JUMPIFNOT                        R3 ; [+8]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K0 ["useRef"]
        7 MOVE                             R4 R0
        8 CALL                             R3 1 1
        9 MOVE                             R2 R3
       10 SETTABLEKS                       R0 R2 K1 ["current"]
       12 GETTABLEKS                       R4 R0 K2 ["settings"]
       14 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       16 LOADK                            R5 K3 ["Expected settings to be present in AvatarSettingsContext"]
       17 GETIMPORT                        R3 K5 [assert]
       19 CALL                             R3 2 0
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R3 R4 K6 ["useEffect"]
       23 NEWCLOSURE                       R4 P0
       24 CAPTURE                          VAL R1
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          REF R2
       28 CAPTURE                          VAL R0
       29 NEWTABLE                         R5 0 0
       31 CALL                             R3 2 0
       32 GETUPVAL                         R3 3
       33 MOVE                             R4 R1
       34 GETTABLEKS                       R7 R0 K2 ["settings"]
       36 GETTABLEKS                       R6 R7 K7 ["navigationBarSettings"]
       38 GETTABLEKS                       R5 R6 K8 ["avatarType"]
       40 GETUPVAL                         R7 2
       41 GETTABLEKS                       R6 R7 K8 ["avatarType"]
       43 CALL                             R3 3 0
       44 CLOSEUPVALS                      R2
       45 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Components"]
       13 GETTABLEKS                       R3 R4 K8 ["Contexts"]
       15 GETTABLEKS                       R2 R3 K9 ["AvatarSettingsContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Packages"]
       22 GETTABLEKS                       R3 R4 K11 ["React"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Src"]
       29 GETTABLEKS                       R5 R6 K12 ["Flags"]
       31 GETTABLEKS                       R4 R5 K13 ["getFFlagAvatarSettingsStaleStateFix"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R7 R0 K6 ["Src"]
       38 GETTABLEKS                       R6 R7 K14 ["Util"]
       40 GETTABLEKS                       R5 R6 K15 ["InvokeKeys"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R10 R0 K6 ["Src"]
       47 GETTABLEKS                       R9 R10 K14 ["Util"]
       49 GETTABLEKS                       R8 R9 K16 ["BridgingFiles"]
       51 GETTABLEKS                       R7 R8 K17 ["StandaloneFiles"]
       53 GETTABLEKS                       R6 R7 K18 ["standaloneInvokeUtils"]
       55 CALL                             R5 1 1
       56 GETTABLEKS                       R6 R5 K19 ["useCreateInvokes"]
       58 DUPCLOSURE                       R7 K20 [PROTO_2]
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R6
       63 RETURN                           R7 1
