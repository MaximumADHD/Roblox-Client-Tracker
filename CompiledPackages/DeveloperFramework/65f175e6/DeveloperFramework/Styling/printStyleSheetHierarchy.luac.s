PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 LOADK                            R4 K0 ["Folder"]
        3 NAMECALL                         R2 R0 K1 ["FindFirstChildWhichIsA"]
        5 CALL                             R2 2 1
        6 GETTABLEKS                       R3 R2 K2 ["Name"]
        8 GETUPVAL                         R4 0
        9 MOVE                             R6 R3
       10 NAMECALL                         R4 R4 K3 ["FindFirstChild"]
       12 CALL                             R4 2 1
       13 LOADK                            R6 K4 ["Design"]
       14 NAMECALL                         R4 R4 K3 ["FindFirstChild"]
       16 CALL                             R4 2 1
       17 MOVE                             R6 R4
       18 JUMPIFNOT                        R6 ; [+4]
       19 LOADK                            R8 K5 ["StyleSheet"]
       20 NAMECALL                         R6 R4 K6 ["IsA"]
       22 CALL                             R6 2 1
       23 FASTCALL2K                       ASSERT R6 K7 ; [+4]
       25 LOADK                            R7 K7 ["Expected design to be a StyleSheet"]
       26 GETIMPORT                        R5 K9 [assert]
       28 CALL                             R5 2 0
       29 NEWTABLE                         R5 0 0
       31 NEWTABLE                         R6 0 1
       33 MOVE                             R7 R4
       34 SETLIST                          R6 R7 1 [1]
       36 LOADN                            R7 1
       37 LENGTH                           R8 R6
       38 JUMPIFNOTLE                      R7 R8 ; [+44]
       40 GETTABLE                         R8 R6 R7
       41 GETTABLE                         R9 R5 R8
       42 JUMPIF                           R9 ; [+38]
       43 LOADB                            R9 1
       44 SETTABLE                         R9 R5 R8
       45 NEWTABLE                         R9 0 0
       47 NAMECALL                         R10 R8 K10 ["GetDerives"]
       49 CALL                             R10 1 3
       50 FORGPREP                         R10
       51 GETTABLEKS                       R17 R14 K2 ["Name"]
       53 FASTCALL2                        TABLE_INSERT R9 R17 ; [+3]
       55 MOVE                             R16 R9
       56 GETUPVAL                         R15 1
       57 CALL                             R15 2 0
       58 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
       60 MOVE                             R16 R6
       61 MOVE                             R17 R14
       62 GETUPVAL                         R15 1
       63 CALL                             R15 2 0
       64 FORGLOOP                         R10 2 ; [-14]
       66 LOADK                            R12 K11 ["%* -> %*"]
       67 GETTABLEKS                       R14 R8 K2 ["Name"]
       69 GETUPVAL                         R15 2
       70 MOVE                             R16 R9
       71 LOADK                            R17 K12 [","]
       72 CALL                             R15 2 1
       73 NAMECALL                         R12 R12 K13 ["format"]
       75 CALL                             R12 3 1
       76 FASTCALL2                        TABLE_INSERT R1 R12 ; [+3]
       78 MOVE                             R11 R1
       79 GETUPVAL                         R10 1
       80 CALL                             R10 2 0
       81 ADDK                             R7 R7 K14 [1]
       82 JUMPBACK                         ; [-46]
       83 GETUPVAL                         R8 2
       84 MOVE                             R9 R1
       85 LOADK                            R10 K15 ["\n"]
       86 CALL                             R8 2 -1
       87 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StylingService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K6 [table.concat]
        9 GETIMPORT                        R2 K8 [table.insert]
       11 DUPCLOSURE                       R3 K9 [PROTO_0]
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R2
       14 CAPTURE                          VAL R1
       15 RETURN                           R3 1
