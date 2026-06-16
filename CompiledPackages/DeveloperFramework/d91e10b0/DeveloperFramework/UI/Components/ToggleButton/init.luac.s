PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Disabled"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["OnClick"]
       10 JUMPIF                           R0 ; [+8]
       11 MOVE                             R2 R1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K0 ["props"]
       15 GETTABLEKS                       R4 R4 K3 ["Selected"]
       17 NOT                              R3 R4
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onClick"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["AnchorPoint"]
        6 GETTABLEKS                       R4 R1 K3 ["Disabled"]
        8 GETTABLEKS                       R5 R1 K4 ["Selected"]
       10 GETTABLEKS                       R6 R1 K5 ["LayoutOrder"]
       12 GETTABLEKS                       R7 R1 K6 ["Position"]
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R9 R1 K7 ["Size"]
       17 GETTABLEKS                       R10 R2 K7 ["Size"]
       19 CALL                             R8 2 1
       20 GETTABLEKS                       R9 R1 K8 ["Text"]
       22 GETTABLEKS                       R10 R1 K9 ["ZIndex"]
       24 LOADNIL                          R11
       25 JUMPIFNOT                        R4 ; [+5]
       26 JUMPIFNOT                        R5 ; [+4]
       27 GETUPVAL                         R12 1
       28 GETTABLEKS                       R11 R12 K10 ["DisabledAndSelected"]
       30 JUMP                             ; [+9]
       31 JUMPIFNOT                        R4 ; [+4]
       32 GETUPVAL                         R12 1
       33 GETTABLEKS                       R11 R12 K3 ["Disabled"]
       35 JUMP                             ; [+4]
       36 JUMPIFNOT                        R5 ; [+3]
       37 GETUPVAL                         R12 1
       38 GETTABLEKS                       R11 R12 K4 ["Selected"]
       40 GETUPVAL                         R12 2
       41 GETTABLEKS                       R12 R12 K11 ["createElement"]
       43 GETUPVAL                         R13 3
       44 DUPTABLE                         R14 K15 [{"AnchorPoint", "LayoutOrder", "OnClick", "StyleModifier", "Position", "Size", "Style", "Text", "ZIndex"}]
       45 SETTABLEKS                       R3 R14 K2 ["AnchorPoint"]
       47 SETTABLEKS                       R6 R14 K5 ["LayoutOrder"]
       49 GETTABLEKS                       R15 R0 K16 ["onClick"]
       51 SETTABLEKS                       R15 R14 K12 ["OnClick"]
       53 SETTABLEKS                       R11 R14 K13 ["StyleModifier"]
       55 SETTABLEKS                       R7 R14 K6 ["Position"]
       57 SETTABLEKS                       R8 R14 K7 ["Size"]
       59 SETTABLEKS                       R2 R14 K14 ["Style"]
       61 SETTABLEKS                       R9 R14 K8 ["Text"]
       63 SETTABLEKS                       R10 R14 K9 ["ZIndex"]
       65 DUPTABLE                         R15 K19 [{"PointingHand", "TeachingCallout"}]
       66 JUMPIF                           R4 ; [+10]
       67 GETUPVAL                         R16 2
       68 GETTABLEKS                       R16 R16 K11 ["createElement"]
       70 GETUPVAL                         R17 4
       71 DUPTABLE                         R18 K21 [{"Cursor"}]
       72 LOADK                            R19 K17 ["PointingHand"]
       73 SETTABLEKS                       R19 R18 K20 ["Cursor"]
       75 CALL                             R16 2 1
       76 JUMPIF                           R16 ; [+1]
       77 LOADNIL                          R16
       78 SETTABLEKS                       R16 R15 K17 ["PointingHand"]
       80 GETUPVAL                         R18 2
       81 GETTABLEKS                       R18 R18 K22 ["Children"]
       83 GETTABLE                         R17 R1 R18
       84 JUMPIFNOT                        R17 ; [+7]
       85 GETUPVAL                         R17 2
       86 GETTABLEKS                       R17 R17 K22 ["Children"]
       88 GETTABLE                         R16 R1 R17
       89 GETTABLEKS                       R16 R16 K18 ["TeachingCallout"]
       91 JUMP                             ; [+1]
       92 LOADNIL                          R16
       93 SETTABLEKS                       R16 R15 K18 ["TeachingCallout"]
       95 CALL                             R12 3 -1
       96 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Util"]
       29 GETTABLEKS                       R5 R5 K11 ["prioritize"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K10 ["Util"]
       36 GETTABLEKS                       R6 R6 K12 ["StyleModifier"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R0 K10 ["Util"]
       43 GETTABLEKS                       R7 R7 K13 ["Typecheck"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R8 R0 K2 ["UI"]
       50 GETTABLEKS                       R8 R8 K14 ["Components"]
       52 GETTABLEKS                       R8 R8 K15 ["DEPRECATED_Button"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K6 [require]
       57 GETTABLEKS                       R9 R0 K2 ["UI"]
       59 GETTABLEKS                       R9 R9 K14 ["Components"]
       61 GETTABLEKS                       R9 R9 K16 ["HoverArea"]
       63 CALL                             R8 1 1
       64 GETTABLEKS                       R9 R1 K17 ["PureComponent"]
       66 LOADK                            R11 K18 ["ToggleButton"]
       67 NAMECALL                         R9 R9 K19 ["extend"]
       69 CALL                             R9 2 1
       70 GETTABLEKS                       R10 R6 K20 ["wrap"]
       72 MOVE                             R11 R9
       73 GETIMPORT                        R12 K1 [script]
       75 CALL                             R10 2 0
       76 DUPTABLE                         R10 K24 [{"Disabled", "Selected", "Text"}]
       77 LOADB                            R11 0
       78 SETTABLEKS                       R11 R10 K21 ["Disabled"]
       80 LOADB                            R11 0
       81 SETTABLEKS                       R11 R10 K22 ["Selected"]
       83 LOADK                            R11 K25 [""]
       84 SETTABLEKS                       R11 R10 K23 ["Text"]
       86 SETTABLEKS                       R10 R9 K26 ["defaultProps"]
       88 DUPCLOSURE                       R10 K27 [PROTO_1]
       89 SETTABLEKS                       R10 R9 K28 ["init"]
       91 DUPCLOSURE                       R10 K29 [PROTO_2]
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R8
       97 SETTABLEKS                       R10 R9 K30 ["render"]
       99 MOVE                             R10 R3
      100 DUPTABLE                         R11 K32 [{"Stylizer"}]
      101 GETTABLEKS                       R12 R2 K31 ["Stylizer"]
      103 SETTABLEKS                       R12 R11 K31 ["Stylizer"]
      105 CALL                             R10 1 1
      106 MOVE                             R11 R9
      107 CALL                             R10 1 1
      108 MOVE                             R9 R10
      109 RETURN                           R9 1
