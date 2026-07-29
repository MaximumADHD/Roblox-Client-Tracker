PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+7]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["current"]
        8 GETTABLEKS                       R0 R0 K1 ["focus"]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_1:
        0 JUMPIFEQKNIL                     R0 ; [+7]
        2 GETTABLEKS                       R1 R0 K0 ["KeyCode"]
        4 GETIMPORT                        R2 K3 [Enum.KeyCode.Escape]
        6 JUMPIFEQ                         R1 R2 ; [+35]
        8 GETUPVAL                         R1 0
        9 NAMECALL                         R1 R1 K4 ["getValue"]
       11 CALL                             R1 1 1
       12 JUMPIFEQKS                       R1 K5 [""] ; [+29]
       14 DUPTABLE                         R2 K9 [{["metaType"] = "Tag", ["name"]}]
       15 SETTABLEKS                       R1 R2 K8 ["name"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K10 ["session"]
       20 GETTABLEKS                       R3 R3 K11 ["beginEditingPropertyAsync"]
       22 MOVE                             R4 R2
       23 CALL                             R3 1 0
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K10 ["session"]
       27 GETTABLEKS                       R3 R3 K12 ["setPropertyPart"]
       29 MOVE                             R4 R2
       30 LOADK                            R5 K13 ["value"]
       31 LOADB                            R6 1
       32 CALL                             R3 3 0
       33 GETUPVAL                         R3 1
       34 GETTABLEKS                       R3 R3 K10 ["session"]
       36 GETTABLEKS                       R3 R3 K14 ["finishEditingProperty"]
       38 MOVE                             R4 R2
       39 GETIMPORT                        R5 K17 [Enum.FinishRecordingOperation.Commit]
       41 CALL                             R3 2 0
       42 GETUPVAL                         R1 2
       43 GETTABLEKS                       R1 R1 K18 ["clearEpehemeralRow"]
       45 GETUPVAL                         R2 3
       46 GETTABLEKS                       R2 R2 K19 ["rows"]
       48 GETTABLEKS                       R2 R2 K20 ["addTag"]
       50 CALL                             R1 1 0
       51 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 CALL                             R2 0 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K2 ["useBinding"]
       12 LOADK                            R4 K3 [""]
       13 CALL                             R3 1 2
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K4 ["useRef"]
       17 LOADNIL                          R6
       18 CALL                             R5 1 1
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R6 R6 K5 ["useEffect"]
       22 NEWCLOSURE                       R7 P0
       23 CAPTURE                          VAL R5
       24 NEWTABLE                         R8 0 0
       26 CALL                             R6 2 0
       27 GETUPVAL                         R6 3
       28 GETTABLEKS                       R6 R6 K6 ["useEventCallback"]
       30 NEWCLOSURE                       R7 P1
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U1
       35 CALL                             R6 1 1
       36 GETUPVAL                         R7 3
       37 GETTABLEKS                       R7 R7 K7 ["createNextOrder"]
       39 CALL                             R7 0 1
       40 GETUPVAL                         R8 4
       41 GETUPVAL                         R9 5
       42 GETTABLEKS                       R9 R9 K8 ["View"]
       44 DUPTABLE                         R10 K13 [{["tag"] = "row align-y-center gap-small", ["LayoutOrder"], ["Size"]}]
       45 GETTABLEKS                       R11 R0 K14 ["layoutOrder"]
       47 SETTABLEKS                       R11 R10 K11 ["LayoutOrder"]
       49 GETIMPORT                        R11 K17 [UDim2.new]
       51 LOADN                            R12 1
       52 LOADN                            R13 0
       53 LOADN                            R14 0
       54 GETTABLEKS                       R15 R2 K18 ["PropertyRow"]
       56 GETTABLEKS                       R15 R15 K19 ["MinHeight"]
       58 CALL                             R11 4 1
       59 SETTABLEKS                       R11 R10 K12 ["Size"]
       61 DUPTABLE                         R11 K23 [{"UIPadding", "Icon", "TextInput"}]
       62 GETUPVAL                         R12 4
       63 LOADK                            R13 K20 ["UIPadding"]
       64 DUPTABLE                         R14 K25 [{"PaddingLeft"}]
       65 GETIMPORT                        R15 K27 [UDim.new]
       67 LOADN                            R16 0
       68 GETTABLEKS                       R17 R2 K18 ["PropertyRow"]
       70 GETTABLEKS                       R17 R17 K28 ["Label"]
       72 GETTABLEKS                       R17 R17 K29 ["IndentWidth"]
       74 CALL                             R15 2 1
       75 SETTABLEKS                       R15 R14 K24 ["PaddingLeft"]
       77 CALL                             R12 2 1
       78 SETTABLEKS                       R12 R11 K20 ["UIPadding"]
       80 GETUPVAL                         R12 4
       81 GETUPVAL                         R13 5
       82 GETTABLEKS                       R13 R13 K21 ["Icon"]
       84 DUPTABLE                         R14 K32 [{"name", "size", "LayoutOrder"}]
       85 GETUPVAL                         R15 5
       86 GETTABLEKS                       R15 R15 K33 ["Enums"]
       88 GETTABLEKS                       R15 R15 K34 ["IconName"]
       90 GETTABLEKS                       R15 R15 K35 ["DiamondSimplified"]
       92 SETTABLEKS                       R15 R14 K30 ["name"]
       94 GETUPVAL                         R15 5
       95 GETTABLEKS                       R15 R15 K33 ["Enums"]
       97 GETTABLEKS                       R15 R15 K36 ["IconSize"]
       99 GETTABLEKS                       R15 R15 K37 ["Small"]
      101 SETTABLEKS                       R15 R14 K31 ["size"]
      103 MOVE                             R15 R7
      104 CALL                             R15 0 1
      105 SETTABLEKS                       R15 R14 K11 ["LayoutOrder"]
      107 CALL                             R12 2 1
      108 SETTABLEKS                       R12 R11 K21 ["Icon"]
      110 GETUPVAL                         R12 4
      111 GETUPVAL                         R13 5
      112 GETTABLEKS                       R13 R13 K22 ["TextInput"]
      114 DUPTABLE                         R14 K44 [{["label"] = "", ["text"], ["onChanged"], ["onFocusLost"], ["size"], ["tag"] = "grow", ["textBoxRef"], ["LayoutOrder"]}]
      115 SETTABLEKS                       R3 R14 K39 ["text"]
      117 SETTABLEKS                       R4 R14 K40 ["onChanged"]
      119 SETTABLEKS                       R6 R14 K41 ["onFocusLost"]
      121 GETUPVAL                         R15 5
      122 GETTABLEKS                       R15 R15 K33 ["Enums"]
      124 GETTABLEKS                       R15 R15 K45 ["InputSize"]
      126 GETTABLEKS                       R15 R15 K46 ["XSmall"]
      128 SETTABLEKS                       R15 R14 K31 ["size"]
      130 SETTABLEKS                       R5 R14 K43 ["textBoxRef"]
      132 MOVE                             R15 R7
      133 CALL                             R15 0 1
      134 SETTABLEKS                       R15 R14 K11 ["LayoutOrder"]
      136 CALL                             R12 2 1
      137 SETTABLEKS                       R12 R11 K22 ["TextInput"]
      139 CALL                             R8 3 -1
      140 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["EphemeralRowContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["PropertyTypes"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K9 ["Parent"]
       39 GETTABLEKS                       R6 R6 K13 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["RpcTypes"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K15 ["Hooks"]
       51 GETTABLEKS                       R8 R8 K16 ["useVisualValues"]
       53 CALL                             R7 1 1
       54 GETTABLEKS                       R8 R4 K17 ["createElement"]
       56 DUPCLOSURE                       R9 K18 [PROTO_2]
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R2
       63 RETURN                           R9 1
