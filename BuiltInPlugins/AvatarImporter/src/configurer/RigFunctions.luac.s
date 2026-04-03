PROTO_0:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tonumber]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R2 R5 K2 ["BaseUrl"]
        9 LOADK                            R3 K3 ["asset/?id="]
       10 MOVE                             R4 R0
       11 CONCAT                           R1 R2 R4
       12 RETURN                           R1 1
       13 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [pairs]
        4 GETUPVAL                         R2 0
        5 CALL                             R1 1 3
        6 FORGPREP_NEXT                    R1
        7 LENGTH                           R7 R0
        8 ADDK                             R6 R7 K2 [1]
        9 SETTABLE                         R4 R0 R6
       10 FORGLOOP                         R1 2 ; [-4]
       12 RETURN                           R0 1

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [pairs]
        4 GETIMPORT                        R2 K4 [Enum.BodyPart]
        6 NAMECALL                         R2 R2 K5 ["GetEnumItems"]
        8 CALL                             R2 1 -1
        9 CALL                             R1 -1 3
       10 FORGPREP_NEXT                    R1
       11 LENGTH                           R7 R0
       12 ADDK                             R6 R7 K6 [1]
       13 GETTABLEKS                       R7 R5 K7 ["Name"]
       15 SETTABLE                         R7 R0 R6
       16 FORGLOOP                         R1 2 ; [-6]
       18 RETURN                           R0 1

PROTO_3:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["string"] ; [+2]
        7 RETURN                           R0 1
        8 GETIMPORT                        R1 K4 [pairs]
       10 GETUPVAL                         R2 0
       11 CALL                             R1 1 3
       12 FORGPREP_NEXT                    R1
       13 GETIMPORT                        R6 K6 [string.find]
       15 MOVE                             R7 R0
       16 MOVE                             R8 R5
       17 LOADN                            R9 1
       18 LOADB                            R10 1
       19 CALL                             R6 4 1
       20 JUMPIFEQKNIL                     R6 ; [+12]
       22 NAMECALL                         R9 R5 K8 ["len"]
       24 CALL                             R9 1 1
       25 ADDK                             R8 R9 K7 [1]
       26 FASTCALL2                        STRING_SUB R0 R8 ; [+4]
       28 MOVE                             R7 R0
       29 GETIMPORT                        R6 K10 [string.sub]
       31 CALL                             R6 2 1
       32 RETURN                           R6 1
       33 FORGLOOP                         R1 2 ; [-21]
       35 RETURN                           R0 1

PROTO_4:
        0 GETIMPORT                        R2 K1 [pairs]
        2 GETUPVAL                         R5 0
        3 GETTABLE                         R3 R5 R1
        4 CALL                             R2 1 3
        5 FORGPREP_NEXT                    R2
        6 MOVE                             R9 R6
        7 NAMECALL                         R7 R0 K2 ["FindFirstChild"]
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+11]
       11 GETTABLEKS                       R8 R7 K3 ["TextureID"]
       13 JUMPIFEQKS                       R8 K4 [""] ; [+8]
       15 GETUPVAL                         R9 1
       16 GETTABLEKS                       R8 R9 K5 ["RemoveAssetUrlFromText"]
       18 GETTABLEKS                       R9 R7 K3 ["TextureID"]
       20 CALL                             R8 1 -1
       21 RETURN                           R8 -1
       22 FORGLOOP                         R2 2 ; [-17]
       24 LOADNIL                          R2
       25 RETURN                           R2 1

PROTO_5:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+5]
        7 JUMPIFEQKS                       R0 K3 [""] ; [+3]
        9 LOADB                            R1 1
       10 RETURN                           R1 1
       11 FASTCALL1                        TYPEOF R0 ; [+3]
       12 MOVE                             R2 R0
       13 GETIMPORT                        R1 K1 [typeof]
       15 CALL                             R1 1 1
       16 JUMPIFNOTEQKS                    R1 K4 ["number"] ; [+5]
       18 JUMPIFEQKN                       R0 K5 [0] ; [+3]
       20 LOADB                            R1 1
       21 RETURN                           R1 1
       22 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R1 0
        1 JUMPIFEQKS                       R0 K0 [""] ; [+8]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["DEFAULT_FACE_TEXTURE"]
        6 JUMPIFNOTEQ                      R0 R2 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 RETURN                           R1 1

PROTO_7:
        0 JUMPIFNOT                        R1 ; [+26]
        1 LOADK                            R4 K0 ["Head"]
        2 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
        4 CALL                             R2 2 1
        5 JUMPIFNOT                        R2 ; [+21]
        6 LOADK                            R5 K2 ["face"]
        7 NAMECALL                         R3 R2 K1 ["FindFirstChild"]
        9 CALL                             R3 2 1
       10 JUMPIFNOT                        R3 ; [+16]
       11 GETTABLEKS                       R5 R3 K3 ["Texture"]
       13 LOADB                            R4 0
       14 JUMPIFEQKS                       R5 K4 [""] ; [+8]
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R6 R7 K5 ["DEFAULT_FACE_TEXTURE"]
       19 JUMPIFNOTEQ                      R5 R6 ; [+2]
       21 LOADB                            R4 0 +1
       22 LOADB                            R4 1
       23 JUMPIFNOT                        R4 ; [+3]
       24 GETTABLEKS                       R4 R3 K3 ["Texture"]
       26 RETURN                           R4 1
       27 JUMPIFNOT                        R0 ; [+38]
       28 LOADK                            R4 K0 ["Head"]
       29 NAMECALL                         R2 R0 K1 ["FindFirstChild"]
       31 CALL                             R2 2 1
       32 JUMPIFNOT                        R2 ; [+33]
       33 LOADK                            R5 K6 ["MeshPart"]
       34 NAMECALL                         R3 R2 K7 ["IsA"]
       36 CALL                             R3 2 1
       37 JUMPIFNOT                        R3 ; [+7]
       38 GETTABLEKS                       R3 R2 K8 ["TextureID"]
       40 JUMPIFEQKS                       R3 K4 [""] ; [+4]
       42 GETTABLEKS                       R3 R2 K8 ["TextureID"]
       44 RETURN                           R3 1
       45 LOADK                            R5 K2 ["face"]
       46 NAMECALL                         R3 R2 K1 ["FindFirstChild"]
       48 CALL                             R3 2 1
       49 JUMPIFNOT                        R3 ; [+16]
       50 GETTABLEKS                       R5 R3 K3 ["Texture"]
       52 LOADB                            R4 0
       53 JUMPIFEQKS                       R5 K4 [""] ; [+8]
       55 GETUPVAL                         R7 0
       56 GETTABLEKS                       R6 R7 K5 ["DEFAULT_FACE_TEXTURE"]
       58 JUMPIFNOTEQ                      R5 R6 ; [+2]
       60 LOADB                            R4 0 +1
       61 LOADB                            R4 1
       62 JUMPIFNOT                        R4 ; [+3]
       63 GETTABLEKS                       R4 R3 K3 ["Texture"]
       65 RETURN                           R4 1
       66 LOADNIL                          R2
       67 RETURN                           R2 1

