PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnChanged"]
        3 JUMPIFEQKNIL                     R0 ; [+6]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["OnChanged"]
        8 LOADNIL                          R1
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K1 ["OnClosed"]
       13 CALL                             R0 0 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnChanged"]
        3 JUMPIFEQKNIL                     R2 ; [+18]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["OnChanged"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K1 ["join"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K2 ["Transition"]
       14 JUMPIF                           R4 ; [+2]
       15 NEWTABLE                         R4 0 0
       17 NEWTABLE                         R5 1 0
       19 SETTABLE                         R1 R5 R0
       20 CALL                             R3 2 -1
       21 CALL                             R2 -1 0
       22 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["join"]
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
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ViewportRectContext"]
        6 GETTABLEKS                       R2 R2 K2 ["Context"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K3 ["useSignalBinding"]
       12 GETTABLEKS                       R3 R1 K4 ["observeZoomRatio"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K5 ["createNextOrder"]
       18 CALL                             R3 0 1
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K6 ["useCallback"]
       22 NEWCLOSURE                       R5 P0
       23 CAPTURE                          VAL R0
       24 NEWTABLE                         R6 0 2
       26 GETTABLEKS                       R7 R0 K7 ["OnChanged"]
       28 GETTABLEKS                       R8 R0 K8 ["OnClosed"]
       30 SETLIST                          R6 R7 2 [1]
       32 CALL                             R4 2 1
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R5 R5 K6 ["useCallback"]
       36 NEWCLOSURE                       R6 P1
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U4
       39 NEWTABLE                         R7 0 2
       41 GETTABLEKS                       R8 R0 K7 ["OnChanged"]
       43 GETTABLEKS                       R9 R0 K9 ["Transition"]
       45 SETLIST                          R7 R8 2 [1]
       47 CALL                             R5 2 1
       48 GETUPVAL                         R6 0
       49 GETTABLEKS                       R6 R6 K10 ["useMemo"]
       51 NEWCLOSURE                       R7 P2
       52 CAPTURE                          UPVAL U4
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R5
       55 NEWTABLE                         R8 0 2
       57 MOVE                             R9 R0
       58 MOVE                             R10 R5
       59 SETLIST                          R8 R9 2 [1]
       61 CALL                             R6 2 1
       62 GETUPVAL                         R7 0
       63 GETTABLEKS                       R7 R7 K11 ["createElement"]
       65 GETUPVAL                         R8 5
       66 GETTABLEKS                       R8 R8 K12 ["View"]
       68 DUPTABLE                         R9 K16 [{"tag", "LayoutOrder", "Size"}]
       69 LOADK                            R10 K17 ["col auto-y radius-small gap-xsmall padding-x-small padding-y-xsmall stroke-standard stroke-default"]
       70 SETTABLEKS                       R10 R9 K13 ["tag"]
       72 GETTABLEKS                       R10 R0 K14 ["LayoutOrder"]
       74 SETTABLEKS                       R10 R9 K14 ["LayoutOrder"]
       76 GETIMPORT                        R10 K20 [UDim2.fromOffset]
       78 GETUPVAL                         R11 6
       79 GETTABLEKS                       R11 R11 K21 ["TRANSITION_PANEL_WIDTH"]
       81 LOADN                            R12 0
       82 CALL                             R10 2 1
       83 SETTABLEKS                       R10 R9 K15 ["Size"]
       85 DUPTABLE                         R10 K25 [{"UIScale", "CompositorNodeHeader", "TransitionPanel"}]
       86 GETUPVAL                         R11 0
       87 GETTABLEKS                       R11 R11 K11 ["createElement"]
       89 LOADK                            R12 K22 ["UIScale"]
       90 DUPTABLE                         R13 K27 [{"Scale"}]
       91 SETTABLEKS                       R2 R13 K26 ["Scale"]
       93 CALL                             R11 2 1
       94 SETTABLEKS                       R11 R10 K22 ["UIScale"]
       96 GETUPVAL                         R11 0
       97 GETTABLEKS                       R11 R11 K11 ["createElement"]
       99 GETUPVAL                         R12 5
      100 GETTABLEKS                       R12 R12 K12 ["View"]
      102 DUPTABLE                         R13 K28 [{"tag", "LayoutOrder"}]
      103 LOADK                            R14 K29 ["size-full-700 align-y-center padding-x-xxsmall row flex-x-fill radius-small"]
      104 SETTABLEKS                       R14 R13 K13 ["tag"]
      106 LOADN                            R14 1
      107 SETTABLEKS                       R14 R13 K14 ["LayoutOrder"]
      109 DUPTABLE                         R14 K33 [{"Title", "ToggleReset", "ToggleButton"}]
      110 GETUPVAL                         R15 0
      111 GETTABLEKS                       R15 R15 K11 ["createElement"]
      113 GETUPVAL                         R16 5
      114 GETTABLEKS                       R16 R16 K34 ["Text"]
      116 DUPTABLE                         R17 K35 [{"tag", "Text", "LayoutOrder"}]
      117 LOADK                            R18 K36 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      118 SETTABLEKS                       R18 R17 K13 ["tag"]
      120 GETTABLEKS                       R18 R0 K37 ["Name"]
      122 SETTABLEKS                       R18 R17 K34 ["Text"]
      124 MOVE                             R18 R3
      125 CALL                             R18 0 1
      126 SETTABLEKS                       R18 R17 K14 ["LayoutOrder"]
      128 CALL                             R15 2 1
      129 SETTABLEKS                       R15 R14 K30 ["Title"]
      131 GETTABLEKS                       R16 R0 K38 ["AllowReset"]
      133 JUMPIFNOT                        R16 ; [+48]
      134 GETTABLEKS                       R16 R0 K39 ["IsDefaultValue"]
      136 JUMPIF                           R16 ; [+45]
      137 GETUPVAL                         R15 0
      138 GETTABLEKS                       R15 R15 K11 ["createElement"]
      140 GETUPVAL                         R16 5
      141 GETTABLEKS                       R16 R16 K40 ["Button"]
      143 DUPTABLE                         R17 K46 [{"icon", "variant", "onActivated", "size", "LayoutOrder", "fillBehavior"}]
      144 LOADK                            R18 K47 ["arrow-curl-to-left"]
      145 SETTABLEKS                       R18 R17 K41 ["icon"]
      147 GETUPVAL                         R18 5
      148 GETTABLEKS                       R18 R18 K48 ["Enums"]
      150 GETTABLEKS                       R18 R18 K49 ["ButtonVariant"]
      152 GETTABLEKS                       R18 R18 K34 ["Text"]
      154 SETTABLEKS                       R18 R17 K42 ["variant"]
      156 SETTABLEKS                       R4 R17 K43 ["onActivated"]
      158 GETUPVAL                         R18 5
      159 GETTABLEKS                       R18 R18 K48 ["Enums"]
      161 GETTABLEKS                       R18 R18 K50 ["InputSize"]
      163 GETTABLEKS                       R18 R18 K51 ["XSmall"]
      165 SETTABLEKS                       R18 R17 K44 ["size"]
      167 MOVE                             R18 R3
      168 CALL                             R18 0 1
      169 SETTABLEKS                       R18 R17 K14 ["LayoutOrder"]
      171 GETUPVAL                         R18 5
      172 GETTABLEKS                       R18 R18 K48 ["Enums"]
      174 GETTABLEKS                       R18 R18 K52 ["FillBehavior"]
      176 GETTABLEKS                       R18 R18 K53 ["Fit"]
      178 SETTABLEKS                       R18 R17 K45 ["fillBehavior"]
      180 CALL                             R15 2 1
      181 JUMP                             ; [+1]
      182 LOADNIL                          R15
      183 SETTABLEKS                       R15 R14 K31 ["ToggleReset"]
      185 GETUPVAL                         R15 0
      186 GETTABLEKS                       R15 R15 K11 ["createElement"]
      188 GETUPVAL                         R16 5
      189 GETTABLEKS                       R16 R16 K40 ["Button"]
      191 DUPTABLE                         R17 K46 [{"icon", "variant", "onActivated", "size", "LayoutOrder", "fillBehavior"}]
      192 LOADK                            R18 K54 ["x"]
      193 SETTABLEKS                       R18 R17 K41 ["icon"]
      195 GETUPVAL                         R18 5
      196 GETTABLEKS                       R18 R18 K48 ["Enums"]
      198 GETTABLEKS                       R18 R18 K49 ["ButtonVariant"]
      200 GETTABLEKS                       R18 R18 K34 ["Text"]
      202 SETTABLEKS                       R18 R17 K42 ["variant"]
      204 GETTABLEKS                       R18 R0 K8 ["OnClosed"]
      206 SETTABLEKS                       R18 R17 K43 ["onActivated"]
      208 GETUPVAL                         R18 5
      209 GETTABLEKS                       R18 R18 K48 ["Enums"]
      211 GETTABLEKS                       R18 R18 K50 ["InputSize"]
      213 GETTABLEKS                       R18 R18 K51 ["XSmall"]
      215 SETTABLEKS                       R18 R17 K44 ["size"]
      217 MOVE                             R18 R3
      218 CALL                             R18 0 1
      219 SETTABLEKS                       R18 R17 K14 ["LayoutOrder"]
      221 GETUPVAL                         R18 5
      222 GETTABLEKS                       R18 R18 K48 ["Enums"]
      224 GETTABLEKS                       R18 R18 K52 ["FillBehavior"]
      226 GETTABLEKS                       R18 R18 K53 ["Fit"]
      228 SETTABLEKS                       R18 R17 K45 ["fillBehavior"]
      230 CALL                             R15 2 1
      231 SETTABLEKS                       R15 R14 K32 ["ToggleButton"]
      233 CALL                             R11 3 1
      234 SETTABLEKS                       R11 R10 K23 ["CompositorNodeHeader"]
      236 GETTABLEKS                       R11 R0 K55 ["TransitionBuilder"]
      238 MOVE                             R12 R6
      239 CALL                             R11 1 1
      240 SETTABLEKS                       R11 R10 K24 ["TransitionPanel"]
      242 CALL                             R7 3 -1
      243 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["NodeGraphing"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Parent"]
       39 GETTABLEKS                       R6 R6 K12 ["React"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K8 ["Parent"]
       46 GETTABLEKS                       R7 R7 K13 ["ReactUtils"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K8 ["Parent"]
       53 GETTABLEKS                       R8 R8 K14 ["SignalsReact"]
       55 CALL                             R7 1 1
       56 DUPCLOSURE                       R8 K15 [PROTO_3]
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R1
       64 RETURN                           R8 1
