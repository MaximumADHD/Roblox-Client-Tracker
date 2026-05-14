PROTO_0:
        0 JUMPIFNOT                        R0 ; [+2]
        1 LOADK                            R2 K0 ["text-caption-small"]
        2 JUMP                             ; [+1]
        3 LOADK                            R2 K1 ["text-caption-medium"]
        4 DUPTABLE                         R3 K6 [{"tag", "sizeConstraint", "size", "textStyle"}]
        5 GETUPVAL                         R5 0
        6 CALL                             R5 0 1
        7 JUMPIFNOT                        R5 ; [+7]
        8 LOADK                            R5 K7 ["text-truncate-end %* auto-x"]
        9 MOVE                             R7 R2
       10 NAMECALL                         R5 R5 K8 ["format"]
       12 CALL                             R5 2 1
       13 MOVE                             R4 R5
       14 JUMP                             ; [+6]
       15 LOADK                            R5 K9 ["text-truncate-end %*"]
       16 MOVE                             R7 R2
       17 NAMECALL                         R5 R5 K8 ["format"]
       19 CALL                             R5 2 1
       20 MOVE                             R4 R5
       21 SETTABLEKS                       R4 R3 K2 ["tag"]
       23 GETUPVAL                         R5 0
       24 CALL                             R5 0 1
       25 JUMPIFNOT                        R5 ; [+14]
       26 DUPTABLE                         R4 K12 [{"MaxSize", "MinSize"}]
       27 JUMPIFNOT                        R0 ; [+2]
       28 GETUPVAL                         R5 1
       29 JUMP                             ; [+1]
       30 GETUPVAL                         R5 2
       31 SETTABLEKS                       R5 R4 K10 ["MaxSize"]
       33 JUMPIFNOT                        R0 ; [+2]
       34 GETUPVAL                         R5 3
       35 JUMP                             ; [+1]
       36 GETUPVAL                         R5 4
       37 SETTABLEKS                       R5 R4 K11 ["MinSize"]
       39 JUMP                             ; [+1]
       40 LOADNIL                          R4
       41 SETTABLEKS                       R4 R3 K3 ["sizeConstraint"]
       43 GETUPVAL                         R5 0
       44 CALL                             R5 0 1
       45 JUMPIFNOT                        R5 ; [+2]
       46 LOADNIL                          R4
       47 JUMP                             ; [+4]
       48 JUMPIFNOT                        R0 ; [+2]
       49 GETUPVAL                         R4 5
       50 JUMP                             ; [+1]
       51 GETUPVAL                         R4 6
       52 SETTABLEKS                       R4 R3 K4 ["size"]
       54 DUPTABLE                         R4 K14 [{"Transparency"}]
       55 JUMPIFNOT                        R1 ; [+2]
       56 LOADK                            R5 K15 [0.5]
       57 JUMP                             ; [+1]
       58 LOADN                            R5 0
       59 SETTABLEKS                       R5 R4 K13 ["Transparency"]
       61 SETTABLEKS                       R4 R3 K5 ["textStyle"]
       63 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["isSmall"]
        2 JUMPIFNOT                        R1 ; [+9]
        3 DUPTABLE                         R1 K3 [{"MaxSize", "MinSize"}]
        4 GETTABLEKS                       R2 R0 K4 ["smallSize"]
        6 SETTABLEKS                       R2 R1 K1 ["MaxSize"]
        8 LOADNIL                          R2
        9 SETTABLEKS                       R2 R1 K2 ["MinSize"]
       11 RETURN                           R1 1
       12 DUPTABLE                         R1 K3 [{"MaxSize", "MinSize"}]
       13 GETTABLEKS                       R3 R0 K5 ["isCompact"]
       15 JUMPIFNOT                        R3 ; [+3]
       16 GETTABLEKS                       R2 R0 K6 ["compactSize"]
       18 JUMP                             ; [+2]
       19 GETTABLEKS                       R2 R0 K7 ["defaultSize"]
       21 SETTABLEKS                       R2 R1 K1 ["MaxSize"]
       23 LOADNIL                          R2
       24 SETTABLEKS                       R2 R1 K2 ["MinSize"]
       26 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["isSmall"]
        2 JUMPIF                           R2 ; [+3]
        3 GETTABLEKS                       R2 R0 K1 ["isCompact"]
        5 JUMPIFNOT                        R2 ; [+2]
        6 LOADK                            R1 K2 ["padding-xsmall"]
        7 JUMP                             ; [+1]
        8 LOADK                            R1 K3 ["padding-small"]
        9 DUPTABLE                         R2 K7 [{"tag", "sizeConstraint", "stateLayer"}]
       10 NEWTABLE                         R3 2 0
       12 LOADK                            R5 K8 ["auto-xy radius-small align-y-center align-x-center row %*"]
       13 MOVE                             R7 R1
       14 NAMECALL                         R5 R5 K9 ["format"]
       16 CALL                             R5 2 1
       17 MOVE                             R4 R5
       18 LOADB                            R5 1
       19 SETTABLE                         R5 R3 R4
       20 GETTABLEKS                       R5 R0 K10 ["selected"]
       22 JUMPIFEQKB                       R5 TRUE ; [+2]
       24 LOADB                            R4 0 +1
       25 LOADB                            R4 1
       26 SETTABLEKS                       R4 R3 K11 ["bg-action-standard"]
       28 SETTABLEKS                       R3 R2 K4 ["tag"]
       30 GETUPVAL                         R3 0
       31 DUPTABLE                         R4 K15 [{"isSmall", "isCompact", "smallSize", "compactSize", "defaultSize"}]
       32 GETTABLEKS                       R5 R0 K0 ["isSmall"]
       34 SETTABLEKS                       R5 R4 K0 ["isSmall"]
       36 GETTABLEKS                       R5 R0 K1 ["isCompact"]
       38 SETTABLEKS                       R5 R4 K1 ["isCompact"]
       40 GETUPVAL                         R5 1
       41 SETTABLEKS                       R5 R4 K12 ["smallSize"]
       43 GETUPVAL                         R5 2
       44 SETTABLEKS                       R5 R4 K13 ["compactSize"]
       46 GETUPVAL                         R5 3
       47 SETTABLEKS                       R5 R4 K14 ["defaultSize"]
       49 CALL                             R3 1 1
       50 SETTABLEKS                       R3 R2 K5 ["sizeConstraint"]
       52 DUPTABLE                         R3 K19 [{"affordance", "inset", "mode"}]
       53 GETTABLEKS                       R5 R0 K20 ["isSingle"]
       55 JUMPIFNOT                        R5 ; [+4]
       56 GETUPVAL                         R4 4
       57 GETTABLEKS                       R4 R4 K21 ["None"]
       59 JUMP                             ; [+3]
       60 GETUPVAL                         R4 4
       61 GETTABLEKS                       R4 R4 K22 ["Background"]
       63 SETTABLEKS                       R4 R3 K16 ["affordance"]
       65 LOADNIL                          R4
       66 SETTABLEKS                       R4 R3 K17 ["inset"]
       68 LOADNIL                          R4
       69 SETTABLEKS                       R4 R3 K18 ["mode"]
       71 SETTABLEKS                       R3 R2 K6 ["stateLayer"]
       73 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["isSmall"]
        2 JUMPIFNOT                        R2 ; [+2]
        3 LOADK                            R1 K1 ["size-400-400"]
        4 JUMP                             ; [+1]
        5 LOADK                            R1 K2 ["size-600-600"]
        6 DUPTABLE                         R2 K5 [{"tag", "imageStyle"}]
        7 LOADK                            R4 K6 ["align-x-center align-y-center %*"]
        8 MOVE                             R6 R1
        9 NAMECALL                         R4 R4 K7 ["format"]
       11 CALL                             R4 2 1
       12 MOVE                             R3 R4
       13 SETTABLEKS                       R3 R2 K3 ["tag"]
       15 DUPTABLE                         R3 K9 [{"Transparency"}]
       16 GETTABLEKS                       R5 R0 K10 ["disabled"]
       18 JUMPIFNOT                        R5 ; [+2]
       19 LOADK                            R4 K11 [0.5]
       20 JUMP                             ; [+1]
       21 LOADN                            R4 0
       22 SETTABLEKS                       R4 R3 K8 ["Transparency"]
       24 SETTABLEKS                       R3 R2 K4 ["imageStyle"]
       26 RETURN                           R2 1

