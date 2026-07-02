PROTO_0:
        0 NEWTABLE                         R2 0 3
        2 DUPTABLE                         R3 K5 [{[1] = "FromRigInFile", ["Text"], ["Default"] = True}]
        3 LOADK                            R6 K6 ["Dialog"]
        4 LOADK                            R7 K7 ["ImportedRig"]
        5 NAMECALL                         R4 R0 K8 ["getText"]
        7 CALL                             R4 3 1
        8 SETTABLEKS                       R4 R3 K2 ["Text"]
       10 DUPTABLE                         R4 K10 [{[1] = "FromRigInFileZeroedRotations", ["Text"]}]
       11 LOADK                            R7 K6 ["Dialog"]
       12 LOADK                            R8 K11 ["ImportedRigZeroed"]
       13 NAMECALL                         R5 R0 K8 ["getText"]
       15 CALL                             R5 3 1
       16 SETTABLEKS                       R5 R4 K2 ["Text"]
       18 DUPTABLE                         R5 K13 [{[1] = "FromRigInACE", ["Text"]}]
       19 LOADK                            R8 K6 ["Dialog"]
       20 LOADK                            R9 K14 ["AnimationEditorRig"]
       21 NAMECALL                         R6 R0 K8 ["getText"]
       23 CALL                             R6 3 1
       24 SETTABLEKS                       R6 R5 K2 ["Text"]
       26 SETLIST                          R2 R3 3 [1]
       28 JUMPIFNOT                        R1 ; [+18]
       29 LENGTH                           R3 R1
       30 LOADN                            R4 1
       31 JUMPIFNOTLT                      R4 R3 ; [+15]
       33 DUPTABLE                         R5 K16 [{[1] = "FromCustomClip", ["Text"]}]
       34 LOADK                            R8 K6 ["Dialog"]
       35 LOADK                            R9 K17 ["CustomClip"]
       36 NAMECALL                         R6 R0 K8 ["getText"]
       38 CALL                             R6 3 1
       39 SETTABLEKS                       R6 R5 K2 ["Text"]
       41 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       43 MOVE                             R4 R2
       44 GETIMPORT                        R3 K20 [table.insert]
       46 CALL                             R3 2 0
       47 RETURN                           R2 1

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
