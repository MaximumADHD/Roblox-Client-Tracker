PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R2 R0 K1 ["displayName"]
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 GETTABLEKS                       R6 R0 K2 ["stage"]
       11 JUMPIFNOTEQKS                    R6 K3 ["GeneratingTexture"] ; [+42]
       13 GETUPVAL                         R6 1
       14 LOADK                            R8 K4 ["TextureGen"]
       15 LOADK                            R9 K5 ["HeaderGenerating"]
       16 DUPTABLE                         R10 K6 [{"displayName"}]
       17 SETTABLEKS                       R2 R10 K1 ["displayName"]
       19 NAMECALL                         R6 R6 K7 ["getText"]
       21 CALL                             R6 4 1
       22 MOVE                             R3 R6
       23 GETUPVAL                         R6 1
       24 LOADK                            R8 K4 ["TextureGen"]
       25 LOADK                            R9 K8 ["Preparing"]
       26 NAMECALL                         R6 R6 K7 ["getText"]
       28 CALL                             R6 3 1
       29 MOVE                             R4 R6
       30 DUPTABLE                         R6 K12 [{"text", "variant", "onActivated"}]
       31 GETUPVAL                         R7 1
       32 LOADK                            R9 K13 ["Common"]
       33 LOADK                            R10 K14 ["Cancel"]
       34 NAMECALL                         R7 R7 K7 ["getText"]
       36 CALL                             R7 3 1
       37 SETTABLEKS                       R7 R6 K9 ["text"]
       39 GETUPVAL                         R7 2
       40 GETTABLEKS                       R7 R7 K15 ["Enums"]
       42 GETTABLEKS                       R7 R7 K16 ["ButtonVariant"]
       44 GETTABLEKS                       R7 R7 K17 ["Standard"]
       46 SETTABLEKS                       R7 R6 K10 ["variant"]
       48 GETTABLEKS                       R7 R0 K18 ["onCancel"]
       50 SETTABLEKS                       R7 R6 K11 ["onActivated"]
       52 MOVE                             R5 R6
       53 JUMP                             ; [+78]
       54 GETTABLEKS                       R6 R0 K2 ["stage"]
       56 JUMPIFNOTEQKS                    R6 K19 ["Inserting"] ; [+14]
       58 GETUPVAL                         R6 1
       59 LOADK                            R8 K4 ["TextureGen"]
       60 LOADK                            R9 K20 ["HeaderInserting"]
       61 DUPTABLE                         R10 K6 [{"displayName"}]
       62 SETTABLEKS                       R2 R10 K1 ["displayName"]
       64 NAMECALL                         R6 R6 K7 ["getText"]
       66 CALL                             R6 4 1
       67 MOVE                             R3 R6
       68 LOADNIL                          R4
       69 LOADNIL                          R5
       70 JUMP                             ; [+61]
       71 GETUPVAL                         R6 1
       72 LOADK                            R8 K4 ["TextureGen"]
       73 LOADK                            R9 K21 ["HeaderFailed"]
       74 NAMECALL                         R6 R6 K7 ["getText"]
       76 CALL                             R6 3 1
       77 MOVE                             R3 R6
       78 GETTABLEKS                       R6 R0 K22 ["failureReason"]
       80 GETUPVAL                         R7 3
       81 GETTABLEKS                       R7 R7 K23 ["Gen3dTypes"]
       83 GETTABLEKS                       R7 R7 K15 ["Enums"]
       85 GETTABLEKS                       R7 R7 K24 ["FailureReason"]
       87 GETTABLEKS                       R7 R7 K25 ["GenerationModerated"]
       89 JUMPIFNOTEQ                      R6 R7 ; [+9]
       91 GETUPVAL                         R6 1
       92 LOADK                            R8 K13 ["Common"]
       93 LOADK                            R9 K25 ["GenerationModerated"]
       94 NAMECALL                         R6 R6 K7 ["getText"]
       96 CALL                             R6 3 1
       97 MOVE                             R4 R6
       98 JUMP                             ; [+10]
       99 GETTABLEKS                       R6 R0 K26 ["errorMessage"]
      101 JUMPIF                           R6 ; [+6]
      102 GETUPVAL                         R6 1
      103 LOADK                            R8 K13 ["Common"]
      104 LOADK                            R9 K27 ["UnknownError"]
      105 NAMECALL                         R6 R6 K7 ["getText"]
      107 CALL                             R6 3 1
      108 MOVE                             R4 R6
      109 DUPTABLE                         R6 K12 [{"text", "variant", "onActivated"}]
      110 GETUPVAL                         R7 1
      111 LOADK                            R9 K13 ["Common"]
      112 LOADK                            R10 K28 ["TryAgain"]
      113 NAMECALL                         R7 R7 K7 ["getText"]
      115 CALL                             R7 3 1
      116 SETTABLEKS                       R7 R6 K9 ["text"]
      118 GETUPVAL                         R7 2
      119 GETTABLEKS                       R7 R7 K15 ["Enums"]
      121 GETTABLEKS                       R7 R7 K16 ["ButtonVariant"]
      123 GETTABLEKS                       R7 R7 K17 ["Standard"]
      125 SETTABLEKS                       R7 R6 K10 ["variant"]
      127 GETTABLEKS                       R7 R0 K29 ["onReset"]
      129 SETTABLEKS                       R7 R6 K11 ["onActivated"]
      131 MOVE                             R5 R6
      132 GETUPVAL                         R6 4
      133 GETTABLEKS                       R6 R6 K30 ["createElement"]
      135 GETUPVAL                         R7 2
      136 GETTABLEKS                       R7 R7 K31 ["View"]
      138 DUPTABLE                         R8 K34 [{["tag"] = "col size-full-0 auto-y padding-medium gap-small bg-shift-100 radius-small"}]
      139 DUPTABLE                         R9 K38 [{"Headline", "Body", "Primary"}]
      140 GETUPVAL                         R10 4
      141 GETTABLEKS                       R10 R10 K30 ["createElement"]
      143 GETUPVAL                         R11 2
      144 GETTABLEKS                       R11 R11 K39 ["Text"]
      146 DUPTABLE                         R12 K45 [{["LayoutOrder"], ["Text"], ["tag"] = "size-full-0 auto-y text-body-medium text-emphasis-primary", ["TextXAlignment"], ["TextWrapped"] = True}]
      147 MOVE                             R13 R1
      148 CALL                             R13 0 1
      149 SETTABLEKS                       R13 R12 K40 ["LayoutOrder"]
      151 SETTABLEKS                       R3 R12 K39 ["Text"]
      153 GETIMPORT                        R13 K48 [Enum.TextXAlignment.Left]
      155 SETTABLEKS                       R13 R12 K42 ["TextXAlignment"]
      157 CALL                             R10 2 1
      158 SETTABLEKS                       R10 R9 K35 ["Headline"]
      160 JUMPIFNOT                        R4 ; [+19]
      161 GETUPVAL                         R10 4
      162 GETTABLEKS                       R10 R10 K30 ["createElement"]
      164 GETUPVAL                         R11 2
      165 GETTABLEKS                       R11 R11 K39 ["Text"]
      167 DUPTABLE                         R12 K50 [{["LayoutOrder"], ["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-emphasis-muted", ["TextXAlignment"], ["TextWrapped"] = True}]
      168 MOVE                             R13 R1
      169 CALL                             R13 0 1
      170 SETTABLEKS                       R13 R12 K40 ["LayoutOrder"]
      172 SETTABLEKS                       R4 R12 K39 ["Text"]
      174 GETIMPORT                        R13 K48 [Enum.TextXAlignment.Left]
      176 SETTABLEKS                       R13 R12 K42 ["TextXAlignment"]
      178 CALL                             R10 2 1
      179 JUMP                             ; [+1]
      180 LOADNIL                          R10
      181 SETTABLEKS                       R10 R9 K36 ["Body"]
      183 JUMPIFNOT                        R5 ; [+41]
      184 GETUPVAL                         R10 4
      185 GETTABLEKS                       R10 R10 K30 ["createElement"]
      187 GETUPVAL                         R11 2
      188 GETTABLEKS                       R11 R11 K51 ["Button"]
      190 DUPTABLE                         R12 K54 [{"LayoutOrder", "text", "onActivated", "variant", "size", "width"}]
      191 MOVE                             R13 R1
      192 CALL                             R13 0 1
      193 SETTABLEKS                       R13 R12 K40 ["LayoutOrder"]
      195 GETTABLEKS                       R13 R5 K9 ["text"]
      197 SETTABLEKS                       R13 R12 K9 ["text"]
      199 GETTABLEKS                       R13 R5 K11 ["onActivated"]
      201 SETTABLEKS                       R13 R12 K11 ["onActivated"]
      203 GETTABLEKS                       R13 R5 K10 ["variant"]
      205 SETTABLEKS                       R13 R12 K10 ["variant"]
      207 GETUPVAL                         R13 2
      208 GETTABLEKS                       R13 R13 K15 ["Enums"]
      210 GETTABLEKS                       R13 R13 K55 ["InputSize"]
      212 GETTABLEKS                       R13 R13 K56 ["Medium"]
      214 SETTABLEKS                       R13 R12 K52 ["size"]
      216 GETIMPORT                        R13 K59 [UDim.new]
      218 LOADN                            R14 1
      219 LOADN                            R15 0
      220 CALL                             R13 2 1
      221 SETTABLEKS                       R13 R12 K53 ["width"]
      223 CALL                             R10 2 1
      224 JUMP                             ; [+1]
      225 LOADNIL                          R10
      226 SETTABLEKS                       R10 R9 K37 ["Primary"]
      228 CALL                             R6 3 -1
      229 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["AssistantUI"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R6 K11 ["Gen3dCore"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K12 ["Src"]
       46 GETTABLEKS                       R7 R7 K13 ["Types"]
       48 CALL                             R6 1 1
       49 GETTABLEKS                       R7 R4 K14 ["Resources"]
       51 GETTABLEKS                       R7 R7 K15 ["Localization"]
       53 GETTABLEKS                       R7 R7 K16 ["Translator"]
       55 DUPCLOSURE                       R8 K17 [PROTO_0]
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R1
       61 RETURN                           R8 1
