PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Expected children to be a table"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K6 ["createElement"]
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K7 ["FoundationProvider"]
       21 DUPTABLE                         R3 K12 [{["theme"] = "Dark", ["device"] = "Desktop"}]
       22 DUPTABLE                         R4 K14 [{"LocalizationProvider"}]
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K6 ["createElement"]
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R6 R6 K15 ["MockProvider"]
       29 LOADNIL                          R7
       30 MOVE                             R8 R0
       31 CALL                             R5 3 1
       32 SETTABLEKS                       R5 R4 K13 ["LocalizationProvider"]
       34 CALL                             R1 3 -1
       35 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainPaletteEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Contexts"]
       30 GETTABLEKS                       R4 R4 K11 ["Localization"]
       32 DUPCLOSURE                       R5 K12 [PROTO_0]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R4
       36 RETURN                           R5 1
