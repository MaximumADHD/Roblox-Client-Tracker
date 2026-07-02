PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 FASTCALL1                        TYPEOF R0 ; [+3]
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K1 [typeof]
        7 CALL                             R1 1 1
        8 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+4]
       10 LENGTH                           R1 R0
       11 JUMPIFNOTEQKN                    R1 K3 [0] ; [+3]
       13 LOADNIL                          R1
       14 RETURN                           R1 1
       15 LOADB                            R1 0
       16 MOVE                             R2 R0
       17 LOADNIL                          R3
       18 LOADNIL                          R4
       19 FORGPREP                         R2
       20 NAMECALL                         R7 R6 K4 ["GetDescendants"]
       22 CALL                             R7 1 3
       23 FORGPREP                         R7
       24 LOADK                            R14 K5 ["Folder"]
       25 NAMECALL                         R12 R11 K6 ["IsA"]
       27 CALL                             R12 2 1
       28 JUMPIFNOT                        R12 ; [+9]
       29 GETUPVAL                         R12 0
       30 GETTABLEKS                       R12 R12 K7 ["isBoneFolderName"]
       32 GETTABLEKS                       R13 R11 K8 ["Name"]
       34 CALL                             R12 1 1
       35 JUMPIFNOT                        R12 ; [+2]
       36 LOADB                            R1 1
       37 JUMP                             ; [+2]
       38 FORGLOOP                         R7 2 ; [-15]
       40 JUMPIF                           R1 ; [+2]
       41 FORGLOOP                         R2 2 ; [-22]
       43 JUMPIF                           R1 ; [+2]
       44 LOADNIL                          R2
       45 RETURN                           R2 1
       46 DUPTABLE                         R2 K11 [{["hasBones"] = True}]
       47 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["util"]
       13 GETTABLEKS                       R2 R2 K6 ["CurveAnimBoneHierarchyUtils"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 1 0
       18 DUPCLOSURE                       R3 K7 [PROTO_0]
       19 CAPTURE                          VAL R1
       20 SETTABLEKS                       R3 R2 K8 ["getData"]
       22 RETURN                           R2 1
