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
       29 GETUPVAL                         R6 3
       30 GETTABLEKS                       R5 R6 K7 ["UNASSIGNED_PARTY_ID"]
       32 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       34 MOVE                             R4 R2
       35 GETIMPORT                        R3 K4 [table.insert]
       37 CALL                             R3 2 0
       38 MOVE                             R3 R2
       39 LOADNIL                          R4
       40 LOADNIL                          R5
       41 FORGPREP                         R3
       42 GETUPVAL                         R9 3
       43 GETTABLEKS                       R8 R9 K7 ["UNASSIGNED_PARTY_ID"]
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
       83 GETUPVAL                         R13 5
       84 GETTABLEKS                       R12 R13 K16 ["createElement"]
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
      112 LOADN                            R6 255
      113 GETUPVAL                         R7 8
      114 MINUS                            R4 R7
      115 LOADN                            R5 255
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
      134 GETUPVAL                         R11 3
      135 GETTABLEKS                       R10 R11 K7 ["UNASSIGNED_PARTY_ID"]
      137 SETTABLEKS                       R10 R9 K14 ["currentPartyId"]
      139 FASTCALL2                        TABLE_INSERT R3 R9 ; [+4]
      141 MOVE                             R8 R3
      142 GETIMPORT                        R7 K4 [table.insert]
      144 CALL                             R7 2 0
      145 FORNLOOP                         R4
      146 MOVE                             R5 R0
      147 GETUPVAL                         R7 5
      148 GETTABLEKS                       R6 R7 K16 ["createElement"]
      150 GETUPVAL                         R7 6
      151 DUPTABLE                         R8 K22 [{"key", "partyId", "partyName", "players", "LayoutOrder"}]
      152 GETUPVAL                         R10 3
      153 GETTABLEKS                       R9 R10 K7 ["UNASSIGNED_PARTY_ID"]
      155 SETTABLEKS                       R9 R8 K17 ["key"]
      157 GETUPVAL                         R10 3
      158 GETTABLEKS                       R9 R10 K7 ["UNASSIGNED_PARTY_ID"]
      160 SETTABLEKS                       R9 R8 K18 ["partyId"]
      162 GETUPVAL                         R9 7
      163 GETUPVAL                         R11 3
      164 GETTABLEKS                       R10 R11 K7 ["UNASSIGNED_PARTY_ID"]
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
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useParties"]
        5 CALL                             R2 0 1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K1 ["usePlayerMappings"]
        9 CALL                             R3 0 1
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R4 R5 K2 ["usePlayerCount"]
       13 CALL                             R4 0 1
       14 GETUPVAL                         R5 2
       15 CALL                             R5 0 1
       16 GETUPVAL                         R6 3
       17 NAMECALL                         R6 R6 K3 ["use"]
       19 CALL                             R6 1 1
       20 GETUPVAL                         R8 4
       21 GETTABLEKS                       R7 R8 K4 ["useMemo"]
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
       43 GETUPVAL                         R9 4
       44 GETTABLEKS                       R8 R9 K5 ["createElement"]
       46 GETUPVAL                         R10 9
       47 GETTABLEKS                       R9 R10 K6 ["View"]
       49 DUPTABLE                         R10 K8 [{"tag"}]
       50 LOADK                            R11 K9 ["size-full col gap-medium padding-medium bg-surface-200"]
       51 SETTABLEKS                       R11 R10 K7 ["tag"]
       53 DUPTABLE                         R11 K12 [{"HeaderSection", "ContentContainer"}]
       54 GETUPVAL                         R13 4
       55 GETTABLEKS                       R12 R13 K5 ["createElement"]
       57 GETUPVAL                         R14 9
       58 GETTABLEKS                       R13 R14 K6 ["View"]
       60 DUPTABLE                         R14 K15 [{"tag", "GroupTransparency", "LayoutOrder"}]
       61 LOADK                            R15 K16 ["size-full-0 auto-y col gap-medium"]
       62 SETTABLEKS                       R15 R14 K7 ["tag"]
       64 JUMPIFNOT                        R5 ; [+2]
       65 LOADN                            R15 0
       66 JUMP                             ; [+3]
       67 GETUPVAL                         R16 5
       68 GETTABLEKS                       R15 R16 K17 ["DISABLED_TRANSPARENCY"]
       70 SETTABLEKS                       R15 R14 K13 ["GroupTransparency"]
       72 LOADN                            R15 0
       73 SETTABLEKS                       R15 R14 K14 ["LayoutOrder"]
       75 DUPTABLE                         R15 K21 [{"ToggleHeader", "Divider", "ActionsSection"}]
       76 GETUPVAL                         R17 4
       77 GETTABLEKS                       R16 R17 K5 ["createElement"]
       79 GETUPVAL                         R17 10
       80 DUPTABLE                         R18 K22 [{"LayoutOrder"}]
       81 MOVE                             R19 R1
       82 CALL                             R19 0 1
       83 SETTABLEKS                       R19 R18 K14 ["LayoutOrder"]
       85 CALL                             R16 2 1
       86 SETTABLEKS                       R16 R15 K18 ["ToggleHeader"]
       88 GETUPVAL                         R17 4
       89 GETTABLEKS                       R16 R17 K5 ["createElement"]
       91 GETUPVAL                         R18 9
       92 GETTABLEKS                       R17 R18 K19 ["Divider"]
       94 DUPTABLE                         R18 K24 [{"variant", "LayoutOrder"}]
       95 GETUPVAL                         R22 9
       96 GETTABLEKS                       R21 R22 K25 ["Enums"]
       98 GETTABLEKS                       R20 R21 K26 ["DividerVariant"]
      100 GETTABLEKS                       R19 R20 K27 ["Default"]
      102 SETTABLEKS                       R19 R18 K23 ["variant"]
      104 MOVE                             R19 R1
      105 CALL                             R19 0 1
      106 SETTABLEKS                       R19 R18 K14 ["LayoutOrder"]
      108 CALL                             R16 2 1
      109 SETTABLEKS                       R16 R15 K19 ["Divider"]
      111 GETUPVAL                         R17 4
      112 GETTABLEKS                       R16 R17 K5 ["createElement"]
      114 GETUPVAL                         R17 11
      115 DUPTABLE                         R18 K29 [{"playerCount", "LayoutOrder"}]
      116 SETTABLEKS                       R4 R18 K28 ["playerCount"]
      118 MOVE                             R19 R1
      119 CALL                             R19 0 1
      120 SETTABLEKS                       R19 R18 K14 ["LayoutOrder"]
      122 CALL                             R16 2 1
      123 SETTABLEKS                       R16 R15 K20 ["ActionsSection"]
      125 CALL                             R12 3 1
      126 SETTABLEKS                       R12 R11 K10 ["HeaderSection"]
      128 JUMPIFNOT                        R5 ; [+52]
      129 GETUPVAL                         R13 4
      130 GETTABLEKS                       R12 R13 K5 ["createElement"]
      132 GETUPVAL                         R14 9
      133 GETTABLEKS                       R13 R14 K30 ["ScrollView"]
      135 DUPTABLE                         R14 K33 [{"tag", "scroll", "layout", "LayoutOrder"}]
      136 LOADK                            R15 K34 ["size-full-0 fill gap-small padding-medium"]
      137 SETTABLEKS                       R15 R14 K7 ["tag"]
      139 DUPTABLE                         R15 K38 [{"AutomaticCanvasSize", "ScrollingDirection", "CanvasSize"}]
      140 GETIMPORT                        R16 K42 [Enum.AutomaticSize.Y]
      142 SETTABLEKS                       R16 R15 K35 ["AutomaticCanvasSize"]
      144 GETIMPORT                        R16 K43 [Enum.ScrollingDirection.Y]
      146 SETTABLEKS                       R16 R15 K36 ["ScrollingDirection"]
      148 GETIMPORT                        R16 K46 [UDim2.new]
      150 CALL                             R16 0 1
      151 SETTABLEKS                       R16 R15 K37 ["CanvasSize"]
      153 SETTABLEKS                       R15 R14 K31 ["scroll"]
      155 DUPTABLE                         R15 K51 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment"}]
      156 GETIMPORT                        R16 K52 [Enum.SortOrder.LayoutOrder]
      158 SETTABLEKS                       R16 R15 K47 ["SortOrder"]
      160 GETIMPORT                        R16 K54 [Enum.FillDirection.Vertical]
      162 SETTABLEKS                       R16 R15 K48 ["FillDirection"]
      164 GETIMPORT                        R16 K56 [Enum.HorizontalAlignment.Center]
      166 SETTABLEKS                       R16 R15 K49 ["HorizontalAlignment"]
      168 GETIMPORT                        R16 K58 [Enum.VerticalAlignment.Top]
      170 SETTABLEKS                       R16 R15 K50 ["VerticalAlignment"]
      172 SETTABLEKS                       R15 R14 K32 ["layout"]
      174 MOVE                             R15 R1
      175 CALL                             R15 0 1
      176 SETTABLEKS                       R15 R14 K14 ["LayoutOrder"]
      178 MOVE                             R15 R7
      179 CALL                             R12 3 1
      180 JUMP                             ; [+36]
      181 GETUPVAL                         R13 4
      182 GETTABLEKS                       R12 R13 K5 ["createElement"]
      184 GETUPVAL                         R14 9
      185 GETTABLEKS                       R13 R14 K6 ["View"]
      187 DUPTABLE                         R14 K59 [{"tag", "LayoutOrder"}]
      188 LOADK                            R15 K60 ["size-full fill gap-small padding-medium"]
      189 SETTABLEKS                       R15 R14 K7 ["tag"]
      191 MOVE                             R15 R1
      192 CALL                             R15 0 1
      193 SETTABLEKS                       R15 R14 K14 ["LayoutOrder"]
      195 DUPTABLE                         R15 K62 [{"TestModeCompatibilityWarning"}]
      196 GETUPVAL                         R17 4
      197 GETTABLEKS                       R16 R17 K5 ["createElement"]
      199 GETUPVAL                         R18 9
      200 GETTABLEKS                       R17 R18 K63 ["Text"]
      202 DUPTABLE                         R18 K64 [{"tag", "Text"}]
      203 LOADK                            R19 K65 ["text-body-small size-full auto-y text-align-x-center text-align-y-center"]
      204 SETTABLEKS                       R19 R18 K7 ["tag"]
      206 LOADK                            R21 K66 ["Label"]
      207 LOADK                            R22 K61 ["TestModeCompatibilityWarning"]
      208 NAMECALL                         R19 R6 K67 ["getText"]
      210 CALL                             R19 3 1
      211 SETTABLEKS                       R19 R18 K63 ["Text"]
      213 CALL                             R16 2 1
      214 SETTABLEKS                       R16 R15 K61 ["TestModeCompatibilityWarning"]
      216 CALL                             R12 3 1
      217 SETTABLEKS                       R12 R11 K11 ["ContentContainer"]
      219 CALL                             R8 3 -1
      220 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PartyEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R2 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R2 K5 ["Components"]
       11 GETTABLEKS                       R3 R0 K4 ["Src"]
       13 GETTABLEKS                       R2 R3 K6 ["Contexts"]
       15 GETTABLEKS                       R4 R0 K4 ["Src"]
       17 GETTABLEKS                       R3 R4 K7 ["Util"]
       19 GETTABLEKS                       R5 R0 K4 ["Src"]
       21 GETTABLEKS                       R4 R5 K8 ["Hooks"]
       23 GETIMPORT                        R5 K10 [require]
       25 GETTABLEKS                       R7 R0 K11 ["Packages"]
       27 GETTABLEKS                       R6 R7 K12 ["React"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K10 [require]
       32 GETTABLEKS                       R8 R0 K11 ["Packages"]
       34 GETTABLEKS                       R7 R8 K13 ["Foundation"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K10 [require]
       39 GETTABLEKS                       R9 R0 K11 ["Packages"]
       41 GETTABLEKS                       R8 R9 K14 ["Framework"]
       43 CALL                             R7 1 1
       44 GETTABLEKS                       R8 R7 K15 ["ContextServices"]
       46 GETTABLEKS                       R9 R8 K16 ["Localization"]
       48 GETTABLEKS                       R11 R7 K7 ["Util"]
       50 GETTABLEKS                       R10 R11 K17 ["counter"]
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
