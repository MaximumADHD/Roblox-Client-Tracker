PROTO_0:
        0 DUPTABLE                         R2 K2 [{"kind", "count"}]
        1 GETTABLEKS                       R3 R0 K0 ["kind"]
        3 SETTABLEKS                       R3 R2 K0 ["kind"]
        5 GETTABLEKS                       R4 R0 K3 ["items"]
        7 LENGTH                           R3 R4
        8 SETTABLEKS                       R3 R2 K1 ["count"]
       10 GETTABLEKS                       R3 R0 K0 ["kind"]
       12 JUMPIFNOTEQKS                    R3 K4 ["single"] ; [+39]
       14 GETTABLEKS                       R4 R0 K3 ["items"]
       16 GETTABLEN                        R3 R4 1
       17 JUMPIFNOT                        R3 ; [+34]
       18 GETTABLEKS                       R4 R0 K3 ["items"]
       20 GETTABLEN                        R3 R4 1
       21 GETTABLEKS                       R4 R3 K5 ["Name"]
       23 SETTABLEKS                       R4 R2 K6 ["displayName"]
       25 JUMPIFNOT                        R1 ; [+5]
       26 MOVE                             R4 R1
       27 MOVE                             R5 R3
       28 CALL                             R4 1 1
       29 SETTABLEKS                       R4 R2 K7 ["uniqueId"]
       31 LOADK                            R6 K8 ["Model"]
       32 NAMECALL                         R4 R3 K9 ["IsA"]
       34 CALL                             R4 2 1
       35 JUMPIFNOT                        R4 ; [+40]
       36 LOADN                            R4 0
       37 NAMECALL                         R5 R3 K10 ["GetDescendants"]
       39 CALL                             R5 1 3
       40 FORGPREP                         R5
       41 LOADK                            R12 K11 ["MeshPart"]
       42 NAMECALL                         R10 R9 K9 ["IsA"]
       44 CALL                             R10 2 1
       45 JUMPIFNOT                        R10 ; [+1]
       46 ADDK                             R4 R4 K12 [1]
       47 FORGLOOP                         R5 2 ; [-7]
       49 SETTABLEKS                       R4 R2 K13 ["meshPartCount"]
       51 RETURN                           R2 1
       52 GETTABLEKS                       R3 R0 K0 ["kind"]
       54 JUMPIFNOTEQKS                    R3 K14 ["multi"] ; [+21]
       56 JUMPIFNOT                        R1 ; [+19]
       57 NEWTABLE                         R3 0 0
       59 GETTABLEKS                       R4 R0 K3 ["items"]
       61 LOADNIL                          R5
       62 LOADNIL                          R6
       63 FORGPREP                         R4
       64 MOVE                             R10 R3
       65 MOVE                             R11 R1
       66 MOVE                             R12 R8
       67 CALL                             R11 1 -1
       68 FASTCALL                         TABLE_INSERT ; [+2]
       69 GETIMPORT                        R9 K17 [table.insert]
       71 CALL                             R9 -1 0
       72 FORGLOOP                         R4 2 ; [-9]
       74 SETTABLEKS                       R3 R2 K18 ["memberUniqueIds"]
       76 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 RETURN                           R2 1
