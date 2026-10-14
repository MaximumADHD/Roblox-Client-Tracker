PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Folder"]
        3 CALL                             R0 1 1
        4 LOADK                            R1 K4 ["LoadingSkeleton3DBox"]
        5 SETTABLEKS                       R1 R0 K5 ["Name"]
        7 LOADB                            R1 0
        8 SETTABLEKS                       R1 R0 K6 ["Archivable"]
       10 GETUPVAL                         R1 0
       11 SETTABLEKS                       R1 R0 K7 ["Parent"]
       13 RETURN                           R0 1

PROTO_1:
        0 LOADK                            R3 K0 ["Model"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 NAMECALL                         R1 R0 K2 ["GetBoundingBox"]
        7 CALL                             R1 1 2
        8 RETURN                           R2 1
        9 LOADK                            R3 K3 ["BasePart"]
       10 NAMECALL                         R1 R0 K1 ["IsA"]
       12 CALL                             R1 2 1
       13 JUMPIFNOT                        R1 ; [+3]
       14 GETTABLEKS                       R1 R0 K4 ["Size"]
       16 RETURN                           R1 1
       17 LOADK                            R1 K5 [{0, 0, 0}]
       18 RETURN                           R1 1

PROTO_2:
        0 LOADK                            R4 K0 ["Model"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+5]
        5 NAMECALL                         R2 R0 K2 ["GetBoundingBox"]
        7 CALL                             R2 1 2
        8 MOVE                             R1 R3
        9 JUMP                             ; [+9]
       10 LOADK                            R4 K3 ["BasePart"]
       11 NAMECALL                         R2 R0 K1 ["IsA"]
       13 CALL                             R2 2 1
       14 JUMPIFNOT                        R2 ; [+3]
       15 GETTABLEKS                       R1 R0 K4 ["Size"]
       17 JUMP                             ; [+1]
       18 LOADK                            R1 K5 [{0, 0, 0}]
       19 GETTABLEKS                       R2 R1 K6 ["Magnitude"]
       21 LOADK                            R3 K7 [0.001]
       22 JUMPIFNOTLT                      R2 R3 ; [+3]
       24 LOADK                            R2 K8 [{4, 4, 4}]
       25 RETURN                           R2 1
       26 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["fill"]
        2 GETTABLEKS                       R3 R0 K1 ["destroyed"]
        4 JUMPIF                           R3 ; [+2]
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 RETURN                           R0 0
        8 LOADK                            R7 K2 ["Model"]
        9 NAMECALL                         R5 R1 K3 ["IsA"]
       11 CALL                             R5 2 1
       12 JUMPIFNOT                        R5 ; [+5]
       13 NAMECALL                         R5 R1 K4 ["GetBoundingBox"]
       15 CALL                             R5 1 2
       16 MOVE                             R4 R6
       17 JUMP                             ; [+9]
       18 LOADK                            R7 K5 ["BasePart"]
       19 NAMECALL                         R5 R1 K3 ["IsA"]
       21 CALL                             R5 2 1
       22 JUMPIFNOT                        R5 ; [+3]
       23 GETTABLEKS                       R4 R1 K6 ["Size"]
       25 JUMP                             ; [+1]
       26 LOADK                            R4 K7 [{0, 0, 0}]
       27 GETTABLEKS                       R5 R4 K8 ["Magnitude"]
       29 LOADK                            R6 K9 [0.001]
       30 JUMPIFNOTLT                      R5 R6 ; [+3]
       32 LOADK                            R3 K10 [{4, 4, 4}]
       33 JUMP                             ; [+1]
       34 MOVE                             R3 R4
       35 SETTABLEKS                       R3 R2 K6 ["Size"]
       37 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R2 R0 K0 ["fill"]
        6 GETTABLEKS                       R3 R0 K1 ["destroyed"]
        8 JUMPIF                           R3 ; [+32]
        9 JUMPIFNOTEQKNIL                  R2 ; [+2]
       11 RETURN                           R0 0
       12 LOADK                            R7 K2 ["Model"]
       13 NAMECALL                         R5 R1 K3 ["IsA"]
       15 CALL                             R5 2 1
       16 JUMPIFNOT                        R5 ; [+5]
       17 NAMECALL                         R5 R1 K4 ["GetBoundingBox"]
       19 CALL                             R5 1 2
       20 MOVE                             R4 R6
       21 JUMP                             ; [+9]
       22 LOADK                            R7 K5 ["BasePart"]
       23 NAMECALL                         R5 R1 K3 ["IsA"]
       25 CALL                             R5 2 1
       26 JUMPIFNOT                        R5 ; [+3]
       27 GETTABLEKS                       R4 R1 K6 ["Size"]
       29 JUMP                             ; [+1]
       30 LOADK                            R4 K7 [{0, 0, 0}]
       31 GETTABLEKS                       R5 R4 K8 ["Magnitude"]
       33 LOADK                            R6 K9 [0.001]
       34 JUMPIFNOTLT                      R5 R6 ; [+3]
       36 LOADK                            R3 K10 [{4, 4, 4}]
       37 JUMP                             ; [+1]
       38 MOVE                             R3 R4
       39 SETTABLEKS                       R3 R2 K6 ["Size"]
       41 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETIMPORT                        R0 K2 [task.defer]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_6:
        0 LOADK                            R3 K0 ["BasePart"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+19]
        5 LOADK                            R3 K2 ["Size"]
        6 NAMECALL                         R1 R0 K3 ["GetPropertyChangedSignal"]
        8 CALL                             R1 2 1
        9 GETUPVAL                         R3 0
       10 NAMECALL                         R1 R1 K4 ["Connect"]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 1
       14 SETTABLE                         R1 R2 R0
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K5 ["connections"]
       18 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       20 MOVE                             R4 R1
       21 GETIMPORT                        R2 K8 [table.insert]
       23 CALL                             R2 2 0
       24 RETURN                           R0 0

PROTO_7:
        0 LOADK                            R3 K0 ["BasePart"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+19]
        5 LOADK                            R3 K2 ["Size"]
        6 NAMECALL                         R1 R0 K3 ["GetPropertyChangedSignal"]
        8 CALL                             R1 2 1
        9 GETUPVAL                         R3 0
       10 NAMECALL                         R1 R1 K4 ["Connect"]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 1
       14 SETTABLE                         R1 R2 R0
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K5 ["connections"]
       18 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       20 MOVE                             R4 R1
       21 GETIMPORT                        R2 K8 [table.insert]
       23 CALL                             R2 2 0
       24 GETUPVAL                         R1 3
       25 JUMPIFNOT                        R1 ; [+1]
       26 RETURN                           R0 0
       27 LOADB                            R1 1
       28 SETUPVAL                         R1 3
       29 GETIMPORT                        R1 K11 [task.defer]
       31 NEWCLOSURE                       R2 P0
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          UPVAL U4
       35 CALL                             R1 1 0
       36 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+23]
        4 NAMECALL                         R2 R1 K0 ["Disconnect"]
        6 CALL                             R2 1 0
        7 GETUPVAL                         R2 0
        8 LOADNIL                          R3
        9 SETTABLE                         R3 R2 R0
       10 GETIMPORT                        R2 K3 [table.find]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K4 ["connections"]
       15 MOVE                             R4 R1
       16 CALL                             R2 2 1
       17 JUMPIFEQKNIL                     R2 ; [+8]
       19 GETIMPORT                        R3 K6 [table.remove]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K4 ["connections"]
       24 MOVE                             R5 R2
       25 CALL                             R3 2 0
       26 GETUPVAL                         R2 2
       27 JUMPIFNOT                        R2 ; [+1]
       28 RETURN                           R0 0
       29 LOADB                            R2 1
       30 SETUPVAL                         R2 2
       31 GETIMPORT                        R2 K9 [task.defer]
       33 NEWCLOSURE                       R3 P0
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          UPVAL U3
       37 CALL                             R2 1 0
       38 RETURN                           R0 0

