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

PROTO_14:
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
       72 DUPCLOSURE                       R7 K15 [PROTO_13]
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

PROTO_15:
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

PROTO_16:
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
      174 CAPTURE                          VAL R0
      175 CAPTURE                          UPVAL U13
      176 CAPTURE                          UPVAL U9
      177 CAPTURE                          UPVAL U7
      178 CAPTURE                          UPVAL U14
      179 NEWTABLE                         R15 0 3
      181 GETTABLEKS                       R16 R0 K12 ["startPickingInstanceAsync"]
      183 MOVE                             R17 R2
      184 MOVE                             R18 R5
      185 SETLIST                          R15 R16 3 [1]
      187 CALL                             R13 2 1
      188 GETUPVAL                         R14 0
      189 GETTABLEKS                       R14 R14 K5 ["useMemo"]
      191 NEWCLOSURE                       R15 P10
      192 CAPTURE                          VAL R6
      193 CAPTURE                          VAL R7
      194 CAPTURE                          VAL R8
      195 CAPTURE                          VAL R11
      196 CAPTURE                          VAL R12
      197 CAPTURE                          VAL R13
      198 CAPTURE                          VAL R10
      199 NEWTABLE                         R16 0 7
      201 MOVE                             R17 R6
      202 MOVE                             R18 R7
      203 MOVE                             R19 R8
      204 MOVE                             R20 R11
      205 MOVE                             R21 R12
      206 MOVE                             R22 R13
      207 MOVE                             R23 R10
      208 SETLIST                          R16 R17 7 [1]
      210 CALL                             R14 2 1
      211 GETUPVAL                         R15 15
      212 GETTABLEKS                       R15 R15 K13 ["useReplicatedState"]
      214 GETUPVAL                         R16 16
      215 GETTABLEKS                       R16 R16 K14 ["MASKS"]
      217 MOVE                             R17 R10
      218 CALL                             R15 2 0
      219 GETUPVAL                         R15 15
      220 GETTABLEKS                       R15 R15 K15 ["useBoundAction"]
      222 GETUPVAL                         R16 17
      223 GETTABLEKS                       R16 R16 K16 ["CREATE_MASK"]
      225 MOVE                             R17 R6
      226 CALL                             R15 2 0
      227 GETUPVAL                         R15 15
      228 GETTABLEKS                       R15 R15 K15 ["useBoundAction"]
      230 GETUPVAL                         R16 17
      231 GETTABLEKS                       R16 R16 K17 ["DELETE_MASK"]
      233 MOVE                             R17 R7
      234 CALL                             R15 2 0
      235 GETUPVAL                         R15 15
      236 GETTABLEKS                       R15 R15 K15 ["useBoundAction"]
      238 GETUPVAL                         R16 17
      239 GETTABLEKS                       R16 R16 K18 ["RENAME_MASK"]
      241 MOVE                             R17 R8
      242 CALL                             R15 2 0
      243 GETUPVAL                         R15 15
      244 GETTABLEKS                       R15 R15 K15 ["useBoundAction"]
      246 GETUPVAL                         R16 17
      247 GETTABLEKS                       R16 R16 K19 ["SET_RIG_TYPE"]
      249 MOVE                             R17 R11
      250 CALL                             R15 2 0
      251 GETUPVAL                         R15 15
      252 GETTABLEKS                       R15 R15 K15 ["useBoundAction"]
      254 GETUPVAL                         R16 17
      255 GETTABLEKS                       R16 R16 K20 ["SET_JOINT_WEIGHT"]
      257 MOVE                             R17 R12
      258 CALL                             R15 2 0
      259 GETUPVAL                         R15 15
      260 GETTABLEKS                       R15 R15 K15 ["useBoundAction"]
      262 GETUPVAL                         R16 17
      263 GETTABLEKS                       R16 R16 K21 ["PICK_RIG_ASYNC"]
      265 MOVE                             R17 R13
      266 CALL                             R15 2 0
      267 GETUPVAL                         R15 0
      268 GETTABLEKS                       R15 R15 K22 ["createElement"]
      270 GETUPVAL                         R16 18
      271 GETTABLEKS                       R16 R16 K23 ["Provider"]
      273 DUPTABLE                         R17 K25 [{"value"}]
      274 SETTABLEKS                       R14 R17 K24 ["value"]
      276 GETTABLEKS                       R18 R0 K26 ["children"]
      278 CALL                             R15 3 -1
      279 RETURN                           R15 -1

