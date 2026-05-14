PROTO_0:
        0 JUMPIFNOTEQKNIL                  R1 ; [+3]
        2 LOADNIL                          R3
        3 RETURN                           R3 1
        4 JUMPIFEQKS                       R0 K0 ["SwimAnimation"] ; [+2]
        6 RETURN                           R1 1
        7 GETIMPORT                        R3 K3 [table.create]
        9 LENGTH                           R4 R1
       10 CALL                             R3 1 1
       11 MOVE                             R4 R1
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 GETTABLEKS                       R10 R8 K4 ["id"]
       17 JUMPIFNOTEQKS                    R10 K5 ["swim"] ; [+3]
       19 LOADK                            R9 K6 ["Swim"]
       20 JUMP                             ; [+7]
       21 GETTABLEKS                       R10 R8 K4 ["id"]
       23 JUMPIFNOTEQKS                    R10 K7 ["swimidle"] ; [+3]
       25 LOADK                            R9 K8 ["SwimIdle"]
       26 JUMP                             ; [+1]
       27 LOADNIL                          R9
       28 DUPTABLE                         R12 K10 [{"id", "text"}]
       29 GETTABLEKS                       R13 R8 K4 ["id"]
       31 SETTABLEKS                       R13 R12 K4 ["id"]
       33 JUMPIFEQKNIL                     R9 ; [+7]
       35 LOADK                            R15 K11 ["General"]
       36 MOVE                             R16 R9
       37 NAMECALL                         R13 R2 K12 ["getText"]
       39 CALL                             R13 3 1
       40 JUMP                             ; [+2]
       41 GETTABLEKS                       R13 R8 K9 ["text"]
       43 SETTABLEKS                       R13 R12 K9 ["text"]
       45 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       47 MOVE                             R11 R3
       48 GETIMPORT                        R10 K14 [table.insert]
       50 CALL                             R10 2 0
       51 FORGLOOP                         R4 2 ; [-37]
       53 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["id"]
        2 GETTABLEKS                       R4 R1 K0 ["id"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["UGC_AVATAR_ANIMATIONS_PARTS"]
        5 JUMPIFNOT                        R1 ; [+26]
        6 GETIMPORT                        R2 K2 [pairs]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 3
       10 FORGPREP_NEXT                    R2
       11 DUPTABLE                         R9 K5 [{"id", "text"}]
       12 SETTABLEKS                       R6 R9 K3 ["id"]
       14 GETUPVAL                         R10 1
       15 LOADK                            R12 K6 ["General"]
       16 LOADK                            R14 K7 ["AssetType"]
       17 MOVE                             R15 R6
       18 CONCAT                           R13 R14 R15
       19 NAMECALL                         R10 R10 K8 ["getText"]
       21 CALL                             R10 3 1
       22 SETTABLEKS                       R10 R9 K4 ["text"]
       24 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       26 MOVE                             R8 R0
       27 GETIMPORT                        R7 K11 [table.insert]
       29 CALL                             R7 2 0
       30 FORGLOOP                         R2 2 ; [-20]
       32 DUPTABLE                         R4 K5 [{"id", "text"}]
       33 LOADK                            R5 K12 ["EmoteAnimation"]
       34 SETTABLEKS                       R5 R4 K3 ["id"]
       36 GETUPVAL                         R5 1
       37 LOADK                            R7 K6 ["General"]
       38 LOADK                            R8 K13 ["AssetTypeEmoteAnimation"]
       39 NAMECALL                         R5 R5 K8 ["getText"]
       41 CALL                             R5 3 1
       42 SETTABLEKS                       R5 R4 K4 ["text"]
       44 FASTCALL2                        TABLE_INSERT R0 R4 ; [+4]
       46 MOVE                             R3 R0
       47 GETIMPORT                        R2 K11 [table.insert]
       49 CALL                             R2 2 0
       50 GETIMPORT                        R2 K15 [table.sort]
       52 MOVE                             R3 R0
       53 DUPCLOSURE                       R4 K16 [PROTO_1]
       54 CALL                             R2 2 0
       55 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnSectionValidityChanged"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 JUMPIF                           R1 ; [+4]
        7 MOVE                             R1 R0
        8 LOADB                            R2 1
        9 CALL                             R1 1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 2
       12 JUMPIFNOTEQKNIL                  R1 ; [+5]
       14 MOVE                             R1 R0
       15 LOADB                            R2 0
       16 CALL                             R1 1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R1 3
       19 GETTABLEKS                       R1 R1 K1 ["getSubAnimationInfo"]
       21 GETUPVAL                         R2 2
       22 CALL                             R1 1 2
       23 JUMPIFNOTEQKNIL                  R2 ; [+2]
       25 LOADB                            R3 0 +1
       26 LOADB                            R3 1
       27 JUMPIFNOT                        R3 ; [+7]
       28 GETUPVAL                         R4 4
       29 JUMPIFNOTEQKNIL                  R4 ; [+5]
       31 MOVE                             R4 R0
       32 LOADB                            R5 0
       33 CALL                             R4 1 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R4 2
       36 JUMPIFEQKS                       R4 K2 ["EmoteAnimation"] ; [+11]
       38 GETUPVAL                         R4 5
       39 GETTABLEKS                       R4 R4 K3 ["trimmedStringInputHasContent"]
       41 GETUPVAL                         R5 6
       42 CALL                             R4 1 1
       43 JUMPIF                           R4 ; [+4]
       44 MOVE                             R4 R0
       45 LOADB                            R5 0
       46 CALL                             R4 1 0
       47 RETURN                           R0 0
       48 GETUPVAL                         R4 2
       49 JUMPIFNOTEQKS                    R4 K4 ["IdleAnimation"] ; [+15]
       51 GETUPVAL                         R4 5
       52 GETTABLEKS                       R4 R4 K5 ["parsePositiveIntegerFromText"]
       54 GETUPVAL                         R5 7
       55 CALL                             R4 1 1
       56 GETUPVAL                         R5 7
       57 JUMPIFEQKS                       R5 K6 [""] ; [+7]
       59 JUMPIFNOTEQKNIL                  R4 ; [+5]
       61 MOVE                             R5 R0
       62 LOADB                            R6 0
       63 CALL                             R5 1 0
       64 RETURN                           R0 0
       65 MOVE                             R4 R0
       66 LOADB                            R5 1
       67 CALL                             R4 1 0
       68 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 1
        4 SETTABLEKS                       R1 R0 K0 ["current"]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K0 ["current"]
       10 JUMPIFNOT                        R0 ; [+16]
       11 GETUPVAL                         R0 1
       12 LOADB                            R1 0
       13 SETTABLEKS                       R1 R0 K0 ["current"]
       15 GETUPVAL                         R0 2
       16 LOADNIL                          R1
       17 CALL                             R0 1 0
       18 GETUPVAL                         R0 3
       19 LOADNIL                          R1
       20 CALL                             R0 1 0
       21 GETUPVAL                         R0 4
       22 LOADK                            R1 K1 [""]
       23 CALL                             R0 1 0
       24 GETUPVAL                         R0 5
       25 LOADK                            R1 K1 [""]
       26 CALL                             R0 1 0
       27 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnSelectionChanged"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 JUMPIF                           R1 ; [+7]
        7 MOVE                             R1 R0
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 LOADNIL                          R5
       12 CALL                             R1 4 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R2 2
       15 JUMPIFEQKS                       R2 K1 ["EmoteAnimation"] ; [+13]
       17 GETUPVAL                         R2 3
       18 GETTABLEKS                       R2 R2 K2 ["trimmedStringInputHasContent"]
       20 GETUPVAL                         R3 4
       21 CALL                             R2 1 1
       22 JUMPIFNOT                        R2 ; [+6]
       23 GETIMPORT                        R1 K5 [string.match]
       25 GETUPVAL                         R2 4
       26 LOADK                            R3 K6 ["^%s*(.-)%s*$"]
       27 CALL                             R1 2 1
       28 JUMP                             ; [+1]
       29 LOADNIL                          R1
       30 GETUPVAL                         R2 3
       31 GETTABLEKS                       R2 R2 K7 ["parsePositiveIntegerFromText"]
       33 GETUPVAL                         R3 5
       34 CALL                             R2 1 1
       35 MOVE                             R3 R0
       36 GETUPVAL                         R4 2
       37 GETUPVAL                         R5 6
       38 MOVE                             R6 R2
       39 MOVE                             R7 R1
       40 CALL                             R3 4 0
       41 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getSubAnimationInfo"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R2 1 0
        8 GETUPVAL                         R2 2
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 GETUPVAL                         R2 3
       12 LOADK                            R3 K1 [""]
       13 CALL                             R2 1 0
       14 JUMPIFNOTEQKS                    R0 K2 ["EmoteAnimation"] ; [+4]
       16 GETUPVAL                         R2 4
       17 LOADK                            R3 K1 [""]
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 LOADK                            R2 K0 [""]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+7]
        3 LOADB                            R2 0
        4 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        6 LOADK                            R3 K0 ["AnimationCheckboxCol is not supported when flag is disabled"]
        7 GETIMPORT                        R1 K2 [assert]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K3 ["useState"]
       13 LOADB                            R2 0
       14 CALL                             R1 1 2
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K3 ["useState"]
       18 LOADNIL                          R4
       19 CALL                             R3 1 2
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R5 R5 K3 ["useState"]
       23 LOADNIL                          R6
       24 CALL                             R5 1 2
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R7 R7 K3 ["useState"]
       28 LOADK                            R8 K4 [""]
       29 CALL                             R7 1 2
       30 GETUPVAL                         R9 1
       31 GETTABLEKS                       R9 R9 K3 ["useState"]
       33 LOADK                            R10 K4 [""]
       34 CALL                             R9 1 2
       35 GETTABLEKS                       R11 R0 K5 ["Localization"]
       37 GETUPVAL                         R12 1
       38 GETTABLEKS                       R12 R12 K6 ["useMemo"]
       40 NEWCLOSURE                       R13 P0
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          VAL R11
       43 NEWTABLE                         R14 0 1
       45 MOVE                             R15 R11
       46 SETLIST                          R14 R15 1 [1]
       48 CALL                             R12 2 1
       49 GETUPVAL                         R13 1
       50 GETTABLEKS                       R13 R13 K7 ["useRef"]
       52 LOADB                            R14 0
       53 CALL                             R13 1 1
       54 GETUPVAL                         R14 1
       55 GETTABLEKS                       R14 R14 K8 ["useEffect"]
       57 NEWCLOSURE                       R15 P1
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R3
       61 CAPTURE                          UPVAL U3
       62 CAPTURE                          VAL R5
       63 CAPTURE                          UPVAL U4
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R7
       66 NEWTABLE                         R16 0 6
       68 MOVE                             R17 R1
       69 MOVE                             R18 R3
       70 MOVE                             R19 R5
       71 MOVE                             R20 R7
       72 MOVE                             R21 R9
       73 GETTABLEKS                       R22 R0 K9 ["OnSectionValidityChanged"]
       75 SETLIST                          R16 R17 6 [1]
       77 CALL                             R14 2 0
       78 GETUPVAL                         R14 1
       79 GETTABLEKS                       R14 R14 K8 ["useEffect"]
       81 NEWCLOSURE                       R15 P2
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R13
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R10
       88 NEWTABLE                         R16 0 1
       90 MOVE                             R17 R1
       91 SETLIST                          R16 R17 1 [1]
       93 CALL                             R14 2 0
       94 GETUPVAL                         R14 1
       95 GETTABLEKS                       R14 R14 K8 ["useEffect"]
       97 NEWCLOSURE                       R15 P3
       98 CAPTURE                          VAL R0
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R3
      101 CAPTURE                          UPVAL U4
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R5
      105 NEWTABLE                         R16 0 6
      107 MOVE                             R17 R1
      108 MOVE                             R18 R3
      109 MOVE                             R19 R5
      110 MOVE                             R20 R7
      111 MOVE                             R21 R9
      112 GETTABLEKS                       R22 R0 K10 ["OnSelectionChanged"]
      114 SETLIST                          R16 R17 6 [1]
      116 CALL                             R14 2 0
      117 GETUPVAL                         R14 1
      118 GETTABLEKS                       R14 R14 K11 ["useCallback"]
      120 NEWCLOSURE                       R15 P4
      121 CAPTURE                          UPVAL U3
      122 CAPTURE                          VAL R4
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R8
      125 CAPTURE                          VAL R10
      126 NEWTABLE                         R16 0 0
      128 CALL                             R14 2 1
      129 GETUPVAL                         R15 1
      130 GETTABLEKS                       R15 R15 K11 ["useCallback"]
      132 NEWCLOSURE                       R16 P5
      133 CAPTURE                          VAL R6
      134 CAPTURE                          VAL R8
      135 NEWTABLE                         R17 0 0
      137 CALL                             R15 2 1
      138 GETUPVAL                         R16 1
      139 GETTABLEKS                       R16 R16 K11 ["useCallback"]
      141 NEWCLOSURE                       R17 P6
      142 CAPTURE                          VAL R8
      143 NEWTABLE                         R18 0 0
      145 CALL                             R16 2 1
      146 GETUPVAL                         R17 1
      147 GETTABLEKS                       R17 R17 K11 ["useCallback"]
      149 NEWCLOSURE                       R18 P7
      150 CAPTURE                          VAL R10
      151 NEWTABLE                         R19 0 0
      153 CALL                             R17 2 1
      154 GETUPVAL                         R18 3
      155 GETTABLEKS                       R18 R18 K12 ["getSubAnimationInfo"]
      157 MOVE                             R19 R3
      158 CALL                             R18 1 2
      159 GETUPVAL                         R20 5
      160 MOVE                             R21 R3
      161 MOVE                             R22 R19
      162 MOVE                             R23 R11
      163 CALL                             R20 3 1
      164 JUMPIFNOTEQKNIL                  R20 ; [+2]
      166 LOADB                            R21 0 +1
      167 LOADB                            R21 1
      168 JUMPIFEQKS                       R3 K13 ["IdleAnimation"] ; [+2]
      170 LOADB                            R22 0 +1
      171 LOADB                            R22 1
      172 LOADB                            R23 0
      173 JUMPIFEQKNIL                     R3 ; [+5]
      175 JUMPIFNOTEQKS                    R3 K14 ["EmoteAnimation"] ; [+2]
      177 LOADB                            R23 0 +1
      178 LOADB                            R23 1
      179 MOVE                             R24 R22
      180 JUMPIFNOT                        R24 ; [+12]
      181 LOADB                            R24 0
      182 JUMPIFEQKS                       R7 K4 [""] ; [+10]
      184 GETUPVAL                         R25 4
      185 GETTABLEKS                       R25 R25 K15 ["parsePositiveIntegerFromText"]
      187 MOVE                             R26 R7
      188 CALL                             R25 1 1
      189 JUMPIFEQKNIL                     R25 ; [+2]
      191 LOADB                            R24 0 +1
      192 LOADB                            R24 1
      193 MOVE                             R25 R1
      194 JUMPIFNOT                        R25 ; [+8]
      195 MOVE                             R25 R23
      196 JUMPIFNOT                        R25 ; [+6]
      197 GETUPVAL                         R26 4
      198 GETTABLEKS                       R26 R26 K16 ["trimmedStringInputHasContent"]
      200 MOVE                             R27 R9
      201 CALL                             R26 1 1
      202 NOT                              R25 R26
      203 GETUPVAL                         R26 6
      204 GETTABLEKS                       R26 R26 K17 ["new"]
      206 CALL                             R26 0 1
      207 GETUPVAL                         R27 6
      208 GETTABLEKS                       R27 R27 K17 ["new"]
      210 CALL                             R27 0 1
      211 GETUPVAL                         R28 1
      212 GETTABLEKS                       R28 R28 K18 ["createElement"]
      214 GETUPVAL                         R29 7
      215 DUPTABLE                         R30 K21 [{"tag", "LayoutOrder"}]
      216 LOADK                            R31 K22 ["col align-y-top gap-small auto-xy"]
      217 SETTABLEKS                       R31 R30 K19 ["tag"]
      219 GETTABLEKS                       R31 R0 K20 ["LayoutOrder"]
      221 SETTABLEKS                       R31 R30 K20 ["LayoutOrder"]
      223 DUPTABLE                         R31 K26 [{"SectionToggle", "SectionDescription", "AnimationInputs"}]
      224 GETUPVAL                         R32 1
      225 GETTABLEKS                       R32 R32 K18 ["createElement"]
      227 GETUPVAL                         R33 8
      228 DUPTABLE                         R34 K32 [{"label", "isChecked", "onActivated", "size", "testId", "LayoutOrder"}]
      229 LOADK                            R35 K4 [""]
      230 SETTABLEKS                       R35 R34 K27 ["label"]
      232 SETTABLEKS                       R1 R34 K28 ["isChecked"]
      234 NEWCLOSURE                       R35 P8
      235 CAPTURE                          VAL R2
      236 CAPTURE                          VAL R1
      237 SETTABLEKS                       R35 R34 K29 ["onActivated"]
      239 GETUPVAL                         R35 9
      240 GETTABLEKS                       R35 R35 K33 ["Medium"]
      242 SETTABLEKS                       R35 R34 K30 ["size"]
      244 LOADK                            R35 K34 ["--animation-pack-section-toggle"]
      245 SETTABLEKS                       R35 R34 K31 ["testId"]
      247 NAMECALL                         R35 R26 K35 ["getNextOrder"]
      249 CALL                             R35 1 1
      250 SETTABLEKS                       R35 R34 K20 ["LayoutOrder"]
      252 CALL                             R32 2 1
      253 SETTABLEKS                       R32 R31 K23 ["SectionToggle"]
      255 GETUPVAL                         R32 1
      256 GETTABLEKS                       R32 R32 K18 ["createElement"]
      258 GETUPVAL                         R33 10
      259 GETTABLEKS                       R33 R33 K36 ["Text"]
      261 DUPTABLE                         R34 K37 [{"tag", "Text", "LayoutOrder", "testId"}]
      262 LOADK                            R35 K38 ["size-full-0 auto-y text-body-medium content-muted text-align-x-left text-wrap"]
      263 SETTABLEKS                       R35 R34 K19 ["tag"]
      265 LOADK                            R37 K39 ["General"]
      266 LOADK                            R38 K40 ["AnimationSectionDescription"]
      267 NAMECALL                         R35 R11 K41 ["getText"]
      269 CALL                             R35 3 1
      270 SETTABLEKS                       R35 R34 K36 ["Text"]
      272 NAMECALL                         R35 R26 K35 ["getNextOrder"]
      274 CALL                             R35 1 1
      275 SETTABLEKS                       R35 R34 K20 ["LayoutOrder"]
      277 LOADK                            R35 K42 ["--animation-pack-section-description"]
      278 SETTABLEKS                       R35 R34 K31 ["testId"]
      280 CALL                             R32 2 1
      281 SETTABLEKS                       R32 R31 K24 ["SectionDescription"]
      283 JUMPIFNOT                        R1 ; [+217]
      284 GETUPVAL                         R32 1
      285 GETTABLEKS                       R32 R32 K18 ["createElement"]
      287 GETUPVAL                         R33 7
      288 DUPTABLE                         R34 K21 [{"tag", "LayoutOrder"}]
      289 LOADK                            R35 K43 ["col align-y-top gap-xlarge auto-xy padding-top-medium"]
      290 SETTABLEKS                       R35 R34 K19 ["tag"]
      292 NAMECALL                         R35 R26 K35 ["getNextOrder"]
      294 CALL                             R35 1 1
      295 SETTABLEKS                       R35 R34 K20 ["LayoutOrder"]
      297 DUPTABLE                         R35 K48 [{"AnimationTypeDropdown", "SubAnimationDropdown", "ParentModelNameInput", "WeightInput"}]
      298 GETUPVAL                         R36 1
      299 GETTABLEKS                       R36 R36 K18 ["createElement"]
      301 GETUPVAL                         R37 11
      302 DUPTABLE                         R38 K54 [{"label", "placeholder", "value", "items", "onItemChanged", "width", "size", "LayoutOrder", "testId"}]
      303 LOADK                            R41 K39 ["General"]
      304 LOADK                            R42 K55 ["AnimationType"]
      305 NAMECALL                         R39 R11 K41 ["getText"]
      307 CALL                             R39 3 1
      308 SETTABLEKS                       R39 R38 K27 ["label"]
      310 LOADK                            R41 K39 ["General"]
      311 LOADK                            R42 K56 ["SelectOption"]
      312 NAMECALL                         R39 R11 K41 ["getText"]
      314 CALL                             R39 3 1
      315 SETTABLEKS                       R39 R38 K49 ["placeholder"]
      317 SETTABLEKS                       R3 R38 K50 ["value"]
      319 SETTABLEKS                       R12 R38 K51 ["items"]
      321 SETTABLEKS                       R14 R38 K52 ["onItemChanged"]
      323 GETIMPORT                        R39 K58 [UDim.new]
      325 LOADN                            R40 0
      326 LOADN                            R41 141
      327 CALL                             R39 2 1
      328 SETTABLEKS                       R39 R38 K53 ["width"]
      330 GETUPVAL                         R39 9
      331 GETTABLEKS                       R39 R39 K59 ["Small"]
      333 SETTABLEKS                       R39 R38 K30 ["size"]
      335 NAMECALL                         R39 R27 K35 ["getNextOrder"]
      337 CALL                             R39 1 1
      338 SETTABLEKS                       R39 R38 K20 ["LayoutOrder"]
      340 LOADK                            R39 K60 ["--animation-pack-animation-type-dropdown"]
      341 SETTABLEKS                       R39 R38 K31 ["testId"]
      343 CALL                             R36 2 1
      344 SETTABLEKS                       R36 R35 K44 ["AnimationTypeDropdown"]
      346 JUMPIFNOT                        R21 ; [+47]
      347 GETUPVAL                         R36 1
      348 GETTABLEKS                       R36 R36 K18 ["createElement"]
      350 GETUPVAL                         R37 11
      351 DUPTABLE                         R38 K54 [{"label", "placeholder", "value", "items", "onItemChanged", "width", "size", "LayoutOrder", "testId"}]
      352 LOADK                            R41 K39 ["General"]
      353 LOADK                            R42 K61 ["SubAnimation"]
      354 NAMECALL                         R39 R11 K41 ["getText"]
      356 CALL                             R39 3 1
      357 SETTABLEKS                       R39 R38 K27 ["label"]
      359 LOADK                            R41 K39 ["General"]
      360 LOADK                            R42 K56 ["SelectOption"]
      361 NAMECALL                         R39 R11 K41 ["getText"]
      363 CALL                             R39 3 1
      364 SETTABLEKS                       R39 R38 K49 ["placeholder"]
      366 SETTABLEKS                       R5 R38 K50 ["value"]
      368 SETTABLEKS                       R20 R38 K51 ["items"]
      370 SETTABLEKS                       R15 R38 K52 ["onItemChanged"]
      372 GETIMPORT                        R39 K58 [UDim.new]
      374 LOADN                            R40 0
      375 LOADN                            R41 141
      376 CALL                             R39 2 1
      377 SETTABLEKS                       R39 R38 K53 ["width"]
      379 GETUPVAL                         R39 9
      380 GETTABLEKS                       R39 R39 K59 ["Small"]
      382 SETTABLEKS                       R39 R38 K30 ["size"]
      384 NAMECALL                         R39 R27 K35 ["getNextOrder"]
      386 CALL                             R39 1 1
      387 SETTABLEKS                       R39 R38 K20 ["LayoutOrder"]
      389 LOADK                            R39 K62 ["--animation-pack-sub-animation-dropdown"]
      390 SETTABLEKS                       R39 R38 K31 ["testId"]
      392 CALL                             R36 2 1
      393 JUMPIF                           R36 ; [+1]
      394 LOADNIL                          R36
      395 SETTABLEKS                       R36 R35 K45 ["SubAnimationDropdown"]
      397 JUMPIFNOT                        R23 ; [+47]
      398 GETUPVAL                         R36 1
      399 GETTABLEKS                       R36 R36 K18 ["createElement"]
      401 GETUPVAL                         R37 12
      402 DUPTABLE                         R38 K66 [{"text", "onChanged", "label", "placeholder", "hasError", "size", "width", "LayoutOrder", "testId"}]
      403 SETTABLEKS                       R9 R38 K63 ["text"]
      405 SETTABLEKS                       R17 R38 K64 ["onChanged"]
      407 LOADK                            R41 K39 ["General"]
      408 LOADK                            R42 K67 ["ParentModelName"]
      409 NAMECALL                         R39 R11 K41 ["getText"]
      411 CALL                             R39 3 1
      412 SETTABLEKS                       R39 R38 K27 ["label"]
      414 LOADK                            R41 K39 ["General"]
      415 LOADK                            R42 K68 ["EnterName"]
      416 NAMECALL                         R39 R11 K41 ["getText"]
      418 CALL                             R39 3 1
      419 SETTABLEKS                       R39 R38 K49 ["placeholder"]
      421 SETTABLEKS                       R25 R38 K65 ["hasError"]
      423 GETUPVAL                         R39 9
      424 GETTABLEKS                       R39 R39 K59 ["Small"]
      426 SETTABLEKS                       R39 R38 K30 ["size"]
      428 GETIMPORT                        R39 K58 [UDim.new]
      430 LOADN                            R40 0
      431 LOADN                            R41 141
      432 CALL                             R39 2 1
      433 SETTABLEKS                       R39 R38 K53 ["width"]
      435 NAMECALL                         R39 R27 K35 ["getNextOrder"]
      437 CALL                             R39 1 1
      438 SETTABLEKS                       R39 R38 K20 ["LayoutOrder"]
      440 LOADK                            R39 K69 ["--animation-pack-parent-model-name"]
      441 SETTABLEKS                       R39 R38 K31 ["testId"]
      443 CALL                             R36 2 1
      444 JUMPIF                           R36 ; [+1]
      445 LOADNIL                          R36
      446 SETTABLEKS                       R36 R35 K46 ["ParentModelNameInput"]
      448 JUMPIFNOT                        R22 ; [+47]
      449 GETUPVAL                         R36 1
      450 GETTABLEKS                       R36 R36 K18 ["createElement"]
      452 GETUPVAL                         R37 12
      453 DUPTABLE                         R38 K66 [{"text", "onChanged", "label", "placeholder", "hasError", "size", "width", "LayoutOrder", "testId"}]
      454 SETTABLEKS                       R7 R38 K63 ["text"]
      456 SETTABLEKS                       R16 R38 K64 ["onChanged"]
      458 LOADK                            R41 K39 ["General"]
      459 LOADK                            R42 K70 ["Weight"]
      460 NAMECALL                         R39 R11 K41 ["getText"]
      462 CALL                             R39 3 1
      463 SETTABLEKS                       R39 R38 K27 ["label"]
      465 LOADK                            R41 K39 ["General"]
      466 LOADK                            R42 K71 ["EnterWeight"]
      467 NAMECALL                         R39 R11 K41 ["getText"]
      469 CALL                             R39 3 1
      470 SETTABLEKS                       R39 R38 K49 ["placeholder"]
      472 SETTABLEKS                       R24 R38 K65 ["hasError"]
      474 GETUPVAL                         R39 9
      475 GETTABLEKS                       R39 R39 K59 ["Small"]
      477 SETTABLEKS                       R39 R38 K30 ["size"]
      479 GETIMPORT                        R39 K58 [UDim.new]
      481 LOADN                            R40 0
      482 LOADN                            R41 141
      483 CALL                             R39 2 1
      484 SETTABLEKS                       R39 R38 K53 ["width"]
      486 NAMECALL                         R39 R27 K35 ["getNextOrder"]
      488 CALL                             R39 1 1
      489 SETTABLEKS                       R39 R38 K20 ["LayoutOrder"]
      491 LOADK                            R39 K72 ["--animation-pack-idle-weight"]
      492 SETTABLEKS                       R39 R38 K31 ["testId"]
      494 CALL                             R36 2 1
      495 JUMPIF                           R36 ; [+1]
      496 LOADNIL                          R36
      497 SETTABLEKS                       R36 R35 K47 ["WeightInput"]
      499 CALL                             R32 3 1
      500 JUMPIF                           R32 ; [+1]
      501 LOADNIL                          R32
      502 SETTABLEKS                       R32 R31 K25 ["AnimationInputs"]
      504 CALL                             R28 3 -1
      505 RETURN                           R28 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["AssetConfigConstants"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Util"]
       36 GETTABLEKS                       R5 R5 K12 ["AssetUtil"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R6 K10 ["Util"]
       45 GETTABLEKS                       R6 R6 K13 ["AnimationConfigUtil"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K9 ["Src"]
       52 GETTABLEKS                       R7 R7 K10 ["Util"]
       54 GETTABLEKS                       R7 R7 K14 ["LayoutOrderIterator"]
       56 CALL                             R6 1 1
       57 GETTABLEKS                       R7 R2 K15 ["View"]
       59 GETTABLEKS                       R8 R2 K16 ["Toggle"]
       61 GETTABLEKS                       R9 R2 K17 ["Dropdown"]
       63 GETTABLEKS                       R9 R9 K18 ["Root"]
       65 GETTABLEKS                       R10 R2 K19 ["TextInput"]
       67 GETTABLEKS                       R11 R2 K20 ["Enums"]
       69 GETTABLEKS                       R11 R11 K21 ["InputSize"]
       71 GETIMPORT                        R12 K5 [require]
       73 GETTABLEKS                       R13 R0 K9 ["Src"]
       75 GETTABLEKS                       R13 R13 K22 ["Flags"]
       77 GETTABLEKS                       R13 R13 K23 ["getFFlagEnableUploadingAvatarAnimations"]
       79 CALL                             R12 1 1
       80 DUPCLOSURE                       R13 K24 [PROTO_0]
       81 DUPCLOSURE                       R14 K25 [PROTO_11]
       82 CAPTURE                          VAL R12
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R13
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R10
       95 RETURN                           R14 1
