PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["read"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["fromPlugin"]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["writeModel"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["fromPlugin"]
        6 MOVE                             R4 R0
        7 CALL                             R3 1 1
        8 MOVE                             R4 R1
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["writeAutoSelectView"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["fromPlugin"]
        6 MOVE                             R4 R0
        7 CALL                             R3 1 1
        8 MOVE                             R4 R1
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["writeKeepExistingUv"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["fromPlugin"]
        6 MOVE                             R4 R0
        7 CALL                             R3 1 1
        8 MOVE                             R4 R1
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["model"]
        2 JUMPIFNOTEQKS                    R2 K1 [""] ; [+12]
        4 GETTABLEKS                       R3 R1 K0 ["model"]
        6 JUMPIFEQKNIL                     R3 ; [+8]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["getFFlagTextureGenModelSelector"]
       11 CALL                             R3 0 1
       12 JUMPIFNOT                        R3 ; [+2]
       13 GETTABLEKS                       R2 R1 K0 ["model"]
       15 GETTABLEKS                       R3 R0 K3 ["autoSelectView"]
       17 GETTABLEKS                       R4 R1 K3 ["autoSelectView"]
       19 JUMPIFEQKNIL                     R4 ; [+8]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K4 ["getFFlagTextureGenAutoSelectView"]
       24 CALL                             R4 0 1
       25 JUMPIFNOT                        R4 ; [+2]
       26 GETTABLEKS                       R3 R1 K3 ["autoSelectView"]
       28 GETTABLEKS                       R4 R0 K5 ["keepExistingUv"]
       30 GETTABLEKS                       R5 R1 K5 ["keepExistingUv"]
       32 JUMPIFEQKNIL                     R5 ; [+8]
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R5 R5 K6 ["getFFlagGen3dTextureGenKeepExistingUv"]
       37 CALL                             R5 0 1
       38 JUMPIFNOT                        R5 ; [+2]
       39 GETTABLEKS                       R4 R1 K5 ["keepExistingUv"]
       41 GETTABLEKS                       R5 R0 K0 ["model"]
       43 JUMPIFNOTEQ                      R2 R5 ; [+10]
       45 GETTABLEKS                       R5 R0 K3 ["autoSelectView"]
       47 JUMPIFNOTEQ                      R3 R5 ; [+6]
       49 GETTABLEKS                       R5 R0 K5 ["keepExistingUv"]
       51 JUMPIFNOTEQ                      R4 R5 ; [+2]
       53 RETURN                           R0 1
       54 GETIMPORT                        R5 K9 [table.clone]
       56 MOVE                             R6 R0
       57 CALL                             R5 1 1
       58 SETTABLEKS                       R2 R5 K0 ["model"]
       60 SETTABLEKS                       R3 R5 K3 ["autoSelectView"]
       62 SETTABLEKS                       R4 R5 K5 ["keepExistingUv"]
       64 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Gen3dCore"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Bin"]
       25 GETTABLEKS                       R4 R4 K11 ["Common"]
       27 GETTABLEKS                       R4 R4 K12 ["defineLuaFlags"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K13 ["TextureGenPreferences"]
       32 NEWTABLE                         R5 8 0
       34 DUPCLOSURE                       R6 K14 [PROTO_0]
       35 CAPTURE                          VAL R4
       36 SETTABLEKS                       R6 R5 K15 ["read"]
       38 DUPCLOSURE                       R6 K16 [PROTO_1]
       39 CAPTURE                          VAL R4
       40 SETTABLEKS                       R6 R5 K17 ["writeModel"]
       42 DUPCLOSURE                       R6 K18 [PROTO_2]
       43 CAPTURE                          VAL R4
       44 SETTABLEKS                       R6 R5 K19 ["writeAutoSelectView"]
       46 DUPCLOSURE                       R6 K20 [PROTO_3]
       47 CAPTURE                          VAL R4
       48 SETTABLEKS                       R6 R5 K21 ["writeKeepExistingUv"]
       50 DUPCLOSURE                       R6 K22 [PROTO_4]
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R1
       53 SETTABLEKS                       R6 R5 K23 ["apply"]
       55 RETURN                           R5 1
