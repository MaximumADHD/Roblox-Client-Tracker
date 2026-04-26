PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["onInitialization"]
        4 GETTABLEKS                       R2 R3 K1 ["fromPlugin"]
        6 NAMECALL                         R0 R0 K2 ["Invoke"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 2
       10 CALL                             R0 0 1
       11 JUMPIFNOT                        R0 ; [+17]
       12 GETUPVAL                         R2 3
       13 GETTABLEKS                       R1 R2 K3 ["current"]
       15 GETTABLEKS                       R0 R1 K4 ["settings"]
       17 JUMPIFNOT                        R0 ; [+11]
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R3 R4 K3 ["current"]
       21 GETTABLEKS                       R2 R3 K4 ["settings"]
       23 GETTABLEKS                       R1 R2 K5 ["navigationBarSettings"]
       25 GETTABLEKS                       R0 R1 K6 ["setPreviewToggled"]
       27 LOADB                            R1 0
       28 CALL                             R0 1 0
       29 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["CreateAvatarRules"]
        4 GETTABLEKS                       R2 R3 K1 ["fromPlugin"]
        6 NAMECALL                         R0 R0 K2 ["Invoke"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["current"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 GETIMPORT                        R1 K3 [coroutine.status]
        8 GETUPVAL                         R2 2
        9 CALL                             R1 1 1
       10 JUMPIFNOTEQKS                    R1 K4 ["suspended"] ; [+6]
       12 GETIMPORT                        R1 K7 [task.spawn]
       14 GETUPVAL                         R2 2
       15 CALL                             R1 1 0
       16 RETURN                           R0 0
       17 LOADB                            R1 1
       18 SETUPVAL                         R1 3
       19 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R1 K0 ["Avatar Setting Sync Failed"]
        1 FASTCALL1                        ASSERT R1 ; [+2]
        2 GETIMPORT                        R0 K2 [assert]
        4 CALL                             R0 1 0
        5 GETIMPORT                        R0 K5 [coroutine.status]
        7 GETUPVAL                         R1 0
        8 CALL                             R0 1 1
        9 JUMPIFNOTEQKS                    R0 K6 ["suspended"] ; [+5]
       11 GETIMPORT                        R0 K9 [task.spawn]
       13 GETUPVAL                         R1 0
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["onInitialization"]
        4 GETTABLEKS                       R2 R3 K1 ["fromAssetDm"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 NAMECALL                         R0 R0 K2 ["OnInvoke"]
       13 CALL                             R0 3 0
       14 GETUPVAL                         R0 0
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R3 R4 K3 ["CreateAvatarRules"]
       18 GETTABLEKS                       R2 R3 K1 ["fromAssetDm"]
       20 NEWCLOSURE                       R3 P1
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U1
       23 NAMECALL                         R0 R0 K2 ["OnInvoke"]
       25 CALL                             R0 3 0
       26 GETIMPORT                        R0 K6 [coroutine.running]
       28 CALL                             R0 0 1
       29 LOADB                            R1 0
       30 GETUPVAL                         R2 0
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R4 R5 K7 ["syncAvatarSettings"]
       34 NEWCLOSURE                       R5 P2
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          UPVAL U3
       37 CAPTURE                          VAL R0
       38 CAPTURE                          REF R1
       39 NAMECALL                         R2 R2 K2 ["OnInvoke"]
       41 CALL                             R2 3 0
       42 GETIMPORT                        R2 K10 [task.delay]
       44 LOADN                            R3 10
       45 NEWCLOSURE                       R4 P3
       46 CAPTURE                          VAL R0
       47 CALL                             R2 2 0
       48 LOADB                            R1 0
       49 GETUPVAL                         R2 0
       50 GETUPVAL                         R6 1
       51 GETTABLEKS                       R5 R6 K0 ["onInitialization"]
       53 GETTABLEKS                       R4 R5 K11 ["fromPlugin"]
       55 NAMECALL                         R2 R2 K12 ["Invoke"]
       57 CALL                             R2 2 0
       58 GETUPVAL                         R2 0
       59 GETUPVAL                         R6 1
       60 GETTABLEKS                       R5 R6 K3 ["CreateAvatarRules"]
       62 GETTABLEKS                       R4 R5 K11 ["fromPlugin"]
       64 NAMECALL                         R2 R2 K12 ["Invoke"]
       66 CALL                             R2 2 0
       67 JUMPIF                           R1 ; [+4]
       68 GETIMPORT                        R2 K14 [coroutine.yield]
       70 MOVE                             R3 R0
       71 CALL                             R2 1 0
       72 CLOSEUPVALS                      R1
       73 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useRef"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 SETTABLEKS                       R0 R2 K1 ["current"]
        7 GETTABLEKS                       R4 R0 K2 ["settings"]
        9 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       11 LOADK                            R5 K3 ["Expected settings to be present in AvatarSettingsContext"]
       12 GETIMPORT                        R3 K5 [assert]
       14 CALL                             R3 2 0
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K6 ["useEffect"]
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R1
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R2
       23 CAPTURE                          UPVAL U3
       24 NEWTABLE                         R5 0 0
       26 CALL                             R3 2 0
       27 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["AvatarSettingsSyncTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R6 R0 K6 ["Src"]
       20 GETTABLEKS                       R5 R6 K9 ["Components"]
       22 GETTABLEKS                       R4 R5 K10 ["Contexts"]
       24 GETTABLEKS                       R3 R4 K11 ["AvatarSettingsContext"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R5 R0 K12 ["Packages"]
       31 GETTABLEKS                       R4 R5 K13 ["React"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R7 R0 K6 ["Src"]
       38 GETTABLEKS                       R6 R7 K7 ["Util"]
       40 GETTABLEKS                       R5 R6 K14 ["InvokeKeys"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R10 R0 K6 ["Src"]
       47 GETTABLEKS                       R9 R10 K7 ["Util"]
       49 GETTABLEKS                       R8 R9 K15 ["BridgingFiles"]
       51 GETTABLEKS                       R7 R8 K16 ["StandaloneFiles"]
       53 GETTABLEKS                       R6 R7 K17 ["syncPropertiesFromAssetDm"]
       55 CALL                             R5 1 1
       56 GETIMPORT                        R6 K5 [require]
       58 GETTABLEKS                       R9 R0 K6 ["Src"]
       60 GETTABLEKS                       R8 R9 K18 ["Flags"]
       62 GETTABLEKS                       R7 R8 K19 ["getFFlagFixPreviewToggleOn"]
       64 CALL                             R6 1 1
       65 DUPCLOSURE                       R7 K20 [PROTO_5]
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R5
       70 RETURN                           R7 1
