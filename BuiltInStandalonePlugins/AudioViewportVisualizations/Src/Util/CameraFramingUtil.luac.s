PROTO_0:
        0 LOADK                            R3 K0 ["Sound"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+5]
        5 LOADK                            R3 K2 ["AudioEmitter"]
        6 NAMECALL                         R1 R0 K1 ["IsA"]
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+6]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K3 ["getEmissionSource"]
       13 MOVE                             R2 R0
       14 CALL                             R1 1 -1
       15 RETURN                           R1 -1
       16 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K1 ["size"]
        2 DIVK                             R2 R3 K0 [2]
        3 GETTABLEKS                       R3 R0 K2 ["cframe"]
        5 MOVE                             R5 R1
        6 NAMECALL                         R3 R3 K3 ["PointToObjectSpace"]
        8 CALL                             R3 2 1
        9 MINUS                            R6 R2
       10 NAMECALL                         R4 R3 K4 ["Min"]
       12 CALL                             R4 2 1
       13 MOVE                             R7 R2
       14 NAMECALL                         R5 R3 K5 ["Max"]
       16 CALL                             R5 2 1
       17 DUPTABLE                         R6 K6 [{"cframe", "size"}]
       18 GETTABLEKS                       R8 R0 K2 ["cframe"]
       20 GETIMPORT                        R9 K9 [CFrame.new]
       22 ADD                              R11 R4 R5
       23 DIVK                             R10 R11 K0 [2]
       24 CALL                             R9 1 1
       25 MUL                              R7 R8 R9
       26 SETTABLEKS                       R7 R6 K2 ["cframe"]
       28 SUB                              R7 R5 R4
       29 SETTABLEKS                       R7 R6 K1 ["size"]
       31 RETURN                           R6 1

