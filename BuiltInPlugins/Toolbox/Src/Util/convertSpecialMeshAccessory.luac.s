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
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 1
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 JUMPIFNOT                        R1 ; [+1]
        9 RETURN                           R0 1
       10 GETIMPORT                        R1 K2 [Instance.new]
       12 LOADK                            R2 K3 ["Accessory"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R0 K4 ["Name"]
       16 SETTABLEKS                       R2 R1 K4 ["Name"]
       18 GETTABLEKS                       R2 R0 K5 ["Parent"]
       20 SETTABLEKS                       R2 R1 K5 ["Parent"]
       22 GETTABLEKS                       R2 R0 K6 ["Handle"]
       24 LOADK                            R5 K7 ["SpecialMesh"]
       25 NAMECALL                         R3 R2 K8 ["FindFirstChildOfClass"]
       27 CALL                             R3 2 1
       28 GETIMPORT                        R4 K2 [Instance.new]
       30 LOADK                            R5 K9 ["MeshPart"]
       31 CALL                             R4 1 1
       32 LOADK                            R5 K6 ["Handle"]
       33 SETTABLEKS                       R5 R4 K4 ["Name"]
       35 GETTABLEKS                       R5 R3 K10 ["TextureId"]
       37 SETTABLEKS                       R5 R4 K11 ["TextureID"]
       39 SETTABLEKS                       R1 R4 K5 ["Parent"]
       41 GETUPVAL                         R5 2
       42 MOVE                             R7 R4
       43 GETTABLEKS                       R8 R3 K12 ["MeshId"]
       45 NAMECALL                         R5 R5 K13 ["SetMeshIdBlocking"]
       47 CALL                             R5 3 0
       48 GETTABLEKS                       R6 R4 K14 ["Size"]
       50 GETTABLEKS                       R7 R3 K15 ["Scale"]
       52 MUL                              R5 R6 R7
       53 SETTABLEKS                       R5 R4 K14 ["Size"]
       55 GETTABLEKS                       R5 R2 K16 ["CFrame"]
       57 SETTABLEKS                       R5 R4 K16 ["CFrame"]
       59 GETIMPORT                        R5 K18 [pairs]
       61 NAMECALL                         R6 R2 K19 ["GetChildren"]
       63 CALL                             R6 1 -1
       64 CALL                             R5 -1 3
       65 FORGPREP_NEXT                    R5
       66 LOADK                            R12 K7 ["SpecialMesh"]
       67 NAMECALL                         R10 R9 K20 ["IsA"]
       69 CALL                             R10 2 1
       70 JUMPIF                           R10 ; [+5]
       71 NAMECALL                         R10 R9 K21 ["Clone"]
       73 CALL                             R10 1 1
       74 SETTABLEKS                       R4 R10 K5 ["Parent"]
       76 FORGLOOP                         R5 2 ; [-11]
       78 LOADK                            R7 K22 ["ThumbnailConfiguration"]
       79 NAMECALL                         R5 R0 K23 ["FindFirstChild"]
       81 CALL                             R5 2 1
       82 JUMPIFNOT                        R5 ; [+34]
       83 LOADK                            R8 K24 ["Configuration"]
       84 NAMECALL                         R6 R5 K20 ["IsA"]
       86 CALL                             R6 2 1
       87 JUMPIFNOT                        R6 ; [+29]
       88 LOADK                            R8 K25 ["ThumbnailCameraTarget"]
       89 NAMECALL                         R6 R5 K23 ["FindFirstChild"]
       91 CALL                             R6 2 1
       92 LOADK                            R9 K26 ["ThumbnailCameraValue"]
       93 NAMECALL                         R7 R5 K23 ["FindFirstChild"]
       95 CALL                             R7 2 1
       96 JUMPIFNOT                        R6 ; [+20]
       97 LOADK                            R10 K27 ["ObjectValue"]
       98 NAMECALL                         R8 R6 K20 ["IsA"]
      100 CALL                             R8 2 1
      101 JUMPIFNOT                        R8 ; [+15]
      102 JUMPIFNOT                        R7 ; [+14]
      103 LOADK                            R10 K28 ["CFrameValue"]
      104 NAMECALL                         R8 R7 K20 ["IsA"]
      106 CALL                             R8 2 1
      107 JUMPIFNOT                        R8 ; [+9]
      108 NAMECALL                         R8 R5 K21 ["Clone"]
      110 CALL                             R8 1 1
      111 GETTABLEKS                       R9 R8 K25 ["ThumbnailCameraTarget"]
      113 SETTABLEKS                       R4 R9 K29 ["Value"]
      115 SETTABLEKS                       R1 R8 K5 ["Parent"]
      117 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UGCValidationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Src"]
       19 GETTABLEKS                       R3 R3 K10 ["Flags"]
       21 GETTABLEKS                       R3 R3 K11 ["getFFlagToolboxRemoveLegacyCatalogUpload"]
       23 CALL                             R2 1 1
       24 DUPCLOSURE                       R3 K12 [PROTO_0]
       25 DUPCLOSURE                       R4 K13 [PROTO_1]
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R0
       29 RETURN                           R4 1
