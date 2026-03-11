PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+4]
        3 LOADK                            R0 K0 [""]
        4 LOADK                            R1 K0 [""]
        5 LOADK                            R2 K0 [""]
        6 RETURN                           R0 3
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R0 R1 K1 ["BaseUrl"]
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
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["orgs/v2/groups/permissions/createassets"]
        2 CONCAT                           R0 R1 R2
        3 RETURN                           R0 1

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
       15 GETTABLEKS                       R5 R1 K10 ["Src"]
       17 GETTABLEKS                       R4 R5 K11 ["Flags"]
       19 GETTABLEKS                       R3 R4 K12 ["getFFlagAvatarPreviewerLookComposer"]
       21 CALL                             R2 1 1
       22 NEWTABLE                         R3 8 0
       24 DUPCLOSURE                       R4 K13 [PROTO_0]
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R0
       27 MOVE                             R5 R4
       28 CALL                             R5 0 3
       29 GETIMPORT                        R8 K16 [string.format]
       31 LOADK                            R9 K17 ["https://catalog.%s"]
       32 MOVE                             R10 R7
       33 CALL                             R8 2 1
       34 DUPCLOSURE                       R9 K18 [PROTO_1]
       35 CAPTURE                          VAL R8
       36 SETTABLEKS                       R9 R3 K19 ["baseCatalogUrl"]
       38 DUPCLOSURE                       R9 K20 [PROTO_2]
       39 CAPTURE                          VAL R7
       40 SETTABLEKS                       R9 R3 K21 ["baseDomain"]
       42 GETIMPORT                        R9 K16 [string.format]
       44 LOADK                            R10 K22 ["https://apis.%s"]
       45 MOVE                             R11 R7
       46 CALL                             R9 2 1
       47 DUPCLOSURE                       R10 K23 [PROTO_3]
       48 CAPTURE                          VAL R9
       49 SETTABLEKS                       R10 R3 K24 ["baseApisUrl"]
       51 DUPCLOSURE                       R10 K25 [PROTO_4]
       52 CAPTURE                          VAL R9
       53 SETTABLEKS                       R10 R3 K26 ["manageableGroupsUrl"]
       55 DUPCLOSURE                       R10 K27 [PROTO_5]
       56 CAPTURE                          VAL R9
       57 SETTABLEKS                       R10 R3 K28 ["lookPreviewUrl"]
       59 DUPCLOSURE                       R10 K29 [PROTO_6]
       60 CAPTURE                          VAL R9
       61 SETTABLEKS                       R10 R3 K30 ["lookCreateUrl"]
       63 DUPCLOSURE                       R10 K31 [PROTO_7]
       64 CAPTURE                          VAL R7
       65 DUPCLOSURE                       R11 K32 [PROTO_8]
       66 CAPTURE                          VAL R7
       67 SETTABLEKS                       R11 R3 K33 ["creatorHubLookConfigureUrl"]
       69 DUPCLOSURE                       R11 K34 [PROTO_9]
       70 CAPTURE                          VAL R9
       71 SETTABLEKS                       R11 R3 K35 ["getFeatureAccessUrl"]
       73 RETURN                           R3 1
