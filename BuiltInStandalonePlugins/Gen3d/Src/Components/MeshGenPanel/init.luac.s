PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [os.clock]
        3 CALL                             R1 0 -1
        4 CALL                             R0 -1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onClose"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADK                            R2 K1 [""]
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 GETUPVAL                         R4 1
        9 CALL                             R3 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K0 ["useState"]
       13 NEWTABLE                         R6 0 0
       15 CALL                             R5 1 1
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K0 ["useState"]
       19 LOADNIL                          R7
       20 CALL                             R6 1 2
       21 GETUPVAL                         R8 0
       22 GETTABLEKS                       R8 R8 K0 ["useState"]
       24 GETIMPORT                        R9 K4 [os.clock]
       26 CALL                             R9 0 -1
       27 CALL                             R8 -1 2
       28 NEWTABLE                         R10 0 3
       30 DUPTABLE                         R11 K13 [{["name"] = "Prompt", ["hasCloseButton"] = True, ["content"], ["leadingActions"], ["secondaryAction"], ["primaryAction"]}]
       31 DUPTABLE                         R12 K14 [{"Prompt"}]
       32 GETUPVAL                         R13 2
       33 GETUPVAL                         R14 0
       34 GETTABLEKS                       R14 R14 K15 ["createElement"]
       36 GETUPVAL                         R15 3
       37 DUPTABLE                         R16 K18 [{"prompt", "onPromptChanged"}]
       38 SETTABLEKS                       R1 R16 K16 ["prompt"]
       40 SETTABLEKS                       R2 R16 K17 ["onPromptChanged"]
       42 CALL                             R14 2 -1
       43 CALL                             R13 -1 1
       44 SETTABLEKS                       R13 R12 K6 ["Prompt"]
       46 SETTABLEKS                       R12 R11 K9 ["content"]
       48 DUPTABLE                         R12 K20 [{"Options"}]
       49 GETUPVAL                         R13 2
       50 GETUPVAL                         R14 0
       51 GETTABLEKS                       R14 R14 K15 ["createElement"]
       53 GETUPVAL                         R15 4
       54 DUPTABLE                         R16 K23 [{"options", "onOptionsChanged"}]
       55 SETTABLEKS                       R3 R16 K21 ["options"]
       57 SETTABLEKS                       R4 R16 K22 ["onOptionsChanged"]
       59 CALL                             R14 2 -1
       60 CALL                             R13 -1 1
       61 SETTABLEKS                       R13 R12 K19 ["Options"]
       63 SETTABLEKS                       R12 R11 K10 ["leadingActions"]
       65 DUPTABLE                         R12 K29 [{["text"] = "Cancel", ["onActivated"], ["testId"] = "MeshGenCancel"}]
       66 GETTABLEKS                       R13 R0 K30 ["onClose"]
       68 SETTABLEKS                       R13 R12 K26 ["onActivated"]
       70 SETTABLEKS                       R12 R11 K11 ["secondaryAction"]
       72 DUPTABLE                         R12 K34 [{["text"] = "Preview", ["testId"] = "MeshGenPreview", ["isDisabled"], ["onActivated"]}]
       73 JUMPIFEQKS                       R1 K1 [""] ; [+2]
       75 LOADB                            R13 0 +1
       76 LOADB                            R13 1
       77 SETTABLEKS                       R13 R12 K33 ["isDisabled"]
       79 DUPCLOSURE                       R13 K35 [PROTO_0]
       80 SETTABLEKS                       R13 R12 K26 ["onActivated"]
       82 SETTABLEKS                       R12 R11 K12 ["primaryAction"]
       84 DUPTABLE                         R12 K38 [{["name"] = "Reference", ["hasCloseButton"] = False, ["content"], ["secondaryAction"], ["primaryAction"]}]
       85 DUPTABLE                         R13 K39 [{"Reference"}]
       86 GETUPVAL                         R14 2
       87 GETUPVAL                         R15 0
       88 GETTABLEKS                       R15 R15 K15 ["createElement"]
       90 GETUPVAL                         R16 5
       91 DUPTABLE                         R17 K43 [{"slots", "selectedIndex", "onSelect"}]
       92 SETTABLEKS                       R5 R17 K40 ["slots"]
       94 SETTABLEKS                       R6 R17 K41 ["selectedIndex"]
       96 SETTABLEKS                       R7 R17 K42 ["onSelect"]
       98 CALL                             R15 2 -1
       99 CALL                             R14 -1 1
      100 SETTABLEKS                       R14 R13 K36 ["Reference"]
      102 SETTABLEKS                       R13 R12 K9 ["content"]
      104 DUPTABLE                         R13 K29 [{["text"] = "Cancel", ["onActivated"], ["testId"] = "MeshGenCancel"}]
      105 GETTABLEKS                       R14 R0 K30 ["onClose"]
      107 SETTABLEKS                       R14 R13 K26 ["onActivated"]
      109 SETTABLEKS                       R13 R12 K11 ["secondaryAction"]
      111 DUPTABLE                         R13 K46 [{["text"] = "Generate", ["testId"] = "MeshGenGenerate", ["isDisabled"] = False, ["onActivated"]}]
      112 NEWCLOSURE                       R14 P1
      113 CAPTURE                          VAL R9
      114 SETTABLEKS                       R14 R13 K26 ["onActivated"]
      116 SETTABLEKS                       R13 R12 K12 ["primaryAction"]
      118 DUPTABLE                         R13 K49 [{["name"] = "Completion", ["hasCloseButton"] = True, ["hasBackButton"] = False, ["content"], ["leadingActions"], ["secondaryAction"]}]
      119 DUPTABLE                         R14 K50 [{"Completion"}]
      120 GETUPVAL                         R15 2
      121 GETUPVAL                         R16 0
      122 GETTABLEKS                       R16 R16 K15 ["createElement"]
      124 GETUPVAL                         R17 6
      125 DUPTABLE                         R18 K55 [{["prompt"], ["inputImage"] = , ["modelName"] = "Cube 3D"}]
      126 SETTABLEKS                       R1 R18 K16 ["prompt"]
      128 CALL                             R16 2 -1
      129 CALL                             R15 -1 1
      130 SETTABLEKS                       R15 R14 K47 ["Completion"]
      132 SETTABLEKS                       R14 R13 K9 ["content"]
      134 DUPTABLE                         R14 K57 [{"Elapsed"}]
      135 GETUPVAL                         R15 2
      136 GETUPVAL                         R16 0
      137 GETTABLEKS                       R16 R16 K15 ["createElement"]
      139 GETUPVAL                         R17 7
      140 DUPTABLE                         R18 K59 [{"startTime"}]
      141 SETTABLEKS                       R8 R18 K58 ["startTime"]
      143 CALL                             R16 2 -1
      144 CALL                             R15 -1 1
      145 SETTABLEKS                       R15 R14 K56 ["Elapsed"]
      147 SETTABLEKS                       R14 R13 K10 ["leadingActions"]
      149 DUPTABLE                         R14 K60 [{["text"] = "Cancel", ["testId"] = "MeshGenCancel", ["onActivated"]}]
      150 NEWCLOSURE                       R15 P2
      151 CAPTURE                          VAL R0
      152 SETTABLEKS                       R15 R14 K26 ["onActivated"]
      154 SETTABLEKS                       R14 R13 K11 ["secondaryAction"]
      156 SETLIST                          R10 R11 3 [1]
      158 GETUPVAL                         R11 0
      159 GETTABLEKS                       R11 R11 K15 ["createElement"]
      161 GETUPVAL                         R12 8
      162 DUPTABLE                         R13 K67 [{["pages"], ["onClose"], ["closeTestId"] = "MeshGenClose", ["backTestId"] = "MeshGenBack", ["LayoutOrder"]}]
      163 SETTABLEKS                       R10 R13 K61 ["pages"]
      165 GETTABLEKS                       R14 R0 K30 ["onClose"]
      167 SETTABLEKS                       R14 R13 K30 ["onClose"]
      169 GETTABLEKS                       R14 R0 K66 ["LayoutOrder"]
      171 SETTABLEKS                       R14 R13 K66 ["LayoutOrder"]
      173 CALL                             R11 2 -1
      174 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Gen3dCore"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["as"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETIMPORT                        R5 K1 [script]
       34 GETTABLEKS                       R5 R5 K12 ["CompletionContent"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETIMPORT                        R6 K1 [script]
       41 GETTABLEKS                       R6 R6 K13 ["ElapsedTime"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETIMPORT                        R7 K1 [script]
       48 GETTABLEKS                       R7 R7 K14 ["PromptContent"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETIMPORT                        R8 K1 [script]
       55 GETTABLEKS                       R8 R8 K15 ["PromptOptions"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K9 ["Src"]
       62 GETTABLEKS                       R9 R9 K16 ["Components"]
       64 GETTABLEKS                       R9 R9 K17 ["TextureGenPanel"]
       66 GETTABLEKS                       R9 R9 K18 ["ImagePreviewRow"]
       68 CALL                             R8 1 1
       69 GETTABLEKS                       R9 R1 K16 ["Components"]
       71 GETTABLEKS                       R9 R9 K19 ["PageLayout"]
       73 DUPTABLE                         R10 K24 [{["output"] = "meshAndTexture", ["parts"] = "auto"}]
       74 DUPCLOSURE                       R11 K25 [PROTO_3]
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R9
       84 RETURN                           R11 1
