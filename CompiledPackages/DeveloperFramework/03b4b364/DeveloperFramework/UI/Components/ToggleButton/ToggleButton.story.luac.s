PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"toggleOn"}]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K2 ["state"]
        5 GETTABLEKS                       R4 R5 K0 ["toggleOn"]
        7 NOT                              R3 R4
        8 SETTABLEKS                       R3 R2 K0 ["toggleOn"]
       10 NAMECALL                         R0 R0 K3 ["setState"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R2 K1 [{"toggleOn"}]
        1 GETTABLEKS                       R3 R1 K2 ["Selected"]
        3 SETTABLEKS                       R3 R2 K0 ["toggleOn"]
        5 SETTABLEKS                       R2 R0 K3 ["state"]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R2 R0 K4 ["onToggle"]
       11 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["Style"]
        4 JUMPIFNOT                        R2 ; [+5]
        5 GETTABLEKS                       R2 R0 K0 ["props"]
        7 GETTABLEKS                       R1 R2 K1 ["Style"]
        9 JUMP                             ; [+1]
       10 LOADNIL                          R1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K2 ["createElement"]
       14 GETUPVAL                         R3 1
       15 DUPTABLE                         R4 K7 [{"Layout", "AutomaticSize", "Padding", "Spacing"}]
       16 GETIMPORT                        R5 K11 [Enum.FillDirection.Vertical]
       18 SETTABLEKS                       R5 R4 K3 ["Layout"]
       20 GETIMPORT                        R5 K13 [Enum.AutomaticSize.Y]
       22 SETTABLEKS                       R5 R4 K4 ["AutomaticSize"]
       24 LOADN                            R5 10
       25 SETTABLEKS                       R5 R4 K5 ["Padding"]
       27 LOADN                            R5 15
       28 SETTABLEKS                       R5 R4 K6 ["Spacing"]
       30 DUPTABLE                         R5 K15 [{"ToggleButton"}]
       31 GETUPVAL                         R7 0
       32 GETTABLEKS                       R6 R7 K2 ["createElement"]
       34 GETUPVAL                         R7 2
       35 DUPTABLE                         R8 K20 [{"Style", "Disabled", "Selected", "LayoutOrder", "OnClick"}]
       36 SETTABLEKS                       R1 R8 K1 ["Style"]
       38 GETTABLEKS                       R10 R0 K0 ["props"]
       40 GETTABLEKS                       R9 R10 K16 ["Disabled"]
       42 SETTABLEKS                       R9 R8 K16 ["Disabled"]
       44 GETTABLEKS                       R10 R0 K21 ["state"]
       46 GETTABLEKS                       R9 R10 K22 ["toggleOn"]
       48 SETTABLEKS                       R9 R8 K17 ["Selected"]
       50 LOADN                            R9 1
       51 SETTABLEKS                       R9 R8 K18 ["LayoutOrder"]
       53 GETTABLEKS                       R9 R0 K23 ["onToggle"]
       55 SETTABLEKS                       R9 R8 K19 ["OnClick"]
       57 CALL                             R6 2 1
       58 SETTABLEKS                       R6 R5 K14 ["ToggleButton"]
       60 CALL                             R2 3 -1
       61 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R5 R0 K2 ["UI"]
       20 GETTABLEKS                       R4 R5 K8 ["Components"]
       22 GETTABLEKS                       R3 R4 K9 ["Pane"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R6 R0 K2 ["UI"]
       29 GETTABLEKS                       R5 R6 K8 ["Components"]
       31 GETTABLEKS                       R4 R5 K10 ["ToggleButton"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R1 K11 ["PureComponent"]
       36 LOADK                            R6 K12 ["ExampleToggleButton"]
       37 NAMECALL                         R4 R4 K13 ["extend"]
       39 CALL                             R4 2 1
       40 DUPCLOSURE                       R5 K14 [PROTO_1]
       41 SETTABLEKS                       R5 R4 K15 ["init"]
       43 DUPCLOSURE                       R5 K16 [PROTO_2]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 SETTABLEKS                       R5 R4 K17 ["render"]
       49 DUPTABLE                         R5 K19 [{"stories"}]
       50 DUPTABLE                         R6 K26 [{"DisabledAndNotSelected", "DisabledAndSelected", "NotSelected", "Selected", "UseCheckboxStyle", "UseEyeIconStyle"}]
       51 GETTABLEKS                       R7 R1 K27 ["createElement"]
       53 MOVE                             R8 R4
       54 DUPTABLE                         R9 K30 [{"Disabled", "Selected", "LayoutOrder"}]
       55 LOADB                            R10 1
       56 SETTABLEKS                       R10 R9 K28 ["Disabled"]
       58 LOADB                            R10 0
       59 SETTABLEKS                       R10 R9 K23 ["Selected"]
       61 LOADN                            R10 0
       62 SETTABLEKS                       R10 R9 K29 ["LayoutOrder"]
       64 CALL                             R7 2 1
       65 SETTABLEKS                       R7 R6 K20 ["DisabledAndNotSelected"]
       67 GETTABLEKS                       R7 R1 K27 ["createElement"]
       69 MOVE                             R8 R4
       70 DUPTABLE                         R9 K30 [{"Disabled", "Selected", "LayoutOrder"}]
       71 LOADB                            R10 1
       72 SETTABLEKS                       R10 R9 K28 ["Disabled"]
       74 LOADB                            R10 1
       75 SETTABLEKS                       R10 R9 K23 ["Selected"]
       77 LOADN                            R10 0
       78 SETTABLEKS                       R10 R9 K29 ["LayoutOrder"]
       80 CALL                             R7 2 1
       81 SETTABLEKS                       R7 R6 K21 ["DisabledAndSelected"]
       83 GETTABLEKS                       R7 R1 K27 ["createElement"]
       85 MOVE                             R8 R4
       86 DUPTABLE                         R9 K30 [{"Disabled", "Selected", "LayoutOrder"}]
       87 LOADB                            R10 0
       88 SETTABLEKS                       R10 R9 K28 ["Disabled"]
       90 LOADB                            R10 0
       91 SETTABLEKS                       R10 R9 K23 ["Selected"]
       93 LOADN                            R10 0
       94 SETTABLEKS                       R10 R9 K29 ["LayoutOrder"]
       96 CALL                             R7 2 1
       97 SETTABLEKS                       R7 R6 K22 ["NotSelected"]
       99 GETTABLEKS                       R7 R1 K27 ["createElement"]
      101 MOVE                             R8 R4
      102 DUPTABLE                         R9 K30 [{"Disabled", "Selected", "LayoutOrder"}]
      103 LOADB                            R10 0
      104 SETTABLEKS                       R10 R9 K28 ["Disabled"]
      106 LOADB                            R10 1
      107 SETTABLEKS                       R10 R9 K23 ["Selected"]
      109 LOADN                            R10 0
      110 SETTABLEKS                       R10 R9 K29 ["LayoutOrder"]
      112 CALL                             R7 2 1
      113 SETTABLEKS                       R7 R6 K23 ["Selected"]
      115 GETTABLEKS                       R7 R1 K27 ["createElement"]
      117 MOVE                             R8 R4
      118 DUPTABLE                         R9 K32 [{"Style"}]
      119 LOADK                            R10 K33 ["Checkbox"]
      120 SETTABLEKS                       R10 R9 K31 ["Style"]
      122 CALL                             R7 2 1
      123 SETTABLEKS                       R7 R6 K24 ["UseCheckboxStyle"]
      125 GETTABLEKS                       R7 R1 K27 ["createElement"]
      127 MOVE                             R8 R4
      128 DUPTABLE                         R9 K32 [{"Style"}]
      129 LOADK                            R10 K34 ["EyeIcon"]
      130 SETTABLEKS                       R10 R9 K31 ["Style"]
      132 CALL                             R7 2 1
      133 SETTABLEKS                       R7 R6 K25 ["UseEyeIconStyle"]
      135 SETTABLEKS                       R6 R5 K18 ["stories"]
      137 RETURN                           R5 1
