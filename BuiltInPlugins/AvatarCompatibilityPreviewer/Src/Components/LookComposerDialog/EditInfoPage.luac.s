PROTO_0:
        0 JUMPIF                           R0 ; [+7]
        1 GETUPVAL                         R1 0
        2 LOADK                            R2 K0 [""]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 LOADN                            R2 0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0
        8 GETIMPORT                        R1 K3 [utf8.len]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 1
       12 GETUPVAL                         R2 1
       13 MOVE                             R3 R1
       14 CALL                             R2 1 0
       15 GETUPVAL                         R2 0
       16 MOVE                             R3 R0
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R2
        3 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 1
        6 NAMECALL                         R1 R1 K0 ["use"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R2 R3 K1 ["useState"]
       12 LOADK                            R3 K2 [""]
       13 CALL                             R2 1 2
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R4 R5 K1 ["useState"]
       17 LOADN                            R5 0
       18 CALL                             R4 1 2
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R6 R7 K1 ["useState"]
       22 LOADK                            R7 K2 [""]
       23 CALL                             R6 1 2
       24 GETUPVAL                         R9 2
       25 GETTABLEKS                       R8 R9 K1 ["useState"]
       27 LOADN                            R9 0
       28 CALL                             R8 1 2
       29 DUPCLOSURE                       R10 K3 [PROTO_1]
       30 GETUPVAL                         R12 2
       31 GETTABLEKS                       R11 R12 K4 ["useCallback"]
       33 NEWCLOSURE                       R12 P1
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R5
       36 NEWTABLE                         R13 0 0
       38 CALL                             R11 2 1
       39 GETUPVAL                         R13 2
       40 GETTABLEKS                       R12 R13 K4 ["useCallback"]
       42 NEWCLOSURE                       R13 P1
       43 CAPTURE                          VAL R7
       44 CAPTURE                          VAL R9
       45 NEWTABLE                         R14 0 0
       47 CALL                             R12 2 1
       48 LOADN                            R14 15
       49 JUMPIFLT                         R14 R4 ; [+2]
       51 LOADB                            R13 0 +1
       52 LOADB                            R13 1
       53 LOADN                            R15 232
       54 JUMPIFLT                         R15 R8 ; [+2]
       56 LOADB                            R14 0 +1
       57 LOADB                            R14 1
       58 GETUPVAL                         R16 3
       59 GETTABLEKS                       R15 R16 K5 ["new"]
       61 CALL                             R15 0 1
       62 GETUPVAL                         R17 2
       63 GETTABLEKS                       R16 R17 K6 ["createElement"]
       65 GETUPVAL                         R17 4
       66 DUPTABLE                         R18 K8 [{"tag"}]
       67 LOADK                            R19 K9 ["col gap-medium size-full-0 auto-y padding-large"]
       68 SETTABLEKS                       R19 R18 K7 ["tag"]
       70 DUPTABLE                         R19 K11 [{"Content"}]
       71 GETUPVAL                         R21 2
       72 GETTABLEKS                       R20 R21 K6 ["createElement"]
       74 GETUPVAL                         R21 4
       75 DUPTABLE                         R22 K14 [{"tag", "Size", "AutomaticSize"}]
       76 LOADK                            R23 K15 ["row gap-large align-y-top"]
       77 SETTABLEKS                       R23 R22 K7 ["tag"]
       79 GETIMPORT                        R23 K18 [UDim2.fromScale]
       81 LOADK                            R24 K19 [0.5]
       82 LOADN                            R25 0
       83 CALL                             R23 2 1
       84 SETTABLEKS                       R23 R22 K12 ["Size"]
       86 GETIMPORT                        R23 K22 [Enum.AutomaticSize.Y]
       88 SETTABLEKS                       R23 R22 K13 ["AutomaticSize"]
       90 DUPTABLE                         R23 K25 [{"Preview", "InfoColumn"}]
       91 GETUPVAL                         R25 2
       92 GETTABLEKS                       R24 R25 K6 ["createElement"]
       94 GETUPVAL                         R25 4
       95 DUPTABLE                         R26 K27 [{"LayoutOrder", "AutomaticSize"}]
       96 NAMECALL                         R27 R15 K28 ["getNextOrder"]
       98 CALL                             R27 1 1
       99 SETTABLEKS                       R27 R26 K26 ["LayoutOrder"]
      101 GETIMPORT                        R27 K30 [Enum.AutomaticSize.XY]
      103 SETTABLEKS                       R27 R26 K13 ["AutomaticSize"]
      105 DUPTABLE                         R27 K32 [{"Thumbnail"}]
      106 GETTABLEKS                       R28 R0 K33 ["lookPreview"]
      108 SETTABLEKS                       R28 R27 K31 ["Thumbnail"]
      110 CALL                             R24 3 1
      111 SETTABLEKS                       R24 R23 K23 ["Preview"]
      113 GETUPVAL                         R25 2
      114 GETTABLEKS                       R24 R25 K6 ["createElement"]
      116 GETUPVAL                         R25 4
      117 DUPTABLE                         R26 K34 [{"tag", "LayoutOrder"}]
      118 LOADK                            R27 K35 ["col gap-large grow auto-y"]
      119 SETTABLEKS                       R27 R26 K7 ["tag"]
      121 NAMECALL                         R27 R15 K28 ["getNextOrder"]
      123 CALL                             R27 1 1
      124 SETTABLEKS                       R27 R26 K26 ["LayoutOrder"]
      126 DUPTABLE                         R27 K38 [{"Name", "Description"}]
      127 GETUPVAL                         R29 2
      128 GETTABLEKS                       R28 R29 K6 ["createElement"]
      130 GETUPVAL                         R29 5
      131 DUPTABLE                         R30 K47 [{"text", "width", "onChanged", "hint", "placeholder", "label", "hasError", "numLines", "LayoutOrder"}]
      132 SETTABLEKS                       R2 R30 K39 ["text"]
      134 GETIMPORT                        R31 K49 [UDim.new]
      136 LOADN                            R32 1
      137 LOADN                            R33 0
      138 CALL                             R31 2 1
      139 SETTABLEKS                       R31 R30 K40 ["width"]
      141 SETTABLEKS                       R11 R30 K41 ["onChanged"]
      143 GETIMPORT                        R31 K52 [string.format]
      145 LOADK                            R32 K53 ["%d/%d"]
      146 MOVE                             R33 R4
      147 LOADN                            R34 15
      148 CALL                             R31 3 1
      149 SETTABLEKS                       R31 R30 K42 ["hint"]
      151 LOADK                            R31 K2 [""]
      152 SETTABLEKS                       R31 R30 K43 ["placeholder"]
      154 LOADK                            R33 K54 ["LookComposerDialog"]
      155 LOADK                            R34 K36 ["Name"]
      156 NAMECALL                         R31 R1 K55 ["getText"]
      158 CALL                             R31 3 1
      159 SETTABLEKS                       R31 R30 K44 ["label"]
      161 SETTABLEKS                       R13 R30 K45 ["hasError"]
      163 LOADN                            R31 1
      164 SETTABLEKS                       R31 R30 K46 ["numLines"]
      166 NAMECALL                         R31 R15 K28 ["getNextOrder"]
      168 CALL                             R31 1 1
      169 SETTABLEKS                       R31 R30 K26 ["LayoutOrder"]
      171 CALL                             R28 2 1
      172 SETTABLEKS                       R28 R27 K36 ["Name"]
      174 GETUPVAL                         R29 2
      175 GETTABLEKS                       R28 R29 K6 ["createElement"]
      177 GETUPVAL                         R29 5
      178 DUPTABLE                         R30 K47 [{"text", "width", "onChanged", "hint", "placeholder", "label", "hasError", "numLines", "LayoutOrder"}]
      179 SETTABLEKS                       R6 R30 K39 ["text"]
      181 GETIMPORT                        R31 K49 [UDim.new]
      183 LOADK                            R32 K56 [1.8]
      184 LOADN                            R33 0
      185 CALL                             R31 2 1
      186 SETTABLEKS                       R31 R30 K40 ["width"]
      188 SETTABLEKS                       R12 R30 K41 ["onChanged"]
      190 GETIMPORT                        R31 K52 [string.format]
      192 LOADK                            R32 K53 ["%d/%d"]
      193 MOVE                             R33 R8
      194 LOADN                            R34 232
      195 CALL                             R31 3 1
      196 SETTABLEKS                       R31 R30 K42 ["hint"]
      198 LOADK                            R31 K2 [""]
      199 SETTABLEKS                       R31 R30 K43 ["placeholder"]
      201 LOADK                            R33 K54 ["LookComposerDialog"]
      202 LOADK                            R34 K37 ["Description"]
      203 NAMECALL                         R31 R1 K55 ["getText"]
      205 CALL                             R31 3 1
      206 SETTABLEKS                       R31 R30 K44 ["label"]
      208 SETTABLEKS                       R14 R30 K45 ["hasError"]
      210 LOADN                            R31 2
      211 SETTABLEKS                       R31 R30 K46 ["numLines"]
      213 NAMECALL                         R31 R15 K28 ["getNextOrder"]
      215 CALL                             R31 1 1
      216 SETTABLEKS                       R31 R30 K26 ["LayoutOrder"]
      218 CALL                             R28 2 1
      219 SETTABLEKS                       R28 R27 K37 ["Description"]
      221 CALL                             R24 3 1
      222 SETTABLEKS                       R24 R23 K24 ["InfoColumn"]
      224 CALL                             R20 3 1
      225 SETTABLEKS                       R20 R19 K10 ["Content"]
      227 CALL                             R16 3 -1
      228 RETURN                           R16 -1

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
       23 GETTABLEKS                       R4 R2 K10 ["TextArea"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R7 R0 K6 ["Packages"]
       29 GETTABLEKS                       R6 R7 K11 ["Framework"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R7 R5 K12 ["ContextServices"]
       34 GETTABLEKS                       R6 R7 K13 ["Localization"]
       36 GETTABLEKS                       R8 R5 K14 ["Util"]
       38 GETTABLEKS                       R7 R8 K15 ["LayoutOrderIterator"]
       40 GETIMPORT                        R8 K5 [require]
       42 GETTABLEKS                       R11 R0 K16 ["Src"]
       44 GETTABLEKS                       R10 R11 K17 ["Flags"]
       46 GETTABLEKS                       R9 R10 K18 ["getFFlagAvatarPreviewerLookComposer"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K5 [require]
       51 GETIMPORT                        R12 K1 [script]
       53 GETTABLEKS                       R11 R12 K19 ["Parent"]
       55 GETTABLEKS                       R10 R11 K20 ["Types"]
       57 CALL                             R9 1 1
       58 DUPCLOSURE                       R10 K21 [PROTO_2]
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R4
       65 RETURN                           R10 1
