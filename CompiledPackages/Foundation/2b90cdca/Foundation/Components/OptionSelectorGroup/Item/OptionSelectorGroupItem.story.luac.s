PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useState"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 2
        7 GETTABLEKS                       R4 R1 K2 ["label"]
        9 GETTABLEKS                       R5 R1 K3 ["metadata"]
       11 GETTABLEKS                       R6 R1 K4 ["description"]
       13 GETTABLEKS                       R7 R0 K5 ["useLongText"]
       15 JUMPIFNOT                        R7 ; [+36]
       16 LENGTH                           R7 R4
       17 LOADN                            R8 0
       18 JUMPIFNOTLT                      R8 R7 ; [+8]
       20 LOADK                            R7 K6 ["%*  that goes on and on and on to test how the component handles text overflow and wrapping in various scenarios with extremely long content"]
       21 MOVE                             R9 R4
       22 NAMECALL                         R7 R7 K7 ["format"]
       24 CALL                             R7 2 1
       25 MOVE                             R4 R7
       26 JUMP                             ; [+1]
       27 LOADK                            R4 K8 [""]
       28 LENGTH                           R7 R5
       29 LOADN                            R8 0
       30 JUMPIFNOTLT                      R8 R7 ; [+8]
       32 LOADK                            R7 K6 ["%*  that goes on and on and on to test how the component handles text overflow and wrapping in various scenarios with extremely long content"]
       33 MOVE                             R9 R5
       34 NAMECALL                         R7 R7 K7 ["format"]
       36 CALL                             R7 2 1
       37 MOVE                             R5 R7
       38 JUMP                             ; [+1]
       39 LOADK                            R5 K8 [""]
       40 LENGTH                           R7 R6
       41 LOADN                            R8 0
       42 JUMPIFNOTLT                      R8 R7 ; [+8]
       44 LOADK                            R7 K6 ["%*  that goes on and on and on to test how the component handles text overflow and wrapping in various scenarios with extremely long content"]
       45 MOVE                             R9 R6
       46 NAMECALL                         R7 R7 K7 ["format"]
       48 CALL                             R7 2 1
       49 MOVE                             R6 R7
       50 JUMP                             ; [+1]
       51 LOADK                            R6 K8 [""]
       52 GETUPVAL                         R7 0
       53 GETTABLEKS                       R7 R7 K9 ["createElement"]
       55 GETUPVAL                         R8 1
       56 GETTABLEKS                       R8 R8 K10 ["Provider"]
       58 DUPTABLE                         R9 K12 [{"value"}]
       59 DUPTABLE                         R10 K17 [{["value"], ["onValueChanged"], ["Selectable"] = True, ["orientation"]}]
       60 SETTABLEKS                       R2 R10 K11 ["value"]
       62 SETTABLEKS                       R3 R10 K13 ["onValueChanged"]
       64 GETTABLEKS                       R11 R1 K16 ["orientation"]
       66 SETTABLEKS                       R11 R10 K16 ["orientation"]
       68 SETTABLEKS                       R10 R9 K11 ["value"]
       70 NEWTABLE                         R10 0 1
       72 GETUPVAL                         R11 0
       73 GETTABLEKS                       R11 R11 K9 ["createElement"]
       75 GETUPVAL                         R12 2
       76 GETTABLEKS                       R12 R12 K18 ["Item"]
       78 DUPTABLE                         R13 K22 [{"icon", "value", "label", "metadata", "description", "isDisabled", "size"}]
       79 GETTABLEKS                       R14 R1 K19 ["icon"]
       81 SETTABLEKS                       R14 R13 K19 ["icon"]
       83 GETTABLEKS                       R14 R1 K11 ["value"]
       85 SETTABLEKS                       R14 R13 K11 ["value"]
       87 LENGTH                           R15 R4
       88 LOADN                            R16 0
       89 JUMPIFNOTLT                      R16 R15 ; [+10]
       91 LOADK                            R15 K23 ["%* %*"]
       92 MOVE                             R17 R4
       93 GETTABLEKS                       R18 R1 K11 ["value"]
       95 NAMECALL                         R15 R15 K7 ["format"]
       97 CALL                             R15 3 1
       98 MOVE                             R14 R15
       99 JUMP                             ; [+1]
      100 LOADK                            R14 K8 [""]
      101 SETTABLEKS                       R14 R13 K2 ["label"]
      103 LENGTH                           R15 R5
      104 LOADN                            R16 0
      105 JUMPIFNOTLT                      R16 R15 ; [+3]
      107 MOVE                             R14 R5
      108 JUMP                             ; [+1]
      109 LOADNIL                          R14
      110 SETTABLEKS                       R14 R13 K3 ["metadata"]
      112 LENGTH                           R15 R6
      113 LOADN                            R16 0
      114 JUMPIFNOTLT                      R16 R15 ; [+3]
      116 MOVE                             R14 R6
      117 JUMP                             ; [+1]
      118 LOADNIL                          R14
      119 SETTABLEKS                       R14 R13 K4 ["description"]
      121 GETTABLEKS                       R14 R1 K20 ["isDisabled"]
      123 SETTABLEKS                       R14 R13 K20 ["isDisabled"]
      125 GETTABLEKS                       R14 R1 K21 ["size"]
      127 SETTABLEKS                       R14 R13 K21 ["size"]
      129 CALL                             R11 2 -1
      130 SETLIST                          R10 R11 -1 [1]
      132 CALL                             R7 3 -1
      133 RETURN                           R7 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["join"]
        7 MOVE                             R4 R0
        8 DUPTABLE                         R5 K4 [{["useLongText"] = True}]
        9 CALL                             R3 2 -1
       10 CALL                             R1 -1 -1
       11 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["BuilderIcons"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Enums"]
       28 GETTABLEKS                       R6 R6 K11 ["InputSize"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K10 ["Enums"]
       35 GETTABLEKS                       R7 R7 K12 ["Orientation"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K13 ["Components"]
       42 GETTABLEKS                       R8 R8 K14 ["OptionSelectorGroup"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETIMPORT                        R9 K1 [script]
       49 GETTABLEKS                       R9 R9 K4 ["Parent"]
       51 GETTABLEKS                       R9 R9 K4 ["Parent"]
       53 GETTABLEKS                       R9 R9 K15 ["OptionSelectorGroupContext"]
       55 CALL                             R8 1 1
       56 DUPCLOSURE                       R9 K16 [PROTO_0]
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R7
       60 DUPTABLE                         R10 K21 [{["summary"] = "OptionSelectorGroupItem component", ["stories"], ["controls"]}]
       61 DUPTABLE                         R11 K24 [{"Default", "LongText"}]
       62 DUPTABLE                         R12 K27 [{["name"] = "Default", ["story"]}]
       63 SETTABLEKS                       R9 R12 K26 ["story"]
       65 SETTABLEKS                       R12 R11 K22 ["Default"]
       67 DUPTABLE                         R12 K29 [{["name"] = "Long Text", ["story"]}]
       68 DUPCLOSURE                       R13 K30 [PROTO_1]
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R3
       72 SETTABLEKS                       R13 R12 K26 ["story"]
       74 SETTABLEKS                       R12 R11 K23 ["LongText"]
       76 SETTABLEKS                       R11 R10 K19 ["stories"]
       78 DUPTABLE                         R11 K44 [{["icon"], ["isDisabled"] = False, ["label"] = "Label", ["metadata"] = "", ["description"] = "Description", ["size"], ["value"] = "A", ["orientation"]}]
       79 GETTABLEKS                       R12 R3 K45 ["values"]
       81 GETTABLEKS                       R13 R2 K46 ["Icon"]
       83 CALL                             R12 1 1
       84 SETTABLEKS                       R12 R11 K31 ["icon"]
       86 GETTABLEKS                       R12 R3 K45 ["values"]
       88 MOVE                             R13 R5
       89 CALL                             R12 1 1
       90 SETTABLEKS                       R12 R11 K40 ["size"]
       92 GETTABLEKS                       R12 R3 K45 ["values"]
       94 MOVE                             R13 R6
       95 CALL                             R12 1 1
       96 SETTABLEKS                       R12 R11 K43 ["orientation"]
       98 SETTABLEKS                       R11 R10 K20 ["controls"]
      100 RETURN                           R10 1
