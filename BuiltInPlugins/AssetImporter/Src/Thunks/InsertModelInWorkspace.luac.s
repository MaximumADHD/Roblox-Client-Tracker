PROTO_0:
        0 LOADK                            R5 K0 ["Model"]
        1 NAMECALL                         R3 R1 K1 ["IsA"]
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R3 ; [+4]
        5 NAMECALL                         R2 R1 K2 ["GetModelCFrame"]
        7 CALL                             R2 1 1
        8 JUMP                             ; [+2]
        9 GETTABLEKS                       R2 R1 K3 ["CFrame"]
       11 LOADK                            R6 K0 ["Model"]
       12 NAMECALL                         R4 R1 K1 ["IsA"]
       14 CALL                             R4 2 1
       15 JUMPIFNOT                        R4 ; [+4]
       16 NAMECALL                         R3 R1 K4 ["GetExtentsSize"]
       18 CALL                             R3 1 1
       19 JUMP                             ; [+2]
       20 GETTABLEKS                       R3 R1 K5 ["Size"]
       22 MOVE                             R6 R2
       23 MOVE                             R7 R3
       24 NAMECALL                         R4 R0 K6 ["zoomToExtents"]
       26 CALL                             R4 3 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R3 R1 K0 ["InsertInWorkspace"]
        2 JUMPIF                           R3 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R3 R0 K1 ["Instance"]
        6 LOADNIL                          R4
        7 GETTABLEKS                       R5 R1 K2 ["AddModelToInventory"]
        9 JUMPIFNOT                        R5 ; [+23]
       10 GETTABLEKS                       R5 R1 K3 ["ShouldImport"]
       12 JUMPIFNOT                        R5 ; [+20]
       13 GETUPVAL                         R5 0
       14 CALL                             R5 0 1
       15 JUMPIFNOT                        R5 ; [+10]
       16 GETTABLEKS                       R5 R0 K4 ["AssetIds"]
       18 GETTABLEKS                       R7 R1 K5 ["Id"]
       20 FASTCALL1                        TOSTRING R7 ; [+2]
       21 GETIMPORT                        R6 K7 [tostring]
       23 CALL                             R6 1 1
       24 GETTABLE                         R4 R5 R6
       25 JUMP                             ; [+5]
       26 GETTABLEKS                       R5 R0 K4 ["AssetIds"]
       28 GETTABLEKS                       R6 R1 K5 ["Id"]
       30 GETTABLE                         R4 R5 R6
       31 SETTABLEKS                       R4 R3 K8 ["SourceAssetId"]
       33 GETTABLEKS                       R5 R1 K2 ["AddModelToInventory"]
       35 JUMPIFNOT                        R5 ; [+48]
       36 GETTABLEKS                       R5 R1 K3 ["ShouldImport"]
       38 JUMPIFNOT                        R5 ; [+45]
       39 GETTABLEKS                       R5 R1 K9 ["ImportAsPackage"]
       41 JUMPIFNOT                        R5 ; [+42]
       42 LOADK                            R5 K10 ["rbxassetid://%d"]
       43 GETUPVAL                         R6 0
       44 CALL                             R6 0 1
       45 JUMPIFNOT                        R6 ; [+14]
       46 GETTABLEKS                       R9 R0 K4 ["AssetIds"]
       48 GETTABLEKS                       R11 R1 K5 ["Id"]
       50 FASTCALL1                        TOSTRING R11 ; [+2]
       51 GETIMPORT                        R10 K7 [tostring]
       53 CALL                             R10 1 1
       54 GETTABLE                         R8 R9 R10
       55 NAMECALL                         R6 R5 K11 ["format"]
       57 CALL                             R6 2 1
       58 MOVE                             R5 R6
       59 JUMP                             ; [+9]
       60 GETTABLEKS                       R9 R0 K4 ["AssetIds"]
       62 GETTABLEKS                       R10 R1 K5 ["Id"]
       64 GETTABLE                         R8 R9 R10
       65 NAMECALL                         R6 R5 K11 ["format"]
       67 CALL                             R6 2 1
       68 MOVE                             R5 R6
       69 GETIMPORT                        R6 K13 [pcall]
       71 GETUPVAL                         R8 1
       72 GETTABLEKS                       R7 R8 K14 ["LoadPackageAssetAsync"]
       74 GETUPVAL                         R8 1
       75 MOVE                             R9 R5
       76 CALL                             R6 3 2
       77 JUMPIF                           R6 ; [+5]
       78 GETIMPORT                        R8 K16 [error]
       80 LOADK                            R9 K17 ["Error trying to insert asset from import"]
       81 CALL                             R8 1 0
       82 RETURN                           R0 0
       83 GETTABLEN                        R3 R7 1
       84 JUMPIFNOTEQKNIL                  R3 ; [+2]
       86 RETURN                           R0 0
       87 GETUPVAL                         R5 1
       88 MOVE                             R7 R3
       89 NAMECALL                         R5 R5 K18 ["Insert"]
       91 CALL                             R5 2 0
       92 GETTABLEKS                       R5 R1 K19 ["InsertWithScenePosition"]
       94 JUMPIF                           R5 ; [+19]
       95 GETUPVAL                         R5 2
       96 CALL                             R5 0 1
       97 LOADK                            R8 K20 ["Model"]
       98 NAMECALL                         R6 R3 K21 ["IsA"]
      100 CALL                             R6 2 1
      101 JUMPIFNOT                        R6 ; [+5]
      102 MOVE                             R8 R5
      103 NAMECALL                         R6 R3 K22 ["MoveTo"]
      105 CALL                             R6 2 0
      106 JUMP                             ; [+7]
      107 LOADK                            R8 K23 ["MeshPart"]
      108 NAMECALL                         R6 R3 K21 ["IsA"]
      110 CALL                             R6 2 1
      111 JUMPIFNOT                        R6 ; [+2]
      112 SETTABLEKS                       R5 R3 K24 ["Position"]
      114 GETUPVAL                         R5 3
      115 LOADK                            R7 K25 ["Insert imported asset"]
      116 NAMECALL                         R5 R5 K26 ["SetWaypoint"]
      118 CALL                             R5 2 0
      119 JUMPIFNOT                        R2 ; [+18]
      120 GETUPVAL                         R5 4
      121 NEWTABLE                         R7 0 1
      123 MOVE                             R8 R3
      124 SETLIST                          R7 R8 1 [1]
      126 NAMECALL                         R5 R5 K27 ["Set"]
      128 CALL                             R5 2 0
      129 GETUPVAL                         R5 5
      130 GETIMPORT                        R8 K29 [game]
      132 GETTABLEKS                       R7 R8 K30 ["Workspace"]
      134 GETTABLEKS                       R6 R7 K31 ["CurrentCamera"]
      136 MOVE                             R7 R3
      137 CALL                             R5 2 0
      138 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 0
        5 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Utility"]
       13 GETTABLEKS                       R2 R3 K8 ["Services"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["GetService"]
       18 LOADK                            R3 K10 ["InsertService"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R1 K9 ["GetService"]
       22 LOADK                            R4 K11 ["Selection"]
       23 CALL                             R3 1 1
       24 GETTABLEKS                       R4 R1 K9 ["GetService"]
       26 LOADK                            R5 K12 ["ChangeHistoryService"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K5 [require]
       30 GETTABLEKS                       R8 R0 K6 ["Src"]
       32 GETTABLEKS                       R7 R8 K7 ["Utility"]
       34 GETTABLEKS                       R6 R7 K13 ["getWorkspaceInsertPosition"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K5 [require]
       39 GETTABLEKS                       R9 R0 K6 ["Src"]
       41 GETTABLEKS                       R8 R9 K14 ["Flags"]
       43 GETTABLEKS                       R7 R8 K15 ["getFFlagCinFixUploadResults"]
       45 CALL                             R6 1 1
       46 DUPCLOSURE                       R7 K16 [PROTO_0]
       47 DUPCLOSURE                       R8 K17 [PROTO_1]
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R7
       54 DUPCLOSURE                       R9 K18 [PROTO_3]
       55 CAPTURE                          VAL R8
       56 RETURN                           R9 1
