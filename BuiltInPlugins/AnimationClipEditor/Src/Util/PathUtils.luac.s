PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [ipairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_INEXT                   R2
        7 LOADN                            R7 1
        8 JUMPIFNOTLT                      R7 R5 ; [+8]
       10 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       12 MOVE                             R8 R1
       13 MOVE                             R9 R6
       14 GETIMPORT                        R7 K4 [table.insert]
       16 CALL                             R7 2 0
       17 FORGLOOP                         R2 2 [inext] ; [-11]
       19 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R2 0 0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 1
        5 LENGTH                           R2 R1
        6 LOADNIL                          R3
        7 SETTABLE                         R3 R1 R2
        8 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["COMPONENT_PATH_BASE_SCALE"]
        3 LOADN                            R2 0
        4 GETIMPORT                        R3 K2 [ipairs]
        6 MOVE                             R4 R0
        7 CALL                             R3 1 3
        8 FORGPREP_INEXT                   R3
        9 GETUPVAL                         R9 0
       10 GETTABLEKS                       R9 R9 K3 ["COMPONENT_PATH_VALUE"]
       12 GETTABLE                         R8 R9 R7
       13 JUMPIFNOT                        R8 ; [+6]
       14 MUL                              R9 R1 R8
       15 ADD                              R2 R2 R9
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R9 R9 K0 ["COMPONENT_PATH_BASE_SCALE"]
       19 MUL                              R1 R1 R9
       20 FORGLOOP                         R3 2 [inext] ; [-12]
       22 RETURN                           R2 1

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+5]
        1 JUMPIFNOT                        R1 ; [+4]
        2 LENGTH                           R2 R0
        3 LENGTH                           R3 R1
        4 JUMPIFEQ                         R2 R3 ; [+3]
        6 LOADB                            R2 0
        7 RETURN                           R2 1
        8 GETIMPORT                        R2 K1 [ipairs]
       10 MOVE                             R3 R0
       11 CALL                             R2 1 3
       12 FORGPREP_INEXT                   R2
       13 GETTABLE                         R7 R1 R5
       14 JUMPIFEQ                         R6 R7 ; [+3]
       16 LOADB                            R7 0
       17 RETURN                           R7 1
       18 FORGLOOP                         R2 2 [inext] ; [-6]
       20 LOADB                            R2 1
       21 RETURN                           R2 1

PROTO_4:
        0 JUMPIFNOT                        R0 ; [+1]
        1 JUMPIF                           R1 ; [+2]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 GETIMPORT                        R2 K1 [ipairs]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 3
        8 FORGPREP_INEXT                   R2
        9 GETUPVAL                         R7 0
       10 GETTABLEKS                       R7 R7 K2 ["equals"]
       12 MOVE                             R8 R6
       13 MOVE                             R9 R1
       14 CALL                             R7 2 1
       15 JUMPIFNOT                        R7 ; [+1]
       16 RETURN                           R5 1
       17 FORGLOOP                         R2 2 [inext] ; [-9]
       19 LOADNIL                          R2
       20 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["findPath"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+9]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K1 ["List"]
       10 GETTABLEKS                       R3 R3 K2 ["removeIndex"]
       12 MOVE                             R4 R0
       13 MOVE                             R5 R2
       14 CALL                             R3 2 -1
       15 RETURN                           R3 -1
       16 RETURN                           R0 1

PROTO_6:
        0 GETIMPORT                        R1 K2 [table.concat]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["."]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Dash"]
       16 GETTABLEKS                       R3 R2 K9 ["join"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Packages"]
       22 GETTABLEKS                       R5 R5 K10 ["Cryo"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K11 ["Src"]
       29 GETTABLEKS                       R6 R6 K12 ["Util"]
       31 GETTABLEKS                       R6 R6 K13 ["Constants"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R0 K14 ["LuaFlags"]
       38 GETTABLEKS                       R7 R7 K15 ["GetFFlagFixDynamicTrackSelection"]
       40 CALL                             R6 1 1
       41 NEWTABLE                         R7 8 0
       43 DUPCLOSURE                       R8 K16 [PROTO_0]
       44 SETTABLEKS                       R8 R7 K17 ["getRelativePath"]
       46 DUPCLOSURE                       R8 K18 [PROTO_1]
       47 CAPTURE                          VAL R3
       48 SETTABLEKS                       R8 R7 K19 ["getParentPath"]
       50 MOVE                             R8 R6
       51 CALL                             R8 0 1
       52 JUMPIF                           R8 ; [+4]
       53 DUPCLOSURE                       R8 K20 [PROTO_2]
       54 CAPTURE                          VAL R5
       55 SETTABLEKS                       R8 R7 K21 ["getPathValue"]
       57 DUPCLOSURE                       R8 K22 [PROTO_3]
       58 SETTABLEKS                       R8 R7 K23 ["equals"]
       60 DUPCLOSURE                       R8 K24 [PROTO_4]
       61 CAPTURE                          VAL R7
       62 SETTABLEKS                       R8 R7 K25 ["findPath"]
       64 DUPCLOSURE                       R8 K26 [PROTO_5]
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R4
       67 SETTABLEKS                       R8 R7 K27 ["removePath"]
       69 DUPCLOSURE                       R8 K28 [PROTO_6]
       70 SETTABLEKS                       R8 R7 K29 ["toString"]
       72 RETURN                           R7 1
