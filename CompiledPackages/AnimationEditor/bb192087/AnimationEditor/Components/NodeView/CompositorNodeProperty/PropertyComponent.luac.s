PROTO_0:
        0 LOADN                            R4 1
        1 LOADN                            R5 5
        2 FASTCALL3                        STRING_SUB R0 R4 R5
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K2 [string.sub]
        7 CALL                             R2 3 1
        8 JUMPIFEQKS                       R2 K3 ["Enum."] ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["Type"]
        2 LOADN                            R5 1
        3 LOADN                            R6 5
        4 FASTCALL3                        STRING_SUB R2 R5 R6
        6 MOVE                             R4 R2
        7 GETIMPORT                        R3 K3 [string.sub]
        9 CALL                             R3 3 1
       10 JUMPIFEQKS                       R3 K4 ["Enum."] ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 JUMPIFNOT                        R1 ; [+11]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K5 ["createElement"]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R2 R3 K6 ["Enum"]
       21 MOVE                             R3 R0
       22 GETTABLEKS                       R4 R0 K7 ["children"]
       24 CALL                             R1 3 -1
       25 RETURN                           R1 -1
       26 GETTABLEKS                       R2 R0 K0 ["Type"]
       28 GETUPVAL                         R4 2
       29 GETTABLE                         R3 R4 R2
       30 JUMPIFNOTEQKNIL                  R3 ; [+2]
       32 LOADB                            R1 0 +1
       33 LOADB                            R1 1
       34 JUMPIFNOT                        R1 ; [+11]
       35 GETUPVAL                         R1 0
       36 GETTABLEKS                       R1 R1 K5 ["createElement"]
       38 GETUPVAL                         R3 1
       39 GETTABLEKS                       R2 R3 K8 ["Asset"]
       41 MOVE                             R3 R0
       42 GETTABLEKS                       R4 R0 K7 ["children"]
       44 CALL                             R1 3 -1
       45 RETURN                           R1 -1
       46 GETUPVAL                         R2 1
       47 GETTABLEKS                       R3 R0 K0 ["Type"]
       49 GETTABLE                         R1 R2 R3
       50 JUMPIFNOT                        R1 ; [+12]
       51 GETUPVAL                         R1 0
       52 GETTABLEKS                       R1 R1 K5 ["createElement"]
       54 GETUPVAL                         R3 1
       55 GETTABLEKS                       R4 R0 K0 ["Type"]
       57 GETTABLE                         R2 R3 R4
       58 MOVE                             R3 R0
       59 GETTABLEKS                       R4 R0 K7 ["children"]
       61 CALL                             R1 3 -1
       62 RETURN                           R1 -1
       63 LOADNIL                          R1
       64 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 DUPTABLE                         R3 K10 [{"Animation"}]
       22 LOADB                            R4 1
       23 SETTABLEKS                       R4 R3 K9 ["Animation"]
       25 DUPTABLE                         R4 K22 [{"Angle", "Asset", "Boolean", "ClampedWeight", "Enum", "Number", "String", "Timestamp", "TimeProgress", "Transition", "Mask"}]
       26 GETIMPORT                        R5 K5 [require]
       28 GETTABLEKS                       R6 R0 K23 ["Components"]
       30 GETTABLEKS                       R6 R6 K24 ["NodeView"]
       32 GETTABLEKS                       R6 R6 K25 ["CompositorNodeProperty"]
       34 GETTABLEKS                       R6 R6 K26 ["AngleProperty"]
       36 CALL                             R5 1 1
       37 SETTABLEKS                       R5 R4 K11 ["Angle"]
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K23 ["Components"]
       43 GETTABLEKS                       R6 R6 K24 ["NodeView"]
       45 GETTABLEKS                       R6 R6 K25 ["CompositorNodeProperty"]
       47 GETTABLEKS                       R6 R6 K27 ["AssetProperty"]
       49 CALL                             R5 1 1
       50 SETTABLEKS                       R5 R4 K12 ["Asset"]
       52 GETIMPORT                        R5 K5 [require]
       54 GETTABLEKS                       R6 R0 K23 ["Components"]
       56 GETTABLEKS                       R6 R6 K24 ["NodeView"]
       58 GETTABLEKS                       R6 R6 K25 ["CompositorNodeProperty"]
       60 GETTABLEKS                       R6 R6 K28 ["BoolProperty"]
       62 CALL                             R5 1 1
       63 SETTABLEKS                       R5 R4 K13 ["Boolean"]
       65 GETIMPORT                        R5 K5 [require]
       67 GETTABLEKS                       R6 R0 K23 ["Components"]
       69 GETTABLEKS                       R6 R6 K24 ["NodeView"]
       71 GETTABLEKS                       R6 R6 K25 ["CompositorNodeProperty"]
       73 GETTABLEKS                       R6 R6 K29 ["ClampedWeightProperty"]
       75 CALL                             R5 1 1
       76 SETTABLEKS                       R5 R4 K14 ["ClampedWeight"]
       78 GETIMPORT                        R5 K5 [require]
       80 GETTABLEKS                       R6 R0 K23 ["Components"]
       82 GETTABLEKS                       R6 R6 K24 ["NodeView"]
       84 GETTABLEKS                       R6 R6 K25 ["CompositorNodeProperty"]
       86 GETTABLEKS                       R6 R6 K30 ["EnumProperty"]
       88 CALL                             R5 1 1
       89 SETTABLEKS                       R5 R4 K15 ["Enum"]
       91 GETIMPORT                        R5 K5 [require]
       93 GETTABLEKS                       R6 R0 K23 ["Components"]
       95 GETTABLEKS                       R6 R6 K24 ["NodeView"]
       97 GETTABLEKS                       R6 R6 K25 ["CompositorNodeProperty"]
       99 GETTABLEKS                       R6 R6 K31 ["NumberProperty"]
      101 CALL                             R5 1 1
      102 SETTABLEKS                       R5 R4 K16 ["Number"]
      104 GETIMPORT                        R5 K5 [require]
      106 GETTABLEKS                       R6 R0 K23 ["Components"]
      108 GETTABLEKS                       R6 R6 K24 ["NodeView"]
      110 GETTABLEKS                       R6 R6 K25 ["CompositorNodeProperty"]
      112 GETTABLEKS                       R6 R6 K32 ["StringProperty"]
      114 CALL                             R5 1 1
      115 SETTABLEKS                       R5 R4 K17 ["String"]
      117 GETIMPORT                        R5 K5 [require]
      119 GETTABLEKS                       R6 R0 K23 ["Components"]
      121 GETTABLEKS                       R6 R6 K24 ["NodeView"]
      123 GETTABLEKS                       R6 R6 K25 ["CompositorNodeProperty"]
      125 GETTABLEKS                       R6 R6 K33 ["TimestampProperty"]
      127 CALL                             R5 1 1
      128 SETTABLEKS                       R5 R4 K18 ["Timestamp"]
      130 GETIMPORT                        R5 K5 [require]
      132 GETTABLEKS                       R6 R0 K23 ["Components"]
      134 GETTABLEKS                       R6 R6 K24 ["NodeView"]
      136 GETTABLEKS                       R6 R6 K25 ["CompositorNodeProperty"]
      138 GETTABLEKS                       R6 R6 K34 ["TimeProgressProperty"]
      140 CALL                             R5 1 1
      141 SETTABLEKS                       R5 R4 K19 ["TimeProgress"]
      143 GETIMPORT                        R5 K5 [require]
      145 GETTABLEKS                       R6 R0 K23 ["Components"]
      147 GETTABLEKS                       R6 R6 K24 ["NodeView"]
      149 GETTABLEKS                       R6 R6 K25 ["CompositorNodeProperty"]
      151 GETTABLEKS                       R6 R6 K35 ["TransitionProperty"]
      153 CALL                             R5 1 1
      154 SETTABLEKS                       R5 R4 K20 ["Transition"]
      156 GETIMPORT                        R5 K5 [require]
      158 GETTABLEKS                       R6 R0 K23 ["Components"]
      160 GETTABLEKS                       R6 R6 K24 ["NodeView"]
      162 GETTABLEKS                       R6 R6 K25 ["CompositorNodeProperty"]
      164 GETTABLEKS                       R6 R6 K36 ["MaskProperty"]
      166 CALL                             R5 1 1
      167 SETTABLEKS                       R5 R4 K21 ["Mask"]
      169 DUPCLOSURE                       R5 K37 [PROTO_0]
      170 DUPCLOSURE                       R6 K38 [PROTO_1]
      171 CAPTURE                          VAL R3
      172 DUPCLOSURE                       R7 K39 [PROTO_2]
      173 CAPTURE                          VAL R2
      174 CAPTURE                          VAL R4
      175 CAPTURE                          VAL R3
      176 RETURN                           R7 1