PROTO_4:
        0 DUPTABLE                         R0 K5 [{"container", "actionContainer", "ribbonTool", "text", "icon"}]
        1 DUPTABLE                         R1 K9 [{"tag", "sizeConstraint", "stateLayer"}]
        2 LOADK                            R2 K10 ["auto-xy radius-small col align-y-center align-x-center"]
        3 SETTABLEKS                       R2 R1 K6 ["tag"]
        5 GETUPVAL                         R2 0
        6 DUPTABLE                         R3 K16 [{"isSmall", "isCompact", "smallSize", "compactSize", "defaultSize"}]
        7 GETUPVAL                         R4 1
        8 SETTABLEKS                       R4 R3 K11 ["isSmall"]
       10 GETUPVAL                         R4 2
       11 SETTABLEKS                       R4 R3 K12 ["isCompact"]
       13 GETUPVAL                         R4 3
       14 SETTABLEKS                       R4 R3 K13 ["smallSize"]
       16 GETUPVAL                         R4 4
       17 SETTABLEKS                       R4 R3 K14 ["compactSize"]
       19 GETUPVAL                         R4 5
       20 SETTABLEKS                       R4 R3 K15 ["defaultSize"]
       22 CALL                             R2 1 1
       23 SETTABLEKS                       R2 R1 K7 ["sizeConstraint"]
       25 DUPTABLE                         R2 K20 [{"affordance", "inset", "mode"}]
       26 GETUPVAL                         R3 6
       27 GETTABLEKS                       R3 R3 K21 ["None"]
       29 SETTABLEKS                       R3 R2 K17 ["affordance"]
       31 LOADNIL                          R3
       32 SETTABLEKS                       R3 R2 K18 ["inset"]
       34 LOADNIL                          R3
       35 SETTABLEKS                       R3 R2 K19 ["mode"]
       37 SETTABLEKS                       R2 R1 K8 ["stateLayer"]
       39 SETTABLEKS                       R1 R0 K0 ["container"]
       41 DUPTABLE                         R1 K22 [{"tag"}]
       42 NEWTABLE                         R2 2 0
       44 LOADB                            R3 1
       45 SETTABLEKS                       R3 R2 K23 ["auto-xy radius-small row align-y-center align-x-center"]
       47 GETUPVAL                         R3 7
       48 SETTABLEKS                       R3 R2 K24 ["bg-action-standard"]
       50 SETTABLEKS                       R2 R1 K6 ["tag"]
       52 SETTABLEKS                       R1 R0 K1 ["actionContainer"]
       54 GETUPVAL                         R1 8
       55 DUPTABLE                         R2 K27 [{"selected", "isCompact", "isSmall", "isSingle"}]
       56 GETUPVAL                         R3 9
       57 GETTABLEKS                       R3 R3 K25 ["selected"]
       59 JUMPIFNOT                        R3 ; [+4]
       60 GETUPVAL                         R4 9
       61 GETTABLEKS                       R4 R4 K26 ["isSingle"]
       63 NOT                              R3 R4
       64 SETTABLEKS                       R3 R2 K25 ["selected"]
       66 GETUPVAL                         R3 2
       67 SETTABLEKS                       R3 R2 K12 ["isCompact"]
       69 GETUPVAL                         R3 1
       70 SETTABLEKS                       R3 R2 K11 ["isSmall"]
       72 GETUPVAL                         R3 9
       73 GETTABLEKS                       R3 R3 K26 ["isSingle"]
       75 SETTABLEKS                       R3 R2 K26 ["isSingle"]
       77 CALL                             R1 1 1
       78 SETTABLEKS                       R1 R0 K2 ["ribbonTool"]
       80 GETUPVAL                         R1 10
       81 GETUPVAL                         R2 2
       82 GETUPVAL                         R3 9
       83 GETTABLEKS                       R3 R3 K28 ["disabled"]
       85 CALL                             R1 2 1
       86 SETTABLEKS                       R1 R0 K3 ["text"]
       88 GETUPVAL                         R1 11
       89 DUPTABLE                         R2 K29 [{"isSmall", "disabled"}]
       90 GETUPVAL                         R3 1
       91 SETTABLEKS                       R3 R2 K11 ["isSmall"]
       93 GETUPVAL                         R3 9
       94 GETTABLEKS                       R3 R3 K28 ["disabled"]
       96 SETTABLEKS                       R3 R2 K28 ["disabled"]
       98 CALL                             R1 1 1
       99 SETTABLEKS                       R1 R0 K4 ["icon"]
      101 RETURN                           R0 1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["size"]
        2 JUMPIFEQKS                       R3 K1 ["Small"] ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 GETTABLEKS                       R4 R1 K2 ["mode"]
        8 JUMPIFEQKS                       R4 K3 ["DensityCompact"] ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 GETTABLEKS                       R5 R0 K4 ["isSingle"]
       14 JUMPIFNOT                        R5 ; [+3]
       15 GETTABLEKS                       R5 R0 K5 ["selected"]
       17 JUMPIF                           R5 ; [+6]
       18 GETTABLEKS                       R5 R0 K6 ["isMenuOpen"]
       20 JUMPIFNOT                        R5 ; [+5]
       21 GETTABLEKS                       R5 R0 K4 ["isSingle"]
       23 JUMPIFNOT                        R5 ; [+2]
       24 LOADB                            R4 1
       25 JUMP                             ; [+1]
       26 LOADB                            R4 0
       27 GETUPVAL                         R5 0
       28 NEWCLOSURE                       R6 P0
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R3
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          UPVAL U5
       36 CAPTURE                          VAL R4
       37 CAPTURE                          UPVAL U6
       38 CAPTURE                          VAL R0
       39 CAPTURE                          UPVAL U7
       40 CAPTURE                          UPVAL U8
       41 NEWTABLE                         R7 0 6
       43 GETTABLEKS                       R8 R0 K6 ["isMenuOpen"]
       45 GETTABLEKS                       R9 R0 K4 ["isSingle"]
       47 MOVE                             R10 R3
       48 MOVE                             R11 R2
       49 GETTABLEKS                       R12 R0 K5 ["selected"]
       51 GETTABLEKS                       R13 R0 K7 ["disabled"]
       53 SETLIST                          R7 R8 6 [1]
       55 CALL                             R5 2 -1
       56 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useMemo"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K10 ["Enums"]
       25 GETTABLEKS                       R4 R4 K11 ["StateLayerAffordance"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R0 K12 ["Src"]
       31 GETTABLEKS                       R6 R6 K13 ["Contexts"]
       33 GETTABLEKS                       R6 R6 K14 ["Density"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R7 R0 K12 ["Src"]
       40 GETTABLEKS                       R7 R7 K15 ["SharedFlags"]
       42 GETTABLEKS                       R7 R7 K16 ["getFFlagRibbonTextLengthImprovements"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K19 [Vector2.new]
       47 LOADN                            R8 24
       48 LOADN                            R9 24
       49 CALL                             R7 2 1
       50 GETIMPORT                        R8 K19 [Vector2.new]
       52 LOADN                            R9 32
       53 LOADN                            R10 32
       54 CALL                             R8 2 1
       55 GETIMPORT                        R9 K19 [Vector2.new]
       57 LOADN                            R10 40
       58 LOADN                            R11 40
       59 CALL                             R9 2 1
       60 GETIMPORT                        R10 K22 [UDim2.fromOffset]
       62 LOADN                            R11 48
       63 LOADN                            R12 16
       64 CALL                             R10 2 1
       65 GETIMPORT                        R11 K22 [UDim2.fromOffset]
       67 LOADN                            R12 60
       68 LOADN                            R13 16
       69 CALL                             R11 2 1
       70 GETIMPORT                        R12 K19 [Vector2.new]
       72 LOADN                            R13 48
       73 LOADN                            R14 16
       74 CALL                             R12 2 1
       75 GETIMPORT                        R13 K19 [Vector2.new]
       77 LOADN                            R14 72
       78 LOADN                            R15 16
       79 CALL                             R13 2 1
       80 GETIMPORT                        R14 K19 [Vector2.new]
       82 LOADN                            R15 60
       83 LOADN                            R16 16
       84 CALL                             R14 2 1
       85 GETIMPORT                        R15 K19 [Vector2.new]
       87 LOADN                            R16 100
       88 LOADN                            R17 16
       89 CALL                             R15 2 1
       90 GETIMPORT                        R16 K19 [Vector2.new]
       92 LOADN                            R17 36
       93 LOADN                            R18 24
       94 CALL                             R16 2 1
       95 GETIMPORT                        R17 K19 [Vector2.new]
       97 MOVE                             R19 R6
       98 CALL                             R19 0 1
       99 JUMPIFNOT                        R19 ; [+2]
      100 LOADN                            R18 72
      101 JUMP                             ; [+1]
      102 LOADN                            R18 48
      103 LOADN                            R19 48
      104 CALL                             R17 2 1
      105 GETIMPORT                        R18 K19 [Vector2.new]
      107 MOVE                             R20 R6
      108 CALL                             R20 0 1
      109 JUMPIFNOT                        R20 ; [+2]
      110 LOADN                            R19 100
      111 JUMP                             ; [+1]
      112 LOADN                            R19 60
      113 LOADN                            R20 56
      114 CALL                             R18 2 1
      115 DUPCLOSURE                       R19 K23 [PROTO_0]
      116 CAPTURE                          VAL R6
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R15
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R14
      121 CAPTURE                          VAL R10
      122 CAPTURE                          VAL R11
      123 DUPCLOSURE                       R20 K24 [PROTO_1]
      124 DUPCLOSURE                       R21 K25 [PROTO_2]
      125 CAPTURE                          VAL R20
      126 CAPTURE                          VAL R7
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R9
      129 CAPTURE                          VAL R4
      130 DUPCLOSURE                       R22 K26 [PROTO_3]
      131 DUPCLOSURE                       R23 K27 [PROTO_5]
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R20
      134 CAPTURE                          VAL R16
      135 CAPTURE                          VAL R17
      136 CAPTURE                          VAL R18
      137 CAPTURE                          VAL R4
      138 CAPTURE                          VAL R21
      139 CAPTURE                          VAL R19
      140 CAPTURE                          VAL R22
      141 RETURN                           R23 1
