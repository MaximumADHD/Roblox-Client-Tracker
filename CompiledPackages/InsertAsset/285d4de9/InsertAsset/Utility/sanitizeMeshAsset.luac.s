PROTO_0:
        0 LOADB                            R2 0
        1 NEWTABLE                         R3 0 0
        3 GETIMPORT                        R4 K1 [ipairs]
        5 MOVE                             R5 R1
        6 CALL                             R4 1 3
        7 FORGPREP_INEXT                   R4
        8 LOADK                            R11 K2 ["MeshPart"]
        9 NAMECALL                         R9 R8 K3 ["IsA"]
       11 CALL                             R9 2 1
       12 JUMPIFNOT                        R9 ; [+19]
       13 NAMECALL                         R10 R8 K4 ["GetChildren"]
       15 CALL                             R10 1 1
       16 LENGTH                           R9 R10
       17 LOADN                            R10 0
       18 JUMPIFNOTLT                      R10 R9 ; [+5]
       20 NAMECALL                         R9 R8 K5 ["ClearAllChildren"]
       22 CALL                             R9 1 0
       23 LOADB                            R2 1
       24 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       26 MOVE                             R10 R3
       27 MOVE                             R11 R8
       28 GETIMPORT                        R9 K8 [table.insert]
       30 CALL                             R9 2 0
       31 JUMP                             ; [+4]
       32 NAMECALL                         R9 R8 K9 ["Destroy"]
       34 CALL                             R9 1 0
       35 LOADB                            R2 1
       36 FORGLOOP                         R4 2 [inext] ; [-29]
       38 MOVE                             R4 R3
       39 MOVE                             R5 R2
       40 RETURN                           R4 2

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
