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
        0 DUPTABLE                         R3 K8 [{[1], ["_installed"] = False, ["_partToEntry"], ["_proceduralModelToEntry"], ["_attachmentToEntry"], ["_basisObject"] = }]
        1 SETTABLEKS                       R1 R3 K0 ["_handler"]
        3 NEWTABLE                         R4 0 0
        5 SETTABLEKS                       R4 R3 K3 ["_partToEntry"]
        7 NEWTABLE                         R4 0 0
        9 SETTABLEKS                       R4 R3 K4 ["_proceduralModelToEntry"]
       11 NEWTABLE                         R4 0 0
       13 SETTABLEKS                       R4 R3 K5 ["_attachmentToEntry"]
       15 GETUPVAL                         R4 0
       16 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       18 GETIMPORT                        R2 K10 [setmetatable]
       20 CALL                             R2 2 1
       21 NEWCLOSURE                       R3 P0
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 SETTABLEKS                       R3 R2 K11 ["_basisPivotChangedTrampoline"]
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
        3 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        5 LOADK                            R3 K1 ["Already installed"]
        6 GETIMPORT                        R1 K3 [assert]
        8 CALL                             R1 2 0
        9 LOADB                            R1 1
       10 SETTABLEKS                       R1 R0 K0 ["_installed"]
       12 GETIMPORT                        R1 K5 [pairs]
       14 GETTABLEKS                       R2 R0 K6 ["_partToEntry"]
       16 CALL                             R1 1 3
       17 FORGPREP_NEXT                    R1
       18 GETTABLEKS                       R6 R5 K7 ["CFrameChangedSignal"]
       20 GETTABLEKS                       R8 R5 K8 ["Trampoline"]
       22 NAMECALL                         R6 R6 K9 ["Connect"]
       24 CALL                             R6 2 1
       25 SETTABLEKS                       R6 R5 K10 ["CFrameChangedConnection"]
       27 GETTABLEKS                       R6 R5 K11 ["RootCFrameChangedSignal"]
       29 JUMPIFNOT                        R6 ; [+9]
       30 GETTABLEKS                       R6 R5 K11 ["RootCFrameChangedSignal"]
       32 GETTABLEKS                       R8 R5 K8 ["Trampoline"]
       34 NAMECALL                         R6 R6 K9 ["Connect"]
       36 CALL                             R6 2 1
       37 SETTABLEKS                       R6 R5 K12 ["RootCFrameChangedConnection"]
       39 GETTABLEKS                       R6 R5 K13 ["SizeChangedSignal"]
       41 GETTABLEKS                       R8 R5 K8 ["Trampoline"]
       43 NAMECALL                         R6 R6 K9 ["Connect"]
       45 CALL                             R6 2 1
       46 SETTABLEKS                       R6 R5 K14 ["SizeChangedConnection"]
       48 FORGLOOP                         R1 2 ; [-31]
       50 GETIMPORT                        R1 K5 [pairs]
       52 GETTABLEKS                       R2 R0 K15 ["_attachmentToEntry"]
       54 CALL                             R1 1 3
       55 FORGPREP_NEXT                    R1
       56 GETTABLEKS                       R6 R5 K7 ["CFrameChangedSignal"]
       58 GETTABLEKS                       R8 R5 K8 ["Trampoline"]
       60 NAMECALL                         R6 R6 K9 ["Connect"]
       62 CALL                             R6 2 1
       63 SETTABLEKS                       R6 R5 K10 ["CFrameChangedConnection"]
       65 GETUPVAL                         R6 0
       66 JUMPIFNOT                        R6 ; [+12]
       67 GETTABLEKS                       R6 R5 K16 ["CameraCFrameChangedSignal"]
       69 JUMPIFNOT                        R6 ; [+9]
       70 GETTABLEKS                       R6 R5 K16 ["CameraCFrameChangedSignal"]
       72 GETTABLEKS                       R8 R5 K8 ["Trampoline"]
       74 NAMECALL                         R6 R6 K9 ["Connect"]
       76 CALL                             R6 2 1
       77 SETTABLEKS                       R6 R5 K17 ["CameraCFrameChangedConnection"]
       79 FORGLOOP                         R1 2 ; [-24]
       81 GETUPVAL                         R1 1
       82 JUMPIFNOT                        R1 ; [+16]
       83 GETTABLEKS                       R1 R0 K18 ["_proceduralModelToEntry"]
       85 LOADNIL                          R2
       86 LOADNIL                          R3
       87 FORGPREP                         R1
       88 GETTABLEKS                       R6 R5 K13 ["SizeChangedSignal"]
       90 GETTABLEKS                       R8 R5 K8 ["Trampoline"]
       92 NAMECALL                         R6 R6 K9 ["Connect"]
       94 CALL                             R6 2 1
       95 SETTABLEKS                       R6 R5 K14 ["SizeChangedConnection"]
       97 FORGLOOP                         R1 2 ; [-10]
       99 GETTABLEKS                       R1 R0 K19 ["_basisObject"]
      101 JUMPIFNOT                        R1 ; [+3]
      102 NAMECALL                         R1 R0 K20 ["_hookupBasisConnection"]
      104 CALL                             R1 1 0
      105 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["_installed"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        4 LOADK                            R3 K1 ["Not installed"]
        5 GETIMPORT                        R1 K3 [assert]
        7 CALL                             R1 2 0
        8 LOADB                            R1 0
        9 SETTABLEKS                       R1 R0 K0 ["_installed"]
       11 GETIMPORT                        R1 K5 [pairs]
       13 GETTABLEKS                       R2 R0 K6 ["_partToEntry"]
       15 CALL                             R1 1 3
       16 FORGPREP_NEXT                    R1
       17 GETTABLEKS                       R6 R5 K7 ["CFrameChangedConnection"]
       19 NAMECALL                         R6 R6 K8 ["Disconnect"]
       21 CALL                             R6 1 0
       22 GETTABLEKS                       R6 R5 K9 ["RootCFrameChangedConnection"]
       24 JUMPIFNOT                        R6 ; [+5]
       25 GETTABLEKS                       R6 R5 K9 ["RootCFrameChangedConnection"]
       27 NAMECALL                         R6 R6 K8 ["Disconnect"]
       29 CALL                             R6 1 0
       30 GETTABLEKS                       R6 R5 K10 ["SizeChangedConnection"]
       32 NAMECALL                         R6 R6 K8 ["Disconnect"]
       34 CALL                             R6 1 0
       35 FORGLOOP                         R1 2 ; [-19]
       37 GETIMPORT                        R1 K5 [pairs]
       39 GETTABLEKS                       R2 R0 K11 ["_attachmentToEntry"]
       41 CALL                             R1 1 3
       42 FORGPREP_NEXT                    R1
       43 GETTABLEKS                       R6 R5 K7 ["CFrameChangedConnection"]
       45 NAMECALL                         R6 R6 K8 ["Disconnect"]
       47 CALL                             R6 1 0
       48 GETUPVAL                         R6 0
       49 JUMPIFNOT                        R6 ; [+8]
       50 GETTABLEKS                       R6 R5 K12 ["CameraCFrameChangedConnection"]
       52 JUMPIFNOT                        R6 ; [+5]
       53 GETTABLEKS                       R6 R5 K12 ["CameraCFrameChangedConnection"]
       55 NAMECALL                         R6 R6 K8 ["Disconnect"]
       57 CALL                             R6 1 0
       58 FORGLOOP                         R1 2 ; [-16]
       60 GETUPVAL                         R1 1
       61 JUMPIFNOT                        R1 ; [+12]
       62 GETTABLEKS                       R1 R0 K13 ["_proceduralModelToEntry"]
       64 LOADNIL                          R2
       65 LOADNIL                          R3
       66 FORGPREP                         R1
       67 GETTABLEKS                       R6 R5 K10 ["SizeChangedConnection"]
       69 NAMECALL                         R6 R6 K8 ["Disconnect"]
       71 CALL                             R6 1 0
       72 FORGLOOP                         R1 2 ; [-6]
       74 GETTABLEKS                       R1 R0 K14 ["_basisObject"]
       76 JUMPIFNOT                        R1 ; [+3]
       77 NAMECALL                         R1 R0 K15 ["_disconnectBasisConnection"]
       79 CALL                             R1 1 0
       80 RETURN                           R0 0

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
        8 JUMPIFLT                         R8 R6 ; [+86]
       10 GETTABLEKS                       R9 R0 K2 ["_partToEntry"]
       12 GETTABLE                         R8 R9 R7
       13 GETTABLEKS                       R9 R0 K2 ["_partToEntry"]
       15 LOADNIL                          R10
       16 SETTABLE                         R10 R9 R7
       17 JUMPIF                           R8 ; [+66]
       18 GETTABLEKS                       R9 R7 K3 ["AssemblyRootPart"]
       20 LOADNIL                          R10
       21 JUMPIFNOT                        R9 ; [+7]
       22 JUMPIFEQ                         R9 R7 ; [+6]
       24 LOADK                            R13 K4 ["CFrame"]
       25 NAMECALL                         R11 R9 K5 ["GetPropertyChangedSignal"]
       27 CALL                             R11 2 1
       28 MOVE                             R10 R11
       29 DUPTABLE                         R11 K10 [{"CFrameChangedSignal", "RootCFrameChangedSignal", "SizeChangedSignal", "Trampoline"}]
       30 LOADK                            R14 K4 ["CFrame"]
       31 NAMECALL                         R12 R7 K5 ["GetPropertyChangedSignal"]
       33 CALL                             R12 2 1
       34 SETTABLEKS                       R12 R11 K6 ["CFrameChangedSignal"]
       36 SETTABLEKS                       R10 R11 K7 ["RootCFrameChangedSignal"]
       38 LOADK                            R14 K11 ["Size"]
       39 NAMECALL                         R12 R7 K5 ["GetPropertyChangedSignal"]
       41 CALL                             R12 2 1
       42 SETTABLEKS                       R12 R11 K8 ["SizeChangedSignal"]
       44 NEWCLOSURE                       R12 P0
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R7
       47 SETTABLEKS                       R12 R11 K9 ["Trampoline"]
       49 MOVE                             R8 R11
       50 GETTABLEKS                       R11 R0 K12 ["_installed"]
       52 JUMPIFNOT                        R11 ; [+31]
       53 MOVE                             R11 R8
       54 GETTABLEKS                       R12 R11 K6 ["CFrameChangedSignal"]
       56 GETTABLEKS                       R14 R11 K9 ["Trampoline"]
       58 NAMECALL                         R12 R12 K13 ["Connect"]
       60 CALL                             R12 2 1
       61 SETTABLEKS                       R12 R11 K14 ["CFrameChangedConnection"]
       63 GETTABLEKS                       R12 R11 K7 ["RootCFrameChangedSignal"]
       65 JUMPIFNOT                        R12 ; [+9]
       66 GETTABLEKS                       R12 R11 K7 ["RootCFrameChangedSignal"]
       68 GETTABLEKS                       R14 R11 K9 ["Trampoline"]
       70 NAMECALL                         R12 R12 K13 ["Connect"]
       72 CALL                             R12 2 1
       73 SETTABLEKS                       R12 R11 K15 ["RootCFrameChangedConnection"]
       75 GETTABLEKS                       R12 R11 K8 ["SizeChangedSignal"]
       77 GETTABLEKS                       R14 R11 K9 ["Trampoline"]
       79 NAMECALL                         R12 R12 K13 ["Connect"]
       81 CALL                             R12 2 1
       82 SETTABLEKS                       R12 R11 K16 ["SizeChangedConnection"]
       84 GETTABLE                         R11 R2 R7
       85 NOT                              R10 R11
       86 FASTCALL2K                       ASSERT R10 K17 ; [+4]
       88 LOADK                            R11 K17 ["Duplicate in selection"]
       89 GETIMPORT                        R9 K19 [assert]
       91 CALL                             R9 2 0
       92 SETTABLE                         R8 R2 R7
       93 FORGLOOP                         R3 2 [inext] ; [-87]
       95 GETTABLEKS                       R3 R0 K12 ["_installed"]
       97 JUMPIFNOT                        R3 ; [+28]
       98 GETIMPORT                        R3 K21 [pairs]
      100 GETTABLEKS                       R4 R0 K2 ["_partToEntry"]
      102 CALL                             R3 1 3
      103 FORGPREP_NEXT                    R3
      104 GETTABLE                         R8 R2 R6
      105 JUMPIF                           R8 ; [+18]
      106 GETTABLEKS                       R8 R7 K14 ["CFrameChangedConnection"]
      108 NAMECALL                         R8 R8 K22 ["Disconnect"]
      110 CALL                             R8 1 0
      111 GETTABLEKS                       R8 R7 K15 ["RootCFrameChangedConnection"]
      113 JUMPIFNOT                        R8 ; [+5]
      114 GETTABLEKS                       R8 R7 K15 ["RootCFrameChangedConnection"]
      116 NAMECALL                         R8 R8 K22 ["Disconnect"]
      118 CALL                             R8 1 0
      119 GETTABLEKS                       R8 R7 K16 ["SizeChangedConnection"]
      121 NAMECALL                         R8 R8 K22 ["Disconnect"]
      123 CALL                             R8 1 0
      124 FORGLOOP                         R3 2 ; [-21]
      126 SETTABLEKS                       R2 R0 K2 ["_partToEntry"]
      128 RETURN                           R0 0

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
       19 GETTABLEKS                       R6 R2 K11 ["Types"]
       21 CALL                             R5 1 1
       22 GETIMPORT                        R6 K10 [require]
       24 GETTABLEKS                       R7 R2 K12 ["Flags"]
       26 GETTABLEKS                       R7 R7 K13 ["getFFlagDraggerEditProcModels"]
       28 CALL                             R6 1 1
       29 MOVE                             R7 R6
       30 CALL                             R7 0 1
       31 NEWTABLE                         R8 16 0
       33 SETTABLEKS                       R8 R8 K14 ["__index"]
       35 DUPCLOSURE                       R9 K15 [PROTO_2]
       36 CAPTURE                          VAL R8
       37 SETTABLEKS                       R9 R8 K16 ["new"]
       39 DUPCLOSURE                       R9 K17 [PROTO_3]
       40 DUPCLOSURE                       R10 K18 [PROTO_4]
       41 DUPCLOSURE                       R11 K19 [PROTO_5]
       42 CAPTURE                          VAL R3
       43 DUPCLOSURE                       R12 K20 [PROTO_6]
       44 CAPTURE                          VAL R3
       45 DUPCLOSURE                       R13 K21 [PROTO_7]
       46 DUPCLOSURE                       R14 K22 [PROTO_8]
       47 DUPCLOSURE                       R15 K23 [PROTO_9]
       48 SETTABLEKS                       R15 R8 K24 ["_hookupBasisConnection"]
       50 DUPCLOSURE                       R15 K25 [PROTO_10]
       51 SETTABLEKS                       R15 R8 K26 ["_disconnectBasisConnection"]
       53 DUPCLOSURE                       R15 K27 [PROTO_11]
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R7
       56 SETTABLEKS                       R15 R8 K28 ["install"]
       58 DUPCLOSURE                       R15 K29 [PROTO_12]
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R7
       61 SETTABLEKS                       R15 R8 K30 ["uninstall"]
       63 DUPCLOSURE                       R15 K31 [PROTO_13]
       64 CAPTURE                          VAL R7
       65 SETTABLEKS                       R15 R8 K32 ["setSelection"]
       67 DUPCLOSURE                       R15 K33 [PROTO_14]
       68 SETTABLEKS                       R15 R8 K34 ["setParts"]
       70 DUPCLOSURE                       R15 K35 [PROTO_15]
       71 SETTABLEKS                       R15 R8 K36 ["_setBasisObject"]
       73 DUPCLOSURE                       R15 K37 [PROTO_17]
       74 CAPTURE                          VAL R3
       75 SETTABLEKS                       R15 R8 K38 ["_setAttachments"]
       77 DUPCLOSURE                       R15 K39 [PROTO_19]
       78 SETTABLEKS                       R15 R8 K40 ["_setProceduralModels"]
       80 DUPCLOSURE                       R15 K41 [PROTO_21]
       81 SETTABLEKS                       R15 R8 K42 ["_setParts"]
       83 RETURN                           R8 1
