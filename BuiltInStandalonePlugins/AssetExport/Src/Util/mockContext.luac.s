PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
        8 MOVE                             R9 R2
        9 MOVE                             R10 R7
       10 GETIMPORT                        R8 K2 [table.insert]
       12 CALL                             R8 2 0
       13 FORGLOOP                         R3 2 ; [-8]
       15 FASTCALL1                        TYPE R0 ; [+3]
       16 MOVE                             R6 R0
       17 GETIMPORT                        R5 K4 [type]
       19 CALL                             R5 1 1
       20 JUMPIFEQKS                       R5 K0 ["table"] ; [+2]
       22 LOADB                            R4 0 +1
       23 LOADB                            R4 1
       24 FASTCALL2K                       ASSERT R4 K5 ; [+4]
       26 LOADK                            R5 K5 ["Expected children to be a table"]
       27 GETIMPORT                        R3 K7 [assert]
       29 CALL                             R3 2 0
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R3 R4 K8 ["provideMockContext"]
       33 MOVE                             R4 R2
       34 MOVE                             R5 R0
       35 CALL                             R3 2 -1
       36 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetExport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["TestHelpers"]
       16 DUPCLOSURE                       R3 K9 [PROTO_0]
       17 CAPTURE                          VAL R2
       18 RETURN                           R3 1
