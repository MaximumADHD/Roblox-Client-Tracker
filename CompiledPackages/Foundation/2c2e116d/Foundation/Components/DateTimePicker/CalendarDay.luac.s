PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R3 R0 K0 ["isSelected"]
        4 JUMPIFNOT                        R3 ; [+9]
        5 GETTABLEKS                       R2 R1 K1 ["Inverse"]
        7 GETTABLEKS                       R2 R2 K2 ["Content"]
        9 GETTABLEKS                       R2 R2 K3 ["Emphasis"]
       11 GETTABLEKS                       R2 R2 K4 ["Color3"]
       13 JUMP                             ; [+23]
       14 GETTABLEKS                       R3 R0 K5 ["isSelectable"]
       16 JUMPIFNOT                        R3 ; [+3]
       17 GETTABLEKS                       R3 R0 K6 ["emphasizeText"]
       19 JUMPIF                           R3 ; [+9]
       20 GETTABLEKS                       R2 R1 K7 ["Color"]
       22 GETTABLEKS                       R2 R2 K2 ["Content"]
       24 GETTABLEKS                       R2 R2 K8 ["Muted"]
       26 GETTABLEKS                       R2 R2 K4 ["Color3"]
       28 JUMP                             ; [+8]
       29 GETTABLEKS                       R2 R1 K7 ["Color"]
       31 GETTABLEKS                       R2 R2 K2 ["Content"]
       33 GETTABLEKS                       R2 R2 K3 ["Emphasis"]
       35 GETTABLEKS                       R2 R2 K4 ["Color3"]
       37 GETTABLEKS                       R4 R0 K0 ["isSelected"]
       39 JUMPIF                           R4 ; [+8]
       40 GETTABLEKS                       R4 R0 K5 ["isSelectable"]
       42 JUMPIFNOT                        R4 ; [+3]
       43 GETTABLEKS                       R4 R0 K6 ["emphasizeText"]
       45 JUMPIF                           R4 ; [+2]
       46 LOADK                            R3 K9 [0.5]
       47 JUMP                             ; [+1]
       48 LOADN                            R3 0
       49 GETUPVAL                         R4 1
       50 GETTABLEKS                       R4 R4 K10 ["createElement"]
       52 GETUPVAL                         R5 2
       53 DUPTABLE                         R6 K21 [{["textStyle"], ["backgroundStyle"], ["LayoutOrder"], ["onActivated"], ["RichText"], ["stateLayer"], ["Text"], ["tag"] = "auto-xy text-title-small text-align-x-center text-align-y-center", ["testId"]}]
       54 DUPTABLE                         R7 K23 [{"Color3", "Transparency"}]
       55 SETTABLEKS                       R2 R7 K4 ["Color3"]
       57 SETTABLEKS                       R3 R7 K22 ["Transparency"]
       59 SETTABLEKS                       R7 R6 K11 ["textStyle"]
       61 GETTABLEKS                       R8 R0 K0 ["isSelected"]
       63 JUMPIFNOT                        R8 ; [+7]
       64 GETTABLEKS                       R7 R1 K7 ["Color"]
       66 GETTABLEKS                       R7 R7 K24 ["System"]
       68 GETTABLEKS                       R7 R7 K25 ["Contrast"]
       70 JUMP                             ; [+11]
       71 GETTABLEKS                       R8 R0 K26 ["highlight"]
       73 JUMPIFNOT                        R8 ; [+7]
       74 GETTABLEKS                       R7 R1 K7 ["Color"]
       76 GETTABLEKS                       R7 R7 K27 ["ActionStandard"]
       78 GETTABLEKS                       R7 R7 K28 ["Background"]
       80 JUMP                             ; [+1]
       81 LOADNIL                          R7
       82 SETTABLEKS                       R7 R6 K12 ["backgroundStyle"]
       84 GETTABLEKS                       R7 R0 K13 ["LayoutOrder"]
       86 SETTABLEKS                       R7 R6 K13 ["LayoutOrder"]
       88 GETTABLEKS                       R8 R0 K5 ["isSelectable"]
       90 JUMPIFNOT                        R8 ; [+3]
       91 GETTABLEKS                       R7 R0 K14 ["onActivated"]
       93 JUMP                             ; [+1]
       94 LOADNIL                          R7
       95 SETTABLEKS                       R7 R6 K14 ["onActivated"]
       97 GETTABLEKS                       R8 R0 K5 ["isSelectable"]
       99 NOT                              R7 R8
      100 SETTABLEKS                       R7 R6 K15 ["RichText"]
      102 DUPTABLE                         R7 K30 [{"mode"}]
      103 GETTABLEKS                       R9 R0 K0 ["isSelected"]
      105 JUMPIFNOT                        R9 ; [+4]
      106 GETUPVAL                         R8 3
      107 GETTABLEKS                       R8 R8 K1 ["Inverse"]
      109 JUMP                             ; [+3]
      110 GETUPVAL                         R8 3
      111 GETTABLEKS                       R8 R8 K31 ["Default"]
      113 SETTABLEKS                       R8 R7 K29 ["mode"]
      115 SETTABLEKS                       R7 R6 K16 ["stateLayer"]
      117 GETTABLEKS                       R8 R0 K5 ["isSelectable"]
      119 JUMPIFNOT                        R8 ; [+3]
      120 GETTABLEKS                       R7 R0 K17 ["Text"]
      122 JUMP                             ; [+7]
      123 LOADK                            R8 K32 ["<s>%*</s>"]
      124 GETTABLEKS                       R10 R0 K17 ["Text"]
      126 NAMECALL                         R8 R8 K33 ["format"]
      128 CALL                             R8 2 1
      129 MOVE                             R7 R8
      130 SETTABLEKS                       R7 R6 K17 ["Text"]
      132 GETTABLEKS                       R7 R0 K20 ["testId"]
      134 SETTABLEKS                       R7 R6 K20 ["testId"]
      136 CALL                             R4 2 -1
      137 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R4 K9 ["StateLayerMode"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Components"]
       25 GETTABLEKS                       R5 R5 K11 ["Text"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K12 ["Providers"]
       32 GETTABLEKS                       R6 R6 K13 ["Style"]
       34 GETTABLEKS                       R6 R6 K14 ["useTokens"]
       36 CALL                             R5 1 1
       37 DUPCLOSURE                       R6 K15 [PROTO_0]
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R3
       42 RETURN                           R6 1
