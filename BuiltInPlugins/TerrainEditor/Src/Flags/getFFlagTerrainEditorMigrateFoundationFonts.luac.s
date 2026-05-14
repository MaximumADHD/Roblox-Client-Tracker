PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TerrainEditorMigrateFoundationFonts"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 JUMPIFNOT                        R0 ; [+2]
        7 GETUPVAL                         R0 0
        8 CALL                             R0 0 1
        9 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["SharedFlags"]
       16 GETTABLEKS                       R2 R2 K9 ["getFFlagDevFrameworkAdjustTextFontSize"]
       18 GETIMPORT                        R3 K11 [game]
       20 LOADK                            R5 K12 ["TerrainEditorMigrateFoundationFonts"]
       21 LOADB                            R6 0
       22 NAMECALL                         R3 R3 K13 ["DefineFastFlag"]
       24 CALL                             R3 3 0
       25 DUPCLOSURE                       R3 K14 [PROTO_0]
       26 CAPTURE                          VAL R2
       27 RETURN                           R3 1
