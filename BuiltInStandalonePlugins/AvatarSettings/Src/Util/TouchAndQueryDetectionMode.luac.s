PROTO_0:
        0 GETIMPORT                        R0 K1 [Enum]
        2 GETTABLEKS                       R0 R0 K2 ["AvatarSettingsTouchAndQueryDetectionMode"]
        4 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+4]
        3 GETIMPORT                        R0 K1 [pcall]
        5 DUPCLOSURE                       R1 K2 [PROTO_0]
        6 CALL                             R0 1 1
        7 RETURN                           R0 1

PROTO_2:
        0 GETIMPORT                        R2 K1 [Enum]
        2 GETTABLEKS                       R2 R2 K2 ["AvatarSettingsTouchAndQueryDetectionMode"]
        4 GETTABLEKS                       R3 R0 K3 ["Name"]
        6 GETTABLE                         R1 R2 R3
        7 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R2 K2 [Enum.AvatarSettingsHitAndTouchDetectionMode]
        2 GETTABLEKS                       R3 R0 K3 ["Name"]
        4 GETTABLE                         R1 R2 R3
        5 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["getEngineFeatureAvatarSettingsHitbox"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 4 0
       18 DUPCLOSURE                       R3 K9 [PROTO_1]
       19 CAPTURE                          VAL R1
       20 SETTABLEKS                       R3 R2 K10 ["isSupported"]
       22 DUPCLOSURE                       R3 K11 [PROTO_2]
       23 SETTABLEKS                       R3 R2 K12 ["fromLegacy"]
       25 DUPCLOSURE                       R3 K13 [PROTO_3]
       26 SETTABLEKS                       R3 R2 K14 ["toLegacy"]
       28 RETURN                           R2 1
