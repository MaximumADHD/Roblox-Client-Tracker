PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 GETUPVAL                         R0 1
        3 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["EnableAvatarSettingsLCC"]
        4 NAMECALL                         R0 R0 K3 ["GetEngineFeature"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["AvatarSettingsCrouchSprintStrafe"]
       10 NAMECALL                         R1 R1 K3 ["GetEngineFeature"]
       12 CALL                             R1 2 1
       13 DUPCLOSURE                       R2 K5 [PROTO_0]
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
