PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [ipairs]
        4 NAMECALL                         R4 R0 K2 ["GetChildren"]
        6 CALL                             R4 1 -1
        7 CALL                             R3 -1 3
        8 FORGPREP_INEXT                   R3
        9 LOADK                            R10 K3 ["TerrainDetail"]
       10 NAMECALL                         R8 R7 K4 ["IsA"]
       12 CALL                             R8 2 1
       13 JUMPIFNOT                        R8 ; [+10]
       14 MOVE                             R9 R2
       15 GETUPVAL                         R10 0
       16 GETTABLEKS                       R11 R7 K5 ["Name"]
       18 MOVE                             R12 R1
       19 CALL                             R10 2 -1
       20 FASTCALL                         TABLE_INSERT ; [+2]
       21 GETIMPORT                        R8 K8 [table.insert]
       23 CALL                             R8 -1 0
       24 FORGLOOP                         R3 2 [inext] ; [-16]
       26 GETUPVAL                         R3 1
       27 MOVE                             R4 R2
       28 CALL                             R3 1 -1
       29 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R3 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R3 R0 K5 ["Src"]
       18 GETTABLEKS                       R2 R3 K7 ["Util"]
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R4 R2 K8 ["getNumberFromName"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K4 [require]
       27 GETTABLEKS                       R5 R2 K9 ["getNextFreeIndex"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K10 [PROTO_0]
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R4
       33 RETURN                           R5 1
