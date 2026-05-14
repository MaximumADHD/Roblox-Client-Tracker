PROTO_0:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["SetTransform"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+2]
        4 LOADNIL                          R0
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 2
        7 NAMECALL                         R0 R0 K0 ["getMouse"]
        9 CALL                             R0 1 1
       10 LOADNIL                          R1
       11 LOADNIL                          R2
       12 GETUPVAL                         R3 3
       13 CALL                             R3 0 1
       14 JUMPIFNOT                        R3 ; [+71]
       15 GETUPVAL                         R3 4
       16 GETTABLEKS                       R3 R3 K1 ["new"]
       18 GETUPVAL                         R4 0
       19 CALL                             R3 1 1
       20 GETUPVAL                         R4 5
       21 GETTABLEKS                       R4 R4 K1 ["new"]
       23 GETUPVAL                         R5 2
       24 GETIMPORT                        R6 K3 [game]
       26 GETIMPORT                        R7 K5 [settings]
       28 CALL                             R7 0 1
       29 MOVE                             R8 R3
       30 CALL                             R4 4 1
       31 MOVE                             R1 R4
       32 MOVE                             R4 R1
       33 NEWCLOSURE                       R5 P0
       34 CAPTURE                          UPVAL U6
       35 SETTABLEKS                       R5 R4 K6 ["updateTransform"]
       37 GETUPVAL                         R5 2
       38 SETTABLEKS                       R5 R4 K7 ["_plugin"]
       40 GETUPVAL                         R5 7
       41 GETTABLEKS                       R5 R5 K8 ["JointTranslateHandlesImplementation"]
       43 GETTABLEKS                       R5 R5 K1 ["new"]
       45 MOVE                             R6 R1
       46 GETUPVAL                         R7 8
       47 GETUPVAL                         R8 1
       48 GETUPVAL                         R9 9
       49 CALL                             R5 4 1
       50 GETUPVAL                         R6 7
       51 GETTABLEKS                       R6 R6 K9 ["JointRotateHandlesImplementation"]
       53 GETTABLEKS                       R6 R6 K1 ["new"]
       55 MOVE                             R7 R1
       56 GETUPVAL                         R8 8
       57 GETUPVAL                         R9 1
       58 GETUPVAL                         R10 9
       59 CALL                             R6 4 1
       60 NEWTABLE                         R7 0 2
       62 GETUPVAL                         R8 10
       63 GETTABLEKS                       R8 R8 K1 ["new"]
       65 MOVE                             R9 R1
       66 DUPTABLE                         R10 K11 [{"Summonable"}]
       67 LOADB                            R11 1
       68 SETTABLEKS                       R11 R10 K10 ["Summonable"]
       70 MOVE                             R11 R5
       71 CALL                             R8 3 1
       72 GETUPVAL                         R9 11
       73 GETTABLEKS                       R9 R9 K1 ["new"]
       75 MOVE                             R10 R1
       76 DUPTABLE                         R11 K11 [{"Summonable"}]
       77 LOADB                            R12 1
       78 SETTABLEKS                       R12 R11 K10 ["Summonable"]
       80 MOVE                             R12 R6
       81 CALL                             R9 3 1
       82 SETLIST                          R7 R8 2 [1]
       84 MOVE                             R2 R7
       85 JUMP                             ; [+80]
       86 GETUPVAL                         R3 12
       87 GETTABLEKS                       R3 R3 K12 ["getJointPosition"]
       89 GETUPVAL                         R4 0
       90 CALL                             R3 1 1
       91 DUPTABLE                         R4 K15 [{"Transform", "joint"}]
       92 GETIMPORT                        R5 K17 [CFrame.new]
       94 MOVE                             R6 R3
       95 CALL                             R5 1 1
       96 SETTABLEKS                       R5 R4 K13 ["Transform"]
       98 GETUPVAL                         R5 0
       99 SETTABLEKS                       R5 R4 K14 ["joint"]
      101 GETUPVAL                         R5 13
      102 GETTABLEKS                       R5 R5 K1 ["new"]
      104 LOADNIL                          R6
      105 MOVE                             R7 R4
      106 CALL                             R5 2 1
      107 GETUPVAL                         R6 5
      108 GETTABLEKS                       R6 R6 K1 ["new"]
      110 GETUPVAL                         R7 2
      111 GETIMPORT                        R8 K3 [game]
      113 GETIMPORT                        R9 K5 [settings]
      115 CALL                             R9 0 1
      116 MOVE                             R10 R5
      117 CALL                             R6 4 1
      118 MOVE                             R1 R6
      119 MOVE                             R6 R1
      120 NEWCLOSURE                       R7 P1
      121 CAPTURE                          VAL R5
      122 SETTABLEKS                       R7 R6 K6 ["updateTransform"]
      124 GETUPVAL                         R7 2
      125 SETTABLEKS                       R7 R6 K7 ["_plugin"]
      127 MOVE                             R9 R1
      128 NAMECALL                         R7 R5 K18 ["SetDraggerContext"]
      130 CALL                             R7 2 0
      131 GETUPVAL                         R7 7
      132 GETTABLEKS                       R7 R7 K19 ["BoneTransformHandlesImplementation"]
      134 GETTABLEKS                       R7 R7 K1 ["new"]
      136 MOVE                             R8 R1
      137 GETUPVAL                         R9 8
      138 GETUPVAL                         R10 1
      139 GETUPVAL                         R11 9
      140 CALL                             R7 4 1
      141 NEWTABLE                         R8 0 2
      143 GETUPVAL                         R9 10
      144 GETTABLEKS                       R9 R9 K1 ["new"]
      146 MOVE                             R10 R1
      147 DUPTABLE                         R11 K11 [{"Summonable"}]
      148 LOADB                            R12 1
      149 SETTABLEKS                       R12 R11 K10 ["Summonable"]
      151 MOVE                             R12 R7
      152 CALL                             R9 3 1
      153 GETUPVAL                         R10 11
      154 GETTABLEKS                       R10 R10 K1 ["new"]
      156 MOVE                             R11 R1
      157 DUPTABLE                         R12 K11 [{"Summonable"}]
      158 LOADB                            R13 1
      159 SETTABLEKS                       R13 R12 K10 ["Summonable"]
      161 MOVE                             R13 R7
      162 CALL                             R10 3 1
      163 SETLIST                          R8 R9 2 [1]
      165 MOVE                             R2 R8
      166 DUPTABLE                         R3 K24 [{"Mouse", "DraggerContext", "DraggerSchema", "DraggerSettings"}]
      167 SETTABLEKS                       R0 R3 K20 ["Mouse"]
      169 SETTABLEKS                       R1 R3 K21 ["DraggerContext"]
      171 GETUPVAL                         R4 7
      172 SETTABLEKS                       R4 R3 K22 ["DraggerSchema"]
      174 DUPTABLE                         R4 K31 [{"AnalyticsName", "AllowDragSelect", "AllowFreeformDrag", "ShowLocalSpaceIndicator", "ShowPivotIndicator", "HandlesList"}]
      175 LOADK                            R5 K32 ["HRDDragger"]
      176 SETTABLEKS                       R5 R4 K25 ["AnalyticsName"]
      178 LOADB                            R5 0
      179 SETTABLEKS                       R5 R4 K26 ["AllowDragSelect"]
      181 LOADB                            R5 0
      182 SETTABLEKS                       R5 R4 K27 ["AllowFreeformDrag"]
      184 LOADB                            R5 1
      185 SETTABLEKS                       R5 R4 K28 ["ShowLocalSpaceIndicator"]
      187 LOADB                            R5 1
      188 SETTABLEKS                       R5 R4 K29 ["ShowPivotIndicator"]
      190 SETTABLEKS                       R2 R4 K30 ["HandlesList"]
      192 SETTABLEKS                       R4 R3 K23 ["DraggerSettings"]
      194 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 NAMECALL                         R4 R4 K0 ["use"]
        3 CALL                             R4 1 1
        4 NAMECALL                         R4 R4 K1 ["get"]
        6 CALL                             R4 1 1
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K2 ["useRef"]
       10 LOADNIL                          R6
       11 CALL                             R5 1 1
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R6 R6 K3 ["useMemo"]
       15 NEWCLOSURE                       R7 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R4
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          VAL R5
       23 CAPTURE                          UPVAL U5
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R2
       26 CAPTURE                          UPVAL U6
       27 CAPTURE                          UPVAL U7
       28 CAPTURE                          UPVAL U8
       29 CAPTURE                          UPVAL U9
       30 NEWTABLE                         R8 0 5
       32 MOVE                             R9 R4
       33 MOVE                             R10 R0
       34 MOVE                             R11 R1
       35 MOVE                             R12 R2
       36 MOVE                             R13 R3
       37 SETLIST                          R8 R9 5 [1]
       39 CALL                             R6 2 -1
       40 RETURN                           R6 -1

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
       30 GETTABLEKS                       R4 R0 K6 ["Packages"]
       32 GETTABLEKS                       R4 R4 K12 ["DraggerFramework"]
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R4 K13 ["Implementation"]
       38 GETTABLEKS                       R6 R6 K14 ["DraggerContext_PluginImpl"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K9 ["Src"]
       45 GETTABLEKS                       R7 R7 K15 ["Schemas"]
       47 GETTABLEKS                       R7 R7 K16 ["ToolSchema"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R8 R0 K9 ["Src"]
       54 GETTABLEKS                       R8 R8 K15 ["Schemas"]
       56 GETTABLEKS                       R8 R8 K16 ["ToolSchema"]
       58 GETTABLEKS                       R8 R8 K17 ["DEPRECATED_SelectionInfo"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K5 [require]
       63 GETTABLEKS                       R9 R0 K9 ["Src"]
       65 GETTABLEKS                       R9 R9 K15 ["Schemas"]
       67 GETTABLEKS                       R9 R9 K16 ["ToolSchema"]
       69 GETTABLEKS                       R9 R9 K18 ["Selection"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K5 [require]
       74 GETTABLEKS                       R10 R0 K6 ["Packages"]
       76 GETTABLEKS                       R10 R10 K19 ["Framework"]
       78 CALL                             R9 1 1
       79 GETTABLEKS                       R9 R9 K20 ["ContextServices"]
       81 GETTABLEKS                       R10 R9 K21 ["Plugin"]
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R4 K22 ["Handles"]
       87 GETTABLEKS                       R12 R12 K23 ["MoveHandles"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R4 K22 ["Handles"]
       94 GETTABLEKS                       R13 R13 K24 ["RotateHandles"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R14 R0 K9 ["Src"]
      101 GETTABLEKS                       R14 R14 K25 ["Types"]
      103 CALL                             R13 1 1
      104 DUPCLOSURE                       R14 K26 [PROTO_3]
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R3
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R7
      115 RETURN                           R14 1
