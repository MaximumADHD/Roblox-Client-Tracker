PROTO_0:
        0 GETUPVAL                         R0 1
        1 NAMECALL                         R0 R0 K0 ["GetUserId"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_1:
        0 LOADN                            R0 0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 1 0
        7 CLOSEUPVALS                      R0
        8 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["useContext"]
        6 GETUPVAL                         R2 2
        7 CALL                             R1 1 1
        8 JUMP                             ; [+1]
        9 LOADNIL                          R1
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K1 ["useMemo"]
       13 DUPCLOSURE                       R3 K2 [PROTO_1]
       14 CAPTURE                          UPVAL U3
       15 NEWTABLE                         R4 0 0
       17 CALL                             R2 2 1
       18 GETTABLEKS                       R4 R0 K3 ["item"]
       20 GETTABLEKS                       R3 R4 K4 ["source"]
       22 GETUPVAL                         R5 4
       23 GETTABLEKS                       R4 R5 K5 ["SOURCE_BUILTIN"]
       25 JUMPIFNOTEQ                      R3 R4 ; [+3]
       27 LOADNIL                          R3
       28 RETURN                           R3 1
       29 GETTABLEKS                       R4 R0 K3 ["item"]
       31 GETTABLEKS                       R3 R4 K4 ["source"]
       33 GETUPVAL                         R5 4
       34 GETTABLEKS                       R4 R5 K6 ["SOURCE_INSTANCE"]
       36 JUMPIFNOTEQ                      R3 R4 ; [+8]
       38 LOADK                            R4 K7 ["rbxthumb://type=AvatarHeadShot&id=%*&w=150&h=150"]
       39 MOVE                             R6 R2
       40 NAMECALL                         R4 R4 K8 ["format"]
       42 CALL                             R4 2 1
       43 MOVE                             R3 R4
       44 RETURN                           R3 1
       45 GETUPVAL                         R3 0
       46 CALL                             R3 0 1
       47 JUMPIF                           R3 ; [+2]
       48 LOADNIL                          R3
       49 RETURN                           R3 1
       50 GETTABLEKS                       R3 R1 K9 ["getItemData"]
       52 GETTABLEKS                       R5 R0 K3 ["item"]
       54 GETTABLEKS                       R4 R5 K10 ["marketplaceItem"]
       56 CALL                             R3 1 1
       57 JUMPIF                           R3 ; [+2]
       58 LOADNIL                          R4
       59 RETURN                           R4 1
       60 GETTABLEKS                       R4 R3 K11 ["creatorTargetId"]
       62 GETTABLEKS                       R5 R3 K12 ["creatorType"]
       64 JUMPIFNOTEQKS                    R5 K13 ["Group"] ; [+8]
       66 LOADK                            R6 K14 ["rbxthumb://type=GroupIcon&id=%*&w=150&h=150"]
       67 MOVE                             R8 R4
       68 NAMECALL                         R6 R6 K8 ["format"]
       70 CALL                             R6 2 1
       71 MOVE                             R5 R6
       72 RETURN                           R5 1
       73 LOADK                            R6 K7 ["rbxthumb://type=AvatarHeadShot&id=%*&w=150&h=150"]
       74 MOVE                             R8 R4
       75 NAMECALL                         R6 R6 K8 ["format"]
       77 CALL                             R6 2 1
       78 MOVE                             R5 R6
       79 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarCompatibilityPreviewer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R6 R1 K12 ["Src"]
       24 GETTABLEKS                       R5 R6 K13 ["Util"]
       26 GETTABLEKS                       R4 R5 K14 ["Constants"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R7 R1 K12 ["Src"]
       33 GETTABLEKS                       R6 R7 K15 ["Components"]
       35 GETTABLEKS                       R5 R6 K16 ["MarketplaceCatalogContext"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R7 R1 K12 ["Src"]
       42 GETTABLEKS                       R6 R7 K17 ["Types"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R9 R1 K12 ["Src"]
       49 GETTABLEKS                       R8 R9 K18 ["Flags"]
       51 GETTABLEKS                       R7 R8 K19 ["getFFlagAvatarPreviewerLookComposer"]
       53 CALL                             R6 1 1
       54 DUPCLOSURE                       R7 K20 [PROTO_2]
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R3
       60 RETURN                           R7 1
