PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKS                       R0 K0 ["Hover"] ; [+2]
        3 LOADB                            R2 0 +1
        4 LOADB                            R2 1
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Enums"]
        3 GETTABLEKS                       R1 R1 K1 ["ControlState"]
        5 GETTABLEKS                       R1 R1 K2 ["Pressed"]
        7 JUMPIFNOTEQ                      R0 R1 ; [+9]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K3 ["OnDelete"]
       12 JUMPIFNOT                        R1 ; [+4]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K3 ["OnDelete"]
       16 CALL                             R1 0 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useState"]
        7 LOADB                            R3 0
        8 CALL                             R2 1 2
        9 GETTABLEKS                       R4 R0 K2 ["OnDelete"]
       11 JUMPIFNOT                        R4 ; [+4]
       12 MOVE                             R4 R2
       13 JUMPIF                           R4 ; [+2]
       14 GETTABLEKS                       R4 R0 K3 ["__FORCE_DELETE_BUTTON__TESTONLY__"]
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K4 ["useCallback"]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          VAL R3
       21 NEWTABLE                         R7 0 1
       23 MOVE                             R8 R3
       24 SETLIST                          R7 R8 1 [1]
       26 CALL                             R5 2 1
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R6 R6 K4 ["useCallback"]
       30 NEWCLOSURE                       R7 P1
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          VAL R0
       33 NEWTABLE                         R8 0 1
       35 GETTABLEKS                       R9 R0 K2 ["OnDelete"]
       37 SETLIST                          R8 R9 1 [1]
       39 CALL                             R6 2 1
       40 GETUPVAL                         R7 1
       41 GETTABLEKS                       R7 R7 K5 ["createElement"]
       43 GETUPVAL                         R8 2
       44 GETTABLEKS                       R8 R8 K6 ["View"]
       46 DUPTABLE                         R9 K13 [{"tag", "Size", "onStateChanged", "stateLayer", "LayoutOrder", "testId"}]
       47 LOADK                            R10 K14 ["auto-y"]
       48 SETTABLEKS                       R10 R9 K7 ["tag"]
       50 GETIMPORT                        R10 K17 [UDim2.fromOffset]
       52 LOADN                            R11 30
       53 LOADN                            R12 0
       54 CALL                             R10 2 1
       55 SETTABLEKS                       R10 R9 K8 ["Size"]
       57 SETTABLEKS                       R5 R9 K9 ["onStateChanged"]
       59 DUPTABLE                         R10 K19 [{"affordance"}]
       60 GETUPVAL                         R11 2
       61 GETTABLEKS                       R11 R11 K20 ["Enums"]
       63 GETTABLEKS                       R11 R11 K21 ["StateLayerAffordance"]
       65 GETTABLEKS                       R11 R11 K22 ["None"]
       67 SETTABLEKS                       R11 R10 K18 ["affordance"]
       69 SETTABLEKS                       R10 R9 K10 ["stateLayer"]
       71 GETTABLEKS                       R10 R0 K11 ["LayoutOrder"]
       73 SETTABLEKS                       R10 R9 K11 ["LayoutOrder"]
       75 LOADK                            R10 K23 ["input-weight-container"]
       76 SETTABLEKS                       R10 R9 K12 ["testId"]
       78 DUPTABLE                         R10 K26 [{"InputDelete", "InputWeight"}]
       79 JUMPIFNOT                        R4 ; [+65]
       80 GETUPVAL                         R11 1
       81 GETTABLEKS                       R11 R11 K5 ["createElement"]
       83 GETUPVAL                         R12 2
       84 GETTABLEKS                       R12 R12 K6 ["View"]
       86 DUPTABLE                         R13 K27 [{"tag", "LayoutOrder", "onStateChanged", "stateLayer", "testId"}]
       87 LOADK                            R14 K28 ["auto-y fill"]
       88 SETTABLEKS                       R14 R13 K7 ["tag"]
       90 GETTABLEKS                       R14 R0 K11 ["LayoutOrder"]
       92 SETTABLEKS                       R14 R13 K11 ["LayoutOrder"]
       94 SETTABLEKS                       R6 R13 K9 ["onStateChanged"]
       96 DUPTABLE                         R14 K19 [{"affordance"}]
       97 GETUPVAL                         R15 2
       98 GETTABLEKS                       R15 R15 K20 ["Enums"]
      100 GETTABLEKS                       R15 R15 K21 ["StateLayerAffordance"]
      102 GETTABLEKS                       R15 R15 K22 ["None"]
      104 SETTABLEKS                       R15 R14 K18 ["affordance"]
      106 SETTABLEKS                       R14 R13 K10 ["stateLayer"]
      108 LOADK                            R14 K29 ["input-delete"]
      109 SETTABLEKS                       R14 R13 K12 ["testId"]
      111 DUPTABLE                         R14 K31 [{"Icon"}]
      112 GETUPVAL                         R15 1
      113 GETTABLEKS                       R15 R15 K5 ["createElement"]
      115 GETUPVAL                         R16 2
      116 GETTABLEKS                       R16 R16 K30 ["Icon"]
      118 DUPTABLE                         R17 K35 [{"name", "size", "variant"}]
      119 LOADK                            R18 K36 ["trash-can"]
      120 SETTABLEKS                       R18 R17 K32 ["name"]
      122 GETUPVAL                         R18 2
      123 GETTABLEKS                       R18 R18 K20 ["Enums"]
      125 GETTABLEKS                       R18 R18 K37 ["IconSize"]
      127 GETTABLEKS                       R18 R18 K38 ["XSmall"]
      129 SETTABLEKS                       R18 R17 K33 ["size"]
      131 GETUPVAL                         R18 2
      132 GETTABLEKS                       R18 R18 K20 ["Enums"]
      134 GETTABLEKS                       R18 R18 K39 ["IconVariant"]
      136 GETTABLEKS                       R18 R18 K40 ["Regular"]
      138 SETTABLEKS                       R18 R17 K34 ["variant"]
      140 CALL                             R15 2 1
      141 SETTABLEKS                       R15 R14 K30 ["Icon"]
      143 CALL                             R11 3 1
      144 JUMP                             ; [+1]
      145 LOADNIL                          R11
      146 SETTABLEKS                       R11 R10 K24 ["InputDelete"]
      148 JUMPIF                           R4 ; [+33]
      149 GETUPVAL                         R11 1
      150 GETTABLEKS                       R11 R11 K5 ["createElement"]
      152 GETUPVAL                         R12 2
      153 GETTABLEKS                       R12 R12 K41 ["Text"]
      155 DUPTABLE                         R13 K42 [{"tag", "Size", "Text", "LayoutOrder"}]
      156 LOADK                            R14 K43 ["content-muted text-body-small text-align-x-left auto-y"]
      157 SETTABLEKS                       R14 R13 K7 ["tag"]
      159 GETIMPORT                        R14 K17 [UDim2.fromOffset]
      161 LOADN                            R15 30
      162 LOADN                            R16 0
      163 CALL                             R14 2 1
      164 SETTABLEKS                       R14 R13 K8 ["Size"]
      166 LOADK                            R15 K44 ["%*%%"]
      167 GETTABLEKS                       R18 R0 K46 ["Weight"]
      169 ORK                              R17 R18 K45 [0]
      170 NAMECALL                         R15 R15 K47 ["format"]
      172 CALL                             R15 2 1
      173 MOVE                             R14 R15
      174 SETTABLEKS                       R14 R13 K41 ["Text"]
      176 MOVE                             R14 R1
      177 CALL                             R14 0 1
      178 SETTABLEKS                       R14 R13 K11 ["LayoutOrder"]
      180 CALL                             R11 2 1
      181 JUMP                             ; [+1]
      182 LOADNIL                          R11
      183 SETTABLEKS                       R11 R10 K25 ["InputWeight"]
      185 CALL                             R7 3 -1
      186 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K10 [PROTO_2]
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R1
       32 GETTABLEKS                       R5 R2 K11 ["memo"]
       34 MOVE                             R6 R4
       35 CALL                             R5 1 -1
       36 RETURN                           R5 -1
