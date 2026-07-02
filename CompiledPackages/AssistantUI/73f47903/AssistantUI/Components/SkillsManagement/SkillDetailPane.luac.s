PROTO_0:
        0 DUPTABLE                         R0 K7 [{"Open", "Duplicate", "AlreadyDuplicated", "Delete", "SourceRoblox", "SourceLocal", "Empty"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K8 ["Skills"]
        3 LOADK                            R4 K0 ["Open"]
        4 NAMECALL                         R1 R1 K9 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Open"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K8 ["Skills"]
       11 LOADK                            R4 K1 ["Duplicate"]
       12 NAMECALL                         R1 R1 K9 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Duplicate"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K8 ["Skills"]
       19 LOADK                            R4 K2 ["AlreadyDuplicated"]
       20 NAMECALL                         R1 R1 K9 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["AlreadyDuplicated"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K8 ["Skills"]
       27 LOADK                            R4 K3 ["Delete"]
       28 NAMECALL                         R1 R1 K9 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["Delete"]
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K8 ["Skills"]
       35 LOADK                            R4 K10 ["SourceRobloxBadge"]
       36 NAMECALL                         R1 R1 K9 ["getText"]
       38 CALL                             R1 3 1
       39 SETTABLEKS                       R1 R0 K4 ["SourceRoblox"]
       41 GETUPVAL                         R1 0
       42 LOADK                            R3 K8 ["Skills"]
       43 LOADK                            R4 K11 ["SourceLocalBadge"]
       44 NAMECALL                         R1 R1 K9 ["getText"]
       46 CALL                             R1 3 1
       47 SETTABLEKS                       R1 R0 K5 ["SourceLocal"]
       49 GETUPVAL                         R1 0
       50 LOADK                            R3 K8 ["Skills"]
       51 LOADK                            R4 K12 ["DetailPaneEmpty"]
       52 NAMECALL                         R1 R1 K9 ["getText"]
       54 CALL                             R1 3 1
       55 SETTABLEKS                       R1 R0 K6 ["Empty"]
       57 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["assetId"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["get"]
        9 CALL                             R1 0 1
       10 GETTABLEKS                       R2 R1 K2 ["userSkillAssets"]
       12 GETTABLEKS                       R2 R2 K3 ["publishUpdateAsync"]
       14 MOVE                             R3 R0
       15 GETUPVAL                         R4 2
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R5 R5 K4 ["frontmatter"]
       19 GETTABLEKS                       R5 R5 K5 ["name"]
       21 GETUPVAL                         R6 3
       22 GETTABLEKS                       R6 R6 K4 ["frontmatter"]
       24 GETTABLEKS                       R6 R6 K6 ["description"]
       26 CALL                             R2 4 0
       27 GETUPVAL                         R2 4
       28 GETTABLEKS                       R2 R2 K7 ["replaceByAssetId"]
       30 DUPTABLE                         R3 K11 [{"name", "description", "content", "source", "assetId", "rawContent"}]
       31 GETUPVAL                         R4 3
       32 GETTABLEKS                       R4 R4 K4 ["frontmatter"]
       34 GETTABLEKS                       R4 R4 K5 ["name"]
       36 SETTABLEKS                       R4 R3 K5 ["name"]
       38 GETUPVAL                         R4 3
       39 GETTABLEKS                       R4 R4 K4 ["frontmatter"]
       41 GETTABLEKS                       R4 R4 K6 ["description"]
       43 SETTABLEKS                       R4 R3 K6 ["description"]
       45 GETUPVAL                         R4 3
       46 GETTABLEKS                       R4 R4 K12 ["body"]
       48 SETTABLEKS                       R4 R3 K8 ["content"]
       50 GETUPVAL                         R4 5
       51 GETTABLEKS                       R4 R4 K13 ["User"]
       53 SETTABLEKS                       R4 R3 K9 ["source"]
       55 SETTABLEKS                       R0 R3 K0 ["assetId"]
       57 GETUPVAL                         R4 2
       58 SETTABLEKS                       R4 R3 K10 ["rawContent"]
       60 CALL                             R2 1 0
       61 GETTABLEKS                       R2 R1 K14 ["EventLogger"]
       63 GETTABLEKS                       R2 R2 K15 ["logUserSkillEvent"]
       65 DUPTABLE                         R3 K21 [{["action"] = "update", ["skillName"], ["skillDescription"], ["skillBody"]}]
       66 GETUPVAL                         R4 3
       67 GETTABLEKS                       R4 R4 K4 ["frontmatter"]
       69 GETTABLEKS                       R4 R4 K5 ["name"]
       71 SETTABLEKS                       R4 R3 K18 ["skillName"]
       73 GETUPVAL                         R4 3
       74 GETTABLEKS                       R4 R4 K4 ["frontmatter"]
       76 GETTABLEKS                       R4 R4 K6 ["description"]
       78 SETTABLEKS                       R4 R3 K19 ["skillDescription"]
       80 GETUPVAL                         R4 3
       81 GETTABLEKS                       R4 R4 K12 ["body"]
       83 SETTABLEKS                       R4 R3 K20 ["skillBody"]
       85 CALL                             R2 1 0
       86 GETUPVAL                         R2 6
       87 GETTABLEKS                       R2 R2 K22 ["current"]
       89 JUMPIFNOT                        R2 ; [+4]
       90 LOADB                            R5 1
       91 NAMECALL                         R3 R2 K23 ["setIsActionDisabled"]
       93 CALL                             R3 2 0
       94 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["parse"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 2
       11 JUMPIF                           R1 ; [+10]
       12 GETIMPORT                        R3 K3 [warn]
       14 LOADK                            R5 K4 ["Skill save rejected: %*"]
       15 MOVE                             R7 R2
       16 NAMECALL                         R5 R5 K5 ["format"]
       18 CALL                             R5 2 1
       19 MOVE                             R4 R5
       20 CALL                             R3 1 0
       21 RETURN                           R0 0
       22 GETIMPORT                        R3 K8 [task.spawn]
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R1
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          UPVAL U5
       31 CAPTURE                          UPVAL U6
       32 CALL                             R3 1 0
       33 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["get"]
        6 CALL                             R1 0 1
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R3 3
        9 GETTABLEKS                       R3 R3 K2 ["description"]
       11 GETUPVAL                         R4 3
       12 GETTABLEKS                       R4 R4 K3 ["content"]
       14 CALL                             R0 4 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["name"]
        3 LOADN                            R3 1
        4 LOADN                            R4 4
        5 NAMECALL                         R1 R0 K1 ["sub"]
        7 CALL                             R1 3 1
        8 JUMPIFNOTEQKS                    R1 K2 ["rbx-"] ; [+6]
       10 LOADN                            R3 5
       11 NAMECALL                         R1 R0 K1 ["sub"]
       13 CALL                             R1 2 1
       14 MOVE                             R0 R1
       15 GETIMPORT                        R1 K5 [task.spawn]
       17 NEWCLOSURE                       R2 P0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          REF R0
       21 CAPTURE                          UPVAL U0
       22 CALL                             R1 1 0
       23 CLOSEUPVALS                      R0
       24 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onDeleteSkill"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onDeleteSkill"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["name"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 NOT                              R4 R0
        5 NAMECALL                         R2 R1 K1 ["setIsActionDisabled"]
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["open"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K4 [{"onMarkdownChanged", "onDirtyChanged", "onSave"}]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U2
        7 SETTABLEKS                       R3 R2 K1 ["onMarkdownChanged"]
        9 NEWCLOSURE                       R3 P1
       10 CAPTURE                          UPVAL U3
       11 SETTABLEKS                       R3 R2 K2 ["onDirtyChanged"]
       13 GETUPVAL                         R4 4
       14 JUMPIFNOT                        R4 ; [+2]
       15 GETUPVAL                         R3 5
       16 JUMP                             ; [+1]
       17 LOADNIL                          R3
       18 SETTABLEKS                       R3 R2 K3 ["onSave"]
       20 CALL                             R0 2 1
       21 GETUPVAL                         R1 3
       22 SETTABLEKS                       R0 R1 K5 ["current"]
       24 GETUPVAL                         R1 2
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R2 R2 K6 ["rawContent"]
       28 JUMPIF                           R2 ; [+3]
       29 GETUPVAL                         R2 1
       30 GETTABLEKS                       R2 R2 K7 ["content"]
       32 SETTABLEKS                       R2 R1 K5 ["current"]
       34 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["skill"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useMemo"]
        5 DUPCLOSURE                       R3 K2 [PROTO_0]
        6 CAPTURE                          UPVAL U1
        7 NEWTABLE                         R4 0 1
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K3 ["locale"]
       12 SETLIST                          R4 R5 1 [1]
       14 CALL                             R2 2 1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K4 ["useRef"]
       18 LOADNIL                          R4
       19 CALL                             R3 1 1
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K4 ["useRef"]
       23 LOADNIL                          R5
       24 CALL                             R4 1 1
       25 JUMPIFNOTEQKNIL                  R1 ; [+39]
       27 GETUPVAL                         R5 2
       28 GETUPVAL                         R6 3
       29 DUPTABLE                         R7 K9 [{["tag"] = "col align-x-center align-y-center gap-small size-full-0 auto-y padding-medium", ["testId"], ["LayoutOrder"]}]
       30 GETUPVAL                         R8 4
       31 GETTABLEKS                       R8 R8 K10 ["Skills"]
       33 GETTABLEKS                       R8 R8 K11 ["DetailPane"]
       35 GETTABLEKS                       R8 R8 K12 ["Container"]
       37 SETTABLEKS                       R8 R7 K7 ["testId"]
       39 GETTABLEKS                       R8 R0 K8 ["LayoutOrder"]
       41 SETTABLEKS                       R8 R7 K8 ["LayoutOrder"]
       43 DUPTABLE                         R8 K14 [{"Empty"}]
       44 GETUPVAL                         R9 2
       45 GETUPVAL                         R10 5
       46 DUPTABLE                         R11 K17 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-center content-muted", ["Text"], ["testId"]}]
       47 GETTABLEKS                       R12 R2 K13 ["Empty"]
       49 SETTABLEKS                       R12 R11 K16 ["Text"]
       51 GETUPVAL                         R12 4
       52 GETTABLEKS                       R12 R12 K10 ["Skills"]
       54 GETTABLEKS                       R12 R12 K11 ["DetailPane"]
       56 GETTABLEKS                       R12 R12 K13 ["Empty"]
       58 SETTABLEKS                       R12 R11 K7 ["testId"]
       60 CALL                             R9 2 1
       61 SETTABLEKS                       R9 R8 K13 ["Empty"]
       63 CALL                             R5 3 -1
       64 RETURN                           R5 -1
       65 JUMPIFNOTEQKNIL                  R1 ; [+2]
       67 LOADB                            R6 0 +1
       68 LOADB                            R6 1
       69 FASTCALL2K                       ASSERT R6 K18 ; [+4]
       71 LOADK                            R7 K18 ["skill must be non-nil after the early-return guard above"]
       72 GETIMPORT                        R5 K20 [assert]
       74 CALL                             R5 2 0
       75 GETTABLEKS                       R6 R1 K21 ["source"]
       77 GETUPVAL                         R7 6
       78 GETTABLEKS                       R7 R7 K22 ["User"]
       80 JUMPIFEQ                         R6 R7 ; [+2]
       82 LOADB                            R5 0 +1
       83 LOADB                            R5 1
       84 GETTABLEKS                       R7 R1 K23 ["name"]
       86 LOADN                            R9 1
       87 LOADN                            R10 4
       88 NAMECALL                         R7 R7 K24 ["sub"]
       90 CALL                             R7 3 1
       91 JUMPIFNOTEQKS                    R7 K25 ["rbx-"] ; [+8]
       93 GETTABLEKS                       R6 R1 K23 ["name"]
       95 LOADN                            R8 5
       96 NAMECALL                         R6 R6 K24 ["sub"]
       98 CALL                             R6 2 1
       99 JUMP                             ; [+2]
      100 GETTABLEKS                       R6 R1 K23 ["name"]
      102 NOT                              R7 R5
      103 JUMPIFNOT                        R7 ; [+12]
      104 GETUPVAL                         R8 7
      105 GETTABLEKS                       R8 R8 K26 ["getBySource"]
      107 GETUPVAL                         R9 6
      108 GETTABLEKS                       R9 R9 K22 ["User"]
      110 MOVE                             R10 R6
      111 CALL                             R8 2 1
      112 JUMPIFNOTEQKNIL                  R8 ; [+2]
      114 LOADB                            R7 0 +1
      115 LOADB                            R7 1
      116 JUMPIFNOT                        R5 ; [+3]
      117 GETTABLEKS                       R8 R2 K27 ["SourceLocal"]
      119 JUMP                             ; [+2]
      120 GETTABLEKS                       R8 R2 K28 ["SourceRoblox"]
      122 GETUPVAL                         R9 8
      123 GETTABLEKS                       R9 R9 K29 ["uriForSkill"]
      125 MOVE                             R10 R1
      126 CALL                             R9 1 1
      127 GETUPVAL                         R10 9
      128 CALL                             R10 0 1
      129 GETUPVAL                         R11 9
      130 CALL                             R11 0 1
      131 GETUPVAL                         R12 9
      132 CALL                             R12 0 1
      133 NEWCLOSURE                       R13 P1
      134 CAPTURE                          VAL R3
      135 CAPTURE                          UPVAL U10
      136 CAPTURE                          VAL R1
      137 CAPTURE                          UPVAL U11
      138 CAPTURE                          UPVAL U7
      139 CAPTURE                          UPVAL U6
      140 CAPTURE                          VAL R4
      141 NEWCLOSURE                       R14 P2
      142 CAPTURE                          VAL R1
      143 CAPTURE                          UPVAL U12
      144 CAPTURE                          UPVAL U11
      145 NEWCLOSURE                       R15 P3
      146 CAPTURE                          VAL R0
      147 CAPTURE                          VAL R1
      148 NEWCLOSURE                       R16 P4
      149 CAPTURE                          UPVAL U8
      150 CAPTURE                          VAL R1
      151 CAPTURE                          VAL R3
      152 CAPTURE                          VAL R4
      153 CAPTURE                          VAL R5
      154 CAPTURE                          VAL R13
      155 GETUPVAL                         R17 2
      156 GETUPVAL                         R18 3
      157 DUPTABLE                         R19 K31 [{["tag"] = "col gap-small size-full-0 auto-y padding-medium", ["testId"], ["LayoutOrder"]}]
      158 GETUPVAL                         R20 4
      159 GETTABLEKS                       R20 R20 K10 ["Skills"]
      161 GETTABLEKS                       R20 R20 K11 ["DetailPane"]
      163 GETTABLEKS                       R20 R20 K12 ["Container"]
      165 SETTABLEKS                       R20 R19 K7 ["testId"]
      167 GETTABLEKS                       R20 R0 K8 ["LayoutOrder"]
      169 SETTABLEKS                       R20 R19 K8 ["LayoutOrder"]
      171 DUPTABLE                         R20 K36 [{"Header", "SourceUri", "Description", "Buttons"}]
      172 GETUPVAL                         R21 2
      173 GETUPVAL                         R22 3
      174 DUPTABLE                         R23 K38 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      175 MOVE                             R24 R10
      176 CALL                             R24 0 1
      177 SETTABLEKS                       R24 R23 K8 ["LayoutOrder"]
      179 DUPTABLE                         R24 K42 [{"Name", "Spacer", "SourceBadge"}]
      180 GETUPVAL                         R25 2
      181 GETUPVAL                         R26 5
      182 DUPTABLE                         R27 K44 [{["tag"] = "bold auto-xy text-title-small text-align-x-left", ["Text"], ["LayoutOrder"]}]
      183 GETTABLEKS                       R28 R1 K23 ["name"]
      185 SETTABLEKS                       R28 R27 K16 ["Text"]
      187 MOVE                             R28 R11
      188 CALL                             R28 0 1
      189 SETTABLEKS                       R28 R27 K8 ["LayoutOrder"]
      191 CALL                             R25 2 1
      192 SETTABLEKS                       R25 R24 K39 ["Name"]
      194 GETUPVAL                         R25 2
      195 GETUPVAL                         R26 3
      196 DUPTABLE                         R27 K46 [{["tag"] = "fill", ["LayoutOrder"]}]
      197 MOVE                             R28 R11
      198 CALL                             R28 0 1
      199 SETTABLEKS                       R28 R27 K8 ["LayoutOrder"]
      201 CALL                             R25 2 1
      202 SETTABLEKS                       R25 R24 K40 ["Spacer"]
      204 GETUPVAL                         R25 2
      205 GETUPVAL                         R26 5
      206 DUPTABLE                         R27 K48 [{["tag"] = "auto-xy text-caption-small text-align-x-right content-muted", ["Text"], ["LayoutOrder"]}]
      207 SETTABLEKS                       R8 R27 K16 ["Text"]
      209 MOVE                             R28 R11
      210 CALL                             R28 0 1
      211 SETTABLEKS                       R28 R27 K8 ["LayoutOrder"]
      213 CALL                             R25 2 1
      214 SETTABLEKS                       R25 R24 K41 ["SourceBadge"]
      216 CALL                             R21 3 1
      217 SETTABLEKS                       R21 R20 K32 ["Header"]
      219 GETUPVAL                         R21 2
      220 GETUPVAL                         R22 5
      221 DUPTABLE                         R23 K50 [{["tag"] = "auto-xy text-caption-small text-wrap text-align-x-left content-muted", ["Text"], ["testId"], ["LayoutOrder"]}]
      222 SETTABLEKS                       R9 R23 K16 ["Text"]
      224 GETUPVAL                         R24 4
      225 GETTABLEKS                       R24 R24 K10 ["Skills"]
      227 GETTABLEKS                       R24 R24 K11 ["DetailPane"]
      229 GETTABLEKS                       R24 R24 K33 ["SourceUri"]
      231 SETTABLEKS                       R24 R23 K7 ["testId"]
      233 MOVE                             R24 R10
      234 CALL                             R24 0 1
      235 SETTABLEKS                       R24 R23 K8 ["LayoutOrder"]
      237 CALL                             R21 2 1
      238 SETTABLEKS                       R21 R20 K33 ["SourceUri"]
      240 GETUPVAL                         R21 2
      241 GETUPVAL                         R22 5
      242 DUPTABLE                         R23 K52 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-default", ["Text"], ["LayoutOrder"]}]
      243 GETTABLEKS                       R24 R1 K53 ["description"]
      245 SETTABLEKS                       R24 R23 K16 ["Text"]
      247 MOVE                             R24 R10
      248 CALL                             R24 0 1
      249 SETTABLEKS                       R24 R23 K8 ["LayoutOrder"]
      251 CALL                             R21 2 1
      252 SETTABLEKS                       R21 R20 K34 ["Description"]
      254 GETUPVAL                         R21 2
      255 GETUPVAL                         R22 3
      256 DUPTABLE                         R23 K38 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      257 MOVE                             R24 R10
      258 CALL                             R24 0 1
      259 SETTABLEKS                       R24 R23 K8 ["LayoutOrder"]
      261 DUPTABLE                         R24 K56 [{"OpenButton", "ActionButton"}]
      262 GETUPVAL                         R25 2
      263 GETUPVAL                         R26 13
      264 DUPTABLE                         R27 K61 [{"text", "size", "variant", "onActivated", "testId", "LayoutOrder"}]
      265 GETTABLEKS                       R28 R2 K62 ["Open"]
      267 SETTABLEKS                       R28 R27 K57 ["text"]
      269 GETUPVAL                         R28 14
      270 GETTABLEKS                       R28 R28 K63 ["Small"]
      272 SETTABLEKS                       R28 R27 K58 ["size"]
      274 GETUPVAL                         R28 15
      275 GETTABLEKS                       R28 R28 K64 ["Standard"]
      277 SETTABLEKS                       R28 R27 K59 ["variant"]
      279 SETTABLEKS                       R16 R27 K60 ["onActivated"]
      281 GETUPVAL                         R28 4
      282 GETTABLEKS                       R28 R28 K10 ["Skills"]
      284 GETTABLEKS                       R28 R28 K11 ["DetailPane"]
      286 GETTABLEKS                       R28 R28 K54 ["OpenButton"]
      288 SETTABLEKS                       R28 R27 K7 ["testId"]
      290 MOVE                             R28 R12
      291 CALL                             R28 0 1
      292 SETTABLEKS                       R28 R27 K8 ["LayoutOrder"]
      294 CALL                             R25 2 1
      295 SETTABLEKS                       R25 R24 K54 ["OpenButton"]
      297 JUMPIF                           R5 ; [+40]
      298 GETUPVAL                         R25 2
      299 GETUPVAL                         R26 13
      300 DUPTABLE                         R27 K66 [{"text", "size", "variant", "isDisabled", "onActivated", "testId", "LayoutOrder"}]
      301 JUMPIFNOT                        R7 ; [+3]
      302 GETTABLEKS                       R28 R2 K67 ["AlreadyDuplicated"]
      304 JUMP                             ; [+2]
      305 GETTABLEKS                       R28 R2 K68 ["Duplicate"]
      307 SETTABLEKS                       R28 R27 K57 ["text"]
      309 GETUPVAL                         R28 14
      310 GETTABLEKS                       R28 R28 K63 ["Small"]
      312 SETTABLEKS                       R28 R27 K58 ["size"]
      314 GETUPVAL                         R28 15
      315 GETTABLEKS                       R28 R28 K16 ["Text"]
      317 SETTABLEKS                       R28 R27 K59 ["variant"]
      319 SETTABLEKS                       R7 R27 K65 ["isDisabled"]
      321 SETTABLEKS                       R14 R27 K60 ["onActivated"]
      323 GETUPVAL                         R28 4
      324 GETTABLEKS                       R28 R28 K10 ["Skills"]
      326 GETTABLEKS                       R28 R28 K11 ["DetailPane"]
      328 GETTABLEKS                       R28 R28 K69 ["DuplicateButton"]
      330 SETTABLEKS                       R28 R27 K7 ["testId"]
      332 MOVE                             R28 R12
      333 CALL                             R28 0 1
      334 SETTABLEKS                       R28 R27 K8 ["LayoutOrder"]
      336 CALL                             R25 2 1
      337 JUMP                             ; [+33]
      338 GETUPVAL                         R25 2
      339 GETUPVAL                         R26 13
      340 DUPTABLE                         R27 K61 [{"text", "size", "variant", "onActivated", "testId", "LayoutOrder"}]
      341 GETTABLEKS                       R28 R2 K70 ["Delete"]
      343 SETTABLEKS                       R28 R27 K57 ["text"]
      345 GETUPVAL                         R28 14
      346 GETTABLEKS                       R28 R28 K63 ["Small"]
      348 SETTABLEKS                       R28 R27 K58 ["size"]
      350 GETUPVAL                         R28 15
      351 GETTABLEKS                       R28 R28 K16 ["Text"]
      353 SETTABLEKS                       R28 R27 K59 ["variant"]
      355 SETTABLEKS                       R15 R27 K60 ["onActivated"]
      357 GETUPVAL                         R28 4
      358 GETTABLEKS                       R28 R28 K10 ["Skills"]
      360 GETTABLEKS                       R28 R28 K11 ["DetailPane"]
      362 GETTABLEKS                       R28 R28 K71 ["DeleteButton"]
      364 SETTABLEKS                       R28 R27 K7 ["testId"]
      366 MOVE                             R28 R12
      367 CALL                             R28 0 1
      368 SETTABLEKS                       R28 R27 K8 ["LayoutOrder"]
      370 CALL                             R25 2 1
      371 SETTABLEKS                       R25 R24 K55 ["ActionButton"]
      373 CALL                             R21 3 1
      374 SETTABLEKS                       R21 R20 K35 ["Buttons"]
      376 CALL                             R17 3 -1
      377 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Skills"]
       25 GETTABLEKS                       R4 R4 K11 ["Frontmatter"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Parent"]
       39 GETTABLEKS                       R6 R6 K13 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K10 ["Skills"]
       46 GETTABLEKS                       R7 R7 K14 ["SkillDefinition"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K10 ["Skills"]
       53 GETTABLEKS                       R8 R8 K15 ["SkillRegistry"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K16 ["Util"]
       60 GETTABLEKS                       R9 R9 K17 ["TestIds"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K18 ["Resources"]
       67 GETTABLEKS                       R10 R10 K19 ["Localization"]
       69 GETTABLEKS                       R10 R10 K20 ["Translator"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K10 ["Skills"]
       76 GETTABLEKS                       R11 R11 K21 ["createUserSkillAsync"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETIMPORT                        R12 K1 [script]
       83 GETTABLEKS                       R12 R12 K8 ["Parent"]
       85 GETTABLEKS                       R12 R12 K22 ["openSkillInMarkdownEditor"]
       87 CALL                             R11 1 1
       88 GETTABLEKS                       R12 R2 K23 ["Button"]
       90 GETTABLEKS                       R13 R2 K24 ["Text"]
       92 GETTABLEKS                       R14 R2 K25 ["View"]
       94 GETTABLEKS                       R15 R2 K26 ["Enums"]
       96 GETTABLEKS                       R15 R15 K27 ["ButtonSize"]
       98 GETTABLEKS                       R16 R2 K26 ["Enums"]
      100 GETTABLEKS                       R16 R16 K28 ["ButtonVariant"]
      102 GETTABLEKS                       R17 R6 K29 ["Sources"]
      104 GETTABLEKS                       R18 R5 K30 ["createNextOrder"]
      106 GETTABLEKS                       R19 R4 K31 ["createElement"]
      108 DUPCLOSURE                       R20 K32 [PROTO_9]
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R19
      112 CAPTURE                          VAL R14
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R13
      115 CAPTURE                          VAL R17
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R18
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R10
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R15
      124 CAPTURE                          VAL R16
      125 RETURN                           R20 1
