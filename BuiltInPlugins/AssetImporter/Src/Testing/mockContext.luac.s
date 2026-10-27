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
       15 MOVE                             R2 R1
       16 JUMPIF                           R2 ; [+2]
       17 NEWTABLE                         R2 0 0
       19 NEWTABLE                         R3 0 0
       21 MOVE                             R4 R2
       22 LOADNIL                          R5
       23 LOADNIL                          R6
       24 FORGPREP                         R4
       25 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       27 MOVE                             R10 R3
       28 MOVE                             R11 R8
       29 GETIMPORT                        R9 K7 [table.insert]
       31 CALL                             R9 2 0
       32 FORGLOOP                         R4 2 ; [-8]
       34 GETUPVAL                         R4 0
       35 GETTABLEKS                       R4 R4 K8 ["createElement"]
       37 GETUPVAL                         R5 1
       38 GETTABLEKS                       R5 R5 K9 ["FoundationProvider"]
       40 DUPTABLE                         R6 K14 [{["theme"] = "Dark", ["device"] = "Desktop"}]
       41 GETUPVAL                         R7 2
       42 GETTABLEKS                       R7 R7 K15 ["provideMockContext"]
       44 MOVE                             R8 R3
       45 MOVE                             R9 R0
       46 CALL                             R7 2 -1
       47 CALL                             R4 -1 -1
       48 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["TestHelpers"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Packages"]
       27 GETTABLEKS                       R5 R5 K10 ["Foundation"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K11 [PROTO_0]
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R3
       34 RETURN                           R5 1