PROTO_8:
        0 GETIMPORT                        R2 K1 [pairs]
        2 NAMECALL                         R3 R0 K2 ["GetChildren"]
        4 CALL                             R3 1 -1
        5 CALL                             R2 -1 3
        6 FORGPREP_NEXT                    R2
        7 LOADK                            R9 K3 ["CharacterMesh"]
        8 NAMECALL                         R7 R6 K4 ["IsA"]
       10 CALL                             R7 2 1
       11 JUMPIFNOT                        R7 ; [+36]
       12 GETTABLEKS                       R8 R6 K5 ["BodyPart"]
       14 GETTABLEKS                       R7 R8 K6 ["Name"]
       16 JUMPIFNOTEQ                      R7 R1 ; [+31]
       18 GETTABLEKS                       R8 R6 K7 ["MeshId"]
       20 FASTCALL1                        TYPEOF R8 ; [+3]
       21 MOVE                             R10 R8
       22 GETIMPORT                        R9 K9 [typeof]
       24 CALL                             R9 1 1
       25 JUMPIFNOTEQKS                    R9 K10 ["string"] ; [+5]
       27 JUMPIFEQKS                       R8 K11 [""] ; [+3]
       29 LOADB                            R7 1
       30 JUMP                             ; [+12]
       31 FASTCALL1                        TYPEOF R8 ; [+3]
       32 MOVE                             R10 R8
       33 GETIMPORT                        R9 K9 [typeof]
       35 CALL                             R9 1 1
       36 JUMPIFNOTEQKS                    R9 K12 ["number"] ; [+5]
       38 JUMPIFEQKN                       R8 K13 [0] ; [+3]
       40 LOADB                            R7 1
       41 JUMP                             ; [+1]
       42 LOADNIL                          R7
       43 JUMPIFNOT                        R7 ; [+51]
       44 GETTABLEKS                       R7 R6 K7 ["MeshId"]
       46 RETURN                           R7 1
       47 JUMP                             ; [+47]
       48 LOADK                            R9 K14 ["Part"]
       49 NAMECALL                         R7 R6 K4 ["IsA"]
       51 CALL                             R7 2 1
       52 JUMPIFNOT                        R7 ; [+42]
       53 GETTABLEKS                       R7 R6 K6 ["Name"]
       55 JUMPIFNOTEQ                      R7 R1 ; [+39]
       57 LOADK                            R9 K15 ["SpecialMesh"]
       58 NAMECALL                         R7 R6 K16 ["FindFirstChildWhichIsA"]
       60 CALL                             R7 2 1
       61 JUMPIFNOT                        R7 ; [+33]
       62 GETTABLEKS                       R9 R7 K7 ["MeshId"]
       64 FASTCALL1                        TYPEOF R9 ; [+3]
       65 MOVE                             R11 R9
       66 GETIMPORT                        R10 K9 [typeof]
       68 CALL                             R10 1 1
       69 JUMPIFNOTEQKS                    R10 K10 ["string"] ; [+5]
       71 JUMPIFEQKS                       R9 K11 [""] ; [+3]
       73 LOADB                            R8 1
       74 JUMP                             ; [+12]
       75 FASTCALL1                        TYPEOF R9 ; [+3]
       76 MOVE                             R11 R9
       77 GETIMPORT                        R10 K9 [typeof]
       79 CALL                             R10 1 1
       80 JUMPIFNOTEQKS                    R10 K12 ["number"] ; [+5]
       82 JUMPIFEQKN                       R9 K13 [0] ; [+3]
       84 LOADB                            R8 1
       85 JUMP                             ; [+1]
       86 LOADNIL                          R8
       87 JUMPIFNOT                        R8 ; [+7]
       88 GETUPVAL                         R9 0
       89 GETTABLEKS                       R8 R9 K17 ["RemoveAssetUrlFromText"]
       91 GETTABLEKS                       R9 R7 K7 ["MeshId"]
       93 CALL                             R8 1 -1
       94 RETURN                           R8 -1
       95 FORGLOOP                         R2 2 ; [-89]
       97 LOADNIL                          R2
       98 RETURN                           R2 1

PROTO_9:
        0 GETIMPORT                        R2 K1 [pairs]
        2 NAMECALL                         R3 R0 K2 ["GetChildren"]
        4 CALL                             R3 1 -1
        5 CALL                             R2 -1 3
        6 FORGPREP_NEXT                    R2
        7 LOADK                            R9 K3 ["CharacterMesh"]
        8 NAMECALL                         R7 R6 K4 ["IsA"]
       10 CALL                             R7 2 1
       11 JUMPIFNOT                        R7 ; [+26]
       12 GETTABLE                         R7 R6 R1
       13 FASTCALL1                        TYPEOF R7 ; [+3]
       14 MOVE                             R10 R7
       15 GETIMPORT                        R9 K6 [typeof]
       17 CALL                             R9 1 1
       18 JUMPIFNOTEQKS                    R9 K7 ["string"] ; [+5]
       20 JUMPIFEQKS                       R7 K8 [""] ; [+3]
       22 LOADB                            R8 1
       23 JUMP                             ; [+12]
       24 FASTCALL1                        TYPEOF R7 ; [+3]
       25 MOVE                             R10 R7
       26 GETIMPORT                        R9 K6 [typeof]
       28 CALL                             R9 1 1
       29 JUMPIFNOTEQKS                    R9 K9 ["number"] ; [+5]
       31 JUMPIFEQKN                       R7 K10 [0] ; [+3]
       33 LOADB                            R8 1
       34 JUMP                             ; [+1]
       35 LOADNIL                          R8
       36 JUMPIFNOT                        R8 ; [+1]
       37 RETURN                           R7 1
       38 FORGLOOP                         R2 2 ; [-32]
       40 LOADNIL                          R2
       41 RETURN                           R2 1

PROTO_10:
        0 GETIMPORT                        R3 K1 [pairs]
        2 MOVE                             R4 R1
        3 CALL                             R3 1 3
        4 FORGPREP_NEXT                    R3
        5 MOVE                             R10 R7
        6 NAMECALL                         R8 R0 K2 ["FindFirstChild"]
        8 CALL                             R8 2 1
        9 JUMPIFNOT                        R8 ; [+16]
       10 FASTCALL1                        TONUMBER R2 ; [+3]
       11 MOVE                             R11 R2
       12 GETIMPORT                        R10 K4 [tonumber]
       14 CALL                             R10 1 1
       15 JUMPIFNOT                        R10 ; [+7]
       16 GETUPVAL                         R13 0
       17 GETTABLEKS                       R10 R13 K5 ["BaseUrl"]
       19 LOADK                            R11 K6 ["asset/?id="]
       20 MOVE                             R12 R2
       21 CONCAT                           R9 R10 R12
       22 JUMP                             ; [+1]
       23 MOVE                             R9 R2
       24 SETTABLEKS                       R9 R8 K7 ["TextureID"]
       26 FORGLOOP                         R3 2 ; [-22]
       28 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 SETTABLE                         R2 R0 R1
        4 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R3 K1 [pairs]
        2 NAMECALL                         R4 R0 K2 ["GetChildren"]
        4 CALL                             R4 1 -1
        5 CALL                             R3 -1 3
        6 FORGPREP_NEXT                    R3
        7 LOADK                            R10 K3 ["CharacterMesh"]
        8 NAMECALL                         R8 R7 K4 ["IsA"]
       10 CALL                             R8 2 1
       11 JUMPIFNOT                        R8 ; [+22]
       12 GETIMPORT                        R8 K6 [pcall]
       14 NEWCLOSURE                       R9 P0
       15 CAPTURE                          VAL R7
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R2
       18 CALL                             R8 1 2
       19 JUMPIF                           R8 ; [+14]
       20 GETIMPORT                        R10 K8 [warn]
       22 LOADK                            R12 K9 ["Expected CharacterMesh property, got "]
       23 MOVE                             R13 R1
       24 LOADK                            R14 K10 ["\n"]
       25 LOADK                            R15 K11 ["Error: "]
       26 MOVE                             R16 R9
       27 LOADK                            R17 K10 ["\n"]
       28 LOADK                            R18 K12 ["Traceback: "]
       29 GETIMPORT                        R19 K15 [debug.traceback]
       31 CALL                             R19 0 1
       32 CONCAT                           R11 R12 R19
       33 CALL                             R10 1 0
       34 FORGLOOP                         R3 2 ; [-28]
       36 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R2 K1 [pairs]
        2 NAMECALL                         R3 R1 K2 ["GetChildren"]
        4 CALL                             R3 1 -1
        5 CALL                             R2 -1 3
        6 FORGPREP_NEXT                    R2
        7 LOADK                            R9 K3 ["CharacterMesh"]
        8 NAMECALL                         R7 R6 K4 ["IsA"]
       10 CALL                             R7 2 1
       11 JUMPIFNOT                        R7 ; [+5]
       12 GETTABLEKS                       R7 R6 K5 ["BodyPart"]
       14 JUMPIFNOTEQ                      R7 R0 ; [+2]
       16 RETURN                           R6 1
       17 FORGLOOP                         R2 2 ; [-11]
       19 LOADNIL                          R2
       20 RETURN                           R2 1

