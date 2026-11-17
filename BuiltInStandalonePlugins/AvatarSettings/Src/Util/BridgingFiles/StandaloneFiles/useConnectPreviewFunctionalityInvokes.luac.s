PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 GETTABLEKS                       R1 R1 K1 ["settings"]
        5 FASTCALL2K                       ASSERT R1 K2 ; [+4]
        7 LOADK                            R2 K2 ["Expected settings to be present in AvatarSettingsContext"]
        8 GETIMPORT                        R0 K4 [assert]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 1
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K5 ["previewActivated"]
       15 GETTABLEKS                       R2 R2 K6 ["fromPlugin"]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K0 ["current"]
       20 GETTABLEKS                       R3 R3 K1 ["settings"]
       22 GETTABLEKS                       R3 R3 K7 ["currentSettingsPage"]
       24 NAMECALL                         R0 R0 K8 ["Invoke"]
       26 CALL                             R0 3 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 LOADB                            R1 0
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 1
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K1 ["previewDeactivated"]
       13 GETTABLEKS                       R2 R2 K2 ["fromPlugin"]
       15 NAMECALL                         R0 R0 K3 ["Invoke"]
       17 CALL                             R0 2 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 LOADB                            R1 1
        7 SETTABLEKS                       R1 R0 K0 ["current"]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K0 ["current"]
       12 GETTABLEKS                       R1 R1 K1 ["settings"]
       14 FASTCALL2K                       ASSERT R1 K2 ; [+4]
       16 LOADK                            R2 K2 ["Expected settings to be present in AvatarSettingsContext"]
       17 GETIMPORT                        R0 K4 [assert]
       19 CALL                             R0 2 0
       20 GETUPVAL                         R0 2
       21 GETTABLEKS                       R0 R0 K0 ["current"]
       23 GETTABLEKS                       R0 R0 K1 ["settings"]
       25 GETTABLEKS                       R0 R0 K5 ["navigationBarSettings"]
       27 GETTABLEKS                       R0 R0 K6 ["setPreviewToggled"]
       29 LOADB                            R1 0
       30 CALL                             R0 1 0
       31 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["previewDeactivated"]
        4 GETTABLEKS                       R2 R2 K1 ["fromAssetDm"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 NAMECALL                         R0 R0 K2 ["OnInvoke"]
       12 CALL                             R0 3 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 LOADB                            R1 0
        7 SETTABLEKS                       R1 R0 K0 ["current"]
        9 GETUPVAL                         R0 2
       10 GETTABLEKS                       R0 R0 K1 ["settings"]
       12 GETTABLEKS                       R0 R0 K2 ["navigationBarSettings"]
       14 GETTABLEKS                       R0 R0 K3 ["setPreviewToggled"]
       16 LOADB                            R1 0
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["deactivePreviewOnDescendantAdded"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 NAMECALL                         R0 R0 K1 ["OnInvoke"]
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["settings"]
        4 GETTABLEKS                       R1 R1 K1 ["navigationBarSettings"]
        6 GETTABLEKS                       R1 R1 K2 ["previewToggled"]
        8 SETTABLEKS                       R1 R0 K3 ["current"]
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R0 R0 K0 ["settings"]
       13 GETTABLEKS                       R0 R0 K1 ["navigationBarSettings"]
       15 GETTABLEKS                       R0 R0 K2 ["previewToggled"]
       17 JUMPIFNOT                        R0 ; [+28]
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R1 R1 K3 ["current"]
       21 GETTABLEKS                       R1 R1 K0 ["settings"]
       23 FASTCALL2K                       ASSERT R1 K4 ; [+4]
       25 LOADK                            R2 K4 ["Expected settings to be present in AvatarSettingsContext"]
       26 GETIMPORT                        R0 K6 [assert]
       28 CALL                             R0 2 0
       29 GETUPVAL                         R0 3
       30 GETUPVAL                         R2 4
       31 GETTABLEKS                       R2 R2 K7 ["previewActivated"]
       33 GETTABLEKS                       R2 R2 K8 ["fromPlugin"]
       35 GETUPVAL                         R3 2
       36 GETTABLEKS                       R3 R3 K3 ["current"]
       38 GETTABLEKS                       R3 R3 K0 ["settings"]
       40 GETTABLEKS                       R3 R3 K9 ["currentSettingsPage"]
       42 NAMECALL                         R0 R0 K10 ["Invoke"]
       44 CALL                             R0 3 0
       45 RETURN                           R0 0
       46 GETUPVAL                         R0 5
       47 GETTABLEKS                       R0 R0 K3 ["current"]
       49 JUMPIFNOT                        R0 ; [+5]
       50 GETUPVAL                         R0 5
       51 LOADB                            R1 0
       52 SETTABLEKS                       R1 R0 K3 ["current"]
       54 RETURN                           R0 0
       55 GETUPVAL                         R0 3
       56 GETUPVAL                         R2 4
       57 GETTABLEKS                       R2 R2 K11 ["previewDeactivated"]
       59 GETTABLEKS                       R2 R2 K8 ["fromPlugin"]
       61 NAMECALL                         R0 R0 K10 ["Invoke"]
       63 CALL                             R0 2 0
       64 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["settings"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["Expected settings to be present in AvatarSettingsContext"]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["useRef"]
       11 MOVE                             R3 R0
       12 CALL                             R2 1 1
       13 SETTABLEKS                       R0 R2 K5 ["current"]
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          VAL R2
       17 CAPTURE                          VAL R1
       18 CAPTURE                          UPVAL U1
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K4 ["useRef"]
       22 LOADB                            R5 0
       23 CALL                             R4 1 1
       24 NEWCLOSURE                       R5 P1
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R1
       27 CAPTURE                          UPVAL U1
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R6 R6 K4 ["useRef"]
       31 GETTABLEKS                       R7 R0 K0 ["settings"]
       33 GETTABLEKS                       R7 R7 K6 ["navigationBarSettings"]
       35 GETTABLEKS                       R7 R7 K7 ["previewToggled"]
       37 CALL                             R6 1 1
       38 GETUPVAL                         R7 0
       39 GETTABLEKS                       R7 R7 K8 ["useEffect"]
       41 NEWCLOSURE                       R8 P2
       42 CAPTURE                          VAL R1
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R2
       47 NEWTABLE                         R9 0 0
       49 CALL                             R7 2 0
       50 GETUPVAL                         R7 0
       51 GETTABLEKS                       R7 R7 K8 ["useEffect"]
       53 NEWCLOSURE                       R8 P3
       54 CAPTURE                          VAL R1
       55 CAPTURE                          UPVAL U1
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R0
       59 NEWTABLE                         R9 0 0
       61 CALL                             R7 2 0
       62 GETUPVAL                         R7 0
       63 GETTABLEKS                       R7 R7 K8 ["useEffect"]
       65 NEWCLOSURE                       R8 P4
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R0
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R1
       70 CAPTURE                          UPVAL U1
       71 CAPTURE                          VAL R4
       72 NEWTABLE                         R9 0 1
       74 GETTABLEKS                       R10 R0 K0 ["settings"]
       76 GETTABLEKS                       R10 R10 K6 ["navigationBarSettings"]
       78 GETTABLEKS                       R10 R10 K7 ["previewToggled"]
       80 SETLIST                          R9 R10 1 [1]
       82 CALL                             R7 2 0
       83 RETURN                           R0 0

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
       31 GETTABLEKS                       R4 R4 K13 ["BridgingFiles"]
       33 GETTABLEKS                       R4 R4 K14 ["StandaloneFiles"]
       35 GETTABLEKS                       R4 R4 K15 ["standaloneInvokeUtils"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K5 [require]
       40 GETTABLEKS                       R5 R0 K6 ["Src"]
       42 GETTABLEKS                       R5 R5 K12 ["Util"]
       44 GETTABLEKS                       R5 R5 K16 ["InvokeKeys"]
       46 CALL                             R4 1 1
       47 DUPCLOSURE                       R5 K17 [PROTO_7]
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R4
       50 DUPCLOSURE                       R6 K18 [PROTO_8]
       51 CAPTURE                          VAL R5
       52 RETURN                           R6 1
