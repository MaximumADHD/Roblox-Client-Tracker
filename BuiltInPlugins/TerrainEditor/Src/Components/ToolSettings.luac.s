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
        4 GETTABLEKS                       R3 R0 K2 ["AutomaticSize"]
        6 GETUPVAL                         R4 0
        7 LOADK                            R6 K3 ["ToolSettings"]
        8 NAMECALL                         R4 R4 K4 ["use"]
       10 CALL                             R4 2 1
       11 GETUPVAL                         R5 1
       12 NEWTABLE                         R6 0 0
       14 CALL                             R5 1 2
       15 GETUPVAL                         R7 2
       16 NAMECALL                         R7 R7 K4 ["use"]
       18 CALL                             R7 1 1
       19 GETUPVAL                         R8 3
       20 MOVE                             R9 R7
       21 CALL                             R8 1 2
       22 GETUPVAL                         R10 4
       23 MOVE                             R11 R7
       24 CALL                             R10 1 1
       25 GETUPVAL                         R11 5
       26 GETTABLEKS                       R11 R11 K5 ["createElement"]
       28 GETUPVAL                         R12 6
       29 DUPTABLE                         R13 K7 [{"BackgroundColor", "LayoutOrder", "Size", "AutomaticSize"}]
       30 GETTABLEKS                       R14 R4 K6 ["BackgroundColor"]
       32 SETTABLEKS                       R14 R13 K6 ["BackgroundColor"]
       34 SETTABLEKS                       R1 R13 K0 ["LayoutOrder"]
       36 SETTABLEKS                       R2 R13 K1 ["Size"]
       38 SETTABLEKS                       R3 R13 K2 ["AutomaticSize"]
       40 DUPTABLE                         R14 K10 [{"Form", "ProgressDialog"}]
       41 GETUPVAL                         R15 5
       42 GETTABLEKS                       R15 R15 K5 ["createElement"]
       44 GETUPVAL                         R16 7
       45 DUPTABLE                         R17 K21 [{["Expansion"], ["ExpandByDefault"] = True, ["Items"], ["LabelHeight"] = 20, ["OnChange"], ["OnExpansionChange"], ["Renderers"], ["Size"], ["UseScrollingFrame"], ["AutomaticSize"]}]
       46 SETTABLEKS                       R5 R17 K11 ["Expansion"]
       48 SETTABLEKS                       R8 R17 K14 ["Items"]
       50 NEWCLOSURE                       R18 P0
       51 CAPTURE                          VAL R8
       52 CAPTURE                          VAL R9
       53 SETTABLEKS                       R18 R17 K17 ["OnChange"]
       55 SETTABLEKS                       R6 R17 K18 ["OnExpansionChange"]
       57 GETUPVAL                         R18 8
       58 SETTABLEKS                       R18 R17 K19 ["Renderers"]
       60 GETIMPORT                        R18 K24 [UDim2.fromScale]
       62 LOADN                            R19 1
       63 LOADN                            R20 1
       64 CALL                             R18 2 1
       65 SETTABLEKS                       R18 R17 K1 ["Size"]
       67 GETTABLEKS                       R18 R0 K20 ["UseScrollingFrame"]
       69 SETTABLEKS                       R18 R17 K20 ["UseScrollingFrame"]
       71 SETTABLEKS                       R3 R17 K2 ["AutomaticSize"]
       73 CALL                             R15 2 1
       74 SETTABLEKS                       R15 R14 K8 ["Form"]
       76 JUMPIFNOT                        R10 ; [+7]
       77 GETUPVAL                         R15 5
       78 GETTABLEKS                       R15 R15 K5 ["createElement"]
       80 GETUPVAL                         R16 9
       81 MOVE                             R17 R10
       82 CALL                             R15 2 1
       83 JUMP                             ; [+1]
       84 LOADNIL                          R15
       85 SETTABLEKS                       R15 R14 K9 ["ProgressDialog"]
       87 CALL                             R11 3 -1
       88 RETURN                           R11 -1

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
