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
       32 LOADN                            R10 1000
       33 JUMPIFLT                         R10 R5 ; [+2]
       35 LOADB                            R9 0 +1
       36 LOADB                            R9 1
       37 GETUPVAL                         R10 2
       38 GETTABLEKS                       R10 R10 K8 ["new"]
       40 CALL                             R10 0 1
       41 GETUPVAL                         R11 3
       42 GETTABLEKS                       R11 R11 K9 ["createElement"]
       44 GETUPVAL                         R12 4
       45 DUPTABLE                         R13 K12 [{["tag"] = "col gap-medium size-full-0 auto-y padding-large"}]
       46 DUPTABLE                         R14 K14 [{"Content"}]
       47 GETUPVAL                         R15 3
       48 GETTABLEKS                       R15 R15 K9 ["createElement"]
       50 GETUPVAL                         R16 4
       51 DUPTABLE                         R17 K18 [{["tag"] = "row align-y-top gap-large", ["Size"], ["AutomaticSize"]}]
       52 GETIMPORT                        R18 K21 [UDim2.fromScale]
       54 LOADK                            R19 K22 [0.5]
       55 LOADN                            R20 0
       56 CALL                             R18 2 1
       57 SETTABLEKS                       R18 R17 K16 ["Size"]
       59 GETIMPORT                        R18 K25 [Enum.AutomaticSize.Y]
       61 SETTABLEKS                       R18 R17 K17 ["AutomaticSize"]
       63 DUPTABLE                         R18 K28 [{"Preview", "InfoColumn"}]
       64 GETUPVAL                         R19 3
       65 GETTABLEKS                       R19 R19 K9 ["createElement"]
       67 GETUPVAL                         R20 4
       68 DUPTABLE                         R21 K30 [{"LayoutOrder", "AutomaticSize"}]
       69 NAMECALL                         R22 R10 K31 ["getNextOrder"]
       71 CALL                             R22 1 1
       72 SETTABLEKS                       R22 R21 K29 ["LayoutOrder"]
       74 GETIMPORT                        R22 K33 [Enum.AutomaticSize.XY]
       76 SETTABLEKS                       R22 R21 K17 ["AutomaticSize"]
       78 DUPTABLE                         R22 K35 [{"Thumbnail"}]
       79 GETTABLEKS                       R23 R0 K36 ["lookPreview"]
       81 SETTABLEKS                       R23 R22 K34 ["Thumbnail"]
       83 CALL                             R19 3 1
       84 SETTABLEKS                       R19 R18 K26 ["Preview"]
       86 GETUPVAL                         R19 3
       87 GETTABLEKS                       R19 R19 K9 ["createElement"]
       89 GETUPVAL                         R20 4
       90 DUPTABLE                         R21 K38 [{["tag"] = "col grow gap-large auto-y", ["LayoutOrder"]}]
       91 NAMECALL                         R22 R10 K31 ["getNextOrder"]
       93 CALL                             R22 1 1
       94 SETTABLEKS                       R22 R21 K29 ["LayoutOrder"]
       96 DUPTABLE                         R22 K41 [{"Name", "Description"}]
       97 GETUPVAL                         R23 3
       98 GETTABLEKS                       R23 R23 K9 ["createElement"]
      100 GETUPVAL                         R24 5
      101 DUPTABLE                         R25 K52 [{["text"], ["width"], ["onChanged"], ["hint"], ["placeholder"] = "", ["label"], ["hasError"], ["numLines"] = 1, ["LayoutOrder"]}]
      102 SETTABLEKS                       R2 R25 K42 ["text"]
      104 GETIMPORT                        R26 K54 [UDim.new]
      106 LOADN                            R27 1
      107 LOADN                            R28 0
      108 CALL                             R26 2 1
      109 SETTABLEKS                       R26 R25 K43 ["width"]
      111 SETTABLEKS                       R6 R25 K44 ["onChanged"]
      113 GETIMPORT                        R26 K56 [string.format]
      115 LOADK                            R27 K57 ["%d/%d"]
      116 MOVE                             R28 R3
      117 LOADN                            R29 50
      118 CALL                             R26 3 1
      119 SETTABLEKS                       R26 R25 K45 ["hint"]
      121 LOADK                            R28 K58 ["LookComposerDialog"]
      122 LOADK                            R29 K39 ["Name"]
      123 NAMECALL                         R26 R1 K59 ["getText"]
      125 CALL                             R26 3 1
      126 SETTABLEKS                       R26 R25 K48 ["label"]
      128 SETTABLEKS                       R8 R25 K49 ["hasError"]
      130 NAMECALL                         R26 R10 K31 ["getNextOrder"]
      132 CALL                             R26 1 1
      133 SETTABLEKS                       R26 R25 K29 ["LayoutOrder"]
      135 CALL                             R23 2 1
      136 SETTABLEKS                       R23 R22 K39 ["Name"]
      138 GETUPVAL                         R23 3
      139 GETTABLEKS                       R23 R23 K9 ["createElement"]
      141 GETUPVAL                         R24 5
      142 DUPTABLE                         R25 K61 [{["text"], ["width"], ["onChanged"], ["hint"], ["placeholder"] = "", ["label"], ["hasError"], ["numLines"] = 2, ["LayoutOrder"]}]
      143 SETTABLEKS                       R4 R25 K42 ["text"]
      145 GETIMPORT                        R26 K54 [UDim.new]
      147 LOADK                            R27 K62 [1.8]
      148 LOADN                            R28 0
      149 CALL                             R26 2 1
      150 SETTABLEKS                       R26 R25 K43 ["width"]
      152 SETTABLEKS                       R7 R25 K44 ["onChanged"]
      154 GETIMPORT                        R26 K56 [string.format]
      156 LOADK                            R27 K57 ["%d/%d"]
      157 MOVE                             R28 R5
      158 LOADN                            R29 1000
      159 CALL                             R26 3 1
      160 SETTABLEKS                       R26 R25 K45 ["hint"]
      162 LOADK                            R28 K58 ["LookComposerDialog"]
      163 LOADK                            R29 K40 ["Description"]
      164 NAMECALL                         R26 R1 K59 ["getText"]
      166 CALL                             R26 3 1
      167 SETTABLEKS                       R26 R25 K48 ["label"]
      169 SETTABLEKS                       R9 R25 K49 ["hasError"]
      171 NAMECALL                         R26 R10 K31 ["getNextOrder"]
      173 CALL                             R26 1 1
      174 SETTABLEKS                       R26 R25 K29 ["LayoutOrder"]
      176 CALL                             R23 2 1
      177 SETTABLEKS                       R23 R22 K40 ["Description"]
      179 CALL                             R19 3 1
      180 SETTABLEKS                       R19 R18 K27 ["InfoColumn"]
      182 CALL                             R15 3 1
      183 SETTABLEKS                       R15 R14 K13 ["Content"]
      185 CALL                             R11 3 -1
      186 RETURN                           R11 -1

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
