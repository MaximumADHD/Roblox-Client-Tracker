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
       11 GETUPVAL                         R0 1
       12 LOADB                            R1 0
       13 CALL                             R0 1 1
       14 JUMPIFNOTEQKNIL                  R0 ; [+15]
       16 GETIMPORT                        R1 K5 [Instance.new]
       18 LOADK                            R2 K6 ["Folder"]
       19 CALL                             R1 1 1
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R3 R3 K8 ["sharedMasksFolderName"]
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
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K4 ["attributeMaskRigType"]
       20 MOVE                             R6 R1
       21 NAMECALL                         R3 R2 K5 ["SetAttribute"]
       23 CALL                             R3 3 0
       24 JUMPIFNOTEQKS                    R1 K6 ["HRD"] ; [+22]
       26 NAMECALL                         R3 R2 K7 ["GetChildren"]
       28 CALL                             R3 1 3
       29 FORGPREP                         R3
       30 LOADNIL                          R8
       31 SETTABLEKS                       R8 R7 K8 ["Parent"]
       33 FORGLOOP                         R3 2 ; [-4]
       35 GETUPVAL                         R3 3
       36 MOVE                             R4 R2
       37 GETIMPORT                        R5 K12 [Enum.RigLabel.Root]
       39 CALL                             R3 2 0
       40 GETUPVAL                         R5 2
       41 GETTABLEKS                       R5 R5 K13 ["attributeMaskRigName"]
       43 LOADK                            R6 K14 [""]
       44 NAMECALL                         R3 R2 K5 ["SetAttribute"]
       46 CALL                             R3 3 0
       47 RETURN                           R0 0

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
       25 SETTABLEKS                       R1 R2 K7 ["Value"]
       27 RETURN                           R0 0

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
       12 NAMECALL                         R3 R2 K1 ["GetDescendants"]
       14 CALL                             R3 1 3
       15 FORGPREP                         R3
       16 LOADK                            R10 K2 ["NumberValue"]
       17 NAMECALL                         R8 R7 K3 ["IsA"]
       19 CALL                             R8 2 1
       20 JUMPIFNOT                        R8 ; [+2]
       21 SETTABLEKS                       R1 R7 K4 ["Value"]
       23 FORGLOOP                         R3 2 ; [-8]
       25 RETURN                           R0 0

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
       79 JUMPIFEQKNIL                     R4 ; [+8]
       81 GETUPVAL                         R5 4
       82 MOVE                             R7 R4
       83 GETIMPORT                        R8 K19 [Enum.FinishRecordingOperation.Commit]
       85 NAMECALL                         R5 R5 K20 ["FinishRecording"]
       87 CALL                             R5 3 0
       88 RETURN                           R0 0

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
        7 GETUPVAL                         R3 2
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+8]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["useContext"]
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R3 R3 K1 ["Context"]
       16 CALL                             R2 1 1
       17 JUMP                             ; [+1]
       18 LOADNIL                          R2
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K0 ["useContext"]
       22 GETUPVAL                         R4 4
       23 GETTABLEKS                       R4 R4 K1 ["Context"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R3 R3 K2 ["instanceRegistry"]
       28 GETUPVAL                         R5 2
       29 CALL                             R5 0 1
       30 JUMPIFNOT                        R5 ; [+7]
       31 GETUPVAL                         R4 5
       32 GETTABLEKS                       R4 R4 K3 ["useSignalState"]
       34 GETTABLEKS                       R5 R2 K4 ["observeSelectedGraphInstance"]
       36 CALL                             R4 1 1
       37 JUMP                             ; [+6]
       38 GETUPVAL                         R4 5
       39 GETTABLEKS                       R4 R4 K3 ["useSignalState"]
       41 GETTABLEKS                       R5 R1 K5 ["observeSelectedGraphInstance_DEPRECATED"]
       43 CALL                             R4 1 1
       44 GETUPVAL                         R5 0
       45 GETTABLEKS                       R5 R5 K6 ["useMemo"]
       47 NEWCLOSURE                       R6 P0
       48 CAPTURE                          VAL R4
       49 CAPTURE                          UPVAL U6
       50 CAPTURE                          UPVAL U7
       51 CAPTURE                          VAL R0
       52 NEWTABLE                         R7 0 2
       54 MOVE                             R8 R4
       55 GETTABLEKS                       R9 R0 K7 ["sharedMasksFolderName"]
       57 SETLIST                          R7 R8 2 [1]
       59 CALL                             R5 2 1
       60 GETUPVAL                         R6 0
       61 GETTABLEKS                       R6 R6 K8 ["useCallback"]
       63 NEWCLOSURE                       R7 P1
       64 CAPTURE                          VAL R5
       65 NEWTABLE                         R8 0 1
       67 MOVE                             R9 R5
       68 SETLIST                          R8 R9 1 [1]
       70 CALL                             R6 2 1
       71 GETUPVAL                         R7 0
       72 GETTABLEKS                       R7 R7 K8 ["useCallback"]
       74 NEWCLOSURE                       R8 P2
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R0
       78 CAPTURE                          UPVAL U8
       79 CAPTURE                          UPVAL U9
       80 CAPTURE                          UPVAL U10
       81 CAPTURE                          VAL R3
       82 NEWTABLE                         R9 0 4
       84 MOVE                             R10 R4
       85 MOVE                             R11 R3
       86 MOVE                             R12 R5
       87 GETTABLEKS                       R13 R0 K7 ["sharedMasksFolderName"]
       89 SETLIST                          R9 R10 4 [1]
       91 CALL                             R7 2 1
       92 GETUPVAL                         R8 0
       93 GETTABLEKS                       R8 R8 K8 ["useCallback"]
       95 NEWCLOSURE                       R9 P3
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R6
       98 CAPTURE                          UPVAL U11
       99 NEWTABLE                         R10 0 2
      101 MOVE                             R11 R3
      102 MOVE                             R12 R6
      103 SETLIST                          R10 R11 2 [1]
      105 CALL                             R8 2 1
      106 GETUPVAL                         R9 0
      107 GETTABLEKS                       R9 R9 K8 ["useCallback"]
      109 NEWCLOSURE                       R10 P4
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R6
      113 NEWTABLE                         R11 0 3
      115 MOVE                             R12 R3
      116 MOVE                             R13 R6
      117 MOVE                             R14 R5
      118 SETLIST                          R11 R12 3 [1]
      120 CALL                             R9 2 1
      121 GETUPVAL                         R10 0
      122 GETTABLEKS                       R10 R10 K6 ["useMemo"]
      124 NEWCLOSURE                       R11 P5
      125 CAPTURE                          UPVAL U7
      126 CAPTURE                          VAL R5
      127 NEWTABLE                         R12 0 1
      129 MOVE                             R13 R5
      130 SETLIST                          R12 R13 1 [1]
      132 CALL                             R10 2 1
      133 GETIMPORT                        R11 K10 [game]
      135 LOADK                            R13 K11 ["AnimGraphMaskFixEnabled"]
      136 NAMECALL                         R11 R11 K12 ["GetEngineFeature"]
      138 CALL                             R11 2 1
      139 JUMPIF                           R11 ; [+4]
      140 GETUPVAL                         R11 12
      141 MOVE                             R12 R10
      142 MOVE                             R13 R3
      143 CALL                             R11 2 0
      144 GETUPVAL                         R11 5
      145 GETTABLEKS                       R11 R11 K3 ["useSignalState"]
      147 GETUPVAL                         R12 0
      148 GETTABLEKS                       R12 R12 K6 ["useMemo"]
      150 NEWCLOSURE                       R13 P6
      151 CAPTURE                          UPVAL U7
      152 CAPTURE                          VAL R10
      153 CAPTURE                          UPVAL U13
      154 CAPTURE                          VAL R3
      155 CAPTURE                          UPVAL U14
      156 NEWTABLE                         R14 0 2
      158 MOVE                             R15 R10
      159 MOVE                             R16 R3
      160 SETLIST                          R14 R15 2 [1]
      162 CALL                             R12 2 -1
      163 CALL                             R11 -1 1
      164 GETUPVAL                         R12 0
      165 GETTABLEKS                       R12 R12 K8 ["useCallback"]
      167 NEWCLOSURE                       R13 P7
      168 CAPTURE                          VAL R3
      169 CAPTURE                          VAL R6
      170 CAPTURE                          UPVAL U9
      171 CAPTURE                          UPVAL U10
      172 NEWTABLE                         R14 0 2
      174 MOVE                             R15 R3
      175 MOVE                             R16 R6
      176 SETLIST                          R14 R15 2 [1]
      178 CALL                             R12 2 1
      179 GETUPVAL                         R13 0
      180 GETTABLEKS                       R13 R13 K8 ["useCallback"]
      182 NEWCLOSURE                       R14 P8
      183 CAPTURE                          VAL R3
      184 NEWTABLE                         R15 0 1
      186 MOVE                             R16 R3
      187 SETLIST                          R15 R16 1 [1]
      189 CALL                             R13 2 1
      190 GETUPVAL                         R14 0
      191 GETTABLEKS                       R14 R14 K8 ["useCallback"]
      193 NEWCLOSURE                       R15 P9
      194 CAPTURE                          VAL R3
      195 CAPTURE                          VAL R6
      196 NEWTABLE                         R16 0 2
      198 MOVE                             R17 R3
      199 MOVE                             R18 R6
      200 SETLIST                          R16 R17 2 [1]
      202 CALL                             R14 2 1
      203 GETUPVAL                         R15 0
      204 GETTABLEKS                       R15 R15 K8 ["useCallback"]
      206 NEWCLOSURE                       R16 P10
      207 CAPTURE                          VAL R3
      208 CAPTURE                          VAL R6
      209 CAPTURE                          VAL R0
      210 CAPTURE                          UPVAL U15
      211 CAPTURE                          UPVAL U11
      212 CAPTURE                          UPVAL U9
      213 CAPTURE                          UPVAL U16
      214 NEWTABLE                         R17 0 3
      216 GETTABLEKS                       R18 R0 K13 ["startPickingInstanceAsync"]
      218 MOVE                             R19 R3
      219 MOVE                             R20 R6
      220 SETLIST                          R17 R18 3 [1]
      222 CALL                             R15 2 1
      223 GETUPVAL                         R16 0
      224 GETTABLEKS                       R16 R16 K6 ["useMemo"]
      226 NEWCLOSURE                       R17 P11
      227 CAPTURE                          VAL R7
      228 CAPTURE                          VAL R8
      229 CAPTURE                          VAL R9
      230 CAPTURE                          VAL R12
      231 CAPTURE                          VAL R13
      232 CAPTURE                          VAL R14
      233 CAPTURE                          VAL R15
      234 CAPTURE                          VAL R11
      235 NEWTABLE                         R18 0 8
      237 MOVE                             R19 R7
      238 MOVE                             R20 R8
      239 MOVE                             R21 R9
      240 MOVE                             R22 R12
      241 MOVE                             R23 R13
      242 MOVE                             R24 R14
      243 MOVE                             R25 R15
      244 MOVE                             R26 R11
      245 SETLIST                          R18 R19 8 [1]
      247 CALL                             R16 2 1
      248 GETUPVAL                         R17 17
      249 GETTABLEKS                       R17 R17 K14 ["useReplicatedState"]
      251 GETUPVAL                         R18 18
      252 GETTABLEKS                       R18 R18 K15 ["MASKS"]
      254 MOVE                             R19 R11
      255 CALL                             R17 2 0
      256 GETUPVAL                         R17 17
      257 GETTABLEKS                       R17 R17 K16 ["useBoundAction"]
      259 GETUPVAL                         R18 19
      260 GETTABLEKS                       R18 R18 K17 ["CREATE_MASK"]
      262 MOVE                             R19 R7
      263 CALL                             R17 2 0
      264 GETUPVAL                         R17 17
      265 GETTABLEKS                       R17 R17 K16 ["useBoundAction"]
      267 GETUPVAL                         R18 19
      268 GETTABLEKS                       R18 R18 K18 ["DELETE_MASK"]
      270 MOVE                             R19 R8
      271 CALL                             R17 2 0
      272 GETUPVAL                         R17 17
      273 GETTABLEKS                       R17 R17 K16 ["useBoundAction"]
      275 GETUPVAL                         R18 19
      276 GETTABLEKS                       R18 R18 K19 ["RENAME_MASK"]
      278 MOVE                             R19 R9
      279 CALL                             R17 2 0
      280 GETUPVAL                         R17 17
      281 GETTABLEKS                       R17 R17 K16 ["useBoundAction"]
      283 GETUPVAL                         R18 19
      284 GETTABLEKS                       R18 R18 K20 ["SET_RIG_TYPE"]
      286 MOVE                             R19 R12
      287 CALL                             R17 2 0
      288 GETUPVAL                         R17 17
      289 GETTABLEKS                       R17 R17 K16 ["useBoundAction"]
      291 GETUPVAL                         R18 19
      292 GETTABLEKS                       R18 R18 K21 ["SET_JOINT_WEIGHT"]
      294 MOVE                             R19 R13
      295 CALL                             R17 2 0
      296 GETUPVAL                         R17 17
      297 GETTABLEKS                       R17 R17 K16 ["useBoundAction"]
      299 GETUPVAL                         R18 19
      300 GETTABLEKS                       R18 R18 K22 ["SET_ALL_JOINT_WEIGHTS"]
      302 MOVE                             R19 R14
      303 CALL                             R17 2 0
      304 GETUPVAL                         R17 17
      305 GETTABLEKS                       R17 R17 K16 ["useBoundAction"]
      307 GETUPVAL                         R18 19
      308 GETTABLEKS                       R18 R18 K23 ["PICK_RIG_ASYNC"]
      310 MOVE                             R19 R15
      311 CALL                             R17 2 0
      312 GETUPVAL                         R17 0
      313 GETTABLEKS                       R17 R17 K24 ["createElement"]
      315 GETUPVAL                         R18 20
      316 GETTABLEKS                       R18 R18 K25 ["Provider"]
      318 DUPTABLE                         R19 K27 [{"value"}]
      319 SETTABLEKS                       R16 R19 K26 ["value"]
      321 GETTABLEKS                       R20 R0 K28 ["children"]
      323 CALL                             R17 3 -1
      324 RETURN                           R17 -1

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
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["CREATE_MASK"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useBoundAction"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K2 ["DELETE_MASK"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K0 ["useBoundAction"]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K3 ["RENAME_MASK"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K0 ["useBoundAction"]
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R5 R5 K4 ["SET_RIG_TYPE"]
       27 CALL                             R4 1 1
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K0 ["useBoundAction"]
       31 GETUPVAL                         R6 1
       32 GETTABLEKS                       R6 R6 K5 ["SET_JOINT_WEIGHT"]
       34 CALL                             R5 1 1
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R6 R6 K0 ["useBoundAction"]
       38 GETUPVAL                         R7 1
       39 GETTABLEKS                       R7 R7 K6 ["SET_ALL_JOINT_WEIGHTS"]
       41 CALL                             R6 1 1
       42 GETUPVAL                         R7 0
       43 GETTABLEKS                       R7 R7 K0 ["useBoundAction"]
       45 GETUPVAL                         R8 1
       46 GETTABLEKS                       R8 R8 K7 ["PICK_RIG_ASYNC"]
       48 CALL                             R7 1 1
       49 GETUPVAL                         R8 0
       50 GETTABLEKS                       R8 R8 K8 ["useReplicatedStateListener"]
       52 GETUPVAL                         R9 2
       53 GETTABLEKS                       R9 R9 K9 ["MASKS"]
       55 NEWTABLE                         R10 0 0
       57 CALL                             R8 2 1
       58 GETUPVAL                         R9 3
       59 GETTABLEKS                       R9 R9 K10 ["useMemo"]
       61 NEWCLOSURE                       R10 P0
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R8
       70 NEWTABLE                         R11 0 8
       72 MOVE                             R12 R1
       73 MOVE                             R13 R2
       74 MOVE                             R14 R3
       75 MOVE                             R15 R4
       76 MOVE                             R16 R5
       77 MOVE                             R17 R6
       78 MOVE                             R18 R7
       79 MOVE                             R19 R8
       80 SETLIST                          R11 R12 8 [1]
       82 CALL                             R9 2 1
       83 GETUPVAL                         R10 3
       84 GETTABLEKS                       R10 R10 K11 ["createElement"]
       86 GETUPVAL                         R11 4
       87 GETTABLEKS                       R11 R11 K12 ["Provider"]
       89 DUPTABLE                         R12 K14 [{"value"}]
       90 SETTABLEKS                       R9 R12 K13 ["value"]
       92 GETTABLEKS                       R13 R0 K15 ["children"]
       94 CALL                             R10 3 -1
       95 RETURN                           R10 -1

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
       30 GETTABLEKS                       R5 R5 K14 ["InstanceRegistryContext"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R6 R2 K13 ["Contexts"]
       37 GETTABLEKS                       R6 R6 K15 ["MaskEditorContext"]
       39 GETTABLEKS                       R6 R6 K16 ["MasksConstants"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R7 R2 K13 ["Contexts"]
       46 GETTABLEKS                       R7 R7 K17 ["NativeGraphContext"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K10 [require]
       51 GETTABLEKS                       R8 R2 K18 ["Util"]
       53 GETTABLEKS                       R8 R8 K19 ["Networking"]
       55 GETTABLEKS                       R8 R8 K20 ["NetworkUtils"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K10 [require]
       60 GETTABLEKS                       R9 R2 K11 ["Parent"]
       62 GETTABLEKS                       R9 R9 K21 ["React"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K10 [require]
       67 GETTABLEKS                       R10 R2 K11 ["Parent"]
       69 GETTABLEKS                       R10 R10 K22 ["ReactUtils"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K10 [require]
       74 GETIMPORT                        R11 K6 [script]
       76 GETTABLEKS                       R11 R11 K11 ["Parent"]
       78 GETTABLEKS                       R11 R11 K23 ["SelectedGraphContext"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K10 [require]
       83 GETTABLEKS                       R12 R2 K18 ["Util"]
       85 GETTABLEKS                       R12 R12 K24 ["Signals"]
       87 GETTABLEKS                       R12 R12 K25 ["Experimental"]
       89 GETTABLEKS                       R12 R12 K26 ["SignalExperimentalUtils"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K10 [require]
       94 GETTABLEKS                       R13 R2 K11 ["Parent"]
       96 GETTABLEKS                       R13 R13 K24 ["Signals"]
       98 CALL                             R12 1 1
       99 GETIMPORT                        R13 K10 [require]
      101 GETTABLEKS                       R14 R2 K18 ["Util"]
      103 GETTABLEKS                       R14 R14 K24 ["Signals"]
      105 GETTABLEKS                       R14 R14 K27 ["SignalsInstanceUtils"]
      107 CALL                             R13 1 1
      108 GETIMPORT                        R14 K10 [require]
      110 GETTABLEKS                       R15 R2 K11 ["Parent"]
      112 GETTABLEKS                       R15 R15 K28 ["SignalsReact"]
      114 CALL                             R14 1 1
      115 GETIMPORT                        R15 K10 [require]
      117 GETTABLEKS                       R16 R2 K18 ["Util"]
      119 GETTABLEKS                       R16 R16 K29 ["getDeduplicatedName"]
      121 CALL                             R15 1 1
      122 GETIMPORT                        R16 K10 [require]
      124 GETTABLEKS                       R17 R2 K30 ["Flags"]
      126 GETTABLEKS                       R17 R17 K31 ["getFFlagAnimGraphUI_RunTimeDebug"]
      128 CALL                             R16 1 1
      129 GETIMPORT                        R17 K10 [require]
      131 GETIMPORT                        R18 K6 [script]
      133 GETTABLEKS                       R18 R18 K32 ["observeFlattenedJoints"]
      135 CALL                             R17 1 1
      136 GETIMPORT                        R18 K10 [require]
      138 GETIMPORT                        R19 K6 [script]
      140 GETTABLEKS                       R19 R19 K33 ["observeMaskDatum"]
      142 CALL                             R18 1 1
      143 GETIMPORT                        R19 K10 [require]
      145 GETIMPORT                        R20 K6 [script]
      147 GETTABLEKS                       R20 R20 K34 ["populateHumanoidRigDescriptionValues"]
      149 CALL                             R19 1 1
      150 GETIMPORT                        R20 K10 [require]
      152 GETIMPORT                        R21 K6 [script]
      154 GETTABLEKS                       R21 R21 K35 ["useSharedMaskAttributeSync"]
      156 CALL                             R20 1 1
      157 DUPTABLE                         R21 K37 [{"MASKS"}]
      158 LOADK                            R22 K38 ["MaskEditorContext_Masks"]
      159 SETTABLEKS                       R22 R21 K36 ["MASKS"]
      161 DUPTABLE                         R22 K46 [{"CREATE_MASK", "DELETE_MASK", "RENAME_MASK", "SET_RIG_TYPE", "SET_JOINT_WEIGHT", "SET_ALL_JOINT_WEIGHTS", "PICK_RIG_ASYNC"}]
      162 LOADK                            R23 K47 ["MaskEditorContext_CreateMaskAsync"]
      163 SETTABLEKS                       R23 R22 K39 ["CREATE_MASK"]
      165 LOADK                            R23 K48 ["MaskEditorContext_DeleteMaskAsync"]
      166 SETTABLEKS                       R23 R22 K40 ["DELETE_MASK"]
      168 LOADK                            R23 K49 ["MaskEditorContext_RenameMaskAsync"]
      169 SETTABLEKS                       R23 R22 K41 ["RENAME_MASK"]
      171 LOADK                            R23 K50 ["MaskEditorContext_SetRigTypeAsync"]
      172 SETTABLEKS                       R23 R22 K42 ["SET_RIG_TYPE"]
      174 LOADK                            R23 K51 ["MaskEditorContext_SetJointWeightAsync"]
      175 SETTABLEKS                       R23 R22 K43 ["SET_JOINT_WEIGHT"]
      177 LOADK                            R23 K52 ["MaskEditorContext_SetAllJointWeightsAsync"]
      178 SETTABLEKS                       R23 R22 K44 ["SET_ALL_JOINT_WEIGHTS"]
      180 LOADK                            R23 K53 ["MaskEditorContext_PickRigAsync"]
      181 SETTABLEKS                       R23 R22 K45 ["PICK_RIG_ASYNC"]
      183 DUPTABLE                         R23 K62 [{"createMaskAsync", "deleteMaskAsync", "renameMaskAsync", "setRigTypeAsync", "setJointWeightAsync", "setAllJointWeightsAsync", "pickRigAsync", "masks"}]
      184 GETTABLEKS                       R24 R9 K63 ["createUnimplemented"]
      186 LOADK                            R25 K54 ["createMaskAsync"]
      187 CALL                             R24 1 1
      188 SETTABLEKS                       R24 R23 K54 ["createMaskAsync"]
      190 GETTABLEKS                       R24 R9 K63 ["createUnimplemented"]
      192 LOADK                            R25 K55 ["deleteMaskAsync"]
      193 CALL                             R24 1 1
      194 SETTABLEKS                       R24 R23 K55 ["deleteMaskAsync"]
      196 GETTABLEKS                       R24 R9 K63 ["createUnimplemented"]
      198 LOADK                            R25 K56 ["renameMaskAsync"]
      199 CALL                             R24 1 1
      200 SETTABLEKS                       R24 R23 K56 ["renameMaskAsync"]
      202 GETTABLEKS                       R24 R9 K63 ["createUnimplemented"]
      204 LOADK                            R25 K57 ["setRigTypeAsync"]
      205 CALL                             R24 1 1
      206 SETTABLEKS                       R24 R23 K57 ["setRigTypeAsync"]
      208 GETTABLEKS                       R24 R9 K63 ["createUnimplemented"]
      210 LOADK                            R25 K58 ["setJointWeightAsync"]
      211 CALL                             R24 1 1
      212 SETTABLEKS                       R24 R23 K58 ["setJointWeightAsync"]
      214 GETTABLEKS                       R24 R9 K63 ["createUnimplemented"]
      216 LOADK                            R25 K59 ["setAllJointWeightsAsync"]
      217 CALL                             R24 1 1
      218 SETTABLEKS                       R24 R23 K59 ["setAllJointWeightsAsync"]
      220 GETTABLEKS                       R24 R9 K63 ["createUnimplemented"]
      222 LOADK                            R25 K60 ["pickRigAsync"]
      223 CALL                             R24 1 1
      224 SETTABLEKS                       R24 R23 K60 ["pickRigAsync"]
      226 NEWTABLE                         R24 0 0
      228 SETTABLEKS                       R24 R23 K61 ["masks"]
      230 GETTABLEKS                       R24 R8 K64 ["createContext"]
      232 MOVE                             R25 R23
      233 CALL                             R24 1 1
      234 LOADK                            R25 K15 ["MaskEditorContext"]
      235 SETTABLEKS                       R25 R24 K65 ["displayName"]
      237 DUPCLOSURE                       R25 K66 [PROTO_17]
      238 CAPTURE                          VAL R8
      239 CAPTURE                          VAL R6
      240 CAPTURE                          VAL R16
      241 CAPTURE                          VAL R10
      242 CAPTURE                          VAL R4
      243 CAPTURE                          VAL R14
      244 CAPTURE                          VAL R12
      245 CAPTURE                          VAL R13
      246 CAPTURE                          VAL R15
      247 CAPTURE                          VAL R5
      248 CAPTURE                          VAL R19
      249 CAPTURE                          VAL R0
      250 CAPTURE                          VAL R20
      251 CAPTURE                          VAL R18
      252 CAPTURE                          VAL R11
      253 CAPTURE                          VAL R1
      254 CAPTURE                          VAL R3
      255 CAPTURE                          VAL R7
      256 CAPTURE                          VAL R21
      257 CAPTURE                          VAL R22
      258 CAPTURE                          VAL R24
      259 DUPCLOSURE                       R26 K67 [PROTO_19]
      260 CAPTURE                          VAL R7
      261 CAPTURE                          VAL R22
      262 CAPTURE                          VAL R21
      263 CAPTURE                          VAL R8
      264 CAPTURE                          VAL R24
      265 DUPTABLE                         R27 K71 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      266 SETTABLEKS                       R24 R27 K68 ["Context"]
      268 SETTABLEKS                       R25 R27 K69 ["EditableDataModelProvider"]
      270 SETTABLEKS                       R26 R27 K70 ["UIDataModelProvider"]
      272 RETURN                           R27 1
