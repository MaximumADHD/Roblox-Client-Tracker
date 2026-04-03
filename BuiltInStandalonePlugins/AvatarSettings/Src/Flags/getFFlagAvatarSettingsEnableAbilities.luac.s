PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETIMPORT                        R0 K1 [game]
        4 LOADK                            R2 K2 ["AvatarSettingsEnableAbilities"]
        5 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        7 CALL                             R0 2 1
        8 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AvatarSettingsEnableAbilities"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 0
        8 GETIMPORT                        R0 K1 [game]
       10 LOADK                            R2 K4 ["EnableAvatarSettingsLCC"]
       11 NAMECALL                         R0 R0 K5 ["GetEngineFeature"]
       13 CALL                             R0 2 1
       14 DUPCLOSURE                       R1 K6 [PROTO_0]
       15 CAPTURE                          VAL R0
       16 RETURN                           R1 1
