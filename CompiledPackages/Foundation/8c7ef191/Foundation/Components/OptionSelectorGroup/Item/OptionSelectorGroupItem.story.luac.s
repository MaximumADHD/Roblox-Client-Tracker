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
       59 DUPTABLE                         R10 K16 [{"value", "onValueChanged", "Selectable", "orientation"}]
       60 SETTABLEKS                       R2 R10 K11 ["value"]
       62 SETTABLEKS                       R3 R10 K13 ["onValueChanged"]
       64 LOADB                            R11 1
       65 SETTABLEKS                       R11 R10 K14 ["Selectable"]
       67 GETTABLEKS                       R11 R1 K15 ["orientation"]
       69 SETTABLEKS                       R11 R10 K15 ["orientation"]
       71 SETTABLEKS                       R10 R9 K11 ["value"]
       73 NEWTABLE                         R10 0 1
       75 GETUPVAL                         R11 0
       76 GETTABLEKS                       R11 R11 K9 ["createElement"]
       78 GETUPVAL                         R12 2
       79 GETTABLEKS                       R12 R12 K17 ["Item"]
       81 DUPTABLE                         R13 K21 [{"icon", "value", "label", "metadata", "description", "isDisabled", "size"}]
       82 GETTABLEKS                       R14 R1 K18 ["icon"]
       84 SETTABLEKS                       R14 R13 K18 ["icon"]
       86 GETTABLEKS                       R14 R1 K11 ["value"]
       88 SETTABLEKS                       R14 R13 K11 ["value"]
       90 LENGTH                           R15 R4
       91 LOADN                            R16 0
       92 JUMPIFNOTLT                      R16 R15 ; [+10]
       94 LOADK                            R15 K22 ["%* %*"]
       95 MOVE                             R17 R4
       96 GETTABLEKS                       R18 R1 K11 ["value"]
       98 NAMECALL                         R15 R15 K7 ["format"]
      100 CALL                             R15 3 1
      101 MOVE                             R14 R15
      102 JUMP                             ; [+1]
      103 LOADK                            R14 K8 [""]
      104 SETTABLEKS                       R14 R13 K2 ["label"]
      106 LENGTH                           R15 R5
      107 LOADN                            R16 0
      108 JUMPIFNOTLT                      R16 R15 ; [+3]
      110 MOVE                             R14 R5
      111 JUMP                             ; [+1]
      112 LOADNIL                          R14
      113 SETTABLEKS                       R14 R13 K3 ["metadata"]
      115 LENGTH                           R15 R6
      116 LOADN                            R16 0
      117 JUMPIFNOTLT                      R16 R15 ; [+3]
      119 MOVE                             R14 R6
      120 JUMP                             ; [+1]
      121 LOADNIL                          R14
      122 SETTABLEKS                       R14 R13 K4 ["description"]
      124 GETTABLEKS                       R14 R1 K19 ["isDisabled"]
      126 SETTABLEKS                       R14 R13 K19 ["isDisabled"]
      128 GETTABLEKS                       R14 R1 K20 ["size"]
      130 SETTABLEKS                       R14 R13 K20 ["size"]
      132 CALL                             R11 2 -1
      133 SETLIST                          R10 R11 -1 [1]
      135 CALL                             R7 3 -1
      136 RETURN                           R7 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["join"]
        7 MOVE                             R4 R0
        8 DUPTABLE                         R5 K3 [{"useLongText"}]
        9 LOADB                            R6 1
       10 SETTABLEKS                       R6 R5 K2 ["useLongText"]
       12 CALL                             R3 2 -1
       13 CALL                             R1 -1 -1
       14 RETURN                           R1 -1

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
       40 GETIMPORT                        R8 K1 [script]
       42 GETTABLEKS                       R8 R8 K4 ["Parent"]
       44 GETTABLEKS                       R8 R8 K4 ["Parent"]
       46 GETTABLEKS                       R8 R8 K13 ["OptionSelectorGroupContext"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K14 ["Components"]
       53 GETTABLEKS                       R9 R9 K15 ["OptionSelectorGroup"]
       55 CALL                             R8 1 1
       56 DUPCLOSURE                       R9 K16 [PROTO_0]
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R8
       60 DUPTABLE                         R10 K20 [{"summary", "stories", "controls"}]
       61 LOADK                            R11 K21 ["OptionSelectorGroupItem component"]
       62 SETTABLEKS                       R11 R10 K17 ["summary"]
       64 DUPTABLE                         R11 K24 [{"Default", "LongText"}]
       65 DUPTABLE                         R12 K27 [{"name", "story"}]
       66 LOADK                            R13 K22 ["Default"]
       67 SETTABLEKS                       R13 R12 K25 ["name"]
       69 SETTABLEKS                       R9 R12 K26 ["story"]
       71 SETTABLEKS                       R12 R11 K22 ["Default"]
       73 DUPTABLE                         R12 K27 [{"name", "story"}]
       74 LOADK                            R13 K28 ["Long Text"]
       75 SETTABLEKS                       R13 R12 K25 ["name"]
       77 DUPCLOSURE                       R13 K29 [PROTO_1]
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R3
       81 SETTABLEKS                       R13 R12 K26 ["story"]
       83 SETTABLEKS                       R12 R11 K23 ["LongText"]
       85 SETTABLEKS                       R11 R10 K18 ["stories"]
       87 DUPTABLE                         R11 K38 [{"icon", "isDisabled", "label", "metadata", "description", "size", "value", "orientation"}]
       88 GETTABLEKS                       R12 R3 K39 ["values"]
       90 GETTABLEKS                       R13 R2 K40 ["Icon"]
       92 CALL                             R12 1 1
       93 SETTABLEKS                       R12 R11 K30 ["icon"]
       95 LOADB                            R12 0
       96 SETTABLEKS                       R12 R11 K31 ["isDisabled"]
       98 LOADK                            R12 K41 ["Label"]
       99 SETTABLEKS                       R12 R11 K32 ["label"]
      101 LOADK                            R12 K42 [""]
      102 SETTABLEKS                       R12 R11 K33 ["metadata"]
      104 LOADK                            R12 K43 ["Description"]
      105 SETTABLEKS                       R12 R11 K34 ["description"]
      107 GETTABLEKS                       R12 R3 K39 ["values"]
      109 MOVE                             R13 R5
      110 CALL                             R12 1 1
      111 SETTABLEKS                       R12 R11 K35 ["size"]
      113 LOADK                            R12 K44 ["A"]
      114 SETTABLEKS                       R12 R11 K36 ["value"]
      116 GETTABLEKS                       R12 R3 K39 ["values"]
      118 MOVE                             R13 R6
      119 CALL                             R12 1 1
      120 SETTABLEKS                       R12 R11 K37 ["orientation"]
      122 SETTABLEKS                       R11 R10 K19 ["controls"]
      124 RETURN                           R10 1
