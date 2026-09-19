PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["GetAnimationNodeDefinition"]
        4 CALL                             R2 2 1
        5 GETTABLEKS                       R3 R2 K1 ["Group"]
        7 GETIMPORT                        R6 K4 [table.find]
        9 GETUPVAL                         R7 1
       10 MOVE                             R8 R3
       11 CALL                             R6 2 1
       12 JUMPIFNOTEQKNIL                  R6 ; [+2]
       14 LOADB                            R5 0 +1
       15 LOADB                            R5 1
       16 LOADK                            R6 K5 ["Unknown group: %*"]
       17 MOVE                             R8 R3
       18 NAMECALL                         R6 R6 K6 ["format"]
       20 CALL                             R6 2 1
       21 FASTCALL2                        ASSERT R5 R6 ; [+3]
       23 GETIMPORT                        R4 K8 [assert]
       25 CALL                             R4 2 0
       26 GETUPVAL                         R5 2
       27 GETTABLE                         R4 R5 R3
       28 JUMPIFNOTEQKNIL                  R4 ; [+5]
       30 GETUPVAL                         R4 2
       31 NEWTABLE                         R5 0 0
       33 SETTABLE                         R5 R4 R3
       34 GETUPVAL                         R6 2
       35 GETTABLE                         R5 R6 R3
       36 DUPTABLE                         R6 K13 [{"id", "definition", "displayName", "render"}]
       37 FASTCALL1                        TOSTRING R0 ; [+3]
       38 MOVE                             R8 R0
       39 GETIMPORT                        R7 K15 [tostring]
       41 CALL                             R7 1 1
       42 SETTABLEKS                       R7 R6 K9 ["id"]
       44 SETTABLEKS                       R2 R6 K10 ["definition"]
       46 GETUPVAL                         R7 3
       47 GETTABLEKS                       R7 R7 K16 ["formatName"]
       49 GETTABLEKS                       R8 R0 K17 ["Name"]
       51 CALL                             R7 1 1
       52 SETTABLEKS                       R7 R6 K11 ["displayName"]
       54 NEWCLOSURE                       R7 P0
       55 CAPTURE                          UPVAL U4
       56 CAPTURE                          VAL R1
       57 SETTABLEKS                       R7 R6 K12 ["render"]
       59 FASTCALL2                        TABLE_INSERT R5 R6 ; [+3]
       61 GETIMPORT                        R4 K19 [table.insert]
       63 CALL                             R4 2 0
       64 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 MOVE                             R2 R1
        9 GETIMPORT                        R3 K3 [Enum.AnimationNodeType.AddNode]
       11 GETIMPORT                        R4 K5 [require]
       13 GETUPVAL                         R5 4
       14 GETTABLEKS                       R5 R5 K6 ["Components"]
       16 GETTABLEKS                       R5 R5 K7 ["NodeView"]
       18 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
       20 GETTABLEKS                       R5 R5 K2 ["AddNode"]
       22 CALL                             R4 1 -1
       23 CALL                             R2 -1 0
       24 MOVE                             R2 R1
       25 GETIMPORT                        R3 K10 [Enum.AnimationNodeType.Blend1DNode]
       27 GETIMPORT                        R4 K5 [require]
       29 GETUPVAL                         R5 4
       30 GETTABLEKS                       R5 R5 K6 ["Components"]
       32 GETTABLEKS                       R5 R5 K7 ["NodeView"]
       34 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
       36 GETTABLEKS                       R5 R5 K9 ["Blend1DNode"]
       38 CALL                             R4 1 -1
       39 CALL                             R2 -1 0
       40 MOVE                             R2 R1
       41 GETIMPORT                        R3 K12 [Enum.AnimationNodeType.Blend2DNode]
       43 GETIMPORT                        R4 K5 [require]
       45 GETUPVAL                         R5 4
       46 GETTABLEKS                       R5 R5 K6 ["Components"]
       48 GETTABLEKS                       R5 R5 K7 ["NodeView"]
       50 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
       52 GETTABLEKS                       R5 R5 K11 ["Blend2DNode"]
       54 CALL                             R4 1 -1
       55 CALL                             R2 -1 0
       56 MOVE                             R2 R1
       57 GETIMPORT                        R3 K14 [Enum.AnimationNodeType.ClipNode]
       59 GETIMPORT                        R4 K5 [require]
       61 GETUPVAL                         R5 4
       62 GETTABLEKS                       R5 R5 K6 ["Components"]
       64 GETTABLEKS                       R5 R5 K7 ["NodeView"]
       66 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
       68 GETTABLEKS                       R5 R5 K13 ["ClipNode"]
       70 CALL                             R4 1 -1
       71 CALL                             R2 -1 0
       72 MOVE                             R2 R1
       73 GETIMPORT                        R3 K16 [Enum.AnimationNodeType.GraphOutput]
       75 GETIMPORT                        R4 K5 [require]
       77 GETUPVAL                         R5 4
       78 GETTABLEKS                       R5 R5 K6 ["Components"]
       80 GETTABLEKS                       R5 R5 K7 ["NodeView"]
       82 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
       84 GETTABLEKS                       R5 R5 K15 ["GraphOutput"]
       86 CALL                             R4 1 -1
       87 CALL                             R2 -1 0
       88 MOVE                             R2 R1
       89 GETIMPORT                        R3 K18 [Enum.AnimationNodeType.OverNode]
       91 GETIMPORT                        R4 K5 [require]
       93 GETUPVAL                         R5 4
       94 GETTABLEKS                       R5 R5 K6 ["Components"]
       96 GETTABLEKS                       R5 R5 K7 ["NodeView"]
       98 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      100 GETTABLEKS                       R5 R5 K17 ["OverNode"]
      102 CALL                             R4 1 -1
      103 CALL                             R2 -1 0
      104 MOVE                             R2 R1
      105 GETIMPORT                        R3 K20 [Enum.AnimationNodeType.PrioritySelectNode]
      107 GETIMPORT                        R4 K5 [require]
      109 GETUPVAL                         R5 4
      110 GETTABLEKS                       R5 R5 K6 ["Components"]
      112 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      114 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      116 GETTABLEKS                       R5 R5 K19 ["PrioritySelectNode"]
      118 CALL                             R4 1 -1
      119 CALL                             R2 -1 0
      120 MOVE                             R2 R1
      121 GETIMPORT                        R3 K22 [Enum.AnimationNodeType.RandomSequenceNode]
      123 GETIMPORT                        R4 K5 [require]
      125 GETUPVAL                         R5 4
      126 GETTABLEKS                       R5 R5 K6 ["Components"]
      128 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      130 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      132 GETTABLEKS                       R5 R5 K21 ["RandomSequenceNode"]
      134 CALL                             R4 1 -1
      135 CALL                             R2 -1 0
      136 MOVE                             R2 R1
      137 GETIMPORT                        R3 K24 [Enum.AnimationNodeType.SelectNode]
      139 GETIMPORT                        R4 K5 [require]
      141 GETUPVAL                         R5 4
      142 GETTABLEKS                       R5 R5 K6 ["Components"]
      144 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      146 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      148 GETTABLEKS                       R5 R5 K23 ["SelectNode"]
      150 CALL                             R4 1 -1
      151 CALL                             R2 -1 0
      152 MOVE                             R2 R1
      153 GETIMPORT                        R3 K26 [Enum.AnimationNodeType.SequenceNode]
      155 GETIMPORT                        R4 K5 [require]
      157 GETUPVAL                         R5 4
      158 GETTABLEKS                       R5 R5 K6 ["Components"]
      160 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      162 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      164 GETTABLEKS                       R5 R5 K25 ["SequenceNode"]
      166 CALL                             R4 1 -1
      167 CALL                             R2 -1 0
      168 MOVE                             R2 R1
      169 GETIMPORT                        R3 K28 [Enum.AnimationNodeType.SpeedNode]
      171 GETIMPORT                        R4 K5 [require]
      173 GETUPVAL                         R5 4
      174 GETTABLEKS                       R5 R5 K6 ["Components"]
      176 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      178 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      180 GETTABLEKS                       R5 R5 K27 ["SpeedNode"]
      182 CALL                             R4 1 -1
      183 CALL                             R2 -1 0
      184 MOVE                             R2 R1
      185 GETIMPORT                        R3 K30 [Enum.AnimationNodeType.SubtractNode]
      187 GETIMPORT                        R4 K5 [require]
      189 GETUPVAL                         R5 4
      190 GETTABLEKS                       R5 R5 K6 ["Components"]
      192 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      194 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      196 GETTABLEKS                       R5 R5 K29 ["SubtractNode"]
      198 CALL                             R4 1 -1
      199 CALL                             R2 -1 0
      200 MOVE                             R2 R1
      201 GETIMPORT                        R3 K32 [Enum.AnimationNodeType.MaskNode]
      203 GETIMPORT                        R4 K5 [require]
      205 GETUPVAL                         R5 4
      206 GETTABLEKS                       R5 R5 K6 ["Components"]
      208 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      210 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      212 GETTABLEKS                       R5 R5 K31 ["MaskNode"]
      214 CALL                             R4 1 -1
      215 CALL                             R2 -1 0
      216 GETUPVAL                         R2 5
      217 JUMPIFNOT                        R2 ; [+16]
      218 MOVE                             R2 R1
      219 GETIMPORT                        R3 K34 [Enum.AnimationNodeType.OneShotNode]
      221 GETIMPORT                        R4 K5 [require]
      223 GETUPVAL                         R5 4
      224 GETTABLEKS                       R5 R5 K6 ["Components"]
      226 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      228 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      230 GETTABLEKS                       R5 R5 K33 ["OneShotNode"]
      232 CALL                             R4 1 -1
      233 CALL                             R2 -1 0
      234 NEWTABLE                         R2 0 0
      236 GETUPVAL                         R3 1
      237 LOADNIL                          R4
      238 LOADNIL                          R5
      239 FORGPREP                         R3
      240 GETTABLE                         R10 R0 R7
      241 JUMPIFNOTEQKNIL                  R10 ; [+2]
      243 LOADB                            R9 0 +1
      244 LOADB                            R9 1
      245 FASTCALL2K                       ASSERT R9 K35 ; [+4]
      247 LOADK                            R10 K35 ["Ordering group with no items"]
      248 GETIMPORT                        R8 K37 [assert]
      250 CALL                             R8 2 0
      251 GETTABLE                         R10 R0 R7
      252 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
      254 MOVE                             R9 R2
      255 GETIMPORT                        R8 K40 [table.insert]
      257 CALL                             R8 2 0
      258 FORGLOOP                         R3 2 ; [-19]
      260 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["GetAnimationNodeDefinition"]
        4 CALL                             R2 2 1
        5 GETTABLEKS                       R3 R2 K1 ["Group"]
        7 GETIMPORT                        R6 K4 [table.find]
        9 GETUPVAL                         R7 1
       10 MOVE                             R8 R3
       11 CALL                             R6 2 1
       12 JUMPIFNOTEQKNIL                  R6 ; [+2]
       14 LOADB                            R5 0 +1
       15 LOADB                            R5 1
       16 LOADK                            R6 K5 ["Unknown group: %*"]
       17 MOVE                             R8 R3
       18 NAMECALL                         R6 R6 K6 ["format"]
       20 CALL                             R6 2 1
       21 FASTCALL2                        ASSERT R5 R6 ; [+3]
       23 GETIMPORT                        R4 K8 [assert]
       25 CALL                             R4 2 0
       26 GETUPVAL                         R5 2
       27 GETTABLE                         R4 R5 R3
       28 JUMPIFNOTEQKNIL                  R4 ; [+5]
       30 GETUPVAL                         R4 2
       31 NEWTABLE                         R5 0 0
       33 SETTABLE                         R5 R4 R3
       34 DUPTABLE                         R4 K13 [{"id", "definition", "displayName", "render"}]
       35 FASTCALL1                        TOSTRING R0 ; [+3]
       36 MOVE                             R6 R0
       37 GETIMPORT                        R5 K15 [tostring]
       39 CALL                             R5 1 1
       40 SETTABLEKS                       R5 R4 K9 ["id"]
       42 SETTABLEKS                       R2 R4 K10 ["definition"]
       44 GETUPVAL                         R5 3
       45 GETTABLEKS                       R5 R5 K16 ["formatName"]
       47 GETTABLEKS                       R6 R0 K17 ["Name"]
       49 CALL                             R5 1 1
       50 SETTABLEKS                       R5 R4 K11 ["displayName"]
       52 NEWCLOSURE                       R5 P0
       53 CAPTURE                          UPVAL U4
       54 CAPTURE                          VAL R1
       55 SETTABLEKS                       R5 R4 K12 ["render"]
       57 GETUPVAL                         R7 2
       58 GETTABLE                         R6 R7 R3
       59 FASTCALL2                        TABLE_INSERT R6 R4 ; [+4]
       61 MOVE                             R7 R4
       62 GETIMPORT                        R5 K19 [table.insert]
       64 CALL                             R5 2 0
       65 RETURN                           R4 1

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
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 MOVE                             R2 R1
        9 GETIMPORT                        R3 K3 [Enum.AnimationNodeType.AddNode]
       11 GETIMPORT                        R4 K5 [require]
       13 GETUPVAL                         R5 4
       14 GETTABLEKS                       R5 R5 K6 ["Components"]
       16 GETTABLEKS                       R5 R5 K7 ["NodeView"]
       18 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
       20 GETTABLEKS                       R5 R5 K2 ["AddNode"]
       22 CALL                             R4 1 -1
       23 CALL                             R2 -1 0
       24 MOVE                             R2 R1
       25 GETIMPORT                        R3 K10 [Enum.AnimationNodeType.Blend1DNode]
       27 GETIMPORT                        R4 K5 [require]
       29 GETUPVAL                         R5 4
       30 GETTABLEKS                       R5 R5 K6 ["Components"]
       32 GETTABLEKS                       R5 R5 K7 ["NodeView"]
       34 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
       36 GETTABLEKS                       R5 R5 K9 ["Blend1DNode"]
       38 CALL                             R4 1 -1
       39 CALL                             R2 -1 0
       40 MOVE                             R2 R1
       41 GETIMPORT                        R3 K12 [Enum.AnimationNodeType.Blend2DNode]
       43 GETIMPORT                        R4 K5 [require]
       45 GETUPVAL                         R5 4
       46 GETTABLEKS                       R5 R5 K6 ["Components"]
       48 GETTABLEKS                       R5 R5 K7 ["NodeView"]
       50 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
       52 GETTABLEKS                       R5 R5 K11 ["Blend2DNode"]
       54 CALL                             R4 1 -1
       55 CALL                             R2 -1 0
       56 GETUPVAL                         R2 5
       57 JUMPIF                           R2 ; [+16]
       58 MOVE                             R2 R1
       59 GETIMPORT                        R3 K14 [Enum.AnimationNodeType.ClipNode]
       61 GETIMPORT                        R4 K5 [require]
       63 GETUPVAL                         R5 4
       64 GETTABLEKS                       R5 R5 K6 ["Components"]
       66 GETTABLEKS                       R5 R5 K7 ["NodeView"]
       68 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
       70 GETTABLEKS                       R5 R5 K13 ["ClipNode"]
       72 CALL                             R4 1 -1
       73 CALL                             R2 -1 0
       74 MOVE                             R2 R1
       75 GETIMPORT                        R3 K16 [Enum.AnimationNodeType.GraphOutput]
       77 GETIMPORT                        R4 K5 [require]
       79 GETUPVAL                         R5 4
       80 GETTABLEKS                       R5 R5 K6 ["Components"]
       82 GETTABLEKS                       R5 R5 K7 ["NodeView"]
       84 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
       86 GETTABLEKS                       R5 R5 K15 ["GraphOutput"]
       88 CALL                             R4 1 -1
       89 CALL                             R2 -1 0
       90 MOVE                             R2 R1
       91 GETIMPORT                        R3 K18 [Enum.AnimationNodeType.OverNode]
       93 GETIMPORT                        R4 K5 [require]
       95 GETUPVAL                         R5 4
       96 GETTABLEKS                       R5 R5 K6 ["Components"]
       98 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      100 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      102 GETTABLEKS                       R5 R5 K17 ["OverNode"]
      104 CALL                             R4 1 -1
      105 CALL                             R2 -1 0
      106 MOVE                             R2 R1
      107 GETIMPORT                        R3 K20 [Enum.AnimationNodeType.PrioritySelectNode]
      109 GETIMPORT                        R4 K5 [require]
      111 GETUPVAL                         R5 4
      112 GETTABLEKS                       R5 R5 K6 ["Components"]
      114 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      116 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      118 GETTABLEKS                       R5 R5 K19 ["PrioritySelectNode"]
      120 CALL                             R4 1 -1
      121 CALL                             R2 -1 0
      122 MOVE                             R2 R1
      123 GETIMPORT                        R3 K22 [Enum.AnimationNodeType.RandomSequenceNode]
      125 GETIMPORT                        R4 K5 [require]
      127 GETUPVAL                         R5 4
      128 GETTABLEKS                       R5 R5 K6 ["Components"]
      130 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      132 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      134 GETTABLEKS                       R5 R5 K21 ["RandomSequenceNode"]
      136 CALL                             R4 1 -1
      137 CALL                             R2 -1 0
      138 MOVE                             R2 R1
      139 GETIMPORT                        R3 K24 [Enum.AnimationNodeType.SelectNode]
      141 GETIMPORT                        R4 K5 [require]
      143 GETUPVAL                         R5 4
      144 GETTABLEKS                       R5 R5 K6 ["Components"]
      146 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      148 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      150 GETTABLEKS                       R5 R5 K23 ["SelectNode"]
      152 CALL                             R4 1 -1
      153 CALL                             R2 -1 0
      154 MOVE                             R2 R1
      155 GETIMPORT                        R3 K26 [Enum.AnimationNodeType.SequenceNode]
      157 GETIMPORT                        R4 K5 [require]
      159 GETUPVAL                         R5 4
      160 GETTABLEKS                       R5 R5 K6 ["Components"]
      162 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      164 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      166 GETTABLEKS                       R5 R5 K25 ["SequenceNode"]
      168 CALL                             R4 1 -1
      169 CALL                             R2 -1 0
      170 MOVE                             R2 R1
      171 GETIMPORT                        R3 K28 [Enum.AnimationNodeType.SpeedNode]
      173 GETIMPORT                        R4 K5 [require]
      175 GETUPVAL                         R5 4
      176 GETTABLEKS                       R5 R5 K6 ["Components"]
      178 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      180 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      182 GETTABLEKS                       R5 R5 K27 ["SpeedNode"]
      184 CALL                             R4 1 -1
      185 CALL                             R2 -1 0
      186 MOVE                             R2 R1
      187 GETIMPORT                        R3 K30 [Enum.AnimationNodeType.SubtractNode]
      189 GETIMPORT                        R4 K5 [require]
      191 GETUPVAL                         R5 4
      192 GETTABLEKS                       R5 R5 K6 ["Components"]
      194 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      196 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      198 GETTABLEKS                       R5 R5 K29 ["SubtractNode"]
      200 CALL                             R4 1 -1
      201 CALL                             R2 -1 0
      202 MOVE                             R2 R1
      203 GETIMPORT                        R3 K32 [Enum.AnimationNodeType.MaskNode]
      205 GETIMPORT                        R4 K5 [require]
      207 GETUPVAL                         R5 4
      208 GETTABLEKS                       R5 R5 K6 ["Components"]
      210 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      212 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      214 GETTABLEKS                       R5 R5 K31 ["MaskNode"]
      216 CALL                             R4 1 -1
      217 CALL                             R2 -1 0
      218 GETUPVAL                         R2 6
      219 JUMPIFNOT                        R2 ; [+16]
      220 MOVE                             R2 R1
      221 GETIMPORT                        R3 K34 [Enum.AnimationNodeType.OneShotNode]
      223 GETIMPORT                        R4 K5 [require]
      225 GETUPVAL                         R5 4
      226 GETTABLEKS                       R5 R5 K6 ["Components"]
      228 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      230 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      232 GETTABLEKS                       R5 R5 K33 ["OneShotNode"]
      234 CALL                             R4 1 -1
      235 CALL                             R2 -1 0
      236 MOVE                             R2 R1
      237 GETIMPORT                        R3 K14 [Enum.AnimationNodeType.ClipNode]
      239 GETIMPORT                        R4 K5 [require]
      241 GETUPVAL                         R5 4
      242 GETTABLEKS                       R5 R5 K6 ["Components"]
      244 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      246 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      248 GETTABLEKS                       R5 R5 K13 ["ClipNode"]
      250 CALL                             R4 1 -1
      251 CALL                             R2 -1 1
      252 NEWCLOSURE                       R3 P1
      253 CAPTURE                          UPVAL U7
      254 CAPTURE                          UPVAL U8
      255 CAPTURE                          UPVAL U9
      256 SETTABLEKS                       R3 R2 K35 ["observeDynamicName"]
      258 NEWTABLE                         R3 0 0
      260 GETUPVAL                         R4 1
      261 LOADNIL                          R5
      262 LOADNIL                          R6
      263 FORGPREP                         R4
      264 GETTABLE                         R11 R0 R8
      265 JUMPIFNOTEQKNIL                  R11 ; [+2]
      267 LOADB                            R10 0 +1
      268 LOADB                            R10 1
      269 FASTCALL2K                       ASSERT R10 K36 ; [+4]
      271 LOADK                            R11 K36 ["Ordering group with no items"]
      272 GETIMPORT                        R9 K38 [assert]
      274 CALL                             R9 2 0
      275 GETTABLE                         R11 R0 R8
      276 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
      278 MOVE                             R10 R3
      279 GETIMPORT                        R9 K41 [table.insert]
      281 CALL                             R9 2 0
      282 FORGLOOP                         R4 2 ; [-19]
      284 RETURN                           R3 1

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
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U6
       18 CAPTURE                          UPVAL U7
       19 CAPTURE                          UPVAL U8
       20 CAPTURE                          UPVAL U9
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R0
       23 NEWTABLE                         R4 0 1
       25 GETTABLEKS                       R5 R1 K3 ["observe"]
       27 SETLIST                          R4 R5 1 [1]
       29 CALL                             R2 2 -1
       30 RETURN                           R2 -1

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
       77 LOADNIL                          R3
       78 RETURN                           R3 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_12:
        0 DUPTABLE                         R0 K3 [{"nodeLibrary", "renderOnlyLibrary", "renderProperty"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["nodeLibrary"]
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 JUMPIFNOT                        R2 ; [+25]
        7 DUPTABLE                         R1 K5 [{"StateMachine"}]
        8 DUPTABLE                         R2 K11 [{["id"] = "StateMachine", ["definition"], ["displayName"] = "State Machine", ["render"]}]
        9 DUPTABLE                         R3 K17 [{["Group"] = "State", ["Inputs"], ["Properties"], ["States"]}]
       10 NEWTABLE                         R4 0 0
       12 SETTABLEKS                       R4 R3 K14 ["Inputs"]
       14 NEWTABLE                         R4 0 0
       16 SETTABLEKS                       R4 R3 K15 ["Properties"]
       18 NEWTABLE                         R4 0 0
       20 SETTABLEKS                       R4 R3 K16 ["States"]
       22 SETTABLEKS                       R3 R2 K7 ["definition"]
       24 DUPCLOSURE                       R3 K18 [PROTO_11]
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          UPVAL U3
       27 SETTABLEKS                       R3 R2 K10 ["render"]
       29 SETTABLEKS                       R2 R1 K4 ["StateMachine"]
       31 JUMP                             ; [+1]
       32 LOADNIL                          R1
       33 SETTABLEKS                       R1 R0 K1 ["renderOnlyLibrary"]
       35 GETUPVAL                         R1 4
       36 SETTABLEKS                       R1 R0 K2 ["renderProperty"]
       38 RETURN                           R0 1

PROTO_13:
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
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          UPVAL U6
       21 NEWTABLE                         R4 0 0
       23 CALL                             R2 2 1
       24 GETUPVAL                         R3 2
       25 GETTABLEKS                       R3 R3 K1 ["createElement"]
       27 GETUPVAL                         R4 7
       28 GETTABLEKS                       R4 R4 K2 ["NodeLibraryContext"]
       30 GETTABLEKS                       R4 R4 K3 ["Provider"]
       32 DUPTABLE                         R5 K5 [{"value"}]
       33 SETTABLEKS                       R2 R5 K4 ["value"]
       35 GETTABLEKS                       R6 R0 K6 ["children"]
       37 CALL                             R3 3 -1
       38 RETURN                           R3 -1

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
       59 GETTABLEKS                       R9 R1 K21 ["Components"]
       61 GETTABLEKS                       R9 R9 K22 ["NodeView"]
       63 GETTABLEKS                       R9 R9 K23 ["CompositorNodes"]
       65 GETTABLEKS                       R9 R9 K24 ["StateMachineChip"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K9 [require]
       70 GETTABLEKS                       R10 R1 K12 ["Flags"]
       72 GETTABLEKS                       R10 R10 K25 ["getFFlagAnimGraphUI_StateMachineNode"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K9 [require]
       77 GETTABLEKS                       R11 R1 K26 ["Hooks"]
       79 GETTABLEKS                       R11 R11 K27 ["useSignalDispatcher"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K1 [game]
       84 LOADK                            R13 K28 ["AnimGraphOneShotNode"]
       85 NAMECALL                         R11 R11 K29 ["GetEngineFeature"]
       87 CALL                             R11 2 1
       88 NEWTABLE                         R12 0 6
       90 LOADK                            R13 K30 ["Content"]
       91 LOADK                            R14 K31 ["State"]
       92 LOADK                            R15 K32 ["Sequence"]
       93 LOADK                            R16 K33 ["Blend"]
       94 LOADK                            R17 K34 ["Misc"]
       95 LOADK                            R18 K35 ["Output"]
       96 SETLIST                          R12 R13 6 [1]
       98 DUPCLOSURE                       R13 K36 [PROTO_2]
       99 CAPTURE                          VAL R0
      100 CAPTURE                          VAL R12
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R11
      105 DUPCLOSURE                       R14 K37 [PROTO_9]
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R10
      109 CAPTURE                          VAL R0
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R11
      115 CAPTURE                          VAL R7
      116 DUPTABLE                         R15 K45 [{"Angle", "Animation", "ClampedWeight", "Timestamp", "TimeProgress", "Transition", "Mask"}]
      117 GETIMPORT                        R16 K9 [require]
      119 GETTABLEKS                       R17 R1 K21 ["Components"]
      121 GETTABLEKS                       R17 R17 K22 ["NodeView"]
      123 GETTABLEKS                       R17 R17 K46 ["CompositorNodeProperty"]
      125 GETTABLEKS                       R17 R17 K47 ["AngleProperty"]
      127 CALL                             R16 1 1
      128 SETTABLEKS                       R16 R15 K38 ["Angle"]
      130 GETIMPORT                        R16 K9 [require]
      132 GETTABLEKS                       R17 R1 K21 ["Components"]
      134 GETTABLEKS                       R17 R17 K22 ["NodeView"]
      136 GETTABLEKS                       R17 R17 K46 ["CompositorNodeProperty"]
      138 GETTABLEKS                       R17 R17 K48 ["AssetProperty"]
      140 CALL                             R16 1 1
      141 SETTABLEKS                       R16 R15 K39 ["Animation"]
      143 GETIMPORT                        R16 K9 [require]
      145 GETTABLEKS                       R17 R1 K21 ["Components"]
      147 GETTABLEKS                       R17 R17 K22 ["NodeView"]
      149 GETTABLEKS                       R17 R17 K46 ["CompositorNodeProperty"]
      151 GETTABLEKS                       R17 R17 K49 ["ClampedWeightProperty"]
      153 CALL                             R16 1 1
      154 SETTABLEKS                       R16 R15 K40 ["ClampedWeight"]
      156 GETIMPORT                        R16 K9 [require]
      158 GETTABLEKS                       R17 R1 K21 ["Components"]
      160 GETTABLEKS                       R17 R17 K22 ["NodeView"]
      162 GETTABLEKS                       R17 R17 K46 ["CompositorNodeProperty"]
      164 GETTABLEKS                       R17 R17 K50 ["TimestampProperty"]
      166 CALL                             R16 1 1
      167 SETTABLEKS                       R16 R15 K41 ["Timestamp"]
      169 GETIMPORT                        R16 K9 [require]
      171 GETTABLEKS                       R17 R1 K21 ["Components"]
      173 GETTABLEKS                       R17 R17 K22 ["NodeView"]
      175 GETTABLEKS                       R17 R17 K46 ["CompositorNodeProperty"]
      177 GETTABLEKS                       R17 R17 K51 ["TimeProgressProperty"]
      179 CALL                             R16 1 1
      180 SETTABLEKS                       R16 R15 K42 ["TimeProgress"]
      182 GETIMPORT                        R16 K9 [require]
      184 GETTABLEKS                       R17 R1 K21 ["Components"]
      186 GETTABLEKS                       R17 R17 K22 ["NodeView"]
      188 GETTABLEKS                       R17 R17 K46 ["CompositorNodeProperty"]
      190 GETTABLEKS                       R17 R17 K52 ["TransitionProperty"]
      192 CALL                             R16 1 1
      193 SETTABLEKS                       R16 R15 K43 ["Transition"]
      195 GETIMPORT                        R16 K9 [require]
      197 GETTABLEKS                       R17 R1 K21 ["Components"]
      199 GETTABLEKS                       R17 R17 K22 ["NodeView"]
      201 GETTABLEKS                       R17 R17 K46 ["CompositorNodeProperty"]
      203 GETTABLEKS                       R17 R17 K53 ["MaskProperty"]
      205 CALL                             R16 1 1
      206 SETTABLEKS                       R16 R15 K44 ["Mask"]
      208 DUPTABLE                         R16 K62 [{["PlayMode"] = "Enum.AnimationNodePlayMode", ["InputMode"] = "Enum.AnimationNodeBlend2DInputMode", ["PhaseSync"] = "Enum.AnimationNodePhaseSync", ["BlendMode"] = "Enum.AnimationNodeBlendMode"}]
      209 DUPCLOSURE                       R17 K63 [PROTO_10]
      210 CAPTURE                          VAL R15
      211 CAPTURE                          VAL R6
      212 CAPTURE                          VAL R16
      213 CAPTURE                          VAL R4
      214 DUPCLOSURE                       R18 K64 [PROTO_13]
      215 CAPTURE                          VAL R3
      216 CAPTURE                          VAL R14
      217 CAPTURE                          VAL R6
      218 CAPTURE                          VAL R13
      219 CAPTURE                          VAL R9
      220 CAPTURE                          VAL R8
      221 CAPTURE                          VAL R17
      222 CAPTURE                          VAL R4
      223 RETURN                           R18 1
