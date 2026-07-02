PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["Id"]
        8 NEWTABLE                         R8 0 0
       10 SETTABLE                         R8 R1 R7
       11 GETTABLEKS                       R7 R6 K1 ["Children"]
       13 LOADNIL                          R8
       14 LOADNIL                          R9
       15 FORGPREP                         R7
       16 GETTABLEKS                       R12 R11 K2 ["Value"]
       18 GETUPVAL                         R15 0
       19 GETTABLE                         R14 R15 R5
       20 GETTABLEKS                       R14 R14 K1 ["Children"]
       22 GETTABLE                         R13 R14 R10
       23 GETTABLEKS                       R13 R13 K2 ["Value"]
       25 JUMPIFEQ                         R12 R13 ; [+12]
       27 GETTABLEKS                       R13 R6 K0 ["Id"]
       29 GETTABLE                         R12 R1 R13
       30 GETTABLEKS                       R13 R11 K3 ["DataId"]
       32 JUMPIF                           R13 ; [+2]
       33 GETTABLEKS                       R13 R11 K0 ["Id"]
       35 GETTABLEKS                       R14 R11 K2 ["Value"]
       37 SETTABLE                         R14 R12 R13
       38 FORGLOOP                         R7 2 ; [-23]
       40 FORGLOOP                         R2 2 ; [-35]
       42 GETUPVAL                         R2 1
       43 MOVE                             R3 R1
       44 CALL                             R2 1 0
       45 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["LayoutOrder"]
        2 GETTABLEKS                       R2 R0 K1 ["Size"]
        4 GETUPVAL                         R3 0
        5 LOADK                            R5 K2 ["ToolSettings"]
        6 NAMECALL                         R3 R3 K3 ["use"]
        8 CALL                             R3 2 1
        9 GETUPVAL                         R4 1
       10 NEWTABLE                         R5 0 0
       12 CALL                             R4 1 2
       13 GETUPVAL                         R6 2
       14 NAMECALL                         R6 R6 K3 ["use"]
       16 CALL                             R6 1 1
       17 GETUPVAL                         R7 3
       18 MOVE                             R8 R6
       19 CALL                             R7 1 2
       20 GETUPVAL                         R9 4
       21 MOVE                             R10 R6
       22 CALL                             R9 1 1
       23 GETUPVAL                         R10 5
       24 GETTABLEKS                       R10 R10 K4 ["createElement"]
       26 GETUPVAL                         R11 6
       27 DUPTABLE                         R12 K6 [{"BackgroundColor", "LayoutOrder", "Size"}]
       28 GETTABLEKS                       R13 R3 K5 ["BackgroundColor"]
       30 SETTABLEKS                       R13 R12 K5 ["BackgroundColor"]
       32 SETTABLEKS                       R1 R12 K0 ["LayoutOrder"]
       34 SETTABLEKS                       R2 R12 K1 ["Size"]
       36 DUPTABLE                         R13 K9 [{"Form", "ProgressDialog"}]
       37 GETUPVAL                         R14 5
       38 GETTABLEKS                       R14 R14 K4 ["createElement"]
       40 GETUPVAL                         R15 7
       41 DUPTABLE                         R16 K19 [{["Expansion"], ["ExpandByDefault"] = True, ["Items"], ["LabelHeight"] = 20, ["OnChange"], ["OnExpansionChange"], ["Renderers"], ["Size"]}]
       42 SETTABLEKS                       R4 R16 K10 ["Expansion"]
       44 SETTABLEKS                       R7 R16 K13 ["Items"]
       46 NEWCLOSURE                       R17 P0
       47 CAPTURE                          VAL R7
       48 CAPTURE                          VAL R8
       49 SETTABLEKS                       R17 R16 K16 ["OnChange"]
       51 SETTABLEKS                       R5 R16 K17 ["OnExpansionChange"]
       53 GETUPVAL                         R17 8
       54 SETTABLEKS                       R17 R16 K18 ["Renderers"]
       56 GETIMPORT                        R17 K22 [UDim2.fromScale]
       58 LOADN                            R18 1
       59 LOADN                            R19 1
       60 CALL                             R17 2 1
       61 SETTABLEKS                       R17 R16 K1 ["Size"]
       63 CALL                             R14 2 1
       64 SETTABLEKS                       R14 R13 K7 ["Form"]
       66 JUMPIFNOT                        R9 ; [+7]
       67 GETUPVAL                         R14 5
       68 GETTABLEKS                       R14 R14 K4 ["createElement"]
       70 GETUPVAL                         R15 9
       71 MOVE                             R16 R9
       72 CALL                             R14 2 1
       73 JUMP                             ; [+1]
       74 LOADNIL                          R14
       75 SETTABLEKS                       R14 R13 K8 ["ProgressDialog"]
       77 CALL                             R10 3 -1
       78 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["useState"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K10 ["Src"]
       27 GETTABLEKS                       R5 R5 K11 ["Hooks"]
       29 GETTABLEKS                       R5 R5 K12 ["useForm"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K10 ["Src"]
       36 GETTABLEKS                       R6 R6 K11 ["Hooks"]
       38 GETTABLEKS                       R6 R6 K13 ["useOperation"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K10 ["Src"]
       45 GETTABLEKS                       R7 R7 K14 ["Components"]
       47 GETTABLEKS                       R7 R7 K15 ["ProgressDialog"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R8 R0 K10 ["Src"]
       54 GETTABLEKS                       R8 R8 K14 ["Components"]
       56 GETTABLEKS                       R8 R8 K16 ["Renderers"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K5 [require]
       61 GETTABLEKS                       R9 R0 K10 ["Src"]
       63 GETTABLEKS                       R9 R9 K17 ["Controllers"]
       65 GETTABLEKS                       R9 R9 K18 ["ToolController"]
       67 CALL                             R8 1 1
       68 GETTABLEKS                       R9 R2 K19 ["ContextServices"]
       70 GETTABLEKS                       R9 R9 K20 ["Stylizer"]
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K10 ["Src"]
       76 GETTABLEKS                       R11 R11 K21 ["Resources"]
       78 GETTABLEKS                       R11 R11 K22 ["Theme"]
       80 CALL                             R10 1 1
       81 GETTABLEKS                       R11 R2 K23 ["UI"]
       83 GETTABLEKS                       R12 R11 K24 ["Form"]
       85 GETTABLEKS                       R13 R11 K25 ["Pane"]
       87 DUPCLOSURE                       R14 K26 [PROTO_1]
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R13
       95 CAPTURE                          VAL R12
       96 CAPTURE                          VAL R7
       97 CAPTURE                          VAL R6
       98 RETURN                           R14 1
