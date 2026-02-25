PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+7]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["createSignal"]
        6 LOADNIL                          R1
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R0 R1 K1 ["observeFirstNamedChildWhichIsA"]
       12 GETUPVAL                         R1 0
       13 LOADK                            R2 K2 ["Folder"]
       14 GETUPVAL                         R5 3
       15 GETTABLEKS                       R4 R5 K4 ["sharedMasksFolderName"]
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
       15 GETUPVAL                         R11 0
       16 GETTABLEKS                       R10 R11 K7 ["orderAttribute"]
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
       11 GETUPVAL                         R0 1
       12 LOADB                            R1 0
       13 CALL                             R0 1 1
       14 JUMPIFNOTEQKNIL                  R0 ; [+15]
       16 GETIMPORT                        R1 K5 [Instance.new]
       18 LOADK                            R2 K6 ["Folder"]
       19 CALL                             R1 1 1
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R3 R4 K8 ["sharedMasksFolderName"]
       23 ORK                              R2 R3 K7 ["SharedMasks"]
       24 SETTABLEKS                       R2 R1 K9 ["Name"]
       26 GETUPVAL                         R2 0
       27 SETTABLEKS                       R2 R1 K10 ["Parent"]
       29 MOVE                             R0 R1
       30 JUMPIFNOTEQKNIL                  R0 ; [+2]
       32 LOADB                            R2 0 +1
       33 LOADB                            R2 1
       34 FASTCALL2K                       ASSERT R2 K11 ; [+4]
       36 LOADK                            R3 K11 ["Luau"]
       37 GETIMPORT                        R1 K2 [assert]
       39 CALL                             R1 2 0
       40 GETIMPORT                        R1 K5 [Instance.new]
       42 LOADK                            R2 K6 ["Folder"]
       43 CALL                             R1 1 1
       44 GETUPVAL                         R2 3
       45 MOVE                             R3 R0
       46 LOADK                            R4 K12 ["Mask"]
       47 CALL                             R2 2 1
       48 SETTABLEKS                       R2 R1 K9 ["Name"]
       50 DUPCLOSURE                       R2 K13 [PROTO_2]
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          VAL R2
       53 GETUPVAL                         R3 5
       54 MOVE                             R4 R1
       55 GETIMPORT                        R5 K17 [Enum.RigLabel.Root]
       57 CALL                             R3 2 0
       58 LOADK                            R5 K18 ["RBX_MaskRigType"]
       59 LOADK                            R6 K19 ["HRD"]
       60 NAMECALL                         R3 R1 K20 ["SetAttribute"]
       62 CALL                             R3 3 0
       63 SETTABLEKS                       R0 R1 K10 ["Parent"]
       65 GETUPVAL                         R3 6
       66 MOVE                             R5 R1
       67 NAMECALL                         R3 R3 K21 ["instanceToId"]
       69 CALL                             R3 2 -1
       70 RETURN                           R3 -1

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
       22 LOADNIL                          R3
       23 SETTABLEKS                       R3 R1 K6 ["Parent"]
       25 JUMPIFEQKNIL                     R2 ; [+8]
       27 GETUPVAL                         R3 2
       28 MOVE                             R5 R2
       29 GETIMPORT                        R6 K10 [Enum.FinishRecordingOperation.Commit]
       31 NAMECALL                         R3 R3 K11 ["FinishRecording"]
       33 CALL                             R3 3 0
       34 RETURN                           R0 0

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
       30 SETTABLEKS                       R1 R3 K5 ["Name"]
       32 RETURN                           R0 0

