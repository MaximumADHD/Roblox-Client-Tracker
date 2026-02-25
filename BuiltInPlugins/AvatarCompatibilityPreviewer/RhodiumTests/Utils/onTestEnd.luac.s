PROTO_0:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 SETUPVAL                         R1 0
        4 LENGTH                           R3 R0
        5 LOADN                            R1 1
        6 LOADN                            R2 255
        7 FORNPREP                         R1
        8 GETTABLE                         R4 R0 R3
        9 CALL                             R4 0 0
       10 FORNLOOP                         R1
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [table.insert]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Packages"]
       11 GETTABLEKS                       R3 R4 K7 ["Dev"]
       13 GETTABLEKS                       R2 R3 K8 ["JestGlobals"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 0 0
       18 GETTABLEKS                       R3 R1 K9 ["afterEach"]
       20 NEWCLOSURE                       R4 P0
       21 CAPTURE                          REF R2
       22 CALL                             R3 1 0
       23 NEWCLOSURE                       R3 P1
       24 CAPTURE                          REF R2
       25 CLOSEUPVALS                      R2
       26 RETURN                           R3 1
