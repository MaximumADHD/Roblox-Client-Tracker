PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["Hover"]
        5 JUMPIFEQ                         R0 R3 ; [+8]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K1 ["Pressed"]
       10 JUMPIFEQ                         R0 R3 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useCallback"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U1
       11 NEWTABLE                         R5 0 0
       13 CALL                             R3 2 1
       14 GETUPVAL                         R4 2
       15 GETUPVAL                         R5 3
       16 DUPTABLE                         R6 K9 [{["tag"] = "auto-xy radius-medium clip", ["BackgroundTransparency"] = 1, ["onStateChanged"], ["testId"], ["LayoutOrder"]}]
       17 SETTABLEKS                       R3 R6 K6 ["onStateChanged"]
       19 GETUPVAL                         R7 4
       20 GETTABLEKS                       R7 R7 K10 ["AttachedImagePreview"]
       22 GETTABLEKS                       R7 R7 K11 ["Container"]
       24 SETTABLEKS                       R7 R6 K7 ["testId"]
       26 GETTABLEKS                       R7 R0 K8 ["LayoutOrder"]
       28 SETTABLEKS                       R7 R6 K8 ["LayoutOrder"]
       30 DUPTABLE                         R7 K14 [{"ImageContent", "RemoveButtonContainer"}]
       31 GETUPVAL                         R8 2
       32 GETUPVAL                         R9 5
       33 DUPTABLE                         R10 K18 [{["imageContent"], ["style"] = "attachment"}]
       34 DUPTABLE                         R11 K24 [{["type"] = "image", ["data"], ["mimeType"] = "image/png"}]
       35 GETTABLEKS                       R12 R0 K25 ["imageData"]
       37 SETTABLEKS                       R12 R11 K21 ["data"]
       39 SETTABLEKS                       R11 R10 K15 ["imageContent"]
       41 CALL                             R8 2 1
       42 SETTABLEKS                       R8 R7 K12 ["ImageContent"]
       44 MOVE                             R8 R1
       45 JUMPIFNOT                        R8 ; [+99]
       46 GETUPVAL                         R9 6
       47 GETTABLEKS                       R9 R9 K26 ["FFlagAssistantUseBuilderIcons"]
       49 JUMPIFNOT                        R9 ; [+57]
       50 GETUPVAL                         R8 2
       51 GETUPVAL                         R9 3
       52 DUPTABLE                         R10 K33 [{["tag"] = "auto-xy padding-xxsmall radius-small bg-over-media-0", ["onActivated"], ["AnchorPoint"], ["Position"], ["ZIndex"] = 2, ["testId"]}]
       53 GETTABLEKS                       R11 R0 K34 ["onRemove"]
       55 SETTABLEKS                       R11 R10 K28 ["onActivated"]
       57 GETIMPORT                        R11 K37 [Vector2.new]
       59 LOADN                            R12 1
       60 LOADN                            R13 0
       61 CALL                             R11 2 1
       62 SETTABLEKS                       R11 R10 K29 ["AnchorPoint"]
       64 GETIMPORT                        R11 K39 [UDim2.new]
       66 LOADN                            R12 1
       67 LOADN                            R13 -2
       68 LOADN                            R14 0
       69 LOADN                            R15 2
       70 CALL                             R11 4 1
       71 SETTABLEKS                       R11 R10 K30 ["Position"]
       73 GETUPVAL                         R11 4
       74 GETTABLEKS                       R11 R11 K10 ["AttachedImagePreview"]
       76 GETTABLEKS                       R11 R11 K40 ["Remove"]
       78 SETTABLEKS                       R11 R10 K7 ["testId"]
       80 DUPTABLE                         R11 K42 [{"RemoveIcon"}]
       81 GETUPVAL                         R12 2
       82 GETUPVAL                         R13 7
       83 DUPTABLE                         R14 K45 [{"name", "size"}]
       84 GETUPVAL                         R15 8
       85 GETTABLEKS                       R15 R15 K46 ["Enums"]
       87 GETTABLEKS                       R15 R15 K47 ["IconName"]
       89 GETTABLEKS                       R15 R15 K48 ["X"]
       91 SETTABLEKS                       R15 R14 K43 ["name"]
       93 GETUPVAL                         R15 8
       94 GETTABLEKS                       R15 R15 K46 ["Enums"]
       96 GETTABLEKS                       R15 R15 K49 ["IconSize"]
       98 GETTABLEKS                       R15 R15 K50 ["XSmall"]
      100 SETTABLEKS                       R15 R14 K44 ["size"]
      102 CALL                             R12 2 1
      103 SETTABLEKS                       R12 R11 K41 ["RemoveIcon"]
      105 CALL                             R8 3 1
      106 JUMP                             ; [+38]
      107 GETUPVAL                         R8 2
      108 GETUPVAL                         R9 3
      109 DUPTABLE                         R10 K52 [{["tag"] = "size-400-400 clip", ["Position"], ["AnchorPoint"], ["ZIndex"] = 2}]
      110 GETIMPORT                        R11 K39 [UDim2.new]
      112 LOADN                            R12 1
      113 LOADN                            R13 -2
      114 LOADN                            R14 0
      115 LOADN                            R15 2
      116 CALL                             R11 4 1
      117 SETTABLEKS                       R11 R10 K30 ["Position"]
      119 GETIMPORT                        R11 K37 [Vector2.new]
      121 LOADN                            R12 1
      122 LOADN                            R13 0
      123 CALL                             R11 2 1
      124 SETTABLEKS                       R11 R10 K29 ["AnchorPoint"]
      126 DUPTABLE                         R11 K54 [{"RemoveButton"}]
      127 GETUPVAL                         R12 2
      128 GETUPVAL                         R13 9
      129 DUPTABLE                         R14 K62 [{["icon"] = "icons/navigation/close_small", ["tag"] = "align-x-center align-y-center size-full-full radius-small bg-over-media-0", ["iconTag"] = "size-300-300", ["onActivated"], ["testId"], ["skipBackgroundColoringDisabled"] = True}]
      130 GETTABLEKS                       R15 R0 K34 ["onRemove"]
      132 SETTABLEKS                       R15 R14 K28 ["onActivated"]
      134 GETUPVAL                         R15 4
      135 GETTABLEKS                       R15 R15 K10 ["AttachedImagePreview"]
      137 GETTABLEKS                       R15 R15 K40 ["Remove"]
      139 SETTABLEKS                       R15 R14 K7 ["testId"]
      141 CALL                             R12 2 1
      142 SETTABLEKS                       R12 R11 K53 ["RemoveButton"]
      144 CALL                             R8 3 1
      145 SETTABLEKS                       R8 R7 K13 ["RemoveButtonContainer"]
      147 CALL                             R4 3 -1
      148 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["CustomIconButton"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K6 ["Components"]
       30 GETTABLEKS                       R5 R5 K11 ["ImageContent"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K9 ["Parent"]
       37 GETTABLEKS                       R6 R6 K12 ["React"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K13 ["Util"]
       44 GETTABLEKS                       R7 R7 K14 ["TestIds"]
       46 CALL                             R6 1 1
       47 GETTABLEKS                       R7 R3 K15 ["Icon"]
       49 GETTABLEKS                       R8 R3 K16 ["View"]
       51 GETTABLEKS                       R9 R3 K17 ["Enums"]
       53 GETTABLEKS                       R9 R9 K18 ["ControlState"]
       55 GETTABLEKS                       R10 R5 K19 ["createElement"]
       57 DUPCLOSURE                       R11 K20 [PROTO_1]
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R10
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R1
       68 GETTABLEKS                       R12 R5 K21 ["memo"]
       70 MOVE                             R13 R11
       71 CALL                             R12 1 -1
       72 RETURN                           R12 -1
