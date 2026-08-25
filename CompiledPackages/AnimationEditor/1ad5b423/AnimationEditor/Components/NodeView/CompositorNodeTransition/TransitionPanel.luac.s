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
        4 DUPTABLE                         R2 K4 [{["LayoutOrder"] = 2, ["OnPropertyChanged"]}]
        5 GETUPVAL                         R3 2
        6 SETTABLEKS                       R3 R2 K3 ["OnPropertyChanged"]
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

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
       68 DUPTABLE                         R9 K17 [{["tag"] = "col gap-xsmall auto-y padding-x-small padding-y-xsmall stroke-standard stroke-default radius-small", ["LayoutOrder"], ["Size"]}]
       69 GETTABLEKS                       R10 R0 K15 ["LayoutOrder"]
       71 SETTABLEKS                       R10 R9 K15 ["LayoutOrder"]
       73 GETIMPORT                        R10 K20 [UDim2.fromOffset]
       75 GETUPVAL                         R12 6
       76 CALL                             R12 0 1
       77 JUMPIFNOT                        R12 ; [+4]
       78 GETUPVAL                         R11 7
       79 GETTABLEKS                       R11 R11 K21 ["TRANSITION_PANEL_WIDTH"]
       81 JUMP                             ; [+1]
       82 LOADN                            R11 200
       83 LOADN                            R12 0
       84 CALL                             R10 2 1
       85 SETTABLEKS                       R10 R9 K16 ["Size"]
       87 DUPTABLE                         R10 K25 [{"UIScale", "CompositorNodeHeader", "TransitionPanel"}]
       88 GETUPVAL                         R11 0
       89 GETTABLEKS                       R11 R11 K11 ["createElement"]
       91 LOADK                            R12 K22 ["UIScale"]
       92 DUPTABLE                         R13 K27 [{"Scale"}]
       93 SETTABLEKS                       R2 R13 K26 ["Scale"]
       95 CALL                             R11 2 1
       96 SETTABLEKS                       R11 R10 K22 ["UIScale"]
       98 GETUPVAL                         R11 0
       99 GETTABLEKS                       R11 R11 K11 ["createElement"]
      101 GETUPVAL                         R12 5
      102 GETTABLEKS                       R12 R12 K12 ["View"]
      104 DUPTABLE                         R13 K30 [{["tag"] = "row flex-x-fill align-y-center size-full-700 padding-x-xxsmall radius-small", ["LayoutOrder"] = 1}]
      105 DUPTABLE                         R14 K34 [{"Title", "ToggleReset", "ToggleButton"}]
      106 GETUPVAL                         R15 0
      107 GETTABLEKS                       R15 R15 K11 ["createElement"]
      109 GETUPVAL                         R16 5
      110 GETTABLEKS                       R16 R16 K35 ["Text"]
      112 DUPTABLE                         R17 K37 [{["tag"] = "size-0-700 auto-x text-title-small text-align-x-left text-truncate-split", ["Text"], ["LayoutOrder"]}]
      113 GETTABLEKS                       R18 R0 K38 ["Name"]
      115 SETTABLEKS                       R18 R17 K35 ["Text"]
      117 MOVE                             R18 R3
      118 CALL                             R18 0 1
      119 SETTABLEKS                       R18 R17 K15 ["LayoutOrder"]
      121 CALL                             R15 2 1
      122 SETTABLEKS                       R15 R14 K31 ["Title"]
      124 GETTABLEKS                       R16 R0 K39 ["AllowReset"]
      126 JUMPIFNOT                        R16 ; [+45]
      127 GETTABLEKS                       R16 R0 K40 ["IsDefaultValue"]
      129 JUMPIF                           R16 ; [+42]
      130 GETUPVAL                         R15 0
      131 GETTABLEKS                       R15 R15 K11 ["createElement"]
      133 GETUPVAL                         R16 5
      134 GETTABLEKS                       R16 R16 K41 ["Button"]
      136 DUPTABLE                         R17 K48 [{["icon"] = "arrow-curl-to-left", ["variant"], ["onActivated"], ["size"], ["LayoutOrder"], ["fillBehavior"]}]
      137 GETUPVAL                         R18 5
      138 GETTABLEKS                       R18 R18 K49 ["Enums"]
      140 GETTABLEKS                       R18 R18 K50 ["ButtonVariant"]
      142 GETTABLEKS                       R18 R18 K35 ["Text"]
      144 SETTABLEKS                       R18 R17 K44 ["variant"]
      146 SETTABLEKS                       R4 R17 K45 ["onActivated"]
      148 GETUPVAL                         R18 5
      149 GETTABLEKS                       R18 R18 K49 ["Enums"]
      151 GETTABLEKS                       R18 R18 K51 ["InputSize"]
      153 GETTABLEKS                       R18 R18 K52 ["XSmall"]
      155 SETTABLEKS                       R18 R17 K46 ["size"]
      157 MOVE                             R18 R3
      158 CALL                             R18 0 1
      159 SETTABLEKS                       R18 R17 K15 ["LayoutOrder"]
      161 GETUPVAL                         R18 5
      162 GETTABLEKS                       R18 R18 K49 ["Enums"]
      164 GETTABLEKS                       R18 R18 K53 ["FillBehavior"]
      166 GETTABLEKS                       R18 R18 K54 ["Fit"]
      168 SETTABLEKS                       R18 R17 K47 ["fillBehavior"]
      170 CALL                             R15 2 1
      171 JUMP                             ; [+1]
      172 LOADNIL                          R15
      173 SETTABLEKS                       R15 R14 K32 ["ToggleReset"]
      175 GETUPVAL                         R15 0
      176 GETTABLEKS                       R15 R15 K11 ["createElement"]
      178 GETUPVAL                         R16 5
      179 GETTABLEKS                       R16 R16 K41 ["Button"]
      181 DUPTABLE                         R17 K56 [{["icon"] = "x", ["variant"], ["onActivated"], ["size"], ["LayoutOrder"], ["fillBehavior"]}]
      182 GETUPVAL                         R18 5
      183 GETTABLEKS                       R18 R18 K49 ["Enums"]
      185 GETTABLEKS                       R18 R18 K50 ["ButtonVariant"]
      187 GETTABLEKS                       R18 R18 K35 ["Text"]
      189 SETTABLEKS                       R18 R17 K44 ["variant"]
      191 GETTABLEKS                       R18 R0 K8 ["OnClosed"]
      193 SETTABLEKS                       R18 R17 K45 ["onActivated"]
      195 GETUPVAL                         R18 5
      196 GETTABLEKS                       R18 R18 K49 ["Enums"]
      198 GETTABLEKS                       R18 R18 K51 ["InputSize"]
      200 GETTABLEKS                       R18 R18 K52 ["XSmall"]
      202 SETTABLEKS                       R18 R17 K46 ["size"]
      204 MOVE                             R18 R3
      205 CALL                             R18 0 1
      206 SETTABLEKS                       R18 R17 K15 ["LayoutOrder"]
      208 GETUPVAL                         R18 5
      209 GETTABLEKS                       R18 R18 K49 ["Enums"]
      211 GETTABLEKS                       R18 R18 K53 ["FillBehavior"]
      213 GETTABLEKS                       R18 R18 K54 ["Fit"]
      215 SETTABLEKS                       R18 R17 K47 ["fillBehavior"]
      217 CALL                             R15 2 1
      218 SETTABLEKS                       R15 R14 K33 ["ToggleButton"]
      220 CALL                             R11 3 1
      221 SETTABLEKS                       R11 R10 K23 ["CompositorNodeHeader"]
      223 GETTABLEKS                       R11 R0 K57 ["TransitionBuilder"]
      225 MOVE                             R12 R6
      226 CALL                             R11 1 1
      227 SETTABLEKS                       R11 R10 K24 ["TransitionPanel"]
      229 CALL                             R7 3 -1
      230 RETURN                           R7 -1

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
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K15 ["Flags"]
       60 GETTABLEKS                       R9 R9 K16 ["getFFlagAnimGraphUI_StateMachineNode"]
       62 CALL                             R8 1 1
       63 DUPCLOSURE                       R9 K17 [PROTO_3]
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R1
       72 RETURN                           R9 1
