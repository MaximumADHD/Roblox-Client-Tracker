PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["Hover"]
        5 JUMPIFEQ                         R0 R3 ; [+8]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K1 ["Pressed"]
       10 JUMPIFEQ                         R0 R3 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["useCallback"]
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
       53 JUMPIFNOT                        R8 ; [+56]
       54 GETUPVAL                         R8 2
       55 GETUPVAL                         R9 3
       56 DUPTABLE                         R10 K25 [{"tag", "Position", "AnchorPoint", "ZIndex"}]
       57 LOADK                            R11 K26 ["size-400-400 clip"]
       58 SETTABLEKS                       R11 R10 K2 ["tag"]
       60 GETIMPORT                        R11 K29 [UDim2.new]
       62 LOADN                            R12 1
       63 LOADN                            R13 254
       64 LOADN                            R14 0
       65 LOADN                            R15 2
       66 CALL                             R11 4 1
       67 SETTABLEKS                       R11 R10 K22 ["Position"]
       69 GETIMPORT                        R11 K31 [Vector2.new]
       71 LOADN                            R12 1
       72 LOADN                            R13 0
       73 CALL                             R11 2 1
       74 SETTABLEKS                       R11 R10 K23 ["AnchorPoint"]
       76 LOADN                            R11 2
       77 SETTABLEKS                       R11 R10 K24 ["ZIndex"]
       79 DUPTABLE                         R11 K33 [{"RemoveButton"}]
       80 GETUPVAL                         R12 2
       81 GETUPVAL                         R13 5
       82 DUPTABLE                         R14 K39 [{"icon", "tag", "iconTag", "onActivated", "testId", "skipBackgroundColoringDisabled"}]
       83 LOADK                            R15 K40 ["icons/navigation/close_small"]
       84 SETTABLEKS                       R15 R14 K34 ["icon"]
       86 LOADK                            R15 K41 ["size-full-full radius-small bg-over-media-0 align-x-center align-y-center"]
       87 SETTABLEKS                       R15 R14 K2 ["tag"]
       89 LOADK                            R15 K42 ["size-300-300"]
       90 SETTABLEKS                       R15 R14 K35 ["iconTag"]
       92 GETTABLEKS                       R15 R0 K43 ["onRemove"]
       94 SETTABLEKS                       R15 R14 K36 ["onActivated"]
       96 GETUPVAL                         R17 6
       97 GETTABLEKS                       R16 R17 K44 ["AttachedImagePreview"]
       99 GETTABLEKS                       R15 R16 K45 ["Remove"]
      101 SETTABLEKS                       R15 R14 K37 ["testId"]
      103 LOADB                            R15 1
      104 SETTABLEKS                       R15 R14 K38 ["skipBackgroundColoringDisabled"]
      106 CALL                             R12 2 1
      107 SETTABLEKS                       R12 R11 K32 ["RemoveButton"]
      109 CALL                             R8 3 1
      110 SETTABLEKS                       R8 R7 K9 ["RemoveButtonContainer"]
      112 CALL                             R4 3 -1
      113 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["CustomIconButton"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Components"]
       25 GETTABLEKS                       R4 R5 K10 ["ImageContent"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R6 K11 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Util"]
       39 GETTABLEKS                       R6 R7 K13 ["TestIds"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R7 R2 K14 ["Enums"]
       44 GETTABLEKS                       R6 R7 K15 ["ControlState"]
       46 GETTABLEKS                       R7 R2 K16 ["View"]
       48 GETTABLEKS                       R8 R4 K17 ["createElement"]
       50 DUPCLOSURE                       R9 K18 [PROTO_1]
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R5
       58 GETTABLEKS                       R10 R4 K19 ["memo"]
       60 MOVE                             R11 R9
       61 CALL                             R10 1 -1
       62 RETURN                           R10 -1
