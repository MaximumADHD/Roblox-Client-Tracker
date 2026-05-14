PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 1
        6 NAMECALL                         R1 R1 K0 ["use"]
        8 CALL                             R1 1 1
        9 GETTABLEKS                       R2 R0 K1 ["name"]
       11 FASTCALL1                        STRING_LEN R2 ; [+3]
       12 MOVE                             R4 R2
       13 GETIMPORT                        R3 K4 [string.len]
       15 CALL                             R3 1 1
       16 GETTABLEKS                       R4 R0 K5 ["description"]
       18 FASTCALL1                        STRING_LEN R4 ; [+3]
       19 MOVE                             R6 R4
       20 GETIMPORT                        R5 K4 [string.len]
       22 CALL                             R5 1 1
       23 GETTABLEKS                       R6 R0 K6 ["onNameChanged"]
       25 GETTABLEKS                       R7 R0 K7 ["onDescriptionChanged"]
       27 LOADN                            R9 50
       28 JUMPIFLT                         R9 R3 ; [+2]
       30 LOADB                            R8 0 +1
       31 LOADB                            R8 1
       32 LOADN                            R10 232
       33 JUMPIFLT                         R10 R5 ; [+2]
       35 LOADB                            R9 0 +1
       36 LOADB                            R9 1
       37 GETUPVAL                         R10 2
       38 GETTABLEKS                       R10 R10 K8 ["new"]
       40 CALL                             R10 0 1
       41 GETUPVAL                         R11 3
       42 GETTABLEKS                       R11 R11 K9 ["createElement"]
       44 GETUPVAL                         R12 4
       45 DUPTABLE                         R13 K11 [{"tag"}]
       46 LOADK                            R14 K12 ["col gap-medium size-full-0 auto-y padding-large"]
       47 SETTABLEKS                       R14 R13 K10 ["tag"]
       49 DUPTABLE                         R14 K14 [{"Content"}]
       50 GETUPVAL                         R15 3
       51 GETTABLEKS                       R15 R15 K9 ["createElement"]
       53 GETUPVAL                         R16 4
       54 DUPTABLE                         R17 K17 [{"tag", "Size", "AutomaticSize"}]
       55 LOADK                            R18 K18 ["row gap-large align-y-top"]
       56 SETTABLEKS                       R18 R17 K10 ["tag"]
       58 GETIMPORT                        R18 K21 [UDim2.fromScale]
       60 LOADK                            R19 K22 [0.5]
       61 LOADN                            R20 0
       62 CALL                             R18 2 1
       63 SETTABLEKS                       R18 R17 K15 ["Size"]
       65 GETIMPORT                        R18 K25 [Enum.AutomaticSize.Y]
       67 SETTABLEKS                       R18 R17 K16 ["AutomaticSize"]
       69 DUPTABLE                         R18 K28 [{"Preview", "InfoColumn"}]
       70 GETUPVAL                         R19 3
       71 GETTABLEKS                       R19 R19 K9 ["createElement"]
       73 GETUPVAL                         R20 4
       74 DUPTABLE                         R21 K30 [{"LayoutOrder", "AutomaticSize"}]
       75 NAMECALL                         R22 R10 K31 ["getNextOrder"]
       77 CALL                             R22 1 1
       78 SETTABLEKS                       R22 R21 K29 ["LayoutOrder"]
       80 GETIMPORT                        R22 K33 [Enum.AutomaticSize.XY]
       82 SETTABLEKS                       R22 R21 K16 ["AutomaticSize"]
       84 DUPTABLE                         R22 K35 [{"Thumbnail"}]
       85 GETTABLEKS                       R23 R0 K36 ["lookPreview"]
       87 SETTABLEKS                       R23 R22 K34 ["Thumbnail"]
       89 CALL                             R19 3 1
       90 SETTABLEKS                       R19 R18 K26 ["Preview"]
       92 GETUPVAL                         R19 3
       93 GETTABLEKS                       R19 R19 K9 ["createElement"]
       95 GETUPVAL                         R20 4
       96 DUPTABLE                         R21 K37 [{"tag", "LayoutOrder"}]
       97 LOADK                            R22 K38 ["col gap-large grow auto-y"]
       98 SETTABLEKS                       R22 R21 K10 ["tag"]
      100 NAMECALL                         R22 R10 K31 ["getNextOrder"]
      102 CALL                             R22 1 1
      103 SETTABLEKS                       R22 R21 K29 ["LayoutOrder"]
      105 DUPTABLE                         R22 K41 [{"Name", "Description"}]
      106 GETUPVAL                         R23 3
      107 GETTABLEKS                       R23 R23 K9 ["createElement"]
      109 GETUPVAL                         R24 5
      110 DUPTABLE                         R25 K50 [{"text", "width", "onChanged", "hint", "placeholder", "label", "hasError", "numLines", "LayoutOrder"}]
      111 SETTABLEKS                       R2 R25 K42 ["text"]
      113 GETIMPORT                        R26 K52 [UDim.new]
      115 LOADN                            R27 1
      116 LOADN                            R28 0
      117 CALL                             R26 2 1
      118 SETTABLEKS                       R26 R25 K43 ["width"]
      120 SETTABLEKS                       R6 R25 K44 ["onChanged"]
      122 GETIMPORT                        R26 K54 [string.format]
      124 LOADK                            R27 K55 ["%d/%d"]
      125 MOVE                             R28 R3
      126 LOADN                            R29 50
      127 CALL                             R26 3 1
      128 SETTABLEKS                       R26 R25 K45 ["hint"]
      130 LOADK                            R26 K56 [""]
      131 SETTABLEKS                       R26 R25 K46 ["placeholder"]
      133 LOADK                            R28 K57 ["LookComposerDialog"]
      134 LOADK                            R29 K39 ["Name"]
      135 NAMECALL                         R26 R1 K58 ["getText"]
      137 CALL                             R26 3 1
      138 SETTABLEKS                       R26 R25 K47 ["label"]
      140 SETTABLEKS                       R8 R25 K48 ["hasError"]
      142 LOADN                            R26 1
      143 SETTABLEKS                       R26 R25 K49 ["numLines"]
      145 NAMECALL                         R26 R10 K31 ["getNextOrder"]
      147 CALL                             R26 1 1
      148 SETTABLEKS                       R26 R25 K29 ["LayoutOrder"]
      150 CALL                             R23 2 1
      151 SETTABLEKS                       R23 R22 K39 ["Name"]
      153 GETUPVAL                         R23 3
      154 GETTABLEKS                       R23 R23 K9 ["createElement"]
      156 GETUPVAL                         R24 5
      157 DUPTABLE                         R25 K50 [{"text", "width", "onChanged", "hint", "placeholder", "label", "hasError", "numLines", "LayoutOrder"}]
      158 SETTABLEKS                       R4 R25 K42 ["text"]
      160 GETIMPORT                        R26 K52 [UDim.new]
      162 LOADK                            R27 K59 [1.8]
      163 LOADN                            R28 0
      164 CALL                             R26 2 1
      165 SETTABLEKS                       R26 R25 K43 ["width"]
      167 SETTABLEKS                       R7 R25 K44 ["onChanged"]
      169 GETIMPORT                        R26 K54 [string.format]
      171 LOADK                            R27 K55 ["%d/%d"]
      172 MOVE                             R28 R5
      173 LOADN                            R29 232
      174 CALL                             R26 3 1
      175 SETTABLEKS                       R26 R25 K45 ["hint"]
      177 LOADK                            R26 K56 [""]
      178 SETTABLEKS                       R26 R25 K46 ["placeholder"]
      180 LOADK                            R28 K57 ["LookComposerDialog"]
      181 LOADK                            R29 K40 ["Description"]
      182 NAMECALL                         R26 R1 K58 ["getText"]
      184 CALL                             R26 3 1
      185 SETTABLEKS                       R26 R25 K47 ["label"]
      187 SETTABLEKS                       R9 R25 K48 ["hasError"]
      189 LOADN                            R26 2
      190 SETTABLEKS                       R26 R25 K49 ["numLines"]
      192 NAMECALL                         R26 R10 K31 ["getNextOrder"]
      194 CALL                             R26 1 1
      195 SETTABLEKS                       R26 R25 K29 ["LayoutOrder"]
      197 CALL                             R23 2 1
      198 SETTABLEKS                       R23 R22 K40 ["Description"]
      200 CALL                             R19 3 1
      201 SETTABLEKS                       R19 R18 K27 ["InfoColumn"]
      203 CALL                             R15 3 1
      204 SETTABLEKS                       R15 R14 K13 ["Content"]
      206 CALL                             R11 3 -1
      207 RETURN                           R11 -1

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
       23 GETTABLEKS                       R4 R2 K10 ["TextArea"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Packages"]
       29 GETTABLEKS                       R6 R6 K11 ["Framework"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R5 K12 ["ContextServices"]
       34 GETTABLEKS                       R6 R6 K13 ["Localization"]
       36 GETTABLEKS                       R7 R5 K14 ["Util"]
       38 GETTABLEKS                       R7 R7 K15 ["LayoutOrderIterator"]
       40 GETIMPORT                        R8 K5 [require]
       42 GETTABLEKS                       R9 R0 K16 ["Src"]
       44 GETTABLEKS                       R9 R9 K17 ["Flags"]
       46 GETTABLEKS                       R9 R9 K18 ["getFFlagAvatarPreviewerLookComposer"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K5 [require]
       51 GETTABLEKS                       R10 R0 K16 ["Src"]
       53 GETTABLEKS                       R10 R10 K19 ["Types"]
       55 CALL                             R9 1 1
       56 DUPCLOSURE                       R10 K20 [PROTO_0]
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R4
       63 RETURN                           R10 1
