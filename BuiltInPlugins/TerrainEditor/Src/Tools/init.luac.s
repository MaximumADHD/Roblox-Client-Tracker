MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Flags"]
       13 GETTABLEKS                       R2 R3 K8 ["getFFlagTerrainEditorGenerationFeature"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 0 14
       18 MOVE                             R4 R1
       19 CALL                             R4 0 1
       20 JUMPIFNOT                        R4 ; [+8]
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R5 K1 [script]
       25 GETTABLEKS                       R4 R5 K9 ["RegionBuild"]
       27 CALL                             R3 1 1
       28 JUMP                             ; [+1]
       29 LOADNIL                          R3
       30 GETIMPORT                        R4 K5 [require]
       32 GETIMPORT                        R6 K1 [script]
       34 GETTABLEKS                       R5 R6 K10 ["RegionImport"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETIMPORT                        R7 K1 [script]
       41 GETTABLEKS                       R6 R7 K11 ["RegionGenerate"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETIMPORT                        R8 K1 [script]
       48 GETTABLEKS                       R7 R8 K12 ["Clear"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETIMPORT                        R9 K1 [script]
       55 GETTABLEKS                       R8 R9 K13 ["RegionSelect"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETIMPORT                        R10 K1 [script]
       62 GETTABLEKS                       R9 R10 K14 ["RegionTransform"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETIMPORT                        R11 K1 [script]
       69 GETTABLEKS                       R10 R11 K15 ["RegionFill"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETIMPORT                        R12 K1 [script]
       76 GETTABLEKS                       R11 R12 K16 ["RegionSeaLevel"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETIMPORT                        R13 K1 [script]
       83 GETTABLEKS                       R12 R13 K17 ["BrushDraw"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETIMPORT                        R14 K1 [script]
       90 GETTABLEKS                       R13 R14 K18 ["BrushSculpt"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETIMPORT                        R15 K1 [script]
       97 GETTABLEKS                       R14 R15 K19 ["BrushSmooth"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETIMPORT                        R16 K1 [script]
      104 GETTABLEKS                       R15 R16 K20 ["BrushPaint"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K5 [require]
      109 GETIMPORT                        R17 K1 [script]
      111 GETTABLEKS                       R16 R17 K21 ["BrushFlatten"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K5 [require]
      116 GETIMPORT                        R18 K1 [script]
      118 GETTABLEKS                       R17 R18 K22 ["Empty"]
      120 CALL                             R16 1 -1
      121 SETLIST                          R2 R3 -1 [1]
      123 RETURN                           R2 1
