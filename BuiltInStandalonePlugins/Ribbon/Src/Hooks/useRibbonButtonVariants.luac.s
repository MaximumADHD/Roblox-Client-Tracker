PROTO_0:
        0 JUMPIFNOT                        R0 ; [+2]
        1 LOADK                            R2 K0 ["text-caption-small"]
        2 JUMP                             ; [+1]
        3 LOADK                            R2 K1 ["text-caption-medium"]
        4 DUPTABLE                         R3 K6 [{"tag", "sizeConstraint", "size", "textStyle"}]
        5 GETUPVAL                         R5 0
        6 CALL                             R5 0 1
        7 JUMPIFNOT                        R5 ; [+6]
        8 LOADK                            R4 K7 ["auto-x text-truncate-end %*"]
        9 MOVE                             R6 R2
       10 NAMECALL                         R4 R4 K8 ["format"]
       12 CALL                             R4 2 1
       13 JUMP                             ; [+5]
       14 LOADK                            R4 K9 ["text-truncate-end %*"]
       15 MOVE                             R6 R2
       16 NAMECALL                         R4 R4 K8 ["format"]
       18 CALL                             R4 2 1
       19 SETTABLEKS                       R4 R3 K2 ["tag"]
       21 GETUPVAL                         R5 0
       22 CALL                             R5 0 1
       23 JUMPIFNOT                        R5 ; [+14]
       24 DUPTABLE                         R4 K12 [{"MaxSize", "MinSize"}]
       25 JUMPIFNOT                        R0 ; [+2]
       26 GETUPVAL                         R5 1
       27 JUMP                             ; [+1]
       28 GETUPVAL                         R5 2
       29 SETTABLEKS                       R5 R4 K10 ["MaxSize"]
       31 JUMPIFNOT                        R0 ; [+2]
       32 GETUPVAL                         R5 3
       33 JUMP                             ; [+1]
       34 GETUPVAL                         R5 4
       35 SETTABLEKS                       R5 R4 K11 ["MinSize"]
       37 JUMP                             ; [+1]
       38 LOADNIL                          R4
       39 SETTABLEKS                       R4 R3 K3 ["sizeConstraint"]
       41 GETUPVAL                         R5 0
       42 CALL                             R5 0 1
       43 JUMPIFNOT                        R5 ; [+2]
       44 LOADNIL                          R4
       45 JUMP                             ; [+4]
       46 JUMPIFNOT                        R0 ; [+2]
       47 GETUPVAL                         R4 5
       48 JUMP                             ; [+1]
       49 GETUPVAL                         R4 6
       50 SETTABLEKS                       R4 R3 K4 ["size"]
       52 DUPTABLE                         R4 K14 [{"Transparency"}]
       53 JUMPIFNOT                        R1 ; [+2]
       54 LOADK                            R5 K15 [0.5]
       55 JUMP                             ; [+1]
       56 LOADN                            R5 0
       57 SETTABLEKS                       R5 R4 K13 ["Transparency"]
       59 SETTABLEKS                       R4 R3 K5 ["textStyle"]
       61 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["isSmall"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 DUPTABLE                         R1 K4 [{["MaxSize"], ["MinSize"] = }]
        4 GETTABLEKS                       R2 R0 K5 ["smallSize"]
        6 SETTABLEKS                       R2 R1 K1 ["MaxSize"]
        8 RETURN                           R1 1
        9 DUPTABLE                         R1 K4 [{["MaxSize"], ["MinSize"] = }]
       10 GETTABLEKS                       R3 R0 K6 ["isCompact"]
       12 JUMPIFNOT                        R3 ; [+3]
       13 GETTABLEKS                       R2 R0 K7 ["compactSize"]
       15 JUMP                             ; [+2]
       16 GETTABLEKS                       R2 R0 K8 ["defaultSize"]
       18 SETTABLEKS                       R2 R1 K1 ["MaxSize"]
       20 RETURN                           R1 1

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
       12 LOADK                            R4 K8 ["row align-x-center align-y-center auto-xy radius-small %*"]
       13 MOVE                             R6 R1
       14 NAMECALL                         R4 R4 K9 ["format"]
       16 CALL                             R4 2 1
       17 LOADB                            R5 1
       18 SETTABLE                         R5 R3 R4
       19 GETTABLEKS                       R5 R0 K10 ["selected"]
       21 JUMPIFEQKB                       R5 TRUE ; [+2]
       23 LOADB                            R4 0 +1
       24 LOADB                            R4 1
       25 SETTABLEKS                       R4 R3 K11 ["bg-action-standard"]
       27 SETTABLEKS                       R3 R2 K4 ["tag"]
       29 GETUPVAL                         R3 0
       30 DUPTABLE                         R4 K15 [{"isSmall", "isCompact", "smallSize", "compactSize", "defaultSize"}]
       31 GETTABLEKS                       R5 R0 K0 ["isSmall"]
       33 SETTABLEKS                       R5 R4 K0 ["isSmall"]
       35 GETTABLEKS                       R5 R0 K1 ["isCompact"]
       37 SETTABLEKS                       R5 R4 K1 ["isCompact"]
       39 GETUPVAL                         R5 1
       40 SETTABLEKS                       R5 R4 K12 ["smallSize"]
       42 GETUPVAL                         R5 2
       43 SETTABLEKS                       R5 R4 K13 ["compactSize"]
       45 GETUPVAL                         R5 3
       46 SETTABLEKS                       R5 R4 K14 ["defaultSize"]
       48 CALL                             R3 1 1
       49 SETTABLEKS                       R3 R2 K5 ["sizeConstraint"]
       51 DUPTABLE                         R3 K20 [{["affordance"], ["inset"] = , ["mode"] = }]
       52 GETTABLEKS                       R5 R0 K21 ["isSingle"]
       54 JUMPIFNOT                        R5 ; [+4]
       55 GETUPVAL                         R4 4
       56 GETTABLEKS                       R4 R4 K22 ["None"]
       58 JUMP                             ; [+3]
       59 GETUPVAL                         R4 4
       60 GETTABLEKS                       R4 R4 K23 ["Background"]
       62 SETTABLEKS                       R4 R3 K16 ["affordance"]
       64 SETTABLEKS                       R3 R2 K6 ["stateLayer"]
       66 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["isSmall"]
        2 JUMPIFNOT                        R2 ; [+2]
        3 LOADK                            R1 K1 ["size-400-400"]
        4 JUMP                             ; [+1]
        5 LOADK                            R1 K2 ["size-600-600"]
        6 DUPTABLE                         R2 K5 [{"tag", "imageStyle"}]
        7 LOADK                            R3 K6 ["align-x-center align-y-center %*"]
        8 MOVE                             R5 R1
        9 NAMECALL                         R3 R3 K7 ["format"]
       11 CALL                             R3 2 1
       12 SETTABLEKS                       R3 R2 K3 ["tag"]
       14 DUPTABLE                         R3 K9 [{"Transparency"}]
       15 GETTABLEKS                       R5 R0 K10 ["disabled"]
       17 JUMPIFNOT                        R5 ; [+2]
       18 LOADK                            R4 K11 [0.5]
       19 JUMP                             ; [+1]
       20 LOADN                            R4 0
       21 SETTABLEKS                       R4 R3 K8 ["Transparency"]
       23 SETTABLEKS                       R3 R2 K4 ["imageStyle"]
       25 RETURN                           R2 1

PROTO_4:
        0 DUPTABLE                         R0 K5 [{"container", "actionContainer", "ribbonTool", "text", "icon"}]
        1 DUPTABLE                         R1 K10 [{["tag"] = "col align-x-center align-y-center auto-xy radius-small", ["sizeConstraint"], ["stateLayer"]}]
        2 GETUPVAL                         R2 0
        3 DUPTABLE                         R3 K16 [{"isSmall", "isCompact", "smallSize", "compactSize", "defaultSize"}]
        4 GETUPVAL                         R4 1
        5 SETTABLEKS                       R4 R3 K11 ["isSmall"]
        7 GETUPVAL                         R4 2
        8 SETTABLEKS                       R4 R3 K12 ["isCompact"]
       10 GETUPVAL                         R4 3
       11 SETTABLEKS                       R4 R3 K13 ["smallSize"]
       13 GETUPVAL                         R4 4
       14 SETTABLEKS                       R4 R3 K14 ["compactSize"]
       16 GETUPVAL                         R4 5
       17 SETTABLEKS                       R4 R3 K15 ["defaultSize"]
       19 CALL                             R2 1 1
       20 SETTABLEKS                       R2 R1 K8 ["sizeConstraint"]
       22 DUPTABLE                         R2 K21 [{["affordance"], ["inset"] = , ["mode"] = }]
       23 GETUPVAL                         R3 6
       24 GETTABLEKS                       R3 R3 K22 ["None"]
       26 SETTABLEKS                       R3 R2 K17 ["affordance"]
       28 SETTABLEKS                       R2 R1 K9 ["stateLayer"]
       30 SETTABLEKS                       R1 R0 K0 ["container"]
       32 DUPTABLE                         R1 K23 [{"tag"}]
       33 NEWTABLE                         R2 2 0
       35 LOADB                            R3 1
       36 SETTABLEKS                       R3 R2 K24 ["row align-x-center align-y-center auto-xy radius-small"]
       38 GETUPVAL                         R3 7
       39 SETTABLEKS                       R3 R2 K25 ["bg-action-standard"]
       41 SETTABLEKS                       R2 R1 K6 ["tag"]
       43 SETTABLEKS                       R1 R0 K1 ["actionContainer"]
       45 GETUPVAL                         R1 8
       46 DUPTABLE                         R2 K28 [{"selected", "isCompact", "isSmall", "isSingle"}]
       47 GETUPVAL                         R3 9
       48 GETTABLEKS                       R3 R3 K26 ["selected"]
       50 JUMPIFNOT                        R3 ; [+4]
       51 GETUPVAL                         R4 9
       52 GETTABLEKS                       R4 R4 K27 ["isSingle"]
       54 NOT                              R3 R4
       55 SETTABLEKS                       R3 R2 K26 ["selected"]
       57 GETUPVAL                         R3 2
       58 SETTABLEKS                       R3 R2 K12 ["isCompact"]
       60 GETUPVAL                         R3 1
       61 SETTABLEKS                       R3 R2 K11 ["isSmall"]
       63 GETUPVAL                         R3 9
       64 GETTABLEKS                       R3 R3 K27 ["isSingle"]
       66 SETTABLEKS                       R3 R2 K27 ["isSingle"]
       68 CALL                             R1 1 1
       69 SETTABLEKS                       R1 R0 K2 ["ribbonTool"]
       71 GETUPVAL                         R1 10
       72 GETUPVAL                         R2 2
       73 GETUPVAL                         R3 9
       74 GETTABLEKS                       R3 R3 K29 ["disabled"]
       76 CALL                             R1 2 1
       77 SETTABLEKS                       R1 R0 K3 ["text"]
       79 GETUPVAL                         R1 11
       80 DUPTABLE                         R2 K30 [{"isSmall", "disabled"}]
       81 GETUPVAL                         R3 1
       82 SETTABLEKS                       R3 R2 K11 ["isSmall"]
       84 GETUPVAL                         R3 9
       85 GETTABLEKS                       R3 R3 K29 ["disabled"]
       87 SETTABLEKS                       R3 R2 K29 ["disabled"]
       89 CALL                             R1 1 1
       90 SETTABLEKS                       R1 R0 K4 ["icon"]
       92 RETURN                           R0 1

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
