PROTO_0:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["FindFirstChild"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+6]
        5 LOADK                            R5 K1 ["Folder"]
        6 NAMECALL                         R3 R2 K2 ["IsA"]
        8 CALL                             R3 2 1
        9 JUMPIFNOT                        R3 ; [+1]
       10 RETURN                           R2 1
       11 GETIMPORT                        R3 K5 [Instance.new]
       13 LOADK                            R4 K1 ["Folder"]
       14 CALL                             R3 1 1
       15 LOADB                            R4 0
       16 SETTABLEKS                       R4 R3 K6 ["Archivable"]
       18 SETTABLEKS                       R1 R3 K7 ["Name"]
       20 RETURN                           R3 1

PROTO_1:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["FindFirstChild"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+7]
        5 LOADK                            R5 K1 ["BindableEvent"]
        6 NAMECALL                         R3 R2 K2 ["IsA"]
        8 CALL                             R3 2 1
        9 JUMPIF                           R3 ; [+2]
       10 LOADNIL                          R3
       11 RETURN                           R3 1
       12 JUMPIF                           R2 ; [+12]
       13 GETIMPORT                        R3 K5 [Instance.new]
       15 LOADK                            R4 K1 ["BindableEvent"]
       16 CALL                             R3 1 1
       17 LOADB                            R4 0
       18 SETTABLEKS                       R4 R3 K6 ["Archivable"]
       20 SETTABLEKS                       R1 R3 K7 ["Name"]
       22 SETTABLEKS                       R0 R3 K8 ["Parent"]
       24 MOVE                             R2 R3
       25 MOVE                             R4 R2
       26 JUMPIFNOT                        R4 ; [+4]
       27 LOADK                            R6 K1 ["BindableEvent"]
       28 NAMECALL                         R4 R2 K2 ["IsA"]
       30 CALL                             R4 2 1
       31 FASTCALL1                        ASSERT R4 ; [+2]
       32 GETIMPORT                        R3 K10 [assert]
       34 CALL                             R3 1 0
       35 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 GETUPVAL                         R5 2
        4 CALL                             R3 2 -1
        5 NAMECALL                         R1 R1 K0 ["dispatch"]
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 -1
        2 NAMECALL                         R1 R0 K0 ["dispatch"]
        4 CALL                             R1 -1 0
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["FOLDERS"]
        9 GETTABLEKS                       R3 R3 K2 ["CompositorDebugger"]
       11 MOVE                             R6 R3
       12 NAMECALL                         R4 R2 K3 ["FindFirstChild"]
       14 CALL                             R4 2 1
       15 JUMPIFNOT                        R4 ; [+7]
       16 LOADK                            R7 K4 ["Folder"]
       17 NAMECALL                         R5 R4 K5 ["IsA"]
       19 CALL                             R5 2 1
       20 JUMPIFNOT                        R5 ; [+2]
       21 MOVE                             R1 R4
       22 JUMP                             ; [+10]
       23 GETIMPORT                        R5 K8 [Instance.new]
       25 LOADK                            R6 K4 ["Folder"]
       26 CALL                             R5 1 1
       27 LOADB                            R6 0
       28 SETTABLEKS                       R6 R5 K9 ["Archivable"]
       30 SETTABLEKS                       R3 R5 K10 ["Name"]
       32 MOVE                             R1 R5
       33 GETUPVAL                         R3 2
       34 GETTABLEKS                       R3 R3 K1 ["FOLDERS"]
       36 GETTABLEKS                       R3 R3 K11 ["Gizmos"]
       38 MOVE                             R6 R3
       39 NAMECALL                         R4 R1 K3 ["FindFirstChild"]
       41 CALL                             R4 2 1
       42 JUMPIFNOT                        R4 ; [+7]
       43 LOADK                            R7 K4 ["Folder"]
       44 NAMECALL                         R5 R4 K5 ["IsA"]
       46 CALL                             R5 2 1
       47 JUMPIFNOT                        R5 ; [+2]
       48 MOVE                             R2 R4
       49 JUMP                             ; [+10]
       50 GETIMPORT                        R5 K8 [Instance.new]
       52 LOADK                            R6 K4 ["Folder"]
       53 CALL                             R5 1 1
       54 LOADB                            R6 0
       55 SETTABLEKS                       R6 R5 K9 ["Archivable"]
       57 SETTABLEKS                       R3 R5 K10 ["Name"]
       59 MOVE                             R2 R5
       60 GETUPVAL                         R5 3
       61 NAMECALL                         R5 R5 K12 ["IsServer"]
       63 CALL                             R5 1 1
       64 JUMPIFNOT                        R5 ; [+6]
       65 GETUPVAL                         R4 2
       66 GETTABLEKS                       R4 R4 K1 ["FOLDERS"]
       68 GETTABLEKS                       R4 R4 K13 ["Server"]
       70 JUMP                             ; [+5]
       71 GETUPVAL                         R4 2
       72 GETTABLEKS                       R4 R4 K1 ["FOLDERS"]
       74 GETTABLEKS                       R4 R4 K14 ["Client"]
       76 MOVE                             R7 R4
       77 NAMECALL                         R5 R1 K3 ["FindFirstChild"]
       79 CALL                             R5 2 1
       80 JUMPIFNOT                        R5 ; [+7]
       81 LOADK                            R8 K4 ["Folder"]
       82 NAMECALL                         R6 R5 K5 ["IsA"]
       84 CALL                             R6 2 1
       85 JUMPIFNOT                        R6 ; [+2]
       86 MOVE                             R3 R5
       87 JUMP                             ; [+10]
       88 GETIMPORT                        R6 K8 [Instance.new]
       90 LOADK                            R7 K4 ["Folder"]
       91 CALL                             R6 1 1
       92 LOADB                            R7 0
       93 SETTABLEKS                       R7 R6 K9 ["Archivable"]
       95 SETTABLEKS                       R4 R6 K10 ["Name"]
       97 MOVE                             R3 R6
       98 GETUPVAL                         R4 4
       99 MOVE                             R5 R3
      100 GETUPVAL                         R6 2
      101 GETTABLEKS                       R6 R6 K15 ["EVENTS"]
      103 GETTABLEKS                       R6 R6 K16 ["DebugData"]
      105 CALL                             R4 2 1
      106 GETUPVAL                         R5 4
      107 MOVE                             R6 R3
      108 GETUPVAL                         R7 2
      109 GETTABLEKS                       R7 R7 K15 ["EVENTS"]
      111 GETTABLEKS                       R7 R7 K17 ["PropertyOverrides"]
      113 CALL                             R5 2 1
      114 GETUPVAL                         R6 4
      115 MOVE                             R7 R3
      116 GETUPVAL                         R8 2
      117 GETTABLEKS                       R8 R8 K15 ["EVENTS"]
      119 GETTABLEKS                       R8 R8 K18 ["DebugPose"]
      121 CALL                             R6 2 1
      122 GETUPVAL                         R7 4
      123 MOVE                             R8 R3
      124 GETUPVAL                         R9 2
      125 GETTABLEKS                       R9 R9 K15 ["EVENTS"]
      127 GETTABLEKS                       R9 R9 K19 ["LayerSelection"]
      129 CALL                             R7 2 1
      130 JUMPIFNOT                        R4 ; [+55]
      131 JUMPIFNOT                        R5 ; [+54]
      132 JUMPIFNOT                        R6 ; [+53]
      133 GETUPVAL                         R10 5
      134 LOADB                            R11 1
      135 CALL                             R10 1 -1
      136 NAMECALL                         R8 R0 K0 ["dispatch"]
      138 CALL                             R8 -1 0
      139 GETTABLEKS                       R8 R4 K20 ["Event"]
      141 NEWCLOSURE                       R10 P0
      142 CAPTURE                          VAL R0
      143 CAPTURE                          UPVAL U6
      144 CAPTURE                          UPVAL U7
      145 NAMECALL                         R8 R8 K21 ["Connect"]
      147 CALL                             R8 2 1
      148 GETUPVAL                         R11 8
      149 MOVE                             R12 R4
      150 MOVE                             R13 R8
      151 CALL                             R11 2 -1
      152 NAMECALL                         R9 R0 K0 ["dispatch"]
      154 CALL                             R9 -1 0
      155 GETUPVAL                         R11 9
      156 MOVE                             R12 R5
      157 CALL                             R11 1 -1
      158 NAMECALL                         R9 R0 K0 ["dispatch"]
      160 CALL                             R9 -1 0
      161 GETUPVAL                         R11 10
      162 MOVE                             R12 R6
      163 CALL                             R11 1 -1
      164 NAMECALL                         R9 R0 K0 ["dispatch"]
      166 CALL                             R9 -1 0
      167 GETUPVAL                         R11 11
      168 MOVE                             R12 R7
      169 CALL                             R11 1 -1
      170 NAMECALL                         R9 R0 K0 ["dispatch"]
      172 CALL                             R9 -1 0
      173 GETUPVAL                         R11 12
      174 GETUPVAL                         R12 1
      175 CALL                             R11 1 -1
      176 NAMECALL                         R9 R0 K0 ["dispatch"]
      178 CALL                             R9 -1 0
      179 SETTABLEKS                       R1 R3 K22 ["Parent"]
      181 GETUPVAL                         R9 1
      182 SETTABLEKS                       R9 R1 K22 ["Parent"]
      184 SETTABLEKS                       R1 R2 K22 ["Parent"]
      186 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 CAPTURE                          UPVAL U9
       13 CAPTURE                          UPVAL U10
       14 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["CompositorDebugger"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R1 K8 ["Src"]
       15 GETTABLEKS                       R2 R2 K9 ["Actions"]
       17 GETIMPORT                        R3 K11 [require]
       19 GETTABLEKS                       R4 R2 K12 ["SetActor"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K11 [require]
       24 GETTABLEKS                       R5 R2 K13 ["SetDebugDataEvent"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K11 [require]
       29 GETTABLEKS                       R6 R2 K14 ["SetDebugPoseEvent"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K11 [require]
       34 GETTABLEKS                       R7 R2 K15 ["SetLayerSelectionEvent"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K11 [require]
       39 GETTABLEKS                       R8 R2 K16 ["SetPropertyOverridesEvent"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K11 [require]
       44 GETTABLEKS                       R9 R2 K17 ["SetSendPayloadAnalytics"]
       46 CALL                             R8 1 1
       47 GETTABLEKS                       R9 R1 K8 ["Src"]
       49 GETTABLEKS                       R9 R9 K18 ["Thunks"]
       51 GETIMPORT                        R10 K11 [require]
       53 GETTABLEKS                       R11 R9 K19 ["DetachCompositor"]
       55 CALL                             R10 1 1
       56 GETIMPORT                        R11 K11 [require]
       58 GETTABLEKS                       R12 R9 K20 ["ParseDebugData"]
       60 CALL                             R11 1 1
       61 GETTABLEKS                       R12 R1 K8 ["Src"]
       63 GETTABLEKS                       R12 R12 K21 ["Util"]
       65 GETIMPORT                        R13 K11 [require]
       67 GETTABLEKS                       R14 R12 K22 ["Constants"]
       69 CALL                             R13 1 1
       70 GETIMPORT                        R14 K11 [require]
       72 GETTABLEKS                       R15 R1 K23 ["Bin"]
       74 GETTABLEKS                       R15 R15 K24 ["Common"]
       76 GETTABLEKS                       R15 R15 K25 ["defineLuaFlags"]
       78 CALL                             R14 1 1
       79 GETIMPORT                        R15 K11 [require]
       81 GETTABLEKS                       R16 R1 K8 ["Src"]
       83 GETTABLEKS                       R16 R16 K26 ["Types"]
       85 CALL                             R15 1 1
       86 GETIMPORT                        R16 K11 [require]
       88 GETTABLEKS                       R17 R1 K23 ["Bin"]
       90 GETTABLEKS                       R17 R17 K24 ["Common"]
       92 GETTABLEKS                       R17 R17 K25 ["defineLuaFlags"]
       94 CALL                             R16 1 1
       95 DUPCLOSURE                       R17 K27 [PROTO_0]
       96 DUPCLOSURE                       R18 K28 [PROTO_1]
       97 DUPCLOSURE                       R19 K29 [PROTO_4]
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R13
      100 CAPTURE                          VAL R0
      101 CAPTURE                          VAL R18
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R11
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R3
      109 RETURN                           R19 1