PROTO_6:
        0 JUMPIFNOTEQKNIL                  R0 ; [+8]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["of"]
        5 NEWTABLE                         R2 0 0
        7 CALL                             R1 1 1
        8 RETURN                           R1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K1 ["observeChildren"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 1
       14 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["switchMap"]
        3 GETUPVAL                         R1 1
        4 DUPCLOSURE                       R2 K1 [PROTO_6]
        5 CAPTURE                          UPVAL U0
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_8:
        0 DUPTABLE                         R1 K2 [{"instance", "mask"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["instance"]
        4 DUPTABLE                         R2 K7 [{"name", "flattenedJoints", "rigType", "rigName"}]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R0
        7 CALL                             R3 1 1
        8 SETTABLEKS                       R3 R2 K3 ["name"]
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 CALL                             R3 1 1
       13 SETTABLEKS                       R3 R2 K4 ["flattenedJoints"]
       15 GETUPVAL                         R3 3
       16 MOVE                             R4 R0
       17 CALL                             R3 1 1
       18 SETTABLEKS                       R3 R2 K5 ["rigType"]
       20 GETUPVAL                         R3 4
       21 MOVE                             R4 R0
       22 CALL                             R3 1 1
       23 SETTABLEKS                       R3 R2 K6 ["rigName"]
       25 SETTABLEKS                       R2 R1 K1 ["mask"]
       27 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["properties"]
        3 GETTABLEKS                       R1 R2 K1 ["observeString"]
        5 MOVE                             R2 R0
        6 LOADK                            R3 K2 ["Name"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 1
        9 MOVE                             R3 R0
       10 GETUPVAL                         R4 2
       11 CALL                             R2 2 1
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K3 ["attributes"]
       15 GETTABLEKS                       R3 R4 K1 ["observeString"]
       17 MOVE                             R4 R0
       18 LOADK                            R5 K4 ["RBX_MaskRigType"]
       19 CALL                             R3 2 1
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R5 R6 K3 ["attributes"]
       23 GETTABLEKS                       R4 R5 K1 ["observeString"]
       25 MOVE                             R5 R0
       26 LOADK                            R6 K5 ["RBX_MaskRigName"]
       27 CALL                             R4 2 1
       28 GETUPVAL                         R6 3
       29 GETTABLEKS                       R5 R6 K6 ["createComputed"]
       31 NEWCLOSURE                       R6 P0
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R4
       37 CALL                             R5 1 -1
       38 RETURN                           R5 -1

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["forEach"]
        3 GETUPVAL                         R1 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CALL                             R0 2 1
       10 GETUPVAL                         R2 5
       11 GETTABLEKS                       R1 R2 K1 ["createComputed"]
       13 NEWCLOSURE                       R2 P1
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U4
       16 CALL                             R1 1 -1
       17 RETURN                           R1 -1

PROTO_12:
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
       17 LOADK                            R5 K4 ["RBX_MaskRigType"]
       18 MOVE                             R6 R1
       19 NAMECALL                         R3 R2 K5 ["SetAttribute"]
       21 CALL                             R3 3 0
       22 JUMPIFNOTEQKS                    R1 K6 ["HRD"] ; [+20]
       24 NAMECALL                         R3 R2 K7 ["GetChildren"]
       26 CALL                             R3 1 3
       27 FORGPREP                         R3
       28 LOADNIL                          R8
       29 SETTABLEKS                       R8 R7 K8 ["Parent"]
       31 FORGLOOP                         R3 2 ; [-4]
       33 GETUPVAL                         R3 2
       34 MOVE                             R4 R2
       35 GETIMPORT                        R5 K12 [Enum.RigLabel.Root]
       37 CALL                             R3 2 0
       38 LOADK                            R5 K13 ["RBX_MaskRigName"]
       39 LOADK                            R6 K14 [""]
       40 NAMECALL                         R3 R2 K5 ["SetAttribute"]
       42 CALL                             R3 3 0
       43 RETURN                           R0 0

PROTO_13:
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
       25 SETTABLEKS                       R1 R2 K7 ["Value"]
       27 RETURN                           R0 0

PROTO_14:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETIMPORT                        R7 K2 [Instance.new]
        6 LOADK                            R8 K3 ["NumberValue"]
        7 CALL                             R7 1 1
        8 GETTABLEKS                       R9 R6 K4 ["joint"]
       10 GETTABLEKS                       R8 R9 K5 ["Name"]
       12 SETTABLEKS                       R8 R7 K5 ["Name"]
       14 LOADN                            R8 1
       15 SETTABLEKS                       R8 R7 K6 ["Value"]
       17 GETUPVAL                         R11 0
       18 GETTABLEKS                       R10 R11 K7 ["orderAttribute"]
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
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R2 R3 K1 ["startPickingInstanceAsync"]
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
       40 JUMPIFEQKNIL                     R3 ; [+34]
       42 MOVE                             R5 R3
       43 LOADK                            R8 K7 ["RBX_MaskRigType"]
       44 LOADK                            R9 K8 ["Custom"]
       45 NAMECALL                         R6 R1 K9 ["SetAttribute"]
       47 CALL                             R6 3 0
       48 LOADK                            R8 K10 ["RBX_MaskRigName"]
       49 GETTABLEKS                       R9 R5 K11 ["Name"]
       51 NAMECALL                         R6 R1 K9 ["SetAttribute"]
       53 CALL                             R6 3 0
       54 NAMECALL                         R6 R1 K12 ["GetChildren"]
       56 CALL                             R6 1 3
       57 FORGPREP                         R6
       58 LOADNIL                          R11
       59 SETTABLEKS                       R11 R10 K13 ["Parent"]
       61 FORGLOOP                         R6 2 ; [-4]
       63 GETUPVAL                         R7 5
       64 GETTABLEKS                       R6 R7 K14 ["buildSkeleton"]
       66 MOVE                             R7 R5
       67 CALL                             R6 1 1
       68 DUPCLOSURE                       R7 K15 [PROTO_14]
       69 CAPTURE                          UPVAL U6
       70 CAPTURE                          VAL R7
       71 MOVE                             R8 R7
       72 MOVE                             R9 R6
       73 MOVE                             R10 R1
       74 CALL                             R8 2 0
       75 JUMPIFEQKNIL                     R4 ; [+8]
       77 GETUPVAL                         R5 4
       78 MOVE                             R7 R4
       79 GETIMPORT                        R8 K19 [Enum.FinishRecordingOperation.Commit]
       81 NAMECALL                         R5 R5 K20 ["FinishRecording"]
       83 CALL                             R5 3 0
       84 RETURN                           R0 0

PROTO_16:
        0 DUPTABLE                         R0 K7 [{"createMaskAsync", "deleteMaskAsync", "renameMaskAsync", "setRigTypeAsync", "setJointWeightAsync", "pickRigAsync", "masks"}]
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
       17 SETTABLEKS                       R1 R0 K5 ["pickRigAsync"]
       19 GETUPVAL                         R1 6
       20 SETTABLEKS                       R1 R0 K6 ["masks"]
       22 RETURN                           R0 1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K0 ["useContext"]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R4 R5 K1 ["Context"]
       13 CALL                             R3 1 1
       14 GETTABLEKS                       R2 R3 K2 ["instanceRegistry"]
       16 GETTABLEKS                       R3 R1 K3 ["selectedGraphInstance"]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R4 R5 K4 ["useMemo"]
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          VAL R3
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          VAL R0
       26 NEWTABLE                         R6 0 2
       28 MOVE                             R7 R3
       29 GETTABLEKS                       R8 R0 K5 ["sharedMasksFolderName"]
       31 SETLIST                          R6 R7 2 [1]
       33 CALL                             R4 2 1
       34 GETUPVAL                         R6 0
       35 GETTABLEKS                       R5 R6 K6 ["useCallback"]
       37 NEWCLOSURE                       R6 P1
       38 CAPTURE                          VAL R4
       39 NEWTABLE                         R7 0 1
       41 MOVE                             R8 R4
       42 SETLIST                          R7 R8 1 [1]
       44 CALL                             R5 2 1
       45 GETUPVAL                         R7 0
       46 GETTABLEKS                       R6 R7 K6 ["useCallback"]
       48 NEWCLOSURE                       R7 P2
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R0
       52 CAPTURE                          UPVAL U5
       53 CAPTURE                          UPVAL U6
       54 CAPTURE                          UPVAL U7
       55 CAPTURE                          VAL R2
       56 NEWTABLE                         R8 0 4
       58 MOVE                             R9 R3
       59 MOVE                             R10 R2
       60 MOVE                             R11 R4
       61 GETTABLEKS                       R12 R0 K5 ["sharedMasksFolderName"]
       63 SETLIST                          R8 R9 4 [1]
       65 CALL                             R6 2 1
       66 GETUPVAL                         R8 0
       67 GETTABLEKS                       R7 R8 K6 ["useCallback"]
       69 NEWCLOSURE                       R8 P3
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R5
       72 CAPTURE                          UPVAL U8
       73 NEWTABLE                         R9 0 2
       75 MOVE                             R10 R2
       76 MOVE                             R11 R5
       77 SETLIST                          R9 R10 2 [1]
       79 CALL                             R7 2 1
       80 GETUPVAL                         R9 0
       81 GETTABLEKS                       R8 R9 K6 ["useCallback"]
       83 NEWCLOSURE                       R9 P4
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R5
       87 NEWTABLE                         R10 0 3
       89 MOVE                             R11 R2
       90 MOVE                             R12 R5
       91 MOVE                             R13 R4
       92 SETLIST                          R10 R11 3 [1]
       94 CALL                             R8 2 1
       95 GETUPVAL                         R10 0
       96 GETTABLEKS                       R9 R10 K4 ["useMemo"]
       98 NEWCLOSURE                       R10 P5
       99 CAPTURE                          UPVAL U4
      100 CAPTURE                          VAL R4
      101 NEWTABLE                         R11 0 1
      103 MOVE                             R12 R4
      104 SETLIST                          R11 R12 1 [1]
      106 CALL                             R9 2 1
      107 GETUPVAL                         R10 9
      108 MOVE                             R11 R9
      109 MOVE                             R12 R2
      110 CALL                             R10 2 0
      111 GETUPVAL                         R11 10
      112 GETTABLEKS                       R10 R11 K7 ["useSignalState"]
      114 GETUPVAL                         R12 0
      115 GETTABLEKS                       R11 R12 K4 ["useMemo"]
      117 NEWCLOSURE                       R12 P6
      118 CAPTURE                          UPVAL U4
      119 CAPTURE                          VAL R9
      120 CAPTURE                          UPVAL U11
      121 CAPTURE                          UPVAL U12
      122 CAPTURE                          VAL R2
      123 CAPTURE                          UPVAL U3
      124 NEWTABLE                         R13 0 2
      126 MOVE                             R14 R9
      127 MOVE                             R15 R2
      128 SETLIST                          R13 R14 2 [1]
      130 CALL                             R11 2 -1
      131 CALL                             R10 -1 1
      132 GETUPVAL                         R12 0
      133 GETTABLEKS                       R11 R12 K6 ["useCallback"]
      135 NEWCLOSURE                       R12 P7
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R5
      138 CAPTURE                          UPVAL U7
      139 NEWTABLE                         R13 0 2
      141 MOVE                             R14 R2
      142 MOVE                             R15 R5
      143 SETLIST                          R13 R14 2 [1]
      145 CALL                             R11 2 1
      146 GETUPVAL                         R13 0
      147 GETTABLEKS                       R12 R13 K6 ["useCallback"]
      149 NEWCLOSURE                       R13 P8
      150 CAPTURE                          VAL R2
      151 NEWTABLE                         R14 0 1
      153 MOVE                             R15 R2
      154 SETLIST                          R14 R15 1 [1]
      156 CALL                             R12 2 1
      157 GETUPVAL                         R14 0
      158 GETTABLEKS                       R13 R14 K6 ["useCallback"]
      160 NEWCLOSURE                       R14 P9
      161 CAPTURE                          VAL R2
      162 CAPTURE                          VAL R5
      163 CAPTURE                          VAL R0
      164 CAPTURE                          UPVAL U13
      165 CAPTURE                          UPVAL U8
      166 CAPTURE                          UPVAL U14
      167 CAPTURE                          UPVAL U6
      168 NEWTABLE                         R15 0 3
      170 GETTABLEKS                       R16 R0 K8 ["startPickingInstanceAsync"]
      172 MOVE                             R17 R2
      173 MOVE                             R18 R5
      174 SETLIST                          R15 R16 3 [1]
      176 CALL                             R13 2 1
      177 GETUPVAL                         R15 0
      178 GETTABLEKS                       R14 R15 K4 ["useMemo"]
      180 NEWCLOSURE                       R15 P10
      181 CAPTURE                          VAL R6
      182 CAPTURE                          VAL R7
      183 CAPTURE                          VAL R8
      184 CAPTURE                          VAL R11
      185 CAPTURE                          VAL R12
      186 CAPTURE                          VAL R13
      187 CAPTURE                          VAL R10
      188 NEWTABLE                         R16 0 7
      190 MOVE                             R17 R6
      191 MOVE                             R18 R7
      192 MOVE                             R19 R8
      193 MOVE                             R20 R11
      194 MOVE                             R21 R12
      195 MOVE                             R22 R13
      196 MOVE                             R23 R10
      197 SETLIST                          R16 R17 7 [1]
      199 CALL                             R14 2 1
      200 GETUPVAL                         R16 15
      201 GETTABLEKS                       R15 R16 K9 ["useReplicatedState"]
      203 GETUPVAL                         R17 16
      204 GETTABLEKS                       R16 R17 K10 ["MASKS"]
      206 MOVE                             R17 R10
      207 CALL                             R15 2 0
      208 GETUPVAL                         R16 15
      209 GETTABLEKS                       R15 R16 K11 ["useBoundAction"]
      211 GETUPVAL                         R17 17
      212 GETTABLEKS                       R16 R17 K12 ["CREATE_MASK"]
      214 MOVE                             R17 R6
      215 CALL                             R15 2 0
      216 GETUPVAL                         R16 15
      217 GETTABLEKS                       R15 R16 K11 ["useBoundAction"]
      219 GETUPVAL                         R17 17
      220 GETTABLEKS                       R16 R17 K13 ["DELETE_MASK"]
      222 MOVE                             R17 R7
      223 CALL                             R15 2 0
      224 GETUPVAL                         R16 15
      225 GETTABLEKS                       R15 R16 K11 ["useBoundAction"]
      227 GETUPVAL                         R17 17
      228 GETTABLEKS                       R16 R17 K14 ["RENAME_MASK"]
      230 MOVE                             R17 R8
      231 CALL                             R15 2 0
      232 GETUPVAL                         R16 15
      233 GETTABLEKS                       R15 R16 K11 ["useBoundAction"]
      235 GETUPVAL                         R17 17
      236 GETTABLEKS                       R16 R17 K15 ["SET_RIG_TYPE"]
      238 MOVE                             R17 R11
      239 CALL                             R15 2 0
      240 GETUPVAL                         R16 15
      241 GETTABLEKS                       R15 R16 K11 ["useBoundAction"]
      243 GETUPVAL                         R17 17
      244 GETTABLEKS                       R16 R17 K16 ["SET_JOINT_WEIGHT"]
      246 MOVE                             R17 R12
      247 CALL                             R15 2 0
      248 GETUPVAL                         R16 15
      249 GETTABLEKS                       R15 R16 K11 ["useBoundAction"]
      251 GETUPVAL                         R17 17
      252 GETTABLEKS                       R16 R17 K17 ["PICK_RIG_ASYNC"]
      254 MOVE                             R17 R13
      255 CALL                             R15 2 0
      256 GETUPVAL                         R16 0
      257 GETTABLEKS                       R15 R16 K18 ["createElement"]
      259 GETUPVAL                         R17 18
      260 GETTABLEKS                       R16 R17 K19 ["Provider"]
      262 DUPTABLE                         R17 K21 [{"value"}]
      263 SETTABLEKS                       R14 R17 K20 ["value"]
      265 GETTABLEKS                       R18 R0 K22 ["children"]
      267 CALL                             R15 3 -1
      268 RETURN                           R15 -1

PROTO_18:
        0 DUPTABLE                         R0 K7 [{"createMaskAsync", "deleteMaskAsync", "renameMaskAsync", "setRigTypeAsync", "setJointWeightAsync", "pickRigAsync", "masks"}]
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
       17 SETTABLEKS                       R1 R0 K5 ["pickRigAsync"]
       19 GETUPVAL                         R1 6
       20 SETTABLEKS                       R1 R0 K6 ["masks"]
       22 RETURN                           R0 1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useBoundAction"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["CREATE_MASK"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["useBoundAction"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K2 ["DELETE_MASK"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K0 ["useBoundAction"]
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R4 R5 K3 ["RENAME_MASK"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R4 R5 K0 ["useBoundAction"]
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R5 R6 K4 ["SET_RIG_TYPE"]
       27 CALL                             R4 1 1
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R5 R6 K0 ["useBoundAction"]
       31 GETUPVAL                         R7 1
       32 GETTABLEKS                       R6 R7 K5 ["SET_JOINT_WEIGHT"]
       34 CALL                             R5 1 1
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R6 R7 K0 ["useBoundAction"]
       38 GETUPVAL                         R8 1
       39 GETTABLEKS                       R7 R8 K6 ["PICK_RIG_ASYNC"]
       41 CALL                             R6 1 1
       42 GETUPVAL                         R8 0
       43 GETTABLEKS                       R7 R8 K7 ["useReplicatedStateListener"]
       45 GETUPVAL                         R9 2
       46 GETTABLEKS                       R8 R9 K8 ["MASKS"]
       48 NEWTABLE                         R9 0 0
       50 CALL                             R7 2 1
       51 GETUPVAL                         R9 3
       52 GETTABLEKS                       R8 R9 K9 ["useMemo"]
       54 NEWCLOSURE                       R9 P0
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R7
       62 NEWTABLE                         R10 0 5
       64 MOVE                             R11 R1
       65 MOVE                             R12 R2
       66 MOVE                             R13 R3
       67 MOVE                             R14 R6
       68 MOVE                             R15 R7
       69 SETLIST                          R10 R11 5 [1]
       71 CALL                             R8 2 1
       72 GETUPVAL                         R10 3
       73 GETTABLEKS                       R9 R10 K10 ["createElement"]
       75 GETUPVAL                         R11 4
       76 GETTABLEKS                       R10 R11 K11 ["Provider"]
       78 DUPTABLE                         R11 K13 [{"value"}]
       79 SETTABLEKS                       R8 R11 K12 ["value"]
       81 GETTABLEKS                       R12 R0 K14 ["children"]
       83 CALL                             R9 3 -1
       84 RETURN                           R9 -1

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
       21 GETTABLEKS                       R5 R2 K11 ["Parent"]
       23 GETTABLEKS                       R4 R5 K12 ["AdaptiveAnimationTools"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R6 R2 K13 ["Contexts"]
       30 GETTABLEKS                       R5 R6 K14 ["InstanceRegistryContext"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R8 R2 K13 ["Contexts"]
       37 GETTABLEKS                       R7 R8 K15 ["MaskEditorContext"]
       39 GETTABLEKS                       R6 R7 K16 ["MasksConstants"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R8 R2 K13 ["Contexts"]
       46 GETTABLEKS                       R7 R8 K17 ["NativeGraphContext"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K10 [require]
       51 GETTABLEKS                       R10 R2 K18 ["Util"]
       53 GETTABLEKS                       R9 R10 K19 ["Networking"]
       55 GETTABLEKS                       R8 R9 K20 ["NetworkUtils"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K10 [require]
       60 GETTABLEKS                       R10 R2 K11 ["Parent"]
       62 GETTABLEKS                       R9 R10 K21 ["React"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K10 [require]
       67 GETTABLEKS                       R11 R2 K11 ["Parent"]
       69 GETTABLEKS                       R10 R11 K22 ["ReactUtils"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K10 [require]
       74 GETTABLEKS                       R12 R2 K11 ["Parent"]
       76 GETTABLEKS                       R11 R12 K23 ["Signals"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K10 [require]
       81 GETTABLEKS                       R14 R2 K18 ["Util"]
       83 GETTABLEKS                       R13 R14 K23 ["Signals"]
       85 GETTABLEKS                       R12 R13 K24 ["SignalsInstanceUtils"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K10 [require]
       90 GETTABLEKS                       R14 R2 K11 ["Parent"]
       92 GETTABLEKS                       R13 R14 K25 ["SignalsReact"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K10 [require]
       97 GETTABLEKS                       R16 R2 K18 ["Util"]
       99 GETTABLEKS                       R15 R16 K23 ["Signals"]
      101 GETTABLEKS                       R14 R15 K26 ["TypedInstanceSignals"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K10 [require]
      106 GETTABLEKS                       R16 R2 K18 ["Util"]
      108 GETTABLEKS                       R15 R16 K27 ["getDeduplicatedName"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K10 [require]
      113 GETIMPORT                        R17 K6 [script]
      115 GETTABLEKS                       R16 R17 K28 ["observeFlattenedJoints"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K10 [require]
      120 GETIMPORT                        R18 K6 [script]
      122 GETTABLEKS                       R17 R18 K29 ["populateHumanoidRigDescriptionValues"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K10 [require]
      127 GETIMPORT                        R19 K6 [script]
      129 GETTABLEKS                       R18 R19 K30 ["useSharedMaskAttributeSync"]
      131 CALL                             R17 1 1
      132 DUPTABLE                         R18 K32 [{"MASKS"}]
      133 LOADK                            R19 K33 ["MaskEditorContext_Masks"]
      134 SETTABLEKS                       R19 R18 K31 ["MASKS"]
      136 DUPTABLE                         R19 K40 [{"CREATE_MASK", "DELETE_MASK", "RENAME_MASK", "SET_RIG_TYPE", "SET_JOINT_WEIGHT", "PICK_RIG_ASYNC"}]
      137 LOADK                            R20 K41 ["MaskEditorContext_CreateMaskAsync"]
      138 SETTABLEKS                       R20 R19 K34 ["CREATE_MASK"]
      140 LOADK                            R20 K42 ["MaskEditorContext_DeleteMaskAsync"]
      141 SETTABLEKS                       R20 R19 K35 ["DELETE_MASK"]
      143 LOADK                            R20 K43 ["MaskEditorContext_RenameMaskAsync"]
      144 SETTABLEKS                       R20 R19 K36 ["RENAME_MASK"]
      146 LOADK                            R20 K44 ["MaskEditorContext_SetRigTypeAsync"]
      147 SETTABLEKS                       R20 R19 K37 ["SET_RIG_TYPE"]
      149 LOADK                            R20 K45 ["MaskEditorContext_SetJointWeightAsync"]
      150 SETTABLEKS                       R20 R19 K38 ["SET_JOINT_WEIGHT"]
      152 LOADK                            R20 K46 ["MaskEditorContext_PickRigAsync"]
      153 SETTABLEKS                       R20 R19 K39 ["PICK_RIG_ASYNC"]
      155 DUPTABLE                         R20 K54 [{"createMaskAsync", "deleteMaskAsync", "renameMaskAsync", "setRigTypeAsync", "setJointWeightAsync", "pickRigAsync", "masks"}]
      156 GETTABLEKS                       R21 R9 K55 ["createUnimplemented"]
      158 LOADK                            R22 K47 ["createMaskAsync"]
      159 CALL                             R21 1 1
      160 SETTABLEKS                       R21 R20 K47 ["createMaskAsync"]
      162 GETTABLEKS                       R21 R9 K55 ["createUnimplemented"]
      164 LOADK                            R22 K48 ["deleteMaskAsync"]
      165 CALL                             R21 1 1
      166 SETTABLEKS                       R21 R20 K48 ["deleteMaskAsync"]
      168 GETTABLEKS                       R21 R9 K55 ["createUnimplemented"]
      170 LOADK                            R22 K49 ["renameMaskAsync"]
      171 CALL                             R21 1 1
      172 SETTABLEKS                       R21 R20 K49 ["renameMaskAsync"]
      174 GETTABLEKS                       R21 R9 K55 ["createUnimplemented"]
      176 LOADK                            R22 K50 ["setRigTypeAsync"]
      177 CALL                             R21 1 1
      178 SETTABLEKS                       R21 R20 K50 ["setRigTypeAsync"]
      180 GETTABLEKS                       R21 R9 K55 ["createUnimplemented"]
      182 LOADK                            R22 K56 ["setJoinWeightAsync"]
      183 CALL                             R21 1 1
      184 SETTABLEKS                       R21 R20 K51 ["setJointWeightAsync"]
      186 GETTABLEKS                       R21 R9 K55 ["createUnimplemented"]
      188 LOADK                            R22 K52 ["pickRigAsync"]
      189 CALL                             R21 1 1
      190 SETTABLEKS                       R21 R20 K52 ["pickRigAsync"]
      192 NEWTABLE                         R21 0 0
      194 SETTABLEKS                       R21 R20 K53 ["masks"]
      196 GETTABLEKS                       R21 R8 K57 ["createContext"]
      198 MOVE                             R22 R20
      199 CALL                             R21 1 1
      200 LOADK                            R22 K15 ["MaskEditorContext"]
      201 SETTABLEKS                       R22 R21 K58 ["displayName"]
      203 DUPCLOSURE                       R22 K59 [PROTO_17]
      204 CAPTURE                          VAL R8
      205 CAPTURE                          VAL R6
      206 CAPTURE                          VAL R4
      207 CAPTURE                          VAL R10
      208 CAPTURE                          VAL R11
      209 CAPTURE                          VAL R14
      210 CAPTURE                          VAL R5
      211 CAPTURE                          VAL R16
      212 CAPTURE                          VAL R0
      213 CAPTURE                          VAL R17
      214 CAPTURE                          VAL R12
      215 CAPTURE                          VAL R13
      216 CAPTURE                          VAL R15
      217 CAPTURE                          VAL R1
      218 CAPTURE                          VAL R3
      219 CAPTURE                          VAL R7
      220 CAPTURE                          VAL R18
      221 CAPTURE                          VAL R19
      222 CAPTURE                          VAL R21
      223 DUPCLOSURE                       R23 K60 [PROTO_19]
      224 CAPTURE                          VAL R7
      225 CAPTURE                          VAL R19
      226 CAPTURE                          VAL R18
      227 CAPTURE                          VAL R8
      228 CAPTURE                          VAL R21
      229 DUPTABLE                         R24 K64 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      230 SETTABLEKS                       R21 R24 K61 ["Context"]
      232 SETTABLEKS                       R22 R24 K62 ["EditableDataModelProvider"]
      234 SETTABLEKS                       R23 R24 K63 ["UIDataModelProvider"]
      236 RETURN                           R24 1
