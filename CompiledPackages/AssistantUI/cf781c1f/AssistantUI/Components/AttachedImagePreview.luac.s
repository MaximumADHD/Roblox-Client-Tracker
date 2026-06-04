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
       16 DUPTABLE                         R6 K6 [{"tag", "BackgroundTransparency", "onStateChanged", "LayoutOrder"}]
       17 LOADK                            R7 K7 ["auto-xy radius-medium clip"]
       18 SETTABLEKS                       R7 R6 K2 ["tag"]
       20 LOADN                            R7 1
       21 SETTABLEKS                       R7 R6 K3 ["BackgroundTransparency"]
       23 SETTABLEKS                       R3 R6 K4 ["onStateChanged"]
       25 GETTABLEKS                       R7 R0 K5 ["LayoutOrder"]
       27 SETTABLEKS                       R7 R6 K5 ["LayoutOrder"]
       29 DUPTABLE                         R7 K10 [{"ImageContent", "RemoveButtonContainer"}]
       30 GETUPVAL                         R8 2
       31 GETUPVAL                         R9 4
       32 DUPTABLE                         R10 K13 [{"imageContent", "style"}]
       33 DUPTABLE                         R11 K17 [{"type", "data", "mimeType"}]
       34 LOADK                            R12 K18 ["image"]
       35 SETTABLEKS                       R12 R11 K14 ["type"]
       37 GETTABLEKS                       R12 R0 K19 ["imageData"]
       39 SETTABLEKS                       R12 R11 K15 ["data"]
       41 LOADK                            R12 K20 ["image/png"]
       42 SETTABLEKS                       R12 R11 K16 ["mimeType"]
       44 SETTABLEKS                       R11 R10 K11 ["imageContent"]
       46 LOADK                            R11 K21 ["attachment"]
       47 SETTABLEKS                       R11 R10 K12 ["style"]
       49 CALL                             R8 2 1
       50 SETTABLEKS                       R8 R7 K8 ["ImageContent"]
       52 MOVE                             R8 R1
       53 JUMPIFNOT                        R8 ; [+122]
       54 GETUPVAL                         R9 5
       55 CALL                             R9 0 1
       56 JUMPIFNOT                        R9 ; [+63]
       57 GETUPVAL                         R8 2
       58 GETUPVAL                         R9 3
       59 DUPTABLE                         R10 K27 [{"tag", "onActivated", "AnchorPoint", "Position", "ZIndex", "testId"}]
       60 LOADK                            R11 K28 ["auto-xy radius-small padding-xxsmall bg-over-media-0"]
       61 SETTABLEKS                       R11 R10 K2 ["tag"]
       63 GETTABLEKS                       R11 R0 K29 ["onRemove"]
       65 SETTABLEKS                       R11 R10 K22 ["onActivated"]
       67 GETIMPORT                        R11 K32 [Vector2.new]
       69 LOADN                            R12 1
       70 LOADN                            R13 0
       71 CALL                             R11 2 1
       72 SETTABLEKS                       R11 R10 K23 ["AnchorPoint"]
       74 GETIMPORT                        R11 K34 [UDim2.new]
       76 LOADN                            R12 1
       77 LOADN                            R13 254
       78 LOADN                            R14 0
       79 LOADN                            R15 2
       80 CALL                             R11 4 1
       81 SETTABLEKS                       R11 R10 K24 ["Position"]
       83 LOADN                            R11 2
       84 SETTABLEKS                       R11 R10 K25 ["ZIndex"]
       86 GETUPVAL                         R11 6
       87 GETTABLEKS                       R11 R11 K35 ["AttachedImagePreview"]
       89 GETTABLEKS                       R11 R11 K36 ["Remove"]
       91 SETTABLEKS                       R11 R10 K26 ["testId"]
       93 DUPTABLE                         R11 K38 [{"RemoveIcon"}]
       94 GETUPVAL                         R12 2
       95 GETUPVAL                         R13 7
       96 DUPTABLE                         R14 K41 [{"name", "size"}]
       97 GETUPVAL                         R15 8
       98 GETTABLEKS                       R15 R15 K42 ["Enums"]
      100 GETTABLEKS                       R15 R15 K43 ["IconName"]
      102 GETTABLEKS                       R15 R15 K44 ["X"]
      104 SETTABLEKS                       R15 R14 K39 ["name"]
      106 GETUPVAL                         R15 8
      107 GETTABLEKS                       R15 R15 K42 ["Enums"]
      109 GETTABLEKS                       R15 R15 K45 ["IconSize"]
      111 GETTABLEKS                       R15 R15 K46 ["XSmall"]
      113 SETTABLEKS                       R15 R14 K40 ["size"]
      115 CALL                             R12 2 1
      116 SETTABLEKS                       R12 R11 K37 ["RemoveIcon"]
      118 CALL                             R8 3 1
      119 JUMP                             ; [+56]
      120 GETUPVAL                         R8 2
      121 GETUPVAL                         R9 3
      122 DUPTABLE                         R10 K47 [{"tag", "Position", "AnchorPoint", "ZIndex"}]
      123 LOADK                            R11 K48 ["size-400-400 clip"]
      124 SETTABLEKS                       R11 R10 K2 ["tag"]
      126 GETIMPORT                        R11 K34 [UDim2.new]
      128 LOADN                            R12 1
      129 LOADN                            R13 254
      130 LOADN                            R14 0
      131 LOADN                            R15 2
      132 CALL                             R11 4 1
      133 SETTABLEKS                       R11 R10 K24 ["Position"]
      135 GETIMPORT                        R11 K32 [Vector2.new]
      137 LOADN                            R12 1
      138 LOADN                            R13 0
      139 CALL                             R11 2 1
      140 SETTABLEKS                       R11 R10 K23 ["AnchorPoint"]
      142 LOADN                            R11 2
      143 SETTABLEKS                       R11 R10 K25 ["ZIndex"]
      145 DUPTABLE                         R11 K50 [{"RemoveButton"}]
      146 GETUPVAL                         R12 2
      147 GETUPVAL                         R13 9
      148 DUPTABLE                         R14 K54 [{"icon", "tag", "iconTag", "onActivated", "testId", "skipBackgroundColoringDisabled"}]
      149 LOADK                            R15 K55 ["icons/navigation/close_small"]
      150 SETTABLEKS                       R15 R14 K51 ["icon"]
      152 LOADK                            R15 K56 ["size-full-full radius-small bg-over-media-0 align-x-center align-y-center"]
      153 SETTABLEKS                       R15 R14 K2 ["tag"]
      155 LOADK                            R15 K57 ["size-300-300"]
      156 SETTABLEKS                       R15 R14 K52 ["iconTag"]
      158 GETTABLEKS                       R15 R0 K29 ["onRemove"]
      160 SETTABLEKS                       R15 R14 K22 ["onActivated"]
      162 GETUPVAL                         R15 6
      163 GETTABLEKS                       R15 R15 K35 ["AttachedImagePreview"]
      165 GETTABLEKS                       R15 R15 K36 ["Remove"]
      167 SETTABLEKS                       R15 R14 K26 ["testId"]
      169 LOADB                            R15 1
      170 SETTABLEKS                       R15 R14 K53 ["skipBackgroundColoringDisabled"]
      172 CALL                             R12 2 1
      173 SETTABLEKS                       R12 R11 K49 ["RemoveButton"]
      175 CALL                             R8 3 1
      176 SETTABLEKS                       R8 R7 K9 ["RemoveButtonContainer"]
      178 CALL                             R4 3 -1
      179 RETURN                           R4 -1

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
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R1
       70 GETTABLEKS                       R12 R4 K22 ["memo"]
       72 MOVE                             R13 R11
       73 CALL                             R12 1 -1
       74 RETURN                           R12 -1
