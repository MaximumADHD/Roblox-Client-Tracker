PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SelectionChangedHandle"]
        3 JUMPIFNOT                        R1 ; [+10]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["SelectionChangedHandle"]
        7 NAMECALL                         R1 R1 K1 ["Disconnect"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 0
       11 LOADNIL                          R2
       12 SETTABLEKS                       R2 R1 K0 ["SelectionChangedHandle"]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K2 ["props"]
       17 GETTABLEKS                       R1 R1 K3 ["OnClose"]
       19 JUMPIFNOT                        R1 ; [+7]
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K2 ["props"]
       23 GETTABLEKS                       R1 R1 K3 ["OnClose"]
       25 MOVE                             R2 R0
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onClose"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onClose"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Localization"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["createElement"]
        7 GETUPVAL                         R3 1
        8 DUPTABLE                         R4 K8 [{"PromptText", "Size", "Buttons", "OnButtonClicked", "OnClose"}]
        9 LOADK                            R7 K9 ["Dialog"]
       10 LOADK                            R8 K10 ["SelectTarget"]
       11 NAMECALL                         R5 R1 K11 ["getText"]
       13 CALL                             R5 3 1
       14 SETTABLEKS                       R5 R4 K3 ["PromptText"]
       16 GETIMPORT                        R5 K14 [UDim2.new]
       18 LOADN                            R6 0
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R7 R7 K15 ["PROMPT_SIZE"]
       22 GETTABLEKS                       R7 R7 K16 ["Width"]
       24 GETTABLEKS                       R7 R7 K17 ["Offset"]
       26 LOADN                            R8 0
       27 LOADN                            R9 180
       28 CALL                             R5 4 1
       29 SETTABLEKS                       R5 R4 K4 ["Size"]
       31 NEWTABLE                         R5 0 1
       33 DUPTABLE                         R6 K23 [{["Key"] = False, ["Text"], ["Style"] = "Round"}]
       34 LOADK                            R9 K9 ["Dialog"]
       35 LOADK                            R10 K24 ["Cancel"]
       36 NAMECALL                         R7 R1 K11 ["getText"]
       38 CALL                             R7 3 1
       39 SETTABLEKS                       R7 R6 K20 ["Text"]
       41 SETLIST                          R5 R6 1 [1]
       43 SETTABLEKS                       R5 R4 K5 ["Buttons"]
       45 NEWCLOSURE                       R5 P0
       46 CAPTURE                          VAL R0
       47 SETTABLEKS                       R5 R4 K6 ["OnButtonClicked"]
       49 GETTABLEKS                       R5 R0 K25 ["onClose"]
       51 SETTABLEKS                       R5 R4 K7 ["OnClose"]
       53 CALL                             R2 2 -1
       54 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 1
        4 LENGTH                           R1 R0
        5 LOADN                            R2 0
        6 JUMPIFNOTLT                      R2 R1 ; [+6]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K1 ["onClose"]
       11 GETTABLEN                        R2 R0 1
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["SetIsSelectingTarget"]
        4 LOADB                            R2 1
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 0
        7 NEWTABLE                         R3 0 0
        9 NAMECALL                         R1 R1 K2 ["Set"]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K3 ["SelectionChanged"]
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          VAL R0
       18 NAMECALL                         R1 R1 K4 ["Connect"]
       20 CALL                             R1 2 1
       21 SETTABLEKS                       R1 R0 K5 ["SelectionChangedHandle"]
       23 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["SelectionChangedHandle"]
        2 JUMPIFEQKNIL                     R1 ; [+9]
        4 GETTABLEKS                       R1 R0 K0 ["SelectionChangedHandle"]
        6 NAMECALL                         R1 R1 K1 ["Disconnect"]
        8 CALL                             R1 1 0
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K0 ["SelectionChangedHandle"]
       12 GETTABLEKS                       R1 R0 K2 ["props"]
       14 GETTABLEKS                       R1 R1 K3 ["SetIsSelectingTarget"]
       16 LOADB                            R2 0
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K1 [{"SetIsSelectingTarget"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetIsSelectingTarget"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimationClipEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Roact"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["RoactRodux"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["Framework"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K14 ["ContextServices"]
       36 GETTABLEKS                       R6 R5 K15 ["withContext"]
       38 GETTABLEKS                       R7 R1 K16 ["Src"]
       40 GETTABLEKS                       R7 R7 K17 ["Actions"]
       42 GETIMPORT                        R8 K9 [require]
       44 GETTABLEKS                       R9 R7 K18 ["SetIsSelectingTarget"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K9 [require]
       49 GETTABLEKS                       R10 R1 K16 ["Src"]
       51 GETTABLEKS                       R10 R10 K19 ["Util"]
       53 GETTABLEKS                       R10 R10 K20 ["Constants"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K9 [require]
       58 GETTABLEKS                       R11 R1 K16 ["Src"]
       60 GETTABLEKS                       R11 R11 K21 ["Components"]
       62 GETTABLEKS                       R11 R11 K22 ["EditEventsDialog"]
       64 GETTABLEKS                       R11 R11 K23 ["FocusedPrompt"]
       66 CALL                             R10 1 1
       67 GETTABLEKS                       R11 R2 K24 ["PureComponent"]
       69 LOADK                            R13 K25 ["SelectTargetPrompt"]
       70 NAMECALL                         R11 R11 K26 ["extend"]
       72 CALL                             R11 2 1
       73 DUPCLOSURE                       R12 K27 [PROTO_1]
       74 SETTABLEKS                       R12 R11 K28 ["init"]
       76 DUPCLOSURE                       R12 K29 [PROTO_3]
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R9
       80 SETTABLEKS                       R12 R11 K30 ["render"]
       82 DUPCLOSURE                       R12 K31 [PROTO_5]
       83 CAPTURE                          VAL R0
       84 SETTABLEKS                       R12 R11 K32 ["didMount"]
       86 DUPCLOSURE                       R12 K33 [PROTO_6]
       87 SETTABLEKS                       R12 R11 K34 ["willUnmount"]
       89 DUPCLOSURE                       R12 K35 [PROTO_8]
       90 CAPTURE                          VAL R8
       91 MOVE                             R13 R6
       92 DUPTABLE                         R14 K37 [{"Localization"}]
       93 GETTABLEKS                       R15 R5 K36 ["Localization"]
       95 SETTABLEKS                       R15 R14 K36 ["Localization"]
       97 CALL                             R13 1 1
       98 MOVE                             R14 R11
       99 CALL                             R13 1 1
      100 MOVE                             R11 R13
      101 GETTABLEKS                       R13 R3 K38 ["connect"]
      103 LOADNIL                          R14
      104 MOVE                             R15 R12
      105 CALL                             R13 2 1
      106 MOVE                             R14 R11
      107 CALL                             R13 1 -1
      108 RETURN                           R13 -1
