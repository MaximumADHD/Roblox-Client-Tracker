PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["useContext"]
        6 GETUPVAL                         R2 2
        7 CALL                             R1 1 1
        8 JUMP                             ; [+1]
        9 LOADNIL                          R1
       10 GETTABLEKS                       R2 R0 K1 ["item"]
       12 GETTABLEKS                       R2 R2 K2 ["source"]
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K3 ["SOURCE_INSTANCE"]
       17 JUMPIFNOTEQ                      R2 R3 ; [+3]
       19 LOADNIL                          R2
       20 RETURN                           R2 1
       21 GETTABLEKS                       R2 R0 K1 ["item"]
       23 GETTABLEKS                       R2 R2 K2 ["source"]
       25 GETUPVAL                         R3 3
       26 GETTABLEKS                       R3 R3 K4 ["SOURCE_BUILTIN"]
       28 JUMPIFNOTEQ                      R2 R3 ; [+3]
       30 LOADNIL                          R2
       31 RETURN                           R2 1
       32 GETUPVAL                         R2 0
       33 CALL                             R2 0 1
       34 JUMPIF                           R2 ; [+2]
       35 LOADNIL                          R2
       36 RETURN                           R2 1
       37 GETTABLEKS                       R2 R1 K5 ["getItemData"]
       39 GETTABLEKS                       R3 R0 K1 ["item"]
       41 GETTABLEKS                       R3 R3 K6 ["marketplaceItem"]
       43 CALL                             R2 1 1
       44 JUMPIF                           R2 ; [+2]
       45 LOADNIL                          R3
       46 RETURN                           R3 1
       47 GETTABLEKS                       R3 R2 K7 ["hasVerifiedBadge"]
       49 JUMPIFNOT                        R3 ; [+9]
       50 LOADK                            R4 K8 ["%* %*"]
       51 GETTABLEKS                       R6 R2 K9 ["creatorName"]
       53 GETUPVAL                         R7 4
       54 NAMECALL                         R4 R4 K10 ["format"]
       56 CALL                             R4 3 1
       57 MOVE                             R3 R4
       58 RETURN                           R3 1
       59 GETTABLEKS                       R3 R2 K9 ["creatorName"]
       61 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Components"]
       29 GETTABLEKS                       R4 R4 K12 ["MarketplaceCatalogContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K13 ["Types"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K8 ["Src"]
       43 GETTABLEKS                       R6 R6 K14 ["Flags"]
       45 GETTABLEKS                       R6 R6 K15 ["getFFlagAvatarPreviewerLookComposer"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K18 [utf8.char]
       50 LOADK                            R7 K19 [57344]
       51 CALL                             R6 1 1
       52 DUPCLOSURE                       R7 K20 [PROTO_0]
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R6
       58 RETURN                           R7 1
