PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R10 R7 K0 ["Value"]
        8 FASTCALL1                        TYPEOF R10 ; [+2]
        9 GETIMPORT                        R9 K2 [typeof]
       11 CALL                             R9 1 1
       12 JUMPIFNOTEQKS                    R9 K3 ["table"] ; [+9]
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R9 R7 K0 ["Value"]
       17 GETTABLE                         R11 R1 R6
       18 GETTABLEKS                       R10 R11 K0 ["Value"]
       20 CALL                             R8 2 1
       21 JUMP                             ; [+9]
       22 GETTABLEKS                       R9 R7 K0 ["Value"]
       24 GETTABLE                         R11 R1 R6
       25 GETTABLEKS                       R10 R11 K0 ["Value"]
       27 JUMPIFEQ                         R9 R10 ; [+2]
       29 LOADB                            R8 0 +1
       30 LOADB                            R8 1
       31 JUMPIF                           R8 ; [+56]
       32 GETTABLEKS                       R9 R7 K4 ["Children"]
       34 JUMPIFNOT                        R9 ; [+29]
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R10 R7 K4 ["Children"]
       38 GETTABLE                         R12 R1 R6
       39 GETTABLEKS                       R11 R12 K4 ["Children"]
       41 CALL                             R9 2 1
       42 JUMPIF                           R9 ; [+21]
       43 GETTABLEKS                       R9 R7 K5 ["DataId"]
       45 JUMPIF                           R9 ; [+2]
       46 GETTABLEKS                       R9 R7 K6 ["Id"]
       48 DUPTABLE                         R10 K7 [{"Children", "Value"}]
       49 GETUPVAL                         R11 1
       50 GETTABLEKS                       R12 R7 K4 ["Children"]
       52 GETTABLE                         R14 R1 R6
       53 GETTABLEKS                       R13 R14 K4 ["Children"]
       55 CALL                             R11 2 1
       56 SETTABLEKS                       R11 R10 K4 ["Children"]
       58 GETTABLEKS                       R11 R7 K0 ["Value"]
       60 SETTABLEKS                       R11 R10 K0 ["Value"]
       62 SETTABLE                         R10 R2 R9
       63 JUMP                             ; [+51]
       64 GETTABLEKS                       R9 R7 K4 ["Children"]
       66 JUMPIFNOT                        R9 ; [+12]
       67 GETTABLEKS                       R9 R7 K5 ["DataId"]
       69 JUMPIF                           R9 ; [+2]
       70 GETTABLEKS                       R9 R7 K6 ["Id"]
       72 DUPTABLE                         R10 K8 [{"Value"}]
       73 GETTABLEKS                       R11 R7 K0 ["Value"]
       75 SETTABLEKS                       R11 R10 K0 ["Value"]
       77 SETTABLE                         R10 R2 R9
       78 JUMP                             ; [+36]
       79 GETTABLEKS                       R9 R7 K5 ["DataId"]
       81 JUMPIF                           R9 ; [+2]
       82 GETTABLEKS                       R9 R7 K6 ["Id"]
       84 GETTABLEKS                       R10 R7 K0 ["Value"]
       86 SETTABLE                         R10 R2 R9
       87 JUMP                             ; [+27]
       88 GETTABLEKS                       R9 R7 K4 ["Children"]
       90 JUMPIFNOT                        R9 ; [+24]
       91 GETUPVAL                         R9 0
       92 GETTABLEKS                       R10 R7 K4 ["Children"]
       94 GETTABLE                         R12 R1 R6
       95 GETTABLEKS                       R11 R12 K4 ["Children"]
       97 CALL                             R9 2 1
       98 JUMPIF                           R9 ; [+16]
       99 GETTABLEKS                       R9 R7 K5 ["DataId"]
      101 JUMPIF                           R9 ; [+2]
      102 GETTABLEKS                       R9 R7 K6 ["Id"]
      104 DUPTABLE                         R10 K9 [{"Children"}]
      105 GETUPVAL                         R11 1
      106 GETTABLEKS                       R12 R7 K4 ["Children"]
      108 GETTABLE                         R14 R1 R6
      109 GETTABLEKS                       R13 R14 K4 ["Children"]
      111 CALL                             R11 2 1
      112 SETTABLEKS                       R11 R10 K4 ["Children"]
      114 SETTABLE                         R10 R2 R9
      115 FORGLOOP                         R3 2 ; [-110]
      117 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+26]
        3 NEWTABLE                         R1 0 0
        5 DUPCLOSURE                       R2 K0 [PROTO_0]
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R2
        8 MOVE                             R3 R0
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 FORGPREP                         R3
       12 GETTABLEKS                       R8 R7 K1 ["Id"]
       14 MOVE                             R9 R2
       15 GETTABLEKS                       R10 R7 K2 ["Children"]
       17 GETUPVAL                         R13 2
       18 GETTABLE                         R12 R13 R6
       19 GETTABLEKS                       R11 R12 K2 ["Children"]
       21 CALL                             R9 2 1
       22 SETTABLE                         R9 R1 R8
       23 FORGLOOP                         R3 2 ; [-12]
       25 GETUPVAL                         R3 3
       26 MOVE                             R4 R1
       27 CALL                             R3 1 0
       28 RETURN                           R0 0
       29 NEWTABLE                         R1 0 0
       31 MOVE                             R2 R0
       32 LOADNIL                          R3
       33 LOADNIL                          R4
       34 FORGPREP                         R2
       35 GETTABLEKS                       R7 R6 K1 ["Id"]
       37 NEWTABLE                         R8 0 0
       39 SETTABLE                         R8 R1 R7
       40 GETTABLEKS                       R7 R6 K2 ["Children"]
       42 LOADNIL                          R8
       43 LOADNIL                          R9
       44 FORGPREP                         R7
       45 GETTABLEKS                       R12 R11 K3 ["Value"]
       47 GETUPVAL                         R17 2
       48 GETTABLE                         R16 R17 R5
       49 GETTABLEKS                       R15 R16 K2 ["Children"]
       51 GETTABLE                         R14 R15 R10
       52 GETTABLEKS                       R13 R14 K3 ["Value"]
       54 JUMPIFEQ                         R12 R13 ; [+12]
       56 GETTABLEKS                       R13 R6 K1 ["Id"]
       58 GETTABLE                         R12 R1 R13
       59 GETTABLEKS                       R13 R11 K4 ["DataId"]
       61 JUMPIF                           R13 ; [+2]
       62 GETTABLEKS                       R13 R11 K1 ["Id"]
       64 GETTABLEKS                       R14 R11 K3 ["Value"]
       66 SETTABLE                         R14 R12 R13
       67 FORGLOOP                         R7 2 ; [-23]
       69 FORGLOOP                         R2 2 ; [-35]
       71 GETUPVAL                         R2 3
       72 MOVE                             R3 R1
       73 CALL                             R2 1 0
       74 RETURN                           R0 0

