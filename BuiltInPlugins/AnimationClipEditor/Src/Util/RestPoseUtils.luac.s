PROTO_0:
        0 LOADNIL                          R2
        1 GETUPVAL                         R3 0
        2 CALL                             R3 0 1
        3 JUMPIFNOT                        R3 ; [+30]
        4 NEWTABLE                         R3 0 3
        6 DUPTABLE                         R4 K5 [{[1] = "FromRigInFileZeroedRotations", ["Text"], ["Default"] = True}]
        7 LOADK                            R7 K6 ["Dialog"]
        8 LOADK                            R8 K7 ["ImportedRigZeroed"]
        9 NAMECALL                         R5 R0 K8 ["getText"]
       11 CALL                             R5 3 1
       12 SETTABLEKS                       R5 R4 K2 ["Text"]
       14 DUPTABLE                         R5 K10 [{[1] = "FromRigInFile", ["Text"]}]
       15 LOADK                            R8 K6 ["Dialog"]
       16 LOADK                            R9 K11 ["ImportedRig"]
       17 NAMECALL                         R6 R0 K8 ["getText"]
       19 CALL                             R6 3 1
       20 SETTABLEKS                       R6 R5 K2 ["Text"]
       22 DUPTABLE                         R6 K13 [{[1] = "FromRigInACE", ["Text"]}]
       23 LOADK                            R9 K6 ["Dialog"]
       24 LOADK                            R10 K14 ["AnimationEditorRig"]
       25 NAMECALL                         R7 R0 K8 ["getText"]
       27 CALL                             R7 3 1
       28 SETTABLEKS                       R7 R6 K2 ["Text"]
       30 SETLIST                          R3 R4 3 [1]
       32 MOVE                             R2 R3
       33 JUMP                             ; [+29]
       34 NEWTABLE                         R3 0 3
       36 DUPTABLE                         R4 K15 [{[1] = "FromRigInFile", ["Text"], ["Default"] = True}]
       37 LOADK                            R7 K6 ["Dialog"]
       38 LOADK                            R8 K11 ["ImportedRig"]
       39 NAMECALL                         R5 R0 K8 ["getText"]
       41 CALL                             R5 3 1
       42 SETTABLEKS                       R5 R4 K2 ["Text"]
       44 DUPTABLE                         R5 K16 [{[1] = "FromRigInFileZeroedRotations", ["Text"]}]
       45 LOADK                            R8 K6 ["Dialog"]
       46 LOADK                            R9 K7 ["ImportedRigZeroed"]
       47 NAMECALL                         R6 R0 K8 ["getText"]
       49 CALL                             R6 3 1
       50 SETTABLEKS                       R6 R5 K2 ["Text"]
       52 DUPTABLE                         R6 K13 [{[1] = "FromRigInACE", ["Text"]}]
       53 LOADK                            R9 K6 ["Dialog"]
       54 LOADK                            R10 K14 ["AnimationEditorRig"]
       55 NAMECALL                         R7 R0 K8 ["getText"]
       57 CALL                             R7 3 1
       58 SETTABLEKS                       R7 R6 K2 ["Text"]
       60 SETLIST                          R3 R4 3 [1]
       62 MOVE                             R2 R3
       63 JUMPIFNOT                        R1 ; [+18]
       64 LENGTH                           R3 R1
       65 LOADN                            R4 1
       66 JUMPIFNOTLT                      R4 R3 ; [+15]
       68 DUPTABLE                         R5 K18 [{[1] = "FromCustomClip", ["Text"]}]
       69 LOADK                            R8 K6 ["Dialog"]
       70 LOADK                            R9 K19 ["CustomClip"]
       71 NAMECALL                         R6 R0 K8 ["getText"]
       73 CALL                             R6 3 1
       74 SETTABLEKS                       R6 R5 K2 ["Text"]
       76 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       78 MOVE                             R4 R2
       79 GETIMPORT                        R3 K22 [table.insert]
       81 CALL                             R3 2 0
       82 RETURN                           R2 1

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
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["LuaFlags"]
       11 GETTABLEKS                       R2 R2 K7 ["GetFFlagACEImportSettingsDefaults"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 4 0
       16 DUPCLOSURE                       R3 K8 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 SETTABLEKS                       R3 R2 K9 ["buildRestPoseOptions"]
       20 DUPCLOSURE                       R3 K10 [PROTO_1]
       21 SETTABLEKS                       R3 R2 K11 ["mapRestPoseKeyToEnum"]
       23 DUPCLOSURE                       R3 K12 [PROTO_2]
       24 SETTABLEKS                       R3 R2 K13 ["buildClipNamesFromSequences"]
       26 RETURN                           R2 1
