PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADK                            R1 K0 [""]
        2 RETURN                           R1 1
        3 NEWTABLE                         R1 0 1
        5 GETTABLEKS                       R2 R0 K1 ["creatorType"]
        7 SETLIST                          R1 R2 1 [1]
        9 GETTABLEKS                       R2 R0 K2 ["isTemplates"]
       11 JUMPIFNOT                        R2 ; [+17]
       12 FASTCALL2K                       TABLE_INSERT R1 K3 ; [+5]
       14 MOVE                             R3 R1
       15 LOADK                            R4 K3 ["templates"]
       16 GETIMPORT                        R2 K6 [table.insert]
       18 CALL                             R2 2 0
       19 GETTABLEKS                       R5 R0 K8 ["search"]
       21 ORK                              R4 R5 K7 ["All"]
       22 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       24 MOVE                             R3 R1
       25 GETIMPORT                        R2 K6 [table.insert]
       27 CALL                             R2 2 0
       28 JUMP                             ; [+21]
       29 FASTCALL2K                       TABLE_INSERT R1 K9 ; [+5]
       31 MOVE                             R3 R1
       32 LOADK                            R4 K9 ["experiences"]
       33 GETIMPORT                        R2 K6 [table.insert]
       35 CALL                             R2 2 0
       36 GETTABLEKS                       R2 R0 K8 ["search"]
       38 JUMPIFNOT                        R2 ; [+11]
       39 GETTABLEKS                       R2 R0 K8 ["search"]
       41 JUMPIFEQKS                       R2 K0 [""] ; [+8]
       43 FASTCALL2K                       TABLE_INSERT R1 K8 ; [+5]
       45 MOVE                             R3 R1
       46 LOADK                            R4 K8 ["search"]
       47 GETIMPORT                        R2 K6 [table.insert]
       49 CALL                             R2 2 0
       50 GETTABLEKS                       R2 R0 K10 ["isPublic"]
       52 JUMPIFNOT                        R2 ; [+7]
       53 FASTCALL2K                       TABLE_INSERT R1 K11 ; [+5]
       55 MOVE                             R3 R1
       56 LOADK                            R4 K11 ["public"]
       57 GETIMPORT                        R2 K6 [table.insert]
       59 CALL                             R2 2 0
       60 GETTABLEKS                       R2 R0 K12 ["isArchived"]
       62 JUMPIFNOT                        R2 ; [+7]
       63 FASTCALL2K                       TABLE_INSERT R1 K13 ; [+5]
       65 MOVE                             R3 R1
       66 LOADK                            R4 K13 ["archived"]
       67 GETIMPORT                        R2 K6 [table.insert]
       69 CALL                             R2 2 0
       70 GETIMPORT                        R2 K16 [string.lower]
       72 GETIMPORT                        R3 K18 [table.concat]
       74 MOVE                             R4 R1
       75 LOADK                            R5 K19 ["_"]
       76 CALL                             R3 2 -1
       77 CALL                             R2 -1 -1
       78 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 RETURN                           R2 1
