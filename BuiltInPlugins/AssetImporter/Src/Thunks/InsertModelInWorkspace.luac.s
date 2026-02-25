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
        6 GETUPVAL                         R4 0
        7 CALL                             R4 0 1
        8 JUMPIFNOT                        R4 ; [+27]
        9 LOADNIL                          R4
       10 GETTABLEKS                       R5 R1 K2 ["AddModelToInventory"]
       12 JUMPIFNOT                        R5 ; [+23]
       13 GETTABLEKS                       R5 R1 K3 ["ShouldImport"]
       15 JUMPIFNOT                        R5 ; [+20]
       16 GETUPVAL                         R5 1
       17 CALL                             R5 0 1
       18 JUMPIFNOT                        R5 ; [+10]
       19 GETTABLEKS                       R5 R0 K4 ["AssetIds"]
       21 GETTABLEKS                       R7 R1 K5 ["Id"]
       23 FASTCALL1                        TOSTRING R7 ; [+2]
       24 GETIMPORT                        R6 K7 [tostring]
       26 CALL                             R6 1 1
       27 GETTABLE                         R4 R5 R6
       28 JUMP                             ; [+5]
       29 GETTABLEKS                       R5 R0 K4 ["AssetIds"]
       31 GETTABLEKS                       R6 R1 K5 ["Id"]
       33 GETTABLE                         R4 R5 R6
       34 SETTABLEKS                       R4 R3 K8 ["SourceAssetId"]
       36 GETTABLEKS                       R4 R1 K2 ["AddModelToInventory"]
       38 JUMPIFNOT                        R4 ; [+48]
       39 GETTABLEKS                       R4 R1 K3 ["ShouldImport"]
       41 JUMPIFNOT                        R4 ; [+45]
       42 GETTABLEKS                       R4 R1 K9 ["ImportAsPackage"]
       44 JUMPIFNOT                        R4 ; [+42]
       45 LOADK                            R4 K10 ["rbxassetid://%d"]
       46 GETUPVAL                         R5 1
       47 CALL                             R5 0 1
       48 JUMPIFNOT                        R5 ; [+14]
       49 GETTABLEKS                       R8 R0 K4 ["AssetIds"]
       51 GETTABLEKS                       R10 R1 K5 ["Id"]
       53 FASTCALL1                        TOSTRING R10 ; [+2]
       54 GETIMPORT                        R9 K7 [tostring]
       56 CALL                             R9 1 1
       57 GETTABLE                         R7 R8 R9
       58 NAMECALL                         R5 R4 K11 ["format"]
       60 CALL                             R5 2 1
       61 MOVE                             R4 R5
       62 JUMP                             ; [+9]
       63 GETTABLEKS                       R8 R0 K4 ["AssetIds"]
       65 GETTABLEKS                       R9 R1 K5 ["Id"]
       67 GETTABLE                         R7 R8 R9
       68 NAMECALL                         R5 R4 K11 ["format"]
       70 CALL                             R5 2 1
       71 MOVE                             R4 R5
       72 GETIMPORT                        R5 K13 [pcall]
       74 GETUPVAL                         R7 2
       75 GETTABLEKS                       R6 R7 K14 ["LoadPackageAssetAsync"]
       77 GETUPVAL                         R7 2
       78 MOVE                             R8 R4
       79 CALL                             R5 3 2
       80 JUMPIF                           R5 ; [+5]
       81 GETIMPORT                        R7 K16 [error]
       83 LOADK                            R8 K17 ["Error trying to insert asset from import"]
       84 CALL                             R7 1 0
       85 RETURN                           R0 0
       86 GETTABLEN                        R3 R6 1
       87 JUMPIFNOTEQKNIL                  R3 ; [+2]
       89 RETURN                           R0 0
       90 GETUPVAL                         R4 2
       91 MOVE                             R6 R3
       92 NAMECALL                         R4 R4 K18 ["Insert"]
       94 CALL                             R4 2 0
       95 GETTABLEKS                       R4 R1 K19 ["InsertWithScenePosition"]
       97 JUMPIF                           R4 ; [+19]
       98 GETUPVAL                         R4 3
       99 CALL                             R4 0 1
      100 LOADK                            R7 K20 ["Model"]
      101 NAMECALL                         R5 R3 K21 ["IsA"]
      103 CALL                             R5 2 1
      104 JUMPIFNOT                        R5 ; [+5]
      105 MOVE                             R7 R4
      106 NAMECALL                         R5 R3 K22 ["MoveTo"]
      108 CALL                             R5 2 0
      109 JUMP                             ; [+7]
      110 LOADK                            R7 K23 ["MeshPart"]
      111 NAMECALL                         R5 R3 K21 ["IsA"]
      113 CALL                             R5 2 1
      114 JUMPIFNOT                        R5 ; [+2]
      115 SETTABLEKS                       R4 R3 K24 ["Position"]
      117 GETUPVAL                         R4 4
      118 LOADK                            R6 K25 ["Insert imported asset"]
      119 NAMECALL                         R4 R4 K26 ["SetWaypoint"]
      121 CALL                             R4 2 0
      122 GETUPVAL                         R4 5
      123 CALL                             R4 0 1
      124 JUMPIFNOT                        R4 ; [+19]
      125 JUMPIFNOT                        R2 ; [+18]
      126 GETUPVAL                         R4 6
      127 NEWTABLE                         R6 0 1
      129 MOVE                             R7 R3
      130 SETLIST                          R6 R7 1 [1]
      132 NAMECALL                         R4 R4 K27 ["Set"]
      134 CALL                             R4 2 0
      135 GETUPVAL                         R4 7
      136 GETIMPORT                        R7 K29 [game]
      138 GETTABLEKS                       R6 R7 K30 ["Workspace"]
      140 GETTABLEKS                       R5 R6 K31 ["CurrentCamera"]
      142 MOVE                             R6 R3
      143 CALL                             R4 2 0
      144 RETURN                           R0 0

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
       46 GETIMPORT                        R7 K5 [require]
       48 GETTABLEKS                       R10 R0 K6 ["Src"]
       50 GETTABLEKS                       R9 R10 K14 ["Flags"]
       52 GETTABLEKS                       R8 R9 K16 ["getFFlagAssetImportSetSourceAssetId"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K5 [require]
       57 GETTABLEKS                       R11 R0 K6 ["Src"]
       59 GETTABLEKS                       R10 R11 K14 ["Flags"]
       61 GETTABLEKS                       R9 R10 K17 ["getFFlagEnableQuickImporter"]
       63 CALL                             R8 1 1
       64 DUPCLOSURE                       R9 K18 [PROTO_0]
       65 DUPCLOSURE                       R10 K19 [PROTO_1]
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R9
       74 DUPCLOSURE                       R11 K20 [PROTO_3]
       75 CAPTURE                          VAL R10
       76 RETURN                           R11 1
