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
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 2
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["use"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 CALL                             R1 0 3
        6 NEWTABLE                         R4 0 0
        8 JUMPIFNOT                        R1 ; [+14]
        9 GETTABLEKS                       R5 R1 K1 ["state"]
       11 JUMPIFEQKS                       R5 K2 ["Prompt"] ; [+9]
       13 GETTABLEKS                       R5 R1 K1 ["state"]
       15 JUMPIFEQKS                       R5 K3 ["Sharing"] ; [+5]
       17 GETTABLEKS                       R5 R1 K1 ["state"]
       19 JUMPIFNOTEQKS                    R5 K4 ["CantShare"] ; [+3]
       21 GETTABLEKS                       R4 R1 K5 ["assetModels"]
       23 GETUPVAL                         R5 2
       24 DUPTABLE                         R6 K15 [{"Intent", "Heading", "Body", "Contents", "ActionPrimary", "ActionSecondary", "Modal", "OnClosed", "Width"}]
       25 LOADK                            R7 K16 ["Warning"]
       26 SETTABLEKS                       R7 R6 K6 ["Intent"]
       28 LOADK                            R9 K17 ["ShareDialogView"]
       29 LOADK                            R10 K18 ["PromptHeading"]
       30 NAMECALL                         R7 R0 K19 ["getText"]
       32 CALL                             R7 3 1
       33 SETTABLEKS                       R7 R6 K7 ["Heading"]
       35 LOADK                            R9 K17 ["ShareDialogView"]
       36 LOADK                            R10 K20 ["PromptBody"]
       37 NAMECALL                         R7 R0 K19 ["getText"]
       39 CALL                             R7 3 1
       40 SETTABLEKS                       R7 R6 K8 ["Body"]
       42 GETUPVAL                         R7 3
       43 GETTABLEKS                       R7 R7 K21 ["createElement"]
       45 GETUPVAL                         R8 4
       46 DUPTABLE                         R9 K23 [{"AssetModels"}]
       47 SETTABLEKS                       R4 R9 K22 ["AssetModels"]
       49 CALL                             R7 2 1
       50 SETTABLEKS                       R7 R6 K9 ["Contents"]
       52 JUMPIFNOT                        R1 ; [+25]
       53 GETTABLEKS                       R8 R1 K1 ["state"]
       55 JUMPIFNOTEQKS                    R8 K2 ["Prompt"] ; [+22]
       57 DUPTABLE                         R7 K27 [{"Label", "OnActivated", "Enabled"}]
       58 LOADK                            R10 K17 ["ShareDialogView"]
       59 LOADK                            R11 K28 ["PromptActionShare"]
       60 NAMECALL                         R8 R0 K19 ["getText"]
       62 CALL                             R8 3 1
       63 SETTABLEKS                       R8 R7 K24 ["Label"]
       65 SETTABLEKS                       R2 R7 K25 ["OnActivated"]
       67 GETIMPORT                        R9 K30 [next]
       69 MOVE                             R10 R4
       70 CALL                             R9 1 1
       71 JUMPIFNOTEQKNIL                  R9 ; [+2]
       73 LOADB                            R8 0 +1
       74 LOADB                            R8 1
       75 SETTABLEKS                       R8 R7 K26 ["Enabled"]
       77 JUMP                             ; [+18]
       78 JUMPIFNOT                        R1 ; [+16]
       79 GETTABLEKS                       R8 R1 K1 ["state"]
       81 JUMPIFNOTEQKS                    R8 K3 ["Sharing"] ; [+13]
       83 DUPTABLE                         R7 K31 [{"Label", "Enabled"}]
       84 LOADK                            R10 K17 ["ShareDialogView"]
       85 LOADK                            R11 K32 ["PromptActionSharing"]
       86 NAMECALL                         R8 R0 K19 ["getText"]
       88 CALL                             R8 3 1
       89 SETTABLEKS                       R8 R7 K24 ["Label"]
       91 LOADB                            R8 0
       92 SETTABLEKS                       R8 R7 K26 ["Enabled"]
       94 JUMP                             ; [+1]
       95 LOADNIL                          R7
       96 SETTABLEKS                       R7 R6 K10 ["ActionPrimary"]
       98 GETUPVAL                         R8 5
       99 GETTABLEKS                       R8 R8 K33 ["CLOSE"]
      101 DUPTABLE                         R9 K34 [{"OnActivated"}]
      102 SETTABLEKS                       R3 R9 K25 ["OnActivated"]
      104 GETIMPORT                        R10 K37 [table.clone]
      106 MOVE                             R11 R8
      107 CALL                             R10 1 1
      108 MOVE                             R11 R9
      109 LOADNIL                          R12
      110 LOADNIL                          R13
      111 FORGPREP                         R11
      112 SETTABLE                         R15 R10 R14
      113 FORGLOOP                         R11 2 ; [-2]
      115 MOVE                             R7 R10
      116 SETTABLEKS                       R7 R6 K11 ["ActionSecondary"]
      118 LOADB                            R7 1
      119 SETTABLEKS                       R7 R6 K12 ["Modal"]
      121 SETTABLEKS                       R3 R6 K13 ["OnClosed"]
      123 LOADN                            R7 215
      124 SETTABLEKS                       R7 R6 K14 ["Width"]
      126 CALL                             R5 1 2
      127 GETUPVAL                         R7 2
      128 DUPTABLE                         R8 K38 [{"Intent", "Heading", "Body", "Contents", "ActionPrimary", "Modal", "OnClosed", "Width"}]
      129 LOADK                            R9 K39 ["Error"]
      130 SETTABLEKS                       R9 R8 K6 ["Intent"]
      132 LOADK                            R11 K17 ["ShareDialogView"]
      133 LOADK                            R12 K40 ["CantShareHeading"]
      134 NAMECALL                         R9 R0 K19 ["getText"]
      136 CALL                             R9 3 1
      137 SETTABLEKS                       R9 R8 K7 ["Heading"]
      139 LOADK                            R11 K17 ["ShareDialogView"]
      140 LOADK                            R12 K41 ["CantShareBody"]
      141 NAMECALL                         R9 R0 K19 ["getText"]
      143 CALL                             R9 3 1
      144 SETTABLEKS                       R9 R8 K8 ["Body"]
      146 GETUPVAL                         R9 3
      147 GETTABLEKS                       R9 R9 K21 ["createElement"]
      149 GETUPVAL                         R10 4
      150 DUPTABLE                         R11 K23 [{"AssetModels"}]
      151 SETTABLEKS                       R4 R11 K22 ["AssetModels"]
      153 CALL                             R9 2 1
      154 SETTABLEKS                       R9 R8 K9 ["Contents"]
      156 GETUPVAL                         R10 5
      157 GETTABLEKS                       R10 R10 K42 ["OK"]
      159 DUPTABLE                         R11 K34 [{"OnActivated"}]
      160 SETTABLEKS                       R3 R11 K25 ["OnActivated"]
      162 GETIMPORT                        R12 K37 [table.clone]
      164 MOVE                             R13 R10
      165 CALL                             R12 1 1
      166 MOVE                             R13 R11
      167 LOADNIL                          R14
      168 LOADNIL                          R15
      169 FORGPREP                         R13
      170 SETTABLE                         R17 R12 R16
      171 FORGLOOP                         R13 2 ; [-2]
      173 MOVE                             R9 R12
      174 SETTABLEKS                       R9 R8 K10 ["ActionPrimary"]
      176 LOADB                            R9 1
      177 SETTABLEKS                       R9 R8 K12 ["Modal"]
      179 SETTABLEKS                       R3 R8 K13 ["OnClosed"]
      181 LOADN                            R9 215
      182 SETTABLEKS                       R9 R8 K14 ["Width"]
      184 CALL                             R7 1 2
      185 GETUPVAL                         R9 2
      186 DUPTABLE                         R10 K43 [{"Intent", "Heading", "Body", "ActionPrimary", "Modal", "OnClosed"}]
      187 LOADK                            R11 K39 ["Error"]
      188 SETTABLEKS                       R11 R10 K6 ["Intent"]
      190 LOADK                            R13 K17 ["ShareDialogView"]
      191 LOADK                            R14 K44 ["UnexpectedErrorHeading"]
      192 NAMECALL                         R11 R0 K19 ["getText"]
      194 CALL                             R11 3 1
      195 SETTABLEKS                       R11 R10 K7 ["Heading"]
      197 LOADK                            R13 K17 ["ShareDialogView"]
      198 LOADK                            R14 K45 ["UnexpectedErrorBody"]
      199 NAMECALL                         R11 R0 K19 ["getText"]
      201 CALL                             R11 3 1
      202 SETTABLEKS                       R11 R10 K8 ["Body"]
      204 GETUPVAL                         R12 5
      205 GETTABLEKS                       R12 R12 K42 ["OK"]
      207 DUPTABLE                         R13 K34 [{"OnActivated"}]
      208 SETTABLEKS                       R3 R13 K25 ["OnActivated"]
      210 GETIMPORT                        R14 K37 [table.clone]
      212 MOVE                             R15 R12
      213 CALL                             R14 1 1
      214 MOVE                             R15 R13
      215 LOADNIL                          R16
      216 LOADNIL                          R17
      217 FORGPREP                         R15
      218 SETTABLE                         R19 R14 R18
      219 FORGLOOP                         R15 2 ; [-2]
      221 MOVE                             R11 R14
      222 SETTABLEKS                       R11 R10 K10 ["ActionPrimary"]
      224 LOADB                            R11 1
      225 SETTABLEKS                       R11 R10 K12 ["Modal"]
      227 SETTABLEKS                       R3 R10 K13 ["OnClosed"]
      229 CALL                             R9 1 2
      230 GETUPVAL                         R11 3
      231 GETTABLEKS                       R11 R11 K46 ["useEffect"]
      233 NEWCLOSURE                       R12 P0
      234 CAPTURE                          VAL R1
      235 CAPTURE                          VAL R5
      236 CAPTURE                          VAL R7
      237 CAPTURE                          VAL R9
      238 CAPTURE                          VAL R6
      239 CAPTURE                          VAL R8
      240 CAPTURE                          VAL R10
      241 NEWTABLE                         R13 0 1
      243 JUMPIFNOT                        R1 ; [+3]
      244 GETTABLEKS                       R14 R1 K1 ["state"]
      246 JUMP                             ; [+1]
      247 LOADK                            R14 K47 ["Inactive"]
      248 SETLIST                          R13 R14 1 [1]
      250 CALL                             R11 2 0
      251 LOADNIL                          R11
      252 RETURN                           R11 1

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
       21 GETTABLEKS                       R3 R1 K9 ["Util"]
       23 GETTABLEKS                       R3 R3 K10 ["DialogAction"]
       25 GETTABLEKS                       R4 R1 K11 ["ContextServices"]
       27 GETTABLEKS                       R4 R4 K12 ["Localization"]
       29 GETTABLEKS                       R5 R1 K13 ["UI"]
       31 GETTABLEKS                       R5 R5 K14 ["Hooks"]
       33 GETTABLEKS                       R5 R5 K15 ["useDialog"]
       35 GETIMPORT                        R6 K5 [require]
       37 GETTABLEKS                       R7 R0 K16 ["Src"]
       39 GETTABLEKS                       R7 R7 K17 ["Components"]
       41 GETTABLEKS                       R7 R7 K18 ["AssetMetadataTable"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K5 [require]
       46 GETTABLEKS                       R8 R0 K16 ["Src"]
       48 GETTABLEKS                       R8 R8 K14 ["Hooks"]
       50 GETTABLEKS                       R8 R8 K19 ["useShareDialogModel"]
       52 CALL                             R7 1 1
       53 DUPCLOSURE                       R8 K20 [PROTO_0]
       54 DUPCLOSURE                       R9 K21 [PROTO_3]
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R3
       61 RETURN                           R9 1
