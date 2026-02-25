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
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 GETUPVAL                         R3 0
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 GETIMPORT                        R8 K2 [table.clone]
       10 MOVE                             R9 R7
       11 CALL                             R8 1 1
       12 SETTABLE                         R8 R1 R6
       13 MOVE                             R8 R0
       14 LOADNIL                          R9
       15 LOADNIL                          R10
       16 FORGPREP                         R8
       17 NEWTABLE                         R13 0 0
       19 SETTABLE                         R13 R2 R11
       20 MOVE                             R13 R12
       21 LOADNIL                          R14
       22 LOADNIL                          R15
       23 FORGPREP                         R13
       24 GETTABLEKS                       R20 R7 K3 ["Value"]
       26 GETTABLE                         R19 R20 R11
       27 GETTABLE                         R18 R19 R16
       28 JUMPIFEQ                         R18 R17 ; [+3]
       30 GETTABLE                         R18 R2 R11
       31 SETTABLE                         R17 R18 R16
       32 GETTABLE                         R20 R1 R6
       33 GETTABLEKS                       R19 R20 K3 ["Value"]
       35 GETTABLE                         R18 R19 R11
       36 SETTABLE                         R17 R18 R16
       37 FORGLOOP                         R13 2 ; [-14]
       39 FORGLOOP                         R8 2 ; [-23]
       41 FORGLOOP                         R3 2 ; [-34]
       43 GETUPVAL                         R3 1
       44 MOVE                             R4 R1
       45 MOVE                             R5 R0
       46 CALL                             R3 2 0
       47 RETURN                           R0 0

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
       43 GETUPVAL                         R12 7
       44 GETTABLEKS                       R11 R12 K3 ["createElement"]
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
       59 GETTABLEKS                       R20 R16 K4 ["Schema"]
       61 GETTABLEKS                       R19 R20 K5 ["Type"]
       63 GETTABLE                         R17 R18 R19
       64 JUMPIF                           R17 ; [+12]
       65 GETIMPORT                        R18 K7 [error]
       67 LOADK                            R20 K8 ["No renderer found for gizmo schema %*"]
       68 GETTABLEKS                       R23 R16 K4 ["Schema"]
       70 GETTABLEKS                       R22 R23 K5 ["Type"]
       72 NAMECALL                         R20 R20 K9 ["format"]
       74 CALL                             R20 2 1
       75 MOVE                             R19 R20
       76 CALL                             R18 1 0
       77 GETTABLEKS                       R18 R16 K10 ["Id"]
       79 GETUPVAL                         R20 7
       80 GETTABLEKS                       R19 R20 K3 ["createElement"]
       82 MOVE                             R20 R17
       83 GETUPVAL                         R22 10
       84 GETTABLEKS                       R21 R22 K11 ["join"]
       86 MOVE                             R22 R16
       87 DUPTABLE                         R23 K15 [{"Tool", "FromSelf", "Save"}]
       88 GETTABLEKS                       R24 R7 K16 ["_name"]
       90 SETTABLEKS                       R24 R23 K12 ["Tool"]
       92 SETTABLEKS                       R8 R23 K13 ["FromSelf"]
       94 NEWCLOSURE                       R24 P1
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R6
       97 SETTABLEKS                       R24 R23 K14 ["Save"]
       99 CALL                             R21 2 -1
      100 CALL                             R19 -1 1
      101 SETTABLE                         R19 R11 R18
      102 FORGLOOP                         R12 2 ; [-45]
      104 JUMPIFNOT                        R9 ; [+12]
      105 GETUPVAL                         R13 11
      106 GETTABLEKS                       R12 R13 K17 ["Note"]
      108 GETUPVAL                         R14 7
      109 GETTABLEKS                       R13 R14 K3 ["createElement"]
      111 GETUPVAL                         R14 12
      112 DUPTABLE                         R15 K19 [{"Key"}]
      113 SETTABLEKS                       R9 R15 K18 ["Key"]
      115 CALL                             R13 2 1
      116 SETTABLE                         R13 R11 R12
      117 GETUPVAL                         R13 7
      118 GETTABLEKS                       R12 R13 K3 ["createElement"]
      120 GETUPVAL                         R13 8
      121 MOVE                             R14 R0
      122 MOVE                             R15 R11
      123 CALL                             R12 3 -1
      124 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["useEffect"]
       30 GETTABLEKS                       R5 R2 K11 ["useState"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R9 R0 K12 ["Src"]
       36 GETTABLEKS                       R8 R9 K13 ["Hooks"]
       38 GETTABLEKS                       R7 R8 K14 ["useEventConnection"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R10 R0 K12 ["Src"]
       45 GETTABLEKS                       R9 R10 K13 ["Hooks"]
       47 GETTABLEKS                       R8 R9 K15 ["useGizmos"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R11 R0 K12 ["Src"]
       54 GETTABLEKS                       R10 R11 K13 ["Hooks"]
       56 GETTABLEKS                       R9 R10 K16 ["useNote"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R13 R0 K12 ["Src"]
       63 GETTABLEKS                       R12 R13 K17 ["Components"]
       65 GETTABLEKS                       R11 R12 K18 ["Gizmos"]
       67 GETTABLEKS                       R10 R11 K19 ["Brush"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R14 R0 K12 ["Src"]
       74 GETTABLEKS                       R13 R14 K17 ["Components"]
       76 GETTABLEKS                       R12 R13 K18 ["Gizmos"]
       78 GETTABLEKS                       R11 R12 K20 ["Placement"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R15 R0 K12 ["Src"]
       85 GETTABLEKS                       R14 R15 K17 ["Components"]
       87 GETTABLEKS                       R13 R14 K18 ["Gizmos"]
       89 GETTABLEKS                       R12 R13 K21 ["Plane"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K5 [require]
       94 GETTABLEKS                       R16 R0 K12 ["Src"]
       96 GETTABLEKS                       R15 R16 K17 ["Components"]
       98 GETTABLEKS                       R14 R15 K18 ["Gizmos"]
      100 GETTABLEKS                       R13 R14 K22 ["Region"]
      102 CALL                             R12 1 1
      103 GETIMPORT                        R13 K5 [require]
      105 GETTABLEKS                       R17 R0 K12 ["Src"]
      107 GETTABLEKS                       R16 R17 K17 ["Components"]
      109 GETTABLEKS                       R15 R16 K18 ["Gizmos"]
      111 GETTABLEKS                       R14 R15 K23 ["Note"]
      113 CALL                             R13 1 1
      114 GETIMPORT                        R14 K5 [require]
      116 GETTABLEKS                       R17 R0 K12 ["Src"]
      118 GETTABLEKS                       R16 R17 K24 ["Controllers"]
      120 GETTABLEKS                       R15 R16 K25 ["PluginController"]
      122 CALL                             R14 1 1
      123 GETIMPORT                        R15 K5 [require]
      125 GETTABLEKS                       R18 R0 K12 ["Src"]
      127 GETTABLEKS                       R17 R18 K24 ["Controllers"]
      129 GETTABLEKS                       R16 R17 K26 ["ToolController"]
      131 CALL                             R15 1 1
      132 GETTABLEKS                       R16 R3 K27 ["UI"]
      134 GETTABLEKS                       R17 R16 K28 ["Pane"]
      136 GETIMPORT                        R18 K5 [require]
      138 GETTABLEKS                       R20 R0 K12 ["Src"]
      140 GETTABLEKS                       R19 R20 K29 ["Types"]
      142 CALL                             R18 1 1
      143 GETTABLEKS                       R19 R18 K30 ["Gizmo"]
      145 GETIMPORT                        R20 K5 [require]
      147 GETTABLEKS                       R23 R0 K12 ["Src"]
      149 GETTABLEKS                       R22 R23 K31 ["Flags"]
      151 GETTABLEKS                       R21 R22 K32 ["getFFlagTerrainEditorGenerationFeature"]
      153 CALL                             R20 1 1
      154 NEWTABLE                         R21 4 0
      156 GETTABLEKS                       R22 R19 K19 ["Brush"]
      158 SETTABLE                         R9 R21 R22
      159 GETTABLEKS                       R22 R19 K20 ["Placement"]
      161 MOVE                             R24 R20
      162 CALL                             R24 0 1
      163 JUMPIFNOT                        R24 ; [+2]
      164 MOVE                             R23 R10
      165 JUMP                             ; [+1]
      166 LOADNIL                          R23
      167 SETTABLE                         R23 R21 R22
      168 GETTABLEKS                       R22 R19 K21 ["Plane"]
      170 SETTABLE                         R11 R21 R22
      171 GETTABLEKS                       R22 R19 K22 ["Region"]
      173 SETTABLE                         R12 R21 R22
      174 DUPCLOSURE                       R22 K33 [PROTO_2]
      175 CAPTURE                          VAL R15
      176 CAPTURE                          VAL R14
      177 CAPTURE                          VAL R5
      178 CAPTURE                          VAL R7
      179 CAPTURE                          VAL R8
      180 CAPTURE                          VAL R6
      181 CAPTURE                          VAL R4
      182 CAPTURE                          VAL R2
      183 CAPTURE                          VAL R17
      184 CAPTURE                          VAL R21
      185 CAPTURE                          VAL R1
      186 CAPTURE                          VAL R19
      187 CAPTURE                          VAL R13
      188 RETURN                           R22 1
