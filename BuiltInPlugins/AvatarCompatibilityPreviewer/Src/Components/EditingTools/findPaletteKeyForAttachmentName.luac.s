PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R2 R5 K0 ["allItems"]
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 GETTABLEKS                       R7 R6 K1 ["attachment"]
       10 JUMPIFNOTEQ                      R7 R0 ; [+9]
       12 GETTABLEKS                       R9 R6 K2 ["id"]
       14 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       16 MOVE                             R8 R1
       17 GETIMPORT                        R7 K5 [table.insert]
       19 CALL                             R7 2 0
       20 FORGLOOP                         R2 2 ; [-13]
       22 LENGTH                           R2 R1
       23 JUMPIFNOTEQKN                    R2 K6 [0] ; [+3]
       25 LOADNIL                          R2
       26 RETURN                           R2 1
       27 GETUPVAL                         R2 1
       28 LOADNIL                          R3
       29 LOADNIL                          R4
       30 FORGPREP                         R2
       31 MOVE                             R7 R6
       32 LOADNIL                          R8
       33 LOADNIL                          R9
       34 FORGPREP                         R7
       35 GETTABLEKS                       R12 R11 K7 ["Items"]
       37 LOADNIL                          R13
       38 LOADNIL                          R14
       39 FORGPREP                         R12
       40 FASTCALL1                        TYPEOF R16 ; [+3]
       41 MOVE                             R18 R16
       42 GETIMPORT                        R17 K9 [typeof]
       44 CALL                             R17 1 1
       45 JUMPIFNOTEQKS                    R17 K10 ["number"] ; [+11]
       47 GETIMPORT                        R17 K12 [table.find]
       49 MOVE                             R18 R1
       50 MOVE                             R19 R16
       51 CALL                             R17 2 1
       52 JUMPIFEQKNIL                     R17 ; [+4]
       54 GETTABLEKS                       R17 R11 K13 ["Key"]
       56 RETURN                           R17 1
       57 FORGLOOP                         R12 2 ; [-18]
       59 FORGLOOP                         R7 2 ; [-25]
       61 FORGLOOP                         R2 2 ; [-31]
       63 LOADNIL                          R2
       64 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Resources"]
       13 GETTABLEKS                       R2 R3 K8 ["BuiltinItems"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K7 ["Resources"]
       22 GETTABLEKS                       R3 R4 K9 ["CatalogItems"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K10 [PROTO_0]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R2
       28 RETURN                           R3 1
