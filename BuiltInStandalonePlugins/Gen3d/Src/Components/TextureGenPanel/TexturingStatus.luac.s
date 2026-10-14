PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["createNextOrder"]
       10 CALL                             R2 0 1
       11 GETTABLEKS                       R3 R0 K3 ["displayName"]
       13 LOADNIL                          R4
       14 LOADNIL                          R5
       15 LOADNIL                          R6
       16 GETTABLEKS                       R7 R0 K4 ["stage"]
       18 JUMPIFNOTEQKS                    R7 K5 ["GeneratingTexture"] ; [+45]
       20 GETUPVAL                         R7 3
       21 MOVE                             R8 R1
       22 LOADK                            R9 K6 ["TextureGen"]
       23 LOADK                            R10 K7 ["HeaderGenerating"]
       24 LOADK                            R11 K8 ["Re-texturing: %*"]
       25 MOVE                             R13 R3
       26 NAMECALL                         R11 R11 K9 ["format"]
       28 CALL                             R11 2 1
       29 DUPTABLE                         R12 K10 [{"displayName"}]
       30 SETTABLEKS                       R3 R12 K3 ["displayName"]
       32 CALL                             R7 5 1
       33 MOVE                             R4 R7
       34 LOADK                            R9 K6 ["TextureGen"]
       35 LOADK                            R10 K11 ["Preparing"]
       36 NAMECALL                         R7 R1 K12 ["getText"]
       38 CALL                             R7 3 1
       39 MOVE                             R5 R7
       40 DUPTABLE                         R7 K16 [{"text", "variant", "onActivated"}]
       41 GETUPVAL                         R8 3
       42 MOVE                             R9 R1
       43 LOADK                            R10 K17 ["Common"]
       44 LOADK                            R11 K18 ["Cancel"]
       45 LOADK                            R12 K18 ["Cancel"]
       46 CALL                             R8 4 1
       47 SETTABLEKS                       R8 R7 K13 ["text"]
       49 GETUPVAL                         R8 4
       50 GETTABLEKS                       R8 R8 K19 ["Enums"]
       52 GETTABLEKS                       R8 R8 K20 ["ButtonVariant"]
       54 GETTABLEKS                       R8 R8 K21 ["Standard"]
       56 SETTABLEKS                       R8 R7 K14 ["variant"]
       58 GETTABLEKS                       R8 R0 K22 ["onCancel"]
       60 SETTABLEKS                       R8 R7 K15 ["onActivated"]
       62 MOVE                             R6 R7
       63 JUMP                             ; [+81]
       64 GETTABLEKS                       R7 R0 K4 ["stage"]
       66 JUMPIFNOTEQKS                    R7 K23 ["Inserting"] ; [+18]
       68 GETUPVAL                         R7 3
       69 MOVE                             R8 R1
       70 LOADK                            R9 K6 ["TextureGen"]
       71 LOADK                            R10 K24 ["HeaderInserting"]
       72 LOADK                            R11 K25 ["Inserting: %*"]
       73 MOVE                             R13 R3
       74 NAMECALL                         R11 R11 K9 ["format"]
       76 CALL                             R11 2 1
       77 DUPTABLE                         R12 K10 [{"displayName"}]
       78 SETTABLEKS                       R3 R12 K3 ["displayName"]
       80 CALL                             R7 5 1
       81 MOVE                             R4 R7
       82 LOADNIL                          R5
       83 LOADNIL                          R6
       84 JUMP                             ; [+60]
       85 LOADK                            R9 K6 ["TextureGen"]
       86 LOADK                            R10 K26 ["HeaderFailed"]
       87 NAMECALL                         R7 R1 K12 ["getText"]
       89 CALL                             R7 3 1
       90 MOVE                             R4 R7
       91 GETTABLEKS                       R7 R0 K27 ["failureReason"]
       93 GETUPVAL                         R8 5
       94 GETTABLEKS                       R8 R8 K28 ["Gen3dTypes"]
       96 GETTABLEKS                       R8 R8 K19 ["Enums"]
       98 GETTABLEKS                       R8 R8 K29 ["FailureReason"]
      100 GETTABLEKS                       R8 R8 K30 ["GenerationModerated"]
      102 JUMPIFNOTEQ                      R7 R8 ; [+9]
      104 GETUPVAL                         R7 3
      105 MOVE                             R8 R1
      106 LOADK                            R9 K17 ["Common"]
      107 LOADK                            R10 K30 ["GenerationModerated"]
      108 LOADK                            R11 K31 ["Generation was moderated."]
      109 CALL                             R7 4 1
      110 MOVE                             R5 R7
      111 JUMP                             ; [+10]
      112 GETTABLEKS                       R7 R0 K32 ["errorMessage"]
      114 JUMPIF                           R7 ; [+6]
      115 GETUPVAL                         R7 3
      116 MOVE                             R8 R1
      117 LOADK                            R9 K17 ["Common"]
      118 LOADK                            R10 K33 ["UnknownError"]
      119 LOADK                            R11 K34 ["Something went wrong."]
      120 CALL                             R7 4 1
      121 MOVE                             R5 R7
      122 DUPTABLE                         R7 K16 [{"text", "variant", "onActivated"}]
      123 GETUPVAL                         R8 3
      124 MOVE                             R9 R1
      125 LOADK                            R10 K17 ["Common"]
      126 LOADK                            R11 K35 ["TryAgain"]
      127 LOADK                            R12 K36 ["Try again"]
      128 CALL                             R8 4 1
      129 SETTABLEKS                       R8 R7 K13 ["text"]
      131 GETUPVAL                         R8 4
      132 GETTABLEKS                       R8 R8 K19 ["Enums"]
      134 GETTABLEKS                       R8 R8 K20 ["ButtonVariant"]
      136 GETTABLEKS                       R8 R8 K21 ["Standard"]
      138 SETTABLEKS                       R8 R7 K14 ["variant"]
      140 GETTABLEKS                       R8 R0 K37 ["onReset"]
      142 SETTABLEKS                       R8 R7 K15 ["onActivated"]
      144 MOVE                             R6 R7
      145 GETUPVAL                         R7 0
      146 GETTABLEKS                       R7 R7 K38 ["createElement"]
      148 GETUPVAL                         R8 4
      149 GETTABLEKS                       R8 R8 K39 ["View"]
      151 DUPTABLE                         R9 K42 [{["tag"] = "col size-full-0 auto-y padding-medium gap-small bg-shift-100 radius-small"}]
      152 DUPTABLE                         R10 K46 [{"Headline", "Body", "Primary"}]
      153 GETUPVAL                         R11 0
      154 GETTABLEKS                       R11 R11 K38 ["createElement"]
      156 GETUPVAL                         R12 4
      157 GETTABLEKS                       R12 R12 K47 ["Text"]
      159 DUPTABLE                         R13 K53 [{["LayoutOrder"], ["Text"], ["tag"] = "size-full-0 auto-y text-body-medium text-emphasis-primary", ["TextXAlignment"], ["TextWrapped"] = True}]
      160 MOVE                             R14 R2
      161 CALL                             R14 0 1
      162 SETTABLEKS                       R14 R13 K48 ["LayoutOrder"]
      164 SETTABLEKS                       R4 R13 K47 ["Text"]
      166 GETIMPORT                        R14 K56 [Enum.TextXAlignment.Left]
      168 SETTABLEKS                       R14 R13 K50 ["TextXAlignment"]
      170 CALL                             R11 2 1
      171 SETTABLEKS                       R11 R10 K43 ["Headline"]
      173 JUMPIFNOT                        R5 ; [+19]
      174 GETUPVAL                         R11 0
      175 GETTABLEKS                       R11 R11 K38 ["createElement"]
      177 GETUPVAL                         R12 4
      178 GETTABLEKS                       R12 R12 K47 ["Text"]
      180 DUPTABLE                         R13 K58 [{["LayoutOrder"], ["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-emphasis-muted", ["TextXAlignment"], ["TextWrapped"] = True}]
      181 MOVE                             R14 R2
      182 CALL                             R14 0 1
      183 SETTABLEKS                       R14 R13 K48 ["LayoutOrder"]
      185 SETTABLEKS                       R5 R13 K47 ["Text"]
      187 GETIMPORT                        R14 K56 [Enum.TextXAlignment.Left]
      189 SETTABLEKS                       R14 R13 K50 ["TextXAlignment"]
      191 CALL                             R11 2 1
      192 JUMP                             ; [+1]
      193 LOADNIL                          R11
      194 SETTABLEKS                       R11 R10 K44 ["Body"]
      196 JUMPIFNOT                        R6 ; [+41]
      197 GETUPVAL                         R11 0
      198 GETTABLEKS                       R11 R11 K38 ["createElement"]
      200 GETUPVAL                         R12 4
      201 GETTABLEKS                       R12 R12 K59 ["Button"]
      203 DUPTABLE                         R13 K62 [{"LayoutOrder", "text", "onActivated", "variant", "size", "width"}]
      204 MOVE                             R14 R2
      205 CALL                             R14 0 1
      206 SETTABLEKS                       R14 R13 K48 ["LayoutOrder"]
      208 GETTABLEKS                       R14 R6 K13 ["text"]
      210 SETTABLEKS                       R14 R13 K13 ["text"]
      212 GETTABLEKS                       R14 R6 K15 ["onActivated"]
      214 SETTABLEKS                       R14 R13 K15 ["onActivated"]
      216 GETTABLEKS                       R14 R6 K14 ["variant"]
      218 SETTABLEKS                       R14 R13 K14 ["variant"]
      220 GETUPVAL                         R14 4
      221 GETTABLEKS                       R14 R14 K19 ["Enums"]
      223 GETTABLEKS                       R14 R14 K63 ["InputSize"]
      225 GETTABLEKS                       R14 R14 K64 ["Medium"]
      227 SETTABLEKS                       R14 R13 K60 ["size"]
      229 GETIMPORT                        R14 K67 [UDim.new]
      231 LOADN                            R15 1
      232 LOADN                            R16 0
      233 CALL                             R14 2 1
      234 SETTABLEKS                       R14 R13 K61 ["width"]
      236 CALL                             R11 2 1
      237 JUMP                             ; [+1]
      238 LOADNIL                          R11
      239 SETTABLEKS                       R11 R10 K45 ["Primary"]
      241 CALL                             R7 3 -1
      242 RETURN                           R7 -1

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
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R4 R4 K11 ["Contexts"]
       37 GETTABLEKS                       R4 R4 K12 ["Localization"]
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Packages"]
       43 GETTABLEKS                       R6 R6 K13 ["Gen3dCore"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K14 ["Src"]
       50 GETTABLEKS                       R7 R7 K15 ["Types"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K14 ["Src"]
       57 GETTABLEKS                       R8 R8 K16 ["Util"]
       59 GETTABLEKS                       R8 R8 K17 ["getLocalizedTextOrDefault"]
       61 CALL                             R7 1 1
       62 DUPCLOSURE                       R8 K18 [PROTO_0]
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R5
       69 RETURN                           R8 1
