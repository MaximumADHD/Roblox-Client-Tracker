PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnChanged"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K1 ["OnClosed"]
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnChanged"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["join"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K2 ["Transition"]
        9 JUMPIF                           R4 ; [+2]
       10 NEWTABLE                         R4 0 0
       12 NEWTABLE                         R5 1 0
       14 SETTABLE                         R1 R5 R0
       15 CALL                             R3 2 -1
       16 CALL                             R2 -1 0
       17 RETURN                           R0 0

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
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["useSignalBinding"]
       10 GETTABLEKS                       R3 R1 K3 ["observeZoomRatio"]
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R3 R3 K4 ["createNextOrder"]
       16 CALL                             R3 0 1
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K5 ["useCallback"]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          VAL R0
       22 NEWTABLE                         R6 0 2
       24 GETTABLEKS                       R7 R0 K6 ["OnChanged"]
       26 GETTABLEKS                       R8 R0 K7 ["OnClosed"]
       28 SETLIST                          R6 R7 2 [1]
       30 CALL                             R4 2 1
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K5 ["useCallback"]
       34 NEWCLOSURE                       R6 P1
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U4
       37 NEWTABLE                         R7 0 2
       39 GETTABLEKS                       R8 R0 K6 ["OnChanged"]
       41 GETTABLEKS                       R9 R0 K8 ["Transition"]
       43 SETLIST                          R7 R8 2 [1]
       45 CALL                             R5 2 1
       46 GETUPVAL                         R6 0
       47 GETTABLEKS                       R6 R6 K9 ["useMemo"]
       49 NEWCLOSURE                       R7 P2
       50 CAPTURE                          UPVAL U4
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R5
       53 NEWTABLE                         R8 0 2
       55 MOVE                             R9 R0
       56 MOVE                             R10 R5
       57 SETLIST                          R8 R9 2 [1]
       59 CALL                             R6 2 1
       60 GETUPVAL                         R7 0
       61 GETTABLEKS                       R7 R7 K10 ["createElement"]
       63 GETUPVAL                         R8 5
       64 GETTABLEKS                       R8 R8 K11 ["View"]
       66 DUPTABLE                         R9 K15 [{"tag", "LayoutOrder", "Size"}]
       67 LOADK                            R10 K16 ["col auto-y radius-small gap-xsmall padding-x-small padding-y-xsmall stroke-standard stroke-default"]
       68 SETTABLEKS                       R10 R9 K12 ["tag"]
       70 GETTABLEKS                       R10 R0 K13 ["LayoutOrder"]
       72 SETTABLEKS                       R10 R9 K13 ["LayoutOrder"]
       74 GETIMPORT                        R10 K19 [UDim2.fromOffset]
       76 GETUPVAL                         R11 6
       77 GETTABLEKS                       R11 R11 K20 ["TRANSITION_PANEL_WIDTH"]
       79 LOADN                            R12 0
       80 CALL                             R10 2 1
       81 SETTABLEKS                       R10 R9 K14 ["Size"]
       83 DUPTABLE                         R10 K24 [{"UIScale", "CompositorNodeHeader", "TransitionPanel"}]
       84 GETUPVAL                         R11 0
       85 GETTABLEKS                       R11 R11 K10 ["createElement"]
       87 LOADK                            R12 K21 ["UIScale"]
       88 DUPTABLE                         R13 K26 [{"Scale"}]
       89 SETTABLEKS                       R2 R13 K25 ["Scale"]
       91 CALL                             R11 2 1
       92 SETTABLEKS                       R11 R10 K21 ["UIScale"]
       94 GETUPVAL                         R11 0
       95 GETTABLEKS                       R11 R11 K10 ["createElement"]
       97 GETUPVAL                         R12 5
       98 GETTABLEKS                       R12 R12 K11 ["View"]
      100 DUPTABLE                         R13 K27 [{"tag", "LayoutOrder"}]
      101 LOADK                            R14 K28 ["size-full-700 align-y-center padding-x-xxsmall row flex-x-fill radius-small"]
      102 SETTABLEKS                       R14 R13 K12 ["tag"]
      104 LOADN                            R14 1
      105 SETTABLEKS                       R14 R13 K13 ["LayoutOrder"]
      107 DUPTABLE                         R14 K32 [{"Title", "ToggleReset", "ToggleButton"}]
      108 GETUPVAL                         R15 0
      109 GETTABLEKS                       R15 R15 K10 ["createElement"]
      111 GETUPVAL                         R16 5
      112 GETTABLEKS                       R16 R16 K33 ["Text"]
      114 DUPTABLE                         R17 K34 [{"tag", "Text", "LayoutOrder"}]
      115 LOADK                            R18 K35 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      116 SETTABLEKS                       R18 R17 K12 ["tag"]
      118 GETTABLEKS                       R18 R0 K36 ["Name"]
      120 SETTABLEKS                       R18 R17 K33 ["Text"]
      122 MOVE                             R18 R3
      123 CALL                             R18 0 1
      124 SETTABLEKS                       R18 R17 K13 ["LayoutOrder"]
      126 CALL                             R15 2 1
      127 SETTABLEKS                       R15 R14 K29 ["Title"]
      129 GETTABLEKS                       R16 R0 K37 ["AllowReset"]
      131 JUMPIFNOT                        R16 ; [+48]
      132 GETTABLEKS                       R16 R0 K38 ["IsDefaultValue"]
      134 JUMPIF                           R16 ; [+45]
      135 GETUPVAL                         R15 0
      136 GETTABLEKS                       R15 R15 K10 ["createElement"]
      138 GETUPVAL                         R16 5
      139 GETTABLEKS                       R16 R16 K39 ["Button"]
      141 DUPTABLE                         R17 K45 [{"icon", "variant", "onActivated", "size", "LayoutOrder", "fillBehavior"}]
      142 LOADK                            R18 K46 ["arrow-curl-to-left"]
      143 SETTABLEKS                       R18 R17 K40 ["icon"]
      145 GETUPVAL                         R18 5
      146 GETTABLEKS                       R18 R18 K47 ["Enums"]
      148 GETTABLEKS                       R18 R18 K48 ["ButtonVariant"]
      150 GETTABLEKS                       R18 R18 K33 ["Text"]
      152 SETTABLEKS                       R18 R17 K41 ["variant"]
      154 SETTABLEKS                       R4 R17 K42 ["onActivated"]
      156 GETUPVAL                         R18 5
      157 GETTABLEKS                       R18 R18 K47 ["Enums"]
      159 GETTABLEKS                       R18 R18 K49 ["InputSize"]
      161 GETTABLEKS                       R18 R18 K50 ["XSmall"]
      163 SETTABLEKS                       R18 R17 K43 ["size"]
      165 MOVE                             R18 R3
      166 CALL                             R18 0 1
      167 SETTABLEKS                       R18 R17 K13 ["LayoutOrder"]
      169 GETUPVAL                         R18 5
      170 GETTABLEKS                       R18 R18 K47 ["Enums"]
      172 GETTABLEKS                       R18 R18 K51 ["FillBehavior"]
      174 GETTABLEKS                       R18 R18 K52 ["Fit"]
      176 SETTABLEKS                       R18 R17 K44 ["fillBehavior"]
      178 CALL                             R15 2 1
      179 JUMP                             ; [+1]
      180 LOADNIL                          R15
      181 SETTABLEKS                       R15 R14 K30 ["ToggleReset"]
      183 GETUPVAL                         R15 0
      184 GETTABLEKS                       R15 R15 K10 ["createElement"]
      186 GETUPVAL                         R16 5
      187 GETTABLEKS                       R16 R16 K39 ["Button"]
      189 DUPTABLE                         R17 K45 [{"icon", "variant", "onActivated", "size", "LayoutOrder", "fillBehavior"}]
      190 LOADK                            R18 K53 ["x"]
      191 SETTABLEKS                       R18 R17 K40 ["icon"]
      193 GETUPVAL                         R18 5
      194 GETTABLEKS                       R18 R18 K47 ["Enums"]
      196 GETTABLEKS                       R18 R18 K48 ["ButtonVariant"]
      198 GETTABLEKS                       R18 R18 K33 ["Text"]
      200 SETTABLEKS                       R18 R17 K41 ["variant"]
      202 GETTABLEKS                       R18 R0 K7 ["OnClosed"]
      204 SETTABLEKS                       R18 R17 K42 ["onActivated"]
      206 GETUPVAL                         R18 5
      207 GETTABLEKS                       R18 R18 K47 ["Enums"]
      209 GETTABLEKS                       R18 R18 K49 ["InputSize"]
      211 GETTABLEKS                       R18 R18 K50 ["XSmall"]
      213 SETTABLEKS                       R18 R17 K43 ["size"]
      215 MOVE                             R18 R3
      216 CALL                             R18 0 1
      217 SETTABLEKS                       R18 R17 K13 ["LayoutOrder"]
      219 GETUPVAL                         R18 5
      220 GETTABLEKS                       R18 R18 K47 ["Enums"]
      222 GETTABLEKS                       R18 R18 K51 ["FillBehavior"]
      224 GETTABLEKS                       R18 R18 K52 ["Fit"]
      226 SETTABLEKS                       R18 R17 K44 ["fillBehavior"]
      228 CALL                             R15 2 1
      229 SETTABLEKS                       R15 R14 K31 ["ToggleButton"]
      231 CALL                             R11 3 1
      232 SETTABLEKS                       R11 R10 K22 ["CompositorNodeHeader"]
      234 GETTABLEKS                       R11 R0 K54 ["TransitionBuilder"]
      236 MOVE                             R12 R6
      237 CALL                             R11 1 1
      238 SETTABLEKS                       R11 R10 K23 ["TransitionPanel"]
      240 CALL                             R7 3 -1
      241 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["NodeView"]
       13 GETTABLEKS                       R2 R2 K8 ["CompositorNodes"]
       15 GETTABLEKS                       R2 R2 K9 ["CompositorNode"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Util"]
       22 GETTABLEKS                       R3 R3 K11 ["Constants"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K12 ["Parent"]
       29 GETTABLEKS                       R4 R4 K13 ["Dash"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K12 ["Parent"]
       36 GETTABLEKS                       R5 R5 K14 ["Foundation"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K12 ["Parent"]
       43 GETTABLEKS                       R6 R6 K15 ["React"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K12 ["Parent"]
       50 GETTABLEKS                       R7 R7 K16 ["ReactUtils"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K12 ["Parent"]
       57 GETTABLEKS                       R8 R8 K17 ["SignalsReact"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K18 ["Contexts"]
       64 GETTABLEKS                       R9 R9 K19 ["ViewportRectContext"]
       66 CALL                             R8 1 1
       67 DUPCLOSURE                       R9 K20 [PROTO_3]
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R2
       75 RETURN                           R9 1
