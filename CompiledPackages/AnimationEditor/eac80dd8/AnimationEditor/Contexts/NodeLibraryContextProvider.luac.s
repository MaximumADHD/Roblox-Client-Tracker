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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["CompositorNode"]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["set"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K1 ["getAssetNameAsync"]
        7 GETUPVAL                         R3 1
        8 CALL                             R2 1 -1
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createComputed"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1

PROTO_6:
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
       58 GETIMPORT                        R3 K14 [Enum.AnimationNodeType.GraphOutput]
       60 GETIMPORT                        R4 K5 [require]
       62 GETUPVAL                         R5 5
       63 GETTABLEKS                       R5 R5 K6 ["Components"]
       65 GETTABLEKS                       R5 R5 K7 ["NodeView"]
       67 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
       69 GETTABLEKS                       R5 R5 K13 ["GraphOutput"]
       71 CALL                             R4 1 -1
       72 CALL                             R2 -1 0
       73 MOVE                             R2 R1
       74 GETIMPORT                        R3 K16 [Enum.AnimationNodeType.OverNode]
       76 GETIMPORT                        R4 K5 [require]
       78 GETUPVAL                         R5 5
       79 GETTABLEKS                       R5 R5 K6 ["Components"]
       81 GETTABLEKS                       R5 R5 K7 ["NodeView"]
       83 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
       85 GETTABLEKS                       R5 R5 K15 ["OverNode"]
       87 CALL                             R4 1 -1
       88 CALL                             R2 -1 0
       89 MOVE                             R2 R1
       90 GETIMPORT                        R3 K18 [Enum.AnimationNodeType.PrioritySelectNode]
       92 GETIMPORT                        R4 K5 [require]
       94 GETUPVAL                         R5 5
       95 GETTABLEKS                       R5 R5 K6 ["Components"]
       97 GETTABLEKS                       R5 R5 K7 ["NodeView"]
       99 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      101 GETTABLEKS                       R5 R5 K17 ["PrioritySelectNode"]
      103 CALL                             R4 1 -1
      104 CALL                             R2 -1 0
      105 MOVE                             R2 R1
      106 GETIMPORT                        R3 K20 [Enum.AnimationNodeType.RandomSequenceNode]
      108 GETIMPORT                        R4 K5 [require]
      110 GETUPVAL                         R5 5
      111 GETTABLEKS                       R5 R5 K6 ["Components"]
      113 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      115 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      117 GETTABLEKS                       R5 R5 K19 ["RandomSequenceNode"]
      119 CALL                             R4 1 -1
      120 CALL                             R2 -1 0
      121 MOVE                             R2 R1
      122 GETIMPORT                        R3 K22 [Enum.AnimationNodeType.SelectNode]
      124 GETIMPORT                        R4 K5 [require]
      126 GETUPVAL                         R5 5
      127 GETTABLEKS                       R5 R5 K6 ["Components"]
      129 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      131 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      133 GETTABLEKS                       R5 R5 K21 ["SelectNode"]
      135 CALL                             R4 1 -1
      136 CALL                             R2 -1 0
      137 MOVE                             R2 R1
      138 GETIMPORT                        R3 K24 [Enum.AnimationNodeType.SequenceNode]
      140 GETIMPORT                        R4 K5 [require]
      142 GETUPVAL                         R5 5
      143 GETTABLEKS                       R5 R5 K6 ["Components"]
      145 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      147 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      149 GETTABLEKS                       R5 R5 K23 ["SequenceNode"]
      151 CALL                             R4 1 -1
      152 CALL                             R2 -1 0
      153 MOVE                             R2 R1
      154 GETIMPORT                        R3 K26 [Enum.AnimationNodeType.SpeedNode]
      156 GETIMPORT                        R4 K5 [require]
      158 GETUPVAL                         R5 5
      159 GETTABLEKS                       R5 R5 K6 ["Components"]
      161 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      163 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      165 GETTABLEKS                       R5 R5 K25 ["SpeedNode"]
      167 CALL                             R4 1 -1
      168 CALL                             R2 -1 0
      169 MOVE                             R2 R1
      170 GETIMPORT                        R3 K28 [Enum.AnimationNodeType.SubtractNode]
      172 GETIMPORT                        R4 K5 [require]
      174 GETUPVAL                         R5 5
      175 GETTABLEKS                       R5 R5 K6 ["Components"]
      177 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      179 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      181 GETTABLEKS                       R5 R5 K27 ["SubtractNode"]
      183 CALL                             R4 1 -1
      184 CALL                             R2 -1 0
      185 MOVE                             R2 R1
      186 GETIMPORT                        R3 K30 [Enum.AnimationNodeType.MaskNode]
      188 GETIMPORT                        R4 K5 [require]
      190 GETUPVAL                         R5 5
      191 GETTABLEKS                       R5 R5 K6 ["Components"]
      193 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      195 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      197 GETTABLEKS                       R5 R5 K29 ["MaskNode"]
      199 CALL                             R4 1 -1
      200 CALL                             R2 -1 0
      201 GETUPVAL                         R2 6
      202 JUMPIFNOT                        R2 ; [+16]
      203 MOVE                             R2 R1
      204 GETIMPORT                        R3 K32 [Enum.AnimationNodeType.OneShotNode]
      206 GETIMPORT                        R4 K5 [require]
      208 GETUPVAL                         R5 5
      209 GETTABLEKS                       R5 R5 K6 ["Components"]
      211 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      213 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      215 GETTABLEKS                       R5 R5 K31 ["OneShotNode"]
      217 CALL                             R4 1 -1
      218 CALL                             R2 -1 0
      219 GETUPVAL                         R2 7
      220 CALL                             R2 0 1
      221 JUMPIFNOT                        R2 ; [+64]
      222 GETUPVAL                         R2 0
      223 GETIMPORT                        R4 K35 [Enum.AnimationValueNodeType.Expression]
      225 NAMECALL                         R2 R2 K36 ["GetAnimationValueNodeDefinition"]
      227 CALL                             R2 2 1
      228 JUMPIFEQKNIL                     R2 ; [+57]
      230 GETTABLEKS                       R3 R2 K37 ["Group"]
      232 GETIMPORT                        R6 K40 [table.find]
      234 GETUPVAL                         R7 2
      235 MOVE                             R8 R3
      236 CALL                             R6 2 1
      237 JUMPIFNOTEQKNIL                  R6 ; [+2]
      239 LOADB                            R5 0 +1
      240 LOADB                            R5 1
      241 LOADK                            R6 K41 ["Unknown group: %*"]
      242 MOVE                             R8 R3
      243 NAMECALL                         R6 R6 K42 ["format"]
      245 CALL                             R6 2 1
      246 FASTCALL2                        ASSERT R5 R6 ; [+3]
      248 GETIMPORT                        R4 K44 [assert]
      250 CALL                             R4 2 0
      251 GETTABLE                         R4 R0 R3
      252 JUMPIFNOTEQKNIL                  R4 ; [+4]
      254 NEWTABLE                         R4 0 0
      256 SETTABLE                         R4 R0 R3
      257 GETTABLE                         R5 R0 R3
      258 DUPTABLE                         R6 K49 [{"id", "definition", "displayName", "render"}]
      259 GETUPVAL                         R7 8
      260 GETTABLEKS                       R7 R7 K50 ["EXPRESSION_NODE_CLASSNAME"]
      262 SETTABLEKS                       R7 R6 K45 ["id"]
      264 SETTABLEKS                       R2 R6 K46 ["definition"]
      266 GETUPVAL                         R7 3
      267 GETTABLEKS                       R7 R7 K51 ["formatName"]
      269 GETIMPORT                        R8 K35 [Enum.AnimationValueNodeType.Expression]
      271 GETTABLEKS                       R8 R8 K52 ["Name"]
      273 CALL                             R7 1 1
      274 SETTABLEKS                       R7 R6 K47 ["displayName"]
      276 DUPCLOSURE                       R7 K53 [PROTO_2]
      277 CAPTURE                          UPVAL U4
      278 CAPTURE                          UPVAL U9
      279 SETTABLEKS                       R7 R6 K48 ["render"]
      281 FASTCALL2                        TABLE_INSERT R5 R6 ; [+3]
      283 GETIMPORT                        R4 K55 [table.insert]
      285 CALL                             R4 2 0
      286 MOVE                             R2 R1
      287 GETIMPORT                        R3 K57 [Enum.AnimationNodeType.ClipNode]
      289 GETIMPORT                        R4 K5 [require]
      291 GETUPVAL                         R5 5
      292 GETTABLEKS                       R5 R5 K6 ["Components"]
      294 GETTABLEKS                       R5 R5 K7 ["NodeView"]
      296 GETTABLEKS                       R5 R5 K8 ["CompositorNodes"]
      298 GETTABLEKS                       R5 R5 K56 ["ClipNode"]
      300 CALL                             R4 1 -1
      301 CALL                             R2 -1 1
      302 NEWCLOSURE                       R3 P2
      303 CAPTURE                          UPVAL U10
      304 CAPTURE                          UPVAL U11
      305 CAPTURE                          UPVAL U12
      306 SETTABLEKS                       R3 R2 K58 ["observeDynamicName"]
      308 GETUPVAL                         R3 13
      309 CALL                             R3 0 1
      310 JUMPIFNOT                        R3 ; [+19]
      311 GETUPVAL                         R3 14
      312 JUMPIFNOT                        R3 ; [+17]
      313 MOVE                             R3 R1
      314 GETIMPORT                        R4 K60 [Enum.AnimationNodeType.StateMachineNode]
      316 GETIMPORT                        R5 K5 [require]
      318 GETUPVAL                         R6 5
      319 GETTABLEKS                       R6 R6 K6 ["Components"]
      321 GETTABLEKS                       R6 R6 K7 ["NodeView"]
      323 GETTABLEKS                       R6 R6 K8 ["CompositorNodes"]
      325 GETTABLEKS                       R6 R6 K61 ["PoseStateMachineNode"]
      327 CALL                             R5 1 1
      328 LOADK                            R6 K62 ["State Machine"]
      329 CALL                             R3 3 0
      330 NEWTABLE                         R3 0 0
      332 GETUPVAL                         R4 2
      333 LOADNIL                          R5
      334 LOADNIL                          R6
      335 FORGPREP                         R4
      336 GETTABLE                         R11 R0 R8
      337 JUMPIFNOTEQKNIL                  R11 ; [+2]
      339 LOADB                            R10 0 +1
      340 LOADB                            R10 1
      341 FASTCALL2K                       ASSERT R10 K63 ; [+4]
      343 LOADK                            R11 K63 ["Ordering group with no items"]
      344 GETIMPORT                        R9 K44 [assert]
      346 CALL                             R9 2 0
      347 GETTABLE                         R11 R0 R8
      348 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
      350 MOVE                             R10 R3
      351 GETIMPORT                        R9 K55 [table.insert]
      353 CALL                             R9 2 0
      354 FORGLOOP                         R4 2 ; [-19]
      356 RETURN                           R3 1

PROTO_7:
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
       22 CAPTURE                          UPVAL U11
       23 CAPTURE                          UPVAL U12
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U13
       27 CAPTURE                          UPVAL U14
       28 NEWTABLE                         R4 0 1
       30 GETTABLEKS                       R5 R1 K3 ["observe"]
       32 SETLIST                          R4 R5 1 [1]
       34 CALL                             R2 2 -1
       35 RETURN                           R2 -1

PROTO_8:
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

PROTO_9:
        0 DUPTABLE                         R0 K2 [{"nodeLibrary", "renderProperty"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["nodeLibrary"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["renderProperty"]
        7 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useMemo"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U2
        8 NEWTABLE                         R4 0 0
       10 CALL                             R2 2 1
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K1 ["createElement"]
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R4 R4 K2 ["NodeLibraryContext"]
       17 GETTABLEKS                       R4 R4 K3 ["Provider"]
       19 DUPTABLE                         R5 K5 [{"value"}]
       20 SETTABLEKS                       R2 R5 K4 ["value"]
       22 GETTABLEKS                       R6 R0 K6 ["children"]
       24 CALL                             R3 3 -1
       25 RETURN                           R3 -1

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
       22 GETTABLEKS                       R4 R1 K12 ["Util"]
       24 GETTABLEKS                       R4 R4 K13 ["Constants"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K14 ["Parent"]
       31 GETTABLEKS                       R5 R5 K15 ["NodeGraphing"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K12 ["Util"]
       38 GETTABLEKS                       R6 R6 K16 ["Nodes"]
       40 GETTABLEKS                       R6 R6 K17 ["NodeNameFormattingUtils"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R1 K14 ["Parent"]
       47 GETTABLEKS                       R7 R7 K18 ["React"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R8 R1 K14 ["Parent"]
       54 GETTABLEKS                       R8 R8 K19 ["Signals"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K9 [require]
       59 GETTABLEKS                       R9 R1 K20 ["Flags"]
       61 GETTABLEKS                       R9 R9 K21 ["getFFlagAnimGraphUIEnableExpressionNodes"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K9 [require]
       66 GETTABLEKS                       R10 R1 K20 ["Flags"]
       68 GETTABLEKS                       R10 R10 K22 ["getFFlagAnimGraphUI_PoseStateMachineNode"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K9 [require]
       73 GETTABLEKS                       R11 R1 K23 ["Components"]
       75 GETTABLEKS                       R11 R11 K24 ["NodeView"]
       77 GETTABLEKS                       R11 R11 K25 ["StateMachine"]
       79 GETTABLEKS                       R11 R11 K26 ["resolveStateMachineNodeDefinition"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K9 [require]
       84 GETTABLEKS                       R12 R1 K23 ["Components"]
       86 GETTABLEKS                       R12 R12 K24 ["NodeView"]
       88 GETTABLEKS                       R12 R12 K25 ["StateMachine"]
       90 GETTABLEKS                       R12 R12 K27 ["supportsStateMachineNode"]
       92 CALL                             R11 1 1
       93 GETIMPORT                        R12 K9 [require]
       95 GETTABLEKS                       R13 R1 K28 ["Hooks"]
       97 GETTABLEKS                       R13 R13 K29 ["useSignalDispatcher"]
       99 CALL                             R12 1 1
      100 GETIMPORT                        R13 K1 [game]
      102 LOADK                            R15 K30 ["AnimGraphOneShotNode"]
      103 NAMECALL                         R13 R13 K31 ["GetEngineFeature"]
      105 CALL                             R13 2 1
      106 NEWTABLE                         R14 0 6
      108 LOADK                            R15 K32 ["Content"]
      109 LOADK                            R16 K33 ["State"]
      110 LOADK                            R17 K34 ["Sequence"]
      111 LOADK                            R18 K35 ["Blend"]
      112 LOADK                            R19 K36 ["Misc"]
      113 LOADK                            R20 K37 ["Output"]
      114 SETLIST                          R14 R15 6 [1]
      116 DUPCLOSURE                       R15 K38 [PROTO_7]
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R0
      121 CAPTURE                          VAL R10
      122 CAPTURE                          VAL R14
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R1
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R7
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R11
      132 DUPTABLE                         R16 K46 [{"Angle", "Animation", "ClampedWeight", "Timestamp", "TimeProgress", "Transition", "Mask"}]
      133 GETIMPORT                        R17 K9 [require]
      135 GETTABLEKS                       R18 R1 K23 ["Components"]
      137 GETTABLEKS                       R18 R18 K24 ["NodeView"]
      139 GETTABLEKS                       R18 R18 K47 ["CompositorNodeProperty"]
      141 GETTABLEKS                       R18 R18 K48 ["AngleProperty"]
      143 CALL                             R17 1 1
      144 SETTABLEKS                       R17 R16 K39 ["Angle"]
      146 GETIMPORT                        R17 K9 [require]
      148 GETTABLEKS                       R18 R1 K23 ["Components"]
      150 GETTABLEKS                       R18 R18 K24 ["NodeView"]
      152 GETTABLEKS                       R18 R18 K47 ["CompositorNodeProperty"]
      154 GETTABLEKS                       R18 R18 K49 ["AssetProperty"]
      156 CALL                             R17 1 1
      157 SETTABLEKS                       R17 R16 K40 ["Animation"]
      159 GETIMPORT                        R17 K9 [require]
      161 GETTABLEKS                       R18 R1 K23 ["Components"]
      163 GETTABLEKS                       R18 R18 K24 ["NodeView"]
      165 GETTABLEKS                       R18 R18 K47 ["CompositorNodeProperty"]
      167 GETTABLEKS                       R18 R18 K50 ["ClampedWeightProperty"]
      169 CALL                             R17 1 1
      170 SETTABLEKS                       R17 R16 K41 ["ClampedWeight"]
      172 GETIMPORT                        R17 K9 [require]
      174 GETTABLEKS                       R18 R1 K23 ["Components"]
      176 GETTABLEKS                       R18 R18 K24 ["NodeView"]
      178 GETTABLEKS                       R18 R18 K47 ["CompositorNodeProperty"]
      180 GETTABLEKS                       R18 R18 K51 ["TimestampProperty"]
      182 CALL                             R17 1 1
      183 SETTABLEKS                       R17 R16 K42 ["Timestamp"]
      185 GETIMPORT                        R17 K9 [require]
      187 GETTABLEKS                       R18 R1 K23 ["Components"]
      189 GETTABLEKS                       R18 R18 K24 ["NodeView"]
      191 GETTABLEKS                       R18 R18 K47 ["CompositorNodeProperty"]
      193 GETTABLEKS                       R18 R18 K52 ["TimeProgressProperty"]
      195 CALL                             R17 1 1
      196 SETTABLEKS                       R17 R16 K43 ["TimeProgress"]
      198 GETIMPORT                        R17 K9 [require]
      200 GETTABLEKS                       R18 R1 K23 ["Components"]
      202 GETTABLEKS                       R18 R18 K24 ["NodeView"]
      204 GETTABLEKS                       R18 R18 K47 ["CompositorNodeProperty"]
      206 GETTABLEKS                       R18 R18 K53 ["TransitionProperty"]
      208 CALL                             R17 1 1
      209 SETTABLEKS                       R17 R16 K44 ["Transition"]
      211 GETIMPORT                        R17 K9 [require]
      213 GETTABLEKS                       R18 R1 K23 ["Components"]
      215 GETTABLEKS                       R18 R18 K24 ["NodeView"]
      217 GETTABLEKS                       R18 R18 K47 ["CompositorNodeProperty"]
      219 GETTABLEKS                       R18 R18 K54 ["MaskProperty"]
      221 CALL                             R17 1 1
      222 SETTABLEKS                       R17 R16 K45 ["Mask"]
      224 DUPTABLE                         R17 K63 [{["PlayMode"] = "Enum.AnimationNodePlayMode", ["InputMode"] = "Enum.AnimationNodeBlend2DInputMode", ["PhaseSync"] = "Enum.AnimationNodePhaseSync", ["BlendMode"] = "Enum.AnimationNodeBlendMode"}]
      225 DUPCLOSURE                       R18 K64 [PROTO_8]
      226 CAPTURE                          VAL R16
      227 CAPTURE                          VAL R6
      228 CAPTURE                          VAL R17
      229 CAPTURE                          VAL R4
      230 DUPCLOSURE                       R19 K65 [PROTO_10]
      231 CAPTURE                          VAL R15
      232 CAPTURE                          VAL R6
      233 CAPTURE                          VAL R18
      234 CAPTURE                          VAL R4
      235 RETURN                           R19 1
