PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["rootInstance"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R6 R1 K1 ["consumerConfig"]
        5 GETTABLEKS                       R6 R6 K2 ["source"]
        7 GETTABLE                         R4 R5 R6
        8 JUMPIFEQKB                       R4 TRUE ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 NAMECALL                         R4 R2 K3 ["GetDescendants"]
       14 CALL                             R4 1 1
       15 FASTCALL2                        TABLE_INSERT R4 R2 ; [+5]
       17 MOVE                             R6 R4
       18 MOVE                             R7 R2
       19 GETIMPORT                        R5 K6 [table.insert]
       21 CALL                             R5 2 0
       22 MOVE                             R5 R4
       23 LOADNIL                          R6
       24 LOADNIL                          R7
       25 FORGPREP                         R5
       26 LOADK                            R12 K7 ["MeshPart"]
       27 NAMECALL                         R10 R9 K8 ["IsA"]
       29 CALL                             R10 2 1
       30 JUMPIFNOT                        R10 ; [+64]
       31 GETTABLEKS                       R11 R9 K9 ["TextureID"]
       33 JUMPIFNOTEQKS                    R11 K10 [""] ; [+2]
       35 LOADB                            R10 0 +1
       36 LOADB                            R10 1
       37 JUMPIFNOT                        R3 ; [+19]
       38 JUMPIF                           R10 ; [+18]
       39 GETTABLEKS                       R11 R9 K11 ["TextureContent"]
       41 GETTABLEKS                       R13 R11 K12 ["Uri"]
       43 JUMPIFEQKNIL                     R13 ; [+6]
       45 LOADB                            R12 1
       46 GETTABLEKS                       R13 R11 K12 ["Uri"]
       48 JUMPIFNOTEQKS                    R13 K10 [""] ; [+7]
       50 GETTABLEKS                       R13 R11 K13 ["Object"]
       52 JUMPIFNOTEQKNIL                  R13 ; [+2]
       54 LOADB                            R12 0 +1
       55 LOADB                            R12 1
       56 MOVE                             R10 R12
       57 LOADK                            R13 K14 ["SurfaceAppearance"]
       58 NAMECALL                         R11 R9 K15 ["FindFirstChildWhichIsA"]
       60 CALL                             R11 2 1
       61 JUMPIFNOT                        R10 ; [+17]
       62 JUMPIFNOT                        R11 ; [+32]
       63 GETUPVAL                         R14 1
       64 GETTABLEKS                       R14 R14 K16 ["Keys"]
       66 GETTABLEKS                       R14 R14 K17 ["SurfaceAppearance_TextureAndSABothDefined"]
       68 DUPTABLE                         R15 K19 [{"MeshPartFullName"}]
       69 NAMECALL                         R16 R9 K20 ["GetFullName"]
       71 CALL                             R16 1 1
       72 SETTABLEKS                       R16 R15 K18 ["MeshPartFullName"]
       74 MOVE                             R16 R9
       75 NAMECALL                         R12 R0 K21 ["fail"]
       77 CALL                             R12 4 0
       78 JUMP                             ; [+16]
       79 JUMPIF                           R11 ; [+15]
       80 GETUPVAL                         R14 1
       81 GETTABLEKS                       R14 R14 K16 ["Keys"]
       83 GETTABLEKS                       R14 R14 K22 ["SurfaceAppearance_MissingSA"]
       85 DUPTABLE                         R15 K19 [{"MeshPartFullName"}]
       86 NAMECALL                         R16 R9 K20 ["GetFullName"]
       88 CALL                             R16 1 1
       89 SETTABLEKS                       R16 R15 K18 ["MeshPartFullName"]
       91 MOVE                             R16 R9
       92 NAMECALL                         R12 R0 K21 ["fail"]
       94 CALL                             R12 4 0
       95 FORGLOOP                         R5 2 ; [-70]
       97 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["util"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["validationSystem"]
       20 GETTABLEKS                       R3 R3 K8 ["ValidationEnums"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["validationSystem"]
       27 GETTABLEKS                       R4 R4 K9 ["ErrorSourceStrings"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K10 ["flags"]
       34 GETTABLEKS                       R5 R5 K11 ["getFFlagUGCValidateMigrateSurfaceAppearanceMeshQuality"]
       36 CALL                             R4 1 1
       37 DUPTABLE                         R5 K14 [{"InExpServer", "InExpClient"}]
       38 LOADB                            R6 1
       39 SETTABLEKS                       R6 R5 K12 ["InExpServer"]
       41 LOADB                            R6 1
       42 SETTABLEKS                       R6 R5 K13 ["InExpClient"]
       44 NEWTABLE                         R6 8 0
       46 SETTABLEKS                       R4 R6 K15 ["fflag"]
       48 NEWTABLE                         R7 0 3
       50 GETTABLEKS                       R8 R2 K16 ["UploadCategory"]
       52 GETTABLEKS                       R8 R8 K17 ["TORSO_AND_LIMBS"]
       54 GETTABLEKS                       R9 R2 K16 ["UploadCategory"]
       56 GETTABLEKS                       R9 R9 K18 ["DYNAMIC_HEAD"]
       58 GETTABLEKS                       R10 R2 K16 ["UploadCategory"]
       60 GETTABLEKS                       R10 R10 K19 ["RIGID_ACCESSORY"]
       62 SETLIST                          R7 R8 3 [1]
       64 SETTABLEKS                       R7 R6 K20 ["categories"]
       66 NEWTABLE                         R7 0 0
       68 SETTABLEKS                       R7 R6 K21 ["requiredData"]
       70 NEWTABLE                         R7 0 0
       72 SETTABLEKS                       R7 R6 K22 ["expectedFailures"]
       74 DUPCLOSURE                       R7 K23 [PROTO_0]
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R3
       77 SETTABLEKS                       R7 R6 K24 ["run"]
       79 RETURN                           R6 1
