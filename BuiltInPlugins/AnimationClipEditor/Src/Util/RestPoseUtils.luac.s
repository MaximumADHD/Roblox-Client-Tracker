PROTO_0:
        0 NEWTABLE                         R2 0 3
        2 DUPTABLE                         R3 K3 [{"Key", "Text", "Default"}]
        3 LOADK                            R4 K4 ["FromRigInFile"]
        4 SETTABLEKS                       R4 R3 K0 ["Key"]
        6 LOADK                            R6 K5 ["Dialog"]
        7 LOADK                            R7 K6 ["ImportedRig"]
        8 NAMECALL                         R4 R0 K7 ["getText"]
       10 CALL                             R4 3 1
       11 SETTABLEKS                       R4 R3 K1 ["Text"]
       13 LOADB                            R4 1
       14 SETTABLEKS                       R4 R3 K2 ["Default"]
       16 DUPTABLE                         R4 K8 [{"Key", "Text"}]
       17 LOADK                            R5 K9 ["FromRigInFileZeroedRotations"]
       18 SETTABLEKS                       R5 R4 K0 ["Key"]
       20 LOADK                            R7 K5 ["Dialog"]
       21 LOADK                            R8 K10 ["ImportedRigZeroed"]
       22 NAMECALL                         R5 R0 K7 ["getText"]
       24 CALL                             R5 3 1
       25 SETTABLEKS                       R5 R4 K1 ["Text"]
       27 DUPTABLE                         R5 K8 [{"Key", "Text"}]
       28 LOADK                            R6 K11 ["FromRigInACE"]
       29 SETTABLEKS                       R6 R5 K0 ["Key"]
       31 LOADK                            R8 K5 ["Dialog"]
       32 LOADK                            R9 K12 ["AnimationEditorRig"]
       33 NAMECALL                         R6 R0 K7 ["getText"]
       35 CALL                             R6 3 1
       36 SETTABLEKS                       R6 R5 K1 ["Text"]
       38 SETLIST                          R2 R3 3 [1]
       40 JUMPIFNOT                        R1 ; [+21]
       41 LENGTH                           R3 R1
       42 LOADN                            R4 1
       43 JUMPIFNOTLT                      R4 R3 ; [+18]
       45 DUPTABLE                         R5 K8 [{"Key", "Text"}]
       46 LOADK                            R6 K13 ["FromCustomClip"]
       47 SETTABLEKS                       R6 R5 K0 ["Key"]
       49 LOADK                            R8 K5 ["Dialog"]
       50 LOADK                            R9 K14 ["CustomClip"]
       51 NAMECALL                         R6 R0 K7 ["getText"]
       53 CALL                             R6 3 1
       54 SETTABLEKS                       R6 R5 K1 ["Text"]
       56 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       58 MOVE                             R4 R2
       59 GETIMPORT                        R3 K17 [table.insert]
       61 CALL                             R3 2 0
       62 RETURN                           R2 1

PROTO_1:
        0 JUMPIFNOTEQKS                    R0 K0 ["FromRigInFile"] ; [+4]
        2 GETIMPORT                        R1 K3 [Enum.RestPoseModel.FromRigInFile]
        4 RETURN                           R1 1
        5 JUMPIFNOTEQKS                    R0 K4 ["FromRigInACE"] ; [+4]
        7 GETIMPORT                        R1 K5 [Enum.RestPoseModel.FromRigInACE]
        9 RETURN                           R1 1
       10 JUMPIFNOTEQKS                    R0 K6 ["FromRigInFileZeroedRotations"] ; [+4]
       12 GETIMPORT                        R1 K7 [Enum.RestPoseModel.FromRigInFileZeroedRotations]
       14 RETURN                           R1 1
       15 JUMPIFNOTEQKS                    R0 K8 ["FromCustomClip"] ; [+4]
       17 GETIMPORT                        R1 K9 [Enum.RestPoseModel.FromCustomClip]
       19 RETURN                           R1 1
       20 GETIMPORT                        R1 K3 [Enum.RestPoseModel.FromRigInFile]
       22 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [ipairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_INEXT                   R2
        7 GETTABLEKS                       R7 R6 K2 ["Name"]
        9 JUMPIFEQKS                       R7 K3 [""] ; [+3]
       11 MOVE                             R10 R7
       12 JUMPIF                           R10 ; [+3]
       13 LOADK                            R11 K4 ["Animation "]
       14 MOVE                             R12 R5
       15 CONCAT                           R10 R11 R12
       16 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       18 MOVE                             R9 R1
       19 GETIMPORT                        R8 K7 [table.insert]
       21 CALL                             R8 2 0
       22 FORGLOOP                         R2 2 [inext] ; [-16]
       24 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["buildRestPoseOptions"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["mapRestPoseKeyToEnum"]
        9 DUPCLOSURE                       R1 K4 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K5 ["buildClipNamesFromSequences"]
       12 RETURN                           R0 1
