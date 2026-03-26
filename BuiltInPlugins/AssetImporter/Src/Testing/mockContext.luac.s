PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["Expected children to be a table"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K6 ["provideMockContext"]
       18 MOVE                             R3 R1
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R4 R5 K7 ["createElement"]
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R5 R6 K8 ["FoundationProvider"]
       25 DUPTABLE                         R6 K11 [{"theme", "device"}]
       26 LOADK                            R7 K12 ["Dark"]
       27 SETTABLEKS                       R7 R6 K9 ["theme"]
       29 LOADK                            R7 K13 ["Desktop"]
       30 SETTABLEKS                       R7 R6 K10 ["device"]
       32 MOVE                             R7 R0
       33 CALL                             R4 3 -1
       34 CALL                             R2 -1 -1
       35 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["TestHelpers"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R6 R0 K6 ["Packages"]
       27 GETTABLEKS                       R5 R6 K10 ["Foundation"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K11 [PROTO_0]
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R4
       34 RETURN                           R5 1
