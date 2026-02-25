PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ClassName"]
        3 JUMPIFEQKS                       R2 K1 ["Folder"] ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 JUMPIFNOT                        R1 ; [+19]
        8 GETUPVAL                         R2 1
        9 LOADK                            R4 K2 ["openFolder"]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R6 R7 K3 ["Screen"]
       13 GETTABLEKS                       R5 R6 K4 ["Path"]
       15 NAMECALL                         R2 R2 K5 ["report"]
       17 CALL                             R2 3 0
       18 GETUPVAL                         R4 2
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R5 R6 K3 ["Screen"]
       22 CALL                             R4 1 -1
       23 NAMECALL                         R2 R0 K6 ["dispatch"]
       25 CALL                             R2 -1 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R2 R3 K7 ["assetType"]
       30 GETIMPORT                        R3 K11 [Enum.AssetType.Place]
       32 JUMPIFNOTEQ                      R2 R3 ; [+9]
       34 GETUPVAL                         R3 3
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R5 R6 K12 ["id"]
       38 NAMECALL                         R3 R3 K13 ["OpenPlace"]
       40 CALL                             R3 2 0
       41 JUMP                             ; [+89]
       42 GETIMPORT                        R3 K15 [Enum.AssetType.Package]
       44 JUMPIFNOTEQ                      R2 R3 ; [+9]
       46 GETUPVAL                         R3 3
       47 GETUPVAL                         R6 0
       48 GETTABLEKS                       R5 R6 K12 ["id"]
       50 NAMECALL                         R3 R3 K16 ["InsertPackage"]
       52 CALL                             R3 2 0
       53 JUMP                             ; [+77]
       54 GETIMPORT                        R3 K18 [Enum.AssetType.Image]
       56 JUMPIFNOTEQ                      R2 R3 ; [+9]
       58 GETUPVAL                         R3 3
       59 GETUPVAL                         R6 0
       60 GETTABLEKS                       R5 R6 K12 ["id"]
       62 NAMECALL                         R3 R3 K19 ["InsertImage"]
       64 CALL                             R3 2 0
       65 JUMP                             ; [+65]
       66 GETIMPORT                        R3 K21 [Enum.AssetType.MeshPart]
       68 JUMPIFNOTEQ                      R2 R3 ; [+15]
       70 GETUPVAL                         R3 3
       71 LOADK                            R6 K22 ["Meshes/"]
       72 GETUPVAL                         R8 0
       73 GETTABLEKS                       R7 R8 K23 ["name"]
       75 CONCAT                           R5 R6 R7
       76 LOADB                            R6 0
       77 GETUPVAL                         R8 0
       78 GETTABLEKS                       R7 R8 K12 ["id"]
       80 NAMECALL                         R3 R3 K24 ["InsertMesh"]
       82 CALL                             R3 4 0
       83 JUMP                             ; [+47]
       84 GETUPVAL                         R3 4
       85 CALL                             R3 0 1
       86 JUMPIFNOT                        R3 ; [+15]
       87 GETIMPORT                        R3 K26 [Enum.AssetType.Audio]
       89 JUMPIFNOTEQ                      R2 R3 ; [+12]
       91 GETUPVAL                         R3 3
       92 GETUPVAL                         R6 0
       93 GETTABLEKS                       R5 R6 K12 ["id"]
       95 GETUPVAL                         R7 0
       96 GETTABLEKS                       R6 R7 K23 ["name"]
       98 NAMECALL                         R3 R3 K27 ["InsertAudio"]
      100 CALL                             R3 3 0
      101 JUMP                             ; [+29]
      102 GETUPVAL                         R3 5
      103 CALL                             R3 0 1
      104 JUMPIFNOT                        R3 ; [+15]
      105 GETIMPORT                        R3 K29 [Enum.AssetType.Video]
      107 JUMPIFNOTEQ                      R2 R3 ; [+12]
      109 GETUPVAL                         R3 3
      110 GETUPVAL                         R6 0
      111 GETTABLEKS                       R5 R6 K12 ["id"]
      113 GETUPVAL                         R7 0
      114 GETTABLEKS                       R6 R7 K23 ["name"]
      116 NAMECALL                         R3 R3 K30 ["InsertVideo"]
      118 CALL                             R3 3 0
      119 JUMP                             ; [+11]
      120 GETIMPORT                        R3 K32 [Enum.AssetType.Model]
      122 JUMPIFNOTEQ                      R2 R3 ; [+8]
      124 GETUPVAL                         R3 3
      125 GETUPVAL                         R6 0
      126 GETTABLEKS                       R5 R6 K12 ["id"]
      128 NAMECALL                         R3 R3 K33 ["InsertModel"]
      130 CALL                             R3 2 0
      131 GETUPVAL                         R3 1
      132 LOADK                            R5 K34 ["doubleClickInsert"]
      133 NAMECALL                         R3 R3 K5 ["report"]
      135 CALL                             R3 2 0
      136 NAMECALL                         R3 R0 K35 ["getState"]
      138 CALL                             R3 1 1
      139 GETTABLEKS                       R5 R3 K36 ["AssetManagerReducer"]
      141 GETTABLEKS                       R4 R5 K37 ["searchTerm"]
      143 GETIMPORT                        R5 K40 [utf8.len]
      145 MOVE                             R6 R4
      146 CALL                             R5 1 1
      147 JUMPIFEQKN                       R5 K41 [0] ; [+6]
      149 GETUPVAL                         R5 1
      150 LOADK                            R7 K42 ["insertAfterSearch"]
      151 NAMECALL                         R5 R5 K5 ["report"]
      153 CALL                             R5 2 0
      154 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Actions"]
       15 GETTABLEKS                       R2 R3 K7 ["SetScreen"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R3 K4 [require]
       20 GETTABLEKS                       R6 R0 K5 ["Src"]
       22 GETTABLEKS                       R5 R6 K8 ["Util"]
       24 GETTABLEKS                       R4 R5 K9 ["AssetManagerUtilities"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R2 R3 K10 ["enableAudioImport"]
       29 GETIMPORT                        R4 K4 [require]
       31 GETTABLEKS                       R7 R0 K5 ["Src"]
       33 GETTABLEKS                       R6 R7 K8 ["Util"]
       35 GETTABLEKS                       R5 R6 K9 ["AssetManagerUtilities"]
       37 CALL                             R4 1 1
       38 GETTABLEKS                       R3 R4 K11 ["enableVideoImport"]
       40 GETIMPORT                        R4 K13 [game]
       42 LOADK                            R6 K14 ["AssetManagerService"]
       43 NAMECALL                         R4 R4 K15 ["GetService"]
       45 CALL                             R4 2 1
       46 DUPCLOSURE                       R5 K16 [PROTO_1]
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R3
       51 RETURN                           R5 1
