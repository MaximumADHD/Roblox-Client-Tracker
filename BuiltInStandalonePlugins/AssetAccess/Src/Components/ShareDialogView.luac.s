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
       24 DUPTABLE                         R6 K18 [{["Intent"] = "Warning", ["Heading"], ["Body"], ["Contents"], ["ActionPrimary"], ["ActionSecondary"], ["Modal"] = True, ["OnClosed"], ["Width"] = 727}]
       25 LOADK                            R9 K19 ["ShareDialogView"]
       26 LOADK                            R10 K20 ["PromptHeading"]
       27 NAMECALL                         R7 R0 K21 ["getText"]
       29 CALL                             R7 3 1
       30 SETTABLEKS                       R7 R6 K8 ["Heading"]
       32 LOADK                            R9 K19 ["ShareDialogView"]
       33 LOADK                            R10 K22 ["PromptBody"]
       34 NAMECALL                         R7 R0 K21 ["getText"]
       36 CALL                             R7 3 1
       37 SETTABLEKS                       R7 R6 K9 ["Body"]
       39 GETUPVAL                         R7 3
       40 GETTABLEKS                       R7 R7 K23 ["createElement"]
       42 GETUPVAL                         R8 4
       43 DUPTABLE                         R9 K25 [{"AssetModels"}]
       44 SETTABLEKS                       R4 R9 K24 ["AssetModels"]
       46 CALL                             R7 2 1
       47 SETTABLEKS                       R7 R6 K10 ["Contents"]
       49 JUMPIFNOT                        R1 ; [+25]
       50 GETTABLEKS                       R8 R1 K1 ["state"]
       52 JUMPIFNOTEQKS                    R8 K2 ["Prompt"] ; [+22]
       54 DUPTABLE                         R7 K29 [{"Label", "OnActivated", "Enabled"}]
       55 LOADK                            R10 K19 ["ShareDialogView"]
       56 LOADK                            R11 K30 ["PromptActionShare"]
       57 NAMECALL                         R8 R0 K21 ["getText"]
       59 CALL                             R8 3 1
       60 SETTABLEKS                       R8 R7 K26 ["Label"]
       62 SETTABLEKS                       R2 R7 K27 ["OnActivated"]
       64 GETIMPORT                        R9 K32 [next]
       66 MOVE                             R10 R4
       67 CALL                             R9 1 1
       68 JUMPIFNOTEQKNIL                  R9 ; [+2]
       70 LOADB                            R8 0 +1
       71 LOADB                            R8 1
       72 SETTABLEKS                       R8 R7 K28 ["Enabled"]
       74 JUMP                             ; [+15]
       75 JUMPIFNOT                        R1 ; [+13]
       76 GETTABLEKS                       R8 R1 K1 ["state"]
       78 JUMPIFNOTEQKS                    R8 K3 ["Sharing"] ; [+10]
       80 DUPTABLE                         R7 K34 [{["Label"], ["Enabled"] = False}]
       81 LOADK                            R10 K19 ["ShareDialogView"]
       82 LOADK                            R11 K35 ["PromptActionSharing"]
       83 NAMECALL                         R8 R0 K21 ["getText"]
       85 CALL                             R8 3 1
       86 SETTABLEKS                       R8 R7 K26 ["Label"]
       88 JUMP                             ; [+1]
       89 LOADNIL                          R7
       90 SETTABLEKS                       R7 R6 K11 ["ActionPrimary"]
       92 GETUPVAL                         R8 5
       93 GETTABLEKS                       R8 R8 K36 ["CLOSE"]
       95 DUPTABLE                         R9 K37 [{"OnActivated"}]
       96 SETTABLEKS                       R3 R9 K27 ["OnActivated"]
       98 GETIMPORT                        R10 K40 [table.clone]
      100 MOVE                             R11 R8
      101 CALL                             R10 1 1
      102 MOVE                             R11 R9
      103 LOADNIL                          R12
      104 LOADNIL                          R13
      105 FORGPREP                         R11
      106 SETTABLE                         R15 R10 R14
      107 FORGLOOP                         R11 2 ; [-2]
      109 MOVE                             R7 R10
      110 SETTABLEKS                       R7 R6 K12 ["ActionSecondary"]
      112 SETTABLEKS                       R3 R6 K15 ["OnClosed"]
      114 CALL                             R5 1 2
      115 GETUPVAL                         R7 2
      116 DUPTABLE                         R8 K42 [{["Intent"] = "Error", ["Heading"], ["Body"], ["Contents"], ["ActionPrimary"], ["Modal"] = True, ["OnClosed"], ["Width"] = 727}]
      117 LOADK                            R11 K19 ["ShareDialogView"]
      118 LOADK                            R12 K43 ["CantShareHeading"]
      119 NAMECALL                         R9 R0 K21 ["getText"]
      121 CALL                             R9 3 1
      122 SETTABLEKS                       R9 R8 K8 ["Heading"]
      124 LOADK                            R11 K19 ["ShareDialogView"]
      125 LOADK                            R12 K44 ["CantShareBody"]
      126 NAMECALL                         R9 R0 K21 ["getText"]
      128 CALL                             R9 3 1
      129 SETTABLEKS                       R9 R8 K9 ["Body"]
      131 GETUPVAL                         R9 3
      132 GETTABLEKS                       R9 R9 K23 ["createElement"]
      134 GETUPVAL                         R10 4
      135 DUPTABLE                         R11 K25 [{"AssetModels"}]
      136 SETTABLEKS                       R4 R11 K24 ["AssetModels"]
      138 CALL                             R9 2 1
      139 SETTABLEKS                       R9 R8 K10 ["Contents"]
      141 GETUPVAL                         R10 5
      142 GETTABLEKS                       R10 R10 K45 ["OK"]
      144 DUPTABLE                         R11 K37 [{"OnActivated"}]
      145 SETTABLEKS                       R3 R11 K27 ["OnActivated"]
      147 GETIMPORT                        R12 K40 [table.clone]
      149 MOVE                             R13 R10
      150 CALL                             R12 1 1
      151 MOVE                             R13 R11
      152 LOADNIL                          R14
      153 LOADNIL                          R15
      154 FORGPREP                         R13
      155 SETTABLE                         R17 R12 R16
      156 FORGLOOP                         R13 2 ; [-2]
      158 MOVE                             R9 R12
      159 SETTABLEKS                       R9 R8 K11 ["ActionPrimary"]
      161 SETTABLEKS                       R3 R8 K15 ["OnClosed"]
      163 CALL                             R7 1 2
      164 GETUPVAL                         R9 2
      165 DUPTABLE                         R10 K46 [{["Intent"] = "Error", ["Heading"], ["Body"], ["ActionPrimary"], ["Modal"] = True, ["OnClosed"]}]
      166 LOADK                            R13 K19 ["ShareDialogView"]
      167 LOADK                            R14 K47 ["UnexpectedErrorHeading"]
      168 NAMECALL                         R11 R0 K21 ["getText"]
      170 CALL                             R11 3 1
      171 SETTABLEKS                       R11 R10 K8 ["Heading"]
      173 LOADK                            R13 K19 ["ShareDialogView"]
      174 LOADK                            R14 K48 ["UnexpectedErrorBody"]
      175 NAMECALL                         R11 R0 K21 ["getText"]
      177 CALL                             R11 3 1
      178 SETTABLEKS                       R11 R10 K9 ["Body"]
      180 GETUPVAL                         R12 5
      181 GETTABLEKS                       R12 R12 K45 ["OK"]
      183 DUPTABLE                         R13 K37 [{"OnActivated"}]
      184 SETTABLEKS                       R3 R13 K27 ["OnActivated"]
      186 GETIMPORT                        R14 K40 [table.clone]
      188 MOVE                             R15 R12
      189 CALL                             R14 1 1
      190 MOVE                             R15 R13
      191 LOADNIL                          R16
      192 LOADNIL                          R17
      193 FORGPREP                         R15
      194 SETTABLE                         R19 R14 R18
      195 FORGLOOP                         R15 2 ; [-2]
      197 MOVE                             R11 R14
      198 SETTABLEKS                       R11 R10 K11 ["ActionPrimary"]
      200 SETTABLEKS                       R3 R10 K15 ["OnClosed"]
      202 CALL                             R9 1 2
      203 GETUPVAL                         R11 3
      204 GETTABLEKS                       R11 R11 K49 ["useEffect"]
      206 NEWCLOSURE                       R12 P0
      207 CAPTURE                          VAL R1
      208 CAPTURE                          VAL R5
      209 CAPTURE                          VAL R7
      210 CAPTURE                          VAL R9
      211 CAPTURE                          VAL R6
      212 CAPTURE                          VAL R8
      213 CAPTURE                          VAL R10
      214 NEWTABLE                         R13 0 1
      216 JUMPIFNOT                        R1 ; [+3]
      217 GETTABLEKS                       R14 R1 K1 ["state"]
      219 JUMP                             ; [+1]
      220 LOADK                            R14 K50 ["Inactive"]
      221 SETLIST                          R13 R14 1 [1]
      223 CALL                             R11 2 0
      224 LOADNIL                          R11
      225 RETURN                           R11 1

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
