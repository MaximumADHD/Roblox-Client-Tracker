PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getValue"]
        3 CALL                             R0 1 1
        4 GETTABLEKS                       R0 R0 K1 ["id"]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K2 ["session"]
        9 GETTABLEKS                       R1 R1 K3 ["beginEditingPropertyAsync"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K2 ["session"]
       16 GETTABLEKS                       R1 R1 K4 ["setPropertyPart"]
       18 MOVE                             R2 R0
       19 LOADK                            R3 K5 ["value"]
       20 LOADNIL                          R4
       21 CALL                             R1 3 0
       22 GETUPVAL                         R1 1
       23 GETTABLEKS                       R1 R1 K2 ["session"]
       25 GETTABLEKS                       R1 R1 K6 ["finishEditingProperty"]
       27 MOVE                             R2 R0
       28 GETIMPORT                        R3 K10 [Enum.FinishRecordingOperation.Commit]
       30 CALL                             R1 2 0
       31 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["context menu for %*"]
        3 GETUPVAL                         R4 0
        4 NAMECALL                         R4 R4 K3 ["getValue"]
        6 CALL                             R4 1 1
        7 GETTABLEKS                       R4 R4 K4 ["id"]
        9 GETTABLEKS                       R4 R4 K5 ["name"]
       11 NAMECALL                         R2 R2 K6 ["format"]
       13 CALL                             R2 2 1
       14 MOVE                             R1 R2
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["id"]
        2 GETTABLEKS                       R1 R1 K1 ["name"]
        4 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["useSignalBinding"]
        9 GETTABLEKS                       R4 R0 K2 ["getTag"]
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K3 ["useEventCallback"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R3
       17 CAPTURE                          VAL R0
       18 CALL                             R4 1 1
       19 GETUPVAL                         R5 3
       20 GETTABLEKS                       R5 R5 K4 ["useCallback"]
       22 NEWCLOSURE                       R6 P1
       23 CAPTURE                          VAL R3
       24 NEWTABLE                         R7 0 0
       26 CALL                             R5 2 1
       27 GETUPVAL                         R6 4
       28 GETUPVAL                         R7 5
       29 DUPTABLE                         R8 K14 [{["tag"] = "row align-y-center gap-small", ["testId"] = "TagRow", ["onSecondaryActivated"], ["stateLayer"], ["LayoutOrder"], ["Size"], ["Visible"]}]
       30 SETTABLEKS                       R5 R8 K9 ["onSecondaryActivated"]
       32 DUPTABLE                         R9 K16 [{"affordance"}]
       33 GETUPVAL                         R10 6
       34 GETTABLEKS                       R10 R10 K17 ["None"]
       36 SETTABLEKS                       R10 R9 K15 ["affordance"]
       38 SETTABLEKS                       R9 R8 K10 ["stateLayer"]
       40 GETTABLEKS                       R9 R0 K11 ["LayoutOrder"]
       42 SETTABLEKS                       R9 R8 K11 ["LayoutOrder"]
       44 GETIMPORT                        R9 K20 [UDim2.new]
       46 LOADN                            R10 1
       47 LOADN                            R11 0
       48 LOADN                            R12 0
       49 GETTABLEKS                       R13 R2 K21 ["PropertyRow"]
       51 GETTABLEKS                       R13 R13 K22 ["MinHeight"]
       53 CALL                             R9 4 1
       54 SETTABLEKS                       R9 R8 K12 ["Size"]
       56 GETTABLEKS                       R9 R0 K13 ["Visible"]
       58 SETTABLEKS                       R9 R8 K13 ["Visible"]
       60 DUPTABLE                         R9 K27 [{"UIPadding", "Icon", "TagName", "Remove"}]
       61 GETUPVAL                         R10 4
       62 LOADK                            R11 K23 ["UIPadding"]
       63 DUPTABLE                         R12 K29 [{"PaddingLeft"}]
       64 GETIMPORT                        R13 K31 [UDim.new]
       66 LOADN                            R14 0
       67 GETTABLEKS                       R15 R2 K21 ["PropertyRow"]
       69 GETTABLEKS                       R15 R15 K32 ["Label"]
       71 GETTABLEKS                       R15 R15 K33 ["IndentWidth"]
       73 CALL                             R13 2 1
       74 SETTABLEKS                       R13 R12 K28 ["PaddingLeft"]
       76 CALL                             R10 2 1
       77 SETTABLEKS                       R10 R9 K23 ["UIPadding"]
       79 GETUPVAL                         R10 4
       80 GETUPVAL                         R11 7
       81 GETTABLEKS                       R11 R11 K34 ["Image"]
       83 DUPTABLE                         R12 K36 [{["tag"] = "size-300-300 bg-alert", ["LayoutOrder"]}]
       84 MOVE                             R13 R1
       85 CALL                             R13 0 1
       86 SETTABLEKS                       R13 R12 K11 ["LayoutOrder"]
       88 CALL                             R10 2 1
       89 SETTABLEKS                       R10 R9 K24 ["Icon"]
       91 GETUPVAL                         R10 4
       92 GETUPVAL                         R11 8
       93 DUPTABLE                         R12 K39 [{["tag"] = "shrink size-full-full text-body-small text-no-wrap text-align-x-left text-align-y-center clip", ["testId"] = "TagName", ["LayoutOrder"], ["Text"]}]
       94 MOVE                             R13 R1
       95 CALL                             R13 0 1
       96 SETTABLEKS                       R13 R12 K11 ["LayoutOrder"]
       98 DUPCLOSURE                       R15 K40 [PROTO_2]
       99 NAMECALL                         R13 R3 K41 ["map"]
      101 CALL                             R13 2 1
      102 SETTABLEKS                       R13 R12 K38 ["Text"]
      104 CALL                             R10 2 1
      105 SETTABLEKS                       R10 R9 K25 ["TagName"]
      107 GETUPVAL                         R10 4
      108 GETUPVAL                         R11 9
      109 DUPTABLE                         R12 K46 [{["LayoutOrder"], ["icon"], ["size"], ["onActivated"], ["testId"] = "RemoveTagButton"}]
      110 MOVE                             R13 R1
      111 CALL                             R13 0 1
      112 SETTABLEKS                       R13 R12 K11 ["LayoutOrder"]
      114 DUPTABLE                         R13 K49 [{"name", "variant"}]
      115 GETUPVAL                         R14 10
      116 GETTABLEKS                       R14 R14 K50 ["Minus"]
      118 SETTABLEKS                       R14 R13 K47 ["name"]
      120 GETUPVAL                         R14 11
      121 GETTABLEKS                       R14 R14 K51 ["Filled"]
      123 SETTABLEKS                       R14 R13 K48 ["variant"]
      125 SETTABLEKS                       R13 R12 K42 ["icon"]
      127 GETUPVAL                         R13 12
      128 GETTABLEKS                       R13 R13 K52 ["XSmall"]
      130 SETTABLEKS                       R13 R12 K43 ["size"]
      132 SETTABLEKS                       R4 R12 K44 ["onActivated"]
      134 CALL                             R10 2 1
      135 SETTABLEKS                       R10 R9 K26 ["Remove"]
      137 CALL                             R6 3 -1
      138 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["PropertyTypes"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["ReactUtils"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R0 K11 ["RpcTypes"]
       33 CALL                             R6 1 1
       34 GETIMPORT                        R7 K6 [require]
       36 GETTABLEKS                       R8 R1 K12 ["Signals"]
       38 CALL                             R7 1 1
       39 GETIMPORT                        R8 K6 [require]
       41 GETTABLEKS                       R9 R1 K13 ["SignalsReact"]
       43 CALL                             R8 1 1
       44 GETIMPORT                        R9 K6 [require]
       46 GETTABLEKS                       R10 R0 K14 ["Hooks"]
       48 GETTABLEKS                       R10 R10 K15 ["useVisualValues"]
       50 CALL                             R9 1 1
       51 GETTABLEKS                       R10 R4 K16 ["createElement"]
       53 GETTABLEKS                       R11 R2 K17 ["IconButton"]
       55 GETTABLEKS                       R12 R2 K18 ["Text"]
       57 GETTABLEKS                       R13 R2 K19 ["View"]
       59 GETTABLEKS                       R14 R2 K20 ["Enums"]
       61 GETTABLEKS                       R14 R14 K21 ["StateLayerAffordance"]
       63 GETTABLEKS                       R15 R2 K20 ["Enums"]
       65 GETTABLEKS                       R15 R15 K22 ["IconName"]
       67 GETTABLEKS                       R16 R2 K20 ["Enums"]
       69 GETTABLEKS                       R16 R16 K23 ["IconVariant"]
       71 GETTABLEKS                       R17 R2 K20 ["Enums"]
       73 GETTABLEKS                       R17 R17 K24 ["InputSize"]
       75 DUPCLOSURE                       R18 K25 [PROTO_3]
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R13
       82 CAPTURE                          VAL R14
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R12
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R15
       87 CAPTURE                          VAL R16
       88 CAPTURE                          VAL R17
       89 GETTABLEKS                       R19 R4 K26 ["memo"]
       91 MOVE                             R20 R18
       92 CALL                             R19 1 -1
       93 RETURN                           R19 -1
