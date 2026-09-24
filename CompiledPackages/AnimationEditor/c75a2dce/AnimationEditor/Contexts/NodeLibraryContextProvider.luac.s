PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 NAMECALL                         R3 R3 K0 ["GetAnimationNodeDefinition"]
        4 CALL                             R3 2 1
        5 GETUPVAL                         R4 1
        6 MOVE                             R5 R0
        7 MOVE                             R6 R3
        8 CALL                             R4 2 1
        9 MOVE                             R3 R4
       10 GETTABLEKS                       R4 R3 K1 ["Group"]
       12 GETIMPORT                        R7 K4 [table.find]
       14 GETUPVAL                         R8 2
       15 MOVE                             R9 R4
       16 CALL                             R7 2 1
       17 JUMPIFNOTEQKNIL                  R7 ; [+2]
       19 LOADB                            R6 0 +1
       20 LOADB                            R6 1
       21 LOADK                            R7 K5 ["Unknown group: %*"]
       22 MOVE                             R9 R4
       23 NAMECALL                         R7 R7 K6 ["format"]
       25 CALL                             R7 2 1
       26 FASTCALL2                        ASSERT R6 R7 ; [+3]
       28 GETIMPORT                        R5 K8 [assert]
       30 CALL                             R5 2 0
       31 GETUPVAL                         R6 3
       32 GETTABLE                         R5 R6 R4
       33 JUMPIFNOTEQKNIL                  R5 ; [+5]
       35 GETUPVAL                         R5 3
       36 NEWTABLE                         R6 0 0
       38 SETTABLE                         R6 R5 R4
       39 DUPTABLE                         R5 K13 [{"id", "definition", "displayName", "render"}]
       40 FASTCALL1                        TOSTRING R0 ; [+3]
       41 MOVE                             R7 R0
       42 GETIMPORT                        R6 K15 [tostring]
       44 CALL                             R6 1 1
       45 SETTABLEKS                       R6 R5 K9 ["id"]
       47 SETTABLEKS                       R3 R5 K10 ["definition"]
       49 MOVE                             R6 R2
       50 JUMPIF                           R6 ; [+6]
       51 GETUPVAL                         R6 4
       52 GETTABLEKS                       R6 R6 K16 ["formatName"]
       54 GETTABLEKS                       R7 R0 K17 ["Name"]
       56 CALL                             R6 1 1
       57 SETTABLEKS                       R6 R5 K11 ["displayName"]
       59 NEWCLOSURE                       R6 P0
       60 CAPTURE                          UPVAL U5
       61 CAPTURE                          VAL R1
       62 SETTABLEKS                       R6 R5 K12 ["render"]
       64 GETUPVAL                         R8 3
       65 GETTABLE                         R7 R8 R4
       66 FASTCALL2                        TABLE_INSERT R7 R5 ; [+4]
       68 MOVE                             R8 R5
       69 GETIMPORT                        R6 K19 [table.insert]
       71 CALL                             R6 2 0
       72 RETURN                           R5 1

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 MOVE                             R2 R1
       10 GETIMPORT                        R3 K3 [Enum.AnimationNodeType.AddNode]
       12 GETIMPORT                        R4 K5 [require]
       14 GETUPVAL                         R5 5
       15 GETTABLEKS                       R5 R5 K6 ["Components"]
       17 GETTABLEKS                       R5 R5 K7 ["NodeView"]
       19 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
       21 GETTABLEKS                       R5 R5 K2 ["AddNode"]
       23 CALL                             R4 1 -1
       24 CALL                             R2 -1 0
       25 MOVE                             R2 R1
       26 GETIMPORT                        R3 K10 [Enum.AnimationNodeType.Blend1DNode]
       28 GETIMPORT                        R4 K5 [require]
       30 GETUPVAL                         R5 5
       31 GETTABLEKS                       R5 R5 K6 ["Components"]
       33 GETTABLEKS                       R5 R5 K7 ["NodeView"]
       35 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
       37 GETTABLEKS                       R5 R5 K9 ["Blend1DNode"]
       39 CALL                             R4 1 -1
       40 CALL                             R2 -1 0
       41 MOVE                             R2 R1
       42 GETIMPORT                        R3 K12 [Enum.AnimationNodeType.Blend2DNode]
       44 GETIMPORT                        R4 K5 [require]
       46 GETUPVAL                         R5 5
       47 GETTABLEKS                       R5 R5 K6 ["Components"]
       49 GETTABLEKS                       R5 R5 K7 ["NodeView"]
       51 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
       53 GETTABLEKS                       R5 R5 K11 ["Blend2DNode"]
       55 CALL                             R4 1 -1
       56 CALL                             R2 -1 0
       57 MOVE                             R2 R1
       58 GETIMPORT                        R3 K14 [Enum.AnimationNodeType.ClipNode]
       60 GETIMPORT                        R4 K5 [require]
       62 GETUPVAL                         R5 5
       63 GETTABLEKS                       R5 R5 K6 ["Components"]
       65 GETTABLEKS                       R5 R5 K7 ["NodeView"]
       67 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
       69 GETTABLEKS                       R5 R5 K13 ["ClipNode"]
       71 CALL                             R4 1 -1
       72 CALL                             R2 -1 0
       73 MOVE                             R2 R1
       74 GETIMPORT                        R3 K16 [Enum.AnimationNodeType.GraphOutput]
       76 GETIMPORT                        R4 K5 [require]
       78 GETUPVAL                         R5 5
       79 GETTABLEKS                       R5 R5 K6 ["Components"]
       81 GETTABLEKS                       R5 R5 K7 ["NodeView"]
       83 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
       85 GETTABLEKS                       R5 R5 K15 ["GraphOutput"]
       87 CALL                             R4 1 -1
       88 CALL                             R2 -1 0
       89 MOVE                             R2 R1
       90 GETIMPORT                        R3 K18 [Enum.AnimationNodeType.OverNode]
       92 GETIMPORT                        R4 K5 [require]
       94 GETUPVAL                         R5 5
       95 GETTABLEKS                       R5 R5 K6 ["Components"]
       97 GETTABLEKS                       R5 R5 K7 ["NodeView"]
       99 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      101 GETTABLEKS                       R5 R5 K17 ["OverNode"]
      103 CALL                             R4 1 -1
      104 CALL                             R2 -1 0
      105 MOVE                             R2 R1
      106 GETIMPORT                        R3 K20 [Enum.AnimationNodeType.PrioritySelectNode]
      108 GETIMPORT                        R4 K5 [require]
      110 GETUPVAL                         R5 5
      111 GETTABLEKS                       R5 R5 K6 ["Components"]
      113 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      115 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      117 GETTABLEKS                       R5 R5 K19 ["PrioritySelectNode"]
      119 CALL                             R4 1 -1
      120 CALL                             R2 -1 0
      121 MOVE                             R2 R1
      122 GETIMPORT                        R3 K22 [Enum.AnimationNodeType.RandomSequenceNode]
      124 GETIMPORT                        R4 K5 [require]
      126 GETUPVAL                         R5 5
      127 GETTABLEKS                       R5 R5 K6 ["Components"]
      129 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      131 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      133 GETTABLEKS                       R5 R5 K21 ["RandomSequenceNode"]
      135 CALL                             R4 1 -1
      136 CALL                             R2 -1 0
      137 MOVE                             R2 R1
      138 GETIMPORT                        R3 K24 [Enum.AnimationNodeType.SelectNode]
      140 GETIMPORT                        R4 K5 [require]
      142 GETUPVAL                         R5 5
      143 GETTABLEKS                       R5 R5 K6 ["Components"]
      145 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      147 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      149 GETTABLEKS                       R5 R5 K23 ["SelectNode"]
      151 CALL                             R4 1 -1
      152 CALL                             R2 -1 0
      153 MOVE                             R2 R1
      154 GETIMPORT                        R3 K26 [Enum.AnimationNodeType.SequenceNode]
      156 GETIMPORT                        R4 K5 [require]
      158 GETUPVAL                         R5 5
      159 GETTABLEKS                       R5 R5 K6 ["Components"]
      161 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      163 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      165 GETTABLEKS                       R5 R5 K25 ["SequenceNode"]
      167 CALL                             R4 1 -1
      168 CALL                             R2 -1 0
      169 MOVE                             R2 R1
      170 GETIMPORT                        R3 K28 [Enum.AnimationNodeType.SpeedNode]
      172 GETIMPORT                        R4 K5 [require]
      174 GETUPVAL                         R5 5
      175 GETTABLEKS                       R5 R5 K6 ["Components"]
      177 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      179 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      181 GETTABLEKS                       R5 R5 K27 ["SpeedNode"]
      183 CALL                             R4 1 -1
      184 CALL                             R2 -1 0
      185 MOVE                             R2 R1
      186 GETIMPORT                        R3 K30 [Enum.AnimationNodeType.SubtractNode]
      188 GETIMPORT                        R4 K5 [require]
      190 GETUPVAL                         R5 5
      191 GETTABLEKS                       R5 R5 K6 ["Components"]
      193 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      195 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      197 GETTABLEKS                       R5 R5 K29 ["SubtractNode"]
      199 CALL                             R4 1 -1
      200 CALL                             R2 -1 0
      201 MOVE                             R2 R1
      202 GETIMPORT                        R3 K32 [Enum.AnimationNodeType.MaskNode]
      204 GETIMPORT                        R4 K5 [require]
      206 GETUPVAL                         R5 5
      207 GETTABLEKS                       R5 R5 K6 ["Components"]
      209 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      211 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      213 GETTABLEKS                       R5 R5 K31 ["MaskNode"]
      215 CALL                             R4 1 -1
      216 CALL                             R2 -1 0
      217 GETUPVAL                         R2 6
      218 JUMPIFNOT                        R2 ; [+16]
      219 MOVE                             R2 R1
      220 GETIMPORT                        R3 K34 [Enum.AnimationNodeType.OneShotNode]
      222 GETIMPORT                        R4 K5 [require]
      224 GETUPVAL                         R5 5
      225 GETTABLEKS                       R5 R5 K6 ["Components"]
      227 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      229 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      231 GETTABLEKS                       R5 R5 K33 ["OneShotNode"]
      233 CALL                             R4 1 -1
      234 CALL                             R2 -1 0
      235 GETUPVAL                         R2 7
      236 CALL                             R2 0 1
      237 JUMPIFNOT                        R2 ; [+19]
      238 GETUPVAL                         R2 8
      239 JUMPIFNOT                        R2 ; [+17]
      240 MOVE                             R2 R1
      241 GETIMPORT                        R3 K36 [Enum.AnimationNodeType.StateMachineNode]
      243 GETIMPORT                        R4 K5 [require]
      245 GETUPVAL                         R5 5
      246 GETTABLEKS                       R5 R5 K6 ["Components"]
      248 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      250 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      252 GETTABLEKS                       R5 R5 K37 ["PoseStateMachineNode"]
      254 CALL                             R4 1 1
      255 LOADK                            R5 K38 ["Pose State Machine"]
      256 CALL                             R2 3 0
      257 NEWTABLE                         R2 0 0
      259 GETUPVAL                         R3 2
      260 LOADNIL                          R4
      261 LOADNIL                          R5
      262 FORGPREP                         R3
      263 GETTABLE                         R10 R0 R7
      264 JUMPIFNOTEQKNIL                  R10 ; [+2]
      266 LOADB                            R9 0 +1
      267 LOADB                            R9 1
      268 FASTCALL2K                       ASSERT R9 K39 ; [+4]
      270 LOADK                            R10 K39 ["Ordering group with no items"]
      271 GETIMPORT                        R8 K41 [assert]
      273 CALL                             R8 2 0
      274 GETTABLE                         R10 R0 R7
      275 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
      277 MOVE                             R9 R2
      278 GETIMPORT                        R8 K44 [table.insert]
      280 CALL                             R8 2 0
      281 FORGLOOP                         R3 2 ; [-19]
      283 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 NAMECALL                         R3 R3 K0 ["GetAnimationNodeDefinition"]
        4 CALL                             R3 2 1
        5 GETUPVAL                         R4 1
        6 MOVE                             R5 R0
        7 MOVE                             R6 R3
        8 CALL                             R4 2 1
        9 MOVE                             R3 R4
       10 GETTABLEKS                       R4 R3 K1 ["Group"]
       12 GETIMPORT                        R7 K4 [table.find]
       14 GETUPVAL                         R8 2
       15 MOVE                             R9 R4
       16 CALL                             R7 2 1
       17 JUMPIFNOTEQKNIL                  R7 ; [+2]
       19 LOADB                            R6 0 +1
       20 LOADB                            R6 1
       21 LOADK                            R7 K5 ["Unknown group: %*"]
       22 MOVE                             R9 R4
       23 NAMECALL                         R7 R7 K6 ["format"]
       25 CALL                             R7 2 1
       26 FASTCALL2                        ASSERT R6 R7 ; [+3]
       28 GETIMPORT                        R5 K8 [assert]
       30 CALL                             R5 2 0
       31 GETUPVAL                         R6 3
       32 GETTABLE                         R5 R6 R4
       33 JUMPIFNOTEQKNIL                  R5 ; [+5]
       35 GETUPVAL                         R5 3
       36 NEWTABLE                         R6 0 0
       38 SETTABLE                         R6 R5 R4
       39 DUPTABLE                         R5 K13 [{"id", "definition", "displayName", "render"}]
       40 FASTCALL1                        TOSTRING R0 ; [+3]
       41 MOVE                             R7 R0
       42 GETIMPORT                        R6 K15 [tostring]
       44 CALL                             R6 1 1
       45 SETTABLEKS                       R6 R5 K9 ["id"]
       47 SETTABLEKS                       R3 R5 K10 ["definition"]
       49 MOVE                             R6 R2
       50 JUMPIF                           R6 ; [+6]
       51 GETUPVAL                         R6 4
       52 GETTABLEKS                       R6 R6 K16 ["formatName"]
       54 GETTABLEKS                       R7 R0 K17 ["Name"]
       56 CALL                             R6 1 1
       57 SETTABLEKS                       R6 R5 K11 ["displayName"]
       59 NEWCLOSURE                       R6 P0
       60 CAPTURE                          UPVAL U5
       61 CAPTURE                          VAL R1
       62 SETTABLEKS                       R6 R5 K12 ["render"]
       64 GETUPVAL                         R8 3
       65 GETTABLE                         R7 R8 R4
       66 FASTCALL2                        TABLE_INSERT R7 R5 ; [+4]
       68 MOVE                             R8 R5
       69 GETIMPORT                        R6 K19 [table.insert]
       71 CALL                             R6 2 0
       72 RETURN                           R5 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["set"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K1 ["getAssetNameAsync"]
        7 GETUPVAL                         R3 1
        8 CALL                             R2 1 -1
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K0 ["AnimationId"]
        5 FASTCALL1                        TYPEOF R2 ; [+3]
        6 MOVE                             R4 R2
        7 GETIMPORT                        R3 K2 [typeof]
        9 CALL                             R3 1 1
       10 JUMPIFEQKS                       R3 K3 ["number"] ; [+10]
       12 FASTCALL1                        TYPEOF R2 ; [+3]
       13 MOVE                             R4 R2
       14 GETIMPORT                        R3 K2 [typeof]
       16 CALL                             R3 1 1
       17 JUMPIFEQKS                       R3 K4 ["string"] ; [+3]
       19 LOADNIL                          R3
       20 RETURN                           R3 1
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K5 ["observe"]
       24 MOVE                             R4 R2
       25 CALL                             R3 1 1
       26 MOVE                             R4 R0
       27 CALL                             R3 1 1
       28 JUMPIFNOTEQKNIL                  R3 ; [+8]
       30 GETIMPORT                        R4 K8 [task.defer]
       32 NEWCLOSURE                       R5 P0
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          VAL R2
       35 CAPTURE                          UPVAL U2
       36 CALL                             R4 1 0
       37 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createComputed"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1

PROTO_8:
        0 NEWTABLE                         R0 0 0
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 MOVE                             R2 R1
       10 GETIMPORT                        R3 K3 [Enum.AnimationNodeType.AddNode]
       12 GETIMPORT                        R4 K5 [require]
       14 GETUPVAL                         R5 5
       15 GETTABLEKS                       R5 R5 K6 ["Components"]
       17 GETTABLEKS                       R5 R5 K7 ["NodeView"]
       19 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
       21 GETTABLEKS                       R5 R5 K2 ["AddNode"]
       23 CALL                             R4 1 -1
       24 CALL                             R2 -1 0
       25 MOVE                             R2 R1
       26 GETIMPORT                        R3 K10 [Enum.AnimationNodeType.Blend1DNode]
       28 GETIMPORT                        R4 K5 [require]
       30 GETUPVAL                         R5 5
       31 GETTABLEKS                       R5 R5 K6 ["Components"]
       33 GETTABLEKS                       R5 R5 K7 ["NodeView"]
       35 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
       37 GETTABLEKS                       R5 R5 K9 ["Blend1DNode"]
       39 CALL                             R4 1 -1
       40 CALL                             R2 -1 0
       41 MOVE                             R2 R1
       42 GETIMPORT                        R3 K12 [Enum.AnimationNodeType.Blend2DNode]
       44 GETIMPORT                        R4 K5 [require]
       46 GETUPVAL                         R5 5
       47 GETTABLEKS                       R5 R5 K6 ["Components"]
       49 GETTABLEKS                       R5 R5 K7 ["NodeView"]
       51 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
       53 GETTABLEKS                       R5 R5 K11 ["Blend2DNode"]
       55 CALL                             R4 1 -1
       56 CALL                             R2 -1 0
       57 GETUPVAL                         R2 6
       58 JUMPIF                           R2 ; [+16]
       59 MOVE                             R2 R1
       60 GETIMPORT                        R3 K14 [Enum.AnimationNodeType.ClipNode]
       62 GETIMPORT                        R4 K5 [require]
       64 GETUPVAL                         R5 5
       65 GETTABLEKS                       R5 R5 K6 ["Components"]
       67 GETTABLEKS                       R5 R5 K7 ["NodeView"]
       69 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
       71 GETTABLEKS                       R5 R5 K13 ["ClipNode"]
       73 CALL                             R4 1 -1
       74 CALL                             R2 -1 0
       75 MOVE                             R2 R1
       76 GETIMPORT                        R3 K16 [Enum.AnimationNodeType.GraphOutput]
       78 GETIMPORT                        R4 K5 [require]
       80 GETUPVAL                         R5 5
       81 GETTABLEKS                       R5 R5 K6 ["Components"]
       83 GETTABLEKS                       R5 R5 K7 ["NodeView"]
       85 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
       87 GETTABLEKS                       R5 R5 K15 ["GraphOutput"]
       89 CALL                             R4 1 -1
       90 CALL                             R2 -1 0
       91 MOVE                             R2 R1
       92 GETIMPORT                        R3 K18 [Enum.AnimationNodeType.OverNode]
       94 GETIMPORT                        R4 K5 [require]
       96 GETUPVAL                         R5 5
       97 GETTABLEKS                       R5 R5 K6 ["Components"]
       99 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      101 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      103 GETTABLEKS                       R5 R5 K17 ["OverNode"]
      105 CALL                             R4 1 -1
      106 CALL                             R2 -1 0
      107 MOVE                             R2 R1
      108 GETIMPORT                        R3 K20 [Enum.AnimationNodeType.PrioritySelectNode]
      110 GETIMPORT                        R4 K5 [require]
      112 GETUPVAL                         R5 5
      113 GETTABLEKS                       R5 R5 K6 ["Components"]
      115 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      117 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      119 GETTABLEKS                       R5 R5 K19 ["PrioritySelectNode"]
      121 CALL                             R4 1 -1
      122 CALL                             R2 -1 0
      123 MOVE                             R2 R1
      124 GETIMPORT                        R3 K22 [Enum.AnimationNodeType.RandomSequenceNode]
      126 GETIMPORT                        R4 K5 [require]
      128 GETUPVAL                         R5 5
      129 GETTABLEKS                       R5 R5 K6 ["Components"]
      131 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      133 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      135 GETTABLEKS                       R5 R5 K21 ["RandomSequenceNode"]
      137 CALL                             R4 1 -1
      138 CALL                             R2 -1 0
      139 MOVE                             R2 R1
      140 GETIMPORT                        R3 K24 [Enum.AnimationNodeType.SelectNode]
      142 GETIMPORT                        R4 K5 [require]
      144 GETUPVAL                         R5 5
      145 GETTABLEKS                       R5 R5 K6 ["Components"]
      147 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      149 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      151 GETTABLEKS                       R5 R5 K23 ["SelectNode"]
      153 CALL                             R4 1 -1
      154 CALL                             R2 -1 0
      155 MOVE                             R2 R1
      156 GETIMPORT                        R3 K26 [Enum.AnimationNodeType.SequenceNode]
      158 GETIMPORT                        R4 K5 [require]
      160 GETUPVAL                         R5 5
      161 GETTABLEKS                       R5 R5 K6 ["Components"]
      163 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      165 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      167 GETTABLEKS                       R5 R5 K25 ["SequenceNode"]
      169 CALL                             R4 1 -1
      170 CALL                             R2 -1 0
      171 MOVE                             R2 R1
      172 GETIMPORT                        R3 K28 [Enum.AnimationNodeType.SpeedNode]
      174 GETIMPORT                        R4 K5 [require]
      176 GETUPVAL                         R5 5
      177 GETTABLEKS                       R5 R5 K6 ["Components"]
      179 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      181 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      183 GETTABLEKS                       R5 R5 K27 ["SpeedNode"]
      185 CALL                             R4 1 -1
      186 CALL                             R2 -1 0
      187 MOVE                             R2 R1
      188 GETIMPORT                        R3 K30 [Enum.AnimationNodeType.SubtractNode]
      190 GETIMPORT                        R4 K5 [require]
      192 GETUPVAL                         R5 5
      193 GETTABLEKS                       R5 R5 K6 ["Components"]
      195 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      197 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      199 GETTABLEKS                       R5 R5 K29 ["SubtractNode"]
      201 CALL                             R4 1 -1
      202 CALL                             R2 -1 0
      203 MOVE                             R2 R1
      204 GETIMPORT                        R3 K32 [Enum.AnimationNodeType.MaskNode]
      206 GETIMPORT                        R4 K5 [require]
      208 GETUPVAL                         R5 5
      209 GETTABLEKS                       R5 R5 K6 ["Components"]
      211 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      213 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      215 GETTABLEKS                       R5 R5 K31 ["MaskNode"]
      217 CALL                             R4 1 -1
      218 CALL                             R2 -1 0
      219 GETUPVAL                         R2 7
      220 JUMPIFNOT                        R2 ; [+16]
      221 MOVE                             R2 R1
      222 GETIMPORT                        R3 K34 [Enum.AnimationNodeType.OneShotNode]
      224 GETIMPORT                        R4 K5 [require]
      226 GETUPVAL                         R5 5
      227 GETTABLEKS                       R5 R5 K6 ["Components"]
      229 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      231 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      233 GETTABLEKS                       R5 R5 K33 ["OneShotNode"]
      235 CALL                             R4 1 -1
      236 CALL                             R2 -1 0
      237 MOVE                             R2 R1
      238 GETIMPORT                        R3 K14 [Enum.AnimationNodeType.ClipNode]
      240 GETIMPORT                        R4 K5 [require]
      242 GETUPVAL                         R5 5
      243 GETTABLEKS                       R5 R5 K6 ["Components"]
      245 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      247 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      249 GETTABLEKS                       R5 R5 K13 ["ClipNode"]
      251 CALL                             R4 1 -1
      252 CALL                             R2 -1 1
      253 NEWCLOSURE                       R3 P1
      254 CAPTURE                          UPVAL U8
      255 CAPTURE                          UPVAL U9
      256 CAPTURE                          UPVAL U10
      257 SETTABLEKS                       R3 R2 K35 ["observeDynamicName"]
      259 GETUPVAL                         R3 11
      260 CALL                             R3 0 1
      261 JUMPIFNOT                        R3 ; [+19]
      262 GETUPVAL                         R3 12
      263 JUMPIFNOT                        R3 ; [+17]
      264 MOVE                             R3 R1
      265 GETIMPORT                        R4 K37 [Enum.AnimationNodeType.StateMachineNode]
      267 GETIMPORT                        R5 K5 [require]
      269 GETUPVAL                         R6 5
      270 GETTABLEKS                       R6 R6 K6 ["Components"]
      272 GETTABLEKS                       R6 R6 K7 ["NodeView"]
      274 GETTABLEKS                       R6 R6 K8 ["CompositorNodes"]
      276 GETTABLEKS                       R6 R6 K38 ["PoseStateMachineNode"]
      278 CALL                             R5 1 1
      279 LOADK                            R6 K39 ["Pose State Machine"]
      280 CALL                             R3 3 0
      281 NEWTABLE                         R3 0 0
      283 GETUPVAL                         R4 2
      284 LOADNIL                          R5
      285 LOADNIL                          R6
      286 FORGPREP                         R4
      287 GETTABLE                         R11 R0 R8
      288 JUMPIFNOTEQKNIL                  R11 ; [+2]
      290 LOADB                            R10 0 +1
      291 LOADB                            R10 1
      292 FASTCALL2K                       ASSERT R10 K40 ; [+4]
      294 LOADK                            R11 K40 ["Ordering group with no items"]
      295 GETIMPORT                        R9 K42 [assert]
      297 CALL                             R9 2 0
      298 GETTABLE                         R11 R0 R8
      299 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
      301 MOVE                             R10 R3
      302 GETIMPORT                        R9 K45 [table.insert]
      304 CALL                             R9 2 0
      305 FORGLOOP                         R4 2 ; [-19]
      307 RETURN                           R3 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 2
        8 CALL                             R1 0 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K2 ["useMemo"]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          UPVAL U6
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          UPVAL U7
       19 CAPTURE                          UPVAL U8
       20 CAPTURE                          UPVAL U9
       21 CAPTURE                          UPVAL U10
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U11
       25 CAPTURE                          UPVAL U12
       26 NEWTABLE                         R4 0 1
       28 GETTABLEKS                       R5 R1 K3 ["observe"]
       30 SETLIST                          R4 R5 1 [1]
       32 CALL                             R2 2 -1
       33 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["Type"]
        3 GETTABLE                         R1 R2 R3
        4 JUMPIFEQKNIL                     R1 ; [+8]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["createElement"]
        9 MOVE                             R3 R1
       10 MOVE                             R4 R0
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R4 R0 K0 ["Type"]
       16 GETTABLE                         R2 R3 R4
       17 JUMPIFEQKNIL                     R2 ; [+59]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K1 ["createElement"]
       22 GETUPVAL                         R4 3
       23 GETTABLEKS                       R4 R4 K2 ["EnumProperty"]
       25 DUPTABLE                         R5 K14 [{"Label", "Type", "Value", "DefaultValue", "IsParameterized", "IsParameterOverridden", "IsDisabled", "OnChanged", "OnParameterOverrideRevert", "LayoutOrder", "tags", "testId"}]
       26 GETTABLEKS                       R7 R0 K3 ["Label"]
       28 ORK                              R6 R7 K15 [""]
       29 SETTABLEKS                       R6 R5 K3 ["Label"]
       31 SETTABLEKS                       R2 R5 K0 ["Type"]
       33 GETTABLEKS                       R6 R0 K4 ["Value"]
       35 SETTABLEKS                       R6 R5 K4 ["Value"]
       37 GETTABLEKS                       R6 R0 K5 ["DefaultValue"]
       39 SETTABLEKS                       R6 R5 K5 ["DefaultValue"]
       41 GETTABLEKS                       R6 R0 K6 ["IsParameterized"]
       43 SETTABLEKS                       R6 R5 K6 ["IsParameterized"]
       45 GETTABLEKS                       R6 R0 K7 ["IsParameterOverridden"]
       47 SETTABLEKS                       R6 R5 K7 ["IsParameterOverridden"]
       49 GETTABLEKS                       R6 R0 K8 ["IsDisabled"]
       51 SETTABLEKS                       R6 R5 K8 ["IsDisabled"]
       53 GETTABLEKS                       R6 R0 K9 ["OnChanged"]
       55 SETTABLEKS                       R6 R5 K9 ["OnChanged"]
       57 GETTABLEKS                       R6 R0 K10 ["OnParameterOverrideRevert"]
       59 SETTABLEKS                       R6 R5 K10 ["OnParameterOverrideRevert"]
       61 GETTABLEKS                       R6 R0 K11 ["LayoutOrder"]
       63 SETTABLEKS                       R6 R5 K11 ["LayoutOrder"]
       65 GETTABLEKS                       R6 R0 K12 ["tags"]
       67 SETTABLEKS                       R6 R5 K12 ["tags"]
       69 GETTABLEKS                       R6 R0 K13 ["testId"]
       71 SETTABLEKS                       R6 R5 K13 ["testId"]
       73 GETTABLEKS                       R6 R0 K16 ["children"]
       75 CALL                             R3 3 -1
       76 RETURN                           R3 -1
       77 GETTABLEKS                       R3 R0 K0 ["Type"]
       79 JUMPIFNOTEQKS                    R3 K17 ["Trigger"] ; [+53]
       81 GETUPVAL                         R3 1
       82 GETTABLEKS                       R3 R3 K1 ["createElement"]
       84 GETUPVAL                         R4 3
       85 GETTABLEKS                       R4 R4 K18 ["BoolProperty"]
       87 DUPTABLE                         R5 K19 [{["Label"], [2] = "Trigger", ["Value"], ["IsParameterized"], ["IsParameterOverridden"], ["IsDisabled"], ["OnChanged"], ["OnParameterOverrideRevert"], ["LayoutOrder"], ["tags"], ["testId"]}]
       88 GETTABLEKS                       R7 R0 K3 ["Label"]
       90 ORK                              R6 R7 K15 [""]
       91 SETTABLEKS                       R6 R5 K3 ["Label"]
       93 GETTABLEKS                       R6 R0 K4 ["Value"]
       95 SETTABLEKS                       R6 R5 K4 ["Value"]
       97 GETTABLEKS                       R6 R0 K6 ["IsParameterized"]
       99 SETTABLEKS                       R6 R5 K6 ["IsParameterized"]
      101 GETTABLEKS                       R6 R0 K7 ["IsParameterOverridden"]
      103 SETTABLEKS                       R6 R5 K7 ["IsParameterOverridden"]
      105 GETTABLEKS                       R6 R0 K8 ["IsDisabled"]
      107 SETTABLEKS                       R6 R5 K8 ["IsDisabled"]
      109 GETTABLEKS                       R6 R0 K9 ["OnChanged"]
      111 SETTABLEKS                       R6 R5 K9 ["OnChanged"]
      113 GETTABLEKS                       R6 R0 K10 ["OnParameterOverrideRevert"]
      115 SETTABLEKS                       R6 R5 K10 ["OnParameterOverrideRevert"]
      117 GETTABLEKS                       R6 R0 K11 ["LayoutOrder"]
      119 SETTABLEKS                       R6 R5 K11 ["LayoutOrder"]
      121 GETTABLEKS                       R6 R0 K12 ["tags"]
      123 SETTABLEKS                       R6 R5 K12 ["tags"]
      125 GETTABLEKS                       R6 R0 K13 ["testId"]
      127 SETTABLEKS                       R6 R5 K13 ["testId"]
      129 GETTABLEKS                       R6 R0 K16 ["children"]
      131 CALL                             R3 3 -1
      132 RETURN                           R3 -1
      133 LOADNIL                          R3
      134 RETURN                           R3 1

PROTO_11:
        0 DUPTABLE                         R0 K2 [{"nodeLibrary", "renderProperty"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["nodeLibrary"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["renderProperty"]
        7 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+3]
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 1
        4 JUMP                             ; [+7]
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        8 GETUPVAL                         R2 3
        9 NEWTABLE                         R3 0 0
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K0 ["useMemo"]
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U4
       18 NEWTABLE                         R4 0 0
       20 CALL                             R2 2 1
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K1 ["createElement"]
       24 GETUPVAL                         R4 5
       25 GETTABLEKS                       R4 R4 K2 ["NodeLibraryContext"]
       27 GETTABLEKS                       R4 R4 K3 ["Provider"]
       29 DUPTABLE                         R5 K5 [{"value"}]
       30 SETTABLEKS                       R2 R5 K4 ["value"]
       32 GETTABLEKS                       R6 R0 K6 ["children"]
       34 CALL                             R3 3 -1
       35 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AnimationClipProvider"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimationEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Contexts"]
       17 GETTABLEKS                       R3 R3 K11 ["AssetNameContext"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K12 ["Flags"]
       24 GETTABLEKS                       R4 R4 K13 ["FFlagAnimGraphUI_FixClipNames"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K14 ["Parent"]
       31 GETTABLEKS                       R5 R5 K15 ["NodeGraphing"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K16 ["Util"]
       38 GETTABLEKS                       R6 R6 K17 ["Nodes"]
       40 GETTABLEKS                       R6 R6 K18 ["NodeNameFormattingUtils"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R1 K14 ["Parent"]
       47 GETTABLEKS                       R7 R7 K19 ["React"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R8 R1 K14 ["Parent"]
       54 GETTABLEKS                       R8 R8 K20 ["Signals"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K9 [require]
       59 GETTABLEKS                       R9 R1 K12 ["Flags"]
       61 GETTABLEKS                       R9 R9 K21 ["getFFlagAnimGraphUI_PoseStateMachineNode"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K9 [require]
       66 GETTABLEKS                       R10 R1 K22 ["Components"]
       68 GETTABLEKS                       R10 R10 K23 ["NodeView"]
       70 GETTABLEKS                       R10 R10 K24 ["StateMachine"]
       72 GETTABLEKS                       R10 R10 K25 ["resolveStateMachineNodeDefinition"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K9 [require]
       77 GETTABLEKS                       R11 R1 K22 ["Components"]
       79 GETTABLEKS                       R11 R11 K23 ["NodeView"]
       81 GETTABLEKS                       R11 R11 K24 ["StateMachine"]
       83 GETTABLEKS                       R11 R11 K26 ["supportsStateMachineNode"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K9 [require]
       88 GETTABLEKS                       R12 R1 K27 ["Hooks"]
       90 GETTABLEKS                       R12 R12 K28 ["useSignalDispatcher"]
       92 CALL                             R11 1 1
       93 GETIMPORT                        R12 K1 [game]
       95 LOADK                            R14 K29 ["AnimGraphOneShotNode"]
       96 NAMECALL                         R12 R12 K30 ["GetEngineFeature"]
       98 CALL                             R12 2 1
       99 NEWTABLE                         R13 0 6
      101 LOADK                            R14 K31 ["Content"]
      102 LOADK                            R15 K32 ["State"]
      103 LOADK                            R16 K33 ["Sequence"]
      104 LOADK                            R17 K34 ["Blend"]
      105 LOADK                            R18 K35 ["Misc"]
      106 LOADK                            R19 K36 ["Output"]
      107 SETLIST                          R13 R14 6 [1]
      109 DUPCLOSURE                       R14 K37 [PROTO_2]
      110 CAPTURE                          VAL R0
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R10
      119 DUPCLOSURE                       R15 K38 [PROTO_9]
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R11
      123 CAPTURE                          VAL R0
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R12
      130 CAPTURE                          VAL R7
      131 CAPTURE                          VAL R8
      132 CAPTURE                          VAL R10
      133 DUPTABLE                         R16 K46 [{"Angle", "Animation", "ClampedWeight", "Timestamp", "TimeProgress", "Transition", "Mask"}]
      134 GETIMPORT                        R17 K9 [require]
      136 GETTABLEKS                       R18 R1 K22 ["Components"]
      138 GETTABLEKS                       R18 R18 K23 ["NodeView"]
      140 GETTABLEKS                       R18 R18 K47 ["CompositorNodeProperty"]
      142 GETTABLEKS                       R18 R18 K48 ["AngleProperty"]
      144 CALL                             R17 1 1
      145 SETTABLEKS                       R17 R16 K39 ["Angle"]
      147 GETIMPORT                        R17 K9 [require]
      149 GETTABLEKS                       R18 R1 K22 ["Components"]
      151 GETTABLEKS                       R18 R18 K23 ["NodeView"]
      153 GETTABLEKS                       R18 R18 K47 ["CompositorNodeProperty"]
      155 GETTABLEKS                       R18 R18 K49 ["AssetProperty"]
      157 CALL                             R17 1 1
      158 SETTABLEKS                       R17 R16 K40 ["Animation"]
      160 GETIMPORT                        R17 K9 [require]
      162 GETTABLEKS                       R18 R1 K22 ["Components"]
      164 GETTABLEKS                       R18 R18 K23 ["NodeView"]
      166 GETTABLEKS                       R18 R18 K47 ["CompositorNodeProperty"]
      168 GETTABLEKS                       R18 R18 K50 ["ClampedWeightProperty"]
      170 CALL                             R17 1 1
      171 SETTABLEKS                       R17 R16 K41 ["ClampedWeight"]
      173 GETIMPORT                        R17 K9 [require]
      175 GETTABLEKS                       R18 R1 K22 ["Components"]
      177 GETTABLEKS                       R18 R18 K23 ["NodeView"]
      179 GETTABLEKS                       R18 R18 K47 ["CompositorNodeProperty"]
      181 GETTABLEKS                       R18 R18 K51 ["TimestampProperty"]
      183 CALL                             R17 1 1
      184 SETTABLEKS                       R17 R16 K42 ["Timestamp"]
      186 GETIMPORT                        R17 K9 [require]
      188 GETTABLEKS                       R18 R1 K22 ["Components"]
      190 GETTABLEKS                       R18 R18 K23 ["NodeView"]
      192 GETTABLEKS                       R18 R18 K47 ["CompositorNodeProperty"]
      194 GETTABLEKS                       R18 R18 K52 ["TimeProgressProperty"]
      196 CALL                             R17 1 1
      197 SETTABLEKS                       R17 R16 K43 ["TimeProgress"]
      199 GETIMPORT                        R17 K9 [require]
      201 GETTABLEKS                       R18 R1 K22 ["Components"]
      203 GETTABLEKS                       R18 R18 K23 ["NodeView"]
      205 GETTABLEKS                       R18 R18 K47 ["CompositorNodeProperty"]
      207 GETTABLEKS                       R18 R18 K53 ["TransitionProperty"]
      209 CALL                             R17 1 1
      210 SETTABLEKS                       R17 R16 K44 ["Transition"]
      212 GETIMPORT                        R17 K9 [require]
      214 GETTABLEKS                       R18 R1 K22 ["Components"]
      216 GETTABLEKS                       R18 R18 K23 ["NodeView"]
      218 GETTABLEKS                       R18 R18 K47 ["CompositorNodeProperty"]
      220 GETTABLEKS                       R18 R18 K54 ["MaskProperty"]
      222 CALL                             R17 1 1
      223 SETTABLEKS                       R17 R16 K45 ["Mask"]
      225 DUPTABLE                         R17 K63 [{["PlayMode"] = "Enum.AnimationNodePlayMode", ["InputMode"] = "Enum.AnimationNodeBlend2DInputMode", ["PhaseSync"] = "Enum.AnimationNodePhaseSync", ["BlendMode"] = "Enum.AnimationNodeBlendMode"}]
      226 DUPCLOSURE                       R18 K64 [PROTO_10]
      227 CAPTURE                          VAL R16
      228 CAPTURE                          VAL R6
      229 CAPTURE                          VAL R17
      230 CAPTURE                          VAL R4
      231 DUPCLOSURE                       R19 K65 [PROTO_12]
      232 CAPTURE                          VAL R3
      233 CAPTURE                          VAL R15
      234 CAPTURE                          VAL R6
      235 CAPTURE                          VAL R14
      236 CAPTURE                          VAL R18
      237 CAPTURE                          VAL R4
      238 RETURN                           R19 1
