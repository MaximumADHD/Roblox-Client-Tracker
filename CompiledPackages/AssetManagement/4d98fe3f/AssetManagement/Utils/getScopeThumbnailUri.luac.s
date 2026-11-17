PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Type"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["ScopeType"]
        5 GETTABLEKS                       R2 R2 K2 ["User"]
        7 JUMPIFNOTEQ                      R1 R2 ; [+8]
        9 LOADK                            R1 K3 ["rbxthumb://type=AvatarHeadShot&id=%*&w=150&h=150"]
       10 GETTABLEKS                       R3 R0 K4 ["Id"]
       12 NAMECALL                         R1 R1 K5 ["format"]
       14 CALL                             R1 2 1
       15 RETURN                           R1 1
       16 GETTABLEKS                       R1 R0 K0 ["Type"]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K1 ["ScopeType"]
       21 GETTABLEKS                       R2 R2 K6 ["Group"]
       23 JUMPIFNOTEQ                      R1 R2 ; [+8]
       25 LOADK                            R1 K7 ["rbxthumb://type=GroupIcon&id=%*&w=150&h=150"]
       26 GETTABLEKS                       R3 R0 K4 ["Id"]
       28 NAMECALL                         R1 R1 K5 ["format"]
       30 CALL                             R1 2 1
       31 RETURN                           R1 1
       32 GETTABLEKS                       R1 R0 K0 ["Type"]
       34 GETUPVAL                         R2 0
       35 GETTABLEKS                       R2 R2 K1 ["ScopeType"]
       37 GETTABLEKS                       R2 R2 K8 ["Universe"]
       39 JUMPIFEQ                         R1 R2 ; [+10]
       41 GETTABLEKS                       R1 R0 K0 ["Type"]
       43 GETUPVAL                         R2 0
       44 GETTABLEKS                       R2 R2 K1 ["ScopeType"]
       46 GETTABLEKS                       R2 R2 K9 ["ProjectPlaces"]
       48 JUMPIFNOTEQ                      R1 R2 ; [+8]
       50 LOADK                            R1 K10 ["rbxthumb://type=GameIcon&id=%*&w=150&h=150"]
       51 GETTABLEKS                       R3 R0 K4 ["Id"]
       53 NAMECALL                         R1 R1 K5 ["format"]
       55 CALL                             R1 2 1
       56 RETURN                           R1 1
       57 GETUPVAL                         R1 1
       58 LOADK                            R2 K11 ["getScopeThumbnailUri: unsupported scope type %*"]
       59 GETTABLEKS                       R4 R0 K0 ["Type"]
       61 NAMECALL                         R2 R2 K5 ["format"]
       63 CALL                             R2 2 1
       64 CALL                             R1 1 0
       65 LOADK                            R1 K12 [""]
       66 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Enums"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Types"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K5 [require]
       19 GETTABLEKS                       R4 R0 K8 ["Utils"]
       21 GETTABLEKS                       R4 R4 K9 ["logIfDebug"]
       23 CALL                             R3 1 1
       24 DUPCLOSURE                       R4 K10 [PROTO_0]
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R3
       27 RETURN                           R4 1
