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
       32 DUPTABLE                         R4 K13 [{["id"] = "EmoteAnimation", ["text"]}]
       33 GETUPVAL                         R5 1
       34 LOADK                            R7 K6 ["General"]
       35 LOADK                            R8 K14 ["AssetTypeEmoteAnimation"]
       36 NAMECALL                         R5 R5 K8 ["getText"]
       38 CALL                             R5 3 1
       39 SETTABLEKS                       R5 R4 K4 ["text"]
       41 FASTCALL2                        TABLE_INSERT R0 R4 ; [+4]
       43 MOVE                             R3 R0
       44 GETIMPORT                        R2 K11 [table.insert]
       46 CALL                             R2 2 0
       47 GETIMPORT                        R2 K16 [table.sort]
       49 MOVE                             R3 R0
       50 DUPCLOSURE                       R4 K17 [PROTO_1]
       51 CALL                             R2 2 0
       52 RETURN                           R0 1

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
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 LOADNIL                          R4
        9 CALL                             R3 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K0 ["useState"]
       13 LOADNIL                          R6
       14 CALL                             R5 1 2
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R7 R7 K0 ["useState"]
       18 LOADK                            R8 K1 [""]
       19 CALL                             R7 1 2
       20 GETUPVAL                         R9 0
       21 GETTABLEKS                       R9 R9 K0 ["useState"]
       23 LOADK                            R10 K1 [""]
       24 CALL                             R9 1 2
       25 GETTABLEKS                       R11 R0 K2 ["Localization"]
       27 GETUPVAL                         R12 0
       28 GETTABLEKS                       R12 R12 K3 ["useMemo"]
       30 NEWCLOSURE                       R13 P0
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          VAL R11
       33 NEWTABLE                         R14 0 1
       35 MOVE                             R15 R11
       36 SETLIST                          R14 R15 1 [1]
       38 CALL                             R12 2 1
       39 GETUPVAL                         R13 0
       40 GETTABLEKS                       R13 R13 K4 ["useRef"]
       42 LOADB                            R14 0
       43 CALL                             R13 1 1
       44 GETUPVAL                         R14 0
       45 GETTABLEKS                       R14 R14 K5 ["useEffect"]
       47 NEWCLOSURE                       R15 P1
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R3
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          VAL R5
       53 CAPTURE                          UPVAL U3
       54 CAPTURE                          VAL R9
       55 CAPTURE                          VAL R7
       56 NEWTABLE                         R16 0 6
       58 MOVE                             R17 R1
       59 MOVE                             R18 R3
       60 MOVE                             R19 R5
       61 MOVE                             R20 R7
       62 MOVE                             R21 R9
       63 GETTABLEKS                       R22 R0 K6 ["OnSectionValidityChanged"]
       65 SETLIST                          R16 R17 6 [1]
       67 CALL                             R14 2 0
       68 GETUPVAL                         R14 0
       69 GETTABLEKS                       R14 R14 K5 ["useEffect"]
       71 NEWCLOSURE                       R15 P2
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R13
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R10
       78 NEWTABLE                         R16 0 1
       80 MOVE                             R17 R1
       81 SETLIST                          R16 R17 1 [1]
       83 CALL                             R14 2 0
       84 GETUPVAL                         R14 0
       85 GETTABLEKS                       R14 R14 K5 ["useEffect"]
       87 NEWCLOSURE                       R15 P3
       88 CAPTURE                          VAL R0
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R3
       91 CAPTURE                          UPVAL U3
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R5
       95 NEWTABLE                         R16 0 6
       97 MOVE                             R17 R1
       98 MOVE                             R18 R3
       99 MOVE                             R19 R5
      100 MOVE                             R20 R7
      101 MOVE                             R21 R9
      102 GETTABLEKS                       R22 R0 K7 ["OnSelectionChanged"]
      104 SETLIST                          R16 R17 6 [1]
      106 CALL                             R14 2 0
      107 GETUPVAL                         R14 0
      108 GETTABLEKS                       R14 R14 K8 ["useCallback"]
      110 NEWCLOSURE                       R15 P4
      111 CAPTURE                          UPVAL U2
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R10
      116 NEWTABLE                         R16 0 0
      118 CALL                             R14 2 1
      119 GETUPVAL                         R15 0
      120 GETTABLEKS                       R15 R15 K8 ["useCallback"]
      122 NEWCLOSURE                       R16 P5
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R8
      125 NEWTABLE                         R17 0 0
      127 CALL                             R15 2 1
      128 GETUPVAL                         R16 0
      129 GETTABLEKS                       R16 R16 K8 ["useCallback"]
      131 NEWCLOSURE                       R17 P6
      132 CAPTURE                          VAL R8
      133 NEWTABLE                         R18 0 0
      135 CALL                             R16 2 1
      136 GETUPVAL                         R17 0
      137 GETTABLEKS                       R17 R17 K8 ["useCallback"]
      139 NEWCLOSURE                       R18 P7
      140 CAPTURE                          VAL R10
      141 NEWTABLE                         R19 0 0
      143 CALL                             R17 2 1
      144 GETUPVAL                         R18 2
      145 GETTABLEKS                       R18 R18 K9 ["getSubAnimationInfo"]
      147 MOVE                             R19 R3
      148 CALL                             R18 1 2
      149 GETUPVAL                         R20 4
      150 MOVE                             R21 R3
      151 MOVE                             R22 R19
      152 MOVE                             R23 R11
      153 CALL                             R20 3 1
      154 JUMPIFNOTEQKNIL                  R20 ; [+2]
      156 LOADB                            R21 0 +1
      157 LOADB                            R21 1
      158 JUMPIFEQKS                       R3 K10 ["IdleAnimation"] ; [+2]
      160 LOADB                            R22 0 +1
      161 LOADB                            R22 1
      162 LOADB                            R23 0
      163 JUMPIFEQKNIL                     R3 ; [+5]
      165 JUMPIFNOTEQKS                    R3 K11 ["EmoteAnimation"] ; [+2]
      167 LOADB                            R23 0 +1
      168 LOADB                            R23 1
      169 MOVE                             R24 R22
      170 JUMPIFNOT                        R24 ; [+12]
      171 LOADB                            R24 0
      172 JUMPIFEQKS                       R7 K1 [""] ; [+10]
      174 GETUPVAL                         R25 3
      175 GETTABLEKS                       R25 R25 K12 ["parsePositiveIntegerFromText"]
      177 MOVE                             R26 R7
      178 CALL                             R25 1 1
      179 JUMPIFEQKNIL                     R25 ; [+2]
      181 LOADB                            R24 0 +1
      182 LOADB                            R24 1
      183 MOVE                             R25 R1
      184 JUMPIFNOT                        R25 ; [+8]
      185 MOVE                             R25 R23
      186 JUMPIFNOT                        R25 ; [+6]
      187 GETUPVAL                         R26 3
      188 GETTABLEKS                       R26 R26 K13 ["trimmedStringInputHasContent"]
      190 MOVE                             R27 R9
      191 CALL                             R26 1 1
      192 NOT                              R25 R26
      193 GETUPVAL                         R26 5
      194 GETTABLEKS                       R26 R26 K14 ["new"]
      196 CALL                             R26 0 1
      197 GETUPVAL                         R27 5
      198 GETTABLEKS                       R27 R27 K14 ["new"]
      200 CALL                             R27 0 1
      201 GETUPVAL                         R28 0
      202 GETTABLEKS                       R28 R28 K15 ["createElement"]
      204 GETUPVAL                         R29 6
      205 DUPTABLE                         R30 K19 [{["tag"] = "col align-y-top gap-small auto-xy", ["LayoutOrder"]}]
      206 GETTABLEKS                       R31 R0 K18 ["LayoutOrder"]
      208 SETTABLEKS                       R31 R30 K18 ["LayoutOrder"]
      210 DUPTABLE                         R31 K23 [{"SectionToggle", "SectionDescription", "AnimationInputs"}]
      211 GETUPVAL                         R32 0
      212 GETTABLEKS                       R32 R32 K15 ["createElement"]
      214 GETUPVAL                         R33 7
      215 DUPTABLE                         R34 K30 [{["label"] = "", ["isChecked"], ["onActivated"], ["size"], ["testId"] = "--animation-pack-section-toggle", ["LayoutOrder"]}]
      216 SETTABLEKS                       R1 R34 K25 ["isChecked"]
      218 NEWCLOSURE                       R35 P8
      219 CAPTURE                          VAL R2
      220 CAPTURE                          VAL R1
      221 SETTABLEKS                       R35 R34 K26 ["onActivated"]
      223 GETUPVAL                         R35 8
      224 GETTABLEKS                       R35 R35 K31 ["Medium"]
      226 SETTABLEKS                       R35 R34 K27 ["size"]
      228 NAMECALL                         R35 R26 K32 ["getNextOrder"]
      230 CALL                             R35 1 1
      231 SETTABLEKS                       R35 R34 K18 ["LayoutOrder"]
      233 CALL                             R32 2 1
      234 SETTABLEKS                       R32 R31 K20 ["SectionToggle"]
      236 GETUPVAL                         R32 0
      237 GETTABLEKS                       R32 R32 K15 ["createElement"]
      239 GETUPVAL                         R33 9
      240 GETTABLEKS                       R33 R33 K33 ["Text"]
      242 DUPTABLE                         R34 K36 [{["tag"] = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left content-muted", ["Text"], ["LayoutOrder"], ["testId"] = "--animation-pack-section-description"}]
      243 LOADK                            R37 K37 ["General"]
      244 LOADK                            R38 K38 ["AnimationSectionDescription"]
      245 NAMECALL                         R35 R11 K39 ["getText"]
      247 CALL                             R35 3 1
      248 SETTABLEKS                       R35 R34 K33 ["Text"]
      250 NAMECALL                         R35 R26 K32 ["getNextOrder"]
      252 CALL                             R35 1 1
      253 SETTABLEKS                       R35 R34 K18 ["LayoutOrder"]
      255 CALL                             R32 2 1
      256 SETTABLEKS                       R32 R31 K21 ["SectionDescription"]
      258 JUMPIFNOT                        R1 ; [+202]
      259 GETUPVAL                         R32 0
      260 GETTABLEKS                       R32 R32 K15 ["createElement"]
      262 GETUPVAL                         R33 6
      263 DUPTABLE                         R34 K41 [{["tag"] = "col align-y-top gap-xlarge auto-xy padding-top-medium", ["LayoutOrder"]}]
      264 NAMECALL                         R35 R26 K32 ["getNextOrder"]
      266 CALL                             R35 1 1
      267 SETTABLEKS                       R35 R34 K18 ["LayoutOrder"]
      269 DUPTABLE                         R35 K46 [{"AnimationTypeDropdown", "SubAnimationDropdown", "ParentModelNameInput", "WeightInput"}]
      270 GETUPVAL                         R36 0
      271 GETTABLEKS                       R36 R36 K15 ["createElement"]
      273 GETUPVAL                         R37 10
      274 DUPTABLE                         R38 K53 [{["label"], ["placeholder"], ["value"], ["items"], ["onItemChanged"], ["width"], ["size"], ["LayoutOrder"], ["testId"] = "--animation-pack-animation-type-dropdown"}]
      275 LOADK                            R41 K37 ["General"]
      276 LOADK                            R42 K54 ["AnimationType"]
      277 NAMECALL                         R39 R11 K39 ["getText"]
      279 CALL                             R39 3 1
      280 SETTABLEKS                       R39 R38 K24 ["label"]
      282 LOADK                            R41 K37 ["General"]
      283 LOADK                            R42 K55 ["SelectOption"]
      284 NAMECALL                         R39 R11 K39 ["getText"]
      286 CALL                             R39 3 1
      287 SETTABLEKS                       R39 R38 K47 ["placeholder"]
      289 SETTABLEKS                       R3 R38 K48 ["value"]
      291 SETTABLEKS                       R12 R38 K49 ["items"]
      293 SETTABLEKS                       R14 R38 K50 ["onItemChanged"]
      295 GETIMPORT                        R39 K57 [UDim.new]
      297 LOADN                            R40 0
      298 LOADN                            R41 397
      299 CALL                             R39 2 1
      300 SETTABLEKS                       R39 R38 K51 ["width"]
      302 GETUPVAL                         R39 8
      303 GETTABLEKS                       R39 R39 K58 ["Small"]
      305 SETTABLEKS                       R39 R38 K27 ["size"]
      307 NAMECALL                         R39 R27 K32 ["getNextOrder"]
      309 CALL                             R39 1 1
      310 SETTABLEKS                       R39 R38 K18 ["LayoutOrder"]
      312 CALL                             R36 2 1
      313 SETTABLEKS                       R36 R35 K42 ["AnimationTypeDropdown"]
      315 JUMPIFNOT                        R21 ; [+44]
      316 GETUPVAL                         R36 0
      317 GETTABLEKS                       R36 R36 K15 ["createElement"]
      319 GETUPVAL                         R37 10
      320 DUPTABLE                         R38 K60 [{["label"], ["placeholder"], ["value"], ["items"], ["onItemChanged"], ["width"], ["size"], ["LayoutOrder"], ["testId"] = "--animation-pack-sub-animation-dropdown"}]
      321 LOADK                            R41 K37 ["General"]
      322 LOADK                            R42 K61 ["SubAnimation"]
      323 NAMECALL                         R39 R11 K39 ["getText"]
      325 CALL                             R39 3 1
      326 SETTABLEKS                       R39 R38 K24 ["label"]
      328 LOADK                            R41 K37 ["General"]
      329 LOADK                            R42 K55 ["SelectOption"]
      330 NAMECALL                         R39 R11 K39 ["getText"]
      332 CALL                             R39 3 1
      333 SETTABLEKS                       R39 R38 K47 ["placeholder"]
      335 SETTABLEKS                       R5 R38 K48 ["value"]
      337 SETTABLEKS                       R20 R38 K49 ["items"]
      339 SETTABLEKS                       R15 R38 K50 ["onItemChanged"]
      341 GETIMPORT                        R39 K57 [UDim.new]
      343 LOADN                            R40 0
      344 LOADN                            R41 397
      345 CALL                             R39 2 1
      346 SETTABLEKS                       R39 R38 K51 ["width"]
      348 GETUPVAL                         R39 8
      349 GETTABLEKS                       R39 R39 K58 ["Small"]
      351 SETTABLEKS                       R39 R38 K27 ["size"]
      353 NAMECALL                         R39 R27 K32 ["getNextOrder"]
      355 CALL                             R39 1 1
      356 SETTABLEKS                       R39 R38 K18 ["LayoutOrder"]
      358 CALL                             R36 2 1
      359 JUMPIF                           R36 ; [+1]
      360 LOADNIL                          R36
      361 SETTABLEKS                       R36 R35 K43 ["SubAnimationDropdown"]
      363 JUMPIFNOT                        R23 ; [+44]
      364 GETUPVAL                         R36 0
      365 GETTABLEKS                       R36 R36 K15 ["createElement"]
      367 GETUPVAL                         R37 11
      368 DUPTABLE                         R38 K66 [{["text"], ["onChanged"], ["label"], ["placeholder"], ["hasError"], ["size"], ["width"], ["LayoutOrder"], ["testId"] = "--animation-pack-parent-model-name"}]
      369 SETTABLEKS                       R9 R38 K62 ["text"]
      371 SETTABLEKS                       R17 R38 K63 ["onChanged"]
      373 LOADK                            R41 K37 ["General"]
      374 LOADK                            R42 K67 ["ParentModelName"]
      375 NAMECALL                         R39 R11 K39 ["getText"]
      377 CALL                             R39 3 1
      378 SETTABLEKS                       R39 R38 K24 ["label"]
      380 LOADK                            R41 K37 ["General"]
      381 LOADK                            R42 K68 ["EnterName"]
      382 NAMECALL                         R39 R11 K39 ["getText"]
      384 CALL                             R39 3 1
      385 SETTABLEKS                       R39 R38 K47 ["placeholder"]
      387 SETTABLEKS                       R25 R38 K64 ["hasError"]
      389 GETUPVAL                         R39 8
      390 GETTABLEKS                       R39 R39 K58 ["Small"]
      392 SETTABLEKS                       R39 R38 K27 ["size"]
      394 GETIMPORT                        R39 K57 [UDim.new]
      396 LOADN                            R40 0
      397 LOADN                            R41 397
      398 CALL                             R39 2 1
      399 SETTABLEKS                       R39 R38 K51 ["width"]
      401 NAMECALL                         R39 R27 K32 ["getNextOrder"]
      403 CALL                             R39 1 1
      404 SETTABLEKS                       R39 R38 K18 ["LayoutOrder"]
      406 CALL                             R36 2 1
      407 JUMPIF                           R36 ; [+1]
      408 LOADNIL                          R36
      409 SETTABLEKS                       R36 R35 K44 ["ParentModelNameInput"]
      411 JUMPIFNOT                        R22 ; [+44]
      412 GETUPVAL                         R36 0
      413 GETTABLEKS                       R36 R36 K15 ["createElement"]
      415 GETUPVAL                         R37 11
      416 DUPTABLE                         R38 K70 [{["text"], ["onChanged"], ["label"], ["placeholder"], ["hasError"], ["size"], ["width"], ["LayoutOrder"], ["testId"] = "--animation-pack-idle-weight"}]
      417 SETTABLEKS                       R7 R38 K62 ["text"]
      419 SETTABLEKS                       R16 R38 K63 ["onChanged"]
      421 LOADK                            R41 K37 ["General"]
      422 LOADK                            R42 K71 ["Weight"]
      423 NAMECALL                         R39 R11 K39 ["getText"]
      425 CALL                             R39 3 1
      426 SETTABLEKS                       R39 R38 K24 ["label"]
      428 LOADK                            R41 K37 ["General"]
      429 LOADK                            R42 K72 ["EnterWeight"]
      430 NAMECALL                         R39 R11 K39 ["getText"]
      432 CALL                             R39 3 1
      433 SETTABLEKS                       R39 R38 K47 ["placeholder"]
      435 SETTABLEKS                       R24 R38 K64 ["hasError"]
      437 GETUPVAL                         R39 8
      438 GETTABLEKS                       R39 R39 K58 ["Small"]
      440 SETTABLEKS                       R39 R38 K27 ["size"]
      442 GETIMPORT                        R39 K57 [UDim.new]
      444 LOADN                            R40 0
      445 LOADN                            R41 397
      446 CALL                             R39 2 1
      447 SETTABLEKS                       R39 R38 K51 ["width"]
      449 NAMECALL                         R39 R27 K32 ["getNextOrder"]
      451 CALL                             R39 1 1
      452 SETTABLEKS                       R39 R38 K18 ["LayoutOrder"]
      454 CALL                             R36 2 1
      455 JUMPIF                           R36 ; [+1]
      456 LOADNIL                          R36
      457 SETTABLEKS                       R36 R35 K45 ["WeightInput"]
      459 CALL                             R32 3 1
      460 JUMPIF                           R32 ; [+1]
      461 LOADNIL                          R32
      462 SETTABLEKS                       R32 R31 K22 ["AnimationInputs"]
      464 CALL                             R28 3 -1
      465 RETURN                           R28 -1

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
       71 DUPCLOSURE                       R12 K22 [PROTO_0]
       72 DUPCLOSURE                       R13 K23 [PROTO_11]
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R12
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R10
       85 RETURN                           R13 1
