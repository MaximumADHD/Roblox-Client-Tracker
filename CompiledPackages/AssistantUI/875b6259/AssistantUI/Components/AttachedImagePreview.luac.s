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
       16 DUPTABLE                         R6 K7 [{"tag", "BackgroundTransparency", "onStateChanged", "testId", "LayoutOrder"}]
       17 LOADK                            R7 K8 ["auto-xy radius-medium clip"]
       18 SETTABLEKS                       R7 R6 K2 ["tag"]
       20 LOADN                            R7 1
       21 SETTABLEKS                       R7 R6 K3 ["BackgroundTransparency"]
       23 SETTABLEKS                       R3 R6 K4 ["onStateChanged"]
       25 GETUPVAL                         R7 4
       26 GETTABLEKS                       R7 R7 K9 ["AttachedImagePreview"]
       28 GETTABLEKS                       R7 R7 K10 ["Container"]
       30 SETTABLEKS                       R7 R6 K5 ["testId"]
       32 GETTABLEKS                       R7 R0 K6 ["LayoutOrder"]
       34 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
       36 DUPTABLE                         R7 K13 [{"ImageContent", "RemoveButtonContainer"}]
       37 GETUPVAL                         R8 2
       38 GETUPVAL                         R9 5
       39 DUPTABLE                         R10 K16 [{"imageContent", "style"}]
       40 DUPTABLE                         R11 K20 [{"type", "data", "mimeType"}]
       41 LOADK                            R12 K21 ["image"]
       42 SETTABLEKS                       R12 R11 K17 ["type"]
       44 GETTABLEKS                       R12 R0 K22 ["imageData"]
       46 SETTABLEKS                       R12 R11 K18 ["data"]
       48 LOADK                            R12 K23 ["image/png"]
       49 SETTABLEKS                       R12 R11 K19 ["mimeType"]
       51 SETTABLEKS                       R11 R10 K14 ["imageContent"]
       53 LOADK                            R11 K24 ["attachment"]
       54 SETTABLEKS                       R11 R10 K15 ["style"]
       56 CALL                             R8 2 1
       57 SETTABLEKS                       R8 R7 K11 ["ImageContent"]
       59 MOVE                             R8 R1
       60 JUMPIFNOT                        R8 ; [+122]
       61 GETUPVAL                         R9 6
       62 CALL                             R9 0 1
       63 JUMPIFNOT                        R9 ; [+63]
       64 GETUPVAL                         R8 2
       65 GETUPVAL                         R9 3
       66 DUPTABLE                         R10 K29 [{"tag", "onActivated", "AnchorPoint", "Position", "ZIndex", "testId"}]
       67 LOADK                            R11 K30 ["auto-xy radius-small padding-xxsmall bg-over-media-0"]
       68 SETTABLEKS                       R11 R10 K2 ["tag"]
       70 GETTABLEKS                       R11 R0 K31 ["onRemove"]
       72 SETTABLEKS                       R11 R10 K25 ["onActivated"]
       74 GETIMPORT                        R11 K34 [Vector2.new]
       76 LOADN                            R12 1
       77 LOADN                            R13 0
       78 CALL                             R11 2 1
       79 SETTABLEKS                       R11 R10 K26 ["AnchorPoint"]
       81 GETIMPORT                        R11 K36 [UDim2.new]
       83 LOADN                            R12 1
       84 LOADN                            R13 254
       85 LOADN                            R14 0
       86 LOADN                            R15 2
       87 CALL                             R11 4 1
       88 SETTABLEKS                       R11 R10 K27 ["Position"]
       90 LOADN                            R11 2
       91 SETTABLEKS                       R11 R10 K28 ["ZIndex"]
       93 GETUPVAL                         R11 4
       94 GETTABLEKS                       R11 R11 K9 ["AttachedImagePreview"]
       96 GETTABLEKS                       R11 R11 K37 ["Remove"]
       98 SETTABLEKS                       R11 R10 K5 ["testId"]
      100 DUPTABLE                         R11 K39 [{"RemoveIcon"}]
      101 GETUPVAL                         R12 2
      102 GETUPVAL                         R13 7
      103 DUPTABLE                         R14 K42 [{"name", "size"}]
      104 GETUPVAL                         R15 8
      105 GETTABLEKS                       R15 R15 K43 ["Enums"]
      107 GETTABLEKS                       R15 R15 K44 ["IconName"]
      109 GETTABLEKS                       R15 R15 K45 ["X"]
      111 SETTABLEKS                       R15 R14 K40 ["name"]
      113 GETUPVAL                         R15 8
      114 GETTABLEKS                       R15 R15 K43 ["Enums"]
      116 GETTABLEKS                       R15 R15 K46 ["IconSize"]
      118 GETTABLEKS                       R15 R15 K47 ["XSmall"]
      120 SETTABLEKS                       R15 R14 K41 ["size"]
      122 CALL                             R12 2 1
      123 SETTABLEKS                       R12 R11 K38 ["RemoveIcon"]
      125 CALL                             R8 3 1
      126 JUMP                             ; [+56]
      127 GETUPVAL                         R8 2
      128 GETUPVAL                         R9 3
      129 DUPTABLE                         R10 K48 [{"tag", "Position", "AnchorPoint", "ZIndex"}]
      130 LOADK                            R11 K49 ["size-400-400 clip"]
      131 SETTABLEKS                       R11 R10 K2 ["tag"]
      133 GETIMPORT                        R11 K36 [UDim2.new]
      135 LOADN                            R12 1
      136 LOADN                            R13 254
      137 LOADN                            R14 0
      138 LOADN                            R15 2
      139 CALL                             R11 4 1
      140 SETTABLEKS                       R11 R10 K27 ["Position"]
      142 GETIMPORT                        R11 K34 [Vector2.new]
      144 LOADN                            R12 1
      145 LOADN                            R13 0
      146 CALL                             R11 2 1
      147 SETTABLEKS                       R11 R10 K26 ["AnchorPoint"]
      149 LOADN                            R11 2
      150 SETTABLEKS                       R11 R10 K28 ["ZIndex"]
      152 DUPTABLE                         R11 K51 [{"RemoveButton"}]
      153 GETUPVAL                         R12 2
      154 GETUPVAL                         R13 9
      155 DUPTABLE                         R14 K55 [{"icon", "tag", "iconTag", "onActivated", "testId", "skipBackgroundColoringDisabled"}]
      156 LOADK                            R15 K56 ["icons/navigation/close_small"]
      157 SETTABLEKS                       R15 R14 K52 ["icon"]
      159 LOADK                            R15 K57 ["size-full-full radius-small bg-over-media-0 align-x-center align-y-center"]
      160 SETTABLEKS                       R15 R14 K2 ["tag"]
      162 LOADK                            R15 K58 ["size-300-300"]
      163 SETTABLEKS                       R15 R14 K53 ["iconTag"]
      165 GETTABLEKS                       R15 R0 K31 ["onRemove"]
      167 SETTABLEKS                       R15 R14 K25 ["onActivated"]
      169 GETUPVAL                         R15 4
      170 GETTABLEKS                       R15 R15 K9 ["AttachedImagePreview"]
      172 GETTABLEKS                       R15 R15 K37 ["Remove"]
      174 SETTABLEKS                       R15 R14 K5 ["testId"]
      176 LOADB                            R15 1
      177 SETTABLEKS                       R15 R14 K54 ["skipBackgroundColoringDisabled"]
      179 CALL                             R12 2 1
      180 SETTABLEKS                       R12 R11 K50 ["RemoveButton"]
      182 CALL                             R8 3 1
      183 SETTABLEKS                       R8 R7 K12 ["RemoveButtonContainer"]
      185 CALL                             R4 3 -1
      186 RETURN                           R4 -1

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
