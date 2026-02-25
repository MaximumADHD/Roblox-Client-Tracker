PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnChanged"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K1 ["OnClosed"]
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["OnChanged"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["join"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K2 ["Transition"]
        9 JUMPIF                           R4 ; [+2]
       10 NEWTABLE                         R4 0 0
       12 NEWTABLE                         R5 1 0
       14 SETTABLE                         R1 R5 R0
       15 CALL                             R3 2 -1
       16 CALL                             R2 -1 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["join"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{"LayoutOrder", "OnPropertyChanged"}]
        5 LOADN                            R3 2
        6 SETTABLEKS                       R3 R2 K1 ["LayoutOrder"]
        8 GETUPVAL                         R3 2
        9 SETTABLEKS                       R3 R2 K2 ["OnPropertyChanged"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["createNextOrder"]
        5 CALL                             R2 0 1
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R3 R4 K1 ["useCallback"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R0
       11 NEWTABLE                         R5 0 2
       13 GETTABLEKS                       R6 R0 K2 ["OnChanged"]
       15 GETTABLEKS                       R7 R0 K3 ["OnClosed"]
       17 SETLIST                          R5 R6 2 [1]
       19 CALL                             R3 2 1
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R4 R5 K1 ["useCallback"]
       23 NEWCLOSURE                       R5 P1
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U3
       26 NEWTABLE                         R6 0 2
       28 GETTABLEKS                       R7 R0 K2 ["OnChanged"]
       30 GETTABLEKS                       R8 R0 K4 ["Transition"]
       32 SETLIST                          R6 R7 2 [1]
       34 CALL                             R4 2 1
       35 GETUPVAL                         R6 2
       36 GETTABLEKS                       R5 R6 K5 ["useMemo"]
       38 NEWCLOSURE                       R6 P2
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R4
       42 NEWTABLE                         R7 0 2
       44 MOVE                             R8 R0
       45 MOVE                             R9 R4
       46 SETLIST                          R7 R8 2 [1]
       48 CALL                             R5 2 1
       49 GETUPVAL                         R7 2
       50 GETTABLEKS                       R6 R7 K6 ["createElement"]
       52 GETUPVAL                         R8 4
       53 GETTABLEKS                       R7 R8 K7 ["View"]
       55 DUPTABLE                         R8 K11 [{"tag", "LayoutOrder", "Size"}]
       56 LOADK                            R9 K12 ["col auto-y radius-small gap-xsmall padding-x-small padding-y-xsmall stroke-standard stroke-default"]
       57 SETTABLEKS                       R9 R8 K8 ["tag"]
       59 GETTABLEKS                       R9 R0 K9 ["LayoutOrder"]
       61 SETTABLEKS                       R9 R8 K9 ["LayoutOrder"]
       63 GETIMPORT                        R9 K15 [UDim2.fromOffset]
       65 GETUPVAL                         R11 5
       66 GETTABLEKS                       R10 R11 K16 ["TRANSITION_PANEL_WIDTH"]
       68 LOADN                            R11 0
       69 CALL                             R9 2 1
       70 SETTABLEKS                       R9 R8 K10 ["Size"]
       72 DUPTABLE                         R9 K20 [{"UIScale", "CompositorNodeHeader", "TransitionPanel"}]
       73 GETUPVAL                         R11 2
       74 GETTABLEKS                       R10 R11 K6 ["createElement"]
       76 LOADK                            R11 K17 ["UIScale"]
       77 DUPTABLE                         R12 K22 [{"Scale"}]
       78 SETTABLEKS                       R1 R12 K21 ["Scale"]
       80 CALL                             R10 2 1
       81 SETTABLEKS                       R10 R9 K17 ["UIScale"]
       83 GETUPVAL                         R11 2
       84 GETTABLEKS                       R10 R11 K6 ["createElement"]
       86 GETUPVAL                         R12 4
       87 GETTABLEKS                       R11 R12 K7 ["View"]
       89 DUPTABLE                         R12 K23 [{"tag", "LayoutOrder"}]
       90 LOADK                            R13 K24 ["size-full-700 align-y-center padding-x-xxsmall row flex-x-fill radius-small"]
       91 SETTABLEKS                       R13 R12 K8 ["tag"]
       93 LOADN                            R13 1
       94 SETTABLEKS                       R13 R12 K9 ["LayoutOrder"]
       96 DUPTABLE                         R13 K28 [{"Title", "ToggleReset", "ToggleButton"}]
       97 GETUPVAL                         R15 2
       98 GETTABLEKS                       R14 R15 K6 ["createElement"]
      100 GETUPVAL                         R16 4
      101 GETTABLEKS                       R15 R16 K29 ["Text"]
      103 DUPTABLE                         R16 K30 [{"tag", "Text", "LayoutOrder"}]
      104 LOADK                            R17 K31 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      105 SETTABLEKS                       R17 R16 K8 ["tag"]
      107 GETTABLEKS                       R17 R0 K32 ["Name"]
      109 SETTABLEKS                       R17 R16 K29 ["Text"]
      111 MOVE                             R17 R2
      112 CALL                             R17 0 1
      113 SETTABLEKS                       R17 R16 K9 ["LayoutOrder"]
      115 CALL                             R14 2 1
      116 SETTABLEKS                       R14 R13 K25 ["Title"]
      118 GETTABLEKS                       R15 R0 K33 ["AllowReset"]
      120 JUMPIFNOT                        R15 ; [+48]
      121 GETTABLEKS                       R15 R0 K34 ["IsDefaultValue"]
      123 JUMPIF                           R15 ; [+45]
      124 GETUPVAL                         R15 2
      125 GETTABLEKS                       R14 R15 K6 ["createElement"]
      127 GETUPVAL                         R16 4
      128 GETTABLEKS                       R15 R16 K35 ["Button"]
      130 DUPTABLE                         R16 K41 [{"icon", "variant", "onActivated", "size", "LayoutOrder", "fillBehavior"}]
      131 LOADK                            R17 K42 ["arrow-curl-to-left"]
      132 SETTABLEKS                       R17 R16 K36 ["icon"]
      134 GETUPVAL                         R20 4
      135 GETTABLEKS                       R19 R20 K43 ["Enums"]
      137 GETTABLEKS                       R18 R19 K44 ["ButtonVariant"]
      139 GETTABLEKS                       R17 R18 K29 ["Text"]
      141 SETTABLEKS                       R17 R16 K37 ["variant"]
      143 SETTABLEKS                       R3 R16 K38 ["onActivated"]
      145 GETUPVAL                         R20 4
      146 GETTABLEKS                       R19 R20 K43 ["Enums"]
      148 GETTABLEKS                       R18 R19 K45 ["InputSize"]
      150 GETTABLEKS                       R17 R18 K46 ["XSmall"]
      152 SETTABLEKS                       R17 R16 K39 ["size"]
      154 MOVE                             R17 R2
      155 CALL                             R17 0 1
      156 SETTABLEKS                       R17 R16 K9 ["LayoutOrder"]
      158 GETUPVAL                         R20 4
      159 GETTABLEKS                       R19 R20 K43 ["Enums"]
      161 GETTABLEKS                       R18 R19 K47 ["FillBehavior"]
      163 GETTABLEKS                       R17 R18 K48 ["Fit"]
      165 SETTABLEKS                       R17 R16 K40 ["fillBehavior"]
      167 CALL                             R14 2 1
      168 JUMP                             ; [+1]
      169 LOADNIL                          R14
      170 SETTABLEKS                       R14 R13 K26 ["ToggleReset"]
      172 GETUPVAL                         R15 2
      173 GETTABLEKS                       R14 R15 K6 ["createElement"]
      175 GETUPVAL                         R16 4
      176 GETTABLEKS                       R15 R16 K35 ["Button"]
      178 DUPTABLE                         R16 K41 [{"icon", "variant", "onActivated", "size", "LayoutOrder", "fillBehavior"}]
      179 LOADK                            R17 K49 ["x"]
      180 SETTABLEKS                       R17 R16 K36 ["icon"]
      182 GETUPVAL                         R20 4
      183 GETTABLEKS                       R19 R20 K43 ["Enums"]
      185 GETTABLEKS                       R18 R19 K44 ["ButtonVariant"]
      187 GETTABLEKS                       R17 R18 K29 ["Text"]
      189 SETTABLEKS                       R17 R16 K37 ["variant"]
      191 GETTABLEKS                       R17 R0 K3 ["OnClosed"]
      193 SETTABLEKS                       R17 R16 K38 ["onActivated"]
      195 GETUPVAL                         R20 4
      196 GETTABLEKS                       R19 R20 K43 ["Enums"]
      198 GETTABLEKS                       R18 R19 K45 ["InputSize"]
      200 GETTABLEKS                       R17 R18 K46 ["XSmall"]
      202 SETTABLEKS                       R17 R16 K39 ["size"]
      204 MOVE                             R17 R2
      205 CALL                             R17 0 1
      206 SETTABLEKS                       R17 R16 K9 ["LayoutOrder"]
      208 GETUPVAL                         R20 4
      209 GETTABLEKS                       R19 R20 K43 ["Enums"]
      211 GETTABLEKS                       R18 R19 K47 ["FillBehavior"]
      213 GETTABLEKS                       R17 R18 K48 ["Fit"]
      215 SETTABLEKS                       R17 R16 K40 ["fillBehavior"]
      217 CALL                             R14 2 1
      218 SETTABLEKS                       R14 R13 K27 ["ToggleButton"]
      220 CALL                             R10 3 1
      221 SETTABLEKS                       R10 R9 K18 ["CompositorNodeHeader"]
      223 GETTABLEKS                       R10 R0 K50 ["TransitionBuilder"]
      225 MOVE                             R11 R5
      226 CALL                             R10 1 1
      227 SETTABLEKS                       R10 R9 K19 ["TransitionPanel"]
      229 CALL                             R6 3 -1
      230 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Components"]
       11 GETTABLEKS                       R4 R5 K7 ["NodeView"]
       13 GETTABLEKS                       R3 R4 K8 ["CompositorNodes"]
       15 GETTABLEKS                       R2 R3 K9 ["CompositorNode"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Util"]
       22 GETTABLEKS                       R3 R4 K11 ["Constants"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K12 ["Parent"]
       29 GETTABLEKS                       R4 R5 K13 ["Dash"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K12 ["Parent"]
       36 GETTABLEKS                       R5 R6 K14 ["Foundation"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R7 R0 K12 ["Parent"]
       43 GETTABLEKS                       R6 R7 K15 ["React"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R8 R0 K12 ["Parent"]
       50 GETTABLEKS                       R7 R8 K16 ["ReactUtils"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R9 R0 K17 ["Hooks"]
       57 GETTABLEKS                       R8 R9 K18 ["useNodeScale"]
       59 CALL                             R7 1 1
       60 DUPCLOSURE                       R8 K19 [PROTO_3]
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R2
       67 RETURN                           R8 1
