PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+11]
        2 GETUPVAL                         R0 1
        3 JUMPIFEQKN                       R0 K0 [-1] ; [+9]
        5 GETUPVAL                         R0 2
        6 NAMECALL                         R0 R0 K1 ["enable"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 3
       10 LOADB                            R1 1
       11 CALL                             R0 1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R0 2
       14 NAMECALL                         R0 R0 K2 ["disable"]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0
        7 NEWTABLE                         R1 0 0
        9 NEWTABLE                         R2 0 0
       11 GETUPVAL                         R3 2
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 GETIMPORT                        R8 K2 [table.clone]
       17 MOVE                             R9 R7
       18 CALL                             R8 1 1
       19 SETTABLE                         R8 R1 R6
       20 MOVE                             R8 R0
       21 LOADNIL                          R9
       22 LOADNIL                          R10
       23 FORGPREP                         R8
       24 NEWTABLE                         R13 0 0
       26 SETTABLE                         R13 R2 R11
       27 MOVE                             R13 R12
       28 LOADNIL                          R14
       29 LOADNIL                          R15
       30 FORGPREP                         R13
       31 GETTABLEKS                       R20 R7 K3 ["Value"]
       33 GETTABLE                         R19 R20 R11
       34 GETTABLE                         R18 R19 R16
       35 JUMPIFEQ                         R18 R17 ; [+3]
       37 GETTABLE                         R18 R2 R11
       38 SETTABLE                         R17 R18 R16
       39 GETTABLE                         R19 R1 R6
       40 GETTABLEKS                       R19 R19 K3 ["Value"]
       42 GETTABLE                         R18 R19 R11
       43 SETTABLE                         R17 R18 R16
       44 FORGLOOP                         R13 2 ; [-14]
       46 FORGLOOP                         R8 2 ; [-23]
       48 FORGLOOP                         R3 2 ; [-34]
       50 GETUPVAL                         R3 1
       51 MOVE                             R4 R1
       52 MOVE                             R5 R0
       53 CALL                             R3 2 0
       54 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 LOADB                            R4 0
       10 CALL                             R3 1 2
       11 GETUPVAL                         R5 3
       12 MOVE                             R6 R1
       13 MOVE                             R7 R3
       14 CALL                             R5 2 4
       15 GETUPVAL                         R9 4
       16 MOVE                             R10 R1
       17 MOVE                             R11 R3
       18 CALL                             R9 2 1
       19 GETUPVAL                         R10 5
       20 GETTABLEKS                       R11 R2 K1 ["Activation"]
       22 MOVE                             R12 R4
       23 NEWTABLE                         R13 0 0
       25 CALL                             R10 3 0
       26 NAMECALL                         R10 R1 K2 ["getToolIndex"]
       28 CALL                             R10 1 1
       29 GETUPVAL                         R11 6
       30 NEWCLOSURE                       R12 P0
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R10
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R4
       35 NEWTABLE                         R13 0 2
       37 MOVE                             R14 R10
       38 MOVE                             R15 R3
       39 SETLIST                          R13 R14 2 [1]
       41 CALL                             R11 2 0
       42 JUMPIF                           R3 ; [+9]
       43 GETUPVAL                         R11 7
       44 GETTABLEKS                       R11 R11 K3 ["createElement"]
       46 GETUPVAL                         R12 8
       47 MOVE                             R13 R0
       48 NEWTABLE                         R14 0 0
       50 CALL                             R11 3 -1
       51 RETURN                           R11 -1
       52 NEWTABLE                         R11 0 0
       54 MOVE                             R12 R5
       55 LOADNIL                          R13
       56 LOADNIL                          R14
       57 FORGPREP                         R12
       58 GETUPVAL                         R18 9
       59 GETTABLEKS                       R19 R16 K4 ["Schema"]
       61 GETTABLEKS                       R19 R19 K5 ["Type"]
       63 GETTABLE                         R17 R18 R19
       64 JUMPIF                           R17 ; [+12]
       65 GETIMPORT                        R18 K7 [error]
       67 LOADK                            R20 K8 ["No renderer found for gizmo schema %*"]
       68 GETTABLEKS                       R22 R16 K4 ["Schema"]
       70 GETTABLEKS                       R22 R22 K5 ["Type"]
       72 NAMECALL                         R20 R20 K9 ["format"]
       74 CALL                             R20 2 1
       75 MOVE                             R19 R20
       76 CALL                             R18 1 0
       77 GETTABLEKS                       R18 R16 K10 ["Id"]
       79 GETUPVAL                         R19 7
       80 GETTABLEKS                       R19 R19 K3 ["createElement"]
       82 MOVE                             R20 R17
       83 GETUPVAL                         R21 10
       84 GETTABLEKS                       R21 R21 K11 ["join"]
       86 MOVE                             R22 R16
       87 DUPTABLE                         R23 K15 [{"Tool", "FromSelf", "Save"}]
       88 GETTABLEKS                       R24 R7 K16 ["_name"]
       90 SETTABLEKS                       R24 R23 K12 ["Tool"]
       92 SETTABLEKS                       R8 R23 K13 ["FromSelf"]
       94 NEWCLOSURE                       R24 P1
       95 CAPTURE                          UPVAL U11
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R5
       98 SETTABLEKS                       R24 R23 K14 ["Save"]
      100 CALL                             R21 2 -1
      101 CALL                             R19 -1 1
      102 SETTABLE                         R19 R11 R18
      103 FORGLOOP                         R12 2 ; [-46]
      105 JUMPIFNOT                        R9 ; [+12]
      106 GETUPVAL                         R12 12
      107 GETTABLEKS                       R12 R12 K17 ["Note"]
      109 GETUPVAL                         R13 7
      110 GETTABLEKS                       R13 R13 K3 ["createElement"]
      112 GETUPVAL                         R14 13
      113 DUPTABLE                         R15 K19 [{"Key"}]
      114 SETTABLEKS                       R9 R15 K18 ["Key"]
      116 CALL                             R13 2 1
      117 SETTABLE                         R13 R11 R12
      118 GETUPVAL                         R12 7
      119 GETTABLEKS                       R12 R12 K3 ["createElement"]
      121 GETUPVAL                         R13 8
      122 MOVE                             R14 R0
      123 MOVE                             R15 R11
      124 CALL                             R12 3 -1
      125 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["useEffect"]
       30 GETTABLEKS                       R5 R2 K11 ["useState"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K12 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Hooks"]
       38 GETTABLEKS                       R7 R7 K14 ["useEventConnection"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K12 ["Src"]
       45 GETTABLEKS                       R8 R8 K13 ["Hooks"]
       47 GETTABLEKS                       R8 R8 K15 ["useGizmos"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R9 R0 K12 ["Src"]
       54 GETTABLEKS                       R9 R9 K13 ["Hooks"]
       56 GETTABLEKS                       R9 R9 K16 ["useNote"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R10 R0 K12 ["Src"]
       63 GETTABLEKS                       R10 R10 K17 ["Flags"]
       65 GETTABLEKS                       R10 R10 K18 ["getFFlagTerrainEditorOptimizeRaycastUpdates"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K12 ["Src"]
       72 GETTABLEKS                       R11 R11 K19 ["Components"]
       74 GETTABLEKS                       R11 R11 K20 ["Gizmos"]
       76 GETTABLEKS                       R11 R11 K21 ["Brush"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K12 ["Src"]
       83 GETTABLEKS                       R12 R12 K19 ["Components"]
       85 GETTABLEKS                       R12 R12 K20 ["Gizmos"]
       87 GETTABLEKS                       R12 R12 K22 ["Plane"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K12 ["Src"]
       94 GETTABLEKS                       R13 R13 K19 ["Components"]
       96 GETTABLEKS                       R13 R13 K20 ["Gizmos"]
       98 GETTABLEKS                       R13 R13 K23 ["Region"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K5 [require]
      103 GETTABLEKS                       R14 R0 K12 ["Src"]
      105 GETTABLEKS                       R14 R14 K19 ["Components"]
      107 GETTABLEKS                       R14 R14 K20 ["Gizmos"]
      109 GETTABLEKS                       R14 R14 K24 ["Note"]
      111 CALL                             R13 1 1
      112 GETIMPORT                        R14 K5 [require]
      114 GETTABLEKS                       R15 R0 K12 ["Src"]
      116 GETTABLEKS                       R15 R15 K25 ["Controllers"]
      118 GETTABLEKS                       R15 R15 K26 ["PluginController"]
      120 CALL                             R14 1 1
      121 GETIMPORT                        R15 K5 [require]
      123 GETTABLEKS                       R16 R0 K12 ["Src"]
      125 GETTABLEKS                       R16 R16 K25 ["Controllers"]
      127 GETTABLEKS                       R16 R16 K27 ["ToolController"]
      129 CALL                             R15 1 1
      130 GETTABLEKS                       R16 R3 K28 ["UI"]
      132 GETTABLEKS                       R17 R16 K29 ["Pane"]
      134 GETIMPORT                        R18 K5 [require]
      136 GETTABLEKS                       R19 R0 K12 ["Src"]
      138 GETTABLEKS                       R19 R19 K30 ["Types"]
      140 CALL                             R18 1 1
      141 GETTABLEKS                       R19 R18 K31 ["Gizmo"]
      143 NEWTABLE                         R20 4 0
      145 GETTABLEKS                       R21 R19 K21 ["Brush"]
      147 SETTABLE                         R10 R20 R21
      148 GETTABLEKS                       R21 R19 K22 ["Plane"]
      150 SETTABLE                         R11 R20 R21
      151 GETTABLEKS                       R21 R19 K23 ["Region"]
      153 SETTABLE                         R12 R20 R21
      154 DUPCLOSURE                       R21 K32 [PROTO_2]
      155 CAPTURE                          VAL R15
      156 CAPTURE                          VAL R14
      157 CAPTURE                          VAL R5
      158 CAPTURE                          VAL R7
      159 CAPTURE                          VAL R8
      160 CAPTURE                          VAL R6
      161 CAPTURE                          VAL R4
      162 CAPTURE                          VAL R2
      163 CAPTURE                          VAL R17
      164 CAPTURE                          VAL R20
      165 CAPTURE                          VAL R1
      166 CAPTURE                          VAL R9
      167 CAPTURE                          VAL R19
      168 CAPTURE                          VAL R13
      169 RETURN                           R21 1