PROTO_14:
        0 GETIMPORT                        R2 K1 [pairs]
        2 NAMECALL                         R3 R1 K2 ["GetChildren"]
        4 CALL                             R3 1 -1
        5 CALL                             R2 -1 3
        6 FORGPREP_NEXT                    R2
        7 LOADK                            R9 K3 ["Part"]
        8 NAMECALL                         R7 R6 K4 ["IsA"]
       10 CALL                             R7 2 1
       11 JUMPIFNOT                        R7 ; [+5]
       12 GETTABLEKS                       R7 R6 K5 ["Name"]
       14 JUMPIFNOTEQ                      R7 R0 ; [+2]
       16 RETURN                           R6 1
       17 FORGLOOP                         R2 2 ; [-11]
       19 LOADNIL                          R2
       20 RETURN                           R2 1

PROTO_15:
        0 GETIMPORT                        R2 K1 [pairs]
        2 GETIMPORT                        R3 K4 [Enum.BodyPart]
        4 NAMECALL                         R3 R3 K5 ["GetEnumItems"]
        6 CALL                             R3 1 -1
        7 CALL                             R2 -1 3
        8 FORGPREP_NEXT                    R2
        9 GETTABLEKS                       R9 R6 K6 ["Name"]
       11 GETTABLE                         R8 R0 R9
       12 FASTCALL1                        TONUMBER R8 ; [+2]
       13 GETIMPORT                        R7 K8 [tonumber]
       15 CALL                             R7 1 1
       16 JUMPIFNOT                        R7 ; [+20]
       17 GETIMPORT                        R8 K10 [Enum.BodyPart.Head]
       19 JUMPIFEQ                         R6 R8 ; [+17]
       21 GETUPVAL                         R8 0
       22 MOVE                             R9 R6
       23 MOVE                             R10 R1
       24 CALL                             R8 2 1
       25 JUMPIF                           R8 ; [+9]
       26 GETIMPORT                        R9 K13 [Instance.new]
       28 LOADK                            R10 K14 ["CharacterMesh"]
       29 CALL                             R9 1 1
       30 MOVE                             R8 R9
       31 SETTABLEKS                       R6 R8 K3 ["BodyPart"]
       33 SETTABLEKS                       R1 R8 K15 ["Parent"]
       35 SETTABLEKS                       R7 R8 K16 ["MeshId"]
       37 FORGLOOP                         R2 2 ; [-29]
       39 GETIMPORT                        R3 K10 [Enum.BodyPart.Head]
       41 GETTABLEKS                       R2 R3 K6 ["Name"]
       43 GETUPVAL                         R3 1
       44 MOVE                             R4 R2
       45 MOVE                             R5 R1
       46 CALL                             R3 2 1
       47 GETTABLE                         R5 R0 R2
       48 FASTCALL1                        TONUMBER R5 ; [+2]
       49 GETIMPORT                        R4 K8 [tonumber]
       51 CALL                             R4 1 1
       52 JUMPIFNOT                        R4 ; [+22]
       53 JUMPIFNOT                        R3 ; [+21]
       54 LOADK                            R7 K17 ["SpecialMesh"]
       55 NAMECALL                         R5 R3 K18 ["FindFirstChildWhichIsA"]
       57 CALL                             R5 2 1
       58 JUMPIFNOT                        R5 ; [+16]
       59 FASTCALL1                        TONUMBER R4 ; [+3]
       60 MOVE                             R8 R4
       61 GETIMPORT                        R7 K8 [tonumber]
       63 CALL                             R7 1 1
       64 JUMPIFNOT                        R7 ; [+7]
       65 GETUPVAL                         R10 2
       66 GETTABLEKS                       R7 R10 K19 ["BaseUrl"]
       68 LOADK                            R8 K20 ["asset/?id="]
       69 MOVE                             R9 R4
       70 CONCAT                           R6 R7 R9
       71 JUMP                             ; [+1]
       72 MOVE                             R6 R4
       73 SETTABLEKS                       R6 R5 K16 ["MeshId"]
       75 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R2 K1 [pairs]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 3
        4 FORGPREP_NEXT                    R2
        5 GETUPVAL                         R8 0
        6 GETTABLE                         R7 R8 R5
        7 JUMPIFNOT                        R7 ; [+7]
        8 GETUPVAL                         R7 1
        9 MOVE                             R8 R1
       10 GETUPVAL                         R10 0
       11 GETTABLE                         R9 R10 R5
       12 MOVE                             R10 R6
       13 CALL                             R7 3 0
       14 JUMP                             ; [+5]
       15 GETUPVAL                         R7 2
       16 MOVE                             R8 R1
       17 MOVE                             R9 R5
       18 MOVE                             R10 R6
       19 CALL                             R7 3 0
       20 FORGLOOP                         R2 2 ; [-16]
       22 RETURN                           R0 0

PROTO_17:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 LOADK                            R4 K0 ["Head"]
        3 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+41]
        7 LOADK                            R5 K2 ["MeshPart"]
        8 NAMECALL                         R3 R2 K3 ["IsA"]
       10 CALL                             R3 2 1
       11 JUMPIFNOT                        R3 ; [+5]
       12 GETTABLEKS                       R3 R2 K4 ["TextureID"]
       14 JUMPIFEQKS                       R3 K5 [""] ; [+2]
       16 RETURN                           R0 0
       17 LOADK                            R5 K6 ["face"]
       18 NAMECALL                         R3 R2 K1 ["FindFirstChild"]
       20 CALL                             R3 2 1
       21 JUMPIF                           R3 ; [+10]
       22 GETIMPORT                        R4 K9 [Instance.new]
       24 LOADK                            R5 K10 ["Decal"]
       25 CALL                             R4 1 1
       26 MOVE                             R3 R4
       27 LOADK                            R4 K6 ["face"]
       28 SETTABLEKS                       R4 R3 K11 ["Name"]
       30 SETTABLEKS                       R2 R3 K12 ["Parent"]
       32 FASTCALL1                        TONUMBER R0 ; [+3]
       33 MOVE                             R6 R0
       34 GETIMPORT                        R5 K14 [tonumber]
       36 CALL                             R5 1 1
       37 JUMPIFNOT                        R5 ; [+7]
       38 GETUPVAL                         R8 0
       39 GETTABLEKS                       R5 R8 K15 ["BaseUrl"]
       41 LOADK                            R6 K16 ["asset/?id="]
       42 MOVE                             R7 R0
       43 CONCAT                           R4 R5 R7
       44 JUMP                             ; [+1]
       45 MOVE                             R4 R0
       46 SETTABLEKS                       R4 R3 K17 ["Texture"]
       48 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Create"]
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R4 R0 K1 ["HumanoidRootPart"]
        6 GETTABLEKS                       R3 R4 K2 ["CFrame"]
        8 GETTABLEKS                       R4 R2 K1 ["HumanoidRootPart"]
       10 GETTABLEKS                       R7 R3 K4 ["rightVector"]
       12 MULK                             R6 R7 K3 [5]
       13 ADD                              R5 R3 R6
       14 SETTABLEKS                       R5 R4 K2 ["CFrame"]
       16 SETTABLEKS                       R1 R2 K5 ["Parent"]
       18 RETURN                           R0 0

