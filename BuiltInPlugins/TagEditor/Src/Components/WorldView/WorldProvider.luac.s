PROTO_0:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["Visible"]
        3 JUMPIFEQKB                       R2 FALSE ; [+9]
        5 LOADB                            R1 0
        6 GETTABLEKS                       R2 R0 K1 ["DrawType"]
        8 JUMPIFNOTEQKS                    R2 K2 ["None"] ; [+4]
       10 GETTABLEKS                       R2 R0 K3 ["ShowText"]
       12 NOT                              R1 R2
       13 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CFrame"]
        3 GETTABLEKS                       R0 R0 K1 ["Position"]
        5 GETUPVAL                         R2 1
        6 SUB                              R1 R2 R0
        7 GETTABLEKS                       R1 R1 K2 ["Magnitude"]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K3 ["WorldProvider"]
       12 GETTABLEKS                       R2 R2 K4 ["CameraMinMovementStepForPartUpdate"]
       14 JUMPIFNOTLT                      R2 R1 ; [+6]
       16 SETUPVAL                         R0 1
       17 GETUPVAL                         R1 3
       18 NAMECALL                         R1 R1 K5 ["updateParts"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["maid"]
        3 LOADNIL                          R2
        4 SETTABLEKS                       R2 R1 K1 ["cameraMovedConn"]
        6 JUMPIFNOT                        R0 ; [+22]
        7 GETTABLEKS                       R1 R0 K2 ["CFrame"]
        9 GETTABLEKS                       R1 R1 K3 ["Position"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K0 ["maid"]
       14 LOADK                            R5 K2 ["CFrame"]
       15 NAMECALL                         R3 R0 K4 ["GetPropertyChangedSignal"]
       17 CALL                             R3 2 1
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          REF R1
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U0
       23 NAMECALL                         R3 R3 K5 ["Connect"]
       25 CALL                             R3 2 1
       26 SETTABLEKS                       R3 R2 K1 ["cameraMovedConn"]
       28 CLOSEUPVALS                      R1
       29 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K1 [{"partsList"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["partsList"]
        5 SETTABLEKS                       R1 R0 K2 ["state"]
        7 LOADN                            R1 0
        8 SETTABLEKS                       R1 R0 K3 ["nextId"]
       10 NEWTABLE                         R1 0 0
       12 SETTABLEKS                       R1 R0 K4 ["partIds"]
       14 NEWTABLE                         R1 0 0
       16 SETTABLEKS                       R1 R0 K5 ["trackedParts"]
       18 NEWTABLE                         R1 0 0
       20 SETTABLEKS                       R1 R0 K6 ["trackedTags"]
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K7 ["new"]
       25 CALL                             R1 0 1
       26 SETTABLEKS                       R1 R0 K8 ["instanceAddedConns"]
       28 GETUPVAL                         R1 0
       29 GETTABLEKS                       R1 R1 K7 ["new"]
       31 CALL                             R1 0 1
       32 SETTABLEKS                       R1 R0 K9 ["instanceRemovedConns"]
       34 GETUPVAL                         R1 0
       35 GETTABLEKS                       R1 R1 K7 ["new"]
       37 CALL                             R1 0 1
       38 SETTABLEKS                       R1 R0 K10 ["instanceAncestryChangedConns"]
       40 GETUPVAL                         R1 0
       41 GETTABLEKS                       R1 R1 K7 ["new"]
       43 CALL                             R1 0 1
       44 SETTABLEKS                       R1 R0 K11 ["maid"]
       46 NEWCLOSURE                       R1 P0
       47 CAPTURE                          VAL R0
       48 CAPTURE                          UPVAL U1
       49 GETTABLEKS                       R2 R0 K11 ["maid"]
       51 GETIMPORT                        R3 K13 [workspace]
       53 LOADK                            R5 K14 ["CurrentCamera"]
       54 NAMECALL                         R3 R3 K15 ["GetPropertyChangedSignal"]
       56 CALL                             R3 2 1
       57 MOVE                             R5 R1
       58 NAMECALL                         R3 R3 K16 ["Connect"]
       60 CALL                             R3 2 1
       61 SETTABLEKS                       R3 R2 K17 ["cameraChangedConn"]
       63 GETIMPORT                        R2 K13 [workspace]
       65 GETTABLEKS                       R2 R2 K14 ["CurrentCamera"]
       67 GETTABLEKS                       R3 R0 K11 ["maid"]
       69 LOADNIL                          R4
       70 SETTABLEKS                       R4 R3 K18 ["cameraMovedConn"]
       72 JUMPIFNOT                        R2 ; [+21]
       73 GETTABLEKS                       R3 R2 K19 ["CFrame"]
       75 GETTABLEKS                       R3 R3 K20 ["Position"]
       77 GETTABLEKS                       R4 R0 K11 ["maid"]
       79 LOADK                            R7 K19 ["CFrame"]
       80 NAMECALL                         R5 R2 K15 ["GetPropertyChangedSignal"]
       82 CALL                             R5 2 1
       83 NEWCLOSURE                       R7 P1
       84 CAPTURE                          VAL R2
       85 CAPTURE                          REF R3
       86 CAPTURE                          UPVAL U1
       87 CAPTURE                          VAL R0
       88 NAMECALL                         R5 R5 K16 ["Connect"]
       90 CALL                             R5 2 1
       91 SETTABLEKS                       R5 R4 K18 ["cameraMovedConn"]
       93 CLOSEUPVALS                      R3
       94 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 GETIMPORT                        R4 K1 [pairs]
        6 MOVE                             R5 R0
        7 CALL                             R4 1 3
        8 FORGPREP_NEXT                    R4
        9 LOADB                            R9 1
       10 GETTABLEKS                       R10 R8 K2 ["Visible"]
       12 JUMPIFEQKB                       R10 FALSE ; [+9]
       14 LOADB                            R9 0
       15 GETTABLEKS                       R10 R8 K3 ["DrawType"]
       17 JUMPIFNOTEQKS                    R10 K4 ["None"] ; [+4]
       19 GETTABLEKS                       R10 R8 K5 ["ShowText"]
       21 NOT                              R9 R10
       22 JUMPIF                           R9 ; [+3]
       23 GETTABLEKS                       R9 R8 K6 ["Name"]
       25 SETTABLE                         R8 R2 R9
       26 FORGLOOP                         R4 2 ; [-18]
       28 GETIMPORT                        R4 K1 [pairs]
       30 MOVE                             R5 R1
       31 CALL                             R4 1 3
       32 FORGPREP_NEXT                    R4
       33 LOADB                            R9 1
       34 GETTABLEKS                       R10 R8 K2 ["Visible"]
       36 JUMPIFEQKB                       R10 FALSE ; [+9]
       38 LOADB                            R9 0
       39 GETTABLEKS                       R10 R8 K3 ["DrawType"]
       41 JUMPIFNOTEQKS                    R10 K4 ["None"] ; [+4]
       43 GETTABLEKS                       R10 R8 K5 ["ShowText"]
       45 NOT                              R9 R10
       46 JUMPIF                           R9 ; [+12]
       47 GETTABLEKS                       R10 R8 K6 ["Name"]
       49 GETTABLE                         R9 R2 R10
       50 JUMPIFNOT                        R9 ; [+5]
       51 GETTABLEKS                       R9 R8 K6 ["Name"]
       53 LOADNIL                          R10
       54 SETTABLE                         R10 R2 R9
       55 JUMP                             ; [+3]
       56 GETTABLEKS                       R9 R8 K6 ["Name"]
       58 SETTABLE                         R8 R3 R9
       59 FORGLOOP                         R4 2 ; [-27]
       61 GETIMPORT                        R4 K1 [pairs]
       63 MOVE                             R5 R2
       64 CALL                             R4 1 3
       65 FORGPREP_NEXT                    R4
       66 GETUPVAL                         R9 0
       67 MOVE                             R11 R7
       68 NAMECALL                         R9 R9 K7 ["tagAdded"]
       70 CALL                             R9 2 0
       71 FORGLOOP                         R4 1 ; [-6]
       73 GETIMPORT                        R4 K1 [pairs]
       75 MOVE                             R5 R3
       76 CALL                             R4 1 3
       77 FORGPREP_NEXT                    R4
       78 GETUPVAL                         R9 0
       79 MOVE                             R11 R7
       80 NAMECALL                         R9 R9 K8 ["tagRemoved"]
       82 CALL                             R9 2 0
       83 FORGLOOP                         R4 1 ; [-6]
       85 GETUPVAL                         R4 0
       86 NAMECALL                         R4 R4 K9 ["updateParts"]
       88 CALL                             R4 1 0
       89 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Get"]
        3 CALL                             R1 0 1
        4 GETIMPORT                        R2 K2 [pairs]
        6 NAMECALL                         R3 R1 K3 ["GetTags"]
        8 CALL                             R3 1 -1
        9 CALL                             R2 -1 3
       10 FORGPREP_NEXT                    R2
       11 LOADB                            R7 1
       12 GETTABLEKS                       R8 R6 K4 ["Visible"]
       14 JUMPIFEQKB                       R8 FALSE ; [+9]
       16 LOADB                            R7 0
       17 GETTABLEKS                       R8 R6 K5 ["DrawType"]
       19 JUMPIFNOTEQKS                    R8 K6 ["None"] ; [+4]
       21 GETTABLEKS                       R8 R6 K7 ["ShowText"]
       23 NOT                              R7 R8
       24 JUMPIF                           R7 ; [+5]
       25 GETTABLEKS                       R9 R6 K8 ["Name"]
       27 NAMECALL                         R7 R0 K9 ["tagAdded"]
       29 CALL                             R7 2 0
       30 FORGLOOP                         R2 2 ; [-20]
       32 NEWCLOSURE                       R4 P0
       33 CAPTURE                          VAL R0
       34 NAMECALL                         R2 R1 K10 ["OnTagsUpdated"]
       36 CALL                             R2 2 1
       37 SETTABLEKS                       R2 R0 K11 ["onTagsUpdatedConn"]
       39 NAMECALL                         R2 R0 K12 ["updateParts"]
       41 CALL                             R2 1 0
       42 RETURN                           R0 0

PROTO_6:
        0 LOADN                            R4 1
        1 LENGTH                           R5 R0
        2 SUB                              R6 R5 R4
        3 LOADN                            R7 1
        4 JUMPIFNOTLT                      R7 R6 ; [+17]
        6 SUB                              R9 R5 R4
        7 DIVK                             R8 R9 K0 [2]
        8 ADD                              R7 R4 R8
        9 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       10 GETIMPORT                        R6 K3 [math.floor]
       12 CALL                             R6 1 1
       13 MOVE                             R7 R2
       14 MOVE                             R8 R1
       15 GETTABLE                         R9 R0 R6
       16 CALL                             R7 2 1
       17 JUMPIFNOT                        R7 ; [+2]
       18 MOVE                             R5 R6
       19 JUMP                             ; [+1]
       20 ADDK                             R4 R6 K4 [1]
       21 JUMPBACK                         ; [-20]
       22 JUMPIFNOTLT                      R4 R3 ; [+16]
       24 FASTCALL3                        TABLE_INSERT R0 R4 R1
       26 MOVE                             R7 R0
       27 MOVE                             R8 R4
       28 MOVE                             R9 R1
       29 GETIMPORT                        R6 K7 [table.insert]
       31 CALL                             R6 3 0
       32 JUMPIFNOTLE                      R3 R5 ; [+6]
       34 GETIMPORT                        R6 K9 [table.remove]
       36 MOVE                             R7 R0
       37 MOVE                             R8 R5
       38 CALL                             R6 2 0
       39 RETURN                           R0 0

PROTO_7:
        0 SUB                              R3 R1 R0
        1 MOVE                             R7 R2
        2 NAMECALL                         R5 R3 K0 ["Dot"]
        4 CALL                             R5 2 1
        5 LOADN                            R6 0
        6 JUMPIFLT                         R6 R5 ; [+2]
        8 LOADB                            R4 0 +1
        9 LOADB                            R4 1
       10 RETURN                           R4 1

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["AngularSize"]
        2 GETTABLEKS                       R4 R1 K0 ["AngularSize"]
        4 JUMPIFLT                         R4 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 SUB                              R2 R0 R3
        2 GETTABLEKS                       R2 R2 K0 ["Magnitude"]
        4 GETTABLEKS                       R3 R1 K0 ["Magnitude"]
        6 DIV                              R4 R3 R2
        7 RETURN                           R4 1

PROTO_10:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [workspace]
        4 GETTABLEKS                       R2 R2 K2 ["CurrentCamera"]
        6 JUMPIF                           R2 ; [+1]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R3 R2 K3 ["CFrame"]
       10 GETTABLEKS                       R3 R3 K4 ["Position"]
       12 DUPCLOSURE                       R4 K5 [PROTO_8]
       13 NEWCLOSURE                       R5 P1
       14 CAPTURE                          VAL R3
       15 GETIMPORT                        R6 K7 [pairs]
       17 GETTABLEKS                       R7 R0 K8 ["trackedParts"]
       19 CALL                             R6 1 3
       20 FORGPREP_NEXT                    R6
       21 GETTABLEKS                       R11 R9 K9 ["ClassName"]
       23 LOADNIL                          R12
       24 JUMPIFNOTEQKS                    R11 K10 ["Model"] ; [+45]
       26 NAMECALL                         R13 R9 K11 ["GetPivot"]
       28 CALL                             R13 1 1
       29 GETTABLEKS                       R12 R13 K4 ["Position"]
       31 GETGLOBAL                        R13 K12 ["isInFrontOf"]
       33 GETTABLEKS                       R14 R2 K3 ["CFrame"]
       35 GETTABLEKS                       R14 R14 K4 ["Position"]
       37 MOVE                             R15 R12
       38 GETTABLEKS                       R16 R2 K3 ["CFrame"]
       40 GETTABLEKS                       R16 R16 K13 ["LookVector"]
       42 CALL                             R13 3 1
       43 JUMPIFNOT                        R13 ; [+120]
       44 DUPTABLE                         R13 K16 [{"AngularSize", "Instance"}]
       45 MOVE                             R15 R12
       46 NAMECALL                         R16 R9 K17 ["GetExtentsSize"]
       48 CALL                             R16 1 1
       49 SUB                              R17 R15 R3
       50 GETTABLEKS                       R17 R17 K18 ["Magnitude"]
       52 GETTABLEKS                       R18 R16 K18 ["Magnitude"]
       54 DIV                              R14 R18 R17
       55 SETTABLEKS                       R14 R13 K14 ["AngularSize"]
       57 SETTABLEKS                       R9 R13 K15 ["Instance"]
       59 GETUPVAL                         R14 0
       60 MOVE                             R15 R1
       61 MOVE                             R16 R13
       62 MOVE                             R17 R4
       63 GETUPVAL                         R18 1
       64 GETTABLEKS                       R18 R18 K19 ["WorldProvider"]
       66 GETTABLEKS                       R18 R18 K20 ["AdornedPartLimit"]
       68 CALL                             R14 4 0
       69 JUMP                             ; [+94]
       70 JUMPIFNOTEQKS                    R11 K21 ["Attachment"] ; [+43]
       72 GETTABLEKS                       R12 R9 K22 ["WorldPosition"]
       74 GETGLOBAL                        R13 K12 ["isInFrontOf"]
       76 GETTABLEKS                       R14 R2 K3 ["CFrame"]
       78 GETTABLEKS                       R14 R14 K4 ["Position"]
       80 MOVE                             R15 R12
       81 GETTABLEKS                       R16 R2 K3 ["CFrame"]
       83 GETTABLEKS                       R16 R16 K13 ["LookVector"]
       85 CALL                             R13 3 1
       86 JUMPIFNOT                        R13 ; [+77]
       87 DUPTABLE                         R13 K16 [{"AngularSize", "Instance"}]
       88 MOVE                             R15 R12
       89 FASTCALL                         VECTOR ; [+2]
       90 GETIMPORT                        R16 K25 [Vector3.new]
       92 CALL                             R16 0 1
       93 SUB                              R17 R15 R3
       94 GETTABLEKS                       R17 R17 K18 ["Magnitude"]
       96 GETTABLEKS                       R18 R16 K18 ["Magnitude"]
       98 DIV                              R14 R18 R17
       99 SETTABLEKS                       R14 R13 K14 ["AngularSize"]
      101 SETTABLEKS                       R9 R13 K15 ["Instance"]
      103 GETUPVAL                         R14 0
      104 MOVE                             R15 R1
      105 MOVE                             R16 R13
      106 MOVE                             R17 R4
      107 GETUPVAL                         R18 1
      108 GETTABLEKS                       R18 R18 K19 ["WorldProvider"]
      110 GETTABLEKS                       R18 R18 K20 ["AdornedPartLimit"]
      112 CALL                             R14 4 0
      113 JUMP                             ; [+50]
      114 GETUPVAL                         R13 2
      115 JUMPIFNOT                        R13 ; [+5]
      116 LOADK                            R15 K26 ["BasePart"]
      117 NAMECALL                         R13 R9 K27 ["IsA"]
      119 CALL                             R13 2 1
      120 JUMPIF                           R13 ; [+4]
      121 GETUPVAL                         R13 2
      122 JUMPIF                           R13 ; [+41]
      123 JUMPIFNOTEQKS                    R11 K28 ["Part"] ; [+40]
      125 GETTABLEKS                       R12 R9 K4 ["Position"]
      127 GETGLOBAL                        R13 K12 ["isInFrontOf"]
      129 GETTABLEKS                       R14 R2 K3 ["CFrame"]
      131 GETTABLEKS                       R14 R14 K4 ["Position"]
      133 MOVE                             R15 R12
      134 GETTABLEKS                       R16 R2 K3 ["CFrame"]
      136 GETTABLEKS                       R16 R16 K13 ["LookVector"]
      138 CALL                             R13 3 1
      139 JUMPIFNOT                        R13 ; [+24]
      140 DUPTABLE                         R13 K16 [{"AngularSize", "Instance"}]
      141 MOVE                             R15 R12
      142 GETTABLEKS                       R16 R9 K29 ["Size"]
      144 SUB                              R17 R15 R3
      145 GETTABLEKS                       R17 R17 K18 ["Magnitude"]
      147 GETTABLEKS                       R18 R16 K18 ["Magnitude"]
      149 DIV                              R14 R18 R17
      150 SETTABLEKS                       R14 R13 K14 ["AngularSize"]
      152 SETTABLEKS                       R9 R13 K15 ["Instance"]
      154 GETUPVAL                         R14 0
      155 MOVE                             R15 R1
      156 MOVE                             R16 R13
      157 MOVE                             R17 R4
      158 GETUPVAL                         R18 1
      159 GETTABLEKS                       R18 R18 K19 ["WorldProvider"]
      161 GETTABLEKS                       R18 R18 K20 ["AdornedPartLimit"]
      163 CALL                             R14 4 0
      164 FORGLOOP                         R6 2 ; [-144]
      166 RETURN                           R1 1

PROTO_11:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [pairs]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["Get"]
        7 CALL                             R4 0 1
        8 NAMECALL                         R4 R4 K3 ["GetTags"]
       10 CALL                             R4 1 -1
       11 CALL                             R3 -1 3
       12 FORGPREP_NEXT                    R3
       13 GETTABLEKS                       R8 R7 K4 ["Name"]
       15 SETTABLE                         R7 R2 R8
       16 FORGLOOP                         R3 2 ; [-4]
       18 NEWTABLE                         R3 0 0
       20 LOADN                            R6 1
       21 LENGTH                           R4 R1
       22 LOADN                            R5 1
       23 FORNPREP                         R4
       24 GETUPVAL                         R7 1
       25 GETTABLE                         R9 R1 R6
       26 GETTABLEKS                       R9 R9 K5 ["Instance"]
       28 NAMECALL                         R7 R7 K3 ["GetTags"]
       30 CALL                             R7 2 1
       31 NEWTABLE                         R8 0 0
       33 NEWTABLE                         R9 0 0
       35 NEWTABLE                         R10 0 0
       37 NEWTABLE                         R11 0 0
       39 NEWTABLE                         R12 0 0
       41 LOADB                            R13 0
       42 LOADN                            R16 1
       43 LENGTH                           R14 R7
       44 LOADN                            R15 1
       45 FORNPREP                         R14
       46 GETTABLE                         R17 R7 R16
       47 GETTABLE                         R18 R2 R17
       48 GETTABLEKS                       R20 R0 K6 ["trackedTags"]
       50 GETTABLE                         R19 R20 R17
       51 JUMPIFNOT                        R19 ; [+62]
       52 JUMPIFNOT                        R18 ; [+61]
       53 GETTABLEKS                       R19 R18 K7 ["DrawType"]
       55 JUMPIFNOTEQKS                    R19 K8 ["Outline"] ; [+7]
       57 LENGTH                           R20 R8
       58 ADDK                             R19 R20 K9 [1]
       59 GETTABLEKS                       R20 R18 K10 ["Color"]
       61 SETTABLE                         R20 R8 R19
       62 JUMP                             ; [+39]
       63 GETTABLEKS                       R19 R18 K7 ["DrawType"]
       65 JUMPIFNOTEQKS                    R19 K11 ["Box"] ; [+7]
       67 LENGTH                           R20 R9
       68 ADDK                             R19 R20 K9 [1]
       69 GETTABLEKS                       R20 R18 K10 ["Color"]
       71 SETTABLE                         R20 R9 R19
       72 JUMP                             ; [+29]
       73 GETTABLEKS                       R19 R18 K7 ["DrawType"]
       75 JUMPIFNOTEQKS                    R19 K12 ["Icon"] ; [+7]
       77 LENGTH                           R20 R10
       78 ADDK                             R19 R20 K9 [1]
       79 GETTABLEKS                       R20 R18 K12 ["Icon"]
       81 SETTABLE                         R20 R10 R19
       82 JUMP                             ; [+19]
       83 GETUPVAL                         R19 2
       84 JUMPIF                           R19 ; [+8]
       85 GETTABLEKS                       R19 R18 K7 ["DrawType"]
       87 JUMPIFNOTEQKS                    R19 K13 ["Text"] ; [+5]
       89 LENGTH                           R20 R11
       90 ADDK                             R19 R20 K9 [1]
       91 SETTABLE                         R17 R11 R19
       92 JUMP                             ; [+9]
       93 GETTABLEKS                       R19 R18 K7 ["DrawType"]
       95 JUMPIFNOTEQKS                    R19 K14 ["Sphere"] ; [+6]
       97 LENGTH                           R20 R12
       98 ADDK                             R19 R20 K9 [1]
       99 GETTABLEKS                       R20 R18 K10 ["Color"]
      101 SETTABLE                         R20 R12 R19
      102 GETUPVAL                         R19 2
      103 JUMPIFNOT                        R19 ; [+6]
      104 GETTABLEKS                       R19 R18 K15 ["ShowText"]
      106 JUMPIFNOT                        R19 ; [+3]
      107 LENGTH                           R20 R11
      108 ADDK                             R19 R20 K9 [1]
      109 SETTABLE                         R17 R11 R19
      110 GETTABLEKS                       R19 R18 K16 ["AlwaysOnTop"]
      112 JUMPIFNOT                        R19 ; [+1]
      113 LOADB                            R13 1
      114 FORNLOOP                         R14
      115 GETTABLEKS                       R15 R0 K17 ["partIds"]
      117 GETTABLE                         R16 R1 R6
      118 GETTABLEKS                       R16 R16 K5 ["Instance"]
      120 GETTABLE                         R14 R15 R16
      121 LENGTH                           R15 R8
      122 LOADN                            R16 0
      123 JUMPIFNOTLT                      R16 R15 ; [+52]
      125 LOADN                            R15 0
      126 LOADN                            R16 0
      127 LOADN                            R17 0
      128 LOADN                            R20 1
      129 LENGTH                           R18 R8
      130 LOADN                            R19 1
      131 FORNPREP                         R18
      132 GETTABLE                         R21 R8 R20
      133 GETTABLEKS                       R21 R21 K18 ["r"]
      135 ADD                              R15 R15 R21
      136 GETTABLE                         R21 R8 R20
      137 GETTABLEKS                       R21 R21 K19 ["g"]
      139 ADD                              R16 R16 R21
      140 GETTABLE                         R21 R8 R20
      141 GETTABLEKS                       R21 R21 K20 ["b"]
      143 ADD                              R17 R17 R21
      144 FORNLOOP                         R18
      145 LENGTH                           R18 R8
      146 DIV                              R15 R15 R18
      147 LENGTH                           R18 R8
      148 DIV                              R16 R16 R18
      149 LENGTH                           R18 R8
      150 DIV                              R17 R17 R18
      151 GETIMPORT                        R18 K23 [Color3.new]
      153 MOVE                             R19 R15
      154 MOVE                             R20 R16
      155 MOVE                             R21 R17
      156 CALL                             R18 3 1
      157 LOADK                            R20 K24 ["Outline:"]
      158 MOVE                             R21 R14
      159 CONCAT                           R19 R20 R21
      160 DUPTABLE                         R20 K27 [{"Id", "Part", "DrawType", "Color", "AlwaysOnTop"}]
      161 SETTABLEKS                       R14 R20 K25 ["Id"]
      163 GETTABLE                         R21 R1 R6
      164 GETTABLEKS                       R21 R21 K5 ["Instance"]
      166 SETTABLEKS                       R21 R20 K26 ["Part"]
      168 LOADK                            R21 K8 ["Outline"]
      169 SETTABLEKS                       R21 R20 K7 ["DrawType"]
      171 SETTABLEKS                       R18 R20 K10 ["Color"]
      173 SETTABLEKS                       R13 R20 K16 ["AlwaysOnTop"]
      175 SETTABLE                         R20 R3 R19
      176 LENGTH                           R15 R9
      177 LOADN                            R16 0
      178 JUMPIFNOTLT                      R16 R15 ; [+52]
      180 LOADN                            R15 0
      181 LOADN                            R16 0
      182 LOADN                            R17 0
      183 LOADN                            R20 1
      184 LENGTH                           R18 R9
      185 LOADN                            R19 1
      186 FORNPREP                         R18
      187 GETTABLE                         R21 R9 R20
      188 GETTABLEKS                       R21 R21 K18 ["r"]
      190 ADD                              R15 R15 R21
      191 GETTABLE                         R21 R9 R20
      192 GETTABLEKS                       R21 R21 K19 ["g"]
      194 ADD                              R16 R16 R21
      195 GETTABLE                         R21 R9 R20
      196 GETTABLEKS                       R21 R21 K20 ["b"]
      198 ADD                              R17 R17 R21
      199 FORNLOOP                         R18
      200 LENGTH                           R18 R9
      201 DIV                              R15 R15 R18
      202 LENGTH                           R18 R9
      203 DIV                              R16 R16 R18
      204 LENGTH                           R18 R9
      205 DIV                              R17 R17 R18
      206 GETIMPORT                        R18 K23 [Color3.new]
      208 MOVE                             R19 R15
      209 MOVE                             R20 R16
      210 MOVE                             R21 R17
      211 CALL                             R18 3 1
      212 LOADK                            R20 K28 ["Box:"]
      213 MOVE                             R21 R14
      214 CONCAT                           R19 R20 R21
      215 DUPTABLE                         R20 K27 [{"Id", "Part", "DrawType", "Color", "AlwaysOnTop"}]
      216 SETTABLEKS                       R14 R20 K25 ["Id"]
      218 GETTABLE                         R21 R1 R6
      219 GETTABLEKS                       R21 R21 K5 ["Instance"]
      221 SETTABLEKS                       R21 R20 K26 ["Part"]
      223 LOADK                            R21 K11 ["Box"]
      224 SETTABLEKS                       R21 R20 K7 ["DrawType"]
      226 SETTABLEKS                       R18 R20 K10 ["Color"]
      228 SETTABLEKS                       R13 R20 K16 ["AlwaysOnTop"]
      230 SETTABLE                         R20 R3 R19
      231 LENGTH                           R15 R10
      232 LOADN                            R16 0
      233 JUMPIFNOTLT                      R16 R15 ; [+20]
      235 LOADK                            R16 K29 ["Icon:"]
      236 MOVE                             R17 R14
      237 CONCAT                           R15 R16 R17
      238 DUPTABLE                         R16 K30 [{"Id", "Part", "DrawType", "Icon", "AlwaysOnTop"}]
      239 SETTABLEKS                       R14 R16 K25 ["Id"]
      241 GETTABLE                         R17 R1 R6
      242 GETTABLEKS                       R17 R17 K5 ["Instance"]
      244 SETTABLEKS                       R17 R16 K26 ["Part"]
      246 LOADK                            R17 K12 ["Icon"]
      247 SETTABLEKS                       R17 R16 K7 ["DrawType"]
      249 SETTABLEKS                       R10 R16 K12 ["Icon"]
      251 SETTABLEKS                       R13 R16 K16 ["AlwaysOnTop"]
      253 SETTABLE                         R16 R3 R15
      254 LENGTH                           R15 R11
      255 LOADN                            R16 0
      256 JUMPIFNOTLT                      R16 R15 ; [+32]
      258 GETIMPORT                        R15 K33 [table.sort]
      260 MOVE                             R16 R11
      261 CALL                             R15 1 0
      262 LENGTH                           R15 R10
      263 LOADN                            R16 0
      264 JUMPIFNOTLT                      R16 R15 ; [+5]
      266 LENGTH                           R16 R11
      267 ADDK                             R15 R16 K9 [1]
      268 LOADK                            R16 K34 [""]
      269 SETTABLE                         R16 R11 R15
      270 LOADK                            R16 K35 ["Text:"]
      271 MOVE                             R17 R14
      272 CONCAT                           R15 R16 R17
      273 DUPTABLE                         R16 K37 [{"Id", "Part", "DrawType", "TagName", "AlwaysOnTop"}]
      274 SETTABLEKS                       R14 R16 K25 ["Id"]
      276 GETTABLE                         R17 R1 R6
      277 GETTABLEKS                       R17 R17 K5 ["Instance"]
      279 SETTABLEKS                       R17 R16 K26 ["Part"]
      281 LOADK                            R17 K13 ["Text"]
      282 SETTABLEKS                       R17 R16 K7 ["DrawType"]
      284 SETTABLEKS                       R11 R16 K36 ["TagName"]
      286 SETTABLEKS                       R13 R16 K16 ["AlwaysOnTop"]
      288 SETTABLE                         R16 R3 R15
      289 LENGTH                           R15 R12
      290 LOADN                            R16 0
      291 JUMPIFNOTLT                      R16 R15 ; [+52]
      293 LOADN                            R15 0
      294 LOADN                            R16 0
      295 LOADN                            R17 0
      296 LOADN                            R20 1
      297 LENGTH                           R18 R12
      298 LOADN                            R19 1
      299 FORNPREP                         R18
      300 GETTABLE                         R21 R12 R20
      301 GETTABLEKS                       R21 R21 K18 ["r"]
      303 ADD                              R15 R15 R21
      304 GETTABLE                         R21 R12 R20
      305 GETTABLEKS                       R21 R21 K19 ["g"]
      307 ADD                              R16 R16 R21
      308 GETTABLE                         R21 R12 R20
      309 GETTABLEKS                       R21 R21 K20 ["b"]
      311 ADD                              R17 R17 R21
      312 FORNLOOP                         R18
      313 LENGTH                           R18 R12
      314 DIV                              R15 R15 R18
      315 LENGTH                           R18 R12
      316 DIV                              R16 R16 R18
      317 LENGTH                           R18 R12
      318 DIV                              R17 R17 R18
      319 GETIMPORT                        R18 K23 [Color3.new]
      321 MOVE                             R19 R15
      322 MOVE                             R20 R16
      323 MOVE                             R21 R17
      324 CALL                             R18 3 1
      325 LOADK                            R20 K38 ["Sphere:"]
      326 MOVE                             R21 R14
      327 CONCAT                           R19 R20 R21
      328 DUPTABLE                         R20 K27 [{"Id", "Part", "DrawType", "Color", "AlwaysOnTop"}]
      329 SETTABLEKS                       R14 R20 K25 ["Id"]
      331 GETTABLE                         R21 R1 R6
      332 GETTABLEKS                       R21 R21 K5 ["Instance"]
      334 SETTABLEKS                       R21 R20 K26 ["Part"]
      336 LOADK                            R21 K14 ["Sphere"]
      337 SETTABLEKS                       R21 R20 K7 ["DrawType"]
      339 SETTABLEKS                       R18 R20 K10 ["Color"]
      341 SETTABLEKS                       R13 R20 K16 ["AlwaysOnTop"]
      343 SETTABLE                         R20 R3 R19
      344 FORNLOOP                         R4
      345 RETURN                           R3 1

PROTO_12:
        0 GETIMPORT                        R1 K2 [debug.profilebegin]
        2 LOADK                            R2 K3 ["[Tag Editor] Update WorldProvider"]
        3 CALL                             R1 1 0
        4 NAMECALL                         R1 R0 K4 ["collectParts"]
        6 CALL                             R1 1 1
        7 MOVE                             R4 R1
        8 NAMECALL                         R2 R0 K5 ["prepareAdornmentMap"]
       10 CALL                             R2 2 1
       11 DUPTABLE                         R5 K7 [{"partsList"}]
       12 SETTABLEKS                       R2 R5 K6 ["partsList"]
       14 NAMECALL                         R3 R0 K8 ["setState"]
       16 CALL                             R3 2 0
       17 GETIMPORT                        R3 K10 [debug.profileend]
       19 CALL                             R3 0 0
       20 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R3 R0 K0 ["trackedParts"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+8]
        4 GETTABLEKS                       R2 R0 K0 ["trackedParts"]
        6 GETTABLEKS                       R5 R0 K0 ["trackedParts"]
        8 GETTABLE                         R4 R5 R1
        9 ADDK                             R3 R4 K1 [1]
       10 SETTABLE                         R3 R2 R1
       11 RETURN                           R0 0
       12 GETTABLEKS                       R2 R0 K0 ["trackedParts"]
       14 LOADN                            R3 1
       15 SETTABLE                         R3 R2 R1
       16 GETTABLEKS                       R3 R0 K2 ["nextId"]
       18 ADDK                             R2 R3 K1 [1]
       19 SETTABLEKS                       R2 R0 K2 ["nextId"]
       21 GETTABLEKS                       R2 R0 K3 ["partIds"]
       23 GETTABLEKS                       R3 R0 K2 ["nextId"]
       25 SETTABLE                         R3 R2 R1
       26 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R3 R0 K0 ["trackedParts"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R3 R0 K0 ["trackedParts"]
        7 GETTABLE                         R2 R3 R1
        8 LOADN                            R3 1
        9 JUMPIFNOTLE                      R2 R3 ; [+6]
       11 MOVE                             R4 R1
       12 NAMECALL                         R2 R0 K1 ["removeInstance"]
       14 CALL                             R2 2 0
       15 RETURN                           R0 0
       16 GETTABLEKS                       R2 R0 K0 ["trackedParts"]
       18 GETTABLEKS                       R5 R0 K0 ["trackedParts"]
       20 GETTABLE                         R4 R5 R1
       21 SUBK                             R3 R4 K2 [1]
       22 SETTABLE                         R3 R2 R1
       23 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["trackedParts"]
        2 LOADNIL                          R3
        3 SETTABLE                         R3 R2 R1
        4 GETTABLEKS                       R2 R0 K1 ["partIds"]
        6 LOADNIL                          R3
        7 SETTABLE                         R3 R2 R1
        8 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["ClassName"]
        2 JUMPIFNOTEQKS                    R1 K1 ["Model"] ; [+3]
        4 LOADB                            R1 1
        5 RETURN                           R1 1
        6 GETTABLEKS                       R1 R0 K0 ["ClassName"]
        8 JUMPIFNOTEQKS                    R1 K2 ["Attachment"] ; [+3]
       10 LOADB                            R1 1
       11 RETURN                           R1 1
       12 LOADK                            R3 K3 ["BasePart"]
       13 NAMECALL                         R1 R0 K4 ["IsA"]
       15 CALL                             R1 2 1
       16 JUMPIFNOT                        R1 ; [+2]
       17 LOADB                            R1 1
       18 RETURN                           R1 1
       19 LOADB                            R1 0
       20 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["trackedParts"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 JUMPIF                           R0 ; [+17]
        6 GETUPVAL                         R0 1
        7 GETIMPORT                        R2 K2 [workspace]
        9 NAMECALL                         R0 R0 K3 ["IsDescendantOf"]
       11 CALL                             R0 2 1
       12 JUMPIFNOT                        R0 ; [+10]
       13 GETUPVAL                         R0 0
       14 GETUPVAL                         R2 1
       15 NAMECALL                         R0 R0 K4 ["instanceAdded"]
       17 CALL                             R0 2 0
       18 GETUPVAL                         R0 0
       19 NAMECALL                         R0 R0 K5 ["updateParts"]
       21 CALL                             R0 1 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R1 R1 K0 ["trackedParts"]
       26 GETUPVAL                         R2 1
       27 GETTABLE                         R0 R1 R2
       28 JUMPIFNOT                        R0 ; [+16]
       29 GETUPVAL                         R0 1
       30 GETIMPORT                        R2 K2 [workspace]
       32 NAMECALL                         R0 R0 K3 ["IsDescendantOf"]
       34 CALL                             R0 2 1
       35 JUMPIF                           R0 ; [+9]
       36 GETUPVAL                         R0 0
       37 GETUPVAL                         R2 1
       38 NAMECALL                         R0 R0 K6 ["removeInstance"]
       40 CALL                             R0 2 0
       41 GETUPVAL                         R0 0
       42 NAMECALL                         R0 R0 K5 ["updateParts"]
       44 CALL                             R0 1 0
       45 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["trackedParts"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 JUMPIF                           R0 ; [+17]
        6 GETUPVAL                         R0 1
        7 GETIMPORT                        R2 K2 [workspace]
        9 NAMECALL                         R0 R0 K3 ["IsDescendantOf"]
       11 CALL                             R0 2 1
       12 JUMPIFNOT                        R0 ; [+10]
       13 GETUPVAL                         R0 0
       14 GETUPVAL                         R2 1
       15 NAMECALL                         R0 R0 K4 ["instanceAdded"]
       17 CALL                             R0 2 0
       18 GETUPVAL                         R0 0
       19 NAMECALL                         R0 R0 K5 ["updateParts"]
       21 CALL                             R0 1 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R1 R1 K0 ["trackedParts"]
       26 GETUPVAL                         R2 1
       27 GETTABLE                         R0 R1 R2
       28 JUMPIFNOT                        R0 ; [+16]
       29 GETUPVAL                         R0 1
       30 GETIMPORT                        R2 K2 [workspace]
       32 NAMECALL                         R0 R0 K3 ["IsDescendantOf"]
       34 CALL                             R0 2 1
       35 JUMPIF                           R0 ; [+9]
       36 GETUPVAL                         R0 0
       37 GETUPVAL                         R2 1
       38 NAMECALL                         R0 R0 K6 ["removeInstance"]
       40 CALL                             R0 2 0
       41 GETUPVAL                         R0 0
       42 NAMECALL                         R0 R0 K5 ["updateParts"]
       44 CALL                             R0 1 0
       45 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R2 R0 K0 ["ClassName"]
        2 JUMPIFNOTEQKS                    R2 K1 ["Model"] ; [+3]
        4 LOADB                            R1 1
        5 JUMP                             ; [+14]
        6 GETTABLEKS                       R2 R0 K0 ["ClassName"]
        8 JUMPIFNOTEQKS                    R2 K2 ["Attachment"] ; [+3]
       10 LOADB                            R1 1
       11 JUMP                             ; [+8]
       12 LOADK                            R4 K3 ["BasePart"]
       13 NAMECALL                         R2 R0 K4 ["IsA"]
       15 CALL                             R2 2 1
       16 JUMPIFNOT                        R2 ; [+2]
       17 LOADB                            R1 1
       18 JUMP                             ; [+1]
       19 LOADB                            R1 0
       20 JUMPIF                           R1 ; [+1]
       21 RETURN                           R0 0
       22 GETIMPORT                        R3 K6 [workspace]
       24 NAMECALL                         R1 R0 K7 ["IsDescendantOf"]
       26 CALL                             R1 2 1
       27 JUMPIFNOT                        R1 ; [+9]
       28 GETUPVAL                         R1 0
       29 MOVE                             R3 R0
       30 NAMECALL                         R1 R1 K8 ["instanceAdded"]
       32 CALL                             R1 2 0
       33 GETUPVAL                         R1 0
       34 NAMECALL                         R1 R1 K9 ["updateParts"]
       36 CALL                             R1 1 0
       37 GETUPVAL                         R2 0
       38 GETTABLEKS                       R2 R2 K10 ["instanceAncestryChangedConns"]
       40 GETTABLE                         R1 R2 R0
       41 JUMPIF                           R1 ; [+12]
       42 GETUPVAL                         R1 0
       43 GETTABLEKS                       R1 R1 K10 ["instanceAncestryChangedConns"]
       45 GETTABLEKS                       R2 R0 K11 ["AncestryChanged"]
       47 NEWCLOSURE                       R4 P0
       48 CAPTURE                          UPVAL U0
       49 CAPTURE                          VAL R0
       50 NAMECALL                         R2 R2 K12 ["Connect"]
       52 CALL                             R2 2 1
       53 SETTABLE                         R2 R1 R0
       54 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R2 R0 K0 ["ClassName"]
        2 JUMPIFNOTEQKS                    R2 K1 ["Model"] ; [+3]
        4 LOADB                            R1 1
        5 JUMP                             ; [+14]
        6 GETTABLEKS                       R2 R0 K0 ["ClassName"]
        8 JUMPIFNOTEQKS                    R2 K2 ["Attachment"] ; [+3]
       10 LOADB                            R1 1
       11 JUMP                             ; [+8]
       12 LOADK                            R4 K3 ["BasePart"]
       13 NAMECALL                         R2 R0 K4 ["IsA"]
       15 CALL                             R2 2 1
       16 JUMPIFNOT                        R2 ; [+2]
       17 LOADB                            R1 1
       18 JUMP                             ; [+1]
       19 LOADB                            R1 0
       20 JUMPIF                           R1 ; [+1]
       21 RETURN                           R0 0
       22 GETUPVAL                         R1 0
       23 MOVE                             R3 R0
       24 NAMECALL                         R1 R1 K5 ["instanceRemoved"]
       26 CALL                             R1 2 0
       27 GETUPVAL                         R1 0
       28 NAMECALL                         R1 R1 K6 ["updateParts"]
       30 CALL                             R1 1 0
       31 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R5 R0 K0 ["trackedTags"]
        2 GETTABLE                         R4 R5 R1
        3 NOT                              R3 R4
        4 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        6 LOADK                            R4 K1 ["Newly added tag must not already be tracked"]
        7 GETIMPORT                        R2 K3 [assert]
        9 CALL                             R2 2 0
       10 GETTABLEKS                       R2 R0 K0 ["trackedTags"]
       12 LOADB                            R3 1
       13 SETTABLE                         R3 R2 R1
       14 GETIMPORT                        R2 K5 [pairs]
       16 GETUPVAL                         R3 0
       17 MOVE                             R5 R1
       18 NAMECALL                         R3 R3 K6 ["GetTagged"]
       20 CALL                             R3 2 -1
       21 CALL                             R2 -1 3
       22 FORGPREP_NEXT                    R2
       23 GETTABLEKS                       R8 R6 K7 ["ClassName"]
       25 JUMPIFNOTEQKS                    R8 K8 ["Model"] ; [+3]
       27 LOADB                            R7 1
       28 JUMP                             ; [+14]
       29 GETTABLEKS                       R8 R6 K7 ["ClassName"]
       31 JUMPIFNOTEQKS                    R8 K9 ["Attachment"] ; [+3]
       33 LOADB                            R7 1
       34 JUMP                             ; [+8]
       35 LOADK                            R10 K10 ["BasePart"]
       36 NAMECALL                         R8 R6 K11 ["IsA"]
       38 CALL                             R8 2 1
       39 JUMPIFNOT                        R8 ; [+2]
       40 LOADB                            R7 1
       41 JUMP                             ; [+1]
       42 LOADB                            R7 0
       43 JUMPIFNOT                        R7 ; [+25]
       44 GETIMPORT                        R9 K13 [workspace]
       46 NAMECALL                         R7 R6 K14 ["IsDescendantOf"]
       48 CALL                             R7 2 1
       49 JUMPIFNOT                        R7 ; [+4]
       50 MOVE                             R9 R6
       51 NAMECALL                         R7 R0 K15 ["instanceAdded"]
       53 CALL                             R7 2 0
       54 GETTABLEKS                       R8 R0 K16 ["instanceAncestryChangedConns"]
       56 GETTABLE                         R7 R8 R6
       57 JUMPIF                           R7 ; [+11]
       58 GETTABLEKS                       R7 R0 K16 ["instanceAncestryChangedConns"]
       60 GETTABLEKS                       R8 R6 K17 ["AncestryChanged"]
       62 NEWCLOSURE                       R10 P0
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R6
       65 NAMECALL                         R8 R8 K18 ["Connect"]
       67 CALL                             R8 2 1
       68 SETTABLE                         R8 R7 R6
       69 FORGLOOP                         R2 2 ; [-47]
       71 GETUPVAL                         R2 1
       72 JUMPIF                           R2 ; [+26]
       73 GETTABLEKS                       R2 R0 K19 ["instanceAddedConns"]
       75 GETUPVAL                         R3 0
       76 MOVE                             R5 R1
       77 NAMECALL                         R3 R3 K20 ["GetInstanceAddedSignal"]
       79 CALL                             R3 2 1
       80 NEWCLOSURE                       R5 P1
       81 CAPTURE                          VAL R0
       82 NAMECALL                         R3 R3 K18 ["Connect"]
       84 CALL                             R3 2 1
       85 SETTABLE                         R3 R2 R1
       86 GETTABLEKS                       R2 R0 K21 ["instanceRemovedConns"]
       88 GETUPVAL                         R3 0
       89 MOVE                             R5 R1
       90 NAMECALL                         R3 R3 K22 ["GetInstanceRemovedSignal"]
       92 CALL                             R3 2 1
       93 NEWCLOSURE                       R5 P2
       94 CAPTURE                          VAL R0
       95 NAMECALL                         R3 R3 K18 ["Connect"]
       97 CALL                             R3 2 1
       98 SETTABLE                         R3 R2 R1
       99 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R4 R0 K0 ["trackedTags"]
        2 GETTABLE                         R3 R4 R1
        3 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        5 LOADK                            R4 K1 ["Attempted to remove a tag that isn't tracked"]
        6 GETIMPORT                        R2 K3 [assert]
        8 CALL                             R2 2 0
        9 GETTABLEKS                       R2 R0 K0 ["trackedTags"]
       11 LOADNIL                          R3
       12 SETTABLE                         R3 R2 R1
       13 GETIMPORT                        R2 K5 [pairs]
       15 GETUPVAL                         R3 0
       16 MOVE                             R5 R1
       17 NAMECALL                         R3 R3 K6 ["GetTagged"]
       19 CALL                             R3 2 -1
       20 CALL                             R2 -1 3
       21 FORGPREP_NEXT                    R2
       22 GETIMPORT                        R9 K8 [workspace]
       24 NAMECALL                         R7 R6 K9 ["IsDescendantOf"]
       26 CALL                             R7 2 1
       27 JUMPIFNOT                        R7 ; [+4]
       28 MOVE                             R9 R6
       29 NAMECALL                         R7 R0 K10 ["instanceRemoved"]
       31 CALL                             R7 2 0
       32 FORGLOOP                         R2 2 ; [-11]
       34 GETTABLEKS                       R2 R0 K11 ["instanceAddedConns"]
       36 LOADNIL                          R3
       37 SETTABLE                         R3 R2 R1
       38 GETTABLEKS                       R2 R0 K12 ["instanceRemovedConns"]
       40 LOADNIL                          R3
       41 SETTABLE                         R3 R2 R1
       42 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["onTagsUpdatedConn"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K2 ["instanceAddedConns"]
        7 NAMECALL                         R1 R1 K3 ["clean"]
        9 CALL                             R1 1 0
       10 GETTABLEKS                       R1 R0 K4 ["instanceRemovedConns"]
       12 NAMECALL                         R1 R1 K3 ["clean"]
       14 CALL                             R1 1 0
       15 GETTABLEKS                       R1 R0 K5 ["instanceAncestryChangedConns"]
       17 NAMECALL                         R1 R1 K3 ["clean"]
       19 CALL                             R1 1 0
       20 GETTABLEKS                       R1 R0 K6 ["maid"]
       22 NAMECALL                         R1 R1 K3 ["clean"]
       24 CALL                             R1 1 0
       25 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["oneChild"]
        3 GETTABLEKS                       R3 R0 K1 ["props"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K2 ["Children"]
        8 GETTABLE                         R2 R3 R4
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R0 K3 ["state"]
       12 GETTABLEKS                       R2 R2 K4 ["partsList"]
       14 MOVE                             R3 R1
       15 MOVE                             R4 R2
       16 CALL                             R3 1 -1
       17 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CollectionService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETTABLEKS                       R1 R1 K6 ["Parent"]
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R3 R1 K9 ["Packages"]
       21 GETTABLEKS                       R3 R3 K10 ["Roact"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K8 [require]
       26 GETTABLEKS                       R4 R1 K11 ["Src"]
       28 GETTABLEKS                       R4 R4 K12 ["Constants"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K8 [require]
       33 GETTABLEKS                       R5 R1 K11 ["Src"]
       35 GETTABLEKS                       R5 R5 K13 ["TagManager"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K8 [require]
       40 GETTABLEKS                       R6 R1 K11 ["Src"]
       42 GETTABLEKS                       R6 R6 K14 ["Maid"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K1 [game]
       47 LOADK                            R8 K15 ["TagEditorShowTextSeparately"]
       48 NAMECALL                         R6 R6 K16 ["GetFastFlag"]
       50 CALL                             R6 2 1
       51 GETTABLEKS                       R7 R2 K17 ["PureComponent"]
       53 LOADK                            R9 K18 ["WorldProvider"]
       54 NAMECALL                         R7 R7 K19 ["extend"]
       56 CALL                             R7 2 1
       57 GETIMPORT                        R8 K1 [game]
       59 LOADK                            R10 K20 ["TagEditorExternalUpdate"]
       60 NAMECALL                         R8 R8 K16 ["GetFastFlag"]
       62 CALL                             R8 2 1
       63 GETIMPORT                        R9 K1 [game]
       65 LOADK                            R11 K21 ["TagEditorVisualizeMeshParts"]
       66 LOADB                            R12 0
       67 NAMECALL                         R9 R9 K22 ["DefineFastFlag"]
       69 CALL                             R9 3 1
       70 DUPCLOSURE                       R10 K23 [PROTO_0]
       71 DUPCLOSURE                       R11 K24 [PROTO_3]
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R3
       74 SETTABLEKS                       R11 R7 K25 ["init"]
       76 DUPCLOSURE                       R11 K26 [PROTO_5]
       77 CAPTURE                          VAL R4
       78 SETTABLEKS                       R11 R7 K27 ["didMount"]
       80 DUPCLOSURE                       R11 K28 [PROTO_6]
       81 DUPCLOSURE                       R12 K29 [PROTO_7]
       82 SETGLOBAL                        R12 K30 ["isInFrontOf"]
       84 DUPCLOSURE                       R12 K31 [PROTO_10]
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R9
       88 SETTABLEKS                       R12 R7 K32 ["collectParts"]
       90 DUPCLOSURE                       R12 K33 [PROTO_11]
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R0
       93 CAPTURE                          VAL R6
       94 SETTABLEKS                       R12 R7 K34 ["prepareAdornmentMap"]
       96 DUPCLOSURE                       R12 K35 [PROTO_12]
       97 SETTABLEKS                       R12 R7 K36 ["updateParts"]
       99 DUPCLOSURE                       R12 K37 [PROTO_13]
      100 SETTABLEKS                       R12 R7 K38 ["instanceAdded"]
      102 DUPCLOSURE                       R12 K39 [PROTO_14]
      103 SETTABLEKS                       R12 R7 K40 ["instanceRemoved"]
      105 DUPCLOSURE                       R12 K41 [PROTO_15]
      106 SETTABLEKS                       R12 R7 K42 ["removeInstance"]
      108 DUPCLOSURE                       R12 K43 [PROTO_16]
      109 DUPCLOSURE                       R13 K44 [PROTO_21]
      110 CAPTURE                          VAL R0
      111 CAPTURE                          VAL R8
      112 SETTABLEKS                       R13 R7 K45 ["tagAdded"]
      114 DUPCLOSURE                       R13 K46 [PROTO_22]
      115 CAPTURE                          VAL R0
      116 SETTABLEKS                       R13 R7 K47 ["tagRemoved"]
      118 DUPCLOSURE                       R13 K48 [PROTO_23]
      119 SETTABLEKS                       R13 R7 K49 ["willUnmount"]
      121 DUPCLOSURE                       R13 K50 [PROTO_24]
      122 CAPTURE                          VAL R2
      123 SETTABLEKS                       R13 R7 K51 ["render"]
      125 RETURN                           R7 1