PROTO_17:
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

PROTO_18:
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
       39 GETTABLEKS                       R7 R7 K6 ["PICK_RIG_ASYNC"]
       41 CALL                             R6 1 1
       42 GETUPVAL                         R7 0
       43 GETTABLEKS                       R7 R7 K7 ["useReplicatedStateListener"]
       45 GETUPVAL                         R8 2
       46 GETTABLEKS                       R8 R8 K8 ["MASKS"]
       48 NEWTABLE                         R9 0 0
       50 CALL                             R7 2 1
       51 GETUPVAL                         R8 3
       52 GETTABLEKS                       R8 R8 K9 ["useMemo"]
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
       72 GETUPVAL                         R9 3
       73 GETTABLEKS                       R9 R9 K10 ["createElement"]
       75 GETUPVAL                         R10 4
       76 GETTABLEKS                       R10 R10 K11 ["Provider"]
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
       74 GETTABLEKS                       R11 R2 K18 ["Util"]
       76 GETTABLEKS                       R11 R11 K23 ["Signals"]
       78 GETTABLEKS                       R11 R11 K24 ["Experimental"]
       80 GETTABLEKS                       R11 R11 K25 ["SignalExperimentalUtils"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K10 [require]
       85 GETTABLEKS                       R12 R2 K11 ["Parent"]
       87 GETTABLEKS                       R12 R12 K23 ["Signals"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K10 [require]
       92 GETTABLEKS                       R13 R2 K18 ["Util"]
       94 GETTABLEKS                       R13 R13 K23 ["Signals"]
       96 GETTABLEKS                       R13 R13 K26 ["SignalsInstanceUtils"]
       98 CALL                             R12 1 1
       99 GETIMPORT                        R13 K10 [require]
      101 GETTABLEKS                       R14 R2 K11 ["Parent"]
      103 GETTABLEKS                       R14 R14 K27 ["SignalsReact"]
      105 CALL                             R13 1 1
      106 GETIMPORT                        R14 K10 [require]
      108 GETTABLEKS                       R15 R2 K18 ["Util"]
      110 GETTABLEKS                       R15 R15 K28 ["getDeduplicatedName"]
      112 CALL                             R14 1 1
      113 GETIMPORT                        R15 K10 [require]
      115 GETIMPORT                        R16 K6 [script]
      117 GETTABLEKS                       R16 R16 K29 ["observeFlattenedJoints"]
      119 CALL                             R15 1 1
      120 GETIMPORT                        R16 K10 [require]
      122 GETIMPORT                        R17 K6 [script]
      124 GETTABLEKS                       R17 R17 K30 ["observeMaskDatum"]
      126 CALL                             R16 1 1
      127 GETIMPORT                        R17 K10 [require]
      129 GETIMPORT                        R18 K6 [script]
      131 GETTABLEKS                       R18 R18 K31 ["populateHumanoidRigDescriptionValues"]
      133 CALL                             R17 1 1
      134 GETIMPORT                        R18 K10 [require]
      136 GETIMPORT                        R19 K6 [script]
      138 GETTABLEKS                       R19 R19 K32 ["useSharedMaskAttributeSync"]
      140 CALL                             R18 1 1
      141 DUPTABLE                         R19 K34 [{"MASKS"}]
      142 LOADK                            R20 K35 ["MaskEditorContext_Masks"]
      143 SETTABLEKS                       R20 R19 K33 ["MASKS"]
      145 DUPTABLE                         R20 K42 [{"CREATE_MASK", "DELETE_MASK", "RENAME_MASK", "SET_RIG_TYPE", "SET_JOINT_WEIGHT", "PICK_RIG_ASYNC"}]
      146 LOADK                            R21 K43 ["MaskEditorContext_CreateMaskAsync"]
      147 SETTABLEKS                       R21 R20 K36 ["CREATE_MASK"]
      149 LOADK                            R21 K44 ["MaskEditorContext_DeleteMaskAsync"]
      150 SETTABLEKS                       R21 R20 K37 ["DELETE_MASK"]
      152 LOADK                            R21 K45 ["MaskEditorContext_RenameMaskAsync"]
      153 SETTABLEKS                       R21 R20 K38 ["RENAME_MASK"]
      155 LOADK                            R21 K46 ["MaskEditorContext_SetRigTypeAsync"]
      156 SETTABLEKS                       R21 R20 K39 ["SET_RIG_TYPE"]
      158 LOADK                            R21 K47 ["MaskEditorContext_SetJointWeightAsync"]
      159 SETTABLEKS                       R21 R20 K40 ["SET_JOINT_WEIGHT"]
      161 LOADK                            R21 K48 ["MaskEditorContext_PickRigAsync"]
      162 SETTABLEKS                       R21 R20 K41 ["PICK_RIG_ASYNC"]
      164 DUPTABLE                         R21 K56 [{"createMaskAsync", "deleteMaskAsync", "renameMaskAsync", "setRigTypeAsync", "setJointWeightAsync", "pickRigAsync", "masks"}]
      165 GETTABLEKS                       R22 R9 K57 ["createUnimplemented"]
      167 LOADK                            R23 K49 ["createMaskAsync"]
      168 CALL                             R22 1 1
      169 SETTABLEKS                       R22 R21 K49 ["createMaskAsync"]
      171 GETTABLEKS                       R22 R9 K57 ["createUnimplemented"]
      173 LOADK                            R23 K50 ["deleteMaskAsync"]
      174 CALL                             R22 1 1
      175 SETTABLEKS                       R22 R21 K50 ["deleteMaskAsync"]
      177 GETTABLEKS                       R22 R9 K57 ["createUnimplemented"]
      179 LOADK                            R23 K51 ["renameMaskAsync"]
      180 CALL                             R22 1 1
      181 SETTABLEKS                       R22 R21 K51 ["renameMaskAsync"]
      183 GETTABLEKS                       R22 R9 K57 ["createUnimplemented"]
      185 LOADK                            R23 K52 ["setRigTypeAsync"]
      186 CALL                             R22 1 1
      187 SETTABLEKS                       R22 R21 K52 ["setRigTypeAsync"]
      189 GETTABLEKS                       R22 R9 K57 ["createUnimplemented"]
      191 LOADK                            R23 K58 ["setJoinWeightAsync"]
      192 CALL                             R22 1 1
      193 SETTABLEKS                       R22 R21 K53 ["setJointWeightAsync"]
      195 GETTABLEKS                       R22 R9 K57 ["createUnimplemented"]
      197 LOADK                            R23 K54 ["pickRigAsync"]
      198 CALL                             R22 1 1
      199 SETTABLEKS                       R22 R21 K54 ["pickRigAsync"]
      201 NEWTABLE                         R22 0 0
      203 SETTABLEKS                       R22 R21 K55 ["masks"]
      205 GETTABLEKS                       R22 R8 K59 ["createContext"]
      207 MOVE                             R23 R21
      208 CALL                             R22 1 1
      209 LOADK                            R23 K15 ["MaskEditorContext"]
      210 SETTABLEKS                       R23 R22 K60 ["displayName"]
      212 DUPCLOSURE                       R23 K61 [PROTO_16]
      213 CAPTURE                          VAL R8
      214 CAPTURE                          VAL R6
      215 CAPTURE                          VAL R4
      216 CAPTURE                          VAL R13
      217 CAPTURE                          VAL R11
      218 CAPTURE                          VAL R12
      219 CAPTURE                          VAL R14
      220 CAPTURE                          VAL R5
      221 CAPTURE                          VAL R17
      222 CAPTURE                          VAL R0
      223 CAPTURE                          VAL R18
      224 CAPTURE                          VAL R16
      225 CAPTURE                          VAL R10
      226 CAPTURE                          VAL R1
      227 CAPTURE                          VAL R3
      228 CAPTURE                          VAL R7
      229 CAPTURE                          VAL R19
      230 CAPTURE                          VAL R20
      231 CAPTURE                          VAL R22
      232 DUPCLOSURE                       R24 K62 [PROTO_18]
      233 CAPTURE                          VAL R7
      234 CAPTURE                          VAL R20
      235 CAPTURE                          VAL R19
      236 CAPTURE                          VAL R8
      237 CAPTURE                          VAL R22
      238 DUPTABLE                         R25 K66 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      239 SETTABLEKS                       R22 R25 K63 ["Context"]
      241 SETTABLEKS                       R23 R25 K64 ["EditableDataModelProvider"]
      243 SETTABLEKS                       R24 R25 K65 ["UIDataModelProvider"]
      245 RETURN                           R25 1
