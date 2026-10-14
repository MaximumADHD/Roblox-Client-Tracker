PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["onInitialization"]
        4 GETTABLEKS                       R2 R2 K1 ["fromPlugin"]
        6 NAMECALL                         R0 R0 K2 ["Invoke"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 2
       10 CALL                             R0 0 1
       11 JUMPIFNOT                        R0 ; [+17]
       12 GETUPVAL                         R0 3
       13 GETTABLEKS                       R0 R0 K3 ["current"]
       15 GETTABLEKS                       R0 R0 K4 ["settings"]
       17 JUMPIFNOT                        R0 ; [+11]
       18 GETUPVAL                         R0 3
       19 GETTABLEKS                       R0 R0 K3 ["current"]
       21 GETTABLEKS                       R0 R0 K4 ["settings"]
       23 GETTABLEKS                       R0 R0 K5 ["navigationBarSettings"]
       25 GETTABLEKS                       R0 R0 K6 ["setPreviewToggled"]
       27 LOADB                            R1 0
       28 CALL                             R0 1 0
       29 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["CreateAvatarRules"]
        4 GETTABLEKS                       R2 R2 K1 ["fromPlugin"]
        6 NAMECALL                         R0 R0 K2 ["Invoke"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+11]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["apply"]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["current"]
        9 MOVE                             R4 R0
       10 MOVE                             R5 R1
       11 LOADB                            R6 0
       12 CALL                             R2 4 0
       13 JUMP                             ; [+6]
       14 GETUPVAL                         R2 3
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K1 ["current"]
       18 MOVE                             R4 R0
       19 CALL                             R2 2 0
       20 GETIMPORT                        R2 K4 [coroutine.status]
       22 GETUPVAL                         R3 4
       23 CALL                             R2 1 1
       24 JUMPIFNOTEQKS                    R2 K5 ["suspended"] ; [+6]
       26 GETIMPORT                        R2 K8 [task.spawn]
       28 GETUPVAL                         R3 4
       29 CALL                             R2 1 0
       30 RETURN                           R0 0
       31 LOADB                            R2 1
       32 SETUPVAL                         R2 5
       33 RETURN                           R0 0

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
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["reset"]
        6 CALL                             R0 0 0
        7 GETUPVAL                         R0 2
        8 GETUPVAL                         R2 3
        9 GETTABLEKS                       R2 R2 K1 ["onInitialization"]
       11 GETTABLEKS                       R2 R2 K2 ["fromAssetDm"]
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          UPVAL U5
       18 NAMECALL                         R0 R0 K3 ["OnInvoke"]
       20 CALL                             R0 3 0
       21 GETUPVAL                         R0 2
       22 GETUPVAL                         R2 3
       23 GETTABLEKS                       R2 R2 K4 ["CreateAvatarRules"]
       25 GETTABLEKS                       R2 R2 K2 ["fromAssetDm"]
       27 NEWCLOSURE                       R3 P1
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          UPVAL U3
       30 NAMECALL                         R0 R0 K3 ["OnInvoke"]
       32 CALL                             R0 3 0
       33 GETIMPORT                        R0 K7 [coroutine.running]
       35 CALL                             R0 0 1
       36 LOADB                            R1 0
       37 GETUPVAL                         R2 2
       38 GETUPVAL                         R4 3
       39 GETTABLEKS                       R4 R4 K8 ["syncAvatarSettings"]
       41 NEWCLOSURE                       R5 P2
       42 CAPTURE                          UPVAL U0
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          UPVAL U5
       45 CAPTURE                          UPVAL U6
       46 CAPTURE                          VAL R0
       47 CAPTURE                          REF R1
       48 NAMECALL                         R2 R2 K3 ["OnInvoke"]
       50 CALL                             R2 3 0
       51 GETIMPORT                        R2 K11 [task.delay]
       53 LOADN                            R3 10
       54 NEWCLOSURE                       R4 P3
       55 CAPTURE                          VAL R0
       56 CALL                             R2 2 0
       57 LOADB                            R1 0
       58 GETUPVAL                         R2 2
       59 GETUPVAL                         R4 3
       60 GETTABLEKS                       R4 R4 K1 ["onInitialization"]
       62 GETTABLEKS                       R4 R4 K12 ["fromPlugin"]
       64 NAMECALL                         R2 R2 K13 ["Invoke"]
       66 CALL                             R2 2 0
       67 GETUPVAL                         R2 2
       68 GETUPVAL                         R4 3
       69 GETTABLEKS                       R4 R4 K4 ["CreateAvatarRules"]
       71 GETTABLEKS                       R4 R4 K12 ["fromPlugin"]
       73 NAMECALL                         R2 R2 K13 ["Invoke"]
       75 CALL                             R2 2 0
       76 JUMPIF                           R1 ; [+4]
       77 GETIMPORT                        R2 K15 [coroutine.yield]
       79 MOVE                             R3 R0
       80 CALL                             R2 1 0
       81 CLOSEUPVALS                      R1
       82 RETURN                           R0 0

PROTO_5:
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
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          VAL R1
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          VAL R2
       25 CAPTURE                          UPVAL U5
       26 NEWTABLE                         R5 0 0
       28 CALL                             R3 2 0
       29 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["AvatarSettingsSyncTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Components"]
       22 GETTABLEKS                       R3 R3 K10 ["Contexts"]
       24 GETTABLEKS                       R3 R3 K11 ["AvatarSettingsContext"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K12 ["Packages"]
       31 GETTABLEKS                       R4 R4 K13 ["React"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K14 ["Flags"]
       40 GETTABLEKS                       R5 R5 K15 ["getFFlagAvatarSettingsSyncPublishedSnapshot"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Src"]
       47 GETTABLEKS                       R6 R6 K7 ["Util"]
       49 GETTABLEKS                       R6 R6 K16 ["InvokeKeys"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K6 ["Src"]
       56 GETTABLEKS                       R7 R7 K7 ["Util"]
       58 GETTABLEKS                       R7 R7 K17 ["BridgingFiles"]
       60 GETTABLEKS                       R7 R7 K18 ["StandaloneFiles"]
       62 GETTABLEKS                       R7 R7 K19 ["settingsSnapshotState"]
       64 CALL                             R6 1 1
       65 GETIMPORT                        R7 K5 [require]
       67 GETTABLEKS                       R8 R0 K6 ["Src"]
       69 GETTABLEKS                       R8 R8 K7 ["Util"]
       71 GETTABLEKS                       R8 R8 K17 ["BridgingFiles"]
       73 GETTABLEKS                       R8 R8 K18 ["StandaloneFiles"]
       75 GETTABLEKS                       R8 R8 K20 ["syncPropertiesFromAssetDm"]
       77 CALL                             R7 1 1
       78 GETIMPORT                        R8 K5 [require]
       80 GETTABLEKS                       R9 R0 K6 ["Src"]
       82 GETTABLEKS                       R9 R9 K14 ["Flags"]
       84 GETTABLEKS                       R9 R9 K21 ["getFFlagFixPreviewToggleOn"]
       86 CALL                             R8 1 1
       87 DUPCLOSURE                       R9 K22 [PROTO_5]
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R7
       94 RETURN                           R9 1
