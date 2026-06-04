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

PROTO_4:
        0 DUPTABLE                         R0 K2 [{"nodeLibrary", "renderProperty"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["nodeLibrary"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["renderProperty"]
        7 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 GETUPVAL                         R2 1
        4 NEWTABLE                         R3 0 0
        6 CALL                             R1 2 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useMemo"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U2
       13 NEWTABLE                         R4 0 0
       15 CALL                             R2 2 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K1 ["createElement"]
       19 GETUPVAL                         R4 3
       20 GETTABLEKS                       R4 R4 K2 ["NodeLibraryContext"]
       22 GETTABLEKS                       R4 R4 K3 ["Provider"]
       24 DUPTABLE                         R5 K5 [{"value"}]
       25 SETTABLEKS                       R2 R5 K4 ["value"]
       27 GETTABLEKS                       R6 R0 K6 ["children"]
       29 CALL                             R3 3 -1
       30 RETURN                           R3 -1

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
       15 GETTABLEKS                       R3 R1 K10 ["Parent"]
       17 GETTABLEKS                       R3 R3 K11 ["NodeGraphing"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K12 ["Util"]
       24 GETTABLEKS                       R4 R4 K13 ["Nodes"]
       26 GETTABLEKS                       R4 R4 K14 ["NodeNameFormattingUtils"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R1 K10 ["Parent"]
       33 GETTABLEKS                       R5 R5 K15 ["React"]
       35 CALL                             R4 1 1
       36 NEWTABLE                         R5 0 6
       38 LOADK                            R6 K16 ["Content"]
       39 LOADK                            R7 K17 ["State"]
       40 LOADK                            R8 K18 ["Sequence"]
       41 LOADK                            R9 K19 ["Blend"]
       42 LOADK                            R10 K20 ["Misc"]
       43 LOADK                            R11 K21 ["Output"]
       44 SETLIST                          R5 R6 6 [1]
       46 DUPCLOSURE                       R6 K22 [PROTO_2]
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R1
       52 DUPTABLE                         R7 K30 [{"Angle", "Animation", "ClampedWeight", "Timestamp", "TimeProgress", "Transition", "Mask"}]
       53 GETIMPORT                        R8 K9 [require]
       55 GETTABLEKS                       R9 R1 K31 ["Components"]
       57 GETTABLEKS                       R9 R9 K32 ["NodeView"]
       59 GETTABLEKS                       R9 R9 K33 ["CompositorNodeProperty"]
       61 GETTABLEKS                       R9 R9 K34 ["AngleProperty"]
       63 CALL                             R8 1 1
       64 SETTABLEKS                       R8 R7 K23 ["Angle"]
       66 GETIMPORT                        R8 K9 [require]
       68 GETTABLEKS                       R9 R1 K31 ["Components"]
       70 GETTABLEKS                       R9 R9 K32 ["NodeView"]
       72 GETTABLEKS                       R9 R9 K33 ["CompositorNodeProperty"]
       74 GETTABLEKS                       R9 R9 K35 ["AssetProperty"]
       76 CALL                             R8 1 1
       77 SETTABLEKS                       R8 R7 K24 ["Animation"]
       79 GETIMPORT                        R8 K9 [require]
       81 GETTABLEKS                       R9 R1 K31 ["Components"]
       83 GETTABLEKS                       R9 R9 K32 ["NodeView"]
       85 GETTABLEKS                       R9 R9 K33 ["CompositorNodeProperty"]
       87 GETTABLEKS                       R9 R9 K36 ["ClampedWeightProperty"]
       89 CALL                             R8 1 1
       90 SETTABLEKS                       R8 R7 K25 ["ClampedWeight"]
       92 GETIMPORT                        R8 K9 [require]
       94 GETTABLEKS                       R9 R1 K31 ["Components"]
       96 GETTABLEKS                       R9 R9 K32 ["NodeView"]
       98 GETTABLEKS                       R9 R9 K33 ["CompositorNodeProperty"]
      100 GETTABLEKS                       R9 R9 K37 ["TimestampProperty"]
      102 CALL                             R8 1 1
      103 SETTABLEKS                       R8 R7 K26 ["Timestamp"]
      105 GETIMPORT                        R8 K9 [require]
      107 GETTABLEKS                       R9 R1 K31 ["Components"]
      109 GETTABLEKS                       R9 R9 K32 ["NodeView"]
      111 GETTABLEKS                       R9 R9 K33 ["CompositorNodeProperty"]
      113 GETTABLEKS                       R9 R9 K38 ["TimeProgressProperty"]
      115 CALL                             R8 1 1
      116 SETTABLEKS                       R8 R7 K27 ["TimeProgress"]
      118 GETIMPORT                        R8 K9 [require]
      120 GETTABLEKS                       R9 R1 K31 ["Components"]
      122 GETTABLEKS                       R9 R9 K32 ["NodeView"]
      124 GETTABLEKS                       R9 R9 K33 ["CompositorNodeProperty"]
      126 GETTABLEKS                       R9 R9 K39 ["TransitionProperty"]
      128 CALL                             R8 1 1
      129 SETTABLEKS                       R8 R7 K28 ["Transition"]
      131 GETIMPORT                        R8 K9 [require]
      133 GETTABLEKS                       R9 R1 K31 ["Components"]
      135 GETTABLEKS                       R9 R9 K32 ["NodeView"]
      137 GETTABLEKS                       R9 R9 K33 ["CompositorNodeProperty"]
      139 GETTABLEKS                       R9 R9 K40 ["MaskProperty"]
      141 CALL                             R8 1 1
      142 SETTABLEKS                       R8 R7 K29 ["Mask"]
      144 DUPTABLE                         R8 K44 [{"PlayMode", "InputMode", "PhaseSync"}]
      145 LOADK                            R9 K45 ["Enum.AnimationNodePlayMode"]
      146 SETTABLEKS                       R9 R8 K41 ["PlayMode"]
      148 LOADK                            R9 K46 ["Enum.AnimationNodeBlend2DInputMode"]
      149 SETTABLEKS                       R9 R8 K42 ["InputMode"]
      151 LOADK                            R9 K47 ["Enum.AnimationNodePhaseSync"]
      152 SETTABLEKS                       R9 R8 K43 ["PhaseSync"]
      154 DUPCLOSURE                       R9 K48 [PROTO_3]
      155 CAPTURE                          VAL R7
      156 CAPTURE                          VAL R4
      157 CAPTURE                          VAL R8
      158 CAPTURE                          VAL R2
      159 DUPCLOSURE                       R10 K49 [PROTO_5]
      160 CAPTURE                          VAL R4
      161 CAPTURE                          VAL R6
      162 CAPTURE                          VAL R9
      163 CAPTURE                          VAL R2
      164 RETURN                           R10 1