PROTO_9:
        0 LOADB                            R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          REF R2
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 LOADK                            R6 K0 ["BasePart"]
        6 NAMECALL                         R4 R1 K1 ["IsA"]
        8 CALL                             R4 2 1
        9 JUMPIFNOT                        R4 ; [+16]
       10 GETTABLEKS                       R5 R0 K2 ["connections"]
       12 LOADK                            R8 K3 ["Size"]
       13 NAMECALL                         R6 R1 K4 ["GetPropertyChangedSignal"]
       15 CALL                             R6 2 1
       16 MOVE                             R8 R3
       17 NAMECALL                         R6 R6 K5 ["Connect"]
       19 CALL                             R6 2 -1
       20 FASTCALL                         TABLE_INSERT ; [+2]
       21 GETIMPORT                        R4 K8 [table.insert]
       23 CALL                             R4 -1 0
       24 CLOSEUPVALS                      R2
       25 RETURN                           R0 0
       26 LOADK                            R6 K9 ["Model"]
       27 NAMECALL                         R4 R1 K1 ["IsA"]
       29 CALL                             R4 2 1
       30 JUMPIF                           R4 ; [+2]
       31 CLOSEUPVALS                      R2
       32 RETURN                           R0 0
       33 NEWTABLE                         R4 0 0
       35 NEWCLOSURE                       R5 P1
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R0
       39 NAMECALL                         R6 R1 K10 ["GetDescendants"]
       41 CALL                             R6 1 3
       42 FORGPREP                         R6
       43 LOADK                            R13 K0 ["BasePart"]
       44 NAMECALL                         R11 R10 K1 ["IsA"]
       46 CALL                             R11 2 1
       47 JUMPIFNOT                        R11 ; [+17]
       48 LOADK                            R13 K3 ["Size"]
       49 NAMECALL                         R11 R10 K4 ["GetPropertyChangedSignal"]
       51 CALL                             R11 2 1
       52 MOVE                             R13 R3
       53 NAMECALL                         R11 R11 K5 ["Connect"]
       55 CALL                             R11 2 1
       56 SETTABLE                         R11 R4 R10
       57 GETTABLEKS                       R13 R0 K2 ["connections"]
       59 FASTCALL2                        TABLE_INSERT R13 R11 ; [+4]
       61 MOVE                             R14 R11
       62 GETIMPORT                        R12 K8 [table.insert]
       64 CALL                             R12 2 0
       65 FORGLOOP                         R6 2 ; [-23]
       67 GETTABLEKS                       R7 R0 K2 ["connections"]
       69 GETTABLEKS                       R8 R1 K11 ["DescendantAdded"]
       71 NEWCLOSURE                       R10 P2
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R0
       75 CAPTURE                          REF R2
       76 CAPTURE                          VAL R1
       77 NAMECALL                         R8 R8 K5 ["Connect"]
       79 CALL                             R8 2 -1
       80 FASTCALL                         TABLE_INSERT ; [+2]
       81 GETIMPORT                        R6 K8 [table.insert]
       83 CALL                             R6 -1 0
       84 GETTABLEKS                       R7 R0 K2 ["connections"]
       86 GETTABLEKS                       R8 R1 K12 ["DescendantRemoving"]
       88 NEWCLOSURE                       R10 P3
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R0
       91 CAPTURE                          REF R2
       92 CAPTURE                          VAL R1
       93 NAMECALL                         R8 R8 K5 ["Connect"]
       95 CALL                             R8 2 -1
       96 FASTCALL                         TABLE_INSERT ; [+2]
       97 GETIMPORT                        R6 K8 [table.insert]
       99 CALL                             R6 -1 0
      100 CLOSEUPVALS                      R2
      101 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["pulseColors"]
        3 CALL                             R1 0 2
        4 SETTABLEKS                       R1 R0 K1 ["Color3"]
        6 LOADK                            R3 K2 [0.5]
        7 SETTABLEKS                       R3 R0 K3 ["Transparency"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K4 ["ReducedMotionEnabled"]
       12 JUMPIFNOT                        R4 ; [+2]
       13 DUPTABLE                         R3 K6 [{["Transparency"] = 0.4}]
       14 JUMP                             ; [+3]
       15 DUPTABLE                         R3 K7 [{["Color3"], ["Transparency"] = 0.4}]
       16 SETTABLEKS                       R2 R3 K1 ["Color3"]
       18 GETUPVAL                         R4 2
       19 MOVE                             R6 R0
       20 GETIMPORT                        R7 K10 [TweenInfo.new]
       22 LOADK                            R8 K11 [0.75]
       23 GETIMPORT                        R9 K15 [Enum.EasingStyle.Sine]
       25 GETIMPORT                        R10 K18 [Enum.EasingDirection.InOut]
       27 LOADN                            R11 -1
       28 LOADB                            R12 1
       29 CALL                             R7 5 1
       30 MOVE                             R8 R3
       31 NAMECALL                         R4 R4 K19 ["Create"]
       33 CALL                             R4 4 1
       34 NAMECALL                         R5 R4 K20 ["Play"]
       36 CALL                             R5 1 0
       37 RETURN                           R4 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["fill"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+58]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["colorForStatus"]
        7 GETTABLEKS                       R3 R0 K2 ["status"]
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K3 ["fillTransparencyForStatus"]
       13 GETTABLEKS                       R4 R0 K2 ["status"]
       15 CALL                             R3 1 1
       16 GETTABLEKS                       R4 R0 K4 ["container"]
       18 NAMECALL                         R4 R4 K5 ["GetChildren"]
       20 CALL                             R4 1 3
       21 FORGPREP                         R4
       22 LOADK                            R11 K6 ["Highlight"]
       23 NAMECALL                         R9 R8 K7 ["IsA"]
       25 CALL                             R9 2 1
       26 JUMPIFNOT                        R9 ; [+7]
       27 SETTABLEKS                       R2 R8 K8 ["FillColor"]
       29 SETTABLEKS                       R2 R8 K9 ["OutlineColor"]
       31 SETTABLEKS                       R3 R8 K10 ["FillTransparency"]
       33 JUMP                             ; [+24]
       34 LOADK                            R11 K11 ["SelectionBox"]
       35 NAMECALL                         R9 R8 K7 ["IsA"]
       37 CALL                             R9 2 1
       38 JUMPIFNOT                        R9 ; [+3]
       39 SETTABLEKS                       R2 R8 K12 ["Color3"]
       41 JUMP                             ; [+16]
       42 LOADK                            R11 K13 ["BoxHandleAdornment"]
       43 NAMECALL                         R9 R8 K7 ["IsA"]
       45 CALL                             R9 2 1
       46 JUMPIFNOT                        R9 ; [+11]
       47 SETTABLEKS                       R2 R8 K12 ["Color3"]
       49 GETTABLEKS                       R10 R8 K14 ["Name"]
       51 JUMPIFNOTEQKS                    R10 K15 ["Fill"] ; [+3]
       53 MOVE                             R9 R3
       54 JUMP                             ; [+1]
       55 LOADN                            R9 0
       56 SETTABLEKS                       R9 R8 K16 ["Transparency"]
       58 FORGLOOP                         R4 2 ; [-37]
       60 RETURN                           R0 0
       61 GETUPVAL                         R4 1
       62 GETTABLEKS                       R5 R0 K2 ["status"]
       64 GETTABLE                         R3 R4 R5
       65 JUMPIFEQKB                       R3 TRUE ; [+2]
       67 LOADB                            R2 0 +1
       68 LOADB                            R2 1
       69 JUMPIFNOT                        R2 ; [+5]
       70 GETTABLEKS                       R3 R0 K17 ["pulseTween"]
       72 JUMPIFEQKNIL                     R3 ; [+2]
       74 RETURN                           R0 0
       75 GETTABLEKS                       R3 R0 K17 ["pulseTween"]
       77 JUMPIFEQKNIL                     R3 ; [+9]
       79 GETTABLEKS                       R3 R0 K17 ["pulseTween"]
       81 NAMECALL                         R3 R3 K18 ["Cancel"]
       83 CALL                             R3 1 0
       84 LOADNIL                          R3
       85 SETTABLEKS                       R3 R0 K17 ["pulseTween"]
       87 JUMPIFNOT                        R2 ; [+6]
       88 GETUPVAL                         R3 2
       89 MOVE                             R4 R1
       90 CALL                             R3 1 1
       91 SETTABLEKS                       R3 R0 K17 ["pulseTween"]
       93 RETURN                           R0 0
       94 GETUPVAL                         R3 0
       95 GETTABLEKS                       R3 R3 K1 ["colorForStatus"]
       97 GETTABLEKS                       R4 R0 K2 ["status"]
       99 CALL                             R3 1 1
      100 SETTABLEKS                       R3 R1 K12 ["Color3"]
      102 GETUPVAL                         R3 0
      103 GETTABLEKS                       R3 R3 K3 ["fillTransparencyForStatus"]
      105 GETTABLEKS                       R4 R0 K2 ["status"]
      107 CALL                             R3 1 1
      108 SETTABLEKS                       R3 R1 K16 ["Transparency"]
      110 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["destroyed"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K0 ["destroyed"]
        7 GETTABLEKS                       R1 R0 K1 ["autoDestroyThread"]
        9 JUMPIFEQKNIL                     R1 ; [+9]
       11 GETIMPORT                        R1 K4 [task.cancel]
       13 GETTABLEKS                       R2 R0 K1 ["autoDestroyThread"]
       15 CALL                             R1 1 0
       16 LOADNIL                          R1
       17 SETTABLEKS                       R1 R0 K1 ["autoDestroyThread"]
       19 GETTABLEKS                       R1 R0 K5 ["pulseTween"]
       21 JUMPIFEQKNIL                     R1 ; [+9]
       23 GETTABLEKS                       R1 R0 K5 ["pulseTween"]
       25 NAMECALL                         R1 R1 K6 ["Cancel"]
       27 CALL                             R1 1 0
       28 LOADNIL                          R1
       29 SETTABLEKS                       R1 R0 K5 ["pulseTween"]
       31 GETTABLEKS                       R1 R0 K7 ["connections"]
       33 LOADNIL                          R2
       34 LOADNIL                          R3
       35 FORGPREP                         R1
       36 NAMECALL                         R6 R5 K8 ["Disconnect"]
       38 CALL                             R6 1 0
       39 FORGLOOP                         R1 2 ; [-4]
       41 GETIMPORT                        R1 K11 [table.clear]
       43 GETTABLEKS                       R2 R0 K7 ["connections"]
       45 CALL                             R1 1 0
       46 GETTABLEKS                       R1 R0 K12 ["billboard"]
       48 GETTABLEKS                       R1 R1 K13 ["destroy"]
       50 CALL                             R1 0 0
       51 GETTABLEKS                       R1 R0 K14 ["container"]
       53 NAMECALL                         R1 R1 K15 ["Destroy"]
       55 CALL                             R1 1 0
       56 GETIMPORT                        R1 K17 [table.find]
       58 GETUPVAL                         R2 0
       59 MOVE                             R3 R0
       60 CALL                             R1 2 1
       61 JUMPIFEQKNIL                     R1 ; [+6]
       63 GETIMPORT                        R2 K19 [table.remove]
       65 GETUPVAL                         R3 0
       66 MOVE                             R4 R1
       67 CALL                             R2 2 0
       68 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["autoDestroyThread"]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R4 R0 K0 ["destroyed"]
        2 JUMPIFNOT                        R4 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R4 R0 K1 ["autoDestroyThread"]
        6 JUMPIFEQKNIL                     R4 ; [+9]
        8 GETIMPORT                        R4 K4 [task.cancel]
       10 GETTABLEKS                       R5 R0 K1 ["autoDestroyThread"]
       12 CALL                             R4 1 0
       13 LOADNIL                          R4
       14 SETTABLEKS                       R4 R0 K1 ["autoDestroyThread"]
       16 SETTABLEKS                       R1 R0 K5 ["status"]
       18 GETUPVAL                         R4 0
       19 MOVE                             R5 R0
       20 CALL                             R4 1 0
       21 JUMPIFEQKS                       R1 K6 ["failed"] ; [+2]
       23 LOADB                            R4 0 +1
       24 LOADB                            R4 1
       25 MOVE                             R5 R3
       26 JUMPIF                           R5 ; [+2]
       27 NEWTABLE                         R5 0 0
       29 GETTABLEKS                       R7 R5 K7 ["onRevert"]
       31 JUMPIFNOTEQKNIL                  R7 ; [+2]
       33 LOADB                            R6 0 +1
       34 LOADB                            R6 1
       35 MOVE                             R7 R4
       36 JUMPIF                           R7 ; [+6]
       37 MOVE                             R7 R6
       38 JUMPIF                           R7 ; [+4]
       39 JUMPIFNOTEQKNIL                  R2 ; [+2]
       41 LOADB                            R7 0 +1
       42 LOADB                            R7 1
       43 SETTABLEKS                       R7 R0 K8 ["hasLabel"]
       45 GETTABLEKS                       R7 R0 K9 ["billboard"]
       47 GETTABLEKS                       R7 R7 K10 ["setEnabled"]
       49 GETTABLEKS                       R8 R0 K8 ["hasLabel"]
       51 JUMPIFNOT                        R8 ; [+2]
       52 GETTABLEKS                       R8 R0 K11 ["labelVisible"]
       54 CALL                             R7 1 0
       55 GETTABLEKS                       R7 R0 K9 ["billboard"]
       57 GETTABLEKS                       R7 R7 K12 ["setActive"]
       59 MOVE                             R8 R4
       60 JUMPIF                           R8 ; [+8]
       61 MOVE                             R8 R6
       62 JUMPIF                           R8 ; [+6]
       63 GETTABLEKS                       R9 R5 K13 ["onActivated"]
       65 JUMPIFNOTEQKNIL                  R9 ; [+2]
       67 LOADB                            R8 0 +1
       68 LOADB                            R8 1
       69 CALL                             R7 1 0
       70 GETTABLEKS                       R7 R0 K9 ["billboard"]
       72 GETTABLEKS                       R7 R7 K14 ["render"]
       74 MOVE                             R8 R1
       75 ORK                              R9 R2 K15 [""]
       76 MOVE                             R10 R5
       77 CALL                             R7 3 0
       78 JUMPIFNOTEQKS                    R1 K16 ["succeeded"] ; [+17]
       80 GETTABLEKS                       R7 R0 K17 ["autoDestroyOnSuccess"]
       82 JUMPIFNOT                        R7 ; [+13]
       83 JUMPIFNOT                        R6 ; [+2]
       84 LOADN                            R7 10
       85 JUMP                             ; [+1]
       86 LOADK                            R7 K18 [1.5]
       87 GETIMPORT                        R8 K20 [task.delay]
       89 MOVE                             R9 R7
       90 NEWCLOSURE                       R10 P0
       91 CAPTURE                          VAL R0
       92 CAPTURE                          UPVAL U1
       93 CALL                             R8 2 1
       94 SETTABLEKS                       R8 R0 K1 ["autoDestroyThread"]
       96 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["destroyed"]
        2 JUMPIFNOT                        R2 ; [+1]
        3 RETURN                           R0 0
        4 SETTABLEKS                       R1 R0 K1 ["labelVisible"]
        6 GETTABLEKS                       R2 R0 K2 ["billboard"]
        8 GETTABLEKS                       R2 R2 K3 ["setEnabled"]
       10 GETTABLEKS                       R4 R0 K4 ["hasLabel"]
       12 AND                              R3 R4 R1
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_17:
        0 LOADNIL                          R4
        1 GETUPVAL                         R5 0
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 NEWCLOSURE                       R8 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          REF R4
        7 CALL                             R5 3 1
        8 DUPTABLE                         R6 K15 [{[1] = "pending", ["destroyed"] = False, ["autoDestroyOnSuccess"], ["hasLabel"] = False, ["labelVisible"] = True, ["container"], ["billboard"], ["connections"], ["autoDestroyThread"] = , ["pulseTween"] = , ["fill"]}]
        9 LOADB                            R7 1
       10 JUMPIFEQKNIL                     R3 ; [+8]
       12 LOADB                            R7 1
       13 GETTABLEKS                       R8 R3 K4 ["autoDestroyOnSuccess"]
       15 JUMPIFEQKNIL                     R8 ; [+3]
       17 GETTABLEKS                       R7 R3 K4 ["autoDestroyOnSuccess"]
       19 SETTABLEKS                       R7 R6 K4 ["autoDestroyOnSuccess"]
       21 SETTABLEKS                       R0 R6 K8 ["container"]
       23 SETTABLEKS                       R5 R6 K9 ["billboard"]
       25 NEWTABLE                         R7 0 0
       27 SETTABLEKS                       R7 R6 K10 ["connections"]
       29 SETTABLEKS                       R2 R6 K14 ["fill"]
       31 MOVE                             R4 R6
       32 GETUPVAL                         R7 2
       33 FASTCALL2                        TABLE_INSERT R7 R4 ; [+4]
       35 MOVE                             R8 R4
       36 GETIMPORT                        R6 K18 [table.insert]
       38 CALL                             R6 2 0
       39 GETUPVAL                         R6 3
       40 MOVE                             R7 R4
       41 CALL                             R6 1 0
       42 CLOSEUPVALS                      R4
       43 RETURN                           R4 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K1 [game]
        3 NAMECALL                         R0 R0 K2 ["IsDescendantOf"]
        5 CALL                             R0 2 1
        6 JUMPIFNOT                        R0 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 1
        9 GETUPVAL                         R1 2
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_19:
        0 GETIMPORT                        R3 K2 [Instance.new]
        2 LOADK                            R4 K3 ["Folder"]
        3 CALL                             R3 1 1
        4 LOADK                            R4 K4 ["LoadingSkeleton3DBox"]
        5 SETTABLEKS                       R4 R3 K5 ["Name"]
        7 LOADB                            R4 0
        8 SETTABLEKS                       R4 R3 K6 ["Archivable"]
       10 GETUPVAL                         R4 0
       11 SETTABLEKS                       R4 R3 K7 ["Parent"]
       13 MOVE                             R2 R3
       14 LOADNIL                          R3
       15 GETUPVAL                         R4 1
       16 CALL                             R4 0 1
       17 JUMPIFNOT                        R4 ; [+56]
       18 GETIMPORT                        R4 K2 [Instance.new]
       20 LOADK                            R5 K8 ["BoxHandleAdornment"]
       21 CALL                             R4 1 1
       22 LOADK                            R5 K9 ["Fill"]
       23 SETTABLEKS                       R5 R4 K5 ["Name"]
       25 SETTABLEKS                       R0 R4 K10 ["Adornee"]
       27 GETIMPORT                        R5 K14 [Enum.AdornShading.Default]
       29 SETTABLEKS                       R5 R4 K15 ["Shading"]
       31 LOADK                            R9 K16 ["Model"]
       32 NAMECALL                         R7 R0 K17 ["IsA"]
       34 CALL                             R7 2 1
       35 JUMPIFNOT                        R7 ; [+5]
       36 NAMECALL                         R7 R0 K18 ["GetBoundingBox"]
       38 CALL                             R7 1 2
       39 MOVE                             R6 R8
       40 JUMP                             ; [+9]
       41 LOADK                            R9 K19 ["BasePart"]
       42 NAMECALL                         R7 R0 K17 ["IsA"]
       44 CALL                             R7 2 1
       45 JUMPIFNOT                        R7 ; [+3]
       46 GETTABLEKS                       R6 R0 K20 ["Size"]
       48 JUMP                             ; [+1]
       49 LOADK                            R6 K21 [{0, 0, 0}]
       50 GETTABLEKS                       R7 R6 K22 ["Magnitude"]
       52 LOADK                            R8 K23 [0.001]
       53 JUMPIFNOTLT                      R7 R8 ; [+3]
       55 LOADK                            R5 K24 [{4, 4, 4}]
       56 JUMP                             ; [+1]
       57 MOVE                             R5 R6
       58 SETTABLEKS                       R5 R4 K20 ["Size"]
       60 SETTABLEKS                       R2 R4 K7 ["Parent"]
       62 GETUPVAL                         R5 2
       63 MOVE                             R6 R2
       64 MOVE                             R7 R0
       65 MOVE                             R8 R4
       66 MOVE                             R9 R1
       67 CALL                             R5 4 1
       68 MOVE                             R3 R5
       69 GETUPVAL                         R5 3
       70 MOVE                             R6 R3
       71 MOVE                             R7 R0
       72 CALL                             R5 2 0
       73 JUMP                             ; [+39]
       74 GETIMPORT                        R4 K2 [Instance.new]
       76 LOADK                            R5 K25 ["SelectionBox"]
       77 CALL                             R4 1 1
       78 LOADK                            R5 K26 ["Outline"]
       79 SETTABLEKS                       R5 R4 K5 ["Name"]
       81 SETTABLEKS                       R0 R4 K10 ["Adornee"]
       83 LOADK                            R5 K27 [0.03]
       84 SETTABLEKS                       R5 R4 K28 ["LineThickness"]
       86 SETTABLEKS                       R2 R4 K7 ["Parent"]
       88 GETIMPORT                        R5 K2 [Instance.new]
       90 LOADK                            R6 K29 ["Highlight"]
       91 CALL                             R5 1 1
       92 LOADK                            R6 K9 ["Fill"]
       93 SETTABLEKS                       R6 R5 K5 ["Name"]
       95 SETTABLEKS                       R0 R5 K10 ["Adornee"]
       97 GETIMPORT                        R6 K32 [Enum.HighlightDepthMode.Occluded]
       99 SETTABLEKS                       R6 R5 K33 ["DepthMode"]
      101 LOADN                            R6 1
      102 SETTABLEKS                       R6 R5 K34 ["OutlineTransparency"]
      104 SETTABLEKS                       R2 R5 K7 ["Parent"]
      106 GETUPVAL                         R6 2
      107 MOVE                             R7 R2
      108 MOVE                             R8 R0
      109 LOADNIL                          R9
      110 MOVE                             R10 R1
      111 CALL                             R6 4 1
      112 MOVE                             R3 R6
      113 GETTABLEKS                       R4 R3 K35 ["billboard"]
      115 GETTABLEKS                       R4 R4 K36 ["billboardGui"]
      117 LOADK                            R5 K37 [{0, 1, 0}]
      118 SETTABLEKS                       R5 R4 K38 ["ExtentsOffsetWorldSpace"]
      120 GETTABLEKS                       R5 R3 K39 ["connections"]
      122 GETTABLEKS                       R6 R0 K40 ["AncestryChanged"]
      124 NEWCLOSURE                       R8 P0
      125 CAPTURE                          VAL R0
      126 CAPTURE                          UPVAL U4
      127 CAPTURE                          REF R3
      128 NAMECALL                         R6 R6 K41 ["Connect"]
      130 CALL                             R6 2 -1
      131 FASTCALL                         TABLE_INSERT ; [+2]
      132 GETIMPORT                        R4 K44 [table.insert]
      134 CALL                             R4 -1 0
      135 CLOSEUPVALS                      R3
      136 RETURN                           R3 1

PROTO_20:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Terrain"]
        3 JUMPIFNOTEQKNIL                  R3 ; [+2]
        5 LOADB                            R5 0 +1
        6 LOADB                            R5 1
        7 FASTCALL2K                       ASSERT R5 K1 ; [+4]
        9 LOADK                            R6 K1 ["Workspace has no Terrain to anchor adornments to"]
       10 GETIMPORT                        R4 K3 [assert]
       12 CALL                             R4 2 0
       13 GETIMPORT                        R5 K6 [Instance.new]
       15 LOADK                            R6 K7 ["Folder"]
       16 CALL                             R5 1 1
       17 LOADK                            R6 K8 ["LoadingSkeleton3DBox"]
       18 SETTABLEKS                       R6 R5 K9 ["Name"]
       20 LOADB                            R6 0
       21 SETTABLEKS                       R6 R5 K10 ["Archivable"]
       23 GETUPVAL                         R6 1
       24 SETTABLEKS                       R6 R5 K11 ["Parent"]
       26 MOVE                             R4 R5
       27 GETUPVAL                         R5 2
       28 CALL                             R5 0 1
       29 JUMPIFNOT                        R5 ; [+41]
       30 GETIMPORT                        R5 K6 [Instance.new]
       32 LOADK                            R6 K12 ["BoxHandleAdornment"]
       33 CALL                             R5 1 1
       34 LOADK                            R6 K13 ["Fill"]
       35 SETTABLEKS                       R6 R5 K9 ["Name"]
       37 SETTABLEKS                       R3 R5 K14 ["Adornee"]
       39 GETIMPORT                        R6 K18 [Enum.AdornShading.Default]
       41 SETTABLEKS                       R6 R5 K19 ["Shading"]
       43 SETTABLEKS                       R0 R5 K20 ["CFrame"]
       45 SETTABLEKS                       R1 R5 K21 ["Size"]
       47 SETTABLEKS                       R4 R5 K11 ["Parent"]
       49 GETUPVAL                         R6 3
       50 MOVE                             R7 R4
       51 MOVE                             R8 R3
       52 MOVE                             R9 R5
       53 MOVE                             R10 R2
       54 CALL                             R6 4 1
       55 GETTABLEKS                       R7 R6 K22 ["billboard"]
       57 GETTABLEKS                       R7 R7 K23 ["billboardGui"]
       59 GETTABLEKS                       R9 R0 K24 ["Position"]
       61 LOADK                            R11 K25 [{0, 1, 0}]
       62 GETTABLEKS                       R14 R1 K28 ["Y"]
       64 DIVK                             R13 R14 K27 [2]
       65 ADDK                             R12 R13 K26 [1]
       66 MUL                              R10 R11 R12
       67 ADD                              R8 R9 R10
       68 SETTABLEKS                       R8 R7 K29 ["StudsOffsetWorldSpace"]
       70 RETURN                           R6 1
       71 GETIMPORT                        R5 K6 [Instance.new]
       73 LOADK                            R6 K12 ["BoxHandleAdornment"]
       74 CALL                             R5 1 1
       75 LOADK                            R6 K13 ["Fill"]
       76 SETTABLEKS                       R6 R5 K9 ["Name"]
       78 SETTABLEKS                       R3 R5 K14 ["Adornee"]
       80 SETTABLEKS                       R0 R5 K20 ["CFrame"]
       82 SETTABLEKS                       R1 R5 K21 ["Size"]
       84 SETTABLEKS                       R4 R5 K11 ["Parent"]
       86 DIVK                             R6 R1 K27 [2]
       87 GETUPVAL                         R7 4
       88 LOADNIL                          R8
       89 LOADNIL                          R9
       90 FORGPREP                         R7
       91 NEWTABLE                         R12 0 2
       93 LOADN                            R15 -1
       94 LOADN                            R16 1
       95 SETLIST                          R12 R15 2 [1]
       97 LOADNIL                          R13
       98 LOADNIL                          R14
       99 FORGPREP                         R12
      100 NEWTABLE                         R17 0 2
      102 LOADN                            R20 -1
      103 LOADN                            R21 1
      104 SETLIST                          R17 R20 2 [1]
      106 LOADNIL                          R18
      107 LOADNIL                          R19
      108 FORGPREP                         R17
      109 GETTABLEKS                       R25 R11 K30 ["first"]
      111 MUL                              R24 R25 R6
      112 MUL                              R23 R24 R16
      113 GETTABLEKS                       R26 R11 K31 ["second"]
      115 MUL                              R25 R26 R6
      116 MUL                              R24 R25 R21
      117 ADD                              R22 R23 R24
      118 GETIMPORT                        R23 K6 [Instance.new]
      120 LOADK                            R24 K12 ["BoxHandleAdornment"]
      121 CALL                             R23 1 1
      122 LOADK                            R24 K32 ["Edge"]
      123 SETTABLEKS                       R24 R23 K9 ["Name"]
      125 SETTABLEKS                       R3 R23 K14 ["Adornee"]
      127 GETIMPORT                        R25 K33 [CFrame.new]
      129 MOVE                             R26 R22
      130 CALL                             R25 1 1
      131 MUL                              R24 R0 R25
      132 SETTABLEKS                       R24 R23 K20 ["CFrame"]
      134 GETTABLEKS                       R26 R11 K34 ["along"]
      136 MUL                              R25 R26 R1
      137 GETTABLEKS                       R28 R11 K30 ["first"]
      139 GETTABLEKS                       R29 R11 K31 ["second"]
      141 ADD                              R27 R28 R29
      142 MULK                             R26 R27 K35 [0.1]
      143 ADD                              R24 R25 R26
      144 SETTABLEKS                       R24 R23 K21 ["Size"]
      146 SETTABLEKS                       R4 R23 K11 ["Parent"]
      148 FORGLOOP                         R17 2 ; [-40]
      150 FORGLOOP                         R12 2 ; [-51]
      152 FORGLOOP                         R7 2 ; [-62]
      154 GETUPVAL                         R7 3
      155 MOVE                             R8 R4
      156 MOVE                             R9 R3
      157 LOADNIL                          R10
      158 MOVE                             R11 R2
      159 CALL                             R7 4 1
      160 GETTABLEKS                       R8 R7 K22 ["billboard"]
      162 GETTABLEKS                       R8 R8 K23 ["billboardGui"]
      164 GETTABLEKS                       R10 R0 K24 ["Position"]
      166 LOADK                            R12 K25 [{0, 1, 0}]
      167 GETTABLEKS                       R14 R6 K28 ["Y"]
      169 ADDK                             R13 R14 K26 [1]
      170 MUL                              R11 R12 R13
      171 ADD                              R9 R10 R11
      172 SETTABLEKS                       R9 R8 K29 ["StudsOffsetWorldSpace"]
      174 RETURN                           R7 1

PROTO_21:
        0 GETUPVAL                         R3 0
        1 LENGTH                           R2 R3
        2 LOADN                            R0 1
        3 LOADN                            R1 -1
        4 FORNPREP                         R0
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R5 0
        7 GETTABLE                         R4 R5 R2
        8 CALL                             R3 1 0
        9 FORNLOOP                         R0
       10 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CoreGui"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["GuiService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["TweenService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 LOADK                            R5 K6 ["Workspace"]
       22 NAMECALL                         R3 R3 K3 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K8 [script]
       27 LOADK                            R6 K9 ["LoadingSkeleton3D"]
       28 NAMECALL                         R4 R4 K10 ["FindFirstAncestor"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K12 [require]
       33 GETTABLEKS                       R6 R4 K13 ["Theme"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K12 [require]
       38 GETTABLEKS                       R7 R4 K14 ["Types"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K12 [require]
       43 GETTABLEKS                       R8 R4 K15 ["Billboard"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K12 [require]
       48 GETTABLEKS                       R9 R4 K16 ["Flags"]
       50 GETTABLEKS                       R9 R9 K17 ["getFFlagLoadingSkeleton3DAnimatedFill"]
       52 CALL                             R8 1 1
       53 NEWTABLE                         R9 0 3
       55 DUPTABLE                         R10 K24 [{["along"] = {1, 0, 0}, ["first"] = {0, 1, 0}, ["second"] = {0, 0, 1}}]
       56 DUPTABLE                         R11 K25 [{["along"] = {0, 1, 0}, ["first"] = {1, 0, 0}, ["second"] = {0, 0, 1}}]
       57 DUPTABLE                         R12 K26 [{["along"] = {0, 0, 1}, ["first"] = {1, 0, 0}, ["second"] = {0, 1, 0}}]
       58 SETLIST                          R9 R10 3 [1]
       60 DUPTABLE                         R10 K30 [{["pending"] = True, ["running"] = True}]
       61 NEWTABLE                         R11 0 0
       63 DUPCLOSURE                       R12 K31 [PROTO_0]
       64 CAPTURE                          VAL R0
       65 DUPCLOSURE                       R13 K32 [PROTO_1]
       66 DUPCLOSURE                       R14 K33 [PROTO_2]
       67 DUPCLOSURE                       R15 K34 [PROTO_3]
       68 DUPCLOSURE                       R16 K35 [PROTO_9]
       69 DUPCLOSURE                       R17 K36 [PROTO_10]
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R2
       73 DUPCLOSURE                       R18 K37 [PROTO_11]
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R17
       77 DUPCLOSURE                       R19 K38 [PROTO_12]
       78 CAPTURE                          VAL R11
       79 DUPCLOSURE                       R20 K39 [PROTO_14]
       80 CAPTURE                          VAL R18
       81 CAPTURE                          VAL R19
       82 DUPCLOSURE                       R21 K40 [PROTO_15]
       83 DUPCLOSURE                       R22 K41 [PROTO_17]
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R19
       86 CAPTURE                          VAL R11
       87 CAPTURE                          VAL R18
       88 DUPCLOSURE                       R23 K42 [PROTO_19]
       89 CAPTURE                          VAL R0
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R22
       92 CAPTURE                          VAL R16
       93 CAPTURE                          VAL R19
       94 DUPCLOSURE                       R24 K43 [PROTO_20]
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R0
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R22
       99 CAPTURE                          VAL R9
      100 DUPCLOSURE                       R25 K44 [PROTO_21]
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R19
      103 DUPTABLE                         R26 K55 [{["attachToInstance"], ["attachToRegion"], ["setStatus"], ["setLabelVisible"], ["destroy"], ["destroyAll"], ["successDestroyDelay"] = 1.5, ["autoAcceptDelay"] = 10}]
      104 SETTABLEKS                       R23 R26 K45 ["attachToInstance"]
      106 SETTABLEKS                       R24 R26 K46 ["attachToRegion"]
      108 SETTABLEKS                       R20 R26 K47 ["setStatus"]
      110 SETTABLEKS                       R21 R26 K48 ["setLabelVisible"]
      112 SETTABLEKS                       R19 R26 K49 ["destroy"]
      114 SETTABLEKS                       R25 R26 K50 ["destroyAll"]
      116 RETURN                           R26 1
