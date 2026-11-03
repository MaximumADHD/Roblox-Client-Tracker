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
       17 GETTABLEKS                       R8 R0 K10 ["onRemove"]
       19 JUMPIFNOT                        R8 ; [+2]
       20 MOVE                             R7 R3
       21 JUMP                             ; [+1]
       22 LOADNIL                          R7
       23 SETTABLEKS                       R7 R6 K6 ["onStateChanged"]
       25 GETUPVAL                         R7 4
       26 GETTABLEKS                       R7 R7 K11 ["AttachedImagePreview"]
       28 GETTABLEKS                       R7 R7 K12 ["Container"]
       30 SETTABLEKS                       R7 R6 K7 ["testId"]
       32 GETTABLEKS                       R7 R0 K8 ["LayoutOrder"]
       34 SETTABLEKS                       R7 R6 K8 ["LayoutOrder"]
       36 DUPTABLE                         R7 K15 [{"ImageContent", "RemoveButtonContainer"}]
       37 GETUPVAL                         R8 2
       38 GETUPVAL                         R9 5
       39 DUPTABLE                         R10 K19 [{["imageContent"], ["style"] = "attachment"}]
       40 DUPTABLE                         R11 K25 [{["type"] = "image", ["data"], ["mimeType"] = "image/png"}]
       41 GETTABLEKS                       R12 R0 K26 ["imageData"]
       43 SETTABLEKS                       R12 R11 K22 ["data"]
       45 SETTABLEKS                       R11 R10 K16 ["imageContent"]
       47 CALL                             R8 2 1
       48 SETTABLEKS                       R8 R7 K13 ["ImageContent"]
       50 GETTABLEKS                       R8 R0 K10 ["onRemove"]
       52 JUMPIFNOT                        R8 ; [+58]
       53 MOVE                             R8 R1
       54 JUMPIFNOT                        R8 ; [+56]
       55 GETUPVAL                         R8 2
       56 GETUPVAL                         R9 3
       57 DUPTABLE                         R10 K33 [{["tag"] = "auto-xy padding-xxsmall radius-small bg-over-media-0", ["onActivated"], ["AnchorPoint"], ["Position"], ["ZIndex"] = 2, ["testId"]}]
       58 GETTABLEKS                       R11 R0 K10 ["onRemove"]
       60 SETTABLEKS                       R11 R10 K28 ["onActivated"]
       62 GETIMPORT                        R11 K36 [Vector2.new]
       64 LOADN                            R12 1
       65 LOADN                            R13 0
       66 CALL                             R11 2 1
       67 SETTABLEKS                       R11 R10 K29 ["AnchorPoint"]
       69 GETIMPORT                        R11 K38 [UDim2.new]
       71 LOADN                            R12 1
       72 LOADN                            R13 -2
       73 LOADN                            R14 0
       74 LOADN                            R15 2
       75 CALL                             R11 4 1
       76 SETTABLEKS                       R11 R10 K30 ["Position"]
       78 GETUPVAL                         R11 4
       79 GETTABLEKS                       R11 R11 K11 ["AttachedImagePreview"]
       81 GETTABLEKS                       R11 R11 K39 ["Remove"]
       83 SETTABLEKS                       R11 R10 K7 ["testId"]
       85 DUPTABLE                         R11 K41 [{"RemoveIcon"}]
       86 GETUPVAL                         R12 2
       87 GETUPVAL                         R13 6
       88 DUPTABLE                         R14 K44 [{"name", "size"}]
       89 GETUPVAL                         R15 7
       90 GETTABLEKS                       R15 R15 K45 ["Enums"]
       92 GETTABLEKS                       R15 R15 K46 ["IconName"]
       94 GETTABLEKS                       R15 R15 K47 ["X"]
       96 SETTABLEKS                       R15 R14 K42 ["name"]
       98 GETUPVAL                         R15 7
       99 GETTABLEKS                       R15 R15 K45 ["Enums"]
      101 GETTABLEKS                       R15 R15 K48 ["IconSize"]
      103 GETTABLEKS                       R15 R15 K49 ["XSmall"]
      105 SETTABLEKS                       R15 R14 K43 ["size"]
      107 CALL                             R12 2 1
      108 SETTABLEKS                       R12 R11 K40 ["RemoveIcon"]
      110 CALL                             R8 3 1
      111 SETTABLEKS                       R8 R7 K14 ["RemoveButtonContainer"]
      113 CALL                             R4 3 -1
      114 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["ImageContent"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Util"]
       32 GETTABLEKS                       R5 R5 K12 ["TestIds"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R1 K13 ["Icon"]
       37 GETTABLEKS                       R6 R1 K14 ["View"]
       39 GETTABLEKS                       R7 R1 K15 ["Enums"]
       41 GETTABLEKS                       R7 R7 K16 ["ControlState"]
       43 GETTABLEKS                       R8 R3 K17 ["createElement"]
       45 DUPCLOSURE                       R9 K18 [PROTO_1]
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R7
       48 CAPTURE                          VAL R8
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R1
       54 GETTABLEKS                       R10 R3 K19 ["memo"]
       56 MOVE                             R11 R9
       57 CALL                             R10 1 -1
       58 RETURN                           R10 -1