PROTO_2:
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
       23 GETUPVAL                         R11 5
       24 GETTABLEKS                       R10 R11 K4 ["createElement"]
       26 GETUPVAL                         R11 6
       27 DUPTABLE                         R12 K6 [{"BackgroundColor", "LayoutOrder", "Size"}]
       28 GETTABLEKS                       R13 R3 K5 ["BackgroundColor"]
       30 SETTABLEKS                       R13 R12 K5 ["BackgroundColor"]
       32 SETTABLEKS                       R1 R12 K0 ["LayoutOrder"]
       34 SETTABLEKS                       R2 R12 K1 ["Size"]
       36 DUPTABLE                         R13 K9 [{"Form", "ProgressDialog"}]
       37 GETUPVAL                         R15 5
       38 GETTABLEKS                       R14 R15 K4 ["createElement"]
       40 GETUPVAL                         R15 7
       41 DUPTABLE                         R16 K17 [{"Expansion", "ExpandByDefault", "Items", "LabelHeight", "OnChange", "OnExpansionChange", "Renderers", "Size"}]
       42 SETTABLEKS                       R4 R16 K10 ["Expansion"]
       44 LOADB                            R17 1
       45 SETTABLEKS                       R17 R16 K11 ["ExpandByDefault"]
       47 SETTABLEKS                       R7 R16 K12 ["Items"]
       49 LOADN                            R17 20
       50 SETTABLEKS                       R17 R16 K13 ["LabelHeight"]
       52 NEWCLOSURE                       R17 P0
       53 CAPTURE                          UPVAL U8
       54 CAPTURE                          UPVAL U9
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R8
       57 SETTABLEKS                       R17 R16 K14 ["OnChange"]
       59 SETTABLEKS                       R5 R16 K15 ["OnExpansionChange"]
       61 GETUPVAL                         R17 10
       62 SETTABLEKS                       R17 R16 K16 ["Renderers"]
       64 GETIMPORT                        R17 K20 [UDim2.fromScale]
       66 LOADN                            R18 1
       67 LOADN                            R19 1
       68 CALL                             R17 2 1
       69 SETTABLEKS                       R17 R16 K1 ["Size"]
       71 CALL                             R14 2 1
       72 SETTABLEKS                       R14 R13 K7 ["Form"]
       74 JUMPIFNOT                        R9 ; [+7]
       75 GETUPVAL                         R15 5
       76 GETTABLEKS                       R14 R15 K4 ["createElement"]
       78 GETUPVAL                         R15 11
       79 MOVE                             R16 R9
       80 CALL                             R14 2 1
       81 JUMP                             ; [+1]
       82 LOADNIL                          R14
       83 SETTABLEKS                       R14 R13 K8 ["ProgressDialog"]
       85 CALL                             R10 3 -1
       86 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["useState"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R7 R0 K10 ["Src"]
       27 GETTABLEKS                       R6 R7 K11 ["Hooks"]
       29 GETTABLEKS                       R5 R6 K12 ["useForm"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R8 R0 K10 ["Src"]
       36 GETTABLEKS                       R7 R8 K11 ["Hooks"]
       38 GETTABLEKS                       R6 R7 K13 ["useOperation"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R9 R0 K10 ["Src"]
       45 GETTABLEKS                       R8 R9 K14 ["Components"]
       47 GETTABLEKS                       R7 R8 K15 ["ProgressDialog"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R10 R0 K10 ["Src"]
       54 GETTABLEKS                       R9 R10 K14 ["Components"]
       56 GETTABLEKS                       R8 R9 K16 ["Renderers"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K5 [require]
       61 GETTABLEKS                       R11 R0 K10 ["Src"]
       63 GETTABLEKS                       R10 R11 K17 ["Controllers"]
       65 GETTABLEKS                       R9 R10 K18 ["ToolController"]
       67 CALL                             R8 1 1
       68 GETTABLEKS                       R10 R2 K19 ["ContextServices"]
       70 GETTABLEKS                       R9 R10 K20 ["Stylizer"]
       72 GETTABLEKS                       R11 R2 K21 ["Util"]
       74 GETTABLEKS                       R10 R11 K22 ["deepEqual"]
       76 GETIMPORT                        R11 K5 [require]
       78 GETTABLEKS                       R14 R0 K10 ["Src"]
       80 GETTABLEKS                       R13 R14 K23 ["Resources"]
       82 GETTABLEKS                       R12 R13 K24 ["Theme"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K5 [require]
       87 GETTABLEKS                       R15 R0 K10 ["Src"]
       89 GETTABLEKS                       R14 R15 K25 ["Flags"]
       91 GETTABLEKS                       R13 R14 K26 ["getFFlagTerrainEditorGenerationFeature"]
       93 CALL                             R12 1 1
       94 GETTABLEKS                       R13 R2 K27 ["UI"]
       96 GETTABLEKS                       R14 R13 K28 ["Form"]
       98 GETTABLEKS                       R15 R13 K29 ["Pane"]
      100 DUPCLOSURE                       R16 K30 [PROTO_2]
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R15
      108 CAPTURE                          VAL R14
      109 CAPTURE                          VAL R12
      110 CAPTURE                          VAL R10
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R6
      113 RETURN                           R16 1
