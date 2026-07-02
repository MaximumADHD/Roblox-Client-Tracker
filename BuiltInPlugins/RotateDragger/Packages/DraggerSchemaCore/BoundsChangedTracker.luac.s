PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["_basisObject"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R3 K6 [{[1], ["_installed"] = False, ["_partToEntry"], ["_proceduralModelToEntry"], ["_attachmentToEntry"]}]
        1 SETTABLEKS                       R1 R3 K0 ["_handler"]
        3 NEWTABLE                         R4 0 0
        5 SETTABLEKS                       R4 R3 K3 ["_partToEntry"]
        7 NEWTABLE                         R4 0 0
        9 SETTABLEKS                       R4 R3 K4 ["_proceduralModelToEntry"]
       11 NEWTABLE                         R4 0 0
       13 SETTABLEKS                       R4 R3 K5 ["_attachmentToEntry"]
       15 GETUPVAL                         R4 0
       16 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       18 GETIMPORT                        R2 K8 [setmetatable]
       20 CALL                             R2 2 1
       21 NEWCLOSURE                       R3 P0
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 SETTABLEKS                       R3 R2 K9 ["_basisPivotChangedTrampoline"]
       26 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["CFrameChangedSignal"]
        2 GETTABLEKS                       R3 R0 K1 ["Trampoline"]
        4 NAMECALL                         R1 R1 K2 ["Connect"]
        6 CALL                             R1 2 1
        7 SETTABLEKS                       R1 R0 K3 ["CFrameChangedConnection"]
        9 GETTABLEKS                       R1 R0 K4 ["RootCFrameChangedSignal"]
       11 JUMPIFNOT                        R1 ; [+9]
       12 GETTABLEKS                       R1 R0 K4 ["RootCFrameChangedSignal"]
       14 GETTABLEKS                       R3 R0 K1 ["Trampoline"]
       16 NAMECALL                         R1 R1 K2 ["Connect"]
       18 CALL                             R1 2 1
       19 SETTABLEKS                       R1 R0 K5 ["RootCFrameChangedConnection"]
       21 GETTABLEKS                       R1 R0 K6 ["SizeChangedSignal"]
       23 GETTABLEKS                       R3 R0 K1 ["Trampoline"]
       25 NAMECALL                         R1 R1 K2 ["Connect"]
       27 CALL                             R1 2 1
       28 SETTABLEKS                       R1 R0 K7 ["SizeChangedConnection"]
       30 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["CFrameChangedConnection"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K2 ["RootCFrameChangedConnection"]
        7 JUMPIFNOT                        R1 ; [+5]
        8 GETTABLEKS                       R1 R0 K2 ["RootCFrameChangedConnection"]
       10 NAMECALL                         R1 R1 K1 ["Disconnect"]
       12 CALL                             R1 1 0
       13 GETTABLEKS                       R1 R0 K3 ["SizeChangedConnection"]
       15 NAMECALL                         R1 R1 K1 ["Disconnect"]
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["CFrameChangedSignal"]
        2 GETTABLEKS                       R3 R0 K1 ["Trampoline"]
        4 NAMECALL                         R1 R1 K2 ["Connect"]
        6 CALL                             R1 2 1
        7 SETTABLEKS                       R1 R0 K3 ["CFrameChangedConnection"]
        9 GETUPVAL                         R1 0
       10 JUMPIFNOT                        R1 ; [+12]
       11 GETTABLEKS                       R1 R0 K4 ["CameraCFrameChangedSignal"]
       13 JUMPIFNOT                        R1 ; [+9]
       14 GETTABLEKS                       R1 R0 K4 ["CameraCFrameChangedSignal"]
       16 GETTABLEKS                       R3 R0 K1 ["Trampoline"]
       18 NAMECALL                         R1 R1 K2 ["Connect"]
       20 CALL                             R1 2 1
       21 SETTABLEKS                       R1 R0 K5 ["CameraCFrameChangedConnection"]
       23 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["CFrameChangedConnection"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 0
        6 JUMPIFNOT                        R1 ; [+8]
        7 GETTABLEKS                       R1 R0 K2 ["CameraCFrameChangedConnection"]
        9 JUMPIFNOT                        R1 ; [+5]
       10 GETTABLEKS                       R1 R0 K2 ["CameraCFrameChangedConnection"]
       12 NAMECALL                         R1 R1 K1 ["Disconnect"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["SizeChangedSignal"]
        2 GETTABLEKS                       R3 R0 K1 ["Trampoline"]
        4 NAMECALL                         R1 R1 K2 ["Connect"]
        6 CALL                             R1 2 1
        7 SETTABLEKS                       R1 R0 K3 ["SizeChangedConnection"]
        9 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["SizeChangedConnection"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_basisPivotChangedSignal"]
        2 GETTABLEKS                       R3 R0 K1 ["_basisPivotChangedTrampoline"]
        4 NAMECALL                         R1 R1 K2 ["Connect"]
        6 CALL                             R1 2 1
        7 SETTABLEKS                       R1 R0 K3 ["_basisPivotChangedConnection"]
        9 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_basisPivotChangedConnection"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["_installed"]
        2 NOT                              R2 R3
        3 FASTCALL1                        ASSERT R2 ; [+2]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 1 0
        7 LOADB                            R1 1
        8 SETTABLEKS                       R1 R0 K0 ["_installed"]
       10 GETIMPORT                        R1 K4 [pairs]
       12 GETTABLEKS                       R2 R0 K5 ["_partToEntry"]
       14 CALL                             R1 1 3
       15 FORGPREP_NEXT                    R1
       16 GETTABLEKS                       R6 R5 K6 ["CFrameChangedSignal"]
       18 GETTABLEKS                       R8 R5 K7 ["Trampoline"]
       20 NAMECALL                         R6 R6 K8 ["Connect"]
       22 CALL                             R6 2 1
       23 SETTABLEKS                       R6 R5 K9 ["CFrameChangedConnection"]
       25 GETTABLEKS                       R6 R5 K10 ["RootCFrameChangedSignal"]
       27 JUMPIFNOT                        R6 ; [+9]
       28 GETTABLEKS                       R6 R5 K10 ["RootCFrameChangedSignal"]
       30 GETTABLEKS                       R8 R5 K7 ["Trampoline"]
       32 NAMECALL                         R6 R6 K8 ["Connect"]
       34 CALL                             R6 2 1
       35 SETTABLEKS                       R6 R5 K11 ["RootCFrameChangedConnection"]
       37 GETTABLEKS                       R6 R5 K12 ["SizeChangedSignal"]
       39 GETTABLEKS                       R8 R5 K7 ["Trampoline"]
       41 NAMECALL                         R6 R6 K8 ["Connect"]
       43 CALL                             R6 2 1
       44 SETTABLEKS                       R6 R5 K13 ["SizeChangedConnection"]
       46 FORGLOOP                         R1 2 ; [-31]
       48 GETIMPORT                        R1 K4 [pairs]
       50 GETTABLEKS                       R2 R0 K14 ["_attachmentToEntry"]
       52 CALL                             R1 1 3
       53 FORGPREP_NEXT                    R1
       54 GETTABLEKS                       R6 R5 K6 ["CFrameChangedSignal"]
       56 GETTABLEKS                       R8 R5 K7 ["Trampoline"]
       58 NAMECALL                         R6 R6 K8 ["Connect"]
       60 CALL                             R6 2 1
       61 SETTABLEKS                       R6 R5 K9 ["CFrameChangedConnection"]
       63 GETUPVAL                         R6 0
       64 JUMPIFNOT                        R6 ; [+12]
       65 GETTABLEKS                       R6 R5 K15 ["CameraCFrameChangedSignal"]
       67 JUMPIFNOT                        R6 ; [+9]
       68 GETTABLEKS                       R6 R5 K15 ["CameraCFrameChangedSignal"]
       70 GETTABLEKS                       R8 R5 K7 ["Trampoline"]
       72 NAMECALL                         R6 R6 K8 ["Connect"]
       74 CALL                             R6 2 1
       75 SETTABLEKS                       R6 R5 K16 ["CameraCFrameChangedConnection"]
       77 FORGLOOP                         R1 2 ; [-24]
       79 GETUPVAL                         R1 1
       80 JUMPIFNOT                        R1 ; [+16]
       81 GETTABLEKS                       R1 R0 K17 ["_proceduralModelToEntry"]
       83 LOADNIL                          R2
       84 LOADNIL                          R3
       85 FORGPREP                         R1
       86 GETTABLEKS                       R6 R5 K12 ["SizeChangedSignal"]
       88 GETTABLEKS                       R8 R5 K7 ["Trampoline"]
       90 NAMECALL                         R6 R6 K8 ["Connect"]
       92 CALL                             R6 2 1
       93 SETTABLEKS                       R6 R5 K13 ["SizeChangedConnection"]
       95 FORGLOOP                         R1 2 ; [-10]
       97 GETTABLEKS                       R1 R0 K18 ["_basisObject"]
       99 JUMPIFNOT                        R1 ; [+3]
      100 NAMECALL                         R1 R0 K19 ["_hookupBasisConnection"]
      102 CALL                             R1 1 0
      103 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["_installed"]
        2 FASTCALL1                        ASSERT R2 ; [+2]
        3 GETIMPORT                        R1 K2 [assert]
        5 CALL                             R1 1 0
        6 LOADB                            R1 0
        7 SETTABLEKS                       R1 R0 K0 ["_installed"]
        9 GETIMPORT                        R1 K4 [pairs]
       11 GETTABLEKS                       R2 R0 K5 ["_partToEntry"]
       13 CALL                             R1 1 3
       14 FORGPREP_NEXT                    R1
       15 GETTABLEKS                       R6 R5 K6 ["CFrameChangedConnection"]
       17 NAMECALL                         R6 R6 K7 ["Disconnect"]
       19 CALL                             R6 1 0
       20 GETTABLEKS                       R6 R5 K8 ["RootCFrameChangedConnection"]
       22 JUMPIFNOT                        R6 ; [+5]
       23 GETTABLEKS                       R6 R5 K8 ["RootCFrameChangedConnection"]
       25 NAMECALL                         R6 R6 K7 ["Disconnect"]
       27 CALL                             R6 1 0
       28 GETTABLEKS                       R6 R5 K9 ["SizeChangedConnection"]
       30 NAMECALL                         R6 R6 K7 ["Disconnect"]
       32 CALL                             R6 1 0
       33 FORGLOOP                         R1 2 ; [-19]
       35 GETIMPORT                        R1 K4 [pairs]
       37 GETTABLEKS                       R2 R0 K10 ["_attachmentToEntry"]
       39 CALL                             R1 1 3
       40 FORGPREP_NEXT                    R1
       41 GETTABLEKS                       R6 R5 K6 ["CFrameChangedConnection"]
       43 NAMECALL                         R6 R6 K7 ["Disconnect"]
       45 CALL                             R6 1 0
       46 GETUPVAL                         R6 0
       47 JUMPIFNOT                        R6 ; [+8]
       48 GETTABLEKS                       R6 R5 K11 ["CameraCFrameChangedConnection"]
       50 JUMPIFNOT                        R6 ; [+5]
       51 GETTABLEKS                       R6 R5 K11 ["CameraCFrameChangedConnection"]
       53 NAMECALL                         R6 R6 K7 ["Disconnect"]
       55 CALL                             R6 1 0
       56 FORGLOOP                         R1 2 ; [-16]
       58 GETUPVAL                         R1 1
       59 JUMPIFNOT                        R1 ; [+12]
       60 GETTABLEKS                       R1 R0 K12 ["_proceduralModelToEntry"]
       62 LOADNIL                          R2
       63 LOADNIL                          R3
       64 FORGPREP                         R1
       65 GETTABLEKS                       R6 R5 K9 ["SizeChangedConnection"]
       67 NAMECALL                         R6 R6 K7 ["Disconnect"]
       69 CALL                             R6 1 0
       70 FORGLOOP                         R1 2 ; [-6]
       72 GETTABLEKS                       R1 R0 K13 ["_basisObject"]
       74 JUMPIFNOT                        R1 ; [+3]
       75 NAMECALL                         R1 R0 K14 ["_disconnectBasisConnection"]
       77 CALL                             R1 1 0
       78 RETURN                           R0 0

PROTO_13:
        0 NAMECALL                         R4 R1 K0 ["getAllAttachments"]
        2 CALL                             R4 1 -1
        3 NAMECALL                         R2 R0 K1 ["_setAttachments"]
        5 CALL                             R2 -1 0
        6 NAMECALL                         R4 R1 K2 ["getObjectsToTransform"]
        8 CALL                             R4 1 -1
        9 NAMECALL                         R2 R0 K3 ["_setParts"]
       11 CALL                             R2 -1 0
       12 NAMECALL                         R4 R1 K4 ["getBasisObject"]
       14 CALL                             R4 1 -1
       15 NAMECALL                         R2 R0 K5 ["_setBasisObject"]
       17 CALL                             R2 -1 0
       18 GETUPVAL                         R2 0
       19 JUMPIFNOT                        R2 ; [+6]
       20 NAMECALL                         R4 R1 K6 ["getProceduralModels"]
       22 CALL                             R4 1 -1
       23 NAMECALL                         R2 R0 K7 ["_setProceduralModels"]
       25 CALL                             R2 -1 0
       26 RETURN                           R0 0

PROTO_14:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["_setParts"]
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["_basisObject"]
        2 JUMPIFEQ                         R2 R1 ; [+58]
        4 GETTABLEKS                       R2 R0 K1 ["_installed"]
        6 JUMPIFNOT                        R2 ; [+6]
        7 GETTABLEKS                       R2 R0 K0 ["_basisObject"]
        9 JUMPIFNOT                        R2 ; [+3]
       10 NAMECALL                         R2 R0 K2 ["_disconnectBasisConnection"]
       12 CALL                             R2 1 0
       13 SETTABLEKS                       R1 R0 K0 ["_basisObject"]
       15 JUMPIFNOT                        R1 ; [+45]
       16 LOADK                            R4 K3 ["BasePart"]
       17 NAMECALL                         R2 R1 K4 ["IsA"]
       19 CALL                             R2 2 1
       20 JUMPIFNOT                        R2 ; [+7]
       21 LOADK                            R4 K5 ["PivotOffset"]
       22 NAMECALL                         R2 R1 K6 ["GetPropertyChangedSignal"]
       24 CALL                             R2 2 1
       25 SETTABLEKS                       R2 R0 K7 ["_basisPivotChangedSignal"]
       27 JUMP                             ; [+27]
       28 LOADK                            R4 K8 ["Model"]
       29 NAMECALL                         R2 R1 K4 ["IsA"]
       31 CALL                             R2 2 1
       32 JUMPIFNOT                        R2 ; [+19]
       33 GETTABLEKS                       R2 R1 K9 ["PrimaryPart"]
       35 JUMPIFNOT                        R2 ; [+9]
       36 GETTABLEKS                       R2 R1 K9 ["PrimaryPart"]
       38 LOADK                            R4 K5 ["PivotOffset"]
       39 NAMECALL                         R2 R2 K6 ["GetPropertyChangedSignal"]
       41 CALL                             R2 2 1
       42 SETTABLEKS                       R2 R0 K7 ["_basisPivotChangedSignal"]
       44 JUMP                             ; [+10]
       45 LOADK                            R4 K10 ["WorldPivot"]
       46 NAMECALL                         R2 R1 K6 ["GetPropertyChangedSignal"]
       48 CALL                             R2 2 1
       49 SETTABLEKS                       R2 R0 K7 ["_basisPivotChangedSignal"]
       51 JUMP                             ; [+3]
       52 LOADNIL                          R2
       53 SETTABLEKS                       R2 R0 K7 ["_basisPivotChangedSignal"]
       55 GETTABLEKS                       R2 R0 K1 ["_installed"]
       57 JUMPIFNOT                        R2 ; [+3]
       58 NAMECALL                         R2 R0 K11 ["_hookupBasisConnection"]
       60 CALL                             R2 1 0
       61 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_handler"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_17:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [ipairs]
        4 MOVE                             R4 R1
        5 CALL                             R3 1 3
        6 FORGPREP_INEXT                   R3
        7 GETTABLEKS                       R9 R0 K2 ["_attachmentToEntry"]
        9 GETTABLE                         R8 R9 R7
       10 GETTABLEKS                       R9 R0 K2 ["_attachmentToEntry"]
       12 LOADNIL                          R10
       13 SETTABLE                         R10 R9 R7
       14 JUMPIF                           R8 ; [+58]
       15 DUPTABLE                         R9 K5 [{"CFrameChangedSignal", "Trampoline"}]
       16 LOADK                            R12 K6 ["CFrame"]
       17 NAMECALL                         R10 R7 K7 ["GetPropertyChangedSignal"]
       19 CALL                             R10 2 1
       20 SETTABLEKS                       R10 R9 K3 ["CFrameChangedSignal"]
       22 NEWCLOSURE                       R10 P0
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R7
       25 SETTABLEKS                       R10 R9 K4 ["Trampoline"]
       27 MOVE                             R8 R9
       28 GETUPVAL                         R9 0
       29 JUMPIFNOT                        R9 ; [+16]
       30 LOADK                            R11 K8 ["PVInstance"]
       31 NAMECALL                         R9 R7 K9 ["FindFirstAncestorWhichIsA"]
       33 CALL                             R9 2 1
       34 JUMPIFNOT                        R9 ; [+11]
       35 LOADK                            R12 K10 ["Camera"]
       36 NAMECALL                         R10 R9 K11 ["IsA"]
       38 CALL                             R10 2 1
       39 JUMPIFNOT                        R10 ; [+6]
       40 LOADK                            R12 K6 ["CFrame"]
       41 NAMECALL                         R10 R9 K7 ["GetPropertyChangedSignal"]
       43 CALL                             R10 2 1
       44 SETTABLEKS                       R10 R8 K12 ["CameraCFrameChangedSignal"]
       46 GETTABLEKS                       R9 R0 K13 ["_installed"]
       48 JUMPIFNOT                        R9 ; [+24]
       49 MOVE                             R9 R8
       50 GETTABLEKS                       R10 R9 K3 ["CFrameChangedSignal"]
       52 GETTABLEKS                       R12 R9 K4 ["Trampoline"]
       54 NAMECALL                         R10 R10 K14 ["Connect"]
       56 CALL                             R10 2 1
       57 SETTABLEKS                       R10 R9 K15 ["CFrameChangedConnection"]
       59 GETUPVAL                         R10 0
       60 JUMPIFNOT                        R10 ; [+12]
       61 GETTABLEKS                       R10 R9 K12 ["CameraCFrameChangedSignal"]
       63 JUMPIFNOT                        R10 ; [+9]
       64 GETTABLEKS                       R10 R9 K12 ["CameraCFrameChangedSignal"]
       66 GETTABLEKS                       R12 R9 K4 ["Trampoline"]
       68 NAMECALL                         R10 R10 K14 ["Connect"]
       70 CALL                             R10 2 1
       71 SETTABLEKS                       R10 R9 K16 ["CameraCFrameChangedConnection"]
       73 SETTABLE                         R8 R2 R7
       74 FORGLOOP                         R3 2 [inext] ; [-68]
       76 GETTABLEKS                       R3 R0 K13 ["_installed"]
       78 JUMPIFNOT                        R3 ; [+25]
       79 GETIMPORT                        R3 K18 [pairs]
       81 GETTABLEKS                       R4 R0 K2 ["_attachmentToEntry"]
       83 CALL                             R3 1 3
       84 FORGPREP_NEXT                    R3
       85 GETTABLE                         R8 R2 R6
       86 JUMPIF                           R8 ; [+15]
       87 GETTABLEKS                       R8 R7 K15 ["CFrameChangedConnection"]
       89 NAMECALL                         R8 R8 K19 ["Disconnect"]
       91 CALL                             R8 1 0
       92 GETUPVAL                         R8 0
       93 JUMPIFNOT                        R8 ; [+8]
       94 GETTABLEKS                       R8 R7 K16 ["CameraCFrameChangedConnection"]
       96 JUMPIFNOT                        R8 ; [+5]
       97 GETTABLEKS                       R8 R7 K16 ["CameraCFrameChangedConnection"]
       99 NAMECALL                         R8 R8 K19 ["Disconnect"]
      101 CALL                             R8 1 0
      102 FORGLOOP                         R3 2 ; [-18]
      104 SETTABLEKS                       R2 R0 K2 ["_attachmentToEntry"]
      106 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_handler"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_19:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R9 R0 K0 ["_proceduralModelToEntry"]
        8 GETTABLE                         R8 R9 R7
        9 GETTABLEKS                       R9 R0 K0 ["_proceduralModelToEntry"]
       11 LOADNIL                          R10
       12 SETTABLE                         R10 R9 R7
       13 JUMPIF                           R8 ; [+26]
       14 DUPTABLE                         R9 K3 [{"SizeChangedSignal", "Trampoline"}]
       15 LOADK                            R12 K4 ["Size"]
       16 NAMECALL                         R10 R7 K5 ["GetPropertyChangedSignal"]
       18 CALL                             R10 2 1
       19 SETTABLEKS                       R10 R9 K1 ["SizeChangedSignal"]
       21 NEWCLOSURE                       R10 P0
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R7
       24 SETTABLEKS                       R10 R9 K2 ["Trampoline"]
       26 MOVE                             R8 R9
       27 GETTABLEKS                       R9 R0 K6 ["_installed"]
       29 JUMPIFNOT                        R9 ; [+10]
       30 MOVE                             R9 R8
       31 GETTABLEKS                       R10 R9 K1 ["SizeChangedSignal"]
       33 GETTABLEKS                       R12 R9 K2 ["Trampoline"]
       35 NAMECALL                         R10 R10 K7 ["Connect"]
       37 CALL                             R10 2 1
       38 SETTABLEKS                       R10 R9 K8 ["SizeChangedConnection"]
       40 SETTABLE                         R8 R2 R7
       41 FORGLOOP                         R3 2 ; [-36]
       43 GETTABLEKS                       R3 R0 K6 ["_installed"]
       45 JUMPIFNOT                        R3 ; [+14]
       46 GETTABLEKS                       R3 R0 K0 ["_proceduralModelToEntry"]
       48 LOADNIL                          R4
       49 LOADNIL                          R5
       50 FORGPREP                         R3
       51 GETTABLE                         R8 R2 R6
       52 JUMPIF                           R8 ; [+5]
       53 GETTABLEKS                       R8 R7 K8 ["SizeChangedConnection"]
       55 NAMECALL                         R8 R8 K9 ["Disconnect"]
       57 CALL                             R8 1 0
       58 FORGLOOP                         R3 2 ; [-8]
       60 SETTABLEKS                       R2 R0 K0 ["_proceduralModelToEntry"]
       62 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_handler"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_21:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [ipairs]
        4 MOVE                             R4 R1
        5 CALL                             R3 1 3
        6 FORGPREP_INEXT                   R3
        7 LOADN                            R8 1024
        8 JUMPIFLT                         R8 R6 ; [+85]
       10 GETTABLEKS                       R9 R0 K2 ["_partToEntry"]
       12 GETTABLE                         R8 R9 R7
       13 GETTABLEKS                       R9 R0 K2 ["_partToEntry"]
       15 LOADNIL                          R10
       16 SETTABLE                         R10 R9 R7
       17 JUMPIF                           R8 ; [+67]
       18 NAMECALL                         R9 R7 K3 ["GetRootPart"]
       20 CALL                             R9 1 1
       21 LOADNIL                          R10
       22 JUMPIFNOT                        R9 ; [+7]
       23 JUMPIFEQ                         R9 R7 ; [+6]
       25 LOADK                            R13 K4 ["CFrame"]
       26 NAMECALL                         R11 R9 K5 ["GetPropertyChangedSignal"]
       28 CALL                             R11 2 1
       29 MOVE                             R10 R11
       30 DUPTABLE                         R11 K10 [{"CFrameChangedSignal", "RootCFrameChangedSignal", "SizeChangedSignal", "Trampoline"}]
       31 LOADK                            R14 K4 ["CFrame"]
       32 NAMECALL                         R12 R7 K5 ["GetPropertyChangedSignal"]
       34 CALL                             R12 2 1
       35 SETTABLEKS                       R12 R11 K6 ["CFrameChangedSignal"]
       37 SETTABLEKS                       R10 R11 K7 ["RootCFrameChangedSignal"]
       39 LOADK                            R14 K11 ["Size"]
       40 NAMECALL                         R12 R7 K5 ["GetPropertyChangedSignal"]
       42 CALL                             R12 2 1
       43 SETTABLEKS                       R12 R11 K8 ["SizeChangedSignal"]
       45 NEWCLOSURE                       R12 P0
       46 CAPTURE                          VAL R0
       47 CAPTURE                          VAL R7
       48 SETTABLEKS                       R12 R11 K9 ["Trampoline"]
       50 MOVE                             R8 R11
       51 GETTABLEKS                       R11 R0 K12 ["_installed"]
       53 JUMPIFNOT                        R11 ; [+31]
       54 MOVE                             R11 R8
       55 GETTABLEKS                       R12 R11 K6 ["CFrameChangedSignal"]
       57 GETTABLEKS                       R14 R11 K9 ["Trampoline"]
       59 NAMECALL                         R12 R12 K13 ["Connect"]
       61 CALL                             R12 2 1
       62 SETTABLEKS                       R12 R11 K14 ["CFrameChangedConnection"]
       64 GETTABLEKS                       R12 R11 K7 ["RootCFrameChangedSignal"]
       66 JUMPIFNOT                        R12 ; [+9]
       67 GETTABLEKS                       R12 R11 K7 ["RootCFrameChangedSignal"]
       69 GETTABLEKS                       R14 R11 K9 ["Trampoline"]
       71 NAMECALL                         R12 R12 K13 ["Connect"]
       73 CALL                             R12 2 1
       74 SETTABLEKS                       R12 R11 K15 ["RootCFrameChangedConnection"]
       76 GETTABLEKS                       R12 R11 K8 ["SizeChangedSignal"]
       78 GETTABLEKS                       R14 R11 K9 ["Trampoline"]
       80 NAMECALL                         R12 R12 K13 ["Connect"]
       82 CALL                             R12 2 1
       83 SETTABLEKS                       R12 R11 K16 ["SizeChangedConnection"]
       85 GETTABLE                         R11 R2 R7
       86 NOT                              R10 R11
       87 FASTCALL1                        ASSERT R10 ; [+2]
       88 GETIMPORT                        R9 K18 [assert]
       90 CALL                             R9 1 0
       91 SETTABLE                         R8 R2 R7
       92 FORGLOOP                         R3 2 [inext] ; [-86]
       94 GETTABLEKS                       R3 R0 K12 ["_installed"]
       96 JUMPIFNOT                        R3 ; [+28]
       97 GETIMPORT                        R3 K20 [pairs]
       99 GETTABLEKS                       R4 R0 K2 ["_partToEntry"]
      101 CALL                             R3 1 3
      102 FORGPREP_NEXT                    R3
      103 GETTABLE                         R8 R2 R6
      104 JUMPIF                           R8 ; [+18]
      105 GETTABLEKS                       R8 R7 K14 ["CFrameChangedConnection"]
      107 NAMECALL                         R8 R8 K21 ["Disconnect"]
      109 CALL                             R8 1 0
      110 GETTABLEKS                       R8 R7 K15 ["RootCFrameChangedConnection"]
      112 JUMPIFNOT                        R8 ; [+5]
      113 GETTABLEKS                       R8 R7 K15 ["RootCFrameChangedConnection"]
      115 NAMECALL                         R8 R8 K21 ["Disconnect"]
      117 CALL                             R8 1 0
      118 GETTABLEKS                       R8 R7 K16 ["SizeChangedConnection"]
      120 NAMECALL                         R8 R8 K21 ["Disconnect"]
      122 CALL                             R8 1 0
      123 FORGLOOP                         R3 2 ; [-21]
      125 SETTABLEKS                       R2 R0 K2 ["_partToEntry"]
      127 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETTABLEKS                       R2 R1 K3 ["DraggerFramework"]
        9 GETIMPORT                        R3 K5 [game]
       11 LOADK                            R5 K6 ["DetachedAttachments"]
       12 NAMECALL                         R3 R3 K7 ["GetEngineFeature"]
       14 CALL                             R3 2 1
       15 DUPCLOSURE                       R4 K8 [PROTO_0]
       16 CAPTURE                          VAL R3
       17 GETIMPORT                        R5 K10 [require]
       19 GETTABLEKS                       R6 R2 K11 ["Flags"]
       21 GETTABLEKS                       R6 R6 K12 ["getFFlagDraggerEditProcModels"]
       23 CALL                             R5 1 1
       24 MOVE                             R6 R5
       25 CALL                             R6 0 1
       26 NEWTABLE                         R7 16 0
       28 SETTABLEKS                       R7 R7 K13 ["__index"]
       30 DUPCLOSURE                       R8 K14 [PROTO_2]
       31 CAPTURE                          VAL R7
       32 SETTABLEKS                       R8 R7 K15 ["new"]
       34 DUPCLOSURE                       R8 K16 [PROTO_3]
       35 DUPCLOSURE                       R9 K17 [PROTO_4]
       36 DUPCLOSURE                       R10 K18 [PROTO_5]
       37 CAPTURE                          VAL R3
       38 DUPCLOSURE                       R11 K19 [PROTO_6]
       39 CAPTURE                          VAL R3
       40 DUPCLOSURE                       R12 K20 [PROTO_7]
       41 DUPCLOSURE                       R13 K21 [PROTO_8]
       42 DUPCLOSURE                       R14 K22 [PROTO_9]
       43 SETTABLEKS                       R14 R7 K23 ["_hookupBasisConnection"]
       45 DUPCLOSURE                       R14 K24 [PROTO_10]
       46 SETTABLEKS                       R14 R7 K25 ["_disconnectBasisConnection"]
       48 DUPCLOSURE                       R14 K26 [PROTO_11]
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R6
       51 SETTABLEKS                       R14 R7 K27 ["install"]
       53 DUPCLOSURE                       R14 K28 [PROTO_12]
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R6
       56 SETTABLEKS                       R14 R7 K29 ["uninstall"]
       58 DUPCLOSURE                       R14 K30 [PROTO_13]
       59 CAPTURE                          VAL R6
       60 SETTABLEKS                       R14 R7 K31 ["setSelection"]
       62 DUPCLOSURE                       R14 K32 [PROTO_14]
       63 SETTABLEKS                       R14 R7 K33 ["setParts"]
       65 DUPCLOSURE                       R14 K34 [PROTO_15]
       66 SETTABLEKS                       R14 R7 K35 ["_setBasisObject"]
       68 DUPCLOSURE                       R14 K36 [PROTO_17]
       69 CAPTURE                          VAL R3
       70 SETTABLEKS                       R14 R7 K37 ["_setAttachments"]
       72 DUPCLOSURE                       R14 K38 [PROTO_19]
       73 SETTABLEKS                       R14 R7 K39 ["_setProceduralModels"]
       75 DUPCLOSURE                       R14 K40 [PROTO_21]
       76 SETTABLEKS                       R14 R7 K41 ["_setParts"]
       78 RETURN                           R7 1
