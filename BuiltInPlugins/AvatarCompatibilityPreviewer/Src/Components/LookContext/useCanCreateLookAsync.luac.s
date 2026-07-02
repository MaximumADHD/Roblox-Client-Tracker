PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Body"]
        4 NAMECALL                         R0 R0 K1 ["JSONDecode"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+2]
        3 DUPTABLE                         R0 K3 [{[1] = True, ["canCreateMakeupLook"] = True}]
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K4 ["getFeatureAccessUrl"]
        8 CALL                             R0 0 1
        9 DUPTABLE                         R1 K9 [{["Url"], ["Method"] = "GET", ["Headers"]}]
       10 SETTABLEKS                       R0 R1 K5 ["Url"]
       12 NEWTABLE                         R2 1 0
       14 LOADK                            R3 K10 ["application/json"]
       15 SETTABLEKS                       R3 R2 K11 ["Content-Type"]
       17 SETTABLEKS                       R2 R1 K8 ["Headers"]
       19 GETUPVAL                         R2 2
       20 GETTABLEKS                       R2 R2 K12 ["requestInternal"]
       22 MOVE                             R3 R1
       23 CALL                             R2 1 1
       24 NAMECALL                         R3 R2 K13 ["await"]
       26 CALL                             R3 1 2
       27 GETIMPORT                        R5 K15 [pcall]
       29 NEWCLOSURE                       R6 P0
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          VAL R4
       32 CALL                             R5 1 2
       33 JUMPIFNOT                        R5 ; [+1]
       34 JUMPIF                           R3 ; [+7]
       35 GETUPVAL                         R7 4
       36 LOADK                            R9 K16 ["marketplaceLookAccessFailure"]
       37 NAMECALL                         R7 R7 K17 ["report"]
       39 CALL                             R7 2 0
       40 DUPTABLE                         R7 K19 [{[1] = False, ["canCreateMakeupLook"] = False}]
       41 RETURN                           R7 1
       42 DUPTABLE                         R7 K20 [{"canCreateAvatarLook", "canCreateMakeupLook"}]
       43 GETTABLEKS                       R9 R6 K21 ["avatarLookStudioCreation"]
       45 JUMPIFEQKB                       R9 TRUE ; [+2]
       47 LOADB                            R8 0 +1
       48 LOADB                            R8 1
       49 SETTABLEKS                       R8 R7 K0 ["canCreateAvatarLook"]
       51 GETTABLEKS                       R9 R6 K22 ["makeupLookStudioCreation"]
       53 JUMPIFEQKB                       R9 TRUE ; [+2]
       55 LOADB                            R8 0 +1
       56 LOADB                            R8 1
       57 SETTABLEKS                       R8 R7 K2 ["canCreateMakeupLook"]
       59 RETURN                           R7 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R2 R0 K0 ["canCreateAvatarLook"]
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R2 R0 K1 ["canCreateMakeupLook"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 LOADB                            R1 1
        7 SETTABLEKS                       R1 R0 K0 ["current"]
        9 GETIMPORT                        R0 K3 [task.spawn]
       11 NEWCLOSURE                       R1 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["use"]
        3 CALL                             R0 1 1
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          VAL R0
       10 GETUPVAL                         R2 5
       11 GETTABLEKS                       R2 R2 K1 ["useState"]
       13 LOADB                            R3 0
       14 CALL                             R2 1 2
       15 GETUPVAL                         R4 5
       16 GETTABLEKS                       R4 R4 K1 ["useState"]
       18 LOADB                            R5 0
       19 CALL                             R4 1 2
       20 GETUPVAL                         R6 5
       21 GETTABLEKS                       R6 R6 K2 ["useRef"]
       23 LOADB                            R7 0
       24 CALL                             R6 1 1
       25 GETUPVAL                         R7 5
       26 GETTABLEKS                       R7 R7 K3 ["useEffect"]
       28 NEWCLOSURE                       R8 P1
       29 CAPTURE                          VAL R6
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R5
       33 NEWTABLE                         R9 0 0
       35 CALL                             R7 2 0
       36 DUPTABLE                         R7 K6 [{"canCreateAvatarLook", "canCreateMakeupLook"}]
       37 SETTABLEKS                       R2 R7 K4 ["canCreateAvatarLook"]
       39 SETTABLEKS                       R4 R7 K5 ["canCreateMakeupLook"]
       41 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarCompatibilityPreviewer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R2 K12 ["ContextServices"]
       22 GETTABLEKS                       R3 R3 K13 ["Analytics"]
       24 GETIMPORT                        R4 K9 [require]
       26 GETTABLEKS                       R5 R1 K10 ["Packages"]
       28 GETTABLEKS                       R5 R5 K14 ["React"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K9 [require]
       33 GETTABLEKS                       R6 R1 K15 ["Src"]
       35 GETTABLEKS                       R6 R6 K16 ["Util"]
       37 GETTABLEKS                       R6 R6 K17 ["Url"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K9 [require]
       42 GETTABLEKS                       R7 R1 K15 ["Src"]
       44 GETTABLEKS                       R7 R7 K16 ["Util"]
       46 GETTABLEKS                       R7 R7 K18 ["LookComposerUtils"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K9 [require]
       51 GETTABLEKS                       R8 R1 K15 ["Src"]
       53 GETTABLEKS                       R8 R8 K19 ["Flags"]
       55 GETTABLEKS                       R8 R8 K20 ["getFFlagDebugAvatarPreviewerLookApiNeverFails"]
       57 CALL                             R7 1 1
       58 DUPCLOSURE                       R8 K21 [PROTO_4]
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R4
       65 RETURN                           R8 1
