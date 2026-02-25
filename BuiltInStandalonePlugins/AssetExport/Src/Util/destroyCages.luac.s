PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 JUMPIFNOT                        R0 ; [+10]
        3 GETUPVAL                         R2 0
        4 NAMECALL                         R2 R2 K0 ["Get"]
        6 CALL                             R2 1 1
        7 MOVE                             R1 R2
        8 LENGTH                           R2 R1
        9 JUMPIFNOTEQKN                    R2 K1 [0] ; [+11]
       11 RETURN                           R0 0
       12 JUMP                             ; [+8]
       13 GETIMPORT                        R3 K3 [game]
       15 GETTABLEKS                       R2 R3 K4 ["Workspace"]
       17 NAMECALL                         R2 R2 K5 ["GetChildren"]
       19 CALL                             R2 1 1
       20 MOVE                             R1 R2
       21 MOVE                             R2 R1
       22 LOADNIL                          R3
       23 LOADNIL                          R4
       24 FORGPREP                         R2
       25 NAMECALL                         R7 R6 K5 ["GetChildren"]
       27 CALL                             R7 1 3
       28 FORGPREP                         R7
       29 LOADK                            R14 K6 ["Folder"]
       30 NAMECALL                         R12 R11 K7 ["IsA"]
       32 CALL                             R12 2 1
       33 JUMPIFNOT                        R12 ; [+7]
       34 GETTABLEKS                       R12 R11 K8 ["Name"]
       36 JUMPIFNOTEQKS                    R12 K9 ["CagesForExport"] ; [+4]
       38 NAMECALL                         R12 R11 K10 ["Destroy"]
       40 CALL                             R12 1 0
       41 FORGLOOP                         R7 2 ; [-13]
       43 FORGLOOP                         R2 2 ; [-19]
       45 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
