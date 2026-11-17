PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["Clone"]
        2 CALL                             R1 1 1
        3 LOADK                            R4 K1 ["AvatarClothingRules"]
        4 NAMECALL                         R2 R1 K2 ["FindFirstChildWhichIsA"]
        6 CALL                             R2 2 1
        7 JUMPIFNOT                        R2 ; [+10]
        8 GETTABLEKS                       R3 R2 K3 ["ClothingMode"]
       10 GETIMPORT                        R4 K7 [Enum.AvatarSettingsClothingMode.CustomLimit]
       12 JUMPIFNOTEQ                      R3 R4 ; [+5]
       14 GETIMPORT                        R3 K9 [Enum.AvatarSettingsClothingMode.PlayerChoice]
       16 SETTABLEKS                       R3 R2 K3 ["ClothingMode"]
       18 LOADK                            R5 K10 ["AvatarAccessoryRules"]
       19 NAMECALL                         R3 R1 K2 ["FindFirstChildWhichIsA"]
       21 CALL                             R3 2 1
       22 JUMPIFNOT                        R3 ; [+10]
       23 GETTABLEKS                       R4 R3 K11 ["LimitMethod"]
       25 GETIMPORT                        R5 K14 [Enum.AvatarSettingsAccessoryLimitMethod.Remove]
       27 JUMPIFNOTEQ                      R4 R5 ; [+5]
       29 GETIMPORT                        R4 K16 [Enum.AvatarSettingsAccessoryMode.PlayerChoice]
       31 SETTABLEKS                       R4 R3 K17 ["AccessoryMode"]
       33 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
