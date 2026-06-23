PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["SetTransform"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 1
        5 JUMPIF                           R0 ; [+3]
        6 GETUPVAL                         R0 2
        7 JUMPIFNOTEQKNIL                  R0 ; [+69]
        9 GETUPVAL                         R0 3
       10 CALL                             R0 0 1
       11 JUMPIFNOT                        R0 ; [+2]
       12 GETUPVAL                         R0 4
       13 JUMPIF                           R0 ; [+2]
       14 LOADNIL                          R0
       15 RETURN                           R0 1
       16 GETUPVAL                         R0 5
       17 NAMECALL                         R0 R0 K0 ["getMouse"]
       19 CALL                             R0 1 1
       20 GETUPVAL                         R1 6
       21 GETTABLEKS                       R1 R1 K1 ["new"]
       23 LOADNIL                          R2
       24 CALL                             R1 1 1
       25 GETUPVAL                         R2 7
       26 GETTABLEKS                       R2 R2 K1 ["new"]
       28 GETUPVAL                         R3 5
       29 GETIMPORT                        R4 K3 [game]
       31 GETIMPORT                        R5 K5 [settings]
       33 CALL                             R5 0 1
       34 MOVE                             R6 R1
       35 CALL                             R2 4 1
       36 GETUPVAL                         R3 5
       37 SETTABLEKS                       R3 R2 K6 ["_plugin"]
       39 GETUPVAL                         R3 8
       40 SETTABLEKS                       R3 R2 K7 ["rigModel"]
       42 NEWCLOSURE                       R3 P0
       43 CAPTURE                          UPVAL U9
       44 SETTABLEKS                       R3 R2 K8 ["onClickAway"]
       46 DUPTABLE                         R3 K13 [{"Mouse", "DraggerContext", "DraggerSchema", "DraggerSettings"}]
       47 SETTABLEKS                       R0 R3 K9 ["Mouse"]
       49 SETTABLEKS                       R2 R3 K10 ["DraggerContext"]
       51 GETUPVAL                         R4 10
       52 SETTABLEKS                       R4 R3 K11 ["DraggerSchema"]
       54 DUPTABLE                         R4 K20 [{"AnalyticsName", "AllowDragSelect", "AllowFreeformDrag", "ShowLocalSpaceIndicator", "ShowPivotIndicator", "HandlesList"}]
       55 LOADK                            R5 K21 ["HRDDragger"]
       56 SETTABLEKS                       R5 R4 K14 ["AnalyticsName"]
       58 LOADB                            R5 0
       59 SETTABLEKS                       R5 R4 K15 ["AllowDragSelect"]
       61 LOADB                            R5 0
       62 SETTABLEKS                       R5 R4 K16 ["AllowFreeformDrag"]
       64 LOADB                            R5 0
       65 SETTABLEKS                       R5 R4 K17 ["ShowLocalSpaceIndicator"]
       67 LOADB                            R5 0
       68 SETTABLEKS                       R5 R4 K18 ["ShowPivotIndicator"]
       70 NEWTABLE                         R5 0 0
       72 SETTABLEKS                       R5 R4 K19 ["HandlesList"]
       74 SETTABLEKS                       R4 R3 K12 ["DraggerSettings"]
       76 RETURN                           R3 1
       77 GETUPVAL                         R0 5
       78 NAMECALL                         R0 R0 K0 ["getMouse"]
       80 CALL                             R0 1 1
       81 LOADNIL                          R1
       82 LOADNIL                          R2
       83 GETUPVAL                         R3 11
       84 CALL                             R3 0 1
       85 JUMPIFNOT                        R3 ; [+78]
       86 GETUPVAL                         R3 6
       87 GETTABLEKS                       R3 R3 K1 ["new"]
       89 GETUPVAL                         R4 2
       90 CALL                             R3 1 1
       91 GETUPVAL                         R4 7
       92 GETTABLEKS                       R4 R4 K1 ["new"]
       94 GETUPVAL                         R5 5
       95 GETIMPORT                        R6 K3 [game]
       97 GETIMPORT                        R7 K5 [settings]
       99 CALL                             R7 0 1
      100 MOVE                             R8 R3
      101 CALL                             R4 4 1
      102 MOVE                             R1 R4
      103 MOVE                             R4 R1
      104 NEWCLOSURE                       R5 P1
      105 CAPTURE                          UPVAL U12
      106 SETTABLEKS                       R5 R4 K22 ["updateTransform"]
      108 GETUPVAL                         R5 5
      109 SETTABLEKS                       R5 R4 K6 ["_plugin"]
      111 GETUPVAL                         R5 8
      112 SETTABLEKS                       R5 R4 K7 ["rigModel"]
      114 NEWCLOSURE                       R5 P2
      115 CAPTURE                          UPVAL U9
      116 SETTABLEKS                       R5 R4 K8 ["onClickAway"]
      118 GETUPVAL                         R5 10
      119 GETTABLEKS                       R5 R5 K23 ["JointTranslateHandlesImplementation"]
      121 GETTABLEKS                       R5 R5 K1 ["new"]
      123 MOVE                             R6 R1
      124 GETUPVAL                         R7 13
      125 GETUPVAL                         R8 0
      126 GETUPVAL                         R9 14
      127 CALL                             R5 4 1
      128 GETUPVAL                         R6 10
      129 GETTABLEKS                       R6 R6 K24 ["JointRotateHandlesImplementation"]
      131 GETTABLEKS                       R6 R6 K1 ["new"]
      133 MOVE                             R7 R1
      134 GETUPVAL                         R8 13
      135 GETUPVAL                         R9 0
      136 GETUPVAL                         R10 14
      137 CALL                             R6 4 1
      138 NEWTABLE                         R7 0 2
      140 GETUPVAL                         R8 15
      141 GETTABLEKS                       R8 R8 K1 ["new"]
      143 MOVE                             R9 R1
      144 DUPTABLE                         R10 K26 [{"Summonable"}]
      145 LOADB                            R11 1
      146 SETTABLEKS                       R11 R10 K25 ["Summonable"]
      148 MOVE                             R11 R5
      149 CALL                             R8 3 1
      150 GETUPVAL                         R9 16
      151 GETTABLEKS                       R9 R9 K1 ["new"]
      153 MOVE                             R10 R1
      154 DUPTABLE                         R11 K26 [{"Summonable"}]
      155 LOADB                            R12 1
      156 SETTABLEKS                       R12 R11 K25 ["Summonable"]
      158 MOVE                             R12 R6
      159 CALL                             R9 3 1
      160 SETLIST                          R7 R8 2 [1]
      162 MOVE                             R2 R7
      163 JUMP                             ; [+87]
      164 GETUPVAL                         R3 17
      165 GETTABLEKS                       R3 R3 K27 ["getJointPosition"]
      167 GETUPVAL                         R4 2
      168 CALL                             R3 1 1
      169 DUPTABLE                         R4 K30 [{"Transform", "joint"}]
      170 GETIMPORT                        R5 K32 [CFrame.new]
      172 MOVE                             R6 R3
      173 CALL                             R5 1 1
      174 SETTABLEKS                       R5 R4 K28 ["Transform"]
      176 GETUPVAL                         R5 2
      177 SETTABLEKS                       R5 R4 K29 ["joint"]
      179 GETUPVAL                         R5 18
      180 GETTABLEKS                       R5 R5 K1 ["new"]
      182 LOADNIL                          R6
      183 MOVE                             R7 R4
      184 CALL                             R5 2 1
      185 GETUPVAL                         R6 7
      186 GETTABLEKS                       R6 R6 K1 ["new"]
      188 GETUPVAL                         R7 5
      189 GETIMPORT                        R8 K3 [game]
      191 GETIMPORT                        R9 K5 [settings]
      193 CALL                             R9 0 1
      194 MOVE                             R10 R5
      195 CALL                             R6 4 1
      196 MOVE                             R1 R6
      197 MOVE                             R6 R1
      198 NEWCLOSURE                       R7 P3
      199 CAPTURE                          VAL R5
      200 SETTABLEKS                       R7 R6 K22 ["updateTransform"]
      202 GETUPVAL                         R7 5
      203 SETTABLEKS                       R7 R6 K6 ["_plugin"]
      205 GETUPVAL                         R7 8
      206 SETTABLEKS                       R7 R6 K7 ["rigModel"]
      208 NEWCLOSURE                       R7 P4
      209 CAPTURE                          UPVAL U9
      210 SETTABLEKS                       R7 R6 K8 ["onClickAway"]
      212 MOVE                             R9 R1
      213 NAMECALL                         R7 R5 K33 ["SetDraggerContext"]
      215 CALL                             R7 2 0
      216 GETUPVAL                         R7 10
      217 GETTABLEKS                       R7 R7 K34 ["BoneTransformHandlesImplementation"]
      219 GETTABLEKS                       R7 R7 K1 ["new"]
      221 MOVE                             R8 R1
      222 GETUPVAL                         R9 13
      223 GETUPVAL                         R10 0
      224 GETUPVAL                         R11 14
      225 CALL                             R7 4 1
      226 NEWTABLE                         R8 0 2
      228 GETUPVAL                         R9 15
      229 GETTABLEKS                       R9 R9 K1 ["new"]
      231 MOVE                             R10 R1
      232 DUPTABLE                         R11 K26 [{"Summonable"}]
      233 LOADB                            R12 1
      234 SETTABLEKS                       R12 R11 K25 ["Summonable"]
      236 MOVE                             R12 R7
      237 CALL                             R9 3 1
      238 GETUPVAL                         R10 16
      239 GETTABLEKS                       R10 R10 K1 ["new"]
      241 MOVE                             R11 R1
      242 DUPTABLE                         R12 K26 [{"Summonable"}]
      243 LOADB                            R13 1
      244 SETTABLEKS                       R13 R12 K25 ["Summonable"]
      246 MOVE                             R13 R7
      247 CALL                             R10 3 1
      248 SETLIST                          R8 R9 2 [1]
      250 MOVE                             R2 R8
      251 DUPTABLE                         R3 K13 [{"Mouse", "DraggerContext", "DraggerSchema", "DraggerSettings"}]
      252 SETTABLEKS                       R0 R3 K9 ["Mouse"]
      254 SETTABLEKS                       R1 R3 K10 ["DraggerContext"]
      256 GETUPVAL                         R4 10
      257 SETTABLEKS                       R4 R3 K11 ["DraggerSchema"]
      259 DUPTABLE                         R4 K20 [{"AnalyticsName", "AllowDragSelect", "AllowFreeformDrag", "ShowLocalSpaceIndicator", "ShowPivotIndicator", "HandlesList"}]
      260 LOADK                            R5 K21 ["HRDDragger"]
      261 SETTABLEKS                       R5 R4 K14 ["AnalyticsName"]
      263 LOADB                            R5 0
      264 SETTABLEKS                       R5 R4 K15 ["AllowDragSelect"]
      266 LOADB                            R5 0
      267 SETTABLEKS                       R5 R4 K16 ["AllowFreeformDrag"]
      269 LOADB                            R5 1
      270 SETTABLEKS                       R5 R4 K17 ["ShowLocalSpaceIndicator"]
      272 LOADB                            R5 1
      273 SETTABLEKS                       R5 R4 K18 ["ShowPivotIndicator"]
      275 SETTABLEKS                       R2 R4 K19 ["HandlesList"]
      277 SETTABLEKS                       R4 R3 K12 ["DraggerSettings"]
      279 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R7 0
        1 NAMECALL                         R7 R7 K0 ["use"]
        3 CALL                             R7 1 1
        4 NAMECALL                         R7 R7 K1 ["get"]
        6 CALL                             R7 1 1
        7 GETUPVAL                         R8 1
        8 GETTABLEKS                       R8 R8 K2 ["useRef"]
       10 LOADNIL                          R9
       11 CALL                             R8 1 1
       12 GETUPVAL                         R9 1
       13 GETTABLEKS                       R9 R9 K2 ["useRef"]
       15 MOVE                             R10 R4
       16 CALL                             R9 1 1
       17 SETTABLEKS                       R4 R9 K3 ["current"]
       19 GETUPVAL                         R10 1
       20 GETTABLEKS                       R10 R10 K4 ["useMemo"]
       22 NEWCLOSURE                       R11 P0
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R6
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R7
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          VAL R5
       32 CAPTURE                          VAL R9
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          UPVAL U6
       35 CAPTURE                          VAL R8
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R2
       38 CAPTURE                          UPVAL U7
       39 CAPTURE                          UPVAL U8
       40 CAPTURE                          UPVAL U9
       41 CAPTURE                          UPVAL U10
       42 NEWTABLE                         R12 0 7
       44 MOVE                             R13 R7
       45 MOVE                             R14 R0
       46 MOVE                             R15 R1
       47 MOVE                             R16 R2
       48 MOVE                             R17 R3
       49 MOVE                             R18 R5
       50 MOVE                             R19 R6
       51 SETLIST                          R12 R13 7 [1]
       53 CALL                             R10 2 -1
       54 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["AdaptiveAnimationTools"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Flags"]
       27 GETTABLEKS                       R4 R4 K11 ["getFFlagAdaptiveAnimatonImprovements"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Flags"]
       36 GETTABLEKS                       R5 R5 K12 ["getFFlagAdaptiveAnimationHandRigQoL"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R0 K6 ["Packages"]
       41 GETTABLEKS                       R5 R5 K13 ["DraggerFramework"]
       43 GETIMPORT                        R6 K5 [require]
       45 GETTABLEKS                       R7 R5 K14 ["Implementation"]
       47 GETTABLEKS                       R7 R7 K15 ["DraggerContext_PluginImpl"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R8 R0 K9 ["Src"]
       54 GETTABLEKS                       R8 R8 K16 ["Schemas"]
       56 GETTABLEKS                       R8 R8 K17 ["ToolSchema"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K5 [require]
       61 GETTABLEKS                       R9 R0 K9 ["Src"]
       63 GETTABLEKS                       R9 R9 K16 ["Schemas"]
       65 GETTABLEKS                       R9 R9 K17 ["ToolSchema"]
       67 GETTABLEKS                       R9 R9 K18 ["DEPRECATED_SelectionInfo"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K5 [require]
       72 GETTABLEKS                       R10 R0 K9 ["Src"]
       74 GETTABLEKS                       R10 R10 K16 ["Schemas"]
       76 GETTABLEKS                       R10 R10 K17 ["ToolSchema"]
       78 GETTABLEKS                       R10 R10 K19 ["Selection"]
       80 CALL                             R9 1 1
       81 GETIMPORT                        R10 K5 [require]
       83 GETTABLEKS                       R11 R0 K6 ["Packages"]
       85 GETTABLEKS                       R11 R11 K20 ["Framework"]
       87 CALL                             R10 1 1
       88 GETTABLEKS                       R10 R10 K21 ["ContextServices"]
       90 GETTABLEKS                       R11 R10 K22 ["Plugin"]
       92 GETIMPORT                        R12 K5 [require]
       94 GETTABLEKS                       R13 R5 K23 ["Handles"]
       96 GETTABLEKS                       R13 R13 K24 ["MoveHandles"]
       98 CALL                             R12 1 1
       99 GETIMPORT                        R13 K5 [require]
      101 GETTABLEKS                       R14 R5 K23 ["Handles"]
      103 GETTABLEKS                       R14 R14 K25 ["RotateHandles"]
      105 CALL                             R13 1 1
      106 GETIMPORT                        R14 K5 [require]
      108 GETTABLEKS                       R15 R0 K9 ["Src"]
      110 GETTABLEKS                       R15 R15 K26 ["Types"]
      112 CALL                             R14 1 1
      113 DUPCLOSURE                       R15 K27 [PROTO_6]
      114 CAPTURE                          VAL R11
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R3
      121 CAPTURE                          VAL R12
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R8
      125 RETURN                           R15 1
