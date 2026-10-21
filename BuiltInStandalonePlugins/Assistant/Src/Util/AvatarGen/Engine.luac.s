PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["services"]
        3 GETTABLEKS                       R1 R1 K1 ["AvatarCreationService"]
        5 DUPTABLE                         R3 K3 [{"TextPrompt"}]
        6 SETTABLEKS                       R0 R3 K2 ["TextPrompt"]
        8 NAMECALL                         R1 R1 K4 ["GenerateAvatar2DPreviewAsync"]
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R1 ; [+16]
        3 GETTABLEKS                       R2 R0 K0 ["JobId"]
        5 FASTCALL1                        TYPEOF R2 ; [+2]
        6 GETIMPORT                        R1 K2 [typeof]
        8 CALL                             R1 1 1
        9 JUMPIFNOTEQKS                    R1 K3 ["string"] ; [+8]
       11 GETTABLEKS                       R1 R0 K0 ["JobId"]
       13 JUMPIFEQKS                       R1 K4 [""] ; [+4]
       15 GETTABLEKS                       R1 R0 K0 ["JobId"]
       17 SETUPVAL                         R1 0
       18 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R1
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          REF R1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["services"]
        6 GETTABLEKS                       R3 R3 K1 ["AvatarCreationService"]
        8 DUPTABLE                         R5 K3 [{"PreviewId"}]
        9 SETTABLEKS                       R0 R5 K2 ["PreviewId"]
       11 MOVE                             R6 R2
       12 NAMECALL                         R3 R3 K4 ["GenerateAvatarAsync"]
       14 CALL                             R3 3 1
       15 DUPTABLE                         R4 K7 [{"generationId", "jobId"}]
       16 SETTABLEKS                       R3 R4 K5 ["generationId"]
       18 SETTABLEKS                       R1 R4 K6 ["jobId"]
       20 CLOSEUPVALS                      R1
       21 RETURN                           R4 1

PROTO_3:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["HumanoidRigDescription"]
        3 CALL                             R1 1 1
        4 SETTABLEKS                       R0 R1 K4 ["Parent"]
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["EngineFeatureStudioAssetUploadAndInsertEnabled"]
        3 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["services"]
        3 GETTABLEKS                       R1 R1 K1 ["StudioAssetService"]
        5 MOVE                             R3 R0
        6 NAMECALL                         R1 R1 K2 ["UploadAndInsertAssetForJobAsync"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["services"]
        3 GETTABLEKS                       R1 R1 K1 ["AvatarCreationService"]
        5 MOVE                             R3 R0
        6 NAMECALL                         R1 R1 K2 ["LoadGeneratedAvatarAsync"]
        8 CALL                             R1 2 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["services"]
       12 GETTABLEKS                       R2 R2 K3 ["Players"]
       14 MOVE                             R4 R1
       15 GETIMPORT                        R5 K7 [Enum.HumanoidRigType.R15]
       17 NAMECALL                         R2 R2 K8 ["CreateHumanoidModelFromDescriptionAsync"]
       19 CALL                             R2 3 1
       20 NAMECALL                         R3 R2 K9 ["GetDescendants"]
       22 CALL                             R3 1 3
       23 FORGPREP                         R3
       24 LOADK                            R10 K10 ["BasePart"]
       25 NAMECALL                         R8 R7 K11 ["IsA"]
       27 CALL                             R8 2 1
       28 JUMPIFNOT                        R8 ; [+3]
       29 LOADB                            R8 0
       30 SETTABLEKS                       R8 R7 K12 ["Locked"]
       32 FORGLOOP                         R3 2 ; [-9]
       34 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["AvatarCreationService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["Players"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K5 [game]
       21 LOADK                            R5 K9 ["StudioAssetService"]
       22 NAMECALL                         R3 R3 K7 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R5 R0 K12 ["Src"]
       29 GETTABLEKS                       R5 R5 K13 ["Flags"]
       31 CALL                             R4 1 1
       32 NEWTABLE                         R5 8 0
       34 DUPTABLE                         R6 K14 [{"AvatarCreationService", "Players", "StudioAssetService"}]
       35 SETTABLEKS                       R1 R6 K6 ["AvatarCreationService"]
       37 SETTABLEKS                       R2 R6 K8 ["Players"]
       39 SETTABLEKS                       R3 R6 K9 ["StudioAssetService"]
       41 SETTABLEKS                       R6 R5 K15 ["services"]
       43 DUPCLOSURE                       R6 K16 [PROTO_0]
       44 CAPTURE                          VAL R5
       45 SETTABLEKS                       R6 R5 K17 ["generate2DPreviewAsync"]
       47 DUPCLOSURE                       R6 K18 [PROTO_2]
       48 CAPTURE                          VAL R5
       49 SETTABLEKS                       R6 R5 K19 ["generate3DAsync"]
       51 DUPCLOSURE                       R6 K20 [PROTO_3]
       52 SETTABLEKS                       R6 R5 K21 ["addHumanoidRigDescription"]
       54 DUPCLOSURE                       R6 K22 [PROTO_4]
       55 CAPTURE                          VAL R4
       56 SETTABLEKS                       R6 R5 K23 ["isUploadAndInsertEnabled"]
       58 DUPCLOSURE                       R6 K24 [PROTO_5]
       59 CAPTURE                          VAL R5
       60 SETTABLEKS                       R6 R5 K25 ["uploadAndInsertAsync"]
       62 DUPCLOSURE                       R6 K26 [PROTO_6]
       63 CAPTURE                          VAL R5
       64 SETTABLEKS                       R6 R5 K27 ["loadGeneratedAvatarAsync"]
       66 RETURN                           R5 1