PROTO_19:
        0 LOADK                            R3 K0 ["AvatarPartScaleType"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R2 R1 K2 ["Value"]
        7 RETURN                           R2 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K3 ["AVATAR_PART_SCALE_TYPE"]
       11 GETTABLEKS                       R2 R3 K4 ["PROPORTIONS_CLASSIC"]
       13 RETURN                           R2 1

PROTO_20:
        0 GETTABLEKS                       R2 R0 K0 ["Parent"]
        2 LOADK                            R5 K1 ["AvatarPartScaleType"]
        3 NAMECALL                         R3 R2 K2 ["FindFirstChild"]
        5 CALL                             R3 2 1
        6 JUMPIFNOT                        R3 ; [+3]
        7 GETTABLEKS                       R1 R3 K3 ["Value"]
        9 JUMP                             ; [+5]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K4 ["AVATAR_PART_SCALE_TYPE"]
       13 GETTABLEKS                       R1 R4 K5 ["PROPORTIONS_CLASSIC"]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K4 ["AVATAR_PART_SCALE_TYPE"]
       18 GETTABLEKS                       R2 R3 K6 ["PROPORTIONS_NORMAL"]
       20 JUMPIFNOTEQ                      R1 R2 ; [+8]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R3 R4 K7 ["AnthroNormalFixedRigAttachmentMap"]
       25 GETTABLEKS                       R4 R0 K8 ["Name"]
       27 GETTABLE                         R2 R3 R4
       28 RETURN                           R2 1
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R3 R4 K4 ["AVATAR_PART_SCALE_TYPE"]
       32 GETTABLEKS                       R2 R3 K9 ["PROPORTIONS_SLENDER"]
       34 JUMPIFNOTEQ                      R1 R2 ; [+8]
       36 GETUPVAL                         R4 1
       37 GETTABLEKS                       R3 R4 K10 ["AnthroSlenderFixedRigAttachmentMap"]
       39 GETTABLEKS                       R4 R0 K8 ["Name"]
       41 GETTABLE                         R2 R3 R4
       42 RETURN                           R2 1
       43 GETUPVAL                         R4 1
       44 GETTABLEKS                       R3 R4 K11 ["R15FixedRigAttachmentMap"]
       46 GETTABLEKS                       R4 R0 K8 ["Name"]
       48 GETTABLE                         R2 R3 R4
       49 RETURN                           R2 1

PROTO_21:
        0 LOADK                            R4 K0 ["Motor6D"]
        1 NAMECALL                         R2 R1 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+4]
        5 NAMECALL                         R2 R1 K2 ["Destroy"]
        7 CALL                             R2 1 0
        8 JUMP                             ; [+82]
        9 LOADK                            R4 K3 ["Attachment"]
       10 NAMECALL                         R2 R1 K1 ["IsA"]
       12 CALL                             R2 2 1
       13 JUMPIFNOT                        R2 ; [+77]
       14 GETTABLEKS                       R4 R1 K4 ["Parent"]
       16 LOADK                            R7 K5 ["AvatarPartScaleType"]
       17 NAMECALL                         R5 R4 K6 ["FindFirstChild"]
       19 CALL                             R5 2 1
       20 JUMPIFNOT                        R5 ; [+3]
       21 GETTABLEKS                       R3 R5 K7 ["Value"]
       23 JUMP                             ; [+5]
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R6 R7 K8 ["AVATAR_PART_SCALE_TYPE"]
       27 GETTABLEKS                       R3 R6 K9 ["PROPORTIONS_CLASSIC"]
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R5 R6 K8 ["AVATAR_PART_SCALE_TYPE"]
       32 GETTABLEKS                       R4 R5 K10 ["PROPORTIONS_NORMAL"]
       34 JUMPIFNOTEQ                      R3 R4 ; [+8]
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R4 R5 K11 ["AnthroNormalFixedRigAttachmentMap"]
       39 GETTABLEKS                       R5 R1 K12 ["Name"]
       41 GETTABLE                         R2 R4 R5
       42 JUMP                             ; [+20]
       43 GETUPVAL                         R6 0
       44 GETTABLEKS                       R5 R6 K8 ["AVATAR_PART_SCALE_TYPE"]
       46 GETTABLEKS                       R4 R5 K13 ["PROPORTIONS_SLENDER"]
       48 JUMPIFNOTEQ                      R3 R4 ; [+8]
       50 GETUPVAL                         R5 1
       51 GETTABLEKS                       R4 R5 K14 ["AnthroSlenderFixedRigAttachmentMap"]
       53 GETTABLEKS                       R5 R1 K12 ["Name"]
       55 GETTABLE                         R2 R4 R5
       56 JUMP                             ; [+6]
       57 GETUPVAL                         R5 1
       58 GETTABLEKS                       R4 R5 K15 ["R15FixedRigAttachmentMap"]
       60 GETTABLEKS                       R5 R1 K12 ["Name"]
       62 GETTABLE                         R2 R4 R5
       63 JUMPIFNOT                        R2 ; [+27]
       64 GETTABLEKS                       R3 R1 K4 ["Parent"]
       66 LOADK                            R6 K16 ["OriginalPosition"]
       67 NAMECALL                         R4 R1 K6 ["FindFirstChild"]
       69 CALL                             R4 2 1
       70 JUMPIFNOT                        R4 ; [+3]
       71 NAMECALL                         R5 R4 K2 ["Destroy"]
       73 CALL                             R5 1 0
       74 GETTABLEKS                       R6 R3 K17 ["CFrame"]
       76 GETTABLEKS                       R7 R0 K18 ["WorldPosition"]
       78 SUB                              R5 R6 R7
       79 NAMECALL                         R7 R5 K19 ["inverse"]
       81 CALL                             R7 1 1
       82 GETIMPORT                        R8 K21 [CFrame.new]
       84 MOVE                             R9 R2
       85 CALL                             R8 1 1
       86 MUL                              R6 R7 R8
       87 GETTABLEKS                       R7 R6 K22 ["p"]
       89 SETTABLEKS                       R7 R1 K23 ["Position"]
       91 GETTABLEKS                       R2 R1 K12 ["Name"]
       93 JUMPIFEQKS                       R2 K24 ["HumanoidRootPart"] ; [+14]
       95 GETIMPORT                        R2 K26 [pairs]
       97 NAMECALL                         R3 R1 K27 ["GetChildren"]
       99 CALL                             R3 1 -1
      100 CALL                             R2 -1 3
      101 FORGPREP_NEXT                    R2
      102 GETUPVAL                         R7 2
      103 MOVE                             R8 R0
      104 MOVE                             R9 R6
      105 CALL                             R7 2 0
      106 FORGLOOP                         R2 2 ; [-5]
      108 RETURN                           R0 0

