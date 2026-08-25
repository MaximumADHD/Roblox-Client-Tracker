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
       30 GETUPVAL                         R8 3
       31 GETTABLEKS                       R8 R8 K16 ["TestHelpers"]
       33 GETTABLEKS                       R8 R8 K17 ["mockContext"]
       35 MOVE                             R9 R0
       36 CALL                             R8 1 -1
       37 CALL                             R5 -1 1
       38 SETTABLEKS                       R5 R4 K13 ["LocalizationProvider"]
       40 CALL                             R1 3 -1
       41 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainPalette"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["MaterialFramework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["Contexts"]
       37 GETTABLEKS                       R5 R5 K12 ["Localization"]
       39 DUPCLOSURE                       R6 K13 [PROTO_0]
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R3
       44 RETURN                           R6 1
