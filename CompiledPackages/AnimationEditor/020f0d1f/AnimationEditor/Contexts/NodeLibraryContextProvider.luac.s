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
       16 LOADK                            R7 K5 ["Unknown group: %*"]
       17 MOVE                             R9 R3
       18 NAMECALL                         R7 R7 K6 ["format"]
       20 CALL                             R7 2 1
       21 MOVE                             R6 R7
       22 FASTCALL2                        ASSERT R5 R6 ; [+3]
       24 GETIMPORT                        R4 K8 [assert]
       26 CALL                             R4 2 0
       27 GETUPVAL                         R5 2
       28 GETTABLE                         R4 R5 R3
       29 JUMPIFNOTEQKNIL                  R4 ; [+5]
       31 GETUPVAL                         R4 2
       32 NEWTABLE                         R5 0 0
       34 SETTABLE                         R5 R4 R3
       35 GETUPVAL                         R6 2
       36 GETTABLE                         R5 R6 R3
       37 DUPTABLE                         R6 K13 [{"id", "definition", "displayName", "render"}]
       38 FASTCALL1                        TOSTRING R0 ; [+3]
       39 MOVE                             R8 R0
       40 GETIMPORT                        R7 K15 [tostring]
       42 CALL                             R7 1 1
       43 SETTABLEKS                       R7 R6 K9 ["id"]
       45 SETTABLEKS                       R2 R6 K10 ["definition"]
       47 GETUPVAL                         R7 3
       48 GETTABLEKS                       R7 R7 K16 ["formatName"]
       50 GETTABLEKS                       R8 R0 K17 ["Name"]
       52 CALL                             R7 1 1
       53 SETTABLEKS                       R7 R6 K11 ["displayName"]
       55 NEWCLOSURE                       R7 P0
       56 CAPTURE                          UPVAL U4
       57 CAPTURE                          VAL R1
       58 SETTABLEKS                       R7 R6 K12 ["render"]
       60 FASTCALL2                        TABLE_INSERT R5 R6 ; [+3]
       62 GETIMPORT                        R4 K19 [table.insert]
       64 CALL                             R4 2 0
       65 RETURN                           R0 0

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
      216 NEWTABLE                         R2 0 0
      218 GETUPVAL                         R3 1
      219 LOADNIL                          R4
      220 LOADNIL                          R5
      221 FORGPREP                         R3
      222 GETTABLE                         R10 R0 R7
      223 JUMPIFNOTEQKNIL                  R10 ; [+2]
      225 LOADB                            R9 0 +1
      226 LOADB                            R9 1
      227 FASTCALL2K                       ASSERT R9 K33 ; [+4]
      229 LOADK                            R10 K33 ["Ordering group with no items"]
      230 GETIMPORT                        R8 K35 [assert]
      232 CALL                             R8 2 0
      233 GETTABLE                         R10 R0 R7
      234 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
      236 MOVE                             R9 R2
      237 GETIMPORT                        R8 K38 [table.insert]
      239 CALL                             R8 2 0
      240 FORGLOOP                         R3 2 ; [-19]
      242 RETURN                           R2 1

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
       16 LOADK                            R7 K5 ["Unknown group: %*"]
       17 MOVE                             R9 R3
       18 NAMECALL                         R7 R7 K6 ["format"]
       20 CALL                             R7 2 1
       21 MOVE                             R6 R7
       22 FASTCALL2                        ASSERT R5 R6 ; [+3]
       24 GETIMPORT                        R4 K8 [assert]
       26 CALL                             R4 2 0
       27 GETUPVAL                         R5 2
       28 GETTABLE                         R4 R5 R3
       29 JUMPIFNOTEQKNIL                  R4 ; [+5]
       31 GETUPVAL                         R4 2
       32 NEWTABLE                         R5 0 0
       34 SETTABLE                         R5 R4 R3
       35 DUPTABLE                         R4 K13 [{"id", "definition", "displayName", "render"}]
       36 FASTCALL1                        TOSTRING R0 ; [+3]
       37 MOVE                             R6 R0
       38 GETIMPORT                        R5 K15 [tostring]
       40 CALL                             R5 1 1
       41 SETTABLEKS                       R5 R4 K9 ["id"]
       43 SETTABLEKS                       R2 R4 K10 ["definition"]
       45 GETUPVAL                         R5 3
       46 GETTABLEKS                       R5 R5 K16 ["formatName"]
       48 GETTABLEKS                       R6 R0 K17 ["Name"]
       50 CALL                             R5 1 1
       51 SETTABLEKS                       R5 R4 K11 ["displayName"]
       53 NEWCLOSURE                       R5 P0
       54 CAPTURE                          UPVAL U4
       55 CAPTURE                          VAL R1
       56 SETTABLEKS                       R5 R4 K12 ["render"]
       58 GETUPVAL                         R7 2
       59 GETTABLE                         R6 R7 R3
       60 FASTCALL2                        TABLE_INSERT R6 R4 ; [+4]
       62 MOVE                             R7 R4
       63 GETIMPORT                        R5 K19 [table.insert]
       65 CALL                             R5 2 0
       66 RETURN                           R4 1

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
      218 MOVE                             R2 R1
      219 GETIMPORT                        R3 K14 [Enum.AnimationNodeType.ClipNode]
      221 GETIMPORT                        R4 K5 [require]
      223 GETUPVAL                         R5 4
      224 GETTABLEKS                       R5 R5 K6 ["Components"]
      226 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      228 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      230 GETTABLEKS                       R5 R5 K13 ["ClipNode"]
      232 CALL                             R4 1 -1
      233 CALL                             R2 -1 1
      234 NEWCLOSURE                       R3 P1
      235 CAPTURE                          UPVAL U6
      236 CAPTURE                          UPVAL U7
      237 CAPTURE                          UPVAL U8
      238 SETTABLEKS                       R3 R2 K33 ["observeDynamicName"]
      240 NEWTABLE                         R3 0 0
      242 GETUPVAL                         R4 1
      243 LOADNIL                          R5
      244 LOADNIL                          R6
      245 FORGPREP                         R4
      246 GETTABLE                         R11 R0 R8
      247 JUMPIFNOTEQKNIL                  R11 ; [+2]
      249 LOADB                            R10 0 +1
      250 LOADB                            R10 1
      251 FASTCALL2K                       ASSERT R10 K34 ; [+4]
      253 LOADK                            R11 K34 ["Ordering group with no items"]
      254 GETIMPORT                        R9 K36 [assert]
      256 CALL                             R9 2 0
      257 GETTABLE                         R11 R0 R8
      258 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
      260 MOVE                             R10 R3
      261 GETIMPORT                        R9 K39 [table.insert]
      263 CALL                             R9 2 0
      264 FORGLOOP                         R4 2 ; [-19]
      266 RETURN                           R3 1

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
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R0
       22 NEWTABLE                         R4 0 1
       24 GETTABLEKS                       R5 R1 K3 ["observe"]
       26 SETLIST                          R4 R5 1 [1]
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1

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
       59 GETTABLEKS                       R9 R1 K21 ["Hooks"]
       61 GETTABLEKS                       R9 R9 K22 ["useSignalDispatcher"]
       63 CALL                             R8 1 1
       64 NEWTABLE                         R9 0 6
       66 LOADK                            R10 K23 ["Content"]
       67 LOADK                            R11 K24 ["State"]
       68 LOADK                            R12 K25 ["Sequence"]
       69 LOADK                            R13 K26 ["Blend"]
       70 LOADK                            R14 K27 ["Misc"]
       71 LOADK                            R15 K28 ["Output"]
       72 SETLIST                          R9 R10 6 [1]
       74 DUPCLOSURE                       R10 K29 [PROTO_2]
       75 CAPTURE                          VAL R0
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R1
       80 DUPCLOSURE                       R11 K30 [PROTO_9]
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R0
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R7
       90 DUPTABLE                         R12 K38 [{"Angle", "Animation", "ClampedWeight", "Timestamp", "TimeProgress", "Transition", "Mask"}]
       91 GETIMPORT                        R13 K9 [require]
       93 GETTABLEKS                       R14 R1 K39 ["Components"]
       95 GETTABLEKS                       R14 R14 K40 ["NodeView"]
       97 GETTABLEKS                       R14 R14 K41 ["CompositorNodeProperty"]
       99 GETTABLEKS                       R14 R14 K42 ["AngleProperty"]
      101 CALL                             R13 1 1
      102 SETTABLEKS                       R13 R12 K31 ["Angle"]
      104 GETIMPORT                        R13 K9 [require]
      106 GETTABLEKS                       R14 R1 K39 ["Components"]
      108 GETTABLEKS                       R14 R14 K40 ["NodeView"]
      110 GETTABLEKS                       R14 R14 K41 ["CompositorNodeProperty"]
      112 GETTABLEKS                       R14 R14 K43 ["AssetProperty"]
      114 CALL                             R13 1 1
      115 SETTABLEKS                       R13 R12 K32 ["Animation"]
      117 GETIMPORT                        R13 K9 [require]
      119 GETTABLEKS                       R14 R1 K39 ["Components"]
      121 GETTABLEKS                       R14 R14 K40 ["NodeView"]
      123 GETTABLEKS                       R14 R14 K41 ["CompositorNodeProperty"]
      125 GETTABLEKS                       R14 R14 K44 ["ClampedWeightProperty"]
      127 CALL                             R13 1 1
      128 SETTABLEKS                       R13 R12 K33 ["ClampedWeight"]
      130 GETIMPORT                        R13 K9 [require]
      132 GETTABLEKS                       R14 R1 K39 ["Components"]
      134 GETTABLEKS                       R14 R14 K40 ["NodeView"]
      136 GETTABLEKS                       R14 R14 K41 ["CompositorNodeProperty"]
      138 GETTABLEKS                       R14 R14 K45 ["TimestampProperty"]
      140 CALL                             R13 1 1
      141 SETTABLEKS                       R13 R12 K34 ["Timestamp"]
      143 GETIMPORT                        R13 K9 [require]
      145 GETTABLEKS                       R14 R1 K39 ["Components"]
      147 GETTABLEKS                       R14 R14 K40 ["NodeView"]
      149 GETTABLEKS                       R14 R14 K41 ["CompositorNodeProperty"]
      151 GETTABLEKS                       R14 R14 K46 ["TimeProgressProperty"]
      153 CALL                             R13 1 1
      154 SETTABLEKS                       R13 R12 K35 ["TimeProgress"]
      156 GETIMPORT                        R13 K9 [require]
      158 GETTABLEKS                       R14 R1 K39 ["Components"]
      160 GETTABLEKS                       R14 R14 K40 ["NodeView"]
      162 GETTABLEKS                       R14 R14 K41 ["CompositorNodeProperty"]
      164 GETTABLEKS                       R14 R14 K47 ["TransitionProperty"]
      166 CALL                             R13 1 1
      167 SETTABLEKS                       R13 R12 K36 ["Transition"]
      169 GETIMPORT                        R13 K9 [require]
      171 GETTABLEKS                       R14 R1 K39 ["Components"]
      173 GETTABLEKS                       R14 R14 K40 ["NodeView"]
      175 GETTABLEKS                       R14 R14 K41 ["CompositorNodeProperty"]
      177 GETTABLEKS                       R14 R14 K48 ["MaskProperty"]
      179 CALL                             R13 1 1
      180 SETTABLEKS                       R13 R12 K37 ["Mask"]
      182 DUPTABLE                         R13 K55 [{["PlayMode"] = "Enum.AnimationNodePlayMode", ["InputMode"] = "Enum.AnimationNodeBlend2DInputMode", ["PhaseSync"] = "Enum.AnimationNodePhaseSync"}]
      183 DUPCLOSURE                       R14 K56 [PROTO_10]
      184 CAPTURE                          VAL R12
      185 CAPTURE                          VAL R6
      186 CAPTURE                          VAL R13
      187 CAPTURE                          VAL R4
      188 DUPCLOSURE                       R15 K57 [PROTO_12]
      189 CAPTURE                          VAL R3
      190 CAPTURE                          VAL R11
      191 CAPTURE                          VAL R6
      192 CAPTURE                          VAL R10
      193 CAPTURE                          VAL R14
      194 CAPTURE                          VAL R4
      195 RETURN                           R15 1
