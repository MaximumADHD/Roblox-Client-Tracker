PROTO_0:
        0 DUPTABLE                         R0 K12 [{"AnimationGen", "AssetInsert", "Channel", "CreatorStore", "ExecuteLuau", "Instance", "MaterialGen", "MeshGen", "PrimitiveGen", "ReadFile", "SegmentMesh", "TextureGen"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["AnimationGen"]
        4 GETTABLEKS                       R1 R1 K13 ["createGuestContext"]
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 CALL                             R1 2 1
        9 GETTABLEKS                       R1 R1 K14 ["bridge"]
       11 SETTABLEKS                       R1 R0 K0 ["AnimationGen"]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K1 ["AssetInsert"]
       16 GETTABLEKS                       R1 R1 K13 ["createGuestContext"]
       18 LOADNIL                          R2
       19 LOADNIL                          R3
       20 CALL                             R1 2 1
       21 GETTABLEKS                       R1 R1 K14 ["bridge"]
       23 SETTABLEKS                       R1 R0 K1 ["AssetInsert"]
       25 GETUPVAL                         R1 0
       26 GETTABLEKS                       R1 R1 K2 ["Channel"]
       28 GETTABLEKS                       R1 R1 K13 ["createGuestContext"]
       30 LOADNIL                          R2
       31 LOADNIL                          R3
       32 CALL                             R1 2 1
       33 GETTABLEKS                       R1 R1 K14 ["bridge"]
       35 SETTABLEKS                       R1 R0 K2 ["Channel"]
       37 GETUPVAL                         R1 0
       38 GETTABLEKS                       R1 R1 K3 ["CreatorStore"]
       40 GETTABLEKS                       R1 R1 K13 ["createGuestContext"]
       42 LOADNIL                          R2
       43 LOADNIL                          R3
       44 CALL                             R1 2 1
       45 GETTABLEKS                       R1 R1 K14 ["bridge"]
       47 SETTABLEKS                       R1 R0 K3 ["CreatorStore"]
       49 GETUPVAL                         R1 0
       50 GETTABLEKS                       R1 R1 K4 ["ExecuteLuau"]
       52 GETTABLEKS                       R1 R1 K13 ["createGuestContext"]
       54 LOADNIL                          R2
       55 LOADNIL                          R3
       56 CALL                             R1 2 1
       57 GETTABLEKS                       R1 R1 K14 ["bridge"]
       59 SETTABLEKS                       R1 R0 K4 ["ExecuteLuau"]
       61 GETUPVAL                         R1 0
       62 GETTABLEKS                       R1 R1 K5 ["Instance"]
       64 GETTABLEKS                       R1 R1 K13 ["createGuestContext"]
       66 LOADNIL                          R2
       67 LOADNIL                          R3
       68 CALL                             R1 2 1
       69 GETTABLEKS                       R1 R1 K14 ["bridge"]
       71 SETTABLEKS                       R1 R0 K5 ["Instance"]
       73 GETUPVAL                         R1 0
       74 GETTABLEKS                       R1 R1 K6 ["MaterialGen"]
       76 GETTABLEKS                       R1 R1 K13 ["createGuestContext"]
       78 LOADNIL                          R2
       79 LOADNIL                          R3
       80 CALL                             R1 2 1
       81 GETTABLEKS                       R1 R1 K14 ["bridge"]
       83 SETTABLEKS                       R1 R0 K6 ["MaterialGen"]
       85 GETUPVAL                         R1 0
       86 GETTABLEKS                       R1 R1 K7 ["MeshGen"]
       88 GETTABLEKS                       R1 R1 K13 ["createGuestContext"]
       90 LOADNIL                          R2
       91 LOADNIL                          R3
       92 CALL                             R1 2 1
       93 GETTABLEKS                       R1 R1 K14 ["bridge"]
       95 SETTABLEKS                       R1 R0 K7 ["MeshGen"]
       97 GETUPVAL                         R1 0
       98 GETTABLEKS                       R1 R1 K8 ["PrimitiveGen"]
      100 GETTABLEKS                       R1 R1 K13 ["createGuestContext"]
      102 LOADNIL                          R2
      103 LOADNIL                          R3
      104 CALL                             R1 2 1
      105 GETTABLEKS                       R1 R1 K14 ["bridge"]
      107 SETTABLEKS                       R1 R0 K8 ["PrimitiveGen"]
      109 GETUPVAL                         R1 0
      110 GETTABLEKS                       R1 R1 K9 ["ReadFile"]
      112 GETTABLEKS                       R1 R1 K13 ["createGuestContext"]
      114 LOADNIL                          R2
      115 LOADNIL                          R3
      116 CALL                             R1 2 1
      117 GETTABLEKS                       R1 R1 K14 ["bridge"]
      119 SETTABLEKS                       R1 R0 K9 ["ReadFile"]
      121 GETUPVAL                         R1 0
      122 GETTABLEKS                       R1 R1 K10 ["SegmentMesh"]
      124 GETTABLEKS                       R1 R1 K13 ["createGuestContext"]
      126 LOADNIL                          R2
      127 LOADNIL                          R3
      128 CALL                             R1 2 1
      129 GETTABLEKS                       R1 R1 K14 ["bridge"]
      131 SETTABLEKS                       R1 R0 K10 ["SegmentMesh"]
      133 GETUPVAL                         R1 0
      134 GETTABLEKS                       R1 R1 K11 ["TextureGen"]
      136 GETTABLEKS                       R1 R1 K13 ["createGuestContext"]
      138 LOADNIL                          R2
      139 LOADNIL                          R3
      140 CALL                             R1 2 1
      141 GETTABLEKS                       R1 R1 K14 ["bridge"]
      143 SETTABLEKS                       R1 R0 K11 ["TextureGen"]
      145 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 MOVE                             R4 R0
        8 SETLIST                          R3 R4 1 [1]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K3 [table.create]
       13 LOADN                            R3 12
       14 CALL                             R2 1 1
       15 MOVE                             R4 R2
       16 GETUPVAL                         R5 1
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R6 R6 K4 ["Provider"]
       20 DUPTABLE                         R7 K6 [{"value"}]
       21 GETTABLEKS                       R8 R1 K7 ["AnimationGen"]
       23 SETTABLEKS                       R8 R7 K5 ["value"]
       25 CALL                             R5 2 -1
       26 FASTCALL                         TABLE_INSERT ; [+2]
       27 GETIMPORT                        R3 K9 [table.insert]
       29 CALL                             R3 -1 0
       30 MOVE                             R4 R2
       31 GETUPVAL                         R5 1
       32 GETUPVAL                         R6 3
       33 GETTABLEKS                       R6 R6 K4 ["Provider"]
       35 DUPTABLE                         R7 K6 [{"value"}]
       36 GETTABLEKS                       R8 R1 K10 ["AssetInsert"]
       38 SETTABLEKS                       R8 R7 K5 ["value"]
       40 CALL                             R5 2 -1
       41 FASTCALL                         TABLE_INSERT ; [+2]
       42 GETIMPORT                        R3 K9 [table.insert]
       44 CALL                             R3 -1 0
       45 MOVE                             R4 R2
       46 GETUPVAL                         R5 1
       47 GETUPVAL                         R6 4
       48 GETTABLEKS                       R6 R6 K4 ["Provider"]
       50 DUPTABLE                         R7 K6 [{"value"}]
       51 GETTABLEKS                       R8 R1 K11 ["Channel"]
       53 SETTABLEKS                       R8 R7 K5 ["value"]
       55 CALL                             R5 2 -1
       56 FASTCALL                         TABLE_INSERT ; [+2]
       57 GETIMPORT                        R3 K9 [table.insert]
       59 CALL                             R3 -1 0
       60 MOVE                             R4 R2
       61 GETUPVAL                         R5 1
       62 GETUPVAL                         R6 5
       63 GETTABLEKS                       R6 R6 K4 ["Provider"]
       65 DUPTABLE                         R7 K6 [{"value"}]
       66 GETTABLEKS                       R8 R1 K12 ["CreatorStore"]
       68 SETTABLEKS                       R8 R7 K5 ["value"]
       70 CALL                             R5 2 -1
       71 FASTCALL                         TABLE_INSERT ; [+2]
       72 GETIMPORT                        R3 K9 [table.insert]
       74 CALL                             R3 -1 0
       75 MOVE                             R4 R2
       76 GETUPVAL                         R5 1
       77 GETUPVAL                         R6 6
       78 GETTABLEKS                       R6 R6 K4 ["Provider"]
       80 DUPTABLE                         R7 K6 [{"value"}]
       81 GETTABLEKS                       R8 R1 K13 ["ExecuteLuau"]
       83 SETTABLEKS                       R8 R7 K5 ["value"]
       85 CALL                             R5 2 -1
       86 FASTCALL                         TABLE_INSERT ; [+2]
       87 GETIMPORT                        R3 K9 [table.insert]
       89 CALL                             R3 -1 0
       90 MOVE                             R4 R2
       91 GETUPVAL                         R5 1
       92 GETUPVAL                         R6 7
       93 GETTABLEKS                       R6 R6 K4 ["Provider"]
       95 DUPTABLE                         R7 K6 [{"value"}]
       96 GETTABLEKS                       R8 R1 K14 ["Instance"]
       98 SETTABLEKS                       R8 R7 K5 ["value"]
      100 CALL                             R5 2 -1
      101 FASTCALL                         TABLE_INSERT ; [+2]
      102 GETIMPORT                        R3 K9 [table.insert]
      104 CALL                             R3 -1 0
      105 MOVE                             R4 R2
      106 GETUPVAL                         R5 1
      107 GETUPVAL                         R6 8
      108 GETTABLEKS                       R6 R6 K4 ["Provider"]
      110 DUPTABLE                         R7 K6 [{"value"}]
      111 GETTABLEKS                       R8 R1 K15 ["MaterialGen"]
      113 SETTABLEKS                       R8 R7 K5 ["value"]
      115 CALL                             R5 2 -1
      116 FASTCALL                         TABLE_INSERT ; [+2]
      117 GETIMPORT                        R3 K9 [table.insert]
      119 CALL                             R3 -1 0
      120 MOVE                             R4 R2
      121 GETUPVAL                         R5 1
      122 GETUPVAL                         R6 9
      123 GETTABLEKS                       R6 R6 K4 ["Provider"]
      125 DUPTABLE                         R7 K6 [{"value"}]
      126 GETTABLEKS                       R8 R1 K16 ["MeshGen"]
      128 SETTABLEKS                       R8 R7 K5 ["value"]
      130 CALL                             R5 2 -1
      131 FASTCALL                         TABLE_INSERT ; [+2]
      132 GETIMPORT                        R3 K9 [table.insert]
      134 CALL                             R3 -1 0
      135 MOVE                             R4 R2
      136 GETUPVAL                         R5 1
      137 GETUPVAL                         R6 10
      138 GETTABLEKS                       R6 R6 K4 ["Provider"]
      140 DUPTABLE                         R7 K6 [{"value"}]
      141 GETTABLEKS                       R8 R1 K17 ["PrimitiveGen"]
      143 SETTABLEKS                       R8 R7 K5 ["value"]
      145 CALL                             R5 2 -1
      146 FASTCALL                         TABLE_INSERT ; [+2]
      147 GETIMPORT                        R3 K9 [table.insert]
      149 CALL                             R3 -1 0
      150 MOVE                             R4 R2
      151 GETUPVAL                         R5 1
      152 GETUPVAL                         R6 11
      153 GETTABLEKS                       R6 R6 K4 ["Provider"]
      155 DUPTABLE                         R7 K6 [{"value"}]
      156 GETTABLEKS                       R8 R1 K18 ["ReadFile"]
      158 SETTABLEKS                       R8 R7 K5 ["value"]
      160 CALL                             R5 2 -1
      161 FASTCALL                         TABLE_INSERT ; [+2]
      162 GETIMPORT                        R3 K9 [table.insert]
      164 CALL                             R3 -1 0
      165 MOVE                             R4 R2
      166 GETUPVAL                         R5 1
      167 GETUPVAL                         R6 12
      168 GETTABLEKS                       R6 R6 K4 ["Provider"]
      170 DUPTABLE                         R7 K6 [{"value"}]
      171 GETTABLEKS                       R8 R1 K19 ["SegmentMesh"]
      173 SETTABLEKS                       R8 R7 K5 ["value"]
      175 CALL                             R5 2 -1
      176 FASTCALL                         TABLE_INSERT ; [+2]
      177 GETIMPORT                        R3 K9 [table.insert]
      179 CALL                             R3 -1 0
      180 MOVE                             R4 R2
      181 GETUPVAL                         R5 1
      182 GETUPVAL                         R6 13
      183 GETTABLEKS                       R6 R6 K4 ["Provider"]
      185 DUPTABLE                         R7 K6 [{"value"}]
      186 GETTABLEKS                       R8 R1 K20 ["TextureGen"]
      188 SETTABLEKS                       R8 R7 K5 ["value"]
      190 CALL                             R5 2 -1
      191 FASTCALL                         TABLE_INSERT ; [+2]
      192 GETIMPORT                        R3 K9 [table.insert]
      194 CALL                             R3 -1 0
      195 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["Actions"]
       15 GETTABLEKS                       R2 R2 K9 ["AnimationGenActionsContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Components"]
       22 GETTABLEKS                       R3 R3 K7 ["Contexts"]
       24 GETTABLEKS                       R3 R3 K8 ["Actions"]
       26 GETTABLEKS                       R3 R3 K10 ["AssetInsertActionsContext"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R4 R0 K11 ["Bridges"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Components"]
       38 GETTABLEKS                       R5 R5 K7 ["Contexts"]
       40 GETTABLEKS                       R5 R5 K8 ["Actions"]
       42 GETTABLEKS                       R5 R5 K12 ["ChannelActionsContext"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R6 R0 K6 ["Components"]
       49 GETTABLEKS                       R6 R6 K7 ["Contexts"]
       51 GETTABLEKS                       R6 R6 K8 ["Actions"]
       53 GETTABLEKS                       R6 R6 K13 ["CreatorStoreActionsContext"]
       55 CALL                             R5 1 1
       56 GETIMPORT                        R6 K5 [require]
       58 GETTABLEKS                       R7 R0 K6 ["Components"]
       60 GETTABLEKS                       R7 R7 K7 ["Contexts"]
       62 GETTABLEKS                       R7 R7 K8 ["Actions"]
       64 GETTABLEKS                       R7 R7 K14 ["ExecuteLuauActionsContext"]
       66 CALL                             R6 1 1
       67 GETIMPORT                        R7 K5 [require]
       69 GETTABLEKS                       R8 R0 K6 ["Components"]
       71 GETTABLEKS                       R8 R8 K7 ["Contexts"]
       73 GETTABLEKS                       R8 R8 K8 ["Actions"]
       75 GETTABLEKS                       R8 R8 K15 ["InstanceActionsContext"]
       77 CALL                             R7 1 1
       78 GETIMPORT                        R8 K5 [require]
       80 GETTABLEKS                       R9 R0 K6 ["Components"]
       82 GETTABLEKS                       R9 R9 K7 ["Contexts"]
       84 GETTABLEKS                       R9 R9 K8 ["Actions"]
       86 GETTABLEKS                       R9 R9 K16 ["MaterialGenActionsContext"]
       88 CALL                             R8 1 1
       89 GETIMPORT                        R9 K5 [require]
       91 GETTABLEKS                       R10 R0 K6 ["Components"]
       93 GETTABLEKS                       R10 R10 K7 ["Contexts"]
       95 GETTABLEKS                       R10 R10 K8 ["Actions"]
       97 GETTABLEKS                       R10 R10 K17 ["MeshGenActionsContext"]
       99 CALL                             R9 1 1
      100 GETIMPORT                        R10 K5 [require]
      102 GETTABLEKS                       R11 R0 K6 ["Components"]
      104 GETTABLEKS                       R11 R11 K7 ["Contexts"]
      106 GETTABLEKS                       R11 R11 K8 ["Actions"]
      108 GETTABLEKS                       R11 R11 K18 ["PrimitiveGenActionsContext"]
      110 CALL                             R10 1 1
      111 GETIMPORT                        R11 K5 [require]
      113 GETTABLEKS                       R12 R0 K19 ["Parent"]
      115 GETTABLEKS                       R12 R12 K20 ["React"]
      117 CALL                             R11 1 1
      118 GETIMPORT                        R12 K5 [require]
      120 GETTABLEKS                       R13 R0 K6 ["Components"]
      122 GETTABLEKS                       R13 R13 K7 ["Contexts"]
      124 GETTABLEKS                       R13 R13 K8 ["Actions"]
      126 GETTABLEKS                       R13 R13 K21 ["ReadFileActionsContext"]
      128 CALL                             R12 1 1
      129 GETIMPORT                        R13 K5 [require]
      131 GETTABLEKS                       R14 R0 K6 ["Components"]
      133 GETTABLEKS                       R14 R14 K7 ["Contexts"]
      135 GETTABLEKS                       R14 R14 K8 ["Actions"]
      137 GETTABLEKS                       R14 R14 K22 ["SegmentMeshActionsContext"]
      139 CALL                             R13 1 1
      140 GETIMPORT                        R14 K5 [require]
      142 GETTABLEKS                       R15 R0 K6 ["Components"]
      144 GETTABLEKS                       R15 R15 K7 ["Contexts"]
      146 GETTABLEKS                       R15 R15 K8 ["Actions"]
      148 GETTABLEKS                       R15 R15 K23 ["TextureGenActionsContext"]
      150 CALL                             R14 1 1
      151 GETTABLEKS                       R15 R11 K24 ["createElement"]
      153 DUPCLOSURE                       R16 K25 [PROTO_1]
      154 CAPTURE                          VAL R11
      155 CAPTURE                          VAL R15
      156 CAPTURE                          VAL R1
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R4
      159 CAPTURE                          VAL R5
      160 CAPTURE                          VAL R6
      161 CAPTURE                          VAL R7
      162 CAPTURE                          VAL R8
      163 CAPTURE                          VAL R9
      164 CAPTURE                          VAL R10
      165 CAPTURE                          VAL R12
      166 CAPTURE                          VAL R13
      167 CAPTURE                          VAL R14
      168 RETURN                           R16 1
