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
       75 GETUPVAL                         R3 2
       76 CALL                             R3 0 1
       77 JUMPIFNOT                        R3 ; [+43]
       78 GETTABLEKS                       R3 R0 K18 ["boundsInstance"]
       80 JUMPIFEQKNIL                     R3 ; [+40]
       82 GETTABLEKS                       R3 R0 K18 ["boundsInstance"]
       84 GETTABLEKS                       R4 R0 K0 ["fill"]
       86 GETTABLEKS                       R5 R0 K19 ["destroyed"]
       88 JUMPIF                           R5 ; [+32]
       89 JUMPIFNOTEQKNIL                  R4 ; [+2]
       91 JUMP                             ; [+29]
       92 LOADK                            R9 K20 ["Model"]
       93 NAMECALL                         R7 R3 K7 ["IsA"]
       95 CALL                             R7 2 1
       96 JUMPIFNOT                        R7 ; [+5]
       97 NAMECALL                         R7 R3 K21 ["GetBoundingBox"]
       99 CALL                             R7 1 2
      100 MOVE                             R6 R8
      101 JUMP                             ; [+9]
      102 LOADK                            R9 K22 ["BasePart"]
      103 NAMECALL                         R7 R3 K7 ["IsA"]
      105 CALL                             R7 2 1
      106 JUMPIFNOT                        R7 ; [+3]
      107 GETTABLEKS                       R6 R3 K23 ["Size"]
      109 JUMP                             ; [+1]
      110 LOADK                            R6 K24 [{0, 0, 0}]
      111 GETTABLEKS                       R7 R6 K25 ["Magnitude"]
      113 LOADK                            R8 K26 [0.001]
      114 JUMPIFNOTLT                      R7 R8 ; [+3]
      116 LOADK                            R5 K27 [{4, 4, 4}]
      117 JUMP                             ; [+1]
      118 MOVE                             R5 R6
      119 SETTABLEKS                       R5 R4 K23 ["Size"]
      121 GETTABLEKS                       R3 R0 K17 ["pulseTween"]
      123 JUMPIFEQKNIL                     R3 ; [+9]
      125 GETTABLEKS                       R3 R0 K17 ["pulseTween"]
      127 NAMECALL                         R3 R3 K28 ["Cancel"]
      129 CALL                             R3 1 0
      130 LOADNIL                          R3
      131 SETTABLEKS                       R3 R0 K17 ["pulseTween"]
      133 JUMPIFNOT                        R2 ; [+6]
      134 GETUPVAL                         R3 3
      135 MOVE                             R4 R1
      136 CALL                             R3 1 1
      137 SETTABLEKS                       R3 R0 K17 ["pulseTween"]
      139 RETURN                           R0 0
      140 GETUPVAL                         R3 0
      141 GETTABLEKS                       R3 R3 K1 ["colorForStatus"]
      143 GETTABLEKS                       R4 R0 K2 ["status"]
      145 CALL                             R3 1 1
      146 SETTABLEKS                       R3 R1 K12 ["Color3"]
      148 GETUPVAL                         R3 0
      149 GETTABLEKS                       R3 R3 K3 ["fillTransparencyForStatus"]
      151 GETTABLEKS                       R4 R0 K2 ["status"]
      153 CALL                             R3 1 1
      154 SETTABLEKS                       R3 R1 K16 ["Transparency"]
      156 RETURN                           R0 0

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
       29 GETTABLEKS                       R6 R5 K7 ["details"]
       31 JUMPIFEQKNIL                     R6 ; [+12]
       33 GETUPVAL                         R6 1
       34 CALL                             R6 0 1
       35 JUMPIF                           R6 ; [+8]
       36 GETIMPORT                        R6 K10 [table.clone]
       38 MOVE                             R7 R5
       39 CALL                             R6 1 1
       40 MOVE                             R5 R6
       41 LOADNIL                          R6
       42 SETTABLEKS                       R6 R5 K7 ["details"]
       44 LOADB                            R6 1
       45 GETTABLEKS                       R7 R5 K11 ["onRevert"]
       47 JUMPIFNOTEQKNIL                  R7 ; [+14]
       49 LOADB                            R6 0
       50 GETTABLEKS                       R7 R5 K12 ["actions"]
       52 JUMPIFEQKNIL                     R7 ; [+9]
       54 GETTABLEKS                       R8 R5 K12 ["actions"]
       56 LENGTH                           R7 R8
       57 LOADN                            R8 0
       58 JUMPIFLT                         R8 R7 ; [+2]
       60 LOADB                            R6 0 +1
       61 LOADB                            R6 1
       62 MOVE                             R7 R4
       63 JUMPIF                           R7 ; [+6]
       64 MOVE                             R7 R6
       65 JUMPIF                           R7 ; [+4]
       66 JUMPIFNOTEQKNIL                  R2 ; [+2]
       68 LOADB                            R7 0 +1
       69 LOADB                            R7 1
       70 SETTABLEKS                       R7 R0 K13 ["hasLabel"]
       72 GETTABLEKS                       R7 R0 K14 ["billboard"]
       74 GETTABLEKS                       R7 R7 K15 ["setEnabled"]
       76 GETTABLEKS                       R8 R0 K13 ["hasLabel"]
       78 JUMPIFNOT                        R8 ; [+2]
       79 GETTABLEKS                       R8 R0 K16 ["labelVisible"]
       81 CALL                             R7 1 0
       82 MOVE                             R7 R4
       83 JUMPIF                           R7 ; [+8]
       84 MOVE                             R7 R6
       85 JUMPIF                           R7 ; [+6]
       86 GETTABLEKS                       R8 R5 K17 ["onActivated"]
       88 JUMPIFNOTEQKNIL                  R8 ; [+2]
       90 LOADB                            R7 0 +1
       91 LOADB                            R7 1
       92 GETTABLEKS                       R9 R5 K7 ["details"]
       94 JUMPIFNOTEQKNIL                  R9 ; [+2]
       96 LOADB                            R8 0 +1
       97 LOADB                            R8 1
       98 GETTABLEKS                       R9 R0 K14 ["billboard"]
      100 GETTABLEKS                       R9 R9 K18 ["setActive"]
      102 OR                               R10 R7 R8
      103 CALL                             R9 1 0
      104 GETTABLEKS                       R9 R0 K14 ["billboard"]
      106 GETTABLEKS                       R9 R9 K19 ["render"]
      108 MOVE                             R10 R1
      109 ORK                              R11 R2 K20 [""]
      110 MOVE                             R12 R5
      111 CALL                             R9 3 0
      112 JUMPIFNOTEQKS                    R1 K21 ["succeeded"] ; [+17]
      114 GETTABLEKS                       R9 R0 K22 ["autoDestroyOnSuccess"]
      116 JUMPIFNOT                        R9 ; [+13]
      117 JUMPIFNOT                        R6 ; [+2]
      118 LOADN                            R9 10
      119 JUMP                             ; [+1]
      120 LOADK                            R9 K23 [1.5]
      121 GETIMPORT                        R10 K25 [task.delay]
      123 MOVE                             R11 R9
      124 NEWCLOSURE                       R12 P0
      125 CAPTURE                          VAL R0
      126 CAPTURE                          UPVAL U2
      127 CALL                             R10 2 1
      128 SETTABLEKS                       R10 R0 K1 ["autoDestroyThread"]
      130 RETURN                           R0 0

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
        0 LOADNIL                          R5
        1 GETUPVAL                         R6 0
        2 MOVE                             R7 R0
        3 MOVE                             R8 R1
        4 NEWCLOSURE                       R9 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          REF R5
        7 CALL                             R6 3 1
        8 DUPTABLE                         R7 K16 [{[1] = "pending", ["destroyed"] = False, ["autoDestroyOnSuccess"], ["hasLabel"] = False, ["labelVisible"] = True, ["container"], ["billboard"], ["connections"], ["autoDestroyThread"] = , ["pulseTween"] = , ["fill"], ["boundsInstance"]}]
        9 LOADB                            R8 1
       10 JUMPIFEQKNIL                     R3 ; [+8]
       12 LOADB                            R8 1
       13 GETTABLEKS                       R9 R3 K4 ["autoDestroyOnSuccess"]
       15 JUMPIFEQKNIL                     R9 ; [+3]
       17 GETTABLEKS                       R8 R3 K4 ["autoDestroyOnSuccess"]
       19 SETTABLEKS                       R8 R7 K4 ["autoDestroyOnSuccess"]
       21 SETTABLEKS                       R0 R7 K8 ["container"]
       23 SETTABLEKS                       R6 R7 K9 ["billboard"]
       25 NEWTABLE                         R8 0 0
       27 SETTABLEKS                       R8 R7 K10 ["connections"]
       29 SETTABLEKS                       R2 R7 K14 ["fill"]
       31 GETUPVAL                         R9 2
       32 CALL                             R9 0 1
       33 JUMPIFNOT                        R9 ; [+2]
       34 MOVE                             R8 R4
       35 JUMP                             ; [+1]
       36 LOADNIL                          R8
       37 SETTABLEKS                       R8 R7 K15 ["boundsInstance"]
       39 MOVE                             R5 R7
       40 GETUPVAL                         R8 3
       41 FASTCALL2                        TABLE_INSERT R8 R5 ; [+4]
       43 MOVE                             R9 R5
       44 GETIMPORT                        R7 K19 [table.insert]
       46 CALL                             R7 2 0
       47 GETUPVAL                         R7 4
       48 MOVE                             R8 R5
       49 CALL                             R7 1 0
       50 CLOSEUPVALS                      R5
       51 RETURN                           R5 1

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
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["Folder"]
        3 CALL                             R2 1 1
        4 LOADK                            R3 K4 ["LoadingSkeleton3DBox"]
        5 SETTABLEKS                       R3 R2 K5 ["Name"]
        7 LOADB                            R3 0
        8 SETTABLEKS                       R3 R2 K6 ["Archivable"]
       10 GETUPVAL                         R3 0
       11 SETTABLEKS                       R3 R2 K7 ["Parent"]
       13 LOADNIL                          R3
       14 GETUPVAL                         R4 1
       15 CALL                             R4 0 1
       16 JUMPIFNOT                        R4 ; [+57]
       17 GETIMPORT                        R4 K2 [Instance.new]
       19 LOADK                            R5 K8 ["BoxHandleAdornment"]
       20 CALL                             R4 1 1
       21 LOADK                            R5 K9 ["Fill"]
       22 SETTABLEKS                       R5 R4 K5 ["Name"]
       24 SETTABLEKS                       R0 R4 K10 ["Adornee"]
       26 GETIMPORT                        R5 K14 [Enum.AdornShading.Default]
       28 SETTABLEKS                       R5 R4 K15 ["Shading"]
       30 LOADK                            R9 K16 ["Model"]
       31 NAMECALL                         R7 R0 K17 ["IsA"]
       33 CALL                             R7 2 1
       34 JUMPIFNOT                        R7 ; [+5]
       35 NAMECALL                         R7 R0 K18 ["GetBoundingBox"]
       37 CALL                             R7 1 2
       38 MOVE                             R6 R8
       39 JUMP                             ; [+9]
       40 LOADK                            R9 K19 ["BasePart"]
       41 NAMECALL                         R7 R0 K17 ["IsA"]
       43 CALL                             R7 2 1
       44 JUMPIFNOT                        R7 ; [+3]
       45 GETTABLEKS                       R6 R0 K20 ["Size"]
       47 JUMP                             ; [+1]
       48 LOADK                            R6 K21 [{0, 0, 0}]
       49 GETTABLEKS                       R7 R6 K22 ["Magnitude"]
       51 LOADK                            R8 K23 [0.001]
       52 JUMPIFNOTLT                      R7 R8 ; [+3]
       54 LOADK                            R5 K24 [{4, 4, 4}]
       55 JUMP                             ; [+1]
       56 MOVE                             R5 R6
       57 SETTABLEKS                       R5 R4 K20 ["Size"]
       59 SETTABLEKS                       R2 R4 K7 ["Parent"]
       61 GETUPVAL                         R5 2
       62 MOVE                             R6 R2
       63 MOVE                             R7 R0
       64 MOVE                             R8 R4
       65 MOVE                             R9 R1
       66 MOVE                             R10 R0
       67 CALL                             R5 5 1
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
       13 GETIMPORT                        R4 K6 [Instance.new]
       15 LOADK                            R5 K7 ["Folder"]
       16 CALL                             R4 1 1
       17 LOADK                            R5 K8 ["LoadingSkeleton3DBox"]
       18 SETTABLEKS                       R5 R4 K9 ["Name"]
       20 LOADB                            R5 0
       21 SETTABLEKS                       R5 R4 K10 ["Archivable"]
       23 GETUPVAL                         R5 1
       24 SETTABLEKS                       R5 R4 K11 ["Parent"]
       26 GETUPVAL                         R5 2
       27 CALL                             R5 0 1
       28 JUMPIFNOT                        R5 ; [+55]
       29 GETUPVAL                         R5 3
       30 CALL                             R5 0 1
       31 JUMPIF                           R5 ; [+10]
       32 JUMPIFNOTEQKNIL                  R1 ; [+2]
       34 LOADB                            R6 0 +1
       35 LOADB                            R6 1
       36 FASTCALL2K                       ASSERT R6 K12 ; [+4]
       38 LOADK                            R7 K12 ["attachToRegion requires a size when LoadingSkeleton3DStatusDetails is off"]
       39 GETIMPORT                        R5 K3 [assert]
       41 CALL                             R5 2 0
       42 ORK                              R5 R1 K13 [{4, 4, 4}]
       43 GETIMPORT                        R6 K6 [Instance.new]
       45 LOADK                            R7 K14 ["BoxHandleAdornment"]
       46 CALL                             R6 1 1
       47 LOADK                            R7 K15 ["Fill"]
       48 SETTABLEKS                       R7 R6 K9 ["Name"]
       50 SETTABLEKS                       R3 R6 K16 ["Adornee"]
       52 GETIMPORT                        R7 K20 [Enum.AdornShading.Default]
       54 SETTABLEKS                       R7 R6 K21 ["Shading"]
       56 SETTABLEKS                       R0 R6 K22 ["CFrame"]
       58 SETTABLEKS                       R5 R6 K23 ["Size"]
       60 SETTABLEKS                       R4 R6 K11 ["Parent"]
       62 GETUPVAL                         R7 4
       63 MOVE                             R8 R4
       64 MOVE                             R9 R3
       65 MOVE                             R10 R6
       66 MOVE                             R11 R2
       67 CALL                             R7 4 1
       68 GETTABLEKS                       R8 R7 K24 ["billboard"]
       70 GETTABLEKS                       R8 R8 K25 ["billboardGui"]
       72 GETTABLEKS                       R10 R0 K26 ["Position"]
       74 LOADK                            R12 K27 [{0, 1, 0}]
       75 GETTABLEKS                       R15 R5 K30 ["Y"]
       77 DIVK                             R14 R15 K29 [2]
       78 ADDK                             R13 R14 K28 [1]
       79 MUL                              R11 R12 R13
       80 ADD                              R9 R10 R11
       81 SETTABLEKS                       R9 R8 K31 ["StudsOffsetWorldSpace"]
       83 RETURN                           R7 1
       84 JUMPIFNOTEQKNIL                  R1 ; [+2]
       86 LOADB                            R6 0 +1
       87 LOADB                            R6 1
       88 FASTCALL2K                       ASSERT R6 K32 ; [+4]
       90 LOADK                            R7 K32 ["attachToRegion requires a size when LoadingSkeleton3DAnimatedFill is off"]
       91 GETIMPORT                        R5 K3 [assert]
       93 CALL                             R5 2 0
       94 GETIMPORT                        R5 K6 [Instance.new]
       96 LOADK                            R6 K14 ["BoxHandleAdornment"]
       97 CALL                             R5 1 1
       98 LOADK                            R6 K15 ["Fill"]
       99 SETTABLEKS                       R6 R5 K9 ["Name"]
      101 SETTABLEKS                       R3 R5 K16 ["Adornee"]
      103 SETTABLEKS                       R0 R5 K22 ["CFrame"]
      105 SETTABLEKS                       R1 R5 K23 ["Size"]
      107 SETTABLEKS                       R4 R5 K11 ["Parent"]
      109 DIVK                             R6 R1 K29 [2]
      110 GETUPVAL                         R7 5
      111 LOADNIL                          R8
      112 LOADNIL                          R9
      113 FORGPREP                         R7
      114 NEWTABLE                         R12 0 2
      116 LOADN                            R15 -1
      117 LOADN                            R16 1
      118 SETLIST                          R12 R15 2 [1]
      120 LOADNIL                          R13
      121 LOADNIL                          R14
      122 FORGPREP                         R12
      123 NEWTABLE                         R17 0 2
      125 LOADN                            R20 -1
      126 LOADN                            R21 1
      127 SETLIST                          R17 R20 2 [1]
      129 LOADNIL                          R18
      130 LOADNIL                          R19
      131 FORGPREP                         R17
      132 GETTABLEKS                       R25 R11 K33 ["first"]
      134 MUL                              R24 R25 R6
      135 MUL                              R23 R24 R16
      136 GETTABLEKS                       R26 R11 K34 ["second"]
      138 MUL                              R25 R26 R6
      139 MUL                              R24 R25 R21
      140 ADD                              R22 R23 R24
      141 GETIMPORT                        R23 K6 [Instance.new]
      143 LOADK                            R24 K14 ["BoxHandleAdornment"]
      144 CALL                             R23 1 1
      145 LOADK                            R24 K35 ["Edge"]
      146 SETTABLEKS                       R24 R23 K9 ["Name"]
      148 SETTABLEKS                       R3 R23 K16 ["Adornee"]
      150 GETIMPORT                        R25 K36 [CFrame.new]
      152 MOVE                             R26 R22
      153 CALL                             R25 1 1
      154 MUL                              R24 R0 R25
      155 SETTABLEKS                       R24 R23 K22 ["CFrame"]
      157 GETTABLEKS                       R26 R11 K37 ["along"]
      159 MUL                              R25 R26 R1
      160 GETTABLEKS                       R28 R11 K33 ["first"]
      162 GETTABLEKS                       R29 R11 K34 ["second"]
      164 ADD                              R27 R28 R29
      165 MULK                             R26 R27 K38 [0.1]
      166 ADD                              R24 R25 R26
      167 SETTABLEKS                       R24 R23 K23 ["Size"]
      169 SETTABLEKS                       R4 R23 K11 ["Parent"]
      171 FORGLOOP                         R17 2 ; [-40]
      173 FORGLOOP                         R12 2 ; [-51]
      175 FORGLOOP                         R7 2 ; [-62]
      177 GETUPVAL                         R7 4
      178 MOVE                             R8 R4
      179 MOVE                             R9 R3
      180 LOADNIL                          R10
      181 MOVE                             R11 R2
      182 CALL                             R7 4 1
      183 GETTABLEKS                       R8 R7 K24 ["billboard"]
      185 GETTABLEKS                       R8 R8 K25 ["billboardGui"]
      187 GETTABLEKS                       R10 R0 K26 ["Position"]
      189 LOADK                            R12 K27 [{0, 1, 0}]
      190 GETTABLEKS                       R14 R6 K30 ["Y"]
      192 ADDK                             R13 R14 K28 [1]
      193 MUL                              R11 R12 R13
      194 ADD                              R9 R10 R11
      195 SETTABLEKS                       R9 R8 K31 ["StudsOffsetWorldSpace"]
      197 RETURN                           R7 1

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
       53 GETIMPORT                        R9 K12 [require]
       55 GETTABLEKS                       R10 R4 K16 ["Flags"]
       57 GETTABLEKS                       R10 R10 K18 ["getFFlagLoadingSkeleton3DStatusDetails"]
       59 CALL                             R9 1 1
       60 NEWTABLE                         R10 0 3
       62 DUPTABLE                         R11 K25 [{["along"] = {1, 0, 0}, ["first"] = {0, 1, 0}, ["second"] = {0, 0, 1}}]
       63 DUPTABLE                         R12 K26 [{["along"] = {0, 1, 0}, ["first"] = {1, 0, 0}, ["second"] = {0, 0, 1}}]
       64 DUPTABLE                         R13 K27 [{["along"] = {0, 0, 1}, ["first"] = {1, 0, 0}, ["second"] = {0, 1, 0}}]
       65 SETLIST                          R10 R11 3 [1]
       67 DUPTABLE                         R11 K31 [{["pending"] = True, ["running"] = True}]
       68 NEWTABLE                         R12 0 0
       70 DUPCLOSURE                       R13 K32 [PROTO_0]
       71 CAPTURE                          VAL R0
       72 DUPCLOSURE                       R14 K33 [PROTO_1]
       73 DUPCLOSURE                       R15 K34 [PROTO_2]
       74 DUPCLOSURE                       R16 K35 [PROTO_3]
       75 DUPCLOSURE                       R17 K36 [PROTO_9]
       76 DUPCLOSURE                       R18 K37 [PROTO_10]
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R2
       80 DUPCLOSURE                       R19 K38 [PROTO_11]
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R18
       85 DUPCLOSURE                       R20 K39 [PROTO_12]
       86 CAPTURE                          VAL R12
       87 DUPCLOSURE                       R21 K40 [PROTO_14]
       88 CAPTURE                          VAL R19
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R20
       91 DUPCLOSURE                       R22 K41 [PROTO_15]
       92 DUPCLOSURE                       R23 K42 [PROTO_17]
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R20
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R12
       97 CAPTURE                          VAL R19
       98 DUPCLOSURE                       R24 K43 [PROTO_19]
       99 CAPTURE                          VAL R0
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R23
      102 CAPTURE                          VAL R17
      103 CAPTURE                          VAL R20
      104 DUPCLOSURE                       R25 K44 [PROTO_20]
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R0
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R23
      110 CAPTURE                          VAL R10
      111 DUPCLOSURE                       R26 K45 [PROTO_21]
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R20
      114 DUPTABLE                         R27 K56 [{["attachToInstance"], ["attachToRegion"], ["setStatus"], ["setLabelVisible"], ["destroy"], ["destroyAll"], ["successDestroyDelay"] = 1.5, ["autoAcceptDelay"] = 10}]
      115 SETTABLEKS                       R24 R27 K46 ["attachToInstance"]
      117 SETTABLEKS                       R25 R27 K47 ["attachToRegion"]
      119 SETTABLEKS                       R21 R27 K48 ["setStatus"]
      121 SETTABLEKS                       R22 R27 K49 ["setLabelVisible"]
      123 SETTABLEKS                       R20 R27 K50 ["destroy"]
      125 SETTABLEKS                       R26 R27 K51 ["destroyAll"]
      127 RETURN                           R27 1
