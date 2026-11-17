PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+7]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        6 LOADNIL                          R1
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1
        9 GETUPVAL                         R0 2
       10 GETTABLEKS                       R0 R0 K1 ["observeFirstNamedChildWhichIsA"]
       12 GETUPVAL                         R1 0
       13 LOADK                            R2 K2 ["Folder"]
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R4 R4 K4 ["sharedMasksFolderName"]
       17 ORK                              R3 R4 K3 ["SharedMasks"]
       18 CALL                             R0 3 -1
       19 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 1
        3 LOADB                            R2 0
        4 JUMPIFEQKNIL                     R1 ; [+5]
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R0 K0 ["IsDescendantOf"]
        9 CALL                             R2 2 1
       10 RETURN                           R2 1

PROTO_2:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETIMPORT                        R7 K2 [Instance.new]
        6 LOADK                            R8 K3 ["NumberValue"]
        7 CALL                             R7 1 1
        8 GETTABLEKS                       R8 R6 K4 ["name"]
       10 SETTABLEKS                       R8 R7 K5 ["Name"]
       12 LOADN                            R8 1
       13 SETTABLEKS                       R8 R7 K6 ["Value"]
       15 GETUPVAL                         R10 0
       16 GETTABLEKS                       R10 R10 K7 ["orderAttribute"]
       18 MOVE                             R11 R5
       19 NAMECALL                         R8 R7 K8 ["SetAttribute"]
       21 CALL                             R8 3 0
       22 SETTABLEKS                       R1 R7 K9 ["Parent"]
       24 GETUPVAL                         R8 1
       25 GETTABLEKS                       R9 R6 K10 ["children"]
       27 MOVE                             R10 R7
       28 CALL                             R8 2 0
       29 FORGLOOP                         R2 2 ; [-26]
       31 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQKNIL                  R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        7 LOADK                            R2 K0 ["Creating mask with no graph selected"]
        8 GETIMPORT                        R0 K2 [assert]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R1 1
       12 CALL                             R1 0 1
       13 JUMPIFNOT                        R1 ; [+7]
       14 GETUPVAL                         R0 2
       15 LOADK                            R2 K3 ["MaskEditorContext"]
       16 LOADK                            R3 K4 ["createMaskAsync"]
       17 NAMECALL                         R0 R0 K5 ["TryBeginRecording"]
       19 CALL                             R0 3 1
       20 JUMP                             ; [+1]
       21 LOADNIL                          R0
       22 GETUPVAL                         R1 3
       23 LOADB                            R2 0
       24 CALL                             R1 1 1
       25 JUMPIFNOTEQKNIL                  R1 ; [+15]
       27 GETIMPORT                        R2 K8 [Instance.new]
       29 LOADK                            R3 K9 ["Folder"]
       30 CALL                             R2 1 1
       31 GETUPVAL                         R4 4
       32 GETTABLEKS                       R4 R4 K11 ["sharedMasksFolderName"]
       34 ORK                              R3 R4 K10 ["SharedMasks"]
       35 SETTABLEKS                       R3 R2 K12 ["Name"]
       37 GETUPVAL                         R3 0
       38 SETTABLEKS                       R3 R2 K13 ["Parent"]
       40 MOVE                             R1 R2
       41 JUMPIFNOTEQKNIL                  R1 ; [+2]
       43 LOADB                            R3 0 +1
       44 LOADB                            R3 1
       45 FASTCALL2K                       ASSERT R3 K14 ; [+4]
       47 LOADK                            R4 K14 ["Luau"]
       48 GETIMPORT                        R2 K2 [assert]
       50 CALL                             R2 2 0
       51 GETIMPORT                        R2 K8 [Instance.new]
       53 LOADK                            R3 K9 ["Folder"]
       54 CALL                             R2 1 1
       55 GETUPVAL                         R3 5
       56 MOVE                             R4 R1
       57 LOADK                            R5 K15 ["Mask"]
       58 CALL                             R3 2 1
       59 SETTABLEKS                       R3 R2 K12 ["Name"]
       61 DUPCLOSURE                       R3 K16 [PROTO_2]
       62 CAPTURE                          UPVAL U6
       63 CAPTURE                          VAL R3
       64 GETUPVAL                         R4 7
       65 MOVE                             R5 R2
       66 GETIMPORT                        R6 K20 [Enum.RigLabel.Root]
       68 CALL                             R4 2 0
       69 LOADK                            R6 K21 ["RBX_MaskRigType"]
       70 LOADK                            R7 K22 ["HRD"]
       71 NAMECALL                         R4 R2 K23 ["SetAttribute"]
       73 CALL                             R4 3 0
       74 SETTABLEKS                       R1 R2 K13 ["Parent"]
       76 GETUPVAL                         R4 1
       77 CALL                             R4 0 1
       78 JUMPIFNOT                        R4 ; [+5]
       79 GETUPVAL                         R4 8
       80 GETTABLEKS                       R4 R4 K24 ["markDirty"]
       82 GETUPVAL                         R5 0
       83 CALL                             R4 1 0
       84 JUMPIFNOT                        R0 ; [+7]
       85 GETUPVAL                         R4 2
       86 MOVE                             R6 R0
       87 GETIMPORT                        R7 K27 [Enum.FinishRecordingOperation.Commit]
       89 NAMECALL                         R4 R4 K28 ["FinishRecording"]
       91 CALL                             R4 3 0
       92 GETUPVAL                         R4 9
       93 MOVE                             R6 R2
       94 NAMECALL                         R4 R4 K29 ["instanceToId"]
       96 CALL                             R4 2 -1
       97 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["idToInstance"]
        4 CALL                             R1 2 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R3 1
        9 MOVE                             R4 R1
       10 CALL                             R3 1 1
       11 FASTCALL2K                       ASSERT R3 K1 ; [+4]
       13 LOADK                            R4 K1 ["deleteMaskAsync on non-mask"]
       14 GETIMPORT                        R2 K3 [assert]
       16 CALL                             R2 2 0
       17 GETUPVAL                         R2 2
       18 LOADK                            R4 K4 ["Delete mask"]
       19 NAMECALL                         R2 R2 K5 ["TryBeginRecording"]
       21 CALL                             R2 2 1
       22 GETUPVAL                         R3 3
       23 CALL                             R3 0 1
       24 JUMPIFNOT                        R3 ; [+5]
       25 GETUPVAL                         R3 4
       26 GETTABLEKS                       R3 R3 K6 ["markDirtyFromChild"]
       28 MOVE                             R4 R1
       29 CALL                             R3 1 0
       30 LOADNIL                          R3
       31 SETTABLEKS                       R3 R1 K7 ["Parent"]
       33 JUMPIFEQKNIL                     R2 ; [+8]
       35 GETUPVAL                         R3 2
       36 MOVE                             R5 R2
       37 GETIMPORT                        R6 K11 [Enum.FinishRecordingOperation.Commit]
       39 NAMECALL                         R3 R3 K12 ["FinishRecording"]
       41 CALL                             R3 3 0
       42 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 LOADB                            R3 0
        2 CALL                             R2 1 1
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 1
        7 MOVE                             R5 R0
        8 NAMECALL                         R3 R3 K0 ["idToInstance"]
       10 CALL                             R3 2 1
       11 JUMPIFNOTEQKNIL                  R3 ; [+2]
       13 RETURN                           R0 0
       14 GETUPVAL                         R5 2
       15 MOVE                             R6 R3
       16 CALL                             R5 1 1
       17 FASTCALL2K                       ASSERT R5 K1 ; [+4]
       19 LOADK                            R6 K1 ["renameMaskAsync on non-mask"]
       20 GETIMPORT                        R4 K3 [assert]
       22 CALL                             R4 2 0
       23 MOVE                             R6 R1
       24 NAMECALL                         R4 R2 K4 ["FindFirstChild"]
       26 CALL                             R4 2 1
       27 JUMPIFEQKNIL                     R4 ; [+2]
       29 RETURN                           R0 0
       30 GETUPVAL                         R5 3
       31 CALL                             R5 0 1
       32 JUMPIFNOT                        R5 ; [+7]
       33 GETUPVAL                         R4 4
       34 LOADK                            R6 K5 ["MaskEditorContext"]
       35 LOADK                            R7 K6 ["renameMaskAsync"]
       36 NAMECALL                         R4 R4 K7 ["TryBeginRecording"]
       38 CALL                             R4 3 1
       39 JUMP                             ; [+1]
       40 LOADNIL                          R4
       41 SETTABLEKS                       R1 R3 K8 ["Name"]
       43 GETUPVAL                         R5 3
       44 CALL                             R5 0 1
       45 JUMPIFNOT                        R5 ; [+5]
       46 GETUPVAL                         R5 5
       47 GETTABLEKS                       R5 R5 K9 ["markDirtyFromChild"]
       49 MOVE                             R6 R3
       50 CALL                             R5 1 0
       51 JUMPIFNOT                        R4 ; [+7]
       52 GETUPVAL                         R5 4
       53 MOVE                             R7 R4
       54 GETIMPORT                        R8 K13 [Enum.FinishRecordingOperation.Commit]
       56 NAMECALL                         R5 R5 K14 ["FinishRecording"]
       58 CALL                             R5 3 0
       59 RETURN                           R0 0

