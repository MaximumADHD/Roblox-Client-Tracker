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
        2 JUMPIFNOT                        R0 ; [+8]
        3 DUPTABLE                         R0 K2 [{"canCreateAvatarLook", "canCreateMakeupLook"}]
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K0 ["canCreateAvatarLook"]
        7 LOADB                            R1 1
        8 SETTABLEKS                       R1 R0 K1 ["canCreateMakeupLook"]
       10 RETURN                           R0 1
       11 GETUPVAL                         R0 1
       12 GETTABLEKS                       R0 R0 K3 ["getFeatureAccessUrl"]
       14 CALL                             R0 0 1
       15 DUPTABLE                         R1 K7 [{"Url", "Method", "Headers"}]
       16 SETTABLEKS                       R0 R1 K4 ["Url"]
       18 LOADK                            R2 K8 ["GET"]
       19 SETTABLEKS                       R2 R1 K5 ["Method"]
       21 NEWTABLE                         R2 1 0
       23 LOADK                            R3 K9 ["application/json"]
       24 SETTABLEKS                       R3 R2 K10 ["Content-Type"]
       26 SETTABLEKS                       R2 R1 K6 ["Headers"]
       28 GETUPVAL                         R2 2
       29 GETTABLEKS                       R2 R2 K11 ["requestInternal"]
       31 MOVE                             R3 R1
       32 CALL                             R2 1 1
       33 NAMECALL                         R3 R2 K12 ["await"]
       35 CALL                             R3 1 2
       36 GETIMPORT                        R5 K14 [pcall]
       38 NEWCLOSURE                       R6 P0
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          VAL R4
       41 CALL                             R5 1 2
       42 JUMPIFNOT                        R5 ; [+1]
       43 JUMPIF                           R3 ; [+13]
       44 GETUPVAL                         R7 4
       45 LOADK                            R9 K15 ["marketplaceLookAccessFailure"]
       46 NAMECALL                         R7 R7 K16 ["report"]
       48 CALL                             R7 2 0
       49 DUPTABLE                         R7 K2 [{"canCreateAvatarLook", "canCreateMakeupLook"}]
       50 LOADB                            R8 0
       51 SETTABLEKS                       R8 R7 K0 ["canCreateAvatarLook"]
       53 LOADB                            R8 0
       54 SETTABLEKS                       R8 R7 K1 ["canCreateMakeupLook"]
       56 RETURN                           R7 1
       57 DUPTABLE                         R7 K2 [{"canCreateAvatarLook", "canCreateMakeupLook"}]
       58 GETTABLEKS                       R9 R6 K17 ["avatarLookStudioCreation"]
       60 JUMPIFEQKB                       R9 TRUE ; [+2]
       62 LOADB                            R8 0 +1
       63 LOADB                            R8 1
       64 SETTABLEKS                       R8 R7 K0 ["canCreateAvatarLook"]
       66 GETTABLEKS                       R9 R6 K18 ["makeupLookStudioCreation"]
       68 JUMPIFEQKB                       R9 TRUE ; [+2]
       70 LOADB                            R8 0 +1
       71 LOADB                            R8 1
       72 SETTABLEKS                       R8 R7 K1 ["canCreateMakeupLook"]
       74 RETURN                           R7 1

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
