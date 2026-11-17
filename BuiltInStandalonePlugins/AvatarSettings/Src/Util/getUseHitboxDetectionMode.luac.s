PROTO_0:
        0 GETIMPORT                        R0 K2 [Enum.AvatarSettingsHitAndTouchDetectionMode]
        2 LOADK                            R2 K3 ["UseHitbox"]
        3 NAMECALL                         R0 R0 K4 ["FromName"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
