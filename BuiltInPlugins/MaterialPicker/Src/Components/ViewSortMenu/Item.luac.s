PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 DUPTABLE                         R2 K5 [{"Font", "FontSize", "LineHeight"}]
        7 DUPTABLE                         R3 K9 [{"Family", "Weight", "Style"}]
        8 GETIMPORT                        R4 K11 [Font.fromEnum]
       10 GETIMPORT                        R5 K14 [Enum.Font.BuilderSans]
       12 CALL                             R4 1 1
       13 GETTABLEKS                       R4 R4 K6 ["Family"]
       15 SETTABLEKS                       R4 R3 K6 ["Family"]
       17 GETIMPORT                        R4 K17 [Enum.FontWeight.SemiBold]
       19 SETTABLEKS                       R4 R3 K7 ["Weight"]
       21 GETIMPORT                        R4 K20 [Enum.FontStyle.Normal]
       23 SETTABLEKS                       R4 R3 K8 ["Style"]
       25 SETTABLEKS                       R3 R2 K2 ["Font"]
       27 GETTABLEKS                       R3 R1 K21 ["Typography"]
       29 GETTABLEKS                       R3 R3 K22 ["BodyMedium"]
       31 GETTABLEKS                       R3 R3 K3 ["FontSize"]
       33 SETTABLEKS                       R3 R2 K3 ["FontSize"]
       35 GETTABLEKS                       R3 R1 K21 ["Typography"]
       37 GETTABLEKS                       R3 R3 K22 ["BodyMedium"]
       39 GETTABLEKS                       R3 R3 K4 ["LineHeight"]
       41 SETTABLEKS                       R3 R2 K4 ["LineHeight"]
       43 GETUPVAL                         R3 1
       44 CALL                             R3 0 1
       45 GETUPVAL                         R4 2
       46 GETTABLEKS                       R4 R4 K23 ["createElement"]
       48 GETUPVAL                         R5 3
       49 DUPTABLE                         R6 K32 [{["GroupTransparency"], ["LayoutOrder"], ["Size"], ["onActivated"], ["stateLayer"], ["tag"] = "row align-y-center radius-small", ["testId"]}]
       50 GETTABLEKS                       R8 R0 K33 ["isDisabled"]
       52 JUMPIFNOT                        R8 ; [+2]
       53 LOADK                            R7 K34 [0.5]
       54 JUMP                             ; [+1]
       55 LOADNIL                          R7
       56 SETTABLEKS                       R7 R6 K24 ["GroupTransparency"]
       58 GETTABLEKS                       R7 R0 K35 ["layoutOrder"]
       60 SETTABLEKS                       R7 R6 K25 ["LayoutOrder"]
       62 GETIMPORT                        R7 K38 [UDim2.new]
       64 LOADN                            R8 1
       65 LOADN                            R9 0
       66 LOADN                            R10 0
       67 GETTABLEKS                       R11 R1 K26 ["Size"]
       69 GETTABLEKS                       R11 R11 K39 ["Size_1000"]
       71 CALL                             R7 4 1
       72 SETTABLEKS                       R7 R6 K26 ["Size"]
       74 GETTABLEKS                       R8 R0 K33 ["isDisabled"]
       76 JUMPIFNOT                        R8 ; [+2]
       77 LOADNIL                          R7
       78 JUMP                             ; [+2]
       79 GETTABLEKS                       R7 R0 K27 ["onActivated"]
       81 SETTABLEKS                       R7 R6 K27 ["onActivated"]
       83 NEWTABLE                         R7 0 0
       85 SETTABLEKS                       R7 R6 K28 ["stateLayer"]
       87 GETTABLEKS                       R7 R0 K31 ["testId"]
       89 SETTABLEKS                       R7 R6 K31 ["testId"]
       91 DUPTABLE                         R7 K42 [{"Check", "Label"}]
       92 GETUPVAL                         R8 2
       93 GETTABLEKS                       R8 R8 K23 ["createElement"]
       95 GETUPVAL                         R9 3
       96 DUPTABLE                         R10 K44 [{["LayoutOrder"], ["Size"], ["tag"] = "row align-x-center align-y-center"}]
       97 MOVE                             R11 R3
       98 CALL                             R11 0 1
       99 SETTABLEKS                       R11 R10 K25 ["LayoutOrder"]
      101 GETIMPORT                        R11 K46 [UDim2.fromOffset]
      103 GETTABLEKS                       R12 R1 K26 ["Size"]
      105 GETTABLEKS                       R12 R12 K47 ["Size_700"]
      107 GETTABLEKS                       R13 R1 K26 ["Size"]
      109 GETTABLEKS                       R13 R13 K39 ["Size_1000"]
      111 CALL                             R11 2 1
      112 SETTABLEKS                       R11 R10 K26 ["Size"]
      114 DUPTABLE                         R11 K49 [{"Icon"}]
      115 GETTABLEKS                       R13 R0 K50 ["isChecked"]
      117 JUMPIFNOT                        R13 ; [+25]
      118 GETUPVAL                         R12 2
      119 GETTABLEKS                       R12 R12 K23 ["createElement"]
      121 GETUPVAL                         R13 4
      122 DUPTABLE                         R14 K54 [{["name"], ["size"], ["testId"] = "terrain-material-view-sort-checkmark"}]
      123 GETUPVAL                         R15 0
      124 GETTABLEKS                       R15 R15 K55 ["Enums"]
      126 GETTABLEKS                       R15 R15 K56 ["IconName"]
      128 GETTABLEKS                       R15 R15 K40 ["Check"]
      130 SETTABLEKS                       R15 R14 K51 ["name"]
      132 GETUPVAL                         R15 0
      133 GETTABLEKS                       R15 R15 K55 ["Enums"]
      135 GETTABLEKS                       R15 R15 K57 ["IconSize"]
      137 GETTABLEKS                       R15 R15 K58 ["XSmall"]
      139 SETTABLEKS                       R15 R14 K52 ["size"]
      141 CALL                             R12 2 1
      142 JUMP                             ; [+1]
      143 LOADNIL                          R12
      144 SETTABLEKS                       R12 R11 K48 ["Icon"]
      146 CALL                             R8 3 1
      147 SETTABLEKS                       R8 R7 K40 ["Check"]
      149 GETUPVAL                         R8 2
      150 GETTABLEKS                       R8 R8 K23 ["createElement"]
      152 GETUPVAL                         R9 5
      153 DUPTABLE                         R10 K62 [{["LayoutOrder"], ["Text"], ["fontStyle"], ["tag"] = "grow size-0-full text-align-x-left content-emphasis"}]
      154 MOVE                             R11 R3
      155 CALL                             R11 0 1
      156 SETTABLEKS                       R11 R10 K25 ["LayoutOrder"]
      158 GETTABLEKS                       R11 R0 K63 ["text"]
      160 SETTABLEKS                       R11 R10 K59 ["Text"]
      162 GETTABLEKS                       R12 R0 K50 ["isChecked"]
      164 JUMPIFNOT                        R12 ; [+2]
      165 MOVE                             R11 R2
      166 JUMP                             ; [+4]
      167 GETTABLEKS                       R11 R1 K21 ["Typography"]
      169 GETTABLEKS                       R11 R11 K22 ["BodyMedium"]
      171 SETTABLEKS                       R11 R10 K60 ["fontStyle"]
      173 CALL                             R8 2 1
      174 SETTABLEKS                       R8 R7 K41 ["Label"]
      176 CALL                             R4 3 -1
      177 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialPicker"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["Icon"]
       30 GETTABLEKS                       R5 R1 K11 ["Text"]
       32 GETTABLEKS                       R6 R1 K12 ["View"]
       34 GETTABLEKS                       R7 R3 K13 ["createNextOrder"]
       36 DUPCLOSURE                       R8 K14 [PROTO_0]
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R7
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R6
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R5
       43 RETURN                           R8 1
