PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Archivable"]
        2 LOADB                            R2 1
        3 SETTABLEKS                       R2 R0 K0 ["Archivable"]
        5 NEWTABLE                         R2 0 0
        7 NAMECALL                         R3 R0 K1 ["GetChildren"]
        9 CALL                             R3 1 3
       10 FORGPREP                         R3
       11 LOADK                            R10 K2 ["Accessory"]
       12 NAMECALL                         R8 R7 K3 ["IsA"]
       14 CALL                             R8 2 1
       15 JUMPIFNOT                        R8 ; [+13]
       16 GETTABLEKS                       R8 R7 K0 ["Archivable"]
       18 JUMPIF                           R8 ; [+10]
       19 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       21 MOVE                             R9 R2
       22 MOVE                             R10 R7
       23 GETIMPORT                        R8 K6 [table.insert]
       25 CALL                             R8 2 0
       26 LOADB                            R8 1
       27 SETTABLEKS                       R8 R7 K0 ["Archivable"]
       29 FORGLOOP                         R3 2 ; [-19]
       31 NAMECALL                         R3 R0 K7 ["Clone"]
       33 CALL                             R3 1 1
       34 SETTABLEKS                       R1 R0 K0 ["Archivable"]
       36 MOVE                             R4 R2
       37 LOADNIL                          R5
       38 LOADNIL                          R6
       39 FORGPREP                         R4
       40 LOADB                            R9 0
       41 SETTABLEKS                       R9 R8 K0 ["Archivable"]
       43 FORGLOOP                         R4 2 ; [-4]
       45 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 RETURN                           R2 1
