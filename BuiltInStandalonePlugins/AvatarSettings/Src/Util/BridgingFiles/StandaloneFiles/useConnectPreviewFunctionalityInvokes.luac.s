PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+28]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["current"]
        6 GETTABLEKS                       R1 R2 K1 ["settings"]
        8 FASTCALL2K                       ASSERT R1 K2 ; [+4]
       10 LOADK                            R2 K2 ["Expected settings to be present in AvatarSettingsContext"]
       11 GETIMPORT                        R0 K4 [assert]
       13 CALL                             R0 2 0
       14 GETUPVAL                         R0 2
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R3 R4 K5 ["previewActivated"]
       18 GETTABLEKS                       R2 R3 K6 ["fromPlugin"]
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R5 R6 K0 ["current"]
       23 GETTABLEKS                       R4 R5 K1 ["settings"]
       25 GETTABLEKS                       R3 R4 K7 ["currentSettingsPage"]
       27 NAMECALL                         R0 R0 K8 ["Invoke"]
       29 CALL                             R0 3 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R0 2
       32 GETUPVAL                         R4 3
       33 GETTABLEKS                       R3 R4 K5 ["previewActivated"]
       35 GETTABLEKS                       R2 R3 K6 ["fromPlugin"]
       37 GETUPVAL                         R5 4
       38 GETTABLEKS                       R4 R5 K1 ["settings"]
       40 GETTABLEKS                       R3 R4 K7 ["currentSettingsPage"]
       42 NAMECALL                         R0 R0 K8 ["Invoke"]
       44 CALL                             R0 3 0
       45 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 LOADB                            R1 0
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 1
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K1 ["previewDeactivated"]
       13 GETTABLEKS                       R2 R3 K2 ["fromPlugin"]
       15 NAMECALL                         R0 R0 K3 ["Invoke"]
       17 CALL                             R0 2 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 LOADB                            R1 1
        7 SETTABLEKS                       R1 R0 K0 ["current"]
        9 GETUPVAL                         R0 2
       10 CALL                             R0 0 1
       11 JUMPIFNOT                        R0 ; [+23]
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R2 R3 K0 ["current"]
       15 GETTABLEKS                       R1 R2 K1 ["settings"]
       17 FASTCALL2K                       ASSERT R1 K2 ; [+4]
       19 LOADK                            R2 K2 ["Expected settings to be present in AvatarSettingsContext"]
       20 GETIMPORT                        R0 K4 [assert]
       22 CALL                             R0 2 0
       23 GETUPVAL                         R4 3
       24 GETTABLEKS                       R3 R4 K0 ["current"]
       26 GETTABLEKS                       R2 R3 K1 ["settings"]
       28 GETTABLEKS                       R1 R2 K5 ["navigationBarSettings"]
       30 GETTABLEKS                       R0 R1 K6 ["setPreviewToggled"]
       32 LOADB                            R1 0
       33 CALL                             R0 1 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R3 4
       36 GETTABLEKS                       R2 R3 K1 ["settings"]
       38 GETTABLEKS                       R1 R2 K5 ["navigationBarSettings"]
       40 GETTABLEKS                       R0 R1 K6 ["setPreviewToggled"]
       42 LOADB                            R1 0
       43 CALL                             R0 1 0
       44 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["previewDeactivated"]
        4 GETTABLEKS                       R2 R3 K1 ["fromAssetDm"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U6
       12 NAMECALL                         R0 R0 K2 ["OnInvoke"]
       14 CALL                             R0 3 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 LOADB                            R1 0
        7 SETTABLEKS                       R1 R0 K0 ["current"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R2 R3 K1 ["settings"]
       12 GETTABLEKS                       R1 R2 K2 ["navigationBarSettings"]
       14 GETTABLEKS                       R0 R1 K3 ["setPreviewToggled"]
       16 LOADB                            R1 0
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["deactivePreviewOnDescendantAdded"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 NAMECALL                         R0 R0 K1 ["OnInvoke"]
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["settings"]
        4 GETTABLEKS                       R2 R3 K1 ["navigationBarSettings"]
        6 GETTABLEKS                       R1 R2 K2 ["previewToggled"]
        8 SETTABLEKS                       R1 R0 K3 ["current"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K0 ["settings"]
       13 GETTABLEKS                       R1 R2 K1 ["navigationBarSettings"]
       15 GETTABLEKS                       R0 R1 K2 ["previewToggled"]
       17 JUMPIFNOT                        R0 ; [+46]
       18 GETUPVAL                         R0 2
       19 CALL                             R0 0 1
       20 JUMPIFNOT                        R0 ; [+28]
       21 GETUPVAL                         R3 3
       22 GETTABLEKS                       R2 R3 K3 ["current"]
       24 GETTABLEKS                       R1 R2 K0 ["settings"]
       26 FASTCALL2K                       ASSERT R1 K4 ; [+4]
       28 LOADK                            R2 K4 ["Expected settings to be present in AvatarSettingsContext"]
       29 GETIMPORT                        R0 K6 [assert]
       31 CALL                             R0 2 0
       32 GETUPVAL                         R0 4
       33 GETUPVAL                         R4 5
       34 GETTABLEKS                       R3 R4 K7 ["previewActivated"]
       36 GETTABLEKS                       R2 R3 K8 ["fromPlugin"]
       38 GETUPVAL                         R6 3
       39 GETTABLEKS                       R5 R6 K3 ["current"]
       41 GETTABLEKS                       R4 R5 K0 ["settings"]
       43 GETTABLEKS                       R3 R4 K9 ["currentSettingsPage"]
       45 NAMECALL                         R0 R0 K10 ["Invoke"]
       47 CALL                             R0 3 0
       48 RETURN                           R0 0
       49 GETUPVAL                         R0 4
       50 GETUPVAL                         R4 5
       51 GETTABLEKS                       R3 R4 K7 ["previewActivated"]
       53 GETTABLEKS                       R2 R3 K8 ["fromPlugin"]
       55 GETUPVAL                         R5 1
       56 GETTABLEKS                       R4 R5 K0 ["settings"]
       58 GETTABLEKS                       R3 R4 K9 ["currentSettingsPage"]
       60 NAMECALL                         R0 R0 K10 ["Invoke"]
       62 CALL                             R0 3 0
       63 RETURN                           R0 0
       64 GETUPVAL                         R1 6
       65 GETTABLEKS                       R0 R1 K3 ["current"]
       67 JUMPIFNOT                        R0 ; [+5]
       68 GETUPVAL                         R0 6
       69 LOADB                            R1 0
       70 SETTABLEKS                       R1 R0 K3 ["current"]
       72 RETURN                           R0 0
       73 GETUPVAL                         R0 4
       74 GETUPVAL                         R4 5
       75 GETTABLEKS                       R3 R4 K11 ["previewDeactivated"]
       77 GETTABLEKS                       R2 R3 K8 ["fromPlugin"]
       79 NAMECALL                         R0 R0 K10 ["Invoke"]
       81 CALL                             R0 2 0
       82 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["settings"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["Expected settings to be present in AvatarSettingsContext"]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 LOADNIL                          R2
        9 GETUPVAL                         R3 0
       10 CALL                             R3 0 1
       11 JUMPIFNOT                        R3 ; [+8]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K4 ["useRef"]
       15 MOVE                             R4 R0
       16 CALL                             R3 1 1
       17 MOVE                             R2 R3
       18 SETTABLEKS                       R0 R2 K5 ["current"]
       20 NEWCLOSURE                       R3 P0
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          REF R2
       23 CAPTURE                          VAL R1
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          VAL R0
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R4 R5 K4 ["useRef"]
       29 LOADB                            R5 0
       30 CALL                             R4 1 1
       31 NEWCLOSURE                       R5 P1
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U2
       35 GETUPVAL                         R7 1
       36 GETTABLEKS                       R6 R7 K4 ["useRef"]
       38 GETTABLEKS                       R9 R0 K0 ["settings"]
       40 GETTABLEKS                       R8 R9 K6 ["navigationBarSettings"]
       42 GETTABLEKS                       R7 R8 K7 ["previewToggled"]
       44 CALL                             R6 1 1
       45 GETUPVAL                         R8 1
       46 GETTABLEKS                       R7 R8 K8 ["useEffect"]
       48 NEWCLOSURE                       R8 P2
       49 CAPTURE                          VAL R1
       50 CAPTURE                          UPVAL U2
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R4
       53 CAPTURE                          UPVAL U0
       54 CAPTURE                          REF R2
       55 CAPTURE                          VAL R0
       56 NEWTABLE                         R9 0 0
       58 CALL                             R7 2 0
       59 GETUPVAL                         R8 1
       60 GETTABLEKS                       R7 R8 K8 ["useEffect"]
       62 NEWCLOSURE                       R8 P3
       63 CAPTURE                          VAL R1
       64 CAPTURE                          UPVAL U2
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R0
       68 NEWTABLE                         R9 0 0
       70 CALL                             R7 2 0
       71 GETUPVAL                         R8 1
       72 GETTABLEKS                       R7 R8 K8 ["useEffect"]
       74 NEWCLOSURE                       R8 P4
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R0
       77 CAPTURE                          UPVAL U0
       78 CAPTURE                          REF R2
       79 CAPTURE                          VAL R1
       80 CAPTURE                          UPVAL U2
       81 CAPTURE                          VAL R4
       82 NEWTABLE                         R9 0 1
       84 GETTABLEKS                       R12 R0 K0 ["settings"]
       86 GETTABLEKS                       R11 R12 K6 ["navigationBarSettings"]
       88 GETTABLEKS                       R10 R11 K7 ["previewToggled"]
       90 SETLIST                          R9 R10 1 [1]
       92 CALL                             R7 2 0
       93 CLOSEUPVALS                      R2
       94 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["settings"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["Expected settings to be present in AvatarSettingsContext"]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 GETUPVAL                         R2 0
        9 MOVE                             R3 R0
       10 MOVE                             R4 R1
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

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
       27 GETTABLEKS                       R8 R0 K6 ["Src"]
       29 GETTABLEKS                       R7 R8 K12 ["Util"]
       31 GETTABLEKS                       R6 R7 K13 ["BridgingFiles"]
       33 GETTABLEKS                       R5 R6 K14 ["StandaloneFiles"]
       35 GETTABLEKS                       R4 R5 K15 ["standaloneInvokeUtils"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K5 [require]
       40 GETTABLEKS                       R7 R0 K6 ["Src"]
       42 GETTABLEKS                       R6 R7 K16 ["Flags"]
       44 GETTABLEKS                       R5 R6 K17 ["getFFlagAvatarSettingsStaleStateFix"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K5 [require]
       49 GETTABLEKS                       R8 R0 K6 ["Src"]
       51 GETTABLEKS                       R7 R8 K12 ["Util"]
       53 GETTABLEKS                       R6 R7 K18 ["InvokeKeys"]
       55 CALL                             R5 1 1
       56 DUPCLOSURE                       R6 K19 [PROTO_7]
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R5
       60 DUPCLOSURE                       R7 K20 [PROTO_8]
       61 CAPTURE                          VAL R6
       62 RETURN                           R7 1
