PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 NEWTABLE                         R0 0 0
        4 RETURN                           R0 1
        5 NEWTABLE                         R0 0 0
        7 GETUPVAL                         R1 1
        8 CALL                             R1 0 1
        9 NEWTABLE                         R2 0 0
       11 GETIMPORT                        R3 K1 [pairs]
       13 GETUPVAL                         R4 2
       14 CALL                             R3 1 3
       15 FORGPREP_NEXT                    R3
       16 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
       18 MOVE                             R9 R2
       19 MOVE                             R10 R6
       20 GETIMPORT                        R8 K4 [table.insert]
       22 CALL                             R8 2 0
       23 FORGLOOP                         R3 2 ; [-8]
       25 GETIMPORT                        R3 K6 [table.sort]
       27 MOVE                             R4 R2
       28 CALL                             R3 1 0
       29 GETUPVAL                         R5 3
       30 GETTABLEKS                       R5 R5 K7 ["UNASSIGNED_PARTY_ID"]
       32 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       34 MOVE                             R4 R2
       35 GETIMPORT                        R3 K4 [table.insert]
       37 CALL                             R3 2 0
       38 MOVE                             R3 R2
       39 LOADNIL                          R4
       40 LOADNIL                          R5
       41 FORGPREP                         R3
       42 GETUPVAL                         R8 3
       43 GETTABLEKS                       R8 R8 K7 ["UNASSIGNED_PARTY_ID"]
       45 JUMPIFEQ                         R7 R8 ; [+62]
       47 GETUPVAL                         R9 2
       48 GETTABLE                         R8 R9 R7
       49 JUMPIFNOT                        R8 ; [+58]
       50 FASTCALL1                        TYPE R8 ; [+3]
       51 MOVE                             R10 R8
       52 GETIMPORT                        R9 K9 [type]
       54 CALL                             R9 1 1
       55 JUMPIFNOTEQKS                    R9 K2 ["table"] ; [+52]
       57 NEWTABLE                         R9 0 0
       59 GETIMPORT                        R10 K11 [ipairs]
       61 MOVE                             R11 R8
       62 CALL                             R10 1 3
       63 FORGPREP_INEXT                   R10
       64 DUPTABLE                         R17 K15 [{"userId", "playerName", "currentPartyId"}]
       65 SETTABLEKS                       R14 R17 K12 ["userId"]
       67 GETUPVAL                         R18 4
       68 MOVE                             R19 R14
       69 CALL                             R18 1 1
       70 SETTABLEKS                       R18 R17 K13 ["playerName"]
       72 SETTABLEKS                       R7 R17 K14 ["currentPartyId"]
       74 FASTCALL2                        TABLE_INSERT R9 R17 ; [+4]
       76 MOVE                             R16 R9
       77 GETIMPORT                        R15 K4 [table.insert]
       79 CALL                             R15 2 0
       80 FORGLOOP                         R10 2 [inext] ; [-17]
       82 MOVE                             R11 R0
       83 GETUPVAL                         R12 5
       84 GETTABLEKS                       R12 R12 K16 ["createElement"]
       86 GETUPVAL                         R13 6
       87 DUPTABLE                         R14 K22 [{"key", "partyId", "partyName", "players", "LayoutOrder"}]
       88 SETTABLEKS                       R7 R14 K17 ["key"]
       90 SETTABLEKS                       R7 R14 K18 ["partyId"]
       92 GETUPVAL                         R15 7
       93 MOVE                             R16 R7
       94 CALL                             R15 1 1
       95 SETTABLEKS                       R15 R14 K19 ["partyName"]
       97 SETTABLEKS                       R9 R14 K20 ["players"]
       99 MOVE                             R15 R1
      100 CALL                             R15 0 1
      101 SETTABLEKS                       R15 R14 K21 ["LayoutOrder"]
      103 CALL                             R12 2 -1
      104 FASTCALL                         TABLE_INSERT ; [+2]
      105 GETIMPORT                        R10 K4 [table.insert]
      107 CALL                             R10 -1 0
      108 FORGLOOP                         R3 2 ; [-67]
      110 NEWTABLE                         R3 0 0
      112 LOADN                            R6 -1
      113 GETUPVAL                         R7 8
      114 MINUS                            R4 R7
      115 LOADN                            R5 -1
      116 FORNPREP                         R4
      117 GETUPVAL                         R8 9
      118 FASTCALL1                        TOSTRING R6 ; [+3]
      119 MOVE                             R10 R6
      120 GETIMPORT                        R9 K24 [tostring]
      122 CALL                             R9 1 1
      123 GETTABLE                         R7 R8 R9
      124 JUMPIFNOTEQKS                    R7 K25 [""] ; [+20]
      126 DUPTABLE                         R9 K15 [{"userId", "playerName", "currentPartyId"}]
      127 SETTABLEKS                       R6 R9 K12 ["userId"]
      129 GETUPVAL                         R10 4
      130 MOVE                             R11 R6
      131 CALL                             R10 1 1
      132 SETTABLEKS                       R10 R9 K13 ["playerName"]
      134 GETUPVAL                         R10 3
      135 GETTABLEKS                       R10 R10 K7 ["UNASSIGNED_PARTY_ID"]
      137 SETTABLEKS                       R10 R9 K14 ["currentPartyId"]
      139 FASTCALL2                        TABLE_INSERT R3 R9 ; [+4]
      141 MOVE                             R8 R3
      142 GETIMPORT                        R7 K4 [table.insert]
      144 CALL                             R7 2 0
      145 FORNLOOP                         R4
      146 MOVE                             R5 R0
      147 GETUPVAL                         R6 5
      148 GETTABLEKS                       R6 R6 K16 ["createElement"]
      150 GETUPVAL                         R7 6
      151 DUPTABLE                         R8 K22 [{"key", "partyId", "partyName", "players", "LayoutOrder"}]
      152 GETUPVAL                         R9 3
      153 GETTABLEKS                       R9 R9 K7 ["UNASSIGNED_PARTY_ID"]
      155 SETTABLEKS                       R9 R8 K17 ["key"]
      157 GETUPVAL                         R9 3
      158 GETTABLEKS                       R9 R9 K7 ["UNASSIGNED_PARTY_ID"]
      160 SETTABLEKS                       R9 R8 K18 ["partyId"]
      162 GETUPVAL                         R9 7
      163 GETUPVAL                         R10 3
      164 GETTABLEKS                       R10 R10 K7 ["UNASSIGNED_PARTY_ID"]
      166 CALL                             R9 1 1
      167 SETTABLEKS                       R9 R8 K19 ["partyName"]
      169 SETTABLEKS                       R3 R8 K20 ["players"]
      171 MOVE                             R9 R1
      172 CALL                             R9 0 1
      173 SETTABLEKS                       R9 R8 K21 ["LayoutOrder"]
      175 CALL                             R6 2 -1
      176 FASTCALL                         TABLE_INSERT ; [+2]
      177 GETIMPORT                        R4 K4 [table.insert]
      179 CALL                             R4 -1 0
      180 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useParties"]
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["usePlayerMappings"]
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K2 ["usePlayerCount"]
       13 CALL                             R4 0 1
       14 GETUPVAL                         R5 2
       15 CALL                             R5 0 1
       16 GETUPVAL                         R6 3
       17 NAMECALL                         R6 R6 K3 ["use"]
       19 CALL                             R6 1 1
       20 GETUPVAL                         R7 4
       21 GETTABLEKS                       R7 R7 K4 ["useMemo"]
       23 NEWCLOSURE                       R8 P0
       24 CAPTURE                          VAL R5
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          VAL R2
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          UPVAL U6
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          UPVAL U7
       31 CAPTURE                          UPVAL U8
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R3
       34 NEWTABLE                         R9 0 4
       36 MOVE                             R10 R5
       37 MOVE                             R11 R2
       38 MOVE                             R12 R3
       39 MOVE                             R13 R4
       40 SETLIST                          R9 R10 4 [1]
       42 CALL                             R7 2 1
       43 GETUPVAL                         R8 4
       44 GETTABLEKS                       R8 R8 K5 ["createElement"]
       46 GETUPVAL                         R9 9
       47 GETTABLEKS                       R9 R9 K6 ["View"]
       49 DUPTABLE                         R10 K9 [{["tag"] = "col gap-medium size-full padding-medium bg-surface-200"}]
       50 DUPTABLE                         R11 K12 [{"HeaderSection", "ContentContainer"}]
       51 GETUPVAL                         R12 4
       52 GETTABLEKS                       R12 R12 K5 ["createElement"]
       54 GETUPVAL                         R13 9
       55 GETTABLEKS                       R13 R13 K6 ["View"]
       57 DUPTABLE                         R14 K17 [{["tag"] = "col gap-medium size-full-0 auto-y", ["GroupTransparency"], ["LayoutOrder"] = 0}]
       58 JUMPIFNOT                        R5 ; [+2]
       59 LOADN                            R15 0
       60 JUMP                             ; [+3]
       61 GETUPVAL                         R15 5
       62 GETTABLEKS                       R15 R15 K18 ["DISABLED_TRANSPARENCY"]
       64 SETTABLEKS                       R15 R14 K14 ["GroupTransparency"]
       66 DUPTABLE                         R15 K22 [{"ToggleHeader", "Divider", "ActionsSection"}]
       67 GETUPVAL                         R16 4
       68 GETTABLEKS                       R16 R16 K5 ["createElement"]
       70 GETUPVAL                         R17 10
       71 DUPTABLE                         R18 K23 [{"LayoutOrder"}]
       72 MOVE                             R19 R1
       73 CALL                             R19 0 1
       74 SETTABLEKS                       R19 R18 K15 ["LayoutOrder"]
       76 CALL                             R16 2 1
       77 SETTABLEKS                       R16 R15 K19 ["ToggleHeader"]
       79 GETUPVAL                         R16 4
       80 GETTABLEKS                       R16 R16 K5 ["createElement"]
       82 GETUPVAL                         R17 9
       83 GETTABLEKS                       R17 R17 K20 ["Divider"]
       85 DUPTABLE                         R18 K25 [{"variant", "LayoutOrder"}]
       86 GETUPVAL                         R19 9
       87 GETTABLEKS                       R19 R19 K26 ["Enums"]
       89 GETTABLEKS                       R19 R19 K27 ["DividerVariant"]
       91 GETTABLEKS                       R19 R19 K28 ["Default"]
       93 SETTABLEKS                       R19 R18 K24 ["variant"]
       95 MOVE                             R19 R1
       96 CALL                             R19 0 1
       97 SETTABLEKS                       R19 R18 K15 ["LayoutOrder"]
       99 CALL                             R16 2 1
      100 SETTABLEKS                       R16 R15 K20 ["Divider"]
      102 GETUPVAL                         R16 4
      103 GETTABLEKS                       R16 R16 K5 ["createElement"]
      105 GETUPVAL                         R17 11
      106 DUPTABLE                         R18 K30 [{"playerCount", "LayoutOrder"}]
      107 SETTABLEKS                       R4 R18 K29 ["playerCount"]
      109 MOVE                             R19 R1
      110 CALL                             R19 0 1
      111 SETTABLEKS                       R19 R18 K15 ["LayoutOrder"]
      113 CALL                             R16 2 1
      114 SETTABLEKS                       R16 R15 K21 ["ActionsSection"]
      116 CALL                             R12 3 1
      117 SETTABLEKS                       R12 R11 K10 ["HeaderSection"]
      119 JUMPIFNOT                        R5 ; [+49]
      120 GETUPVAL                         R12 4
      121 GETTABLEKS                       R12 R12 K5 ["createElement"]
      123 GETUPVAL                         R13 9
      124 GETTABLEKS                       R13 R13 K31 ["ScrollView"]
      126 DUPTABLE                         R14 K35 [{["tag"] = "fill gap-small size-full-0 padding-medium", ["scroll"], ["layout"], ["LayoutOrder"]}]
      127 DUPTABLE                         R15 K39 [{"AutomaticCanvasSize", "ScrollingDirection", "CanvasSize"}]
      128 GETIMPORT                        R16 K43 [Enum.AutomaticSize.Y]
      130 SETTABLEKS                       R16 R15 K36 ["AutomaticCanvasSize"]
      132 GETIMPORT                        R16 K44 [Enum.ScrollingDirection.Y]
      134 SETTABLEKS                       R16 R15 K37 ["ScrollingDirection"]
      136 GETIMPORT                        R16 K47 [UDim2.new]
      138 CALL                             R16 0 1
      139 SETTABLEKS                       R16 R15 K38 ["CanvasSize"]
      141 SETTABLEKS                       R15 R14 K33 ["scroll"]
      143 DUPTABLE                         R15 K52 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment"}]
      144 GETIMPORT                        R16 K53 [Enum.SortOrder.LayoutOrder]
      146 SETTABLEKS                       R16 R15 K48 ["SortOrder"]
      148 GETIMPORT                        R16 K55 [Enum.FillDirection.Vertical]
      150 SETTABLEKS                       R16 R15 K49 ["FillDirection"]
      152 GETIMPORT                        R16 K57 [Enum.HorizontalAlignment.Center]
      154 SETTABLEKS                       R16 R15 K50 ["HorizontalAlignment"]
      156 GETIMPORT                        R16 K59 [Enum.VerticalAlignment.Top]
      158 SETTABLEKS                       R16 R15 K51 ["VerticalAlignment"]
      160 SETTABLEKS                       R15 R14 K34 ["layout"]
      162 MOVE                             R15 R1
      163 CALL                             R15 0 1
      164 SETTABLEKS                       R15 R14 K15 ["LayoutOrder"]
      166 MOVE                             R15 R7
      167 CALL                             R12 3 1
      168 JUMP                             ; [+30]
      169 GETUPVAL                         R12 4
      170 GETTABLEKS                       R12 R12 K5 ["createElement"]
      172 GETUPVAL                         R13 9
      173 GETTABLEKS                       R13 R13 K6 ["View"]
      175 DUPTABLE                         R14 K61 [{["tag"] = "fill gap-small size-full padding-medium", ["LayoutOrder"]}]
      176 MOVE                             R15 R1
      177 CALL                             R15 0 1
      178 SETTABLEKS                       R15 R14 K15 ["LayoutOrder"]
      180 DUPTABLE                         R15 K63 [{"TestModeCompatibilityWarning"}]
      181 GETUPVAL                         R16 4
      182 GETTABLEKS                       R16 R16 K5 ["createElement"]
      184 GETUPVAL                         R17 9
      185 GETTABLEKS                       R17 R17 K64 ["Text"]
      187 DUPTABLE                         R18 K66 [{["tag"] = "size-full auto-y text-body-small text-align-x-center text-align-y-center", ["Text"]}]
      188 LOADK                            R21 K67 ["Label"]
      189 LOADK                            R22 K62 ["TestModeCompatibilityWarning"]
      190 NAMECALL                         R19 R6 K68 ["getText"]
      192 CALL                             R19 3 1
      193 SETTABLEKS                       R19 R18 K64 ["Text"]
      195 CALL                             R16 2 1
      196 SETTABLEKS                       R16 R15 K62 ["TestModeCompatibilityWarning"]
      198 CALL                             R12 3 1
      199 SETTABLEKS                       R12 R11 K11 ["ContentContainer"]
      201 CALL                             R8 3 -1
      202 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PartyEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Components"]
       11 GETTABLEKS                       R2 R0 K4 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Contexts"]
       15 GETTABLEKS                       R3 R0 K4 ["Src"]
       17 GETTABLEKS                       R3 R3 K7 ["Util"]
       19 GETTABLEKS                       R4 R0 K4 ["Src"]
       21 GETTABLEKS                       R4 R4 K8 ["Hooks"]
       23 GETIMPORT                        R5 K10 [require]
       25 GETTABLEKS                       R6 R0 K11 ["Packages"]
       27 GETTABLEKS                       R6 R6 K12 ["React"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K10 [require]
       32 GETTABLEKS                       R7 R0 K11 ["Packages"]
       34 GETTABLEKS                       R7 R7 K13 ["Foundation"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K10 [require]
       39 GETTABLEKS                       R8 R0 K11 ["Packages"]
       41 GETTABLEKS                       R8 R8 K14 ["Framework"]
       43 CALL                             R7 1 1
       44 GETTABLEKS                       R8 R7 K15 ["ContextServices"]
       46 GETTABLEKS                       R9 R8 K16 ["Localization"]
       48 GETTABLEKS                       R10 R7 K7 ["Util"]
       50 GETTABLEKS                       R10 R10 K17 ["counter"]
       52 GETIMPORT                        R11 K10 [require]
       54 GETTABLEKS                       R12 R2 K18 ["PartyContext"]
       56 CALL                             R11 1 1
       57 GETIMPORT                        R12 K10 [require]
       59 GETTABLEKS                       R13 R1 K19 ["ToggleSection"]
       61 CALL                             R12 1 1
       62 GETIMPORT                        R13 K10 [require]
       64 GETTABLEKS                       R14 R1 K20 ["ActionButtonsSection"]
       66 CALL                             R13 1 1
       67 GETIMPORT                        R14 K10 [require]
       69 GETTABLEKS                       R15 R1 K21 ["PartySection"]
       71 CALL                             R14 1 1
       72 GETIMPORT                        R15 K10 [require]
       74 GETTABLEKS                       R16 R3 K22 ["Constants"]
       76 CALL                             R15 1 1
       77 GETIMPORT                        R16 K10 [require]
       79 GETTABLEKS                       R17 R3 K23 ["getPlayerName"]
       81 CALL                             R16 1 1
       82 GETIMPORT                        R17 K10 [require]
       84 GETTABLEKS                       R18 R3 K24 ["getPartyName"]
       86 CALL                             R17 1 1
       87 GETIMPORT                        R18 K10 [require]
       89 GETTABLEKS                       R19 R4 K25 ["useServerClientsTestSelected"]
       91 CALL                             R18 1 1
       92 DUPCLOSURE                       R19 K26 [PROTO_1]
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R18
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R15
       99 CAPTURE                          VAL R16
      100 CAPTURE                          VAL R14
      101 CAPTURE                          VAL R17
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R12
      104 CAPTURE                          VAL R13
      105 RETURN                           R19 1
