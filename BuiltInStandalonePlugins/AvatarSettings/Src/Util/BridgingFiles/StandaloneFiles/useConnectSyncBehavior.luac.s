PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["onInitialization"]
        4 GETTABLEKS                       R2 R3 K1 ["fromPlugin"]
        6 NAMECALL                         R0 R0 K2 ["Invoke"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 2
       10 CALL                             R0 0 1
       11 JUMPIFNOT                        R0 ; [+30]
       12 GETUPVAL                         R0 3
       13 CALL                             R0 0 1
       14 JUMPIFNOT                        R0 ; [+18]
       15 GETUPVAL                         R2 4
       16 GETTABLEKS                       R1 R2 K3 ["current"]
       18 GETTABLEKS                       R0 R1 K4 ["settings"]
       20 JUMPIFNOT                        R0 ; [+21]
       21 GETUPVAL                         R4 4
       22 GETTABLEKS                       R3 R4 K3 ["current"]
       24 GETTABLEKS                       R2 R3 K4 ["settings"]
       26 GETTABLEKS                       R1 R2 K5 ["navigationBarSettings"]
       28 GETTABLEKS                       R0 R1 K6 ["setPreviewToggled"]
       30 LOADB                            R1 0
       31 CALL                             R0 1 0
       32 RETURN                           R0 0
       33 GETUPVAL                         R3 5
       34 GETTABLEKS                       R2 R3 K4 ["settings"]
       36 GETTABLEKS                       R1 R2 K5 ["navigationBarSettings"]
       38 GETTABLEKS                       R0 R1 K6 ["setPreviewToggled"]
       40 LOADB                            R1 0
       41 CALL                             R0 1 0
       42 RETURN                           R0 0

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
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R2 R3 K0 ["current"]
        7 MOVE                             R3 R0
        8 CALL                             R1 2 0
        9 JUMP                             ; [+4]
       10 GETUPVAL                         R1 1
       11 GETUPVAL                         R2 3
       12 MOVE                             R3 R0
       13 CALL                             R1 2 0
       14 GETIMPORT                        R1 K3 [coroutine.status]
       16 GETUPVAL                         R2 4
       17 CALL                             R1 1 1
       18 JUMPIFNOTEQKS                    R1 K4 ["suspended"] ; [+6]
       20 GETIMPORT                        R1 K7 [task.spawn]
       22 GETUPVAL                         R2 4
       23 CALL                             R1 1 0
       24 RETURN                           R0 0
       25 LOADB                            R1 1
       26 SETUPVAL                         R1 5
       27 RETURN                           R0 0

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
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 NAMECALL                         R0 R0 K2 ["OnInvoke"]
       15 CALL                             R0 3 0
       16 GETUPVAL                         R0 0
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K3 ["CreateAvatarRules"]
       20 GETTABLEKS                       R2 R3 K1 ["fromAssetDm"]
       22 NEWCLOSURE                       R3 P1
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          UPVAL U1
       25 NAMECALL                         R0 R0 K2 ["OnInvoke"]
       27 CALL                             R0 3 0
       28 GETIMPORT                        R0 K6 [coroutine.running]
       30 CALL                             R0 0 1
       31 LOADB                            R1 0
       32 GETUPVAL                         R2 0
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R4 R5 K7 ["syncAvatarSettings"]
       36 NEWCLOSURE                       R5 P2
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          UPVAL U6
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          UPVAL U5
       41 CAPTURE                          VAL R0
       42 CAPTURE                          REF R1
       43 NAMECALL                         R2 R2 K2 ["OnInvoke"]
       45 CALL                             R2 3 0
       46 GETIMPORT                        R2 K10 [task.delay]
       48 LOADN                            R3 10
       49 NEWCLOSURE                       R4 P3
       50 CAPTURE                          VAL R0
       51 CALL                             R2 2 0
       52 LOADB                            R1 0
       53 GETUPVAL                         R2 0
       54 GETUPVAL                         R6 1
       55 GETTABLEKS                       R5 R6 K0 ["onInitialization"]
       57 GETTABLEKS                       R4 R5 K11 ["fromPlugin"]
       59 NAMECALL                         R2 R2 K12 ["Invoke"]
       61 CALL                             R2 2 0
       62 GETUPVAL                         R2 0
       63 GETUPVAL                         R6 1
       64 GETTABLEKS                       R5 R6 K3 ["CreateAvatarRules"]
       66 GETTABLEKS                       R4 R5 K11 ["fromPlugin"]
       68 NAMECALL                         R2 R2 K12 ["Invoke"]
       70 CALL                             R2 2 0
       71 JUMPIF                           R1 ; [+4]
       72 GETIMPORT                        R2 K14 [coroutine.yield]
       74 MOVE                             R3 R0
       75 CALL                             R2 1 0
       76 CLOSEUPVALS                      R1
       77 RETURN                           R0 0

PROTO_5:
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
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          REF R2
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U4
       31 NEWTABLE                         R5 0 0
       33 CALL                             R3 2 0
       34 CLOSEUPVALS                      R2
       35 RETURN                           R0 0

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
       38 GETTABLEKS                       R6 R7 K14 ["Flags"]
       40 GETTABLEKS                       R5 R6 K15 ["getFFlagAvatarSettingsStaleStateFix"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R8 R0 K6 ["Src"]
       47 GETTABLEKS                       R7 R8 K7 ["Util"]
       49 GETTABLEKS                       R6 R7 K16 ["InvokeKeys"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R11 R0 K6 ["Src"]
       56 GETTABLEKS                       R10 R11 K7 ["Util"]
       58 GETTABLEKS                       R9 R10 K17 ["BridgingFiles"]
       60 GETTABLEKS                       R8 R9 K18 ["StandaloneFiles"]
       62 GETTABLEKS                       R7 R8 K19 ["syncPropertiesFromAssetDm"]
       64 CALL                             R6 1 1
       65 GETIMPORT                        R7 K5 [require]
       67 GETTABLEKS                       R10 R0 K6 ["Src"]
       69 GETTABLEKS                       R9 R10 K14 ["Flags"]
       71 GETTABLEKS                       R8 R9 K20 ["getFFlagFixPreviewToggleOn"]
       73 CALL                             R7 1 1
       74 DUPCLOSURE                       R8 K21 [PROTO_5]
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R6
       80 RETURN                           R8 1
