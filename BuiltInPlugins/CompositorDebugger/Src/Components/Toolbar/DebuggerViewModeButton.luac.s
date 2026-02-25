PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["viewMode"]
        3 JUMPIFNOTEQKS                    R0 K1 ["NodeView"] ; [+3]
        5 LOADK                            R0 K2 ["rbxassetid://6034418507"]
        6 RETURN                           R0 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R0 R1 K0 ["viewMode"]
       10 JUMPIFNOTEQKS                    R0 K3 ["TreeView"] ; [+3]
       12 LOADK                            R0 K4 ["rbxassetid://6035190838"]
       13 RETURN                           R0 1
       14 GETIMPORT                        R0 K6 [error]
       16 LOADK                            R2 K7 ["Unknown debugger view mode: %*"]
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R5 R6 K0 ["viewMode"]
       20 FASTCALL1                        TOSTRING R5 ; [+2]
       21 GETIMPORT                        R4 K9 [tostring]
       23 CALL                             R4 1 1
       24 NAMECALL                         R2 R2 K10 ["format"]
       26 CALL                             R2 2 1
       27 MOVE                             R1 R2
       28 CALL                             R0 1 0
       29 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["viewMode"]
        3 JUMPIFNOTEQKS                    R0 K1 ["NodeView"] ; [+8]
        5 GETUPVAL                         R0 1
        6 LOADK                            R2 K2 ["Tooltips"]
        7 LOADK                            R3 K3 ["NodeViewTooltip"]
        8 NAMECALL                         R0 R0 K4 ["getText"]
       10 CALL                             R0 3 -1
       11 RETURN                           R0 -1
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R0 R1 K0 ["viewMode"]
       15 JUMPIFNOTEQKS                    R0 K5 ["TreeView"] ; [+8]
       17 GETUPVAL                         R0 1
       18 LOADK                            R2 K2 ["Tooltips"]
       19 LOADK                            R3 K6 ["TreeViewTooltip"]
       20 NAMECALL                         R0 R0 K4 ["getText"]
       22 CALL                             R0 3 -1
       23 RETURN                           R0 -1
       24 GETIMPORT                        R0 K8 [error]
       26 LOADK                            R2 K9 ["Unknown debugger view mode: %*"]
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R5 R6 K0 ["viewMode"]
       30 FASTCALL1                        TOSTRING R5 ; [+2]
       31 GETIMPORT                        R4 K11 [tostring]
       33 CALL                             R4 1 1
       34 NAMECALL                         R2 R2 K12 ["format"]
       36 CALL                             R2 2 1
       37 MOVE                             R1 R2
       38 CALL                             R0 1 0
       39 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K2 ["ContextServices"]
       10 GETTABLEKS                       R2 R3 K3 ["Localization"]
       12 NAMECALL                         R2 R2 K4 ["use"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K5 ["useMemo"]
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R1
       20 NEWTABLE                         R5 0 1
       22 GETTABLEKS                       R6 R1 K6 ["viewMode"]
       24 SETLIST                          R5 R6 1 [1]
       26 CALL                             R3 2 1
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R4 R5 K5 ["useMemo"]
       30 NEWCLOSURE                       R5 P1
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R2
       33 NEWTABLE                         R6 0 2
       35 GETTABLEKS                       R7 R1 K6 ["viewMode"]
       37 MOVE                             R8 R2
       38 SETLIST                          R6 R7 2 [1]
       40 CALL                             R4 2 1
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R5 R6 K7 ["createElement"]
       44 GETUPVAL                         R8 2
       45 GETTABLEKS                       R7 R8 K8 ["UI"]
       47 GETTABLEKS                       R6 R7 K9 ["Button"]
       49 DUPTABLE                         R7 K16 [{"LayoutOrder", "Style", "Size", "Position", "AnchorPoint", "OnClick"}]
       50 GETTABLEKS                       R8 R0 K10 ["LayoutOrder"]
       52 SETTABLEKS                       R8 R7 K10 ["LayoutOrder"]
       54 LOADK                            R8 K17 ["Round"]
       55 SETTABLEKS                       R8 R7 K11 ["Style"]
       57 GETTABLEKS                       R8 R0 K12 ["Size"]
       59 SETTABLEKS                       R8 R7 K12 ["Size"]
       61 GETIMPORT                        R8 K20 [UDim2.fromScale]
       63 LOADN                            R9 1
       64 LOADK                            R10 K21 [0.5]
       65 CALL                             R8 2 1
       66 SETTABLEKS                       R8 R7 K13 ["Position"]
       68 GETIMPORT                        R8 K24 [Vector2.new]
       70 LOADN                            R9 1
       71 LOADK                            R10 K21 [0.5]
       72 CALL                             R8 2 1
       73 SETTABLEKS                       R8 R7 K14 ["AnchorPoint"]
       75 GETTABLEKS                       R8 R1 K25 ["toggleDebuggerViewMode"]
       77 SETTABLEKS                       R8 R7 K15 ["OnClick"]
       79 DUPTABLE                         R8 K28 [{"Icon", "Tooltip"}]
       80 GETUPVAL                         R10 0
       81 GETTABLEKS                       R9 R10 K7 ["createElement"]
       83 GETUPVAL                         R12 2
       84 GETTABLEKS                       R11 R12 K8 ["UI"]
       86 GETTABLEKS                       R10 R11 K29 ["Image"]
       88 DUPTABLE                         R11 K30 [{"Size", "Position", "AnchorPoint", "Image"}]
       89 GETIMPORT                        R12 K32 [UDim2.fromOffset]
       91 LOADN                            R13 15
       92 LOADN                            R14 15
       93 CALL                             R12 2 1
       94 SETTABLEKS                       R12 R11 K12 ["Size"]
       96 GETIMPORT                        R12 K20 [UDim2.fromScale]
       98 LOADK                            R13 K21 [0.5]
       99 LOADK                            R14 K21 [0.5]
      100 CALL                             R12 2 1
      101 SETTABLEKS                       R12 R11 K13 ["Position"]
      103 GETIMPORT                        R12 K24 [Vector2.new]
      105 LOADK                            R13 K21 [0.5]
      106 LOADK                            R14 K21 [0.5]
      107 CALL                             R12 2 1
      108 SETTABLEKS                       R12 R11 K14 ["AnchorPoint"]
      110 SETTABLEKS                       R3 R11 K29 ["Image"]
      112 CALL                             R9 2 1
      113 SETTABLEKS                       R9 R8 K26 ["Icon"]
      115 GETUPVAL                         R10 0
      116 GETTABLEKS                       R9 R10 K7 ["createElement"]
      118 GETUPVAL                         R12 2
      119 GETTABLEKS                       R11 R12 K8 ["UI"]
      121 GETTABLEKS                       R10 R11 K27 ["Tooltip"]
      123 DUPTABLE                         R11 K34 [{"Text"}]
      124 SETTABLEKS                       R4 R11 K33 ["Text"]
      126 CALL                             R9 2 1
      127 SETTABLEKS                       R9 R8 K27 ["Tooltip"]
      129 CALL                             R5 3 -1
      130 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R3 K8 ["DebuggerViewModeContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R4 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R5 K11 ["React"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K12 [PROTO_2]
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R2
       34 RETURN                           R4 1
