PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["computeInfo"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 1
        7 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        9 GETIMPORT                        R2 K2 [setmetatable]
       11 CALL                             R2 2 1
       12 GETTABLEKS                       R5 R2 K3 ["draggerContext"]
       14 GETTABLEKS                       R4 R5 K4 ["RootInstance"]
       16 JUMPIFNOT                        R4 ; [+11]
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R3 R4 K5 ["getJoints"]
       20 GETTABLEKS                       R4 R2 K6 ["parts"]
       22 GETTABLEKS                       R6 R2 K3 ["draggerContext"]
       24 GETTABLEKS                       R5 R6 K4 ["RootInstance"]
       26 CALL                             R3 2 1
       27 JUMPIF                           R3 ; [+1]
       28 LOADNIL                          R3
       29 SETTABLEKS                       R3 R2 K7 ["joints"]
       31 RETURN                           R2 1

PROTO_1:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R3 R0 K0 ["parts"]
        3 LENGTH                           R2 R3
        4 JUMPIFNOTEQKN                    R2 K1 [0] ; [+14]
        6 LOADB                            R1 0
        7 GETTABLEKS                       R3 R0 K2 ["attachments"]
        9 LENGTH                           R2 R3
       10 JUMPIFNOTEQKN                    R2 K1 [0] ; [+8]
       12 GETTABLEKS                       R3 R0 K3 ["bones"]
       14 LENGTH                           R2 R3
       15 JUMPIFEQKN                       R2 K1 [0] ; [+2]
       17 LOADB                            R1 0 +1
       18 LOADB                            R1 1
       19 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["draggerContext"]
        2 NAMECALL                         R1 R1 K1 ["shouldUseLocalSpace"]
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R4 R0 K2 ["parts"]
        7 LENGTH                           R3 R4
        8 LOADN                            R4 0
        9 JUMPIFNOTLT                      R4 R3 ; [+3]
       11 LOADB                            R2 1
       12 JUMP                             ; [+1]
       13 LOADB                            R2 0
       14 JUMPIFNOT                        R2 ; [+3]
       15 GETTABLEKS                       R3 R0 K3 ["joints"]
       17 JUMPIF                           R3 ; [+2]
       18 GETTABLEKS                       R3 R0 K4 ["bones"]
       20 LENGTH                           R4 R3
       21 LOADN                            R5 0
       22 JUMPIFNOTLT                      R5 R4 ; [+74]
       24 LENGTH                           R5 R3
       25 GETTABLE                         R4 R3 R5
       26 JUMPIF                           R2 ; [+28]
       27 JUMPIFNOT                        R1 ; [+11]
       28 GETTABLEKS                       R5 R4 K5 ["TransformedWorldCFrame"]
       30 FASTCALL                         VECTOR ; [+2]
       31 GETIMPORT                        R6 K8 [Vector3.new]
       33 CALL                             R6 0 1
       34 FASTCALL                         VECTOR ; [+2]
       35 GETIMPORT                        R7 K8 [Vector3.new]
       37 CALL                             R7 0 1
       38 RETURN                           R5 3
       39 GETIMPORT                        R5 K10 [CFrame.new]
       41 GETTABLEKS                       R7 R4 K5 ["TransformedWorldCFrame"]
       43 GETTABLEKS                       R6 R7 K11 ["Position"]
       45 CALL                             R5 1 1
       46 FASTCALL                         VECTOR ; [+2]
       47 GETIMPORT                        R6 K8 [Vector3.new]
       49 CALL                             R6 0 1
       50 FASTCALL                         VECTOR ; [+2]
       51 GETIMPORT                        R7 K8 [Vector3.new]
       53 CALL                             R7 0 1
       54 RETURN                           R5 3
       55 GETTABLEKS                       R5 R4 K12 ["Part1"]
       57 JUMPIFEQKNIL                     R5 ; [+39]
       59 JUMPIFNOT                        R1 ; [+16]
       60 GETTABLEKS                       R7 R4 K12 ["Part1"]
       62 GETTABLEKS                       R6 R7 K9 ["CFrame"]
       64 GETTABLEKS                       R7 R4 K13 ["C1"]
       66 MUL                              R5 R6 R7
       67 FASTCALL                         VECTOR ; [+2]
       68 GETIMPORT                        R6 K8 [Vector3.new]
       70 CALL                             R6 0 1
       71 FASTCALL                         VECTOR ; [+2]
       72 GETIMPORT                        R7 K8 [Vector3.new]
       74 CALL                             R7 0 1
       75 RETURN                           R5 3
       76 GETIMPORT                        R5 K10 [CFrame.new]
       78 GETTABLEKS                       R9 R4 K12 ["Part1"]
       80 GETTABLEKS                       R8 R9 K9 ["CFrame"]
       82 GETTABLEKS                       R9 R4 K13 ["C1"]
       84 MUL                              R7 R8 R9
       85 GETTABLEKS                       R6 R7 K11 ["Position"]
       87 CALL                             R5 1 1
       88 FASTCALL                         VECTOR ; [+2]
       89 GETIMPORT                        R6 K8 [Vector3.new]
       91 CALL                             R6 0 1
       92 FASTCALL                         VECTOR ; [+2]
       93 GETIMPORT                        R7 K8 [Vector3.new]
       95 CALL                             R7 0 1
       96 RETURN                           R5 3
       97 GETTABLEKS                       R4 R0 K14 ["basisCFrame"]
       99 GETTABLEKS                       R5 R0 K15 ["boundingBoxOffset"]
      101 GETTABLEKS                       R6 R0 K16 ["boundingBoxSize"]
      103 RETURN                           R4 3

PROTO_3:
        0 GETTABLEKS                       R4 R0 K0 ["partSet"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOTEQKNIL                  R3 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 RETURN                           R2 1

PROTO_4:
        0 LOADB                            R1 0
        1 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["parts"]
        2 GETIMPORT                        R2 K2 [ipairs]
        4 GETTABLEKS                       R3 R0 K3 ["bones"]
        6 CALL                             R2 1 3
        7 FORGPREP_INEXT                   R2
        8 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       10 MOVE                             R8 R1
       11 MOVE                             R9 R6
       12 GETIMPORT                        R7 K6 [table.insert]
       14 CALL                             R7 2 0
       15 FORGLOOP                         R2 2 [inext] ; [-8]
       17 MOVE                             R2 R1
       18 GETTABLEKS                       R3 R0 K7 ["attachments"]
       20 RETURN                           R2 2

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["allAttachments"]
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["BoundingBoxUtils"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K3 [script]
       12 LOADK                            R3 K6 ["AnimationClipEditor"]
       13 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       15 CALL                             R1 2 1
       16 GETIMPORT                        R2 K1 [require]
       18 GETTABLEKS                       R5 R1 K8 ["Src"]
       20 GETTABLEKS                       R4 R5 K9 ["Util"]
       22 GETTABLEKS                       R3 R4 K10 ["RigUtils"]
       24 CALL                             R2 1 1
       25 NEWTABLE                         R3 8 0
       27 SETTABLEKS                       R3 R3 K11 ["__index"]
       29 DUPCLOSURE                       R4 K12 [PROTO_0]
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R2
       33 SETTABLEKS                       R4 R3 K13 ["new"]
       35 DUPCLOSURE                       R4 K14 [PROTO_1]
       36 SETTABLEKS                       R4 R3 K15 ["isEmpty"]
       38 DUPCLOSURE                       R4 K16 [PROTO_2]
       39 SETTABLEKS                       R4 R3 K17 ["getBoundingBox"]
       41 DUPCLOSURE                       R4 K18 [PROTO_3]
       42 SETTABLEKS                       R4 R3 K19 ["doesContainItem"]
       44 DUPCLOSURE                       R4 K20 [PROTO_4]
       45 SETTABLEKS                       R4 R3 K21 ["isDynamic"]
       47 DUPCLOSURE                       R4 K22 [PROTO_5]
       48 SETTABLEKS                       R4 R3 K23 ["getObjectsToTransform"]
       50 DUPCLOSURE                       R4 K24 [PROTO_6]
       51 SETTABLEKS                       R4 R3 K25 ["getAllAttachments"]
       53 RETURN                           R3 1
