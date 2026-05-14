PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 GETIMPORT                        R4 K1 [ipairs]
        4 MOVE                             R5 R2
        5 CALL                             R4 1 3
        6 FORGPREP_INEXT                   R4
        7 GETIMPORT                        R9 K1 [ipairs]
        9 MOVE                             R10 R8
       10 CALL                             R9 1 3
       11 FORGPREP_INEXT                   R9
       12 GETTABLE                         R14 R3 R13
       13 JUMPIF                           R14 ; [+3]
       14 NEWTABLE                         R14 0 0
       16 SETTABLE                         R14 R3 R13
       17 GETTABLE                         R15 R3 R13
       18 FASTCALL2                        TABLE_INSERT R15 R7 ; [+4]
       20 MOVE                             R16 R7
       21 GETIMPORT                        R14 K4 [table.insert]
       23 CALL                             R14 2 0
       24 FORGLOOP                         R9 2 [inext] ; [-13]
       26 FORGLOOP                         R4 2 [inext] ; [-20]
       28 GETIMPORT                        R4 K1 [ipairs]
       30 MOVE                             R5 R1
       31 CALL                             R4 1 3
       32 FORGPREP_INEXT                   R4
       33 GETTABLE                         R9 R3 R7
       34 JUMPIF                           R9 ; [+8]
       35 GETIMPORT                        R9 K6 [error]
       37 LOADK                            R11 K7 ["Vertex index: "]
       38 MOVE                             R12 R7
       39 LOADK                            R13 K8 [" is not a part of any triangle in mesh: "]
       40 MOVE                             R14 R0
       41 CONCAT                           R10 R11 R14
       42 CALL                             R9 1 0
       43 FORGLOOP                         R4 2 [inext] ; [-11]
       45 RETURN                           R3 1

