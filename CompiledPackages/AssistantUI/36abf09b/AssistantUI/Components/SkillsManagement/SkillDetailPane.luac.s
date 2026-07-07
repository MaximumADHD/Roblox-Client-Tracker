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
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+3]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["name"]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K2 ["editAsync"]
       10 GETUPVAL                         R2 3
       11 GETTABLEKS                       R2 R2 K3 ["get"]
       13 CALL                             R2 0 1
       14 MOVE                             R3 R0
       15 DUPTABLE                         R4 K7 [{"newName", "newDescription", "newBody"}]
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R5 R5 K8 ["frontmatter"]
       19 GETTABLEKS                       R5 R5 K1 ["name"]
       21 SETTABLEKS                       R5 R4 K4 ["newName"]
       23 GETUPVAL                         R5 4
       24 GETTABLEKS                       R5 R5 K8 ["frontmatter"]
       26 GETTABLEKS                       R5 R5 K9 ["description"]
       28 SETTABLEKS                       R5 R4 K5 ["newDescription"]
       30 GETUPVAL                         R5 4
       31 GETTABLEKS                       R5 R5 K10 ["body"]
       33 SETTABLEKS                       R5 R4 K6 ["newBody"]
       35 CALL                             R1 3 2
       36 JUMPIF                           R1 ; [+10]
       37 GETIMPORT                        R3 K12 [warn]
       39 LOADK                            R5 K13 ["Skill save rejected: %*"]
       40 MOVE                             R7 R2
       41 NAMECALL                         R5 R5 K14 ["format"]
       43 CALL                             R5 2 1
       44 MOVE                             R4 R5
       45 CALL                             R3 1 0
       46 RETURN                           R0 0
       47 GETUPVAL                         R3 0
       48 GETUPVAL                         R4 4
       49 GETTABLEKS                       R4 R4 K8 ["frontmatter"]
       51 GETTABLEKS                       R4 R4 K1 ["name"]
       53 SETTABLEKS                       R4 R3 K0 ["current"]
       55 GETUPVAL                         R3 5
       56 GETTABLEKS                       R3 R3 K0 ["current"]
       58 JUMPIFNOT                        R3 ; [+4]
       59 LOADB                            R6 1
       60 NAMECALL                         R4 R3 K15 ["setIsActionDisabled"]
       62 CALL                             R4 2 0
       63 RETURN                           R0 0

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
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          VAL R1
       30 CAPTURE                          UPVAL U6
       31 CALL                             R3 1 0
       32 RETURN                           R0 0

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
       24 GETUPVAL                         R1 6
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R2 R2 K6 ["name"]
       28 SETTABLEKS                       R2 R1 K5 ["current"]
       30 GETUPVAL                         R1 2
       31 GETUPVAL                         R2 1
       32 GETTABLEKS                       R2 R2 K7 ["rawContent"]
       34 JUMPIF                           R2 ; [+3]
       35 GETUPVAL                         R2 1
       36 GETTABLEKS                       R2 R2 K8 ["content"]
       38 SETTABLEKS                       R2 R1 K5 ["current"]
       40 GETUPVAL                         R1 7
       41 GETTABLEKS                       R1 R1 K9 ["onClose"]
       43 JUMPIFNOT                        R1 ; [+4]
       44 GETUPVAL                         R1 7
       45 GETTABLEKS                       R1 R1 K9 ["onClose"]
       47 CALL                             R1 0 0
       48 RETURN                           R0 0

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
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K4 ["useRef"]
       28 JUMPIFNOT                        R1 ; [+3]
       29 GETTABLEKS                       R6 R1 K5 ["name"]
       31 JUMP                             ; [+1]
       32 LOADNIL                          R6
       33 CALL                             R5 1 1
       34 JUMPIFNOTEQKNIL                  R1 ; [+39]
       36 GETUPVAL                         R6 2
       37 GETUPVAL                         R7 3
       38 DUPTABLE                         R8 K10 [{["tag"] = "col align-x-center align-y-center gap-small size-full-0 auto-y padding-medium", ["testId"], ["LayoutOrder"]}]
       39 GETUPVAL                         R9 4
       40 GETTABLEKS                       R9 R9 K11 ["Skills"]
       42 GETTABLEKS                       R9 R9 K12 ["DetailPane"]
       44 GETTABLEKS                       R9 R9 K13 ["Container"]
       46 SETTABLEKS                       R9 R8 K8 ["testId"]
       48 GETTABLEKS                       R9 R0 K9 ["LayoutOrder"]
       50 SETTABLEKS                       R9 R8 K9 ["LayoutOrder"]
       52 DUPTABLE                         R9 K15 [{"Empty"}]
       53 GETUPVAL                         R10 2
       54 GETUPVAL                         R11 5
       55 DUPTABLE                         R12 K18 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-center content-muted", ["Text"], ["testId"]}]
       56 GETTABLEKS                       R13 R2 K14 ["Empty"]
       58 SETTABLEKS                       R13 R12 K17 ["Text"]
       60 GETUPVAL                         R13 4
       61 GETTABLEKS                       R13 R13 K11 ["Skills"]
       63 GETTABLEKS                       R13 R13 K12 ["DetailPane"]
       65 GETTABLEKS                       R13 R13 K14 ["Empty"]
       67 SETTABLEKS                       R13 R12 K8 ["testId"]
       69 CALL                             R10 2 1
       70 SETTABLEKS                       R10 R9 K14 ["Empty"]
       72 CALL                             R6 3 -1
       73 RETURN                           R6 -1
       74 JUMPIFNOTEQKNIL                  R1 ; [+2]
       76 LOADB                            R7 0 +1
       77 LOADB                            R7 1
       78 FASTCALL2K                       ASSERT R7 K19 ; [+4]
       80 LOADK                            R8 K19 ["skill must be non-nil after the early-return guard above"]
       81 GETIMPORT                        R6 K21 [assert]
       83 CALL                             R6 2 0
       84 GETTABLEKS                       R7 R1 K22 ["source"]
       86 GETUPVAL                         R8 6
       87 GETTABLEKS                       R8 R8 K23 ["User"]
       89 JUMPIFEQ                         R7 R8 ; [+2]
       91 LOADB                            R6 0 +1
       92 LOADB                            R6 1
       93 GETTABLEKS                       R8 R1 K5 ["name"]
       95 LOADN                            R10 1
       96 LOADN                            R11 4
       97 NAMECALL                         R8 R8 K24 ["sub"]
       99 CALL                             R8 3 1
      100 JUMPIFNOTEQKS                    R8 K25 ["rbx-"] ; [+8]
      102 GETTABLEKS                       R7 R1 K5 ["name"]
      104 LOADN                            R9 5
      105 NAMECALL                         R7 R7 K24 ["sub"]
      107 CALL                             R7 2 1
      108 JUMP                             ; [+2]
      109 GETTABLEKS                       R7 R1 K5 ["name"]
      111 NOT                              R8 R6
      112 JUMPIFNOT                        R8 ; [+20]
      113 LOADB                            R8 1
      114 GETUPVAL                         R9 7
      115 GETTABLEKS                       R9 R9 K26 ["getBySource"]
      117 GETUPVAL                         R10 6
      118 GETTABLEKS                       R10 R10 K23 ["User"]
      120 MOVE                             R11 R7
      121 CALL                             R9 2 1
      122 JUMPIFNOTEQKNIL                  R9 ; [+10]
      124 GETUPVAL                         R9 8
      125 GETTABLEKS                       R9 R9 K27 ["get"]
      127 MOVE                             R10 R7
      128 CALL                             R9 1 1
      129 JUMPIFNOTEQKNIL                  R9 ; [+2]
      131 LOADB                            R8 0 +1
      132 LOADB                            R8 1
      133 JUMPIFNOT                        R6 ; [+3]
      134 GETTABLEKS                       R9 R2 K28 ["SourceLocal"]
      136 JUMP                             ; [+2]
      137 GETTABLEKS                       R9 R2 K29 ["SourceRoblox"]
      139 GETUPVAL                         R10 9
      140 CALL                             R10 0 1
      141 GETUPVAL                         R11 9
      142 CALL                             R11 0 1
      143 GETUPVAL                         R12 9
      144 CALL                             R12 0 1
      145 NEWCLOSURE                       R13 P1
      146 CAPTURE                          VAL R3
      147 CAPTURE                          UPVAL U10
      148 CAPTURE                          VAL R5
      149 CAPTURE                          VAL R1
      150 CAPTURE                          UPVAL U11
      151 CAPTURE                          UPVAL U12
      152 CAPTURE                          VAL R4
      153 NEWCLOSURE                       R14 P2
      154 CAPTURE                          VAL R1
      155 CAPTURE                          UPVAL U13
      156 CAPTURE                          UPVAL U12
      157 NEWCLOSURE                       R15 P3
      158 CAPTURE                          VAL R0
      159 CAPTURE                          VAL R1
      160 NEWCLOSURE                       R16 P4
      161 CAPTURE                          UPVAL U14
      162 CAPTURE                          VAL R1
      163 CAPTURE                          VAL R3
      164 CAPTURE                          VAL R4
      165 CAPTURE                          VAL R6
      166 CAPTURE                          VAL R13
      167 CAPTURE                          VAL R5
      168 CAPTURE                          VAL R0
      169 GETUPVAL                         R17 2
      170 GETUPVAL                         R18 3
      171 DUPTABLE                         R19 K31 [{["tag"] = "col gap-xsmall size-full-0 auto-y padding-medium", ["testId"], ["LayoutOrder"]}]
      172 GETUPVAL                         R20 4
      173 GETTABLEKS                       R20 R20 K11 ["Skills"]
      175 GETTABLEKS                       R20 R20 K12 ["DetailPane"]
      177 GETTABLEKS                       R20 R20 K13 ["Container"]
      179 SETTABLEKS                       R20 R19 K8 ["testId"]
      181 GETTABLEKS                       R20 R0 K9 ["LayoutOrder"]
      183 SETTABLEKS                       R20 R19 K9 ["LayoutOrder"]
      185 DUPTABLE                         R20 K35 [{"Header", "Description", "Buttons"}]
      186 GETUPVAL                         R21 2
      187 GETUPVAL                         R22 3
      188 DUPTABLE                         R23 K37 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      189 MOVE                             R24 R10
      190 CALL                             R24 0 1
      191 SETTABLEKS                       R24 R23 K9 ["LayoutOrder"]
      193 DUPTABLE                         R24 K41 [{"Name", "Spacer", "SourceBadge"}]
      194 GETUPVAL                         R25 2
      195 GETUPVAL                         R26 5
      196 DUPTABLE                         R27 K43 [{["tag"] = "auto-xy text-title-small text-align-x-left", ["Text"], ["LayoutOrder"]}]
      197 GETTABLEKS                       R28 R1 K5 ["name"]
      199 SETTABLEKS                       R28 R27 K17 ["Text"]
      201 MOVE                             R28 R11
      202 CALL                             R28 0 1
      203 SETTABLEKS                       R28 R27 K9 ["LayoutOrder"]
      205 CALL                             R25 2 1
      206 SETTABLEKS                       R25 R24 K38 ["Name"]
      208 GETUPVAL                         R25 2
      209 GETUPVAL                         R26 3
      210 DUPTABLE                         R27 K45 [{["tag"] = "fill", ["LayoutOrder"]}]
      211 MOVE                             R28 R11
      212 CALL                             R28 0 1
      213 SETTABLEKS                       R28 R27 K9 ["LayoutOrder"]
      215 CALL                             R25 2 1
      216 SETTABLEKS                       R25 R24 K39 ["Spacer"]
      218 GETUPVAL                         R25 2
      219 GETUPVAL                         R26 5
      220 DUPTABLE                         R27 K47 [{["tag"] = "auto-xy text-caption-small text-align-x-right content-muted", ["Text"], ["LayoutOrder"]}]
      221 SETTABLEKS                       R9 R27 K17 ["Text"]
      223 MOVE                             R28 R11
      224 CALL                             R28 0 1
      225 SETTABLEKS                       R28 R27 K9 ["LayoutOrder"]
      227 CALL                             R25 2 1
      228 SETTABLEKS                       R25 R24 K40 ["SourceBadge"]
      230 CALL                             R21 3 1
      231 SETTABLEKS                       R21 R20 K32 ["Header"]
      233 GETUPVAL                         R21 2
      234 GETUPVAL                         R22 3
      235 DUPTABLE                         R23 K51 [{["Size"], ["ClipsDescendants"] = True, ["LayoutOrder"]}]
      236 GETIMPORT                        R24 K54 [UDim2.new]
      238 LOADN                            R25 1
      239 LOADN                            R26 0
      240 LOADN                            R27 0
      241 LOADN                            R28 60
      242 CALL                             R24 4 1
      243 SETTABLEKS                       R24 R23 K48 ["Size"]
      245 MOVE                             R24 R10
      246 CALL                             R24 0 1
      247 SETTABLEKS                       R24 R23 K9 ["LayoutOrder"]
      249 DUPTABLE                         R24 K56 [{"DescText"}]
      250 GETUPVAL                         R25 2
      251 GETUPVAL                         R26 5
      252 DUPTABLE                         R27 K58 [{["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-default", ["Text"]}]
      253 GETTABLEKS                       R28 R1 K59 ["description"]
      255 SETTABLEKS                       R28 R27 K17 ["Text"]
      257 CALL                             R25 2 1
      258 SETTABLEKS                       R25 R24 K55 ["DescText"]
      260 CALL                             R21 3 1
      261 SETTABLEKS                       R21 R20 K33 ["Description"]
      263 GETUPVAL                         R21 2
      264 GETUPVAL                         R22 3
      265 DUPTABLE                         R23 K37 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      266 MOVE                             R24 R10
      267 CALL                             R24 0 1
      268 SETTABLEKS                       R24 R23 K9 ["LayoutOrder"]
      270 DUPTABLE                         R24 K62 [{"OpenButton", "ActionButton"}]
      271 GETUPVAL                         R25 2
      272 GETUPVAL                         R26 15
      273 DUPTABLE                         R27 K67 [{"text", "size", "variant", "onActivated", "testId", "LayoutOrder"}]
      274 GETTABLEKS                       R28 R2 K68 ["Open"]
      276 SETTABLEKS                       R28 R27 K63 ["text"]
      278 GETUPVAL                         R28 16
      279 GETTABLEKS                       R28 R28 K69 ["XSmall"]
      281 SETTABLEKS                       R28 R27 K64 ["size"]
      283 GETUPVAL                         R28 17
      284 GETTABLEKS                       R28 R28 K70 ["Standard"]
      286 SETTABLEKS                       R28 R27 K65 ["variant"]
      288 SETTABLEKS                       R16 R27 K66 ["onActivated"]
      290 GETUPVAL                         R28 4
      291 GETTABLEKS                       R28 R28 K11 ["Skills"]
      293 GETTABLEKS                       R28 R28 K12 ["DetailPane"]
      295 GETTABLEKS                       R28 R28 K60 ["OpenButton"]
      297 SETTABLEKS                       R28 R27 K8 ["testId"]
      299 MOVE                             R28 R12
      300 CALL                             R28 0 1
      301 SETTABLEKS                       R28 R27 K9 ["LayoutOrder"]
      303 CALL                             R25 2 1
      304 SETTABLEKS                       R25 R24 K60 ["OpenButton"]
      306 JUMPIF                           R6 ; [+40]
      307 GETUPVAL                         R25 2
      308 GETUPVAL                         R26 15
      309 DUPTABLE                         R27 K72 [{"text", "size", "variant", "isDisabled", "onActivated", "testId", "LayoutOrder"}]
      310 JUMPIFNOT                        R8 ; [+3]
      311 GETTABLEKS                       R28 R2 K73 ["AlreadyDuplicated"]
      313 JUMP                             ; [+2]
      314 GETTABLEKS                       R28 R2 K74 ["Duplicate"]
      316 SETTABLEKS                       R28 R27 K63 ["text"]
      318 GETUPVAL                         R28 16
      319 GETTABLEKS                       R28 R28 K69 ["XSmall"]
      321 SETTABLEKS                       R28 R27 K64 ["size"]
      323 GETUPVAL                         R28 17
      324 GETTABLEKS                       R28 R28 K17 ["Text"]
      326 SETTABLEKS                       R28 R27 K65 ["variant"]
      328 SETTABLEKS                       R8 R27 K71 ["isDisabled"]
      330 SETTABLEKS                       R14 R27 K66 ["onActivated"]
      332 GETUPVAL                         R28 4
      333 GETTABLEKS                       R28 R28 K11 ["Skills"]
      335 GETTABLEKS                       R28 R28 K12 ["DetailPane"]
      337 GETTABLEKS                       R28 R28 K75 ["DuplicateButton"]
      339 SETTABLEKS                       R28 R27 K8 ["testId"]
      341 MOVE                             R28 R12
      342 CALL                             R28 0 1
      343 SETTABLEKS                       R28 R27 K9 ["LayoutOrder"]
      345 CALL                             R25 2 1
      346 JUMP                             ; [+33]
      347 GETUPVAL                         R25 2
      348 GETUPVAL                         R26 15
      349 DUPTABLE                         R27 K67 [{"text", "size", "variant", "onActivated", "testId", "LayoutOrder"}]
      350 GETTABLEKS                       R28 R2 K76 ["Delete"]
      352 SETTABLEKS                       R28 R27 K63 ["text"]
      354 GETUPVAL                         R28 16
      355 GETTABLEKS                       R28 R28 K69 ["XSmall"]
      357 SETTABLEKS                       R28 R27 K64 ["size"]
      359 GETUPVAL                         R28 17
      360 GETTABLEKS                       R28 R28 K17 ["Text"]
      362 SETTABLEKS                       R28 R27 K65 ["variant"]
      364 SETTABLEKS                       R15 R27 K66 ["onActivated"]
      366 GETUPVAL                         R28 4
      367 GETTABLEKS                       R28 R28 K11 ["Skills"]
      369 GETTABLEKS                       R28 R28 K12 ["DetailPane"]
      371 GETTABLEKS                       R28 R28 K77 ["DeleteButton"]
      373 SETTABLEKS                       R28 R27 K8 ["testId"]
      375 MOVE                             R28 R12
      376 CALL                             R28 0 1
      377 SETTABLEKS                       R28 R27 K9 ["LayoutOrder"]
      379 CALL                             R25 2 1
      380 SETTABLEKS                       R25 R24 K61 ["ActionButton"]
      382 CALL                             R21 3 1
      383 SETTABLEKS                       R21 R20 K34 ["Buttons"]
      385 CALL                             R17 3 -1
      386 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Skills"]
       11 GETTABLEKS                       R2 R2 K7 ["DisabledSkillsStore"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Guest"]
       18 GETTABLEKS                       R3 R3 K9 ["Environment"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Parent"]
       25 GETTABLEKS                       R4 R4 K11 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Skills"]
       32 GETTABLEKS                       R5 R5 K12 ["Frontmatter"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K10 ["Parent"]
       39 GETTABLEKS                       R6 R6 K13 ["React"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K10 ["Parent"]
       46 GETTABLEKS                       R7 R7 K14 ["ReactUtils"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K6 ["Skills"]
       53 GETTABLEKS                       R8 R8 K15 ["SkillDefinition"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K6 ["Skills"]
       60 GETTABLEKS                       R9 R9 K16 ["SkillRegistry"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K17 ["Util"]
       67 GETTABLEKS                       R10 R10 K18 ["TestIds"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K19 ["Resources"]
       74 GETTABLEKS                       R11 R11 K20 ["Localization"]
       76 GETTABLEKS                       R11 R11 K21 ["Translator"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K6 ["Skills"]
       83 GETTABLEKS                       R12 R12 K22 ["createUserSkillAsync"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K6 ["Skills"]
       90 GETTABLEKS                       R13 R13 K23 ["editUserSkillAsync"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETIMPORT                        R14 K1 [script]
       97 GETTABLEKS                       R14 R14 K10 ["Parent"]
       99 GETTABLEKS                       R14 R14 K24 ["openSkillInMarkdownEditor"]
      101 CALL                             R13 1 1
      102 GETTABLEKS                       R14 R3 K25 ["Button"]
      104 GETTABLEKS                       R15 R3 K26 ["Text"]
      106 GETTABLEKS                       R16 R3 K27 ["View"]
      108 GETTABLEKS                       R17 R3 K28 ["Enums"]
      110 GETTABLEKS                       R17 R17 K29 ["ButtonSize"]
      112 GETTABLEKS                       R18 R3 K28 ["Enums"]
      114 GETTABLEKS                       R18 R18 K30 ["ButtonVariant"]
      116 GETTABLEKS                       R19 R7 K31 ["Sources"]
      118 GETTABLEKS                       R20 R6 K32 ["createNextOrder"]
      120 GETTABLEKS                       R21 R5 K33 ["createElement"]
      122 DUPCLOSURE                       R22 K34 [PROTO_9]
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R21
      126 CAPTURE                          VAL R16
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R15
      129 CAPTURE                          VAL R19
      130 CAPTURE                          VAL R8
      131 CAPTURE                          VAL R1
      132 CAPTURE                          VAL R20
      133 CAPTURE                          VAL R4
      134 CAPTURE                          VAL R12
      135 CAPTURE                          VAL R2
      136 CAPTURE                          VAL R11
      137 CAPTURE                          VAL R13
      138 CAPTURE                          VAL R14
      139 CAPTURE                          VAL R17
      140 CAPTURE                          VAL R18
      141 RETURN                           R22 1