PROTO_2:
        0 LOADK                            R3 K0 ["BasePart"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+10]
        5 DUPTABLE                         R1 K4 [{"cframe", "size"}]
        6 GETTABLEKS                       R2 R0 K5 ["CFrame"]
        8 SETTABLEKS                       R2 R1 K2 ["cframe"]
       10 GETTABLEKS                       R2 R0 K6 ["Size"]
       12 SETTABLEKS                       R2 R1 K3 ["size"]
       14 RETURN                           R1 1
       15 LOADK                            R3 K7 ["Model"]
       16 NAMECALL                         R1 R0 K1 ["IsA"]
       18 CALL                             R1 2 1
       19 JUMPIFNOT                        R1 ; [+16]
       20 NAMECALL                         R1 R0 K8 ["GetBoundingBox"]
       22 CALL                             R1 1 2
       23 GETUPVAL                         R3 0
       24 DUPTABLE                         R4 K4 [{"cframe", "size"}]
       25 SETTABLEKS                       R1 R4 K2 ["cframe"]
       27 SETTABLEKS                       R2 R4 K3 ["size"]
       29 NAMECALL                         R5 R0 K9 ["GetPivot"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R5 R5 K10 ["Position"]
       34 CALL                             R3 2 1
       35 RETURN                           R3 1
       36 LOADK                            R3 K11 ["Camera"]
       37 NAMECALL                         R1 R0 K1 ["IsA"]
       39 CALL                             R1 2 1
       40 JUMPIFNOT                        R1 ; [+6]
       41 DUPTABLE                         R1 K13 [{["cframe"], ["size"] = {4, 4, 4}}]
       42 GETTABLEKS                       R2 R0 K5 ["CFrame"]
       44 SETTABLEKS                       R2 R1 K2 ["cframe"]
       46 RETURN                           R1 1
       47 LOADK                            R3 K14 ["PVInstance"]
       48 NAMECALL                         R1 R0 K1 ["IsA"]
       50 CALL                             R1 2 1
       51 JUMPIFNOT                        R1 ; [+7]
       52 DUPTABLE                         R1 K13 [{["cframe"], ["size"] = {4, 4, 4}}]
       53 NAMECALL                         R2 R0 K9 ["GetPivot"]
       55 CALL                             R2 1 1
       56 SETTABLEKS                       R2 R1 K2 ["cframe"]
       58 RETURN                           R1 1
       59 LOADK                            R3 K15 ["Attachment"]
       60 NAMECALL                         R1 R0 K1 ["IsA"]
       62 CALL                             R1 2 1
       63 JUMPIFNOT                        R1 ; [+6]
       64 DUPTABLE                         R1 K13 [{["cframe"], ["size"] = {4, 4, 4}}]
       65 GETTABLEKS                       R2 R0 K16 ["WorldCFrame"]
       67 SETTABLEKS                       R2 R1 K2 ["cframe"]
       69 RETURN                           R1 1
       70 LOADNIL                          R1
       71 RETURN                           R1 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 LOADK                            R10 K0 ["Sound"]
        7 NAMECALL                         R8 R6 K1 ["IsA"]
        9 CALL                             R8 2 1
       10 JUMPIF                           R8 ; [+5]
       11 LOADK                            R10 K2 ["AudioEmitter"]
       12 NAMECALL                         R8 R6 K1 ["IsA"]
       14 CALL                             R8 2 1
       15 JUMPIFNOT                        R8 ; [+6]
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R7 R7 K3 ["getEmissionSource"]
       19 MOVE                             R8 R6
       20 CALL                             R7 1 1
       21 JUMP                             ; [+1]
       22 MOVE                             R7 R6
       23 JUMPIFNOT                        R7 ; [+11]
       24 GETUPVAL                         R8 1
       25 MOVE                             R9 R7
       26 CALL                             R8 1 1
       27 JUMPIFNOT                        R8 ; [+7]
       28 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
       30 MOVE                             R10 R1
       31 MOVE                             R11 R8
       32 GETIMPORT                        R9 K6 [table.insert]
       34 CALL                             R9 2 0
       35 FORGLOOP                         R2 2 ; [-30]
       37 LENGTH                           R2 R1
       38 JUMPIFNOTEQKN                    R2 K7 [0] ; [+3]
       40 LOADNIL                          R2
       41 RETURN                           R2 1
       42 LENGTH                           R2 R1
       43 JUMPIFNOTEQKN                    R2 K8 [1] ; [+3]
       45 GETTABLEN                        R2 R1 1
       46 RETURN                           R2 1
       47 LOADNIL                          R2
       48 LOADNIL                          R3
       49 MOVE                             R4 R1
       50 LOADNIL                          R5
       51 LOADNIL                          R6
       52 FORGPREP                         R4
       53 GETTABLEKS                       R10 R8 K10 ["size"]
       55 DIVK                             R9 R10 K9 [2]
       56 LOADN                            R12 -1
       57 LOADN                            R10 1
       58 LOADN                            R11 2
       59 FORNPREP                         R10
       60 LOADN                            R15 -1
       61 LOADN                            R13 1
       62 LOADN                            R14 2
       63 FORNPREP                         R13
       64 LOADN                            R18 -1
       65 LOADN                            R16 1
       66 LOADN                            R17 2
       67 FORNPREP                         R16
       68 GETTABLEKS                       R19 R8 K11 ["cframe"]
       70 GETTABLEKS                       R23 R9 K12 ["X"]
       72 MUL                              R22 R23 R12
       73 GETTABLEKS                       R24 R9 K13 ["Y"]
       75 MUL                              R23 R24 R15
       76 GETTABLEKS                       R25 R9 K14 ["Z"]
       78 MUL                              R24 R25 R18
       79 FASTCALL                         VECTOR ; [+2]
       80 GETIMPORT                        R21 K17 [Vector3.new]
       82 CALL                             R21 3 1
       83 NAMECALL                         R19 R19 K18 ["PointToWorldSpace"]
       85 CALL                             R19 2 1
       86 JUMPIFNOT                        R2 ; [+6]
       87 MOVE                             R22 R19
       88 NAMECALL                         R20 R2 K19 ["Min"]
       90 CALL                             R20 2 1
       91 MOVE                             R2 R20
       92 JUMP                             ; [+1]
       93 MOVE                             R2 R19
       94 JUMPIFNOT                        R3 ; [+6]
       95 MOVE                             R22 R19
       96 NAMECALL                         R20 R3 K20 ["Max"]
       98 CALL                             R20 2 1
       99 MOVE                             R3 R20
      100 JUMP                             ; [+1]
      101 MOVE                             R3 R19
      102 FORNLOOP                         R16
      103 FORNLOOP                         R13
      104 FORNLOOP                         R10
      105 FORGLOOP                         R4 2 ; [-53]
      107 JUMPIFNOT                        R2 ; [+1]
      108 JUMPIF                           R3 ; [+2]
      109 LOADNIL                          R4
      110 RETURN                           R4 1
      111 ADD                              R5 R2 R3
      112 DIVK                             R4 R5 K9 [2]
      113 DUPTABLE                         R5 K21 [{"cframe", "size"}]
      114 GETIMPORT                        R6 K23 [CFrame.new]
      116 MOVE                             R7 R4
      117 CALL                             R6 1 1
      118 SETTABLEKS                       R6 R5 K11 ["cframe"]
      120 SUB                              R6 R3 R2
      121 SETTABLEKS                       R6 R5 K10 ["size"]
      123 RETURN                           R5 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["CurrentCamera"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["computeFramingExtents"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 JUMPIFNOT                        R2 ; [+7]
       11 GETTABLEKS                       R5 R2 K2 ["cframe"]
       13 GETTABLEKS                       R6 R2 K3 ["size"]
       15 NAMECALL                         R3 R1 K4 ["ZoomToExtents"]
       17 CALL                             R3 3 0
       18 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioViewportVisualizations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["SoundEmitterUtil"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K10 [game]
       18 LOADK                            R4 K11 ["Workspace"]
       19 NAMECALL                         R2 R2 K12 ["GetService"]
       21 CALL                             R2 2 1
       22 NEWTABLE                         R3 2 0
       24 DUPCLOSURE                       R4 K13 [PROTO_0]
       25 CAPTURE                          VAL R1
       26 DUPCLOSURE                       R5 K14 [PROTO_1]
       27 DUPCLOSURE                       R6 K15 [PROTO_2]
       28 CAPTURE                          VAL R5
       29 DUPCLOSURE                       R7 K16 [PROTO_3]
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R6
       32 SETTABLEKS                       R7 R3 K17 ["computeFramingExtents"]
       34 DUPCLOSURE                       R7 K18 [PROTO_4]
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R3
       37 SETTABLEKS                       R7 R3 K19 ["frameAudioSources"]
       39 RETURN                           R3 1
