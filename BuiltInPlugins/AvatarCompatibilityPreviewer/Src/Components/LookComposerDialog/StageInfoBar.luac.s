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
       14 LOADK                            R3 K2 ["content-default"]
       15 JUMP                             ; [+1]
       16 LOADK                            R3 K3 ["content-muted"]
       17 GETTABLEKS                       R4 R0 K1 ["isSelected"]
       19 JUMPIFNOT                        R4 ; [+3]
       20 GETTABLEKS                       R5 R0 K4 ["isCompleted"]
       22 NOT                              R4 R5
       23 GETTABLEKS                       R6 R0 K4 ["isCompleted"]
       25 JUMPIFNOT                        R6 ; [+33]
       26 GETUPVAL                         R6 3
       27 GETTABLEKS                       R5 R6 K5 ["createElement"]
       29 GETUPVAL                         R6 4
       30 DUPTABLE                         R7 K9 [{"name", "size", "style"}]
       31 GETUPVAL                         R9 5
       32 GETTABLEKS                       R8 R9 K10 ["Check"]
       34 SETTABLEKS                       R8 R7 K6 ["name"]
       36 GETUPVAL                         R9 6
       37 GETTABLEKS                       R8 R9 K11 ["Medium"]
       39 SETTABLEKS                       R8 R7 K7 ["size"]
       41 DUPTABLE                         R8 K14 [{"Color3", "Transparency"}]
       42 GETTABLEKS                       R12 R2 K15 ["Color"]
       44 GETTABLEKS                       R11 R12 K16 ["Surface"]
       46 GETTABLEKS                       R10 R11 K17 ["Surface_0"]
       48 GETTABLEKS                       R9 R10 K12 ["Color3"]
       50 SETTABLEKS                       R9 R8 K12 ["Color3"]
       52 LOADN                            R9 0
       53 SETTABLEKS                       R9 R8 K13 ["Transparency"]
       55 SETTABLEKS                       R8 R7 K8 ["style"]
       57 CALL                             R5 2 1
       58 JUMP                             ; [+22]
       59 GETUPVAL                         R6 3
       60 GETTABLEKS                       R5 R6 K5 ["createElement"]
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
       81 GETUPVAL                         R7 3
       82 GETTABLEKS                       R6 R7 K5 ["createElement"]
       84 GETUPVAL                         R7 8
       85 DUPTABLE                         R8 K27 [{"tag", "LayoutOrder"}]
       86 LOADK                            R9 K28 ["row gap-small align-y-center auto-xy"]
       87 SETTABLEKS                       R9 R8 K19 ["tag"]
       89 GETTABLEKS                       R9 R0 K26 ["LayoutOrder"]
       91 SETTABLEKS                       R9 R8 K26 ["LayoutOrder"]
       93 DUPTABLE                         R9 K31 [{"Circle", "Label"}]
       94 GETUPVAL                         R11 3
       95 GETTABLEKS                       R10 R11 K5 ["createElement"]
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
      136 GETUPVAL                         R11 3
      137 GETTABLEKS                       R10 R11 K5 ["createElement"]
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
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K0 ["useContext"]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R2 R3 K1 ["Context"]
       11 CALL                             R1 1 1
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K2 ["createElement"]
       15 GETUPVAL                         R3 3
       16 DUPTABLE                         R4 K5 [{"tag", "LayoutOrder"}]
       17 LOADK                            R5 K6 ["col size-full-0 auto-y gap-medium"]
       18 SETTABLEKS                       R5 R4 K3 ["tag"]
       20 GETTABLEKS                       R5 R0 K4 ["LayoutOrder"]
       22 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       24 DUPTABLE                         R5 K9 [{"StagesRow", "DividerContainer"}]
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R6 R7 K2 ["createElement"]
       28 GETUPVAL                         R7 3
       29 DUPTABLE                         R8 K5 [{"tag", "LayoutOrder"}]
       30 LOADK                            R9 K10 ["row align-y-center size-full-0 auto-y"]
       31 SETTABLEKS                       R9 R8 K3 ["tag"]
       33 LOADN                            R9 1
       34 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       36 DUPTABLE                         R9 K13 [{"LeftHalf", "RightHalf"}]
       37 GETUPVAL                         R11 1
       38 GETTABLEKS                       R10 R11 K2 ["createElement"]
       40 GETUPVAL                         R11 3
       41 DUPTABLE                         R12 K15 [{"tag", "Size", "LayoutOrder"}]
       42 LOADK                            R13 K16 ["row align-x-left align-y-center auto-y"]
       43 SETTABLEKS                       R13 R12 K3 ["tag"]
       45 GETIMPORT                        R13 K19 [UDim2.fromScale]
       47 LOADK                            R14 K20 [0.5]
       48 LOADN                            R15 0
       49 CALL                             R13 2 1
       50 SETTABLEKS                       R13 R12 K14 ["Size"]
       52 LOADN                            R13 1
       53 SETTABLEKS                       R13 R12 K4 ["LayoutOrder"]
       55 DUPTABLE                         R13 K22 [{"ConfirmItemsStage"}]
       56 GETUPVAL                         R15 1
       57 GETTABLEKS                       R14 R15 K2 ["createElement"]
       59 GETUPVAL                         R15 4
       60 DUPTABLE                         R16 K27 [{"stageNumber", "labelKey", "isSelected", "isCompleted", "LayoutOrder"}]
       61 LOADN                            R17 1
       62 SETTABLEKS                       R17 R16 K23 ["stageNumber"]
       64 LOADK                            R17 K28 ["ConfirmItems"]
       65 SETTABLEKS                       R17 R16 K24 ["labelKey"]
       67 GETTABLEKS                       R18 R1 K29 ["dialogStage"]
       69 JUMPIFEQKS                       R18 K28 ["ConfirmItems"] ; [+2]
       71 LOADB                            R17 0 +1
       72 LOADB                            R17 1
       73 SETTABLEKS                       R17 R16 K25 ["isSelected"]
       75 GETTABLEKS                       R18 R1 K29 ["dialogStage"]
       77 JUMPIFEQKS                       R18 K30 ["EditInfo"] ; [+2]
       79 LOADB                            R17 0 +1
       80 LOADB                            R17 1
       81 SETTABLEKS                       R17 R16 K26 ["isCompleted"]
       83 LOADN                            R17 1
       84 SETTABLEKS                       R17 R16 K4 ["LayoutOrder"]
       86 CALL                             R14 2 1
       87 SETTABLEKS                       R14 R13 K21 ["ConfirmItemsStage"]
       89 CALL                             R10 3 1
       90 SETTABLEKS                       R10 R9 K11 ["LeftHalf"]
       92 GETUPVAL                         R11 1
       93 GETTABLEKS                       R10 R11 K2 ["createElement"]
       95 GETUPVAL                         R11 3
       96 DUPTABLE                         R12 K15 [{"tag", "Size", "LayoutOrder"}]
       97 LOADK                            R13 K16 ["row align-x-left align-y-center auto-y"]
       98 SETTABLEKS                       R13 R12 K3 ["tag"]
      100 GETIMPORT                        R13 K19 [UDim2.fromScale]
      102 LOADK                            R14 K20 [0.5]
      103 LOADN                            R15 0
      104 CALL                             R13 2 1
      105 SETTABLEKS                       R13 R12 K14 ["Size"]
      107 LOADN                            R13 2
      108 SETTABLEKS                       R13 R12 K4 ["LayoutOrder"]
      110 DUPTABLE                         R13 K32 [{"EditInfoStage"}]
      111 GETUPVAL                         R15 1
      112 GETTABLEKS                       R14 R15 K2 ["createElement"]
      114 GETUPVAL                         R15 4
      115 DUPTABLE                         R16 K33 [{"stageNumber", "labelKey", "isSelected", "LayoutOrder"}]
      116 LOADN                            R17 2
      117 SETTABLEKS                       R17 R16 K23 ["stageNumber"]
      119 LOADK                            R17 K30 ["EditInfo"]
      120 SETTABLEKS                       R17 R16 K24 ["labelKey"]
      122 GETTABLEKS                       R18 R1 K29 ["dialogStage"]
      124 JUMPIFEQKS                       R18 K30 ["EditInfo"] ; [+2]
      126 LOADB                            R17 0 +1
      127 LOADB                            R17 1
      128 SETTABLEKS                       R17 R16 K25 ["isSelected"]
      130 LOADN                            R17 1
      131 SETTABLEKS                       R17 R16 K4 ["LayoutOrder"]
      133 CALL                             R14 2 1
      134 SETTABLEKS                       R14 R13 K31 ["EditInfoStage"]
      136 CALL                             R10 3 1
      137 SETTABLEKS                       R10 R9 K12 ["RightHalf"]
      139 CALL                             R6 3 1
      140 SETTABLEKS                       R6 R5 K7 ["StagesRow"]
      142 GETUPVAL                         R7 1
      143 GETTABLEKS                       R6 R7 K2 ["createElement"]
      145 GETUPVAL                         R7 3
      146 DUPTABLE                         R8 K34 [{"Size", "LayoutOrder"}]
      147 GETIMPORT                        R9 K36 [UDim2.new]
      149 LOADN                            R10 1
      150 LOADN                            R11 0
      151 LOADN                            R12 0
      152 LOADN                            R13 1
      153 CALL                             R9 4 1
      154 SETTABLEKS                       R9 R8 K14 ["Size"]
      156 LOADN                            R9 2
      157 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
      159 DUPTABLE                         R9 K39 [{"LeftDivider", "RightDivider"}]
      160 GETUPVAL                         R11 1
      161 GETTABLEKS                       R10 R11 K2 ["createElement"]
      163 GETUPVAL                         R11 3
      164 DUPTABLE                         R12 K42 [{"tag", "Size", "Position", "BackgroundTransparency"}]
      165 GETTABLEKS                       R14 R1 K29 ["dialogStage"]
      167 JUMPIFNOTEQKS                    R14 K28 ["ConfirmItems"] ; [+3]
      169 LOADK                            R13 K43 ["bg-system-contrast"]
      170 JUMP                             ; [+1]
      171 LOADK                            R13 K44 ["bg-surface-300"]
      172 SETTABLEKS                       R13 R12 K3 ["tag"]
      174 GETIMPORT                        R13 K36 [UDim2.new]
      176 LOADK                            R14 K20 [0.5]
      177 LOADN                            R15 0
      178 LOADN                            R16 1
      179 LOADN                            R17 0
      180 CALL                             R13 4 1
      181 SETTABLEKS                       R13 R12 K14 ["Size"]
      183 GETIMPORT                        R13 K19 [UDim2.fromScale]
      185 LOADN                            R14 0
      186 LOADN                            R15 0
      187 CALL                             R13 2 1
      188 SETTABLEKS                       R13 R12 K40 ["Position"]
      190 LOADN                            R13 0
      191 SETTABLEKS                       R13 R12 K41 ["BackgroundTransparency"]
      193 CALL                             R10 2 1
      194 SETTABLEKS                       R10 R9 K37 ["LeftDivider"]
      196 GETUPVAL                         R11 1
      197 GETTABLEKS                       R10 R11 K2 ["createElement"]
      199 GETUPVAL                         R11 3
      200 DUPTABLE                         R12 K42 [{"tag", "Size", "Position", "BackgroundTransparency"}]
      201 GETTABLEKS                       R14 R1 K29 ["dialogStage"]
      203 JUMPIFNOTEQKS                    R14 K30 ["EditInfo"] ; [+3]
      205 LOADK                            R13 K43 ["bg-system-contrast"]
      206 JUMP                             ; [+1]
      207 LOADK                            R13 K44 ["bg-surface-300"]
      208 SETTABLEKS                       R13 R12 K3 ["tag"]
      210 GETIMPORT                        R13 K36 [UDim2.new]
      212 LOADK                            R14 K20 [0.5]
      213 LOADN                            R15 0
      214 LOADN                            R16 1
      215 LOADN                            R17 0
      216 CALL                             R13 4 1
      217 SETTABLEKS                       R13 R12 K14 ["Size"]
      219 GETIMPORT                        R13 K19 [UDim2.fromScale]
      221 LOADK                            R14 K20 [0.5]
      222 LOADN                            R15 0
      223 CALL                             R13 2 1
      224 SETTABLEKS                       R13 R12 K40 ["Position"]
      226 LOADN                            R13 0
      227 SETTABLEKS                       R13 R12 K41 ["BackgroundTransparency"]
      229 CALL                             R10 2 1
      230 SETTABLEKS                       R10 R9 K38 ["RightDivider"]
      232 CALL                             R6 3 1
      233 SETTABLEKS                       R6 R5 K8 ["DividerContainer"]
      235 CALL                             R2 3 -1
      236 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["View"]
       23 GETTABLEKS                       R4 R2 K10 ["Text"]
       25 GETTABLEKS                       R5 R2 K11 ["Icon"]
       27 GETTABLEKS                       R7 R2 K12 ["Enums"]
       29 GETTABLEKS                       R6 R7 K13 ["IconName"]
       31 GETTABLEKS                       R8 R2 K12 ["Enums"]
       33 GETTABLEKS                       R7 R8 K14 ["IconSize"]
       35 GETTABLEKS                       R9 R2 K15 ["Hooks"]
       37 GETTABLEKS                       R8 R9 K16 ["useTokens"]
       39 GETIMPORT                        R9 K5 [require]
       41 GETTABLEKS                       R11 R0 K6 ["Packages"]
       43 GETTABLEKS                       R10 R11 K17 ["Framework"]
       45 CALL                             R9 1 1
       46 GETTABLEKS                       R11 R9 K18 ["ContextServices"]
       48 GETTABLEKS                       R10 R11 K19 ["Localization"]
       50 GETIMPORT                        R11 K5 [require]
       52 GETTABLEKS                       R14 R0 K20 ["Src"]
       54 GETTABLEKS                       R13 R14 K21 ["Components"]
       56 GETTABLEKS                       R12 R13 K22 ["LookContext"]
       58 CALL                             R11 1 1
       59 GETIMPORT                        R12 K5 [require]
       61 GETTABLEKS                       R15 R0 K20 ["Src"]
       63 GETTABLEKS                       R14 R15 K23 ["Flags"]
       65 GETTABLEKS                       R13 R14 K24 ["getFFlagAvatarPreviewerLookComposer"]
       67 CALL                             R12 1 1
       68 DUPCLOSURE                       R13 K25 [PROTO_0]
       69 CAPTURE                          VAL R12
       70 CAPTURE                          VAL R10
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R3
       78 DUPCLOSURE                       R14 K26 [PROTO_1]
       79 CAPTURE                          VAL R12
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R13
       84 RETURN                           R14 1
