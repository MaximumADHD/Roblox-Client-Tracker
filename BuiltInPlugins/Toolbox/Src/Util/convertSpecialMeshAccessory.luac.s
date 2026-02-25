PROTO_0:
        0 JUMPIFNOT                        R0 ; [+29]
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R2 R0
        3 GETIMPORT                        R1 K1 [typeof]
        5 CALL                             R1 1 1
        6 JUMPIFNOTEQKS                    R1 K2 ["Instance"] ; [+23]
        8 LOADK                            R3 K3 ["Accessory"]
        9 NAMECALL                         R1 R0 K4 ["IsA"]
       11 CALL                             R1 2 1
       12 JUMPIFNOT                        R1 ; [+17]
       13 LOADK                            R3 K5 ["Handle"]
       14 NAMECALL                         R1 R0 K6 ["FindFirstChild"]
       16 CALL                             R1 2 1
       17 JUMPIFNOT                        R1 ; [+12]
       18 LOADK                            R4 K7 ["MeshPart"]
       19 NAMECALL                         R2 R1 K4 ["IsA"]
       21 CALL                             R2 2 1
       22 JUMPIFNOT                        R2 ; [+7]
       23 LOADK                            R4 K8 ["WrapLayer"]
       24 NAMECALL                         R2 R1 K9 ["FindFirstChildOfClass"]
       26 CALL                             R2 2 1
       27 JUMPIFNOT                        R2 ; [+2]
       28 LOADB                            R3 1
       29 RETURN                           R3 1
       30 LOADB                            R1 0
       31 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 1
        5 GETIMPORT                        R1 K2 [Instance.new]
        7 LOADK                            R2 K3 ["Accessory"]
        8 CALL                             R1 1 1
        9 GETTABLEKS                       R2 R0 K4 ["Name"]
       11 SETTABLEKS                       R2 R1 K4 ["Name"]
       13 GETTABLEKS                       R2 R0 K5 ["Parent"]
       15 SETTABLEKS                       R2 R1 K5 ["Parent"]
       17 GETTABLEKS                       R2 R0 K6 ["Handle"]
       19 LOADK                            R5 K7 ["SpecialMesh"]
       20 NAMECALL                         R3 R2 K8 ["FindFirstChildOfClass"]
       22 CALL                             R3 2 1
       23 GETIMPORT                        R4 K2 [Instance.new]
       25 LOADK                            R5 K9 ["MeshPart"]
       26 CALL                             R4 1 1
       27 LOADK                            R5 K6 ["Handle"]
       28 SETTABLEKS                       R5 R4 K4 ["Name"]
       30 GETTABLEKS                       R5 R3 K10 ["TextureId"]
       32 SETTABLEKS                       R5 R4 K11 ["TextureID"]
       34 SETTABLEKS                       R1 R4 K5 ["Parent"]
       36 GETUPVAL                         R5 1
       37 MOVE                             R7 R4
       38 GETTABLEKS                       R8 R3 K12 ["MeshId"]
       40 NAMECALL                         R5 R5 K13 ["SetMeshIdBlocking"]
       42 CALL                             R5 3 0
       43 GETTABLEKS                       R6 R4 K14 ["Size"]
       45 GETTABLEKS                       R7 R3 K15 ["Scale"]
       47 MUL                              R5 R6 R7
       48 SETTABLEKS                       R5 R4 K14 ["Size"]
       50 GETTABLEKS                       R5 R2 K16 ["CFrame"]
       52 SETTABLEKS                       R5 R4 K16 ["CFrame"]
       54 GETIMPORT                        R5 K18 [pairs]
       56 NAMECALL                         R6 R2 K19 ["GetChildren"]
       58 CALL                             R6 1 -1
       59 CALL                             R5 -1 3
       60 FORGPREP_NEXT                    R5
       61 LOADK                            R12 K7 ["SpecialMesh"]
       62 NAMECALL                         R10 R9 K20 ["IsA"]
       64 CALL                             R10 2 1
       65 JUMPIF                           R10 ; [+5]
       66 NAMECALL                         R10 R9 K21 ["Clone"]
       68 CALL                             R10 1 1
       69 SETTABLEKS                       R4 R10 K5 ["Parent"]
       71 FORGLOOP                         R5 2 ; [-11]
       73 LOADK                            R7 K22 ["ThumbnailConfiguration"]
       74 NAMECALL                         R5 R0 K23 ["FindFirstChild"]
       76 CALL                             R5 2 1
       77 JUMPIFNOT                        R5 ; [+34]
       78 LOADK                            R8 K24 ["Configuration"]
       79 NAMECALL                         R6 R5 K20 ["IsA"]
       81 CALL                             R6 2 1
       82 JUMPIFNOT                        R6 ; [+29]
       83 LOADK                            R8 K25 ["ThumbnailCameraTarget"]
       84 NAMECALL                         R6 R5 K23 ["FindFirstChild"]
       86 CALL                             R6 2 1
       87 LOADK                            R9 K26 ["ThumbnailCameraValue"]
       88 NAMECALL                         R7 R5 K23 ["FindFirstChild"]
       90 CALL                             R7 2 1
       91 JUMPIFNOT                        R6 ; [+20]
       92 LOADK                            R10 K27 ["ObjectValue"]
       93 NAMECALL                         R8 R6 K20 ["IsA"]
       95 CALL                             R8 2 1
       96 JUMPIFNOT                        R8 ; [+15]
       97 JUMPIFNOT                        R7 ; [+14]
       98 LOADK                            R10 K28 ["CFrameValue"]
       99 NAMECALL                         R8 R7 K20 ["IsA"]
      101 CALL                             R8 2 1
      102 JUMPIFNOT                        R8 ; [+9]
      103 NAMECALL                         R8 R5 K21 ["Clone"]
      105 CALL                             R8 1 1
      106 GETTABLEKS                       R9 R8 K25 ["ThumbnailCameraTarget"]
      108 SETTABLEKS                       R4 R9 K29 ["Value"]
      110 SETTABLEKS                       R1 R8 K5 ["Parent"]
      112 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UGCValidationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 DUPCLOSURE                       R2 K5 [PROTO_1]
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R0
       11 RETURN                           R2 1
