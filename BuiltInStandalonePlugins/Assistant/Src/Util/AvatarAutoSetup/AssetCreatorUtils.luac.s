PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 GETTABLEKS                       R0 R0 K2 ["CreatorType"]
        4 GETIMPORT                        R1 K5 [Enum.CreatorType.Group]
        6 JUMPIFNOTEQ                      R0 R1 ; [+20]
        8 GETIMPORT                        R0 K1 [game]
       10 GETTABLEKS                       R0 R0 K6 ["CreatorId"]
       12 LOADN                            R1 0
       13 JUMPIFNOTLT                      R1 R0 ; [+13]
       15 DUPTABLE                         R0 K9 [{"creatorType", "creatorId"}]
       16 GETIMPORT                        R1 K11 [Enum.AssetCreatorType.Group]
       18 SETTABLEKS                       R1 R0 K7 ["creatorType"]
       20 GETIMPORT                        R1 K1 [game]
       22 GETTABLEKS                       R1 R1 K6 ["CreatorId"]
       24 SETTABLEKS                       R1 R0 K8 ["creatorId"]
       26 RETURN                           R0 1
       27 DUPTABLE                         R0 K9 [{"creatorType", "creatorId"}]
       28 GETIMPORT                        R1 K13 [Enum.AssetCreatorType.User]
       30 SETTABLEKS                       R1 R0 K7 ["creatorType"]
       32 GETUPVAL                         R1 0
       33 NAMECALL                         R1 R1 K14 ["GetUserId"]
       35 CALL                             R1 1 1
       36 SETTABLEKS                       R1 R0 K8 ["creatorId"]
       38 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 1 0
        9 DUPCLOSURE                       R2 K4 [PROTO_0]
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R2 R1 K5 ["getCreatorData"]
       13 RETURN                           R1 1
