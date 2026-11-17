PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+2]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["findEligibilityCheck"]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K1 ["eligibilityChecks"]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K2 ["MARKETPLACE_DISCOVERABILITY_CHECK"]
       14 CALL                             R0 2 -1
       15 RETURN                           R0 -1

PROTO_1:
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
       38 GETTABLEKS                       R10 R10 K8 ["useMemo"]
       40 NEWCLOSURE                       R11 P0
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          UPVAL U4
       43 CAPTURE                          VAL R0
       44 NEWTABLE                         R12 0 1
       46 GETTABLEKS                       R13 R0 K9 ["eligibilityChecks"]
       48 SETLIST                          R12 R13 1 [1]
       50 CALL                             R10 2 1
       51 GETUPVAL                         R11 5
       52 GETTABLEKS                       R11 R11 K10 ["new"]
       54 CALL                             R11 0 1
       55 GETUPVAL                         R12 2
       56 GETTABLEKS                       R12 R12 K11 ["createElement"]
       58 GETUPVAL                         R13 6
       59 DUPTABLE                         R14 K14 [{["tag"] = "col gap-medium size-full-0 auto-y padding-large"}]
       60 DUPTABLE                         R15 K16 [{"Content"}]
       61 GETUPVAL                         R16 2
       62 GETTABLEKS                       R16 R16 K11 ["createElement"]
       64 GETUPVAL                         R17 6
       65 DUPTABLE                         R18 K20 [{["tag"] = "row align-y-top gap-large", ["Size"], ["AutomaticSize"]}]
       66 GETIMPORT                        R19 K23 [UDim2.fromScale]
       68 LOADK                            R20 K24 [0.5]
       69 LOADN                            R21 0
       70 CALL                             R19 2 1
       71 SETTABLEKS                       R19 R18 K18 ["Size"]
       73 GETIMPORT                        R19 K27 [Enum.AutomaticSize.Y]
       75 SETTABLEKS                       R19 R18 K19 ["AutomaticSize"]
       77 DUPTABLE                         R19 K30 [{"Preview", "InfoColumn"}]
       78 GETUPVAL                         R20 2
       79 GETTABLEKS                       R20 R20 K11 ["createElement"]
       81 GETUPVAL                         R21 6
       82 DUPTABLE                         R22 K32 [{"LayoutOrder", "AutomaticSize"}]
       83 NAMECALL                         R23 R11 K33 ["getNextOrder"]
       85 CALL                             R23 1 1
       86 SETTABLEKS                       R23 R22 K31 ["LayoutOrder"]
       88 GETIMPORT                        R23 K35 [Enum.AutomaticSize.XY]
       90 SETTABLEKS                       R23 R22 K19 ["AutomaticSize"]
       92 DUPTABLE                         R23 K37 [{"Thumbnail"}]
       93 GETTABLEKS                       R24 R0 K38 ["lookPreview"]
       95 SETTABLEKS                       R24 R23 K36 ["Thumbnail"]
       97 CALL                             R20 3 1
       98 SETTABLEKS                       R20 R19 K28 ["Preview"]
      100 GETUPVAL                         R20 2
      101 GETTABLEKS                       R20 R20 K11 ["createElement"]
      103 GETUPVAL                         R21 6
      104 DUPTABLE                         R22 K40 [{["tag"] = "col grow gap-large auto-y", ["LayoutOrder"]}]
      105 NAMECALL                         R23 R11 K33 ["getNextOrder"]
      107 CALL                             R23 1 1
      108 SETTABLEKS                       R23 R22 K31 ["LayoutOrder"]
      110 DUPTABLE                         R23 K44 [{"Name", "Description", "MarketplaceDiscoverability"}]
      111 GETUPVAL                         R24 2
      112 GETTABLEKS                       R24 R24 K11 ["createElement"]
      114 GETUPVAL                         R25 7
      115 DUPTABLE                         R26 K55 [{["text"], ["width"], ["onChanged"], ["hint"], ["placeholder"] = "", ["label"], ["hasError"], ["numLines"] = 1, ["LayoutOrder"]}]
      116 SETTABLEKS                       R2 R26 K45 ["text"]
      118 GETUPVAL                         R28 8
      119 CALL                             R28 0 1
      120 JUMPIFNOT                        R28 ; [+8]
      121 GETIMPORT                        R27 K57 [UDim.new]
      123 GETUPVAL                         R28 9
      124 GETTABLEKS                       R28 R28 K58 ["LOOK_COMPOSER_INPUT_WIDTH_SCALE"]
      126 LOADN                            R29 0
      127 CALL                             R27 2 1
      128 JUMP                             ; [+5]
      129 GETIMPORT                        R27 K57 [UDim.new]
      131 LOADN                            R28 1
      132 LOADN                            R29 0
      133 CALL                             R27 2 1
      134 SETTABLEKS                       R27 R26 K46 ["width"]
      136 SETTABLEKS                       R6 R26 K47 ["onChanged"]
      138 GETIMPORT                        R27 K60 [string.format]
      140 LOADK                            R28 K61 ["%d/%d"]
      141 MOVE                             R29 R3
      142 LOADN                            R30 50
      143 CALL                             R27 3 1
      144 SETTABLEKS                       R27 R26 K48 ["hint"]
      146 LOADK                            R29 K62 ["LookComposerDialog"]
      147 LOADK                            R30 K41 ["Name"]
      148 NAMECALL                         R27 R1 K63 ["getText"]
      150 CALL                             R27 3 1
      151 SETTABLEKS                       R27 R26 K51 ["label"]
      153 SETTABLEKS                       R8 R26 K52 ["hasError"]
      155 NAMECALL                         R27 R11 K33 ["getNextOrder"]
      157 CALL                             R27 1 1
      158 SETTABLEKS                       R27 R26 K31 ["LayoutOrder"]
      160 CALL                             R24 2 1
      161 SETTABLEKS                       R24 R23 K41 ["Name"]
      163 GETUPVAL                         R24 2
      164 GETTABLEKS                       R24 R24 K11 ["createElement"]
      166 GETUPVAL                         R25 7
      167 DUPTABLE                         R26 K65 [{["text"], ["width"], ["onChanged"], ["hint"], ["placeholder"] = "", ["label"], ["hasError"], ["numLines"] = 2, ["LayoutOrder"]}]
      168 SETTABLEKS                       R4 R26 K45 ["text"]
      170 GETIMPORT                        R27 K57 [UDim.new]
      172 GETUPVAL                         R28 9
      173 GETTABLEKS                       R28 R28 K58 ["LOOK_COMPOSER_INPUT_WIDTH_SCALE"]
      175 LOADN                            R29 0
      176 CALL                             R27 2 1
      177 SETTABLEKS                       R27 R26 K46 ["width"]
      179 SETTABLEKS                       R7 R26 K47 ["onChanged"]
      181 GETIMPORT                        R27 K60 [string.format]
      183 LOADK                            R28 K61 ["%d/%d"]
      184 MOVE                             R29 R5
      185 LOADN                            R30 1000
      186 CALL                             R27 3 1
      187 SETTABLEKS                       R27 R26 K48 ["hint"]
      189 LOADK                            R29 K62 ["LookComposerDialog"]
      190 LOADK                            R30 K42 ["Description"]
      191 NAMECALL                         R27 R1 K63 ["getText"]
      193 CALL                             R27 3 1
      194 SETTABLEKS                       R27 R26 K51 ["label"]
      196 SETTABLEKS                       R9 R26 K52 ["hasError"]
      198 NAMECALL                         R27 R11 K33 ["getNextOrder"]
      200 CALL                             R27 1 1
      201 SETTABLEKS                       R27 R26 K31 ["LayoutOrder"]
      203 CALL                             R24 2 1
      204 SETTABLEKS                       R24 R23 K42 ["Description"]
      206 JUMPIFEQKNIL                     R10 ; [+17]
      208 GETUPVAL                         R24 2
      209 GETTABLEKS                       R24 R24 K11 ["createElement"]
      211 GETUPVAL                         R25 10
      212 DUPTABLE                         R26 K67 [{"isDiscoverable", "LayoutOrder"}]
      213 GETTABLEKS                       R27 R10 K66 ["isDiscoverable"]
      215 SETTABLEKS                       R27 R26 K66 ["isDiscoverable"]
      217 NAMECALL                         R27 R11 K33 ["getNextOrder"]
      219 CALL                             R27 1 1
      220 SETTABLEKS                       R27 R26 K31 ["LayoutOrder"]
      222 CALL                             R24 2 1
      223 JUMP                             ; [+1]
      224 LOADNIL                          R24
      225 SETTABLEKS                       R24 R23 K43 ["MarketplaceDiscoverability"]
      227 CALL                             R20 3 1
      228 SETTABLEKS                       R20 R19 K29 ["InfoColumn"]
      230 CALL                             R16 3 1
      231 SETTABLEKS                       R16 R15 K15 ["Content"]
      233 CALL                             R12 3 -1
      234 RETURN                           R12 -1

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
       44 GETTABLEKS                       R9 R9 K17 ["Components"]
       46 GETTABLEKS                       R9 R9 K18 ["LookComposerDialog"]
       48 GETTABLEKS                       R9 R9 K19 ["MarketplaceDiscoverabilityRow"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K5 [require]
       53 GETTABLEKS                       R10 R0 K16 ["Src"]
       55 GETTABLEKS                       R10 R10 K14 ["Util"]
       57 GETTABLEKS                       R10 R10 K20 ["Constants"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K5 [require]
       62 GETTABLEKS                       R11 R0 K16 ["Src"]
       64 GETTABLEKS                       R11 R11 K14 ["Util"]
       66 GETTABLEKS                       R11 R11 K21 ["LookComposerUtils"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K5 [require]
       71 GETTABLEKS                       R12 R0 K16 ["Src"]
       73 GETTABLEKS                       R12 R12 K22 ["Flags"]
       75 GETTABLEKS                       R12 R12 K23 ["getFFlagAvatarPreviewerLookComposer"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K5 [require]
       80 GETTABLEKS                       R13 R0 K16 ["Src"]
       82 GETTABLEKS                       R13 R13 K22 ["Flags"]
       84 GETTABLEKS                       R13 R13 K24 ["getFFlagAvatarPreviewerEligibilityChecks"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K5 [require]
       89 GETTABLEKS                       R14 R0 K16 ["Src"]
       91 GETTABLEKS                       R14 R14 K22 ["Flags"]
       93 GETTABLEKS                       R14 R14 K25 ["getFFlagAvatarPreviewerLookComposerEqualInputWidth"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K5 [require]
       98 GETTABLEKS                       R15 R0 K16 ["Src"]
      100 GETTABLEKS                       R15 R15 K26 ["Types"]
      102 CALL                             R14 1 1
      103 DUPCLOSURE                       R15 K27 [PROTO_1]
      104 CAPTURE                          VAL R11
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R10
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R8
      115 RETURN                           R15 1
