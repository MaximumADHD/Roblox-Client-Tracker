PROTO_0:
        0 GETIMPORT                        R2 K2 [string.find]
        2 GETTABLEKS                       R3 R1 K3 ["TextureId"]
        4 LOADK                            R4 K4 ["?id="]
        5 CALL                             R2 2 2
        6 JUMPIFNOT                        R3 ; [+21]
        7 GETTABLEKS                       R4 R1 K3 ["TextureId"]
        9 LOADK                            R6 K5 ["%d+[^%d]*$"]
       10 NAMECALL                         R4 R4 K6 ["match"]
       12 CALL                             R4 2 1
       13 GETTABLE                         R6 R0 R4
       14 JUMPIFNOT                        R6 ; [+9]
       15 GETTABLE                         R6 R0 R4
       16 GETTABLEKS                       R7 R1 K7 ["MemoryInBytes"]
       18 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       20 GETIMPORT                        R5 K10 [math.max]
       22 CALL                             R5 2 1
       23 JUMPIF                           R5 ; [+2]
       24 GETTABLEKS                       R5 R1 K7 ["MemoryInBytes"]
       26 SETTABLE                         R5 R0 R4
       27 RETURN                           R0 0
       28 GETTABLEKS                       R4 R1 K3 ["TextureId"]
       30 GETTABLEKS                       R7 R1 K3 ["TextureId"]
       32 GETTABLE                         R6 R0 R7
       33 JUMPIFNOT                        R6 ; [+11]
       34 GETTABLEKS                       R7 R1 K3 ["TextureId"]
       36 GETTABLE                         R6 R0 R7
       37 GETTABLEKS                       R7 R1 K7 ["MemoryInBytes"]
       39 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       41 GETIMPORT                        R5 K10 [math.max]
       43 CALL                             R5 2 1
       44 JUMPIF                           R5 ; [+2]
       45 GETTABLEKS                       R5 R1 K7 ["MemoryInBytes"]
       47 SETTABLE                         R5 R0 R4
       48 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETIMPORT                        R3 K3 [Enum.TextureQueryType.NonHumanoid]
        5 LOADN                            R4 0
        6 LOADN                            R5 10000
        7 NAMECALL                         R1 R1 K4 ["GetPaginatedMemoryByTexture"]
        9 CALL                             R1 4 1
       10 GETUPVAL                         R2 0
       11 GETIMPORT                        R4 K6 [Enum.TextureQueryType.NonHumanoidOrphaned]
       13 LOADN                            R5 0
       14 LOADN                            R6 10000
       15 NAMECALL                         R2 R2 K4 ["GetPaginatedMemoryByTexture"]
       17 CALL                             R2 4 1
       18 GETIMPORT                        R3 K8 [ipairs]
       20 GETTABLEKS                       R4 R1 K9 ["Results"]
       22 CALL                             R3 1 3
       23 FORGPREP_INEXT                   R3
       24 GETUPVAL                         R8 1
       25 MOVE                             R9 R0
       26 MOVE                             R10 R7
       27 CALL                             R8 2 0
       28 FORGLOOP                         R3 2 [inext] ; [-5]
       30 GETIMPORT                        R3 K8 [ipairs]
       32 GETTABLEKS                       R4 R2 K9 ["Results"]
       34 CALL                             R3 1 3
       35 FORGPREP_INEXT                   R3
       36 GETUPVAL                         R8 1
       37 MOVE                             R9 R0
       38 MOVE                             R10 R7
       39 CALL                             R8 2 0
       40 FORGLOOP                         R3 2 [inext] ; [-5]
       42 RETURN                           R0 1

PROTO_2:
        0 LENGTH                           R1 R0
        1 LOADN                            R2 0
        2 GETIMPORT                        R3 K1 [ipairs]
        4 MOVE                             R4 R0
        5 CALL                             R3 1 3
        6 FORGPREP_INEXT                   R3
        7 GETTABLEKS                       R8 R7 K2 ["Size"]
        9 ADD                              R2 R2 R8
       10 FORGLOOP                         R3 2 [inext] ; [-4]
       12 RETURN                           R1 2

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 GETIMPORT                        R1 K1 [game]
        5 LOADK                            R3 K2 ["Stats"]
        6 NAMECALL                         R1 R1 K3 ["GetService"]
        8 CALL                             R1 2 1
        9 DUPCLOSURE                       R2 K4 [PROTO_0]
       10 DUPCLOSURE                       R3 K5 [PROTO_1]
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R2
       13 SETTABLEKS                       R3 R0 K6 ["fetchTextureSizes"]
       15 DUPCLOSURE                       R3 K7 [PROTO_2]
       16 SETTABLEKS                       R3 R0 K8 ["calculateAggregateStats"]
       18 RETURN                           R0 1
