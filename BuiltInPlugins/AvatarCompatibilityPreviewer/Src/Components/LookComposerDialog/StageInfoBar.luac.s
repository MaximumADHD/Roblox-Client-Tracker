PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 1
        6 NAMECALL                         R1 R1 K0 ["use"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 2
       10 CALL                             R2 0 1
       11 GETTABLEKS                       R4 R0 K1 ["isSelected"]
       13 JUMPIFNOT                        R4 ; [+2]
       14 LOADK                            R3 K2 ["content-emphasis"]
       15 JUMP                             ; [+1]
       16 LOADK                            R3 K3 ["content-default"]
       17 GETTABLEKS                       R4 R0 K1 ["isSelected"]
       19 JUMPIFNOT                        R4 ; [+3]
       20 GETTABLEKS                       R5 R0 K4 ["isCompleted"]
       22 NOT                              R4 R5
       23 GETTABLEKS                       R6 R0 K4 ["isCompleted"]
       25 JUMPIFNOT                        R6 ; [+30]
       26 GETUPVAL                         R5 3
       27 GETTABLEKS                       R5 R5 K5 ["createElement"]
       29 GETUPVAL                         R6 4
       30 DUPTABLE                         R7 K9 [{"name", "size", "style"}]
       31 GETUPVAL                         R8 5
       32 GETTABLEKS                       R8 R8 K10 ["Check"]
       34 SETTABLEKS                       R8 R7 K6 ["name"]
       36 GETUPVAL                         R8 6
       37 GETTABLEKS                       R8 R8 K11 ["Medium"]
       39 SETTABLEKS                       R8 R7 K7 ["size"]
       41 DUPTABLE                         R8 K15 [{["Color3"], ["Transparency"] = 0}]
       42 GETTABLEKS                       R9 R2 K16 ["Color"]
       44 GETTABLEKS                       R9 R9 K17 ["Surface"]
       46 GETTABLEKS                       R9 R9 K18 ["Surface_0"]
       48 GETTABLEKS                       R9 R9 K12 ["Color3"]
       50 SETTABLEKS                       R9 R8 K12 ["Color3"]
       52 SETTABLEKS                       R8 R7 K8 ["style"]
       54 CALL                             R5 2 1
       55 JUMP                             ; [+22]
       56 GETUPVAL                         R5 3
       57 GETTABLEKS                       R5 R5 K5 ["createElement"]
       59 GETUPVAL                         R6 7
       60 DUPTABLE                         R7 K21 [{"Text", "tag"}]
       61 GETTABLEKS                       R9 R0 K22 ["stageNumber"]
       63 FASTCALL1                        TOSTRING R9 ; [+2]
       64 GETIMPORT                        R8 K24 [tostring]
       66 CALL                             R8 1 1
       67 SETTABLEKS                       R8 R7 K19 ["Text"]
       69 LOADK                            R9 K25 ["text-label-medium %*"]
       70 MOVE                             R11 R3
       71 NAMECALL                         R9 R9 K26 ["format"]
       73 CALL                             R9 2 1
       74 MOVE                             R8 R9
       75 SETTABLEKS                       R8 R7 K20 ["tag"]
       77 CALL                             R5 2 1
       78 GETUPVAL                         R6 3
       79 GETTABLEKS                       R6 R6 K5 ["createElement"]
       81 GETUPVAL                         R7 8
       82 DUPTABLE                         R8 K29 [{["tag"] = "row align-y-center gap-medium auto-xy", ["LayoutOrder"]}]
       83 GETTABLEKS                       R9 R0 K28 ["LayoutOrder"]
       85 SETTABLEKS                       R9 R8 K28 ["LayoutOrder"]
       87 DUPTABLE                         R9 K32 [{"Circle", "Label"}]
       88 GETUPVAL                         R10 3
       89 GETTABLEKS                       R10 R10 K5 ["createElement"]
       91 GETUPVAL                         R11 8
       92 DUPTABLE                         R12 K35 [{["tag"], ["Size"], ["LayoutOrder"] = 1}]
       93 NEWTABLE                         R13 8 0
       95 LOADB                            R14 1
       96 SETTABLEKS                       R14 R13 K36 ["align-x-center align-y-center radius-circle"]
       98 GETTABLEKS                       R14 R0 K4 ["isCompleted"]
      100 SETTABLEKS                       R14 R13 K37 ["bg-system-contrast"]
      102 GETTABLEKS                       R15 R0 K4 ["isCompleted"]
      104 NOT                              R14 R15
      105 SETTABLEKS                       R14 R13 K38 ["bg-surface-200"]
      107 SETTABLEKS                       R4 R13 K39 ["stroke-system-contrast"]
      109 NOT                              R14 R4
      110 SETTABLEKS                       R14 R13 K40 ["stroke-muted"]
      112 SETTABLEKS                       R13 R12 K20 ["tag"]
      114 GETIMPORT                        R13 K43 [UDim2.fromOffset]
      116 LOADN                            R14 24
      117 LOADN                            R15 24
      118 CALL                             R13 2 1
      119 SETTABLEKS                       R13 R12 K33 ["Size"]
      121 DUPTABLE                         R13 K45 [{"Content"}]
      122 SETTABLEKS                       R5 R13 K44 ["Content"]
      124 CALL                             R10 3 1
      125 SETTABLEKS                       R10 R9 K30 ["Circle"]
      127 GETUPVAL                         R10 3
      128 GETTABLEKS                       R10 R10 K5 ["createElement"]
      130 GETUPVAL                         R11 7
      131 DUPTABLE                         R12 K47 [{["Text"], ["tag"], ["LayoutOrder"] = 2}]
      132 LOADK                            R15 K48 ["LookComposerDialog"]
      133 GETTABLEKS                       R16 R0 K49 ["labelKey"]
      135 NAMECALL                         R13 R1 K50 ["getText"]
      137 CALL                             R13 3 1
      138 SETTABLEKS                       R13 R12 K19 ["Text"]
      140 LOADK                            R14 K51 ["auto-xy text-label-medium %*"]
      141 MOVE                             R16 R3
      142 NAMECALL                         R14 R14 K26 ["format"]
      144 CALL                             R14 2 1
      145 MOVE                             R13 R14
      146 SETTABLEKS                       R13 R12 K20 ["tag"]
      148 CALL                             R10 2 1
      149 SETTABLEKS                       R10 R9 K31 ["Label"]
      151 CALL                             R6 3 -1
      152 RETURN                           R6 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["createElement"]
        8 GETUPVAL                         R2 2
        9 DUPTABLE                         R3 K4 [{["tag"] = "col gap-medium size-full-0 auto-y", ["LayoutOrder"]}]
       10 GETTABLEKS                       R4 R0 K3 ["LayoutOrder"]
       12 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       14 DUPTABLE                         R4 K7 [{"StagesRow", "DividerContainer"}]
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K0 ["createElement"]
       18 GETUPVAL                         R6 2
       19 DUPTABLE                         R7 K10 [{["tag"] = "row align-y-center size-full-0 auto-y", ["LayoutOrder"] = 1}]
       20 DUPTABLE                         R8 K13 [{"LeftHalf", "RightHalf"}]
       21 GETUPVAL                         R9 1
       22 GETTABLEKS                       R9 R9 K0 ["createElement"]
       24 GETUPVAL                         R10 2
       25 DUPTABLE                         R11 K16 [{["tag"] = "row align-x-left align-y-center auto-y", ["Size"], ["LayoutOrder"] = 1}]
       26 GETIMPORT                        R12 K19 [UDim2.fromScale]
       28 LOADK                            R13 K20 [0.5]
       29 LOADN                            R14 0
       30 CALL                             R12 2 1
       31 SETTABLEKS                       R12 R11 K15 ["Size"]
       33 DUPTABLE                         R12 K22 [{"ConfirmItemsStage"}]
       34 GETUPVAL                         R13 1
       35 GETTABLEKS                       R13 R13 K0 ["createElement"]
       37 GETUPVAL                         R14 3
       38 DUPTABLE                         R15 K28 [{["stageNumber"] = 1, ["labelKey"] = "ConfirmItems", ["isSelected"], ["isCompleted"], ["LayoutOrder"] = 1}]
       39 GETTABLEKS                       R17 R0 K29 ["dialogStage"]
       41 JUMPIFEQKS                       R17 K25 ["ConfirmItems"] ; [+2]
       43 LOADB                            R16 0 +1
       44 LOADB                            R16 1
       45 SETTABLEKS                       R16 R15 K26 ["isSelected"]
       47 GETTABLEKS                       R17 R0 K29 ["dialogStage"]
       49 JUMPIFEQKS                       R17 K30 ["EditInfo"] ; [+2]
       51 LOADB                            R16 0 +1
       52 LOADB                            R16 1
       53 SETTABLEKS                       R16 R15 K27 ["isCompleted"]
       55 CALL                             R13 2 1
       56 SETTABLEKS                       R13 R12 K21 ["ConfirmItemsStage"]
       58 CALL                             R9 3 1
       59 SETTABLEKS                       R9 R8 K11 ["LeftHalf"]
       61 GETUPVAL                         R9 1
       62 GETTABLEKS                       R9 R9 K0 ["createElement"]
       64 GETUPVAL                         R10 2
       65 DUPTABLE                         R11 K32 [{["tag"] = "row align-x-left align-y-center auto-y", ["Size"], ["LayoutOrder"] = 2}]
       66 GETIMPORT                        R12 K19 [UDim2.fromScale]
       68 LOADK                            R13 K20 [0.5]
       69 LOADN                            R14 0
       70 CALL                             R12 2 1
       71 SETTABLEKS                       R12 R11 K15 ["Size"]
       73 DUPTABLE                         R12 K34 [{"EditInfoStage"}]
       74 GETUPVAL                         R13 1
       75 GETTABLEKS                       R13 R13 K0 ["createElement"]
       77 GETUPVAL                         R14 3
       78 DUPTABLE                         R15 K35 [{["stageNumber"] = 2, ["labelKey"] = "EditInfo", ["isSelected"], ["LayoutOrder"] = 1}]
       79 GETTABLEKS                       R17 R0 K29 ["dialogStage"]
       81 JUMPIFEQKS                       R17 K30 ["EditInfo"] ; [+2]
       83 LOADB                            R16 0 +1
       84 LOADB                            R16 1
       85 SETTABLEKS                       R16 R15 K26 ["isSelected"]
       87 CALL                             R13 2 1
       88 SETTABLEKS                       R13 R12 K33 ["EditInfoStage"]
       90 CALL                             R9 3 1
       91 SETTABLEKS                       R9 R8 K12 ["RightHalf"]
       93 CALL                             R5 3 1
       94 SETTABLEKS                       R5 R4 K5 ["StagesRow"]
       96 GETUPVAL                         R5 1
       97 GETTABLEKS                       R5 R5 K0 ["createElement"]
       99 GETUPVAL                         R6 2
      100 DUPTABLE                         R7 K36 [{["Size"], ["LayoutOrder"] = 2}]
      101 GETIMPORT                        R8 K38 [UDim2.new]
      103 LOADN                            R9 1
      104 LOADN                            R10 0
      105 LOADN                            R11 0
      106 LOADN                            R12 1
      107 CALL                             R8 4 1
      108 SETTABLEKS                       R8 R7 K15 ["Size"]
      110 DUPTABLE                         R8 K41 [{"LeftDivider", "RightDivider"}]
      111 GETUPVAL                         R9 1
      112 GETTABLEKS                       R9 R9 K0 ["createElement"]
      114 GETUPVAL                         R10 2
      115 DUPTABLE                         R11 K45 [{["tag"], ["Size"], ["Position"], ["BackgroundTransparency"] = 0}]
      116 GETTABLEKS                       R13 R0 K29 ["dialogStage"]
      118 JUMPIFNOTEQKS                    R13 K25 ["ConfirmItems"] ; [+3]
      120 LOADK                            R12 K46 ["bg-system-contrast"]
      121 JUMP                             ; [+1]
      122 LOADK                            R12 K47 ["bg-surface-300"]
      123 SETTABLEKS                       R12 R11 K1 ["tag"]
      125 GETIMPORT                        R12 K38 [UDim2.new]
      127 LOADK                            R13 K20 [0.5]
      128 LOADN                            R14 0
      129 LOADN                            R15 1
      130 LOADN                            R16 0
      131 CALL                             R12 4 1
      132 SETTABLEKS                       R12 R11 K15 ["Size"]
      134 GETIMPORT                        R12 K19 [UDim2.fromScale]
      136 LOADN                            R13 0
      137 LOADN                            R14 0
      138 CALL                             R12 2 1
      139 SETTABLEKS                       R12 R11 K42 ["Position"]
      141 CALL                             R9 2 1
      142 SETTABLEKS                       R9 R8 K39 ["LeftDivider"]
      144 GETUPVAL                         R9 1
      145 GETTABLEKS                       R9 R9 K0 ["createElement"]
      147 GETUPVAL                         R10 2
      148 DUPTABLE                         R11 K45 [{["tag"], ["Size"], ["Position"], ["BackgroundTransparency"] = 0}]
      149 GETTABLEKS                       R13 R0 K29 ["dialogStage"]
      151 JUMPIFNOTEQKS                    R13 K30 ["EditInfo"] ; [+3]
      153 LOADK                            R12 K46 ["bg-system-contrast"]
      154 JUMP                             ; [+1]
      155 LOADK                            R12 K47 ["bg-surface-300"]
      156 SETTABLEKS                       R12 R11 K1 ["tag"]
      158 GETIMPORT                        R12 K38 [UDim2.new]
      160 LOADK                            R13 K20 [0.5]
      161 LOADN                            R14 0
      162 LOADN                            R15 1
      163 LOADN                            R16 0
      164 CALL                             R12 4 1
      165 SETTABLEKS                       R12 R11 K15 ["Size"]
      167 GETIMPORT                        R12 K19 [UDim2.fromScale]
      169 LOADK                            R13 K20 [0.5]
      170 LOADN                            R14 0
      171 CALL                             R12 2 1
      172 SETTABLEKS                       R12 R11 K42 ["Position"]
      174 CALL                             R9 2 1
      175 SETTABLEKS                       R9 R8 K40 ["RightDivider"]
      177 CALL                             R5 3 1
      178 SETTABLEKS                       R5 R4 K6 ["DividerContainer"]
      180 CALL                             R1 3 -1
      181 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["View"]
       23 GETTABLEKS                       R4 R2 K10 ["Text"]
       25 GETTABLEKS                       R5 R2 K11 ["Icon"]
       27 GETTABLEKS                       R6 R2 K12 ["Enums"]
       29 GETTABLEKS                       R6 R6 K13 ["IconName"]
       31 GETTABLEKS                       R7 R2 K12 ["Enums"]
       33 GETTABLEKS                       R7 R7 K14 ["IconSize"]
       35 GETTABLEKS                       R8 R2 K15 ["Hooks"]
       37 GETTABLEKS                       R8 R8 K16 ["useTokens"]
       39 GETIMPORT                        R9 K5 [require]
       41 GETTABLEKS                       R10 R0 K6 ["Packages"]
       43 GETTABLEKS                       R10 R10 K17 ["Framework"]
       45 CALL                             R9 1 1
       46 GETTABLEKS                       R10 R9 K18 ["ContextServices"]
       48 GETTABLEKS                       R10 R10 K19 ["Localization"]
       50 GETIMPORT                        R11 K5 [require]
       52 GETTABLEKS                       R12 R0 K20 ["Src"]
       54 GETTABLEKS                       R12 R12 K21 ["Flags"]
       56 GETTABLEKS                       R12 R12 K22 ["getFFlagAvatarPreviewerLookComposer"]
       58 CALL                             R11 1 1
       59 GETIMPORT                        R12 K5 [require]
       61 GETTABLEKS                       R13 R0 K20 ["Src"]
       63 GETTABLEKS                       R13 R13 K23 ["Types"]
       65 CALL                             R12 1 1
       66 DUPCLOSURE                       R13 K24 [PROTO_0]
       67 CAPTURE                          VAL R11
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R3
       76 DUPCLOSURE                       R14 K25 [PROTO_1]
       77 CAPTURE                          VAL R11
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R13
       81 RETURN                           R14 1
