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
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R0
       56 CAPTURE                          UPVAL U6
       57 CAPTURE                          UPVAL U7
       58 CAPTURE                          UPVAL U8
       59 CAPTURE                          VAL R2
       60 NEWTABLE                         R8 0 4
       62 MOVE                             R9 R3
       63 MOVE                             R10 R2
       64 MOVE                             R11 R4
       65 GETTABLEKS                       R12 R0 K6 ["sharedMasksFolderName"]
       67 SETLIST                          R8 R9 4 [1]
       69 CALL                             R6 2 1
       70 GETUPVAL                         R7 0
       71 GETTABLEKS                       R7 R7 K7 ["useCallback"]
       73 NEWCLOSURE                       R8 P3
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R5
       76 CAPTURE                          UPVAL U9
       77 NEWTABLE                         R9 0 2
       79 MOVE                             R10 R2
       80 MOVE                             R11 R5
       81 SETLIST                          R9 R10 2 [1]
       83 CALL                             R7 2 1
       84 GETUPVAL                         R8 0
       85 GETTABLEKS                       R8 R8 K7 ["useCallback"]
       87 NEWCLOSURE                       R9 P4
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R5
       91 NEWTABLE                         R10 0 3
       93 MOVE                             R11 R2
       94 MOVE                             R12 R5
       95 MOVE                             R13 R4
       96 SETLIST                          R10 R11 3 [1]
       98 CALL                             R8 2 1
       99 GETUPVAL                         R9 0
      100 GETTABLEKS                       R9 R9 K5 ["useMemo"]
      102 NEWCLOSURE                       R10 P5
      103 CAPTURE                          UPVAL U5
      104 CAPTURE                          VAL R4
      105 NEWTABLE                         R11 0 1
      107 MOVE                             R12 R4
      108 SETLIST                          R11 R12 1 [1]
      110 CALL                             R9 2 1
      111 GETIMPORT                        R10 K9 [game]
      113 LOADK                            R12 K10 ["AnimGraphMaskFixEnabled"]
      114 NAMECALL                         R10 R10 K11 ["GetEngineFeature"]
      116 CALL                             R10 2 1
      117 JUMPIF                           R10 ; [+4]
      118 GETUPVAL                         R10 10
      119 MOVE                             R11 R9
      120 MOVE                             R12 R2
      121 CALL                             R10 2 0
      122 GETUPVAL                         R10 3
      123 GETTABLEKS                       R10 R10 K3 ["useSignalState"]
      125 GETUPVAL                         R11 0
      126 GETTABLEKS                       R11 R11 K5 ["useMemo"]
      128 NEWCLOSURE                       R12 P6
      129 CAPTURE                          UPVAL U5
      130 CAPTURE                          VAL R9
      131 CAPTURE                          UPVAL U11
      132 CAPTURE                          VAL R2
      133 CAPTURE                          UPVAL U12
      134 NEWTABLE                         R13 0 2
      136 MOVE                             R14 R9
      137 MOVE                             R15 R2
      138 SETLIST                          R13 R14 2 [1]
      140 CALL                             R11 2 -1
      141 CALL                             R10 -1 1
      142 GETUPVAL                         R11 0
      143 GETTABLEKS                       R11 R11 K7 ["useCallback"]
      145 NEWCLOSURE                       R12 P7
      146 CAPTURE                          VAL R2
      147 CAPTURE                          VAL R5
      148 CAPTURE                          UPVAL U7
      149 CAPTURE                          UPVAL U8
      150 NEWTABLE                         R13 0 2
      152 MOVE                             R14 R2
      153 MOVE                             R15 R5
      154 SETLIST                          R13 R14 2 [1]
      156 CALL                             R11 2 1
      157 GETUPVAL                         R12 0
      158 GETTABLEKS                       R12 R12 K7 ["useCallback"]
      160 NEWCLOSURE                       R13 P8
      161 CAPTURE                          VAL R2
      162 NEWTABLE                         R14 0 1
      164 MOVE                             R15 R2
      165 SETLIST                          R14 R15 1 [1]
      167 CALL                             R12 2 1
      168 GETUPVAL                         R13 0
      169 GETTABLEKS                       R13 R13 K7 ["useCallback"]
      171 NEWCLOSURE                       R14 P9
      172 CAPTURE                          VAL R2
      173 CAPTURE                          VAL R5
      174 NEWTABLE                         R15 0 2
      176 MOVE                             R16 R2
      177 MOVE                             R17 R5
      178 SETLIST                          R15 R16 2 [1]
      180 CALL                             R13 2 1
      181 GETUPVAL                         R14 0
      182 GETTABLEKS                       R14 R14 K7 ["useCallback"]
      184 NEWCLOSURE                       R15 P10
      185 CAPTURE                          VAL R2
      186 CAPTURE                          VAL R5
      187 CAPTURE                          VAL R0
      188 CAPTURE                          UPVAL U13
      189 CAPTURE                          UPVAL U9
      190 CAPTURE                          UPVAL U7
      191 CAPTURE                          UPVAL U14
      192 NEWTABLE                         R16 0 3
      194 GETTABLEKS                       R17 R0 K12 ["startPickingInstanceAsync"]
      196 MOVE                             R18 R2
      197 MOVE                             R19 R5
      198 SETLIST                          R16 R17 3 [1]
      200 CALL                             R14 2 1
      201 GETUPVAL                         R15 0
      202 GETTABLEKS                       R15 R15 K5 ["useMemo"]
      204 NEWCLOSURE                       R16 P11
      205 CAPTURE                          VAL R6
      206 CAPTURE                          VAL R7
      207 CAPTURE                          VAL R8
      208 CAPTURE                          VAL R11
      209 CAPTURE                          VAL R12
      210 CAPTURE                          VAL R13
      211 CAPTURE                          VAL R14
      212 CAPTURE                          VAL R10
      213 NEWTABLE                         R17 0 8
      215 MOVE                             R18 R6
      216 MOVE                             R19 R7
      217 MOVE                             R20 R8
      218 MOVE                             R21 R11
      219 MOVE                             R22 R12
      220 MOVE                             R23 R13
      221 MOVE                             R24 R14
      222 MOVE                             R25 R10
      223 SETLIST                          R17 R18 8 [1]
      225 CALL                             R15 2 1
      226 GETUPVAL                         R16 15
      227 GETTABLEKS                       R16 R16 K13 ["useReplicatedState"]
      229 LOADK                            R17 K14 ["MaskEditorContext_Masks"]
      230 MOVE                             R18 R10
      231 CALL                             R16 2 0
      232 GETUPVAL                         R16 15
      233 GETTABLEKS                       R16 R16 K15 ["useBoundAction"]
      235 LOADK                            R17 K16 ["MaskEditorContext_CreateMaskAsync"]
      236 MOVE                             R18 R6
      237 CALL                             R16 2 0
      238 GETUPVAL                         R16 15
      239 GETTABLEKS                       R16 R16 K15 ["useBoundAction"]
      241 LOADK                            R17 K17 ["MaskEditorContext_DeleteMaskAsync"]
      242 MOVE                             R18 R7
      243 CALL                             R16 2 0
      244 GETUPVAL                         R16 15
      245 GETTABLEKS                       R16 R16 K15 ["useBoundAction"]
      247 LOADK                            R17 K18 ["MaskEditorContext_RenameMaskAsync"]
      248 MOVE                             R18 R8
      249 CALL                             R16 2 0
      250 GETUPVAL                         R16 15
      251 GETTABLEKS                       R16 R16 K15 ["useBoundAction"]
      253 LOADK                            R17 K19 ["MaskEditorContext_SetRigTypeAsync"]
      254 MOVE                             R18 R11
      255 CALL                             R16 2 0
      256 GETUPVAL                         R16 15
      257 GETTABLEKS                       R16 R16 K15 ["useBoundAction"]
      259 LOADK                            R17 K20 ["MaskEditorContext_SetJointWeightAsync"]
      260 MOVE                             R18 R12
      261 CALL                             R16 2 0
      262 GETUPVAL                         R16 15
      263 GETTABLEKS                       R16 R16 K15 ["useBoundAction"]
      265 LOADK                            R17 K21 ["MaskEditorContext_SetAllJointWeightsAsync"]
      266 MOVE                             R18 R13
      267 CALL                             R16 2 0
      268 GETUPVAL                         R16 15
      269 GETTABLEKS                       R16 R16 K15 ["useBoundAction"]
      271 LOADK                            R17 K22 ["MaskEditorContext_PickRigAsync"]
      272 MOVE                             R18 R14
      273 CALL                             R16 2 0
      274 GETUPVAL                         R16 0
      275 GETTABLEKS                       R16 R16 K23 ["createElement"]
      277 GETUPVAL                         R17 16
      278 GETTABLEKS                       R17 R17 K24 ["Provider"]
      280 DUPTABLE                         R18 K26 [{"value"}]
      281 SETTABLEKS                       R15 R18 K25 ["value"]
      283 GETTABLEKS                       R19 R0 K27 ["children"]
      285 CALL                             R16 3 -1
      286 RETURN                           R16 -1

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
       30 GETTABLEKS                       R5 R5 K14 ["InstanceRegistryContext"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R6 R2 K13 ["Contexts"]
       37 GETTABLEKS                       R6 R6 K15 ["MaskEditorContext"]
       39 GETTABLEKS                       R6 R6 K16 ["MasksConstants"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R7 R2 K17 ["Util"]
       46 GETTABLEKS                       R7 R7 K18 ["Networking"]
       48 GETTABLEKS                       R7 R7 K19 ["NetworkUtils"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K10 [require]
       53 GETTABLEKS                       R8 R2 K11 ["Parent"]
       55 GETTABLEKS                       R8 R8 K20 ["React"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K10 [require]
       60 GETTABLEKS                       R9 R2 K11 ["Parent"]
       62 GETTABLEKS                       R9 R9 K21 ["ReactUtils"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K10 [require]
       67 GETIMPORT                        R10 K6 [script]
       69 GETTABLEKS                       R10 R10 K11 ["Parent"]
       71 GETTABLEKS                       R10 R10 K22 ["SelectedGraphContext"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K10 [require]
       76 GETTABLEKS                       R11 R2 K17 ["Util"]
       78 GETTABLEKS                       R11 R11 K23 ["Signals"]
       80 GETTABLEKS                       R11 R11 K24 ["Experimental"]
       82 GETTABLEKS                       R11 R11 K25 ["SignalExperimentalUtils"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K10 [require]
       87 GETTABLEKS                       R12 R2 K11 ["Parent"]
       89 GETTABLEKS                       R12 R12 K23 ["Signals"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K10 [require]
       94 GETTABLEKS                       R13 R2 K17 ["Util"]
       96 GETTABLEKS                       R13 R13 K23 ["Signals"]
       98 GETTABLEKS                       R13 R13 K26 ["SignalsInstanceUtils"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K10 [require]
      103 GETTABLEKS                       R14 R2 K11 ["Parent"]
      105 GETTABLEKS                       R14 R14 K27 ["SignalsReact"]
      107 CALL                             R13 1 1
      108 GETIMPORT                        R14 K10 [require]
      110 GETTABLEKS                       R15 R2 K17 ["Util"]
      112 GETTABLEKS                       R15 R15 K28 ["getDeduplicatedName"]
      114 CALL                             R14 1 1
      115 GETIMPORT                        R15 K10 [require]
      117 GETIMPORT                        R16 K6 [script]
      119 GETTABLEKS                       R16 R16 K29 ["observeFlattenedJoints"]
      121 CALL                             R15 1 1
      122 GETIMPORT                        R16 K10 [require]
      124 GETIMPORT                        R17 K6 [script]
      126 GETTABLEKS                       R17 R17 K30 ["observeMaskDatum"]
      128 CALL                             R16 1 1
      129 GETIMPORT                        R17 K10 [require]
      131 GETIMPORT                        R18 K6 [script]
      133 GETTABLEKS                       R18 R18 K31 ["populateHumanoidRigDescriptionValues"]
      135 CALL                             R17 1 1
      136 GETIMPORT                        R18 K10 [require]
      138 GETIMPORT                        R19 K6 [script]
      140 GETTABLEKS                       R19 R19 K32 ["useSharedMaskAttributeSync"]
      142 CALL                             R18 1 1
      143 DUPTABLE                         R19 K35 [{["MASKS"] = "MaskEditorContext_Masks"}]
      144 DUPTABLE                         R20 K50 [{["CREATE_MASK"] = "MaskEditorContext_CreateMaskAsync", ["DELETE_MASK"] = "MaskEditorContext_DeleteMaskAsync", ["RENAME_MASK"] = "MaskEditorContext_RenameMaskAsync", ["SET_RIG_TYPE"] = "MaskEditorContext_SetRigTypeAsync", ["SET_JOINT_WEIGHT"] = "MaskEditorContext_SetJointWeightAsync", ["SET_ALL_JOINT_WEIGHTS"] = "MaskEditorContext_SetAllJointWeightsAsync", ["PICK_RIG_ASYNC"] = "MaskEditorContext_PickRigAsync"}]
      145 DUPTABLE                         R21 K59 [{"createMaskAsync", "deleteMaskAsync", "renameMaskAsync", "setRigTypeAsync", "setJointWeightAsync", "setAllJointWeightsAsync", "pickRigAsync", "masks"}]
      146 GETTABLEKS                       R22 R8 K60 ["createUnimplemented"]
      148 LOADK                            R23 K51 ["createMaskAsync"]
      149 CALL                             R22 1 1
      150 SETTABLEKS                       R22 R21 K51 ["createMaskAsync"]
      152 GETTABLEKS                       R22 R8 K60 ["createUnimplemented"]
      154 LOADK                            R23 K52 ["deleteMaskAsync"]
      155 CALL                             R22 1 1
      156 SETTABLEKS                       R22 R21 K52 ["deleteMaskAsync"]
      158 GETTABLEKS                       R22 R8 K60 ["createUnimplemented"]
      160 LOADK                            R23 K53 ["renameMaskAsync"]
      161 CALL                             R22 1 1
      162 SETTABLEKS                       R22 R21 K53 ["renameMaskAsync"]
      164 GETTABLEKS                       R22 R8 K60 ["createUnimplemented"]
      166 LOADK                            R23 K54 ["setRigTypeAsync"]
      167 CALL                             R22 1 1
      168 SETTABLEKS                       R22 R21 K54 ["setRigTypeAsync"]
      170 GETTABLEKS                       R22 R8 K60 ["createUnimplemented"]
      172 LOADK                            R23 K55 ["setJointWeightAsync"]
      173 CALL                             R22 1 1
      174 SETTABLEKS                       R22 R21 K55 ["setJointWeightAsync"]
      176 GETTABLEKS                       R22 R8 K60 ["createUnimplemented"]
      178 LOADK                            R23 K56 ["setAllJointWeightsAsync"]
      179 CALL                             R22 1 1
      180 SETTABLEKS                       R22 R21 K56 ["setAllJointWeightsAsync"]
      182 GETTABLEKS                       R22 R8 K60 ["createUnimplemented"]
      184 LOADK                            R23 K57 ["pickRigAsync"]
      185 CALL                             R22 1 1
      186 SETTABLEKS                       R22 R21 K57 ["pickRigAsync"]
      188 NEWTABLE                         R22 0 0
      190 SETTABLEKS                       R22 R21 K58 ["masks"]
      192 GETTABLEKS                       R22 R7 K61 ["createContext"]
      194 MOVE                             R23 R21
      195 CALL                             R22 1 1
      196 LOADK                            R23 K15 ["MaskEditorContext"]
      197 SETTABLEKS                       R23 R22 K62 ["displayName"]
      199 DUPCLOSURE                       R23 K63 [PROTO_17]
      200 CAPTURE                          VAL R7
      201 CAPTURE                          VAL R9
      202 CAPTURE                          VAL R4
      203 CAPTURE                          VAL R13
      204 CAPTURE                          VAL R11
      205 CAPTURE                          VAL R12
      206 CAPTURE                          VAL R14
      207 CAPTURE                          VAL R5
      208 CAPTURE                          VAL R17
      209 CAPTURE                          VAL R0
      210 CAPTURE                          VAL R18
      211 CAPTURE                          VAL R16
      212 CAPTURE                          VAL R10
      213 CAPTURE                          VAL R1
      214 CAPTURE                          VAL R3
      215 CAPTURE                          VAL R6
      216 CAPTURE                          VAL R22
      217 DUPCLOSURE                       R24 K64 [PROTO_19]
      218 CAPTURE                          VAL R6
      219 CAPTURE                          VAL R7
      220 CAPTURE                          VAL R22
      221 DUPTABLE                         R25 K68 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      222 SETTABLEKS                       R22 R25 K65 ["Context"]
      224 SETTABLEKS                       R23 R25 K66 ["EditableDataModelProvider"]
      226 SETTABLEKS                       R24 R25 K67 ["UIDataModelProvider"]
      228 RETURN                           R25 1