PROTO_1:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 NEWTABLE                         R2 0 0
        4 SETUPVAL                         R2 0
        5 GETIMPORT                        R2 K1 [ipairs]
        7 MOVE                             R3 R1
        8 CALL                             R2 1 3
        9 FORGPREP_INEXT                   R2
       10 GETTABLEKS                       R8 R6 K2 ["instance"]
       12 FASTCALL2K                       ASSERT R8 K3 ; [+4]
       14 LOADK                            R9 K3 ["MeshWrapperObject missing variable: Instance"]
       15 GETIMPORT                        R7 K5 [assert]
       17 CALL                             R7 2 0
       18 GETTABLEKS                       R8 R6 K6 ["getVertices"]
       20 FASTCALL2K                       ASSERT R8 K7 ; [+4]
       22 LOADK                            R9 K7 ["MeshWrapperObject missing function: GetVertices"]
       23 GETIMPORT                        R7 K5 [assert]
       25 CALL                             R7 2 0
       26 GETTABLEKS                       R8 R6 K8 ["getTriangleIndexData"]
       28 FASTCALL2K                       ASSERT R8 K9 ; [+4]
       30 LOADK                            R9 K9 ["MeshWrapperObject missing function: GetTriangleIndexData"]
       31 GETIMPORT                        R7 K5 [assert]
       33 CALL                             R7 2 0
       34 GETTABLEKS                       R8 R6 K10 ["getMeshOrigin"]
       36 FASTCALL2K                       ASSERT R8 K11 ; [+4]
       38 LOADK                            R9 K11 ["MeshWrapperObject missing function: GetMeshOrigin"]
       39 GETIMPORT                        R7 K5 [assert]
       41 CALL                             R7 2 0
       42 GETTABLEKS                       R7 R6 K2 ["instance"]
       44 GETTABLEKS                       R7 R7 K12 ["Name"]
       46 GETUPVAL                         R11 0
       47 GETTABLE                         R10 R11 R7
       48 JUMPIFEQKNIL                     R10 ; [+2]
       50 LOADB                            R9 0 +1
       51 LOADB                            R9 1
       52 LOADK                            R11 K13 ["Instance: "]
       53 MOVE                             R12 R7
       54 LOADK                            R13 K14 [" shares a name with another Instance in MeshWrapperObjects, please make sure your instances are uniquely named."]
       55 CONCAT                           R10 R11 R13
       56 FASTCALL2                        ASSERT R9 R10 ; [+3]
       58 GETIMPORT                        R8 K5 [assert]
       60 CALL                             R8 2 0
       61 GETUPVAL                         R8 0
       62 NEWTABLE                         R9 0 0
       64 SETTABLE                         R9 R8 R7
       65 GETUPVAL                         R9 0
       66 GETTABLE                         R8 R9 R7
       67 NAMECALL                         R9 R6 K6 ["getVertices"]
       69 CALL                             R9 1 1
       70 SETTABLEKS                       R9 R8 K15 ["VertexData"]
       72 NAMECALL                         R9 R6 K8 ["getTriangleIndexData"]
       74 CALL                             R9 1 1
       75 SETTABLEKS                       R9 R8 K16 ["TriangleIndexData"]
       77 GETUPVAL                         R9 1
       78 MOVE                             R10 R7
       79 GETTABLEKS                       R11 R8 K15 ["VertexData"]
       81 GETTABLEKS                       R12 R8 K16 ["TriangleIndexData"]
       83 CALL                             R9 3 1
       84 SETTABLEKS                       R9 R8 K17 ["VertexTriangleIndexData"]
       86 NAMECALL                         R9 R6 K10 ["getMeshOrigin"]
       88 CALL                             R9 1 1
       89 SETTABLEKS                       R9 R8 K18 ["MeshOrigin"]
       91 FORGLOOP                         R2 2 [inext] ; [-82]
       93 GETUPVAL                         R2 3
       94 GETUPVAL                         R3 0
       95 CALL                             R2 1 1
       96 SETUPVAL                         R2 2
       97 GETUPVAL                         R2 5
       98 MOVE                             R3 R0
       99 MOVE                             R4 R1
      100 CALL                             R2 2 1
      101 SETUPVAL                         R2 4
      102 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R2 K1 [ipairs]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 3
        4 FORGPREP_INEXT                   R2
        5 GETTABLEKS                       R8 R6 K2 ["getMeshOrigin"]
        7 FASTCALL2K                       ASSERT R8 K3 ; [+4]
        9 LOADK                            R9 K3 ["MeshWrapperObject missing function: GetMeshOrigin"]
       10 GETIMPORT                        R7 K5 [assert]
       12 CALL                             R7 2 0
       13 GETTABLEKS                       R7 R6 K6 ["instance"]
       15 GETTABLEKS                       R7 R7 K7 ["Name"]
       17 GETUPVAL                         R9 0
       18 GETTABLE                         R8 R9 R7
       19 JUMPIFNOT                        R8 ; [+5]
       20 NAMECALL                         R9 R6 K2 ["getMeshOrigin"]
       22 CALL                             R9 1 1
       23 SETTABLEKS                       R9 R8 K8 ["MeshOrigin"]
       25 FORGLOOP                         R2 2 [inext] ; [-21]
       27 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAvatarPreviewerCageEditingTools is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 GETUPVAL                         R2 2
       10 CALL                             R1 1 -1
       11 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+3]
        2 NEWTABLE                         R1 0 0
        4 RETURN                           R1 1
        5 NEWTABLE                         R1 0 0
        7 GETIMPORT                        R2 K1 [pairs]
        9 GETUPVAL                         R3 0
       10 CALL                             R2 1 3
       11 FORGPREP_NEXT                    R2
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R8 R6 K2 ["VertexData"]
       15 CALL                             R7 1 1
       16 SETTABLE                         R7 R1 R5
       17 FORGLOOP                         R2 2 ; [-6]
       19 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+3]
        2 NEWTABLE                         R1 0 0
        4 RETURN                           R1 1
        5 NEWTABLE                         R1 0 0
        7 GETIMPORT                        R2 K1 [pairs]
        9 GETUPVAL                         R3 0
       10 CALL                             R2 1 3
       11 FORGPREP_NEXT                    R2
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R8 R6 K2 ["TriangleIndexData"]
       15 CALL                             R7 1 1
       16 SETTABLE                         R7 R1 R5
       17 FORGLOOP                         R2 2 ; [-6]
       19 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+3]
        2 NEWTABLE                         R1 0 0
        4 RETURN                           R1 1
        5 NEWTABLE                         R1 0 0
        7 GETIMPORT                        R2 K1 [pairs]
        9 GETUPVAL                         R3 0
       10 CALL                             R2 1 3
       11 FORGPREP_NEXT                    R2
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R8 R6 K2 ["VertexTriangleIndexData"]
       15 CALL                             R7 1 1
       16 SETTABLE                         R7 R1 R5
       17 FORGLOOP                         R2 2 ; [-6]
       19 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+3]
        2 GETUPVAL                         R3 0
        3 GETTABLE                         R2 R3 R1
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 0
        7 GETTABLE                         R2 R3 R1
        8 GETTABLEKS                       R2 R2 K0 ["MeshOrigin"]
       10 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R1
        5 CALL                             R2 1 1
        6 GETIMPORT                        R3 K1 [pairs]
        8 MOVE                             R4 R1
        9 CALL                             R3 1 3
       10 FORGPREP_NEXT                    R3
       11 GETUPVAL                         R9 2
       12 GETTABLE                         R8 R9 R6
       13 JUMPIF                           R8 ; [+2]
       14 NEWTABLE                         R8 0 0
       16 GETIMPORT                        R9 K1 [pairs]
       18 MOVE                             R10 R7
       19 CALL                             R9 1 3
       20 FORGPREP_NEXT                    R9
       21 GETTABLE                         R14 R8 R12
       22 JUMPIF                           R14 ; [+2]
       23 NEWTABLE                         R14 0 0
       25 GETIMPORT                        R15 K3 [ipairs]
       27 MOVE                             R16 R14
       28 CALL                             R15 1 3
       29 FORGPREP_INEXT                   R15
       30 GETTABLEKS                       R21 R19 K4 ["MeshName"]
       32 GETTABLE                         R20 R2 R21
       33 JUMPIF                           R20 ; [+6]
       34 GETTABLEKS                       R20 R19 K4 ["MeshName"]
       36 NEWTABLE                         R21 0 0
       38 SETTABLE                         R21 R2 R20
       39 JUMP                             ; [+7]
       40 GETTABLEKS                       R22 R19 K4 ["MeshName"]
       42 GETTABLE                         R21 R2 R22
       43 GETTABLEKS                       R22 R19 K5 ["Index"]
       45 GETTABLE                         R20 R21 R22
       46 JUMPIF                           R20 ; [+20]
       47 MOVE                             R23 R6
       48 NAMECALL                         R21 R0 K6 ["getMeshOrigin"]
       50 CALL                             R21 2 1
       51 MUL                              R20 R21 R13
       52 GETTABLEKS                       R24 R19 K4 ["MeshName"]
       54 NAMECALL                         R22 R0 K6 ["getMeshOrigin"]
       56 CALL                             R22 2 1
       57 NAMECALL                         R22 R22 K7 ["inverse"]
       59 CALL                             R22 1 1
       60 MUL                              R21 R22 R20
       61 GETTABLEKS                       R23 R19 K4 ["MeshName"]
       63 GETTABLE                         R22 R2 R23
       64 GETTABLEKS                       R23 R19 K5 ["Index"]
       66 SETTABLE                         R21 R22 R23
       67 FORGLOOP                         R15 2 [inext] ; [-38]
       69 FORGLOOP                         R9 2 ; [-49]
       71 FORGLOOP                         R3 2 ; [-61]
       73 GETIMPORT                        R3 K1 [pairs]
       75 MOVE                             R4 R2
       76 CALL                             R3 1 3
       77 FORGPREP_NEXT                    R3
       78 GETUPVAL                         R9 0
       79 GETTABLE                         R8 R9 R6
       80 GETTABLEKS                       R8 R8 K8 ["VertexData"]
       82 JUMPIF                           R8 ; [+7]
       83 GETIMPORT                        R9 K10 [error]
       85 LOADK                            R11 K11 ["No vertex data found for mesh: "]
       86 MOVE                             R12 R6
       87 CONCAT                           R10 R11 R12
       88 CALL                             R9 1 0
       89 JUMP                             ; [+19]
       90 GETIMPORT                        R9 K1 [pairs]
       92 MOVE                             R10 R7
       93 CALL                             R9 1 3
       94 FORGPREP_NEXT                    R9
       95 LENGTH                           R16 R8
       96 JUMPIFLE                         R12 R16 ; [+2]
       98 LOADB                            R15 0 +1
       99 LOADB                            R15 1
      100 FASTCALL2K                       ASSERT R15 K12 ; [+4]
      102 LOADK                            R16 K12 ["Vertex Index out of range."]
      103 GETIMPORT                        R14 K14 [assert]
      105 CALL                             R14 2 0
      106 SETTABLE                         R13 R8 R12
      107 FORGLOOP                         R9 2 ; [-13]
      109 FORGLOOP                         R3 2 ; [-32]
      111 GETUPVAL                         R3 3
      112 NAMECALL                         R3 R3 K15 ["Fire"]
      114 CALL                             R3 1 0
      115 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 1
        1 GETUPVAL                         R2 2
        2 CALL                             R1 1 1
        3 SETUPVAL                         R1 0
        4 GETUPVAL                         R1 3
        5 NAMECALL                         R1 R1 K0 ["Fire"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["FFlagAvatarPreviewerCageEditingTools is not enabled!"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 GETUPVAL                         R2 2
        9 MOVE                             R3 R1
       10 CALL                             R2 1 1
       11 SETUPVAL                         R2 1
       12 GETUPVAL                         R2 3
       13 NAMECALL                         R2 R2 K3 ["Fire"]
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_16:
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_18:
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

PROTO_19:
        0 NEWTABLE                         R1 32 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 LOADNIL                          R1
        9 LOADNIL                          R2
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K2 ["new"]
       13 CALL                             R3 0 1
       14 LOADNIL                          R4
       15 LOADNIL                          R5
       16 LOADNIL                          R6
       17 DUPCLOSURE                       R7 K3 [PROTO_0]
       18 NEWCLOSURE                       R8 P1
       19 CAPTURE                          REF R1
       20 CAPTURE                          VAL R7
       21 CAPTURE                          REF R4
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          REF R2
       24 CAPTURE                          UPVAL U3
       25 SETTABLEKS                       R8 R0 K4 ["init"]
       27 NEWCLOSURE                       R8 P2
       28 CAPTURE                          REF R1
       29 SETTABLEKS                       R8 R0 K5 ["updateCageOrigins"]
       31 NEWCLOSURE                       R8 P3
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          REF R1
       35 SETTABLEKS                       R8 R0 K6 ["getMeshesData"]
       37 NEWCLOSURE                       R8 P4
       38 CAPTURE                          REF R1
       39 CAPTURE                          UPVAL U5
       40 SETTABLEKS                       R8 R0 K7 ["getVertexData"]
       42 NEWCLOSURE                       R8 P5
       43 CAPTURE                          REF R1
       44 CAPTURE                          UPVAL U2
       45 SETTABLEKS                       R8 R0 K8 ["getTriangleIndexData"]
       47 NEWCLOSURE                       R8 P6
       48 CAPTURE                          REF R1
       49 CAPTURE                          UPVAL U2
       50 SETTABLEKS                       R8 R0 K9 ["getVertexTriangleIndexData"]
       52 NEWCLOSURE                       R8 P7
       53 CAPTURE                          UPVAL U2
       54 CAPTURE                          REF R2
       55 SETTABLEKS                       R8 R0 K10 ["getSeamData"]
       57 DUPCLOSURE                       R8 K11 [PROTO_8]
       58 SETTABLEKS                       R8 R0 K12 ["getTriangleNormals"]
       60 DUPCLOSURE                       R8 K13 [PROTO_9]
       61 SETTABLEKS                       R8 R0 K14 ["getVertexNormals"]
       63 NEWCLOSURE                       R8 P10
       64 CAPTURE                          REF R1
       65 SETTABLEKS                       R8 R0 K15 ["getMeshOrigin"]
       67 NEWCLOSURE                       R8 P11
       68 CAPTURE                          REF R1
       69 CAPTURE                          UPVAL U2
       70 CAPTURE                          REF R2
       71 CAPTURE                          VAL R3
       72 SETTABLEKS                       R8 R0 K16 ["updateVertexData"]
       74 NEWCLOSURE                       R8 P12
       75 CAPTURE                          REF R1
       76 CAPTURE                          UPVAL U2
       77 CAPTURE                          REF R4
       78 CAPTURE                          VAL R3
       79 SETTABLEKS                       R8 R0 K17 ["resetVertexData"]
       81 NEWCLOSURE                       R8 P13
       82 CAPTURE                          UPVAL U4
       83 CAPTURE                          REF R1
       84 CAPTURE                          UPVAL U2
       85 CAPTURE                          VAL R3
       86 SETTABLEKS                       R8 R0 K18 ["resetVertexDataTo"]
       88 NEWCLOSURE                       R8 P14
       89 CAPTURE                          VAL R3
       90 SETTABLEKS                       R8 R0 K19 ["getMeshDataChangedSignal"]
       92 GETUPVAL                         R8 4
       93 CALL                             R8 0 1
       94 JUMPIFNOT                        R8 ; [+16]
       95 NEWCLOSURE                       R8 P15
       96 CAPTURE                          REF R6
       97 SETTABLEKS                       R8 R0 K20 ["getSymmetryMap"]
       99 NEWCLOSURE                       R8 P16
      100 CAPTURE                          REF R6
      101 SETTABLEKS                       R8 R0 K21 ["setSymmetryMap"]
      103 NEWCLOSURE                       R8 P17
      104 CAPTURE                          REF R5
      105 SETTABLEKS                       R8 R0 K22 ["getSegmentationMap"]
      107 NEWCLOSURE                       R8 P18
      108 CAPTURE                          REF R5
      109 SETTABLEKS                       R8 R0 K23 ["setSegmentationMap"]
      111 CLOSEUPVALS                      R1
      112 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["Dash"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["join"]
       16 GETTABLEKS                       R4 R0 K7 ["Util"]
       18 GETIMPORT                        R5 K4 [require]
       20 GETTABLEKS                       R6 R4 K8 ["Signal"]
       22 CALL                             R5 1 1
       23 GETIMPORT                        R6 K4 [require]
       25 GETTABLEKS                       R7 R4 K9 ["buildSeamData"]
       27 CALL                             R6 1 1
       28 GETIMPORT                        R7 K4 [require]
       30 GETTABLEKS                       R8 R4 K10 ["deepCopy"]
       32 CALL                             R7 1 1
       33 GETIMPORT                        R8 K4 [require]
       35 GETTABLEKS                       R9 R0 K11 ["Types"]
       37 CALL                             R8 1 1
       38 GETIMPORT                        R9 K4 [require]
       40 GETTABLEKS                       R10 R0 K12 ["Flags"]
       42 GETTABLEKS                       R10 R10 K13 ["getFFlagAvatarPreviewerCageEditingTools"]
       44 CALL                             R9 1 1
       45 NEWTABLE                         R10 2 0
       47 SETTABLEKS                       R10 R10 K14 ["__index"]
       49 DUPCLOSURE                       R11 K15 [PROTO_19]
       50 CAPTURE                          VAL R10
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R9
       55 CAPTURE                          VAL R3
       56 SETTABLEKS                       R11 R10 K16 ["new"]
       58 RETURN                           R10 1
