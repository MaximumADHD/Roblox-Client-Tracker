PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnChanged"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["Value"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnChanged"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["Value"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["PlaneLockRenderer"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETTABLEKS                       R2 R0 K2 ["Schema"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K3 ["createElement"]
       10 GETUPVAL                         R4 2
       11 DUPTABLE                         R5 K8 [{"HorizontalAlignment", "Layout", "Size", "Spacing"}]
       12 GETUPVAL                         R7 3
       13 CALL                             R7 0 1
       14 JUMPIFNOT                        R7 ; [+3]
       15 GETIMPORT                        R6 K11 [Enum.HorizontalAlignment.Left]
       17 JUMP                             ; [+1]
       18 LOADNIL                          R6
       19 SETTABLEKS                       R6 R5 K4 ["HorizontalAlignment"]
       21 GETIMPORT                        R6 K14 [Enum.FillDirection.Horizontal]
       23 SETTABLEKS                       R6 R5 K5 ["Layout"]
       25 GETIMPORT                        R6 K17 [UDim2.new]
       27 LOADN                            R7 1
       28 LOADN                            R8 0
       29 LOADN                            R9 0
       30 GETTABLEKS                       R10 R1 K18 ["Height"]
       32 CALL                             R6 4 1
       33 SETTABLEKS                       R6 R5 K6 ["Size"]
       35 GETTABLEKS                       R6 R1 K7 ["Spacing"]
       37 SETTABLEKS                       R6 R5 K7 ["Spacing"]
       39 DUPTABLE                         R6 K21 [{"Edit", "Reset"}]
       40 GETUPVAL                         R7 1
       41 GETTABLEKS                       R7 R7 K3 ["createElement"]
       43 GETUPVAL                         R8 2
       44 DUPTABLE                         R9 K25 [{["LayoutOrder"] = 1, ["Size"], ["AutomaticSize"]}]
       45 GETUPVAL                         R11 3
       46 CALL                             R11 0 1
       47 JUMPIFNOT                        R11 ; [+2]
       48 LOADNIL                          R10
       49 JUMP                             ; [+13]
       50 GETIMPORT                        R10 K17 [UDim2.new]
       52 LOADN                            R11 1
       53 GETTABLEKS                       R14 R1 K18 ["Height"]
       55 MINUS                            R13 R14
       56 GETTABLEKS                       R14 R1 K7 ["Spacing"]
       58 SUB                              R12 R13 R14
       59 LOADN                            R13 0
       60 GETTABLEKS                       R14 R1 K18 ["Height"]
       62 CALL                             R10 4 1
       63 SETTABLEKS                       R10 R9 K6 ["Size"]
       65 GETUPVAL                         R11 3
       66 CALL                             R11 0 1
       67 JUMPIFNOT                        R11 ; [+3]
       68 GETIMPORT                        R10 K27 [Enum.AutomaticSize.X]
       70 JUMP                             ; [+1]
       71 LOADNIL                          R10
       72 SETTABLEKS                       R10 R9 K24 ["AutomaticSize"]
       74 DUPTABLE                         R10 K29 [{"Button"}]
       75 GETUPVAL                         R12 3
       76 CALL                             R12 0 1
       77 JUMPIFNOT                        R12 ; [+41]
       78 GETUPVAL                         R11 1
       79 GETTABLEKS                       R11 R11 K3 ["createElement"]
       81 GETUPVAL                         R12 4
       82 GETTABLEKS                       R12 R12 K28 ["Button"]
       84 DUPTABLE                         R13 K34 [{"text", "variant", "onActivated", "size"}]
       85 GETTABLEKS                       R15 R0 K35 ["Value"]
       87 JUMPIFNOT                        R15 ; [+3]
       88 GETTABLEKS                       R14 R2 K36 ["ApplyLabel"]
       90 JUMP                             ; [+2]
       91 GETTABLEKS                       R14 R2 K37 ["EditLabel"]
       93 SETTABLEKS                       R14 R13 K30 ["text"]
       95 GETUPVAL                         R14 4
       96 GETTABLEKS                       R14 R14 K38 ["Enums"]
       98 GETTABLEKS                       R14 R14 K39 ["ButtonVariant"]
      100 GETTABLEKS                       R14 R14 K40 ["Emphasis"]
      102 SETTABLEKS                       R14 R13 K31 ["variant"]
      104 NEWCLOSURE                       R14 P0
      105 CAPTURE                          VAL R0
      106 SETTABLEKS                       R14 R13 K32 ["onActivated"]
      108 GETUPVAL                         R14 4
      109 GETTABLEKS                       R14 R14 K38 ["Enums"]
      111 GETTABLEKS                       R14 R14 K41 ["InputSize"]
      113 GETTABLEKS                       R14 R14 K42 ["Small"]
      115 SETTABLEKS                       R14 R13 K33 ["size"]
      117 CALL                             R11 2 1
      118 JUMP                             ; [+31]
      119 GETUPVAL                         R11 1
      120 GETTABLEKS                       R11 R11 K3 ["createElement"]
      122 GETUPVAL                         R12 5
      123 DUPTABLE                         R13 K48 [{["OnClick"], ["Size"], ["Style"] = "PrimaryBrand", ["Text"], ["TextXAlignment"]}]
      124 NEWCLOSURE                       R14 P1
      125 CAPTURE                          VAL R0
      126 SETTABLEKS                       R14 R13 K43 ["OnClick"]
      128 GETIMPORT                        R14 K50 [UDim2.fromScale]
      130 LOADN                            R15 1
      131 LOADN                            R16 1
      132 CALL                             R14 2 1
      133 SETTABLEKS                       R14 R13 K6 ["Size"]
      135 GETTABLEKS                       R15 R0 K35 ["Value"]
      137 JUMPIFNOT                        R15 ; [+3]
      138 GETTABLEKS                       R14 R2 K36 ["ApplyLabel"]
      140 JUMP                             ; [+2]
      141 GETTABLEKS                       R14 R2 K37 ["EditLabel"]
      143 SETTABLEKS                       R14 R13 K46 ["Text"]
      145 GETIMPORT                        R14 K52 [Enum.TextXAlignment.Center]
      147 SETTABLEKS                       R14 R13 K47 ["TextXAlignment"]
      149 CALL                             R11 2 1
      150 SETTABLEKS                       R11 R10 K28 ["Button"]
      152 CALL                             R7 3 1
      153 SETTABLEKS                       R7 R6 K19 ["Edit"]
      155 GETUPVAL                         R7 1
      156 GETTABLEKS                       R7 R7 K3 ["createElement"]
      158 GETUPVAL                         R8 5
      159 DUPTABLE                         R9 K56 [{["LayoutOrder"] = 2, ["OnClick"], ["LeftIcon"], ["IconSize"], ["Size"]}]
      160 GETTABLEKS                       R10 R2 K57 ["OnReset"]
      162 SETTABLEKS                       R10 R9 K43 ["OnClick"]
      164 GETTABLEKS                       R10 R1 K58 ["Icon"]
      166 SETTABLEKS                       R10 R9 K54 ["LeftIcon"]
      168 GETTABLEKS                       R11 R1 K18 ["Height"]
      170 SUBK                             R10 R11 K59 [14]
      171 SETTABLEKS                       R10 R9 K55 ["IconSize"]
      173 GETIMPORT                        R10 K61 [UDim2.fromOffset]
      175 GETTABLEKS                       R11 R1 K18 ["Height"]
      177 GETTABLEKS                       R12 R1 K18 ["Height"]
      179 CALL                             R10 2 1
      180 SETTABLEKS                       R10 R9 K6 ["Size"]
      182 CALL                             R7 2 1
      183 SETTABLEKS                       R7 R6 K20 ["Reset"]
      185 CALL                             R3 3 -1
      186 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Flags"]
       34 GETTABLEKS                       R5 R5 K12 ["getFFlagTerrainEditorMigrateFoundationFonts"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R2 K13 ["ContextServices"]
       39 GETTABLEKS                       R5 R5 K14 ["Stylizer"]
       41 GETTABLEKS                       R6 R2 K15 ["UI"]
       43 GETTABLEKS                       R6 R6 K16 ["Button"]
       45 GETTABLEKS                       R7 R2 K15 ["UI"]
       47 GETTABLEKS                       R7 R7 K17 ["IconButton"]
       49 GETTABLEKS                       R8 R2 K15 ["UI"]
       51 GETTABLEKS                       R8 R8 K18 ["Pane"]
       53 GETIMPORT                        R9 K5 [require]
       55 GETTABLEKS                       R10 R0 K10 ["Src"]
       57 GETTABLEKS                       R10 R10 K19 ["Resources"]
       59 GETTABLEKS                       R10 R10 K20 ["Theme"]
       61 CALL                             R9 1 1
       62 DUPCLOSURE                       R10 K21 [PROTO_2]
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R7
       69 RETURN                           R10 1