PROTO_22:
        0 LOADK                            R3 K0 ["Motor6D"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 NAMECALL                         R1 R0 K2 ["Destroy"]
        7 CALL                             R1 1 0
        8 GETIMPORT                        R1 K4 [pairs]
       10 NAMECALL                         R2 R0 K5 ["GetChildren"]
       12 CALL                             R2 1 -1
       13 CALL                             R1 -1 3
       14 FORGPREP_NEXT                    R1
       15 GETUPVAL                         R6 0
       16 MOVE                             R7 R5
       17 CALL                             R6 1 0
       18 FORGLOOP                         R1 2 ; [-4]
       20 RETURN                           R0 0

PROTO_23:
        0 NAMECALL                         R2 R0 K0 ["Clone"]
        2 CALL                             R2 1 1
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["R15_FIXED_FOLDER_NAME"]
        6 SETTABLEKS                       R3 R2 K2 ["Name"]
        8 GETUPVAL                         R3 1
        9 MOVE                             R4 R2
       10 CALL                             R3 1 0
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R5 R2 K3 ["HumanoidRootPart"]
       14 GETTABLEKS                       R4 R5 K4 ["RootRigAttachment"]
       16 MOVE                             R5 R2
       17 CALL                             R3 2 0
       18 LOADK                            R5 K5 ["Humanoid"]
       19 NAMECALL                         R3 R2 K6 ["FindFirstChildOfClass"]
       21 CALL                             R3 2 1
       22 JUMPIFNOT                        R3 ; [+7]
       23 GETIMPORT                        R4 K10 [Enum.NameOcclusion.NoOcclusion]
       25 SETTABLEKS                       R4 R3 K8 ["NameOcclusion"]
       27 NAMECALL                         R4 R3 K11 ["BuildRigFromAttachments"]
       29 CALL                             R4 1 0
       30 GETTABLEKS                       R5 R0 K3 ["HumanoidRootPart"]
       32 GETTABLEKS                       R4 R5 K12 ["CFrame"]
       34 GETTABLEKS                       R5 R2 K3 ["HumanoidRootPart"]
       36 GETTABLEKS                       R8 R4 K14 ["rightVector"]
       38 MULK                             R7 R8 K13 [-5]
       39 ADD                              R6 R4 R7
       40 SETTABLEKS                       R6 R5 K12 ["CFrame"]
       42 SETTABLEKS                       R1 R2 K15 ["Parent"]
       44 RETURN                           R0 0

PROTO_24:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETIMPORT                        R2 K3 [workspace]
        4 NAMECALL                         R2 R2 K4 ["GetChildren"]
        6 CALL                             R2 1 -1
        7 CALL                             R1 -1 3
        8 FORGPREP_NEXT                    R1
        9 GETTABLEKS                       R6 R5 K5 ["Name"]
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R7 R8 K6 ["IMPORTED_RIGS_MODEL_NAME"]
       14 JUMPIFNOTEQ                      R6 R7 ; [+4]
       16 NAMECALL                         R6 R5 K7 ["Destroy"]
       18 CALL                             R6 1 0
       19 FORGLOOP                         R1 2 ; [-11]
       21 GETIMPORT                        R1 K10 [Instance.new]
       23 LOADK                            R2 K11 ["Model"]
       24 CALL                             R1 1 1
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R2 R3 K6 ["IMPORTED_RIGS_MODEL_NAME"]
       28 SETTABLEKS                       R2 R1 K5 ["Name"]
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R2 R3 K12 ["R15_ARTIST_INTENT_FOLDER_NAME"]
       33 SETTABLEKS                       R2 R0 K5 ["Name"]
       35 SETTABLEKS                       R1 R0 K13 ["Parent"]
       37 GETUPVAL                         R3 1
       38 GETTABLEKS                       R2 R3 K14 ["Create"]
       40 CALL                             R2 0 1
       41 GETTABLEKS                       R4 R0 K15 ["HumanoidRootPart"]
       43 GETTABLEKS                       R3 R4 K16 ["CFrame"]
       45 GETTABLEKS                       R4 R2 K15 ["HumanoidRootPart"]
       47 GETTABLEKS                       R7 R3 K18 ["rightVector"]
       49 MULK                             R6 R7 K17 [5]
       50 ADD                              R5 R3 R6
       51 SETTABLEKS                       R5 R4 K16 ["CFrame"]
       53 SETTABLEKS                       R1 R2 K13 ["Parent"]
       55 GETUPVAL                         R2 2
       56 MOVE                             R3 R0
       57 MOVE                             R4 R1
       58 CALL                             R2 2 0
       59 GETIMPORT                        R2 K3 [workspace]
       61 SETTABLEKS                       R2 R1 K13 ["Parent"]
       63 RETURN                           R1 1

PROTO_25:
        0 GETIMPORT                        R0 K1 [workspace]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K2 ["IMPORTED_RIGS_MODEL_NAME"]
        5 NAMECALL                         R0 R0 K3 ["FindFirstChild"]
        7 CALL                             R0 2 1
        8 RETURN                           R0 1

PROTO_26:
        0 GETTABLEKS                       R4 R0 K0 ["HumanoidRootPart"]
        2 GETTABLEKS                       R3 R4 K1 ["Position"]
        4 MOVE                             R6 R1
        5 NAMECALL                         R4 R0 K2 ["FindFirstChild"]
        7 CALL                             R4 2 1
        8 JUMPIFNOT                        R4 ; [+14]
        9 NAMECALL                         R5 R4 K3 ["Clone"]
       11 CALL                             R5 1 1
       12 GETIMPORT                        R8 K6 [CFrame.new]
       14 CALL                             R8 0 1
       15 GETTABLEKS                       R9 R4 K1 ["Position"]
       17 ADD                              R7 R8 R9
       18 SUB                              R6 R7 R3
       19 SETTABLEKS                       R6 R5 K4 ["CFrame"]
       21 SETTABLEKS                       R2 R5 K7 ["Parent"]
       23 RETURN                           R0 0

PROTO_27:
        0 GETIMPORT                        R2 K1 [pairs]
        2 NAMECALL                         R3 R0 K2 ["GetChildren"]
        4 CALL                             R3 1 -1
        5 CALL                             R2 -1 3
        6 FORGPREP_NEXT                    R2
        7 LOADK                            R9 K3 ["CharacterMesh"]
        8 NAMECALL                         R7 R6 K4 ["IsA"]
       10 CALL                             R7 2 1
       11 JUMPIFNOT                        R7 ; [+15]
       12 LOADK                            R9 K5 ["%s+"]
       13 LOADK                            R10 K6 [""]
       14 NAMECALL                         R7 R1 K7 ["gsub"]
       16 CALL                             R7 3 1
       17 GETTABLEKS                       R9 R6 K8 ["BodyPart"]
       19 GETTABLEKS                       R8 R9 K9 ["Name"]
       21 JUMPIFNOTEQ                      R8 R7 ; [+5]
       23 NAMECALL                         R8 R6 K10 ["Clone"]
       25 CALL                             R8 1 -1
       26 RETURN                           R8 -1
       27 FORGLOOP                         R2 2 ; [-21]
       29 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["ClearAllChildren"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R2 R3 K1 ["R15_ARTIST_INTENT_FOLDER_NAME"]
        8 NAMECALL                         R0 R0 K2 ["FindFirstChild"]
       10 CALL                             R0 2 1
       11 GETUPVAL                         R1 1
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R3 R4 K3 ["R15_FIXED_FOLDER_NAME"]
       15 NAMECALL                         R1 R1 K2 ["FindFirstChild"]
       17 CALL                             R1 2 1
       18 GETUPVAL                         R2 1
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R4 R5 K4 ["R6_FOLDER_NAME"]
       22 NAMECALL                         R2 R2 K2 ["FindFirstChild"]
       24 CALL                             R2 2 1
       25 JUMPIFNOT                        R0 ; [+2]
       26 JUMPIFNOT                        R1 ; [+1]
       27 JUMPIF                           R2 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R3 K6 [pairs]
       31 GETUPVAL                         R4 3
       32 CALL                             R3 1 3
       33 FORGPREP_NEXT                    R3
       34 GETIMPORT                        R8 K9 [Instance.new]
       36 LOADK                            R9 K10 ["Folder"]
       37 GETUPVAL                         R10 0
       38 CALL                             R8 2 1
       39 SETTABLEKS                       R6 R8 K11 ["Name"]
       41 GETIMPORT                        R9 K9 [Instance.new]
       43 LOADK                            R10 K10 ["Folder"]
       44 MOVE                             R11 R8
       45 CALL                             R9 2 1
       46 GETUPVAL                         R11 2
       47 GETTABLEKS                       R10 R11 K1 ["R15_ARTIST_INTENT_FOLDER_NAME"]
       49 SETTABLEKS                       R10 R9 K11 ["Name"]
       51 GETIMPORT                        R10 K9 [Instance.new]
       53 LOADK                            R11 K10 ["Folder"]
       54 MOVE                             R12 R8
       55 CALL                             R10 2 1
       56 GETUPVAL                         R12 2
       57 GETTABLEKS                       R11 R12 K3 ["R15_FIXED_FOLDER_NAME"]
       59 SETTABLEKS                       R11 R10 K11 ["Name"]
       61 GETIMPORT                        R11 K6 [pairs]
       63 MOVE                             R12 R7
       64 CALL                             R11 1 3
       65 FORGPREP_NEXT                    R11
       66 GETTABLEKS                       R17 R0 K12 ["HumanoidRootPart"]
       68 GETTABLEKS                       R16 R17 K13 ["Position"]
       70 MOVE                             R19 R15
       71 NAMECALL                         R17 R0 K2 ["FindFirstChild"]
       73 CALL                             R17 2 1
       74 JUMPIFNOT                        R17 ; [+14]
       75 NAMECALL                         R18 R17 K14 ["Clone"]
       77 CALL                             R18 1 1
       78 GETIMPORT                        R21 K16 [CFrame.new]
       80 CALL                             R21 0 1
       81 GETTABLEKS                       R22 R17 K13 ["Position"]
       83 ADD                              R20 R21 R22
       84 SUB                              R19 R20 R16
       85 SETTABLEKS                       R19 R18 K15 ["CFrame"]
       87 SETTABLEKS                       R9 R18 K17 ["Parent"]
       89 GETTABLEKS                       R17 R1 K12 ["HumanoidRootPart"]
       91 GETTABLEKS                       R16 R17 K13 ["Position"]
       93 MOVE                             R19 R15
       94 NAMECALL                         R17 R1 K2 ["FindFirstChild"]
       96 CALL                             R17 2 1
       97 JUMPIFNOT                        R17 ; [+14]
       98 NAMECALL                         R18 R17 K14 ["Clone"]
      100 CALL                             R18 1 1
      101 GETIMPORT                        R21 K16 [CFrame.new]
      103 CALL                             R21 0 1
      104 GETTABLEKS                       R22 R17 K13 ["Position"]
      106 ADD                              R20 R21 R22
      107 SUB                              R19 R20 R16
      108 SETTABLEKS                       R19 R18 K15 ["CFrame"]
      110 SETTABLEKS                       R10 R18 K17 ["Parent"]
      112 FORGLOOP                         R11 2 ; [-47]
      114 GETIMPORT                        R11 K9 [Instance.new]
      116 LOADK                            R12 K10 ["Folder"]
      117 MOVE                             R13 R8
      118 CALL                             R11 2 1
      119 LOADK                            R12 K18 ["R6"]
      120 SETTABLEKS                       R12 R11 K11 ["Name"]
      122 GETIMPORT                        R13 K22 [Enum.BodyPart.Head]
      124 GETTABLEKS                       R12 R13 K11 ["Name"]
      126 JUMPIFNOTEQ                      R6 R12 ; [+67]
      128 GETUPVAL                         R13 4
      129 MOVE                             R14 R12
      130 MOVE                             R15 R2
      131 CALL                             R13 2 1
      132 GETUPVAL                         R14 4
      133 MOVE                             R15 R12
      134 MOVE                             R16 R0
      135 CALL                             R14 2 1
      136 JUMPIFNOT                        R13 ; [+5]
      137 LOADK                            R17 K23 ["SpecialMesh"]
      138 NAMECALL                         R15 R13 K24 ["FindFirstChildWhichIsA"]
      140 CALL                             R15 2 1
      141 JUMPIF                           R15 ; [+1]
      142 LOADNIL                          R15
      143 JUMPIFNOT                        R15 ; [+57]
      144 JUMPIFNOT                        R14 ; [+56]
      145 NAMECALL                         R16 R15 K14 ["Clone"]
      147 CALL                             R16 1 1
      148 MOVE                             R15 R16
      149 NAMECALL                         R16 R15 K0 ["ClearAllChildren"]
      151 CALL                             R16 1 0
      152 GETIMPORT                        R16 K6 [pairs]
      154 NAMECALL                         R17 R14 K25 ["GetChildren"]
      156 CALL                             R17 1 -1
      157 CALL                             R16 -1 3
      158 FORGPREP_NEXT                    R16
      159 LOADK                            R23 K26 ["ValueBase"]
      160 NAMECALL                         R21 R20 K27 ["IsA"]
      162 CALL                             R21 2 1
      163 JUMPIFNOT                        R21 ; [+6]
      164 NAMECALL                         R21 R20 K14 ["Clone"]
      166 CALL                             R21 1 1
      167 SETTABLEKS                       R15 R21 K17 ["Parent"]
      169 JUMP                             ; [+19]
      170 LOADK                            R23 K28 ["Attachment"]
      171 NAMECALL                         R21 R20 K27 ["IsA"]
      173 CALL                             R21 2 1
      174 JUMPIFNOT                        R21 ; [+14]
      175 GETIMPORT                        R21 K9 [Instance.new]
      177 LOADK                            R22 K29 ["Vector3Value"]
      178 CALL                             R21 1 1
      179 GETTABLEKS                       R22 R20 K11 ["Name"]
      181 SETTABLEKS                       R22 R21 K11 ["Name"]
      183 GETTABLEKS                       R22 R20 K13 ["Position"]
      185 SETTABLEKS                       R22 R21 K30 ["Value"]
      187 SETTABLEKS                       R15 R21 K17 ["Parent"]
      189 FORGLOOP                         R16 2 ; [-31]
      191 SETTABLEKS                       R11 R15 K17 ["Parent"]
      193 JUMP                             ; [+7]
      194 GETUPVAL                         R13 5
      195 MOVE                             R14 R2
      196 MOVE                             R15 R6
      197 CALL                             R13 2 1
      198 JUMPIFNOT                        R13 ; [+2]
      199 SETTABLEKS                       R11 R13 K17 ["Parent"]
      201 FORGLOOP                         R3 2 ; [-168]
      203 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+16]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R0 R1 K0 ["Parent"]
        5 JUMPIFEQKNIL                     R0 ; [+12]
        7 GETUPVAL                         R0 1
        8 JUMPIFNOT                        R0 ; [+4]
        9 GETUPVAL                         R0 2
       10 CALL                             R0 0 0
       11 LOADB                            R0 0
       12 SETUPVAL                         R0 1
       13 GETIMPORT                        R0 K2 [wait]
       15 LOADN                            R1 1
       16 CALL                             R0 1 0
       17 JUMPBACK                         ; [-18]
       18 RETURN                           R0 0

PROTO_30:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_31:
        0 GETTABLEKS                       R1 R0 K0 ["Changed"]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 NAMECALL                         R1 R1 K1 ["connect"]
        6 CALL                             R1 2 0
        7 GETIMPORT                        R1 K3 [pairs]
        9 NAMECALL                         R2 R0 K4 ["GetChildren"]
       11 CALL                             R2 1 -1
       12 CALL                             R1 -1 3
       13 FORGPREP_NEXT                    R1
       14 GETUPVAL                         R6 1
       15 MOVE                             R7 R5
       16 CALL                             R6 1 0
       17 FORGLOOP                         R1 2 ; [-4]
       19 RETURN                           R0 0

PROTO_32:
        0 GETTABLEKS                       R1 R0 K0 ["Changed"]
        2 GETUPVAL                         R3 0
        3 NAMECALL                         R1 R1 K1 ["connect"]
        5 CALL                             R1 2 0
        6 LOADB                            R1 1
        7 SETUPVAL                         R1 1
        8 RETURN                           R0 0

PROTO_33:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_34:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R2 R2 K2 ["GetChildren"]
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 3
        7 FORGPREP_NEXT                    R1
        8 GETTABLEKS                       R6 R5 K3 ["Name"]
       10 GETUPVAL                         R8 1
       11 GETTABLEKS                       R7 R8 K4 ["PACKAGE_EXPORT_MODEL_NAME"]
       13 JUMPIFNOTEQ                      R6 R7 ; [+4]
       15 NAMECALL                         R6 R5 K5 ["Destroy"]
       17 CALL                             R6 1 0
       18 FORGLOOP                         R1 2 ; [-11]
       20 GETIMPORT                        R1 K8 [Instance.new]
       22 LOADK                            R2 K9 ["Model"]
       23 CALL                             R1 1 1
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R2 R3 K4 ["PACKAGE_EXPORT_MODEL_NAME"]
       27 SETTABLEKS                       R2 R1 K3 ["Name"]
       29 GETUPVAL                         R2 0
       30 SETTABLEKS                       R2 R1 K10 ["Parent"]
       32 NEWCLOSURE                       R2 P0
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          UPVAL U4
       39 MOVE                             R3 R2
       40 CALL                             R3 0 0
       41 LOADB                            R3 0
       42 GETIMPORT                        R4 K12 [spawn]
       44 NEWCLOSURE                       R5 P1
       45 CAPTURE                          VAL R0
       46 CAPTURE                          REF R3
       47 CAPTURE                          VAL R2
       48 CALL                             R4 1 0
       49 NEWCLOSURE                       R4 P2
       50 CAPTURE                          REF R3
       51 CAPTURE                          VAL R4
       52 MOVE                             R5 R4
       53 MOVE                             R6 R0
       54 CALL                             R5 1 0
       55 GETUPVAL                         R8 1
       56 GETTABLEKS                       R7 R8 K13 ["R6_FOLDER_NAME"]
       58 NAMECALL                         R5 R0 K14 ["FindFirstChild"]
       60 CALL                             R5 2 1
       61 JUMPIFNOT                        R5 ; [+15]
       62 GETTABLEKS                       R6 R5 K15 ["ChildAdded"]
       64 NEWCLOSURE                       R8 P3
       65 CAPTURE                          VAL R2
       66 CAPTURE                          REF R3
       67 NAMECALL                         R6 R6 K16 ["connect"]
       69 CALL                             R6 2 0
       70 GETTABLEKS                       R6 R5 K17 ["ChildRemoved"]
       72 NEWCLOSURE                       R8 P4
       73 CAPTURE                          REF R3
       74 NAMECALL                         R6 R6 K16 ["connect"]
       76 CALL                             R6 2 0
       77 CLOSEUPVALS                      R3
       78 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["PACKAGE_EXPORT_MODEL_NAME"]
        4 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        6 CALL                             R1 2 1
        7 JUMPIF                           R1 ; [+1]
        8 RETURN                           R0 0
        9 GETIMPORT                        R2 K3 [pairs]
       11 NAMECALL                         R3 R1 K4 ["GetChildren"]
       13 CALL                             R3 1 -1
       14 CALL                             R2 -1 3
       15 FORGPREP_NEXT                    R2
       16 GETUPVAL                         R7 2
       17 MOVE                             R9 R6
       18 NAMECALL                         R7 R7 K5 ["PublishDescendantAssets"]
       20 CALL                             R7 2 0
       21 GETTABLEKS                       R7 R6 K6 ["Name"]
       23 GETTABLEKS                       R8 R6 K6 ["Name"]
       25 JUMPIFNOTEQKS                    R8 K7 ["Head"] ; [+7]
       27 LOADK                            R10 K8 ["R15ArtistIntent"]
       28 NAMECALL                         R8 R6 K1 ["FindFirstChild"]
       30 CALL                             R8 2 1
       31 JUMPIFNOT                        R8 ; [+1]
       32 MOVE                             R6 R8
       33 GETIMPORT                        R9 K10 [game]
       35 GETTABLEKS                       R8 R9 K11 ["Selection"]
       37 NAMECALL                         R10 R6 K4 ["GetChildren"]
       39 CALL                             R10 1 -1
       40 NAMECALL                         R8 R8 K12 ["Set"]
       42 CALL                             R8 -1 0
       43 MOVE                             R10 R7
       44 NAMECALL                         R8 R0 K13 ["PromptSaveSelection"]
       46 CALL                             R8 2 0
       47 FORGLOOP                         R2 2 ; [-32]
       49 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 GETIMPORT                        R1 K1 [game]
        5 LOADK                            R3 K2 ["ServerStorage"]
        6 NAMECALL                         R1 R1 K3 ["GetService"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K1 [game]
       11 LOADK                            R4 K4 ["ContentProvider"]
       12 NAMECALL                         R2 R2 K3 ["GetService"]
       14 CALL                             R2 2 1
       15 GETIMPORT                        R3 K1 [game]
       17 LOADK                            R5 K5 ["PublishService"]
       18 NAMECALL                         R3 R3 K3 ["GetService"]
       20 CALL                             R3 2 1
       21 GETIMPORT                        R4 K7 [require]
       23 GETIMPORT                        R7 K9 [script]
       25 GETTABLEKS                       R6 R7 K10 ["Parent"]
       27 GETTABLEKS                       R5 R6 K11 ["Constants"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K7 [require]
       32 GETIMPORT                        R8 K9 [script]
       34 GETTABLEKS                       R7 R8 K10 ["Parent"]
       36 GETTABLEKS                       R6 R7 K12 ["FixedRigPositions"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K7 [require]
       41 GETIMPORT                        R9 K9 [script]
       43 GETTABLEKS                       R8 R9 K10 ["Parent"]
       45 GETTABLEKS                       R7 R8 K13 ["R6"]
       47 CALL                             R6 1 1
       48 NEWTABLE                         R7 8 0
       50 NEWTABLE                         R8 0 1
       52 LOADK                            R9 K14 ["Head"]
       53 SETLIST                          R8 R9 1 [1]
       55 SETTABLEKS                       R8 R7 K14 ["Head"]
       57 NEWTABLE                         R8 0 2
       59 LOADK                            R9 K15 ["UpperTorso"]
       60 LOADK                            R10 K16 ["LowerTorso"]
       61 SETLIST                          R8 R9 2 [1]
       63 SETTABLEKS                       R8 R7 K17 ["Torso"]
       65 NEWTABLE                         R8 0 3
       67 LOADK                            R9 K18 ["RightUpperArm"]
       68 LOADK                            R10 K19 ["RightLowerArm"]
       69 LOADK                            R11 K20 ["RightHand"]
       70 SETLIST                          R8 R9 3 [1]
       72 SETTABLEKS                       R8 R7 K21 ["Right Arm"]
       74 NEWTABLE                         R8 0 3
       76 LOADK                            R9 K22 ["LeftUpperArm"]
       77 LOADK                            R10 K23 ["LeftLowerArm"]
       78 LOADK                            R11 K24 ["LeftHand"]
       79 SETLIST                          R8 R9 3 [1]
       81 SETTABLEKS                       R8 R7 K25 ["Left Arm"]
       83 NEWTABLE                         R8 0 3
       85 LOADK                            R9 K26 ["RightUpperLeg"]
       86 LOADK                            R10 K27 ["RightLowerLeg"]
       87 LOADK                            R11 K28 ["RightFoot"]
       88 SETLIST                          R8 R9 3 [1]
       90 SETTABLEKS                       R8 R7 K29 ["Right Leg"]
       92 NEWTABLE                         R8 0 3
       94 LOADK                            R9 K30 ["LeftUpperLeg"]
       95 LOADK                            R10 K31 ["LeftLowerLeg"]
       96 LOADK                            R11 K32 ["LeftFoot"]
       97 SETLIST                          R8 R9 3 [1]
       99 SETTABLEKS                       R8 R7 K33 ["Left Leg"]
      101 NEWTABLE                         R8 0 2
      103 GETTABLEKS                       R10 R2 K34 ["BaseUrl"]
      105 LOADK                            R11 K35 ["asset/?id="]
      106 CONCAT                           R9 R10 R11
      107 LOADK                            R10 K36 ["rbxassetid://"]
      108 SETLIST                          R8 R9 2 [1]
      110 DUPCLOSURE                       R9 K37 [PROTO_0]
      111 CAPTURE                          VAL R2
      112 DUPCLOSURE                       R10 K38 [PROTO_1]
      113 CAPTURE                          VAL R7
      114 SETTABLEKS                       R10 R0 K39 ["GetLimbNames"]
      116 DUPCLOSURE                       R10 K40 [PROTO_2]
      117 SETTABLEKS                       R10 R0 K41 ["GetBodyPartNames"]
      119 DUPCLOSURE                       R10 K42 [PROTO_3]
      120 CAPTURE                          VAL R8
      121 SETTABLEKS                       R10 R0 K43 ["RemoveAssetUrlFromText"]
      123 DUPCLOSURE                       R10 K44 [PROTO_4]
      124 CAPTURE                          VAL R7
      125 CAPTURE                          VAL R0
      126 SETTABLEKS                       R10 R0 K45 ["GetCurrentTextureIdFromRig"]
      128 DUPCLOSURE                       R10 K46 [PROTO_5]
      129 DUPCLOSURE                       R11 K47 [PROTO_6]
      130 CAPTURE                          VAL R4
      131 DUPCLOSURE                       R12 K48 [PROTO_7]
      132 CAPTURE                          VAL R4
      133 SETTABLEKS                       R12 R0 K49 ["FindFaceTexture"]
      135 DUPCLOSURE                       R12 K50 [PROTO_8]
      136 CAPTURE                          VAL R0
      137 SETTABLEKS                       R12 R0 K51 ["GetCurrentCharacterMeshIdFromRig"]
      139 DUPCLOSURE                       R12 K52 [PROTO_9]
      140 SETTABLEKS                       R12 R0 K53 ["GetCharacterMeshPropertyFromRig"]
      142 DUPCLOSURE                       R12 K54 [PROTO_10]
      143 CAPTURE                          VAL R2
      144 DUPCLOSURE                       R13 K55 [PROTO_12]
      145 DUPCLOSURE                       R14 K56 [PROTO_13]
      146 DUPCLOSURE                       R15 K57 [PROTO_14]
      147 DUPCLOSURE                       R16 K58 [PROTO_15]
      148 CAPTURE                          VAL R14
      149 CAPTURE                          VAL R15
      150 CAPTURE                          VAL R2
      151 SETTABLEKS                       R16 R0 K59 ["CopyCharacterMeshesToRig"]
      153 DUPCLOSURE                       R16 K60 [PROTO_16]
      154 CAPTURE                          VAL R7
      155 CAPTURE                          VAL R12
      156 CAPTURE                          VAL R13
      157 SETTABLEKS                       R16 R0 K61 ["CopyTexturesToRig"]
      159 DUPCLOSURE                       R16 K62 [PROTO_17]
      160 CAPTURE                          VAL R2
      161 SETTABLEKS                       R16 R0 K63 ["AddFaceToRig"]
      163 DUPCLOSURE                       R16 K64 [PROTO_18]
      164 CAPTURE                          VAL R6
      165 DUPCLOSURE                       R17 K65 [PROTO_19]
      166 CAPTURE                          VAL R4
      167 DUPCLOSURE                       R18 K66 [PROTO_20]
      168 CAPTURE                          VAL R4
      169 CAPTURE                          VAL R5
      170 DUPCLOSURE                       R19 K67 [PROTO_21]
      171 CAPTURE                          VAL R4
      172 CAPTURE                          VAL R5
      173 CAPTURE                          VAL R19
      174 DUPCLOSURE                       R20 K68 [PROTO_22]
      175 CAPTURE                          VAL R20
      176 DUPCLOSURE                       R21 K69 [PROTO_23]
      177 CAPTURE                          VAL R4
      178 CAPTURE                          VAL R20
      179 CAPTURE                          VAL R19
      180 DUPCLOSURE                       R22 K70 [PROTO_24]
      181 CAPTURE                          VAL R4
      182 CAPTURE                          VAL R6
      183 CAPTURE                          VAL R21
      184 SETTABLEKS                       R22 R0 K71 ["CreateImportedFbxModel"]
      186 DUPCLOSURE                       R22 K72 [PROTO_25]
      187 CAPTURE                          VAL R4
      188 SETTABLEKS                       R22 R0 K73 ["FindExistingImportedFbx"]
      190 DUPCLOSURE                       R22 K74 [PROTO_26]
      191 DUPCLOSURE                       R23 K75 [PROTO_27]
      192 DUPCLOSURE                       R24 K76 [PROTO_34]
      193 CAPTURE                          VAL R1
      194 CAPTURE                          VAL R4
      195 CAPTURE                          VAL R7
      196 CAPTURE                          VAL R15
      197 CAPTURE                          VAL R23
      198 SETTABLEKS                       R24 R0 K77 ["MakeExportVersion"]
      200 DUPCLOSURE                       R24 K78 [PROTO_35]
      201 CAPTURE                          VAL R1
      202 CAPTURE                          VAL R4
      203 CAPTURE                          VAL R3
      204 SETTABLEKS                       R24 R0 K79 ["Export"]
      206 RETURN                           R0 1
