PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+4]
        3 LOADK                            R0 K0 [""]
        4 LOADK                            R1 K0 [""]
        5 LOADK                            R2 K0 [""]
        6 RETURN                           R0 3
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K1 ["BaseUrl"]
       10 LENGTH                           R3 R0
       11 NAMECALL                         R1 R0 K2 ["sub"]
       13 CALL                             R1 2 1
       14 JUMPIFEQKS                       R1 K3 ["/"] ; [+4]
       16 MOVE                             R1 R0
       17 LOADK                            R2 K3 ["/"]
       18 CONCAT                           R0 R1 R2
       19 LOADK                            R3 K4 ["://"]
       20 NAMECALL                         R1 R0 K5 ["find"]
       22 CALL                             R1 2 2
       23 JUMPIFNOTEQKNIL                  R2 ; [+5]
       25 LOADK                            R3 K0 [""]
       26 LOADK                            R4 K0 [""]
       27 LOADK                            R5 K0 [""]
       28 RETURN                           R3 3
       29 LOADK                            R5 K6 ["%."]
       30 ADDK                             R6 R2 K7 [1]
       31 NAMECALL                         R3 R0 K5 ["find"]
       33 CALL                             R3 3 2
       34 JUMPIFEQKNIL                     R3 ; [+3]
       36 JUMPIFNOTEQKNIL                  R4 ; [+5]
       38 LOADK                            R5 K0 [""]
       39 LOADK                            R6 K0 [""]
       40 LOADK                            R7 K0 [""]
       41 RETURN                           R5 3
       42 ADDK                             R7 R2 K7 [1]
       43 SUBK                             R8 R3 K7 [1]
       44 NAMECALL                         R5 R0 K2 ["sub"]
       46 CALL                             R5 3 1
       47 ADDK                             R8 R4 K7 [1]
       48 NAMECALL                         R6 R0 K2 ["sub"]
       50 CALL                             R6 2 1
       51 MOVE                             R7 R0
       52 MOVE                             R8 R5
       53 MOVE                             R9 R6
       54 RETURN                           R7 3

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+4]
        3 GETUPVAL                         R1 1
        4 LOADK                            R2 K0 ["creator-home-api/v1/groups?surface=StudioAssetCreation"]
        5 CONCAT                           R0 R1 R2
        6 RETURN                           R0 1
        7 GETUPVAL                         R1 1
        8 LOADK                            R2 K1 ["orgs/v2/groups/permissions/createassets"]
        9 CONCAT                           R0 R1 R2
       10 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["look-api/v1/looks/preview"]
        2 CONCAT                           R0 R1 R2
        3 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["look-api/v1/looks/create"]
        2 CONCAT                           R0 R1 R2
        3 RETURN                           R0 1

PROTO_7:
        0 GETIMPORT                        R0 K2 [string.format]
        2 LOADK                            R1 K3 ["https://create.%s/dashboard"]
        3 GETUPVAL                         R2 0
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_8:
        0 GETIMPORT                        R4 K2 [string.format]
        2 LOADK                            R5 K3 ["https://create.%s/dashboard"]
        3 GETUPVAL                         R6 0
        4 CALL                             R4 2 1
        5 MOVE                             R2 R4
        6 LOADK                            R3 K4 ["/creations/look/%s/configure"]
        7 MOVE                             R5 R0
        8 NAMECALL                         R3 R3 K1 ["format"]
       10 CALL                             R3 2 1
       11 CONCAT                           R1 R2 R3
       12 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["look-api/v1/me/features"]
        2 CONCAT                           R0 R1 R2
        3 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ContentProvider"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarCompatibilityPreviewer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Flags"]
       19 GETTABLEKS                       R3 R3 K12 ["getFFlagAvatarPreviewerLookComposer"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R1 K10 ["Src"]
       26 GETTABLEKS                       R4 R4 K11 ["Flags"]
       28 GETTABLEKS                       R4 R4 K13 ["getFFlagLookComposerUseCreatorHomeApiGroups"]
       30 CALL                             R3 1 1
       31 NEWTABLE                         R4 8 0
       33 DUPCLOSURE                       R5 K14 [PROTO_0]
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R0
       36 MOVE                             R6 R5
       37 CALL                             R6 0 3
       38 GETIMPORT                        R9 K17 [string.format]
       40 LOADK                            R10 K18 ["https://catalog.%s"]
       41 MOVE                             R11 R8
       42 CALL                             R9 2 1
       43 DUPCLOSURE                       R10 K19 [PROTO_1]
       44 CAPTURE                          VAL R9
       45 SETTABLEKS                       R10 R4 K20 ["baseCatalogUrl"]
       47 DUPCLOSURE                       R10 K21 [PROTO_2]
       48 CAPTURE                          VAL R8
       49 SETTABLEKS                       R10 R4 K22 ["baseDomain"]
       51 GETIMPORT                        R10 K17 [string.format]
       53 LOADK                            R11 K23 ["https://apis.%s"]
       54 MOVE                             R12 R8
       55 CALL                             R10 2 1
       56 DUPCLOSURE                       R11 K24 [PROTO_3]
       57 CAPTURE                          VAL R10
       58 SETTABLEKS                       R11 R4 K25 ["baseApisUrl"]
       60 DUPCLOSURE                       R11 K26 [PROTO_4]
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R10
       63 SETTABLEKS                       R11 R4 K27 ["manageableGroupsUrl"]
       65 DUPCLOSURE                       R11 K28 [PROTO_5]
       66 CAPTURE                          VAL R10
       67 SETTABLEKS                       R11 R4 K29 ["lookPreviewUrl"]
       69 DUPCLOSURE                       R11 K30 [PROTO_6]
       70 CAPTURE                          VAL R10
       71 SETTABLEKS                       R11 R4 K31 ["lookCreateUrl"]
       73 DUPCLOSURE                       R11 K32 [PROTO_7]
       74 CAPTURE                          VAL R8
       75 DUPCLOSURE                       R12 K33 [PROTO_8]
       76 CAPTURE                          VAL R8
       77 SETTABLEKS                       R12 R4 K34 ["creatorHubLookConfigureUrl"]
       79 DUPCLOSURE                       R12 K35 [PROTO_9]
       80 CAPTURE                          VAL R10
       81 SETTABLEKS                       R12 R4 K36 ["getFeatureAccessUrl"]
       83 RETURN                           R4 1
