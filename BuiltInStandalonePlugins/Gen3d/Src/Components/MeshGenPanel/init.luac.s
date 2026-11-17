PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["cancel"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["onClose"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["viewModel"]
        2 GETTABLEKS                       R2 R1 K1 ["generation"]
        4 NEWTABLE                         R3 0 3
        6 DUPTABLE                         R4 K10 [{["name"] = "Prompt", ["hasCloseButton"] = True, ["content"], ["leadingActions"], ["secondaryAction"], ["primaryAction"]}]
        7 DUPTABLE                         R5 K11 [{"Prompt"}]
        8 GETUPVAL                         R6 0
        9 GETUPVAL                         R7 1
       10 GETTABLEKS                       R7 R7 K12 ["createElement"]
       12 GETUPVAL                         R8 2
       13 DUPTABLE                         R9 K15 [{"prompt", "onPromptChanged"}]
       14 GETTABLEKS                       R10 R1 K13 ["prompt"]
       16 SETTABLEKS                       R10 R9 K13 ["prompt"]
       18 GETTABLEKS                       R10 R1 K16 ["setPrompt"]
       20 SETTABLEKS                       R10 R9 K14 ["onPromptChanged"]
       22 CALL                             R7 2 -1
       23 CALL                             R6 -1 1
       24 SETTABLEKS                       R6 R5 K3 ["Prompt"]
       26 SETTABLEKS                       R5 R4 K6 ["content"]
       28 DUPTABLE                         R5 K18 [{"Options"}]
       29 GETUPVAL                         R6 0
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R7 R7 K12 ["createElement"]
       33 GETUPVAL                         R8 3
       34 DUPTABLE                         R9 K21 [{"options", "onOptionsChanged"}]
       35 GETTABLEKS                       R10 R1 K19 ["options"]
       37 SETTABLEKS                       R10 R9 K19 ["options"]
       39 GETTABLEKS                       R10 R1 K22 ["setOptions"]
       41 SETTABLEKS                       R10 R9 K20 ["onOptionsChanged"]
       43 CALL                             R7 2 -1
       44 CALL                             R6 -1 1
       45 SETTABLEKS                       R6 R5 K17 ["Options"]
       47 SETTABLEKS                       R5 R4 K7 ["leadingActions"]
       49 DUPTABLE                         R5 K28 [{["text"] = "Cancel", ["onActivated"], ["testId"] = "MeshGenCancel"}]
       50 GETTABLEKS                       R6 R0 K29 ["onClose"]
       52 SETTABLEKS                       R6 R5 K25 ["onActivated"]
       54 SETTABLEKS                       R5 R4 K8 ["secondaryAction"]
       56 DUPTABLE                         R5 K33 [{["text"] = "Preview", ["testId"] = "MeshGenPreview", ["isDisabled"], ["onActivated"]}]
       57 GETTABLEKS                       R7 R1 K13 ["prompt"]
       59 JUMPIFEQKS                       R7 K34 [""] ; [+2]
       61 LOADB                            R6 0 +1
       62 LOADB                            R6 1
       63 SETTABLEKS                       R6 R5 K32 ["isDisabled"]
       65 GETTABLEKS                       R6 R1 K35 ["generateReferences"]
       67 SETTABLEKS                       R6 R5 K25 ["onActivated"]
       69 SETTABLEKS                       R5 R4 K9 ["primaryAction"]
       71 DUPTABLE                         R5 K38 [{["name"] = "Reference", ["hasCloseButton"] = False, ["content"], ["secondaryAction"], ["primaryAction"]}]
       72 DUPTABLE                         R6 K39 [{"Reference"}]
       73 GETUPVAL                         R7 0
       74 GETUPVAL                         R8 1
       75 GETTABLEKS                       R8 R8 K12 ["createElement"]
       77 GETUPVAL                         R9 4
       78 DUPTABLE                         R10 K43 [{"slots", "selectedIndex", "onSelect"}]
       79 GETTABLEKS                       R11 R1 K44 ["referenceSlots"]
       81 SETTABLEKS                       R11 R10 K40 ["slots"]
       83 GETTABLEKS                       R11 R1 K45 ["selectedReferenceIndex"]
       85 SETTABLEKS                       R11 R10 K41 ["selectedIndex"]
       87 GETTABLEKS                       R11 R1 K46 ["selectReference"]
       89 SETTABLEKS                       R11 R10 K42 ["onSelect"]
       91 CALL                             R8 2 -1
       92 CALL                             R7 -1 1
       93 SETTABLEKS                       R7 R6 K36 ["Reference"]
       95 SETTABLEKS                       R6 R5 K6 ["content"]
       97 DUPTABLE                         R6 K28 [{["text"] = "Cancel", ["onActivated"], ["testId"] = "MeshGenCancel"}]
       98 GETTABLEKS                       R7 R0 K29 ["onClose"]
      100 SETTABLEKS                       R7 R6 K25 ["onActivated"]
      102 SETTABLEKS                       R6 R5 K8 ["secondaryAction"]
      104 DUPTABLE                         R6 K49 [{["text"] = "Generate", ["testId"] = "MeshGenGenerate", ["isDisabled"], ["onActivated"]}]
      105 GETTABLEKS                       R8 R1 K45 ["selectedReferenceIndex"]
      107 JUMPIFEQKNIL                     R8 ; [+2]
      109 LOADB                            R7 0 +1
      110 LOADB                            R7 1
      111 SETTABLEKS                       R7 R6 K32 ["isDisabled"]
      113 GETTABLEKS                       R7 R1 K50 ["generate"]
      115 SETTABLEKS                       R7 R6 K25 ["onActivated"]
      117 SETTABLEKS                       R6 R5 K9 ["primaryAction"]
      119 DUPTABLE                         R6 K53 [{["name"] = "Completion", ["hasCloseButton"] = True, ["hasBackButton"] = False, ["content"], ["leadingActions"], ["secondaryAction"]}]
      120 DUPTABLE                         R7 K54 [{"Completion"}]
      121 GETUPVAL                         R8 0
      122 GETUPVAL                         R9 1
      123 GETTABLEKS                       R9 R9 K12 ["createElement"]
      125 GETUPVAL                         R10 5
      126 DUPTABLE                         R11 K57 [{["prompt"], ["generation"], ["modelName"] = "Cube 3D"}]
      127 GETTABLEKS                       R12 R1 K13 ["prompt"]
      129 SETTABLEKS                       R12 R11 K13 ["prompt"]
      131 SETTABLEKS                       R2 R11 K1 ["generation"]
      133 CALL                             R9 2 -1
      134 CALL                             R8 -1 1
      135 SETTABLEKS                       R8 R7 K51 ["Completion"]
      137 SETTABLEKS                       R7 R6 K6 ["content"]
      139 DUPTABLE                         R7 K59 [{"Elapsed"}]
      140 JUMPIFNOT                        R2 ; [+19]
      141 GETUPVAL                         R9 6
      142 GETTABLEKS                       R9 R9 K60 ["isInProgress"]
      144 MOVE                             R10 R2
      145 CALL                             R9 1 1
      146 JUMPIFNOT                        R9 ; [+13]
      147 GETUPVAL                         R8 0
      148 GETUPVAL                         R9 1
      149 GETTABLEKS                       R9 R9 K12 ["createElement"]
      151 GETUPVAL                         R10 7
      152 DUPTABLE                         R11 K62 [{"startTime"}]
      153 GETTABLEKS                       R12 R2 K61 ["startTime"]
      155 SETTABLEKS                       R12 R11 K61 ["startTime"]
      157 CALL                             R9 2 -1
      158 CALL                             R8 -1 1
      159 JUMP                             ; [+1]
      160 LOADNIL                          R8
      161 SETTABLEKS                       R8 R7 K58 ["Elapsed"]
      163 SETTABLEKS                       R7 R6 K7 ["leadingActions"]
      165 DUPTABLE                         R7 K63 [{["text"] = "Cancel", ["testId"] = "MeshGenCancel", ["onActivated"]}]
      166 NEWCLOSURE                       R8 P0
      167 CAPTURE                          VAL R1
      168 CAPTURE                          VAL R0
      169 SETTABLEKS                       R8 R7 K25 ["onActivated"]
      171 SETTABLEKS                       R7 R6 K8 ["secondaryAction"]
      173 SETLIST                          R3 R4 3 [1]
      175 GETUPVAL                         R4 1
      176 GETTABLEKS                       R4 R4 K12 ["createElement"]
      178 GETUPVAL                         R5 8
      179 DUPTABLE                         R6 K70 [{["pages"], ["onClose"], ["closeTestId"] = "MeshGenClose", ["backTestId"] = "MeshGenBack", ["LayoutOrder"]}]
      180 SETTABLEKS                       R3 R6 K64 ["pages"]
      182 GETTABLEKS                       R7 R0 K29 ["onClose"]
      184 SETTABLEKS                       R7 R6 K29 ["onClose"]
      186 GETTABLEKS                       R7 R0 K69 ["LayoutOrder"]
      188 SETTABLEKS                       R7 R6 K69 ["LayoutOrder"]
      190 CALL                             R4 2 -1
      191 RETURN                           R4 -1

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
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Util"]
       36 GETTABLEKS                       R5 R5 K12 ["MeshGenViewModel"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETIMPORT                        R6 K1 [script]
       43 GETTABLEKS                       R6 R6 K13 ["CompletionContent"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETIMPORT                        R7 K1 [script]
       50 GETTABLEKS                       R7 R7 K14 ["ElapsedTime"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETIMPORT                        R8 K1 [script]
       57 GETTABLEKS                       R8 R8 K15 ["PromptContent"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETIMPORT                        R9 K1 [script]
       64 GETTABLEKS                       R9 R9 K16 ["PromptOptions"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K9 ["Src"]
       71 GETTABLEKS                       R10 R10 K17 ["Components"]
       73 GETTABLEKS                       R10 R10 K18 ["TextureGenPanel"]
       75 GETTABLEKS                       R10 R10 K19 ["ImagePreviewRow"]
       77 CALL                             R9 1 1
       78 GETTABLEKS                       R10 R1 K17 ["Components"]
       80 GETTABLEKS                       R10 R10 K20 ["PageLayout"]
       82 DUPCLOSURE                       R11 K21 [PROTO_1]
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R10
       92 RETURN                           R11 1