PROTO_6:
        0 JUMPIFNOTEQKNIL                  R0 ; [+8]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["of"]
        5 NEWTABLE                         R2 0 0
        7 CALL                             R1 1 1
        8 RETURN                           R1 1
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K1 ["observeChildren"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 1
       14 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["switchMap"]
        3 GETUPVAL                         R1 1
        4 DUPCLOSURE                       R2 K1 [PROTO_6]
        5 CAPTURE                          UPVAL U0
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_9:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 GETUPVAL                         R7 1
        7 GETTABLEKS                       R9 R6 K0 ["instance"]
        9 NAMECALL                         R7 R7 K1 ["instanceToId"]
       11 CALL                             R7 2 1
       12 GETTABLEKS                       R8 R6 K2 ["mask"]
       14 SETTABLE                         R8 R1 R7
       15 FORGLOOP                         R2 2 ; [-10]
       17 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["forEach"]
        3 GETUPVAL                         R1 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 2 1
        8 GETUPVAL                         R1 4
        9 GETTABLEKS                       R1 R1 K1 ["createComputed"]
       11 NEWCLOSURE                       R2 P1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U3
       14 CALL                             R1 1 -1
       15 RETURN                           R1 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["idToInstance"]
        4 CALL                             R2 2 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R4 1
        9 MOVE                             R5 R2
       10 CALL                             R4 1 1
       11 FASTCALL2K                       ASSERT R4 K1 ; [+4]
       13 LOADK                            R5 K1 ["Not a mask"]
       14 GETIMPORT                        R3 K3 [assert]
       16 CALL                             R3 2 0
       17 GETUPVAL                         R4 2
       18 CALL                             R4 0 1
       19 JUMPIFNOT                        R4 ; [+7]
       20 GETUPVAL                         R3 3
       21 LOADK                            R5 K4 ["MaskEditorContext"]
       22 LOADK                            R6 K5 ["setRigTypeAsync"]
       23 NAMECALL                         R3 R3 K6 ["TryBeginRecording"]
       25 CALL                             R3 3 1
       26 JUMP                             ; [+1]
       27 LOADNIL                          R3
       28 GETUPVAL                         R6 4
       29 GETTABLEKS                       R6 R6 K7 ["attributeMaskRigType"]
       31 MOVE                             R7 R1
       32 NAMECALL                         R4 R2 K8 ["SetAttribute"]
       34 CALL                             R4 3 0
       35 JUMPIFNOTEQKS                    R1 K9 ["HRD"] ; [+22]
       37 NAMECALL                         R4 R2 K10 ["GetChildren"]
       39 CALL                             R4 1 3
       40 FORGPREP                         R4
       41 LOADNIL                          R9
       42 SETTABLEKS                       R9 R8 K11 ["Parent"]
       44 FORGLOOP                         R4 2 ; [-4]
       46 GETUPVAL                         R4 5
       47 MOVE                             R5 R2
       48 GETIMPORT                        R6 K15 [Enum.RigLabel.Root]
       50 CALL                             R4 2 0
       51 GETUPVAL                         R6 4
       52 GETTABLEKS                       R6 R6 K16 ["attributeMaskRigName"]
       54 LOADK                            R7 K17 [""]
       55 NAMECALL                         R4 R2 K8 ["SetAttribute"]
       57 CALL                             R4 3 0
       58 GETUPVAL                         R4 2
       59 CALL                             R4 0 1
       60 JUMPIFNOT                        R4 ; [+5]
       61 GETUPVAL                         R4 6
       62 GETTABLEKS                       R4 R4 K18 ["markDirtyFromChild"]
       64 MOVE                             R5 R2
       65 CALL                             R4 1 0
       66 JUMPIFNOT                        R3 ; [+7]
       67 GETUPVAL                         R4 3
       68 MOVE                             R6 R3
       69 GETIMPORT                        R7 K21 [Enum.FinishRecordingOperation.Commit]
       71 NAMECALL                         R4 R4 K22 ["FinishRecording"]
       73 CALL                             R4 3 0
       74 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["idToInstance"]
        4 CALL                             R2 2 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 FASTCALL2K                       ASSERT R4 K1 ; [+4]
       11 LOADK                            R5 K1 ["Can't find joint object"]
       12 GETIMPORT                        R3 K3 [assert]
       14 CALL                             R3 2 0
       15 LOADK                            R6 K4 ["NumberValue"]
       16 NAMECALL                         R4 R2 K5 ["IsA"]
       18 CALL                             R4 2 1
       19 FASTCALL2K                       ASSERT R4 K6 ; [+4]
       21 LOADK                            R5 K6 ["Joint object is not a NumberValue"]
       22 GETIMPORT                        R3 K3 [assert]
       24 CALL                             R3 2 0
       25 GETUPVAL                         R4 1
       26 CALL                             R4 0 1
       27 JUMPIFNOT                        R4 ; [+7]
       28 GETUPVAL                         R3 2
       29 LOADK                            R5 K7 ["MaskEditorContext"]
       30 LOADK                            R6 K8 ["setJointWeightAsync"]
       31 NAMECALL                         R3 R3 K9 ["TryBeginRecording"]
       33 CALL                             R3 3 1
       34 JUMP                             ; [+1]
       35 LOADNIL                          R3
       36 SETTABLEKS                       R1 R2 K10 ["Value"]
       38 GETUPVAL                         R4 1
       39 CALL                             R4 0 1
       40 JUMPIFNOT                        R4 ; [+5]
       41 GETUPVAL                         R4 3
       42 GETTABLEKS                       R4 R4 K11 ["markDirtyFromChild"]
       44 MOVE                             R5 R2
       45 CALL                             R4 1 0
       46 JUMPIFNOT                        R3 ; [+7]
       47 GETUPVAL                         R4 2
       48 MOVE                             R6 R3
       49 GETIMPORT                        R7 K15 [Enum.FinishRecordingOperation.Commit]
       51 NAMECALL                         R4 R4 K16 ["FinishRecording"]
       53 CALL                             R4 3 0
       54 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["idToInstance"]
        4 CALL                             R2 2 1
        5 JUMPIFEQKNIL                     R2 ; [+5]
        7 GETUPVAL                         R3 1
        8 MOVE                             R4 R2
        9 CALL                             R3 1 1
       10 JUMPIF                           R3 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R4 2
       13 CALL                             R4 0 1
       14 JUMPIFNOT                        R4 ; [+7]
       15 GETUPVAL                         R3 3
       16 LOADK                            R5 K1 ["MaskEditorContext"]
       17 LOADK                            R6 K2 ["setAllJointWeightsAsync"]
       18 NAMECALL                         R3 R3 K3 ["TryBeginRecording"]
       20 CALL                             R3 3 1
       21 JUMP                             ; [+1]
       22 LOADNIL                          R3
       23 NAMECALL                         R4 R2 K4 ["GetDescendants"]
       25 CALL                             R4 1 3
       26 FORGPREP                         R4
       27 LOADK                            R11 K5 ["NumberValue"]
       28 NAMECALL                         R9 R8 K6 ["IsA"]
       30 CALL                             R9 2 1
       31 JUMPIFNOT                        R9 ; [+2]
       32 SETTABLEKS                       R1 R8 K7 ["Value"]
       34 FORGLOOP                         R4 2 ; [-8]
       36 GETUPVAL                         R4 2
       37 CALL                             R4 0 1
       38 JUMPIFNOT                        R4 ; [+5]
       39 GETUPVAL                         R4 4
       40 GETTABLEKS                       R4 R4 K8 ["markDirtyFromChild"]
       42 MOVE                             R5 R2
       43 CALL                             R4 1 0
       44 JUMPIFNOT                        R3 ; [+7]
       45 GETUPVAL                         R4 3
       46 MOVE                             R6 R3
       47 GETIMPORT                        R7 K12 [Enum.FinishRecordingOperation.Commit]
       49 NAMECALL                         R4 R4 K13 ["FinishRecording"]
       51 CALL                             R4 3 0
       52 RETURN                           R0 0

PROTO_14:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETIMPORT                        R7 K2 [Instance.new]
        6 LOADK                            R8 K3 ["NumberValue"]
        7 CALL                             R7 1 1
        8 GETTABLEKS                       R8 R6 K4 ["joint"]
       10 GETTABLEKS                       R8 R8 K5 ["Name"]
       12 SETTABLEKS                       R8 R7 K5 ["Name"]
       14 LOADN                            R8 1
       15 SETTABLEKS                       R8 R7 K6 ["Value"]
       17 GETUPVAL                         R10 0
       18 GETTABLEKS                       R10 R10 K7 ["orderAttribute"]
       20 MOVE                             R11 R5
       21 NAMECALL                         R8 R7 K8 ["SetAttribute"]
       23 CALL                             R8 3 0
       24 SETTABLEKS                       R1 R7 K9 ["Parent"]
       26 GETUPVAL                         R8 1
       27 GETTABLEKS                       R9 R6 K10 ["children"]
       29 MOVE                             R10 R7
       30 CALL                             R8 2 0
       31 FORGLOOP                         R2 2 ; [-28]
       33 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["idToInstance"]
        4 CALL                             R1 2 1
        5 JUMPIFEQKNIL                     R1 ; [+5]
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R1
        9 CALL                             R2 1 1
       10 JUMPIF                           R2 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K1 ["startPickingInstanceAsync"]
       15 CALL                             R2 0 1
       16 LOADNIL                          R3
       17 JUMPIFEQKNIL                     R2 ; [+17]
       19 LOADK                            R6 K2 ["Model"]
       20 NAMECALL                         R4 R2 K3 ["IsA"]
       22 CALL                             R4 2 1
       23 JUMPIFNOT                        R4 ; [+2]
       24 MOVE                             R3 R2
       25 JUMP                             ; [+9]
       26 LOADK                            R6 K2 ["Model"]
       27 NAMECALL                         R4 R2 K4 ["FindFirstAncestorWhichIsA"]
       29 CALL                             R4 2 1
       30 MOVE                             R3 R4
       31 GETUPVAL                         R4 3
       32 JUMPIFNOTEQ                      R3 R4 ; [+2]
       34 LOADNIL                          R3
       35 GETUPVAL                         R4 4
       36 LOADK                            R6 K5 ["Picking rig"]
       37 NAMECALL                         R4 R4 K6 ["TryBeginRecording"]
       39 CALL                             R4 2 1
       40 JUMPIFEQKNIL                     R3 ; [+38]
       42 MOVE                             R5 R3
       43 GETUPVAL                         R8 5
       44 GETTABLEKS                       R8 R8 K7 ["attributeMaskRigType"]
       46 LOADK                            R9 K8 ["Custom"]
       47 NAMECALL                         R6 R1 K9 ["SetAttribute"]
       49 CALL                             R6 3 0
       50 GETUPVAL                         R8 5
       51 GETTABLEKS                       R8 R8 K10 ["attributeMaskRigName"]
       53 GETTABLEKS                       R9 R5 K11 ["Name"]
       55 NAMECALL                         R6 R1 K9 ["SetAttribute"]
       57 CALL                             R6 3 0
       58 NAMECALL                         R6 R1 K12 ["GetChildren"]
       60 CALL                             R6 1 3
       61 FORGPREP                         R6
       62 LOADNIL                          R11
       63 SETTABLEKS                       R11 R10 K13 ["Parent"]
       65 FORGLOOP                         R6 2 ; [-4]
       67 GETUPVAL                         R6 6
       68 GETTABLEKS                       R6 R6 K14 ["buildSkeleton"]
       70 MOVE                             R7 R5
       71 CALL                             R6 1 1
       72 DUPCLOSURE                       R7 K15 [PROTO_14]
       73 CAPTURE                          UPVAL U5
       74 CAPTURE                          VAL R7
       75 MOVE                             R8 R7
       76 MOVE                             R9 R6
       77 MOVE                             R10 R1
       78 CALL                             R8 2 0
       79 GETUPVAL                         R5 7
       80 CALL                             R5 0 1
       81 JUMPIFNOT                        R5 ; [+5]
       82 GETUPVAL                         R5 8
       83 GETTABLEKS                       R5 R5 K16 ["markDirtyFromChild"]
       85 MOVE                             R6 R1
       86 CALL                             R5 1 0
       87 JUMPIFEQKNIL                     R4 ; [+8]
       89 GETUPVAL                         R5 4
       90 MOVE                             R7 R4
       91 GETIMPORT                        R8 K20 [Enum.FinishRecordingOperation.Commit]
       93 NAMECALL                         R5 R5 K21 ["FinishRecording"]
       95 CALL                             R5 3 0
       96 RETURN                           R0 0

PROTO_16:
        0 DUPTABLE                         R0 K8 [{"createMaskAsync", "deleteMaskAsync", "renameMaskAsync", "setRigTypeAsync", "setJointWeightAsync", "setAllJointWeightsAsync", "pickRigAsync", "masks"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["createMaskAsync"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["deleteMaskAsync"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["renameMaskAsync"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["setRigTypeAsync"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["setJointWeightAsync"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["setAllJointWeightsAsync"]
       19 GETUPVAL                         R1 6
       20 SETTABLEKS                       R1 R0 K6 ["pickRigAsync"]
       22 GETUPVAL                         R1 7
       23 SETTABLEKS                       R1 R0 K7 ["masks"]
       25 RETURN                           R0 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R2 R2 K2 ["instanceRegistry"]
       16 GETUPVAL                         R3 3
       17 GETTABLEKS                       R3 R3 K3 ["useSignalState"]
       19 GETTABLEKS                       R4 R1 K4 ["observeSelectedGraphInstance"]
       21 CALL                             R3 1 1
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K5 ["useMemo"]
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          VAL R3
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          VAL R0
       30 NEWTABLE                         R6 0 2
       32 MOVE                             R7 R3
       33 GETTABLEKS                       R8 R0 K6 ["sharedMasksFolderName"]
       35 SETLIST                          R6 R7 2 [1]
       37 CALL                             R4 2 1
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K7 ["useCallback"]
       41 NEWCLOSURE                       R6 P1
       42 CAPTURE                          VAL R4
       43 NEWTABLE                         R7 0 1
       45 MOVE                             R8 R4
       46 SETLIST                          R7 R8 1 [1]
       48 CALL                             R5 2 1
       49 GETUPVAL                         R6 0
       50 GETTABLEKS                       R6 R6 K7 ["useCallback"]
       52 NEWCLOSURE                       R7 P2
       53 CAPTURE                          VAL R3
       54 CAPTURE                          UPVAL U6
       55 CAPTURE                          UPVAL U7
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R0
       58 CAPTURE                          UPVAL U8
       59 CAPTURE                          UPVAL U9
       60 CAPTURE                          UPVAL U10
       61 CAPTURE                          UPVAL U11
       62 CAPTURE                          VAL R2
       63 NEWTABLE                         R8 0 4
       65 MOVE                             R9 R3
       66 MOVE                             R10 R2
       67 MOVE                             R11 R4
       68 GETTABLEKS                       R12 R0 K6 ["sharedMasksFolderName"]
       70 SETLIST                          R8 R9 4 [1]
       72 CALL                             R6 2 1
       73 GETUPVAL                         R7 0
       74 GETTABLEKS                       R7 R7 K7 ["useCallback"]
       76 NEWCLOSURE                       R8 P3
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R5
       79 CAPTURE                          UPVAL U7
       80 CAPTURE                          UPVAL U6
       81 CAPTURE                          UPVAL U11
       82 NEWTABLE                         R9 0 2
       84 MOVE                             R10 R2
       85 MOVE                             R11 R5
       86 SETLIST                          R9 R10 2 [1]
       88 CALL                             R7 2 1
       89 GETUPVAL                         R8 0
       90 GETTABLEKS                       R8 R8 K7 ["useCallback"]
       92 NEWCLOSURE                       R9 P4
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R5
       96 CAPTURE                          UPVAL U6
       97 CAPTURE                          UPVAL U7
       98 CAPTURE                          UPVAL U11
       99 NEWTABLE                         R10 0 3
      101 MOVE                             R11 R2
      102 MOVE                             R12 R5
      103 MOVE                             R13 R4
      104 SETLIST                          R10 R11 3 [1]
      106 CALL                             R8 2 1
      107 GETUPVAL                         R9 0
      108 GETTABLEKS                       R9 R9 K5 ["useMemo"]
      110 NEWCLOSURE                       R10 P5
      111 CAPTURE                          UPVAL U5
      112 CAPTURE                          VAL R4
      113 NEWTABLE                         R11 0 1
      115 MOVE                             R12 R4
      116 SETLIST                          R11 R12 1 [1]
      118 CALL                             R9 2 1
      119 GETIMPORT                        R10 K9 [game]
      121 LOADK                            R12 K10 ["AnimGraphMaskFixEnabled"]
      122 NAMECALL                         R10 R10 K11 ["GetEngineFeature"]
      124 CALL                             R10 2 1
      125 JUMPIF                           R10 ; [+4]
      126 GETUPVAL                         R10 12
      127 MOVE                             R11 R9
      128 MOVE                             R12 R2
      129 CALL                             R10 2 0
      130 GETUPVAL                         R10 3
      131 GETTABLEKS                       R10 R10 K3 ["useSignalState"]
      133 GETUPVAL                         R11 0
      134 GETTABLEKS                       R11 R11 K5 ["useMemo"]
      136 NEWCLOSURE                       R12 P6
      137 CAPTURE                          UPVAL U5
      138 CAPTURE                          VAL R9
      139 CAPTURE                          UPVAL U13
      140 CAPTURE                          VAL R2
      141 CAPTURE                          UPVAL U14
      142 NEWTABLE                         R13 0 2
      144 MOVE                             R14 R9
      145 MOVE                             R15 R2
      146 SETLIST                          R13 R14 2 [1]
      148 CALL                             R11 2 -1
      149 CALL                             R10 -1 1
      150 GETUPVAL                         R11 0
      151 GETTABLEKS                       R11 R11 K7 ["useCallback"]
      153 NEWCLOSURE                       R12 P7
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R5
      156 CAPTURE                          UPVAL U6
      157 CAPTURE                          UPVAL U7
      158 CAPTURE                          UPVAL U9
      159 CAPTURE                          UPVAL U10
      160 CAPTURE                          UPVAL U11
      161 NEWTABLE                         R13 0 2
      163 MOVE                             R14 R2
      164 MOVE                             R15 R5
      165 SETLIST                          R13 R14 2 [1]
      167 CALL                             R11 2 1
      168 GETUPVAL                         R12 0
      169 GETTABLEKS                       R12 R12 K7 ["useCallback"]
      171 NEWCLOSURE                       R13 P8
      172 CAPTURE                          VAL R2
      173 CAPTURE                          UPVAL U6
      174 CAPTURE                          UPVAL U7
      175 CAPTURE                          UPVAL U11
      176 NEWTABLE                         R14 0 1
      178 MOVE                             R15 R2
      179 SETLIST                          R14 R15 1 [1]
      181 CALL                             R12 2 1
      182 GETUPVAL                         R13 0
      183 GETTABLEKS                       R13 R13 K7 ["useCallback"]
      185 NEWCLOSURE                       R14 P9
      186 CAPTURE                          VAL R2
      187 CAPTURE                          VAL R5
      188 CAPTURE                          UPVAL U6
      189 CAPTURE                          UPVAL U7
      190 CAPTURE                          UPVAL U11
      191 NEWTABLE                         R15 0 2
      193 MOVE                             R16 R2
      194 MOVE                             R17 R5
      195 SETLIST                          R15 R16 2 [1]
      197 CALL                             R13 2 1
      198 GETUPVAL                         R14 0
      199 GETTABLEKS                       R14 R14 K7 ["useCallback"]
      201 NEWCLOSURE                       R15 P10
      202 CAPTURE                          VAL R2
      203 CAPTURE                          VAL R5
      204 CAPTURE                          VAL R0
      205 CAPTURE                          UPVAL U15
      206 CAPTURE                          UPVAL U7
      207 CAPTURE                          UPVAL U9
      208 CAPTURE                          UPVAL U16
      209 CAPTURE                          UPVAL U6
      210 CAPTURE                          UPVAL U11
      211 NEWTABLE                         R16 0 3
      213 GETTABLEKS                       R17 R0 K12 ["startPickingInstanceAsync"]
      215 MOVE                             R18 R2
      216 MOVE                             R19 R5
      217 SETLIST                          R16 R17 3 [1]
      219 CALL                             R14 2 1
      220 GETUPVAL                         R15 0
      221 GETTABLEKS                       R15 R15 K5 ["useMemo"]
      223 NEWCLOSURE                       R16 P11
      224 CAPTURE                          VAL R6
      225 CAPTURE                          VAL R7
      226 CAPTURE                          VAL R8
      227 CAPTURE                          VAL R11
      228 CAPTURE                          VAL R12
      229 CAPTURE                          VAL R13
      230 CAPTURE                          VAL R14
      231 CAPTURE                          VAL R10
      232 NEWTABLE                         R17 0 8
      234 MOVE                             R18 R6
      235 MOVE                             R19 R7
      236 MOVE                             R20 R8
      237 MOVE                             R21 R11
      238 MOVE                             R22 R12
      239 MOVE                             R23 R13
      240 MOVE                             R24 R14
      241 MOVE                             R25 R10
      242 SETLIST                          R17 R18 8 [1]
      244 CALL                             R15 2 1
      245 GETUPVAL                         R16 17
      246 GETTABLEKS                       R16 R16 K13 ["useReplicatedState"]
      248 LOADK                            R17 K14 ["MaskEditorContext_Masks"]
      249 MOVE                             R18 R10
      250 CALL                             R16 2 0
      251 GETUPVAL                         R16 17
      252 GETTABLEKS                       R16 R16 K15 ["useBoundAction"]
      254 LOADK                            R17 K16 ["MaskEditorContext_CreateMaskAsync"]
      255 MOVE                             R18 R6
      256 CALL                             R16 2 0
      257 GETUPVAL                         R16 17
      258 GETTABLEKS                       R16 R16 K15 ["useBoundAction"]
      260 LOADK                            R17 K17 ["MaskEditorContext_DeleteMaskAsync"]
      261 MOVE                             R18 R7
      262 CALL                             R16 2 0
      263 GETUPVAL                         R16 17
      264 GETTABLEKS                       R16 R16 K15 ["useBoundAction"]
      266 LOADK                            R17 K18 ["MaskEditorContext_RenameMaskAsync"]
      267 MOVE                             R18 R8
      268 CALL                             R16 2 0
      269 GETUPVAL                         R16 17
      270 GETTABLEKS                       R16 R16 K15 ["useBoundAction"]
      272 LOADK                            R17 K19 ["MaskEditorContext_SetRigTypeAsync"]
      273 MOVE                             R18 R11
      274 CALL                             R16 2 0
      275 GETUPVAL                         R16 17
      276 GETTABLEKS                       R16 R16 K15 ["useBoundAction"]
      278 LOADK                            R17 K20 ["MaskEditorContext_SetJointWeightAsync"]
      279 MOVE                             R18 R12
      280 CALL                             R16 2 0
      281 GETUPVAL                         R16 17
      282 GETTABLEKS                       R16 R16 K15 ["useBoundAction"]
      284 LOADK                            R17 K21 ["MaskEditorContext_SetAllJointWeightsAsync"]
      285 MOVE                             R18 R13
      286 CALL                             R16 2 0
      287 GETUPVAL                         R16 17
      288 GETTABLEKS                       R16 R16 K15 ["useBoundAction"]
      290 LOADK                            R17 K22 ["MaskEditorContext_PickRigAsync"]
      291 MOVE                             R18 R14
      292 CALL                             R16 2 0
      293 GETUPVAL                         R16 0
      294 GETTABLEKS                       R16 R16 K23 ["createElement"]
      296 GETUPVAL                         R17 18
      297 GETTABLEKS                       R17 R17 K24 ["Provider"]
      299 DUPTABLE                         R18 K26 [{"value"}]
      300 SETTABLEKS                       R15 R18 K25 ["value"]
      302 GETTABLEKS                       R19 R0 K27 ["children"]
      304 CALL                             R16 3 -1
      305 RETURN                           R16 -1

PROTO_18:
        0 DUPTABLE                         R0 K8 [{"createMaskAsync", "deleteMaskAsync", "renameMaskAsync", "setRigTypeAsync", "setJointWeightAsync", "setAllJointWeightsAsync", "pickRigAsync", "masks"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["createMaskAsync"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["deleteMaskAsync"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["renameMaskAsync"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["setRigTypeAsync"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["setJointWeightAsync"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["setAllJointWeightsAsync"]
       19 GETUPVAL                         R1 6
       20 SETTABLEKS                       R1 R0 K6 ["pickRigAsync"]
       22 GETUPVAL                         R1 7
       23 SETTABLEKS                       R1 R0 K7 ["masks"]
       25 RETURN                           R0 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useBoundAction"]
        3 LOADK                            R2 K1 ["MaskEditorContext_CreateMaskAsync"]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useBoundAction"]
        8 LOADK                            R3 K2 ["MaskEditorContext_DeleteMaskAsync"]
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K0 ["useBoundAction"]
       13 LOADK                            R4 K3 ["MaskEditorContext_RenameMaskAsync"]
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K0 ["useBoundAction"]
       18 LOADK                            R5 K4 ["MaskEditorContext_SetRigTypeAsync"]
       19 CALL                             R4 1 1
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K0 ["useBoundAction"]
       23 LOADK                            R6 K5 ["MaskEditorContext_SetJointWeightAsync"]
       24 CALL                             R5 1 1
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K0 ["useBoundAction"]
       28 LOADK                            R7 K6 ["MaskEditorContext_SetAllJointWeightsAsync"]
       29 CALL                             R6 1 1
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R7 R7 K0 ["useBoundAction"]
       33 LOADK                            R8 K7 ["MaskEditorContext_PickRigAsync"]
       34 CALL                             R7 1 1
       35 GETUPVAL                         R8 0
       36 GETTABLEKS                       R8 R8 K8 ["useReplicatedStateListener"]
       38 LOADK                            R9 K9 ["MaskEditorContext_Masks"]
       39 NEWTABLE                         R10 0 0
       41 CALL                             R8 2 1
       42 GETUPVAL                         R9 1
       43 GETTABLEKS                       R9 R9 K10 ["useMemo"]
       45 NEWCLOSURE                       R10 P0
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R8
       54 NEWTABLE                         R11 0 8
       56 MOVE                             R12 R1
       57 MOVE                             R13 R2
       58 MOVE                             R14 R3
       59 MOVE                             R15 R4
       60 MOVE                             R16 R5
       61 MOVE                             R17 R6
       62 MOVE                             R18 R7
       63 MOVE                             R19 R8
       64 SETLIST                          R11 R12 8 [1]
       66 CALL                             R9 2 1
       67 GETUPVAL                         R10 1
       68 GETTABLEKS                       R10 R10 K11 ["createElement"]
       70 GETUPVAL                         R11 2
       71 GETTABLEKS                       R11 R11 K12 ["Provider"]
       73 DUPTABLE                         R12 K14 [{"value"}]
       74 SETTABLEKS                       R9 R12 K13 ["value"]
       76 GETTABLEKS                       R13 R0 K15 ["children"]
       78 CALL                             R10 3 -1
       79 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ChangeHistoryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Workspace"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["AnimationEditor"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R2 K11 ["Parent"]
       23 GETTABLEKS                       R4 R4 K12 ["AdaptiveAnimationTools"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R2 K13 ["Contexts"]
       30 GETTABLEKS                       R5 R5 K14 ["GraphDirtyStateContext"]
       32 GETTABLEKS                       R5 R5 K15 ["GraphDirtyUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K10 [require]
       37 GETTABLEKS                       R6 R2 K13 ["Contexts"]
       39 GETTABLEKS                       R6 R6 K16 ["InstanceRegistryContext"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R7 R2 K13 ["Contexts"]
       46 GETTABLEKS                       R7 R7 K17 ["MaskEditorContext"]
       48 GETTABLEKS                       R7 R7 K18 ["MasksConstants"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K10 [require]
       53 GETTABLEKS                       R8 R2 K19 ["Util"]
       55 GETTABLEKS                       R8 R8 K20 ["Networking"]
       57 GETTABLEKS                       R8 R8 K21 ["NetworkUtils"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K10 [require]
       62 GETTABLEKS                       R9 R2 K11 ["Parent"]
       64 GETTABLEKS                       R9 R9 K22 ["React"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K10 [require]
       69 GETTABLEKS                       R10 R2 K11 ["Parent"]
       71 GETTABLEKS                       R10 R10 K23 ["ReactUtils"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K10 [require]
       76 GETIMPORT                        R11 K6 [script]
       78 GETTABLEKS                       R11 R11 K11 ["Parent"]
       80 GETTABLEKS                       R11 R11 K24 ["SelectedGraphContext"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K10 [require]
       85 GETTABLEKS                       R12 R2 K19 ["Util"]
       87 GETTABLEKS                       R12 R12 K25 ["Signals"]
       89 GETTABLEKS                       R12 R12 K26 ["Experimental"]
       91 GETTABLEKS                       R12 R12 K27 ["SignalExperimentalUtils"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K10 [require]
       96 GETTABLEKS                       R13 R2 K11 ["Parent"]
       98 GETTABLEKS                       R13 R13 K25 ["Signals"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K10 [require]
      103 GETTABLEKS                       R14 R2 K19 ["Util"]
      105 GETTABLEKS                       R14 R14 K25 ["Signals"]
      107 GETTABLEKS                       R14 R14 K28 ["SignalsInstanceUtils"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K10 [require]
      112 GETTABLEKS                       R15 R2 K11 ["Parent"]
      114 GETTABLEKS                       R15 R15 K29 ["SignalsReact"]
      116 CALL                             R14 1 1
      117 GETIMPORT                        R15 K10 [require]
      119 GETTABLEKS                       R16 R2 K19 ["Util"]
      121 GETTABLEKS                       R16 R16 K30 ["getDeduplicatedName"]
      123 CALL                             R15 1 1
      124 GETIMPORT                        R16 K10 [require]
      126 GETTABLEKS                       R17 R2 K31 ["Flags"]
      128 GETTABLEKS                       R17 R17 K32 ["getFFlagAnimGraphUI_FixUndoHistory"]
      130 CALL                             R16 1 1
      131 GETIMPORT                        R17 K10 [require]
      133 GETIMPORT                        R18 K6 [script]
      135 GETTABLEKS                       R18 R18 K33 ["observeFlattenedJoints"]
      137 CALL                             R17 1 1
      138 GETIMPORT                        R18 K10 [require]
      140 GETIMPORT                        R19 K6 [script]
      142 GETTABLEKS                       R19 R19 K34 ["observeMaskDatum"]
      144 CALL                             R18 1 1
      145 GETIMPORT                        R19 K10 [require]
      147 GETIMPORT                        R20 K6 [script]
      149 GETTABLEKS                       R20 R20 K35 ["populateHumanoidRigDescriptionValues"]
      151 CALL                             R19 1 1
      152 GETIMPORT                        R20 K10 [require]
      154 GETIMPORT                        R21 K6 [script]
      156 GETTABLEKS                       R21 R21 K36 ["useSharedMaskAttributeSync"]
      158 CALL                             R20 1 1
      159 DUPTABLE                         R21 K39 [{["MASKS"] = "MaskEditorContext_Masks"}]
      160 DUPTABLE                         R22 K54 [{["CREATE_MASK"] = "MaskEditorContext_CreateMaskAsync", ["DELETE_MASK"] = "MaskEditorContext_DeleteMaskAsync", ["RENAME_MASK"] = "MaskEditorContext_RenameMaskAsync", ["SET_RIG_TYPE"] = "MaskEditorContext_SetRigTypeAsync", ["SET_JOINT_WEIGHT"] = "MaskEditorContext_SetJointWeightAsync", ["SET_ALL_JOINT_WEIGHTS"] = "MaskEditorContext_SetAllJointWeightsAsync", ["PICK_RIG_ASYNC"] = "MaskEditorContext_PickRigAsync"}]
      161 DUPTABLE                         R23 K63 [{"createMaskAsync", "deleteMaskAsync", "renameMaskAsync", "setRigTypeAsync", "setJointWeightAsync", "setAllJointWeightsAsync", "pickRigAsync", "masks"}]
      162 GETTABLEKS                       R24 R9 K64 ["createUnimplemented"]
      164 LOADK                            R25 K55 ["createMaskAsync"]
      165 CALL                             R24 1 1
      166 SETTABLEKS                       R24 R23 K55 ["createMaskAsync"]
      168 GETTABLEKS                       R24 R9 K64 ["createUnimplemented"]
      170 LOADK                            R25 K56 ["deleteMaskAsync"]
      171 CALL                             R24 1 1
      172 SETTABLEKS                       R24 R23 K56 ["deleteMaskAsync"]
      174 GETTABLEKS                       R24 R9 K64 ["createUnimplemented"]
      176 LOADK                            R25 K57 ["renameMaskAsync"]
      177 CALL                             R24 1 1
      178 SETTABLEKS                       R24 R23 K57 ["renameMaskAsync"]
      180 GETTABLEKS                       R24 R9 K64 ["createUnimplemented"]
      182 LOADK                            R25 K58 ["setRigTypeAsync"]
      183 CALL                             R24 1 1
      184 SETTABLEKS                       R24 R23 K58 ["setRigTypeAsync"]
      186 GETTABLEKS                       R24 R9 K64 ["createUnimplemented"]
      188 LOADK                            R25 K59 ["setJointWeightAsync"]
      189 CALL                             R24 1 1
      190 SETTABLEKS                       R24 R23 K59 ["setJointWeightAsync"]
      192 GETTABLEKS                       R24 R9 K64 ["createUnimplemented"]
      194 LOADK                            R25 K60 ["setAllJointWeightsAsync"]
      195 CALL                             R24 1 1
      196 SETTABLEKS                       R24 R23 K60 ["setAllJointWeightsAsync"]
      198 GETTABLEKS                       R24 R9 K64 ["createUnimplemented"]
      200 LOADK                            R25 K61 ["pickRigAsync"]
      201 CALL                             R24 1 1
      202 SETTABLEKS                       R24 R23 K61 ["pickRigAsync"]
      204 NEWTABLE                         R24 0 0
      206 SETTABLEKS                       R24 R23 K62 ["masks"]
      208 GETTABLEKS                       R24 R8 K65 ["createContext"]
      210 MOVE                             R25 R23
      211 CALL                             R24 1 1
      212 LOADK                            R25 K17 ["MaskEditorContext"]
      213 SETTABLEKS                       R25 R24 K66 ["displayName"]
      215 DUPCLOSURE                       R25 K67 [PROTO_17]
      216 CAPTURE                          VAL R8
      217 CAPTURE                          VAL R10
      218 CAPTURE                          VAL R5
      219 CAPTURE                          VAL R14
      220 CAPTURE                          VAL R12
      221 CAPTURE                          VAL R13
      222 CAPTURE                          VAL R16
      223 CAPTURE                          VAL R0
      224 CAPTURE                          VAL R15
      225 CAPTURE                          VAL R6
      226 CAPTURE                          VAL R19
      227 CAPTURE                          VAL R4
      228 CAPTURE                          VAL R20
      229 CAPTURE                          VAL R18
      230 CAPTURE                          VAL R11
      231 CAPTURE                          VAL R1
      232 CAPTURE                          VAL R3
      233 CAPTURE                          VAL R7
      234 CAPTURE                          VAL R24
      235 DUPCLOSURE                       R26 K68 [PROTO_19]
      236 CAPTURE                          VAL R7
      237 CAPTURE                          VAL R8
      238 CAPTURE                          VAL R24
      239 DUPTABLE                         R27 K72 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      240 SETTABLEKS                       R24 R27 K69 ["Context"]
      242 SETTABLEKS                       R25 R27 K70 ["EditableDataModelProvider"]
      244 SETTABLEKS                       R26 R27 K71 ["UIDataModelProvider"]
      246 RETURN                           R27 1
