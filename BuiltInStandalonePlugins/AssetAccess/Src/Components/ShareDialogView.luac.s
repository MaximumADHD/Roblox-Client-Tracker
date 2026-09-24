PROTO_0:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 MOVE                             R3 R1
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 SETTABLE                         R7 R2 R6
        9 FORGLOOP                         R3 2 ; [-2]
       11 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R0 K2 [{"DialogComponent", "DialogUri"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["DialogComponent"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K3 ["join"]
        7 GETUPVAL                         R2 2
        8 NAMECALL                         R2 R2 K4 ["GetUri"]
       10 CALL                             R2 1 1
       11 DUPTABLE                         R3 K9 [{["Category"] = "Widget", ["ItemId"] = "Dialog/SharePrompt"}]
       12 CALL                             R1 2 1
       13 SETTABLEKS                       R1 R0 K1 ["DialogUri"]
       15 RETURN                           R0 1

PROTO_2:
        0 DUPTABLE                         R0 K2 [{"DialogComponent", "DialogUri"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["DialogComponent"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K3 ["join"]
        7 GETUPVAL                         R2 2
        8 NAMECALL                         R2 R2 K4 ["GetUri"]
       10 CALL                             R2 1 1
       11 DUPTABLE                         R3 K9 [{["Category"] = "Widget", ["ItemId"] = "Dialog/CantShare"}]
       12 CALL                             R1 2 1
       13 SETTABLEKS                       R1 R0 K1 ["DialogUri"]
       15 RETURN                           R0 1

PROTO_3:
        0 DUPTABLE                         R0 K2 [{"DialogComponent", "DialogUri"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["DialogComponent"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K3 ["join"]
        7 GETUPVAL                         R2 2
        8 NAMECALL                         R2 R2 K4 ["GetUri"]
       10 CALL                             R2 1 1
       11 DUPTABLE                         R3 K9 [{["Category"] = "Widget", ["ItemId"] = "Dialog/UnexpectedError"}]
       12 CALL                             R1 2 1
       13 SETTABLEKS                       R1 R0 K1 ["DialogUri"]
       15 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 2
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["state"]
        5 JUMPIFNOTEQKS                    R0 K1 ["Inactive"] ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K0 ["state"]
       11 JUMPIFEQKS                       R0 K2 ["Prompt"] ; [+6]
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K0 ["state"]
       16 JUMPIFNOTEQKS                    R0 K3 ["Sharing"] ; [+4]
       18 GETUPVAL                         R0 1
       19 CALL                             R0 0 0
       20 JUMP                             ; [+15]
       21 GETUPVAL                         R0 0
       22 GETTABLEKS                       R0 R0 K0 ["state"]
       24 JUMPIFNOTEQKS                    R0 K4 ["CantShare"] ; [+4]
       26 GETUPVAL                         R0 2
       27 CALL                             R0 0 0
       28 JUMP                             ; [+7]
       29 GETUPVAL                         R0 0
       30 GETTABLEKS                       R0 R0 K0 ["state"]
       32 JUMPIFNOTEQKS                    R0 K5 ["UnexpectedError"] ; [+3]
       34 GETUPVAL                         R0 3
       35 CALL                             R0 0 0
       36 NEWCLOSURE                       R0 P0
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          UPVAL U5
       39 CAPTURE                          UPVAL U6
       40 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["use"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["use"]
        7 CALL                             R1 0 1
        8 NAMECALL                         R1 R1 K1 ["get"]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R2 2
       12 CALL                             R2 0 3
       13 NEWTABLE                         R5 0 0
       15 JUMPIFNOT                        R2 ; [+14]
       16 GETTABLEKS                       R6 R2 K2 ["state"]
       18 JUMPIFEQKS                       R6 K3 ["Prompt"] ; [+9]
       20 GETTABLEKS                       R6 R2 K2 ["state"]
       22 JUMPIFEQKS                       R6 K4 ["Sharing"] ; [+5]
       24 GETTABLEKS                       R6 R2 K2 ["state"]
       26 JUMPIFNOTEQKS                    R6 K5 ["CantShare"] ; [+3]
       28 GETTABLEKS                       R5 R2 K6 ["assetModels"]
       30 GETUPVAL                         R7 3
       31 JUMPIFNOT                        R7 ; [+14]
       32 GETUPVAL                         R6 4
       33 GETTABLEKS                       R6 R6 K7 ["useMemo"]
       35 NEWCLOSURE                       R7 P0
       36 CAPTURE                          UPVAL U5
       37 CAPTURE                          UPVAL U6
       38 CAPTURE                          VAL R1
       39 NEWTABLE                         R8 0 1
       41 MOVE                             R9 R1
       42 SETLIST                          R8 R9 1 [1]
       44 CALL                             R6 2 1
       45 JUMP                             ; [+1]
       46 LOADNIL                          R6
       47 GETUPVAL                         R8 3
       48 JUMPIFNOT                        R8 ; [+14]
       49 GETUPVAL                         R7 4
       50 GETTABLEKS                       R7 R7 K7 ["useMemo"]
       52 NEWCLOSURE                       R8 P1
       53 CAPTURE                          UPVAL U5
       54 CAPTURE                          UPVAL U6
       55 CAPTURE                          VAL R1
       56 NEWTABLE                         R9 0 1
       58 MOVE                             R10 R1
       59 SETLIST                          R9 R10 1 [1]
       61 CALL                             R7 2 1
       62 JUMP                             ; [+1]
       63 LOADNIL                          R7
       64 GETUPVAL                         R9 3
       65 JUMPIFNOT                        R9 ; [+14]
       66 GETUPVAL                         R8 4
       67 GETTABLEKS                       R8 R8 K7 ["useMemo"]
       69 NEWCLOSURE                       R9 P2
       70 CAPTURE                          UPVAL U5
       71 CAPTURE                          UPVAL U6
       72 CAPTURE                          VAL R1
       73 NEWTABLE                         R10 0 1
       75 MOVE                             R11 R1
       76 SETLIST                          R10 R11 1 [1]
       78 CALL                             R8 2 1
       79 JUMP                             ; [+1]
       80 LOADNIL                          R8
       81 GETUPVAL                         R9 7
       82 DUPTABLE                         R10 K21 [{["Intent"] = "Warning", ["Heading"], ["Body"], ["Contents"], ["ActionPrimary"], ["ActionSecondary"], ["Modal"] = True, ["OnClosed"], ["Width"] = 727, ["MigrateToStudioFoundation"]}]
       83 LOADK                            R13 K22 ["ShareDialogView"]
       84 LOADK                            R14 K23 ["PromptHeading"]
       85 NAMECALL                         R11 R0 K24 ["getText"]
       87 CALL                             R11 3 1
       88 SETTABLEKS                       R11 R10 K10 ["Heading"]
       90 LOADK                            R13 K22 ["ShareDialogView"]
       91 LOADK                            R14 K25 ["PromptBody"]
       92 NAMECALL                         R11 R0 K24 ["getText"]
       94 CALL                             R11 3 1
       95 SETTABLEKS                       R11 R10 K11 ["Body"]
       97 GETUPVAL                         R11 4
       98 GETTABLEKS                       R11 R11 K26 ["createElement"]
      100 GETUPVAL                         R12 8
      101 DUPTABLE                         R13 K28 [{"AssetModels"}]
      102 SETTABLEKS                       R5 R13 K27 ["AssetModels"]
      104 CALL                             R11 2 1
      105 SETTABLEKS                       R11 R10 K12 ["Contents"]
      107 JUMPIFNOT                        R2 ; [+25]
      108 GETTABLEKS                       R12 R2 K2 ["state"]
      110 JUMPIFNOTEQKS                    R12 K3 ["Prompt"] ; [+22]
      112 DUPTABLE                         R11 K32 [{"Label", "OnActivated", "Enabled"}]
      113 LOADK                            R14 K22 ["ShareDialogView"]
      114 LOADK                            R15 K33 ["PromptActionShare"]
      115 NAMECALL                         R12 R0 K24 ["getText"]
      117 CALL                             R12 3 1
      118 SETTABLEKS                       R12 R11 K29 ["Label"]
      120 SETTABLEKS                       R3 R11 K30 ["OnActivated"]
      122 GETIMPORT                        R13 K35 [next]
      124 MOVE                             R14 R5
      125 CALL                             R13 1 1
      126 JUMPIFNOTEQKNIL                  R13 ; [+2]
      128 LOADB                            R12 0 +1
      129 LOADB                            R12 1
      130 SETTABLEKS                       R12 R11 K31 ["Enabled"]
      132 JUMP                             ; [+15]
      133 JUMPIFNOT                        R2 ; [+13]
      134 GETTABLEKS                       R12 R2 K2 ["state"]
      136 JUMPIFNOTEQKS                    R12 K4 ["Sharing"] ; [+10]
      138 DUPTABLE                         R11 K37 [{["Label"], ["Enabled"] = False}]
      139 LOADK                            R14 K22 ["ShareDialogView"]
      140 LOADK                            R15 K38 ["PromptActionSharing"]
      141 NAMECALL                         R12 R0 K24 ["getText"]
      143 CALL                             R12 3 1
      144 SETTABLEKS                       R12 R11 K29 ["Label"]
      146 JUMP                             ; [+1]
      147 LOADNIL                          R11
      148 SETTABLEKS                       R11 R10 K13 ["ActionPrimary"]
      150 GETUPVAL                         R12 9
      151 GETTABLEKS                       R12 R12 K39 ["CLOSE"]
      153 DUPTABLE                         R13 K40 [{"OnActivated"}]
      154 SETTABLEKS                       R4 R13 K30 ["OnActivated"]
      156 GETIMPORT                        R14 K43 [table.clone]
      158 MOVE                             R15 R12
      159 CALL                             R14 1 1
      160 MOVE                             R15 R13
      161 LOADNIL                          R16
      162 LOADNIL                          R17
      163 FORGPREP                         R15
      164 SETTABLE                         R19 R14 R18
      165 FORGLOOP                         R15 2 ; [-2]
      167 MOVE                             R11 R14
      168 SETTABLEKS                       R11 R10 K14 ["ActionSecondary"]
      170 SETTABLEKS                       R4 R10 K17 ["OnClosed"]
      172 SETTABLEKS                       R6 R10 K20 ["MigrateToStudioFoundation"]
      174 CALL                             R9 1 2
      175 GETUPVAL                         R11 7
      176 DUPTABLE                         R12 K45 [{["Intent"] = "Error", ["Heading"], ["Body"], ["Contents"], ["ActionPrimary"], ["Modal"] = True, ["OnClosed"], ["Width"] = 727, ["MigrateToStudioFoundation"]}]
      177 LOADK                            R15 K22 ["ShareDialogView"]
      178 LOADK                            R16 K46 ["CantShareHeading"]
      179 NAMECALL                         R13 R0 K24 ["getText"]
      181 CALL                             R13 3 1
      182 SETTABLEKS                       R13 R12 K10 ["Heading"]
      184 LOADK                            R15 K22 ["ShareDialogView"]
      185 LOADK                            R16 K47 ["CantShareBody"]
      186 NAMECALL                         R13 R0 K24 ["getText"]
      188 CALL                             R13 3 1
      189 SETTABLEKS                       R13 R12 K11 ["Body"]
      191 GETUPVAL                         R13 4
      192 GETTABLEKS                       R13 R13 K26 ["createElement"]
      194 GETUPVAL                         R14 8
      195 DUPTABLE                         R15 K28 [{"AssetModels"}]
      196 SETTABLEKS                       R5 R15 K27 ["AssetModels"]
      198 CALL                             R13 2 1
      199 SETTABLEKS                       R13 R12 K12 ["Contents"]
      201 GETUPVAL                         R14 9
      202 GETTABLEKS                       R14 R14 K48 ["OK"]
      204 DUPTABLE                         R15 K40 [{"OnActivated"}]
      205 SETTABLEKS                       R4 R15 K30 ["OnActivated"]
      207 GETIMPORT                        R16 K43 [table.clone]
      209 MOVE                             R17 R14
      210 CALL                             R16 1 1
      211 MOVE                             R17 R15
      212 LOADNIL                          R18
      213 LOADNIL                          R19
      214 FORGPREP                         R17
      215 SETTABLE                         R21 R16 R20
      216 FORGLOOP                         R17 2 ; [-2]
      218 MOVE                             R13 R16
      219 SETTABLEKS                       R13 R12 K13 ["ActionPrimary"]
      221 SETTABLEKS                       R4 R12 K17 ["OnClosed"]
      223 SETTABLEKS                       R7 R12 K20 ["MigrateToStudioFoundation"]
      225 CALL                             R11 1 2
      226 GETUPVAL                         R13 7
      227 DUPTABLE                         R14 K49 [{["Intent"] = "Error", ["Heading"], ["Body"], ["ActionPrimary"], ["Modal"] = True, ["OnClosed"], ["MigrateToStudioFoundation"]}]
      228 LOADK                            R17 K22 ["ShareDialogView"]
      229 LOADK                            R18 K50 ["UnexpectedErrorHeading"]
      230 NAMECALL                         R15 R0 K24 ["getText"]
      232 CALL                             R15 3 1
      233 SETTABLEKS                       R15 R14 K10 ["Heading"]
      235 LOADK                            R17 K22 ["ShareDialogView"]
      236 LOADK                            R18 K51 ["UnexpectedErrorBody"]
      237 NAMECALL                         R15 R0 K24 ["getText"]
      239 CALL                             R15 3 1
      240 SETTABLEKS                       R15 R14 K11 ["Body"]
      242 GETUPVAL                         R16 9
      243 GETTABLEKS                       R16 R16 K48 ["OK"]
      245 DUPTABLE                         R17 K40 [{"OnActivated"}]
      246 SETTABLEKS                       R4 R17 K30 ["OnActivated"]
      248 GETIMPORT                        R18 K43 [table.clone]
      250 MOVE                             R19 R16
      251 CALL                             R18 1 1
      252 MOVE                             R19 R17
      253 LOADNIL                          R20
      254 LOADNIL                          R21
      255 FORGPREP                         R19
      256 SETTABLE                         R23 R18 R22
      257 FORGLOOP                         R19 2 ; [-2]
      259 MOVE                             R15 R18
      260 SETTABLEKS                       R15 R14 K13 ["ActionPrimary"]
      262 SETTABLEKS                       R4 R14 K17 ["OnClosed"]
      264 SETTABLEKS                       R8 R14 K20 ["MigrateToStudioFoundation"]
      266 CALL                             R13 1 2
      267 GETUPVAL                         R15 4
      268 GETTABLEKS                       R15 R15 K52 ["useEffect"]
      270 NEWCLOSURE                       R16 P3
      271 CAPTURE                          VAL R2
      272 CAPTURE                          VAL R9
      273 CAPTURE                          VAL R11
      274 CAPTURE                          VAL R13
      275 CAPTURE                          VAL R10
      276 CAPTURE                          VAL R12
      277 CAPTURE                          VAL R14
      278 NEWTABLE                         R17 0 1
      280 JUMPIFNOT                        R2 ; [+3]
      281 GETTABLEKS                       R18 R2 K2 ["state"]
      283 JUMP                             ; [+1]
      284 LOADK                            R18 K53 ["Inactive"]
      285 SETLIST                          R17 R18 1 [1]
      287 CALL                             R15 2 0
      288 LOADNIL                          R15
      289 RETURN                           R15 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetAccess"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["Util"]
       30 GETTABLEKS                       R4 R4 K11 ["DialogAction"]
       32 GETTABLEKS                       R5 R1 K12 ["ContextServices"]
       34 GETTABLEKS                       R5 R5 K13 ["Localization"]
       36 GETTABLEKS                       R6 R1 K12 ["ContextServices"]
       38 GETTABLEKS                       R6 R6 K14 ["Plugin"]
       40 GETTABLEKS                       R7 R1 K15 ["UI"]
       42 GETTABLEKS                       R7 R7 K16 ["Hooks"]
       44 GETTABLEKS                       R7 R7 K17 ["RESTRICTED_useDialog"]
       46 GETTABLEKS                       R8 R3 K18 ["Components"]
       48 GETTABLEKS                       R8 R8 K19 ["Dialog"]
       50 GETTABLEKS                       R9 R3 K10 ["Util"]
       52 GETTABLEKS                       R9 R9 K20 ["StudioUri"]
       54 GETIMPORT                        R10 K5 [require]
       56 GETTABLEKS                       R11 R0 K21 ["Src"]
       58 GETTABLEKS                       R11 R11 K22 ["Flags"]
       60 GETTABLEKS                       R11 R11 K23 ["getFFlagAssetAccessMigrateUseDialog"]
       62 CALL                             R10 1 1
       63 CALL                             R10 0 1
       64 GETIMPORT                        R11 K5 [require]
       66 GETTABLEKS                       R12 R0 K21 ["Src"]
       68 GETTABLEKS                       R12 R12 K18 ["Components"]
       70 GETTABLEKS                       R12 R12 K24 ["AssetMetadataTable"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K5 [require]
       75 GETTABLEKS                       R13 R0 K21 ["Src"]
       77 GETTABLEKS                       R13 R13 K16 ["Hooks"]
       79 GETTABLEKS                       R13 R13 K25 ["useShareDialogModel"]
       81 CALL                             R12 1 1
       82 DUPCLOSURE                       R13 K26 [PROTO_0]
       83 DUPCLOSURE                       R14 K27 [PROTO_6]
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R12
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R4
       94 RETURN                           R14 1
