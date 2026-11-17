PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 GETUPVAL                         R7 0
        3 GETTABLE                         R4 R7 R2
        4 LOADNIL                          R5
        5 LOADNIL                          R6
        6 FORGPREP                         R4
        7 DUPTABLE                         R11 K3 [{"Icon", "Id", "Label"}]
        8 JUMPIFNOT                        R1 ; [+9]
        9 MOVE                             R16 R2
       10 NEWTABLE                         R17 0 0
       12 NAMECALL                         R14 R1 K4 ["get"]
       14 CALL                             R14 3 1
       15 GETTABLE                         R13 R14 R2
       16 GETTABLE                         R12 R13 R8
       17 JUMP                             ; [+1]
       18 LOADNIL                          R12
       19 SETTABLEKS                       R12 R11 K0 ["Icon"]
       21 SETTABLEKS                       R8 R11 K1 ["Id"]
       23 JUMPIFNOT                        R0 ; [+6]
       24 MOVE                             R14 R2
       25 MOVE                             R15 R8
       26 NAMECALL                         R12 R0 K5 ["getText"]
       28 CALL                             R12 3 1
       29 JUMP                             ; [+1]
       30 LOADNIL                          R12
       31 SETTABLEKS                       R12 R11 K2 ["Label"]
       33 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       35 MOVE                             R10 R3
       36 GETIMPORT                        R9 K8 [table.insert]
       38 CALL                             R9 2 0
       39 FORGLOOP                         R4 2 ; [-33]
       41 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["EnumTypeIndices"]
       16 DUPCLOSURE                       R3 K9 [PROTO_0]
       17 CAPTURE                          VAL R2
       18 RETURN                           R3 1
