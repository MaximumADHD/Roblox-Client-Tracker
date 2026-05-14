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
       25 JUMPIFNOT                        R6 ; [+33]
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
       41 DUPTABLE                         R8 K14 [{"Color3", "Transparency"}]
       42 GETTABLEKS                       R9 R2 K15 ["Color"]
       44 GETTABLEKS                       R9 R9 K16 ["Surface"]
       46 GETTABLEKS                       R9 R9 K17 ["Surface_0"]
       48 GETTABLEKS                       R9 R9 K12 ["Color3"]
       50 SETTABLEKS                       R9 R8 K12 ["Color3"]
       52 LOADN                            R9 0
       53 SETTABLEKS                       R9 R8 K13 ["Transparency"]
       55 SETTABLEKS                       R8 R7 K8 ["style"]
       57 CALL                             R5 2 1
       58 JUMP                             ; [+22]
       59 GETUPVAL                         R5 3
       60 GETTABLEKS                       R5 R5 K5 ["createElement"]
       62 GETUPVAL                         R6 7
       63 DUPTABLE                         R7 K20 [{"Text", "tag"}]
       64 GETTABLEKS                       R9 R0 K21 ["stageNumber"]
       66 FASTCALL1                        TOSTRING R9 ; [+2]
       67 GETIMPORT                        R8 K23 [tostring]
       69 CALL                             R8 1 1
       70 SETTABLEKS                       R8 R7 K18 ["Text"]
       72 LOADK                            R9 K24 ["text-label-medium %*"]
       73 MOVE                             R11 R3
       74 NAMECALL                         R9 R9 K25 ["format"]
       76 CALL                             R9 2 1
       77 MOVE                             R8 R9
       78 SETTABLEKS                       R8 R7 K19 ["tag"]
       80 CALL                             R5 2 1
       81 GETUPVAL                         R6 3
       82 GETTABLEKS                       R6 R6 K5 ["createElement"]
       84 GETUPVAL                         R7 8
       85 DUPTABLE                         R8 K27 [{"tag", "LayoutOrder"}]
       86 LOADK                            R9 K28 ["row gap-medium align-y-center auto-xy"]
       87 SETTABLEKS                       R9 R8 K19 ["tag"]
       89 GETTABLEKS                       R9 R0 K26 ["LayoutOrder"]
       91 SETTABLEKS                       R9 R8 K26 ["LayoutOrder"]
       93 DUPTABLE                         R9 K31 [{"Circle", "Label"}]
       94 GETUPVAL                         R10 3
       95 GETTABLEKS                       R10 R10 K5 ["createElement"]
       97 GETUPVAL                         R11 8
       98 DUPTABLE                         R12 K33 [{"tag", "Size", "LayoutOrder"}]
       99 NEWTABLE                         R13 8 0
      101 LOADB                            R14 1
      102 SETTABLEKS                       R14 R13 K34 ["radius-circle align-x-center align-y-center"]
      104 GETTABLEKS                       R14 R0 K4 ["isCompleted"]
      106 SETTABLEKS                       R14 R13 K35 ["bg-system-contrast"]
      108 GETTABLEKS                       R15 R0 K4 ["isCompleted"]
      110 NOT                              R14 R15
      111 SETTABLEKS                       R14 R13 K36 ["bg-surface-200"]
      113 SETTABLEKS                       R4 R13 K37 ["stroke-system-contrast"]
      115 NOT                              R14 R4
      116 SETTABLEKS                       R14 R13 K38 ["stroke-muted"]
      118 SETTABLEKS                       R13 R12 K19 ["tag"]
      120 GETIMPORT                        R13 K41 [UDim2.fromOffset]
      122 LOADN                            R14 24
      123 LOADN                            R15 24
      124 CALL                             R13 2 1
      125 SETTABLEKS                       R13 R12 K32 ["Size"]
      127 LOADN                            R13 1
      128 SETTABLEKS                       R13 R12 K26 ["LayoutOrder"]
      130 DUPTABLE                         R13 K43 [{"Content"}]
      131 SETTABLEKS                       R5 R13 K42 ["Content"]
      133 CALL                             R10 3 1
      134 SETTABLEKS                       R10 R9 K29 ["Circle"]
      136 GETUPVAL                         R10 3
      137 GETTABLEKS                       R10 R10 K5 ["createElement"]
      139 GETUPVAL                         R11 7
      140 DUPTABLE                         R12 K44 [{"Text", "tag", "LayoutOrder"}]
      141 LOADK                            R15 K45 ["LookComposerDialog"]
      142 GETTABLEKS                       R16 R0 K46 ["labelKey"]
      144 NAMECALL                         R13 R1 K47 ["getText"]
      146 CALL                             R13 3 1
      147 SETTABLEKS                       R13 R12 K18 ["Text"]
      149 LOADK                            R14 K48 ["text-label-medium auto-xy %*"]
      150 MOVE                             R16 R3
      151 NAMECALL                         R14 R14 K25 ["format"]
      153 CALL                             R14 2 1
      154 MOVE                             R13 R14
      155 SETTABLEKS                       R13 R12 K19 ["tag"]
      157 LOADN                            R13 2
      158 SETTABLEKS                       R13 R12 K26 ["LayoutOrder"]
      160 CALL                             R10 2 1
      161 SETTABLEKS                       R10 R9 K30 ["Label"]
      163 CALL                             R6 3 -1
      164 RETURN                           R6 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["createElement"]
        8 GETUPVAL                         R2 2
        9 DUPTABLE                         R3 K3 [{"tag", "LayoutOrder"}]
       10 LOADK                            R4 K4 ["col size-full-0 auto-y gap-medium"]
       11 SETTABLEKS                       R4 R3 K1 ["tag"]
       13 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
       15 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       17 DUPTABLE                         R4 K7 [{"StagesRow", "DividerContainer"}]
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R5 R5 K0 ["createElement"]
       21 GETUPVAL                         R6 2
       22 DUPTABLE                         R7 K3 [{"tag", "LayoutOrder"}]
       23 LOADK                            R8 K8 ["row align-y-center size-full-0 auto-y"]
       24 SETTABLEKS                       R8 R7 K1 ["tag"]
       26 LOADN                            R8 1
       27 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       29 DUPTABLE                         R8 K11 [{"LeftHalf", "RightHalf"}]
       30 GETUPVAL                         R9 1
       31 GETTABLEKS                       R9 R9 K0 ["createElement"]
       33 GETUPVAL                         R10 2
       34 DUPTABLE                         R11 K13 [{"tag", "Size", "LayoutOrder"}]
       35 LOADK                            R12 K14 ["row align-x-left align-y-center auto-y"]
       36 SETTABLEKS                       R12 R11 K1 ["tag"]
       38 GETIMPORT                        R12 K17 [UDim2.fromScale]
       40 LOADK                            R13 K18 [0.5]
       41 LOADN                            R14 0
       42 CALL                             R12 2 1
       43 SETTABLEKS                       R12 R11 K12 ["Size"]
       45 LOADN                            R12 1
       46 SETTABLEKS                       R12 R11 K2 ["LayoutOrder"]
       48 DUPTABLE                         R12 K20 [{"ConfirmItemsStage"}]
       49 GETUPVAL                         R13 1
       50 GETTABLEKS                       R13 R13 K0 ["createElement"]
       52 GETUPVAL                         R14 3
       53 DUPTABLE                         R15 K25 [{"stageNumber", "labelKey", "isSelected", "isCompleted", "LayoutOrder"}]
       54 LOADN                            R16 1
       55 SETTABLEKS                       R16 R15 K21 ["stageNumber"]
       57 LOADK                            R16 K26 ["ConfirmItems"]
       58 SETTABLEKS                       R16 R15 K22 ["labelKey"]
       60 GETTABLEKS                       R17 R0 K27 ["dialogStage"]
       62 JUMPIFEQKS                       R17 K26 ["ConfirmItems"] ; [+2]
       64 LOADB                            R16 0 +1
       65 LOADB                            R16 1
       66 SETTABLEKS                       R16 R15 K23 ["isSelected"]
       68 GETTABLEKS                       R17 R0 K27 ["dialogStage"]
       70 JUMPIFEQKS                       R17 K28 ["EditInfo"] ; [+2]
       72 LOADB                            R16 0 +1
       73 LOADB                            R16 1
       74 SETTABLEKS                       R16 R15 K24 ["isCompleted"]
       76 LOADN                            R16 1
       77 SETTABLEKS                       R16 R15 K2 ["LayoutOrder"]
       79 CALL                             R13 2 1
       80 SETTABLEKS                       R13 R12 K19 ["ConfirmItemsStage"]
       82 CALL                             R9 3 1
       83 SETTABLEKS                       R9 R8 K9 ["LeftHalf"]
       85 GETUPVAL                         R9 1
       86 GETTABLEKS                       R9 R9 K0 ["createElement"]
       88 GETUPVAL                         R10 2
       89 DUPTABLE                         R11 K13 [{"tag", "Size", "LayoutOrder"}]
       90 LOADK                            R12 K14 ["row align-x-left align-y-center auto-y"]
       91 SETTABLEKS                       R12 R11 K1 ["tag"]
       93 GETIMPORT                        R12 K17 [UDim2.fromScale]
       95 LOADK                            R13 K18 [0.5]
       96 LOADN                            R14 0
       97 CALL                             R12 2 1
       98 SETTABLEKS                       R12 R11 K12 ["Size"]
      100 LOADN                            R12 2
      101 SETTABLEKS                       R12 R11 K2 ["LayoutOrder"]
      103 DUPTABLE                         R12 K30 [{"EditInfoStage"}]
      104 GETUPVAL                         R13 1
      105 GETTABLEKS                       R13 R13 K0 ["createElement"]
      107 GETUPVAL                         R14 3
      108 DUPTABLE                         R15 K31 [{"stageNumber", "labelKey", "isSelected", "LayoutOrder"}]
      109 LOADN                            R16 2
      110 SETTABLEKS                       R16 R15 K21 ["stageNumber"]
      112 LOADK                            R16 K28 ["EditInfo"]
      113 SETTABLEKS                       R16 R15 K22 ["labelKey"]
      115 GETTABLEKS                       R17 R0 K27 ["dialogStage"]
      117 JUMPIFEQKS                       R17 K28 ["EditInfo"] ; [+2]
      119 LOADB                            R16 0 +1
      120 LOADB                            R16 1
      121 SETTABLEKS                       R16 R15 K23 ["isSelected"]
      123 LOADN                            R16 1
      124 SETTABLEKS                       R16 R15 K2 ["LayoutOrder"]
      126 CALL                             R13 2 1
      127 SETTABLEKS                       R13 R12 K29 ["EditInfoStage"]
      129 CALL                             R9 3 1
      130 SETTABLEKS                       R9 R8 K10 ["RightHalf"]
      132 CALL                             R5 3 1
      133 SETTABLEKS                       R5 R4 K5 ["StagesRow"]
      135 GETUPVAL                         R5 1
      136 GETTABLEKS                       R5 R5 K0 ["createElement"]
      138 GETUPVAL                         R6 2
      139 DUPTABLE                         R7 K32 [{"Size", "LayoutOrder"}]
      140 GETIMPORT                        R8 K34 [UDim2.new]
      142 LOADN                            R9 1
      143 LOADN                            R10 0
      144 LOADN                            R11 0
      145 LOADN                            R12 1
      146 CALL                             R8 4 1
      147 SETTABLEKS                       R8 R7 K12 ["Size"]
      149 LOADN                            R8 2
      150 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
      152 DUPTABLE                         R8 K37 [{"LeftDivider", "RightDivider"}]
      153 GETUPVAL                         R9 1
      154 GETTABLEKS                       R9 R9 K0 ["createElement"]
      156 GETUPVAL                         R10 2
      157 DUPTABLE                         R11 K40 [{"tag", "Size", "Position", "BackgroundTransparency"}]
      158 GETTABLEKS                       R13 R0 K27 ["dialogStage"]
      160 JUMPIFNOTEQKS                    R13 K26 ["ConfirmItems"] ; [+3]
      162 LOADK                            R12 K41 ["bg-system-contrast"]
      163 JUMP                             ; [+1]
      164 LOADK                            R12 K42 ["bg-surface-300"]
      165 SETTABLEKS                       R12 R11 K1 ["tag"]
      167 GETIMPORT                        R12 K34 [UDim2.new]
      169 LOADK                            R13 K18 [0.5]
      170 LOADN                            R14 0
      171 LOADN                            R15 1
      172 LOADN                            R16 0
      173 CALL                             R12 4 1
      174 SETTABLEKS                       R12 R11 K12 ["Size"]
      176 GETIMPORT                        R12 K17 [UDim2.fromScale]
      178 LOADN                            R13 0
      179 LOADN                            R14 0
      180 CALL                             R12 2 1
      181 SETTABLEKS                       R12 R11 K38 ["Position"]
      183 LOADN                            R12 0
      184 SETTABLEKS                       R12 R11 K39 ["BackgroundTransparency"]
      186 CALL                             R9 2 1
      187 SETTABLEKS                       R9 R8 K35 ["LeftDivider"]
      189 GETUPVAL                         R9 1
      190 GETTABLEKS                       R9 R9 K0 ["createElement"]
      192 GETUPVAL                         R10 2
      193 DUPTABLE                         R11 K40 [{"tag", "Size", "Position", "BackgroundTransparency"}]
      194 GETTABLEKS                       R13 R0 K27 ["dialogStage"]
      196 JUMPIFNOTEQKS                    R13 K28 ["EditInfo"] ; [+3]
      198 LOADK                            R12 K41 ["bg-system-contrast"]
      199 JUMP                             ; [+1]
      200 LOADK                            R12 K42 ["bg-surface-300"]
      201 SETTABLEKS                       R12 R11 K1 ["tag"]
      203 GETIMPORT                        R12 K34 [UDim2.new]
      205 LOADK                            R13 K18 [0.5]
      206 LOADN                            R14 0
      207 LOADN                            R15 1
      208 LOADN                            R16 0
      209 CALL                             R12 4 1
      210 SETTABLEKS                       R12 R11 K12 ["Size"]
      212 GETIMPORT                        R12 K17 [UDim2.fromScale]
      214 LOADK                            R13 K18 [0.5]
      215 LOADN                            R14 0
      216 CALL                             R12 2 1
      217 SETTABLEKS                       R12 R11 K38 ["Position"]
      219 LOADN                            R12 0
      220 SETTABLEKS                       R12 R11 K39 ["BackgroundTransparency"]
      222 CALL                             R9 2 1
      223 SETTABLEKS                       R9 R8 K36 ["RightDivider"]
      225 CALL                             R5 3 1
      226 SETTABLEKS                       R5 R4 K6 ["DividerContainer"]
      228 CALL                             R1 3 -1
      229 RETURN                           R1 -1

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
