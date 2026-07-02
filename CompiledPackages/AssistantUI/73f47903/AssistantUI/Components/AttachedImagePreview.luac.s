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
       45 JUMPIFNOT                        R8 ; [+98]
       46 GETUPVAL                         R9 6
       47 CALL                             R9 0 1
       48 JUMPIFNOT                        R9 ; [+57]
       49 GETUPVAL                         R8 2
       50 GETUPVAL                         R9 3
       51 DUPTABLE                         R10 K32 [{["tag"] = "auto-xy padding-xxsmall radius-small bg-over-media-0", ["onActivated"], ["AnchorPoint"], ["Position"], ["ZIndex"] = 2, ["testId"]}]
       52 GETTABLEKS                       R11 R0 K33 ["onRemove"]
       54 SETTABLEKS                       R11 R10 K27 ["onActivated"]
       56 GETIMPORT                        R11 K36 [Vector2.new]
       58 LOADN                            R12 1
       59 LOADN                            R13 0
       60 CALL                             R11 2 1
       61 SETTABLEKS                       R11 R10 K28 ["AnchorPoint"]
       63 GETIMPORT                        R11 K38 [UDim2.new]
       65 LOADN                            R12 1
       66 LOADN                            R13 -2
       67 LOADN                            R14 0
       68 LOADN                            R15 2
       69 CALL                             R11 4 1
       70 SETTABLEKS                       R11 R10 K29 ["Position"]
       72 GETUPVAL                         R11 4
       73 GETTABLEKS                       R11 R11 K10 ["AttachedImagePreview"]
       75 GETTABLEKS                       R11 R11 K39 ["Remove"]
       77 SETTABLEKS                       R11 R10 K7 ["testId"]
       79 DUPTABLE                         R11 K41 [{"RemoveIcon"}]
       80 GETUPVAL                         R12 2
       81 GETUPVAL                         R13 7
       82 DUPTABLE                         R14 K44 [{"name", "size"}]
       83 GETUPVAL                         R15 8
       84 GETTABLEKS                       R15 R15 K45 ["Enums"]
       86 GETTABLEKS                       R15 R15 K46 ["IconName"]
       88 GETTABLEKS                       R15 R15 K47 ["X"]
       90 SETTABLEKS                       R15 R14 K42 ["name"]
       92 GETUPVAL                         R15 8
       93 GETTABLEKS                       R15 R15 K45 ["Enums"]
       95 GETTABLEKS                       R15 R15 K48 ["IconSize"]
       97 GETTABLEKS                       R15 R15 K49 ["XSmall"]
       99 SETTABLEKS                       R15 R14 K43 ["size"]
      101 CALL                             R12 2 1
      102 SETTABLEKS                       R12 R11 K40 ["RemoveIcon"]
      104 CALL                             R8 3 1
      105 JUMP                             ; [+38]
      106 GETUPVAL                         R8 2
      107 GETUPVAL                         R9 3
      108 DUPTABLE                         R10 K51 [{["tag"] = "size-400-400 clip", ["Position"], ["AnchorPoint"], ["ZIndex"] = 2}]
      109 GETIMPORT                        R11 K38 [UDim2.new]
      111 LOADN                            R12 1
      112 LOADN                            R13 -2
      113 LOADN                            R14 0
      114 LOADN                            R15 2
      115 CALL                             R11 4 1
      116 SETTABLEKS                       R11 R10 K29 ["Position"]
      118 GETIMPORT                        R11 K36 [Vector2.new]
      120 LOADN                            R12 1
      121 LOADN                            R13 0
      122 CALL                             R11 2 1
      123 SETTABLEKS                       R11 R10 K28 ["AnchorPoint"]
      125 DUPTABLE                         R11 K53 [{"RemoveButton"}]
      126 GETUPVAL                         R12 2
      127 GETUPVAL                         R13 9
      128 DUPTABLE                         R14 K61 [{["icon"] = "icons/navigation/close_small", ["tag"] = "align-x-center align-y-center size-full-full radius-small bg-over-media-0", ["iconTag"] = "size-300-300", ["onActivated"], ["testId"], ["skipBackgroundColoringDisabled"] = True}]
      129 GETTABLEKS                       R15 R0 K33 ["onRemove"]
      131 SETTABLEKS                       R15 R14 K27 ["onActivated"]
      133 GETUPVAL                         R15 4
      134 GETTABLEKS                       R15 R15 K10 ["AttachedImagePreview"]
      136 GETTABLEKS                       R15 R15 K39 ["Remove"]
      138 SETTABLEKS                       R15 R14 K7 ["testId"]
      140 CALL                             R12 2 1
      141 SETTABLEKS                       R12 R11 K52 ["RemoveButton"]
      143 CALL                             R8 3 1
      144 SETTABLEKS                       R8 R7 K13 ["RemoveButtonContainer"]
      146 CALL                             R4 3 -1
      147 RETURN                           R4 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["ImageContent"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Util"]
       39 GETTABLEKS                       R6 R6 K13 ["TestIds"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Flags"]
       46 GETTABLEKS                       R7 R7 K15 ["FFlagAssistantUseBuilderIcons"]
       48 CALL                             R6 1 1
       49 GETTABLEKS                       R7 R2 K16 ["Icon"]
       51 GETTABLEKS                       R8 R2 K17 ["View"]
       53 GETTABLEKS                       R9 R2 K18 ["Enums"]
       55 GETTABLEKS                       R9 R9 K19 ["ControlState"]
       57 GETTABLEKS                       R10 R4 K20 ["createElement"]
       59 DUPCLOSURE                       R11 K21 [PROTO_1]
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R10
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R1
       70 GETTABLEKS                       R12 R4 K22 ["memo"]
       72 MOVE                             R13 R11
       73 CALL                             R12 1 -1
       74 RETURN                           R12 -1
