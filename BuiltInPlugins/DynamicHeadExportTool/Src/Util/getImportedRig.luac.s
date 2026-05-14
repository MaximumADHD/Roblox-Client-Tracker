PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetChildren"]
        3 CALL                             R0 1 3
        4 FORGPREP                         R0
        5 LOADK                            R7 K1 ["Model"]
        6 NAMECALL                         R5 R4 K2 ["IsA"]
        8 CALL                             R5 2 1
        9 JUMPIFNOT                        R5 ; [+11]
       10 GETTABLEKS                       R5 R4 K3 ["Name"]
       12 JUMPIFNOTEQKS                    R5 K4 ["ImportedFbx"] ; [+8]
       14 LOADK                            R7 K5 ["R15ArtistIntent"]
       15 NAMECALL                         R5 R4 K6 ["FindFirstChild"]
       17 CALL                             R5 2 1
       18 JUMPIFNOT                        R5 ; [+15]
       19 RETURN                           R5 1
       20 JUMP                             ; [+13]
       21 LOADK                            R7 K1 ["Model"]
       22 NAMECALL                         R5 R4 K2 ["IsA"]
       24 CALL                             R5 2 1
       25 JUMPIFNOT                        R5 ; [+8]
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R6 R6 K7 ["AvatarImporterRigNames"]
       29 GETTABLEKS                       R7 R4 K3 ["Name"]
       31 GETTABLE                         R5 R6 R7
       32 JUMPIFNOT                        R5 ; [+1]
       33 RETURN                           R4 1
       34 FORGLOOP                         R0 2 ; [-30]
       36 LOADNIL                          R0
       37 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DynamicHeadExportTool"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["Workspace"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Constants"]
       19 CALL                             R2 1 1
       20 DUPCLOSURE                       R3 K12 [PROTO_0]
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R2
       23 RETURN                           R3 1
