PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Member"]
        2 GETTABLEKS                       R2 R0 K1 ["IsSelected"]
        4 GETTABLEKS                       R3 R0 K2 ["IsBlocked"]
        6 GETTABLEKS                       R4 R0 K3 ["IsIneligible"]
        8 MOVE                             R5 R4
        9 JUMPIF                           R5 ; [+4]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K4 ["fflagEarlyTestersPolish"]
       13 AND                              R5 R6 R3
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K5 ["createElement"]
       17 GETUPVAL                         R7 2
       18 DUPTABLE                         R8 K11 [{["LayoutOrder"], ["tag"] = "row align-y-center gap-medium size-full-0 auto-y padding-small radius-medium", ["isDisabled"], ["onActivated"]}]
       19 GETTABLEKS                       R9 R0 K6 ["LayoutOrder"]
       21 SETTABLEKS                       R9 R8 K6 ["LayoutOrder"]
       23 SETTABLEKS                       R3 R8 K9 ["isDisabled"]
       25 JUMPIFNOT                        R3 ; [+2]
       26 LOADNIL                          R9
       27 JUMP                             ; [+2]
       28 GETTABLEKS                       R9 R0 K12 ["OnActivated"]
       30 SETTABLEKS                       R9 R8 K10 ["onActivated"]
       32 DUPTABLE                         R9 K17 [{"Avatar", "Text", "CantInvite", "Checkmark"}]
       33 GETUPVAL                         R10 1
       34 GETTABLEKS                       R10 R10 K5 ["createElement"]
       36 GETUPVAL                         R11 2
       37 DUPTABLE                         R12 K21 [{["LayoutOrder"] = 1, ["tag"] = "auto-xy", ["GroupTransparency"]}]
       38 JUMPIFNOT                        R5 ; [+2]
       39 LOADK                            R13 K22 [0.5]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R13
       42 SETTABLEKS                       R13 R12 K20 ["GroupTransparency"]
       44 DUPTABLE                         R13 K24 [{"Thumbnail"}]
       45 GETUPVAL                         R14 1
       46 GETTABLEKS                       R14 R14 K5 ["createElement"]
       48 GETUPVAL                         R15 3
       49 DUPTABLE                         R16 K27 [{"Id", "Size"}]
       50 GETTABLEKS                       R17 R1 K28 ["userId"]
       52 SETTABLEKS                       R17 R16 K25 ["Id"]
       54 GETUPVAL                         R17 4
       55 SETTABLEKS                       R17 R16 K26 ["Size"]
       57 CALL                             R14 2 1
       58 SETTABLEKS                       R14 R13 K23 ["Thumbnail"]
       60 CALL                             R10 3 1
       61 SETTABLEKS                       R10 R9 K13 ["Avatar"]
       63 GETUPVAL                         R10 1
       64 GETTABLEKS                       R10 R10 K5 ["createElement"]
       66 GETUPVAL                         R11 2
       67 DUPTABLE                         R12 K31 [{["LayoutOrder"] = 2, ["tag"] = "col grow gap-xxsmall auto-y", ["GroupTransparency"]}]
       68 JUMPIFNOT                        R5 ; [+2]
       69 LOADK                            R13 K22 [0.5]
       70 JUMP                             ; [+1]
       71 LOADNIL                          R13
       72 SETTABLEKS                       R13 R12 K20 ["GroupTransparency"]
       74 DUPTABLE                         R13 K34 [{"Title", "Username"}]
       75 GETUPVAL                         R14 1
       76 GETTABLEKS                       R14 R14 K5 ["createElement"]
       78 GETUPVAL                         R15 5
       79 DUPTABLE                         R16 K35 [{["LayoutOrder"] = 1, ["tag"], ["Text"]}]
       80 NEWTABLE                         R17 2 0
       82 MOVE                             R18 R3
       83 JUMPIFNOT                        R18 ; [+1]
       84 NOT                              R18 R5
       85 SETTABLEKS                       R18 R17 K36 ["auto-xy text-title-small content-muted"]
       87 NOT                              R19 R3
       88 OR                               R18 R19 R5
       89 SETTABLEKS                       R18 R17 K37 ["auto-xy text-title-small content-emphasis"]
       91 SETTABLEKS                       R17 R16 K7 ["tag"]
       93 GETTABLEKS                       R17 R1 K38 ["displayName"]
       95 JUMPIF                           R17 ; [+2]
       96 GETTABLEKS                       R17 R1 K39 ["username"]
       98 SETTABLEKS                       R17 R16 K14 ["Text"]
      100 CALL                             R14 2 1
      101 SETTABLEKS                       R14 R13 K32 ["Title"]
      103 GETUPVAL                         R14 1
      104 GETTABLEKS                       R14 R14 K5 ["createElement"]
      106 GETUPVAL                         R15 5
      107 DUPTABLE                         R16 K41 [{["LayoutOrder"] = 2, ["tag"] = "auto-xy text-body-small content-default", ["Text"]}]
      108 LOADK                            R18 K42 ["@"]
      109 GETTABLEKS                       R19 R1 K39 ["username"]
      111 CONCAT                           R17 R18 R19
      112 SETTABLEKS                       R17 R16 K14 ["Text"]
      114 CALL                             R14 2 1
      115 SETTABLEKS                       R14 R13 K33 ["Username"]
      117 CALL                             R10 3 1
      118 SETTABLEKS                       R10 R9 K14 ["Text"]
      120 JUMPIFNOT                        R4 ; [+11]
      121 GETUPVAL                         R10 1
      122 GETTABLEKS                       R10 R10 K5 ["createElement"]
      124 GETUPVAL                         R11 6
      125 DUPTABLE                         R12 K45 [{["Localization"], ["LayoutOrder"] = 3}]
      126 GETTABLEKS                       R13 R0 K43 ["Localization"]
      128 SETTABLEKS                       R13 R12 K43 ["Localization"]
      130 CALL                             R10 2 1
      131 JUMP                             ; [+1]
      132 LOADNIL                          R10
      133 SETTABLEKS                       R10 R9 K15 ["CantInvite"]
      135 JUMPIFNOT                        R2 ; [+7]
      136 GETUPVAL                         R10 1
      137 GETTABLEKS                       R10 R10 K5 ["createElement"]
      139 GETUPVAL                         R11 7
      140 DUPTABLE                         R12 K48 [{["LayoutOrder"] = 3, ["name"] = "check-large"}]
      141 CALL                             R10 2 1
      142 JUMP                             ; [+1]
      143 LOADNIL                          R10
      144 SETTABLEKS                       R10 R9 K16 ["Checkmark"]
      146 CALL                             R6 3 -1
      147 RETURN                           R6 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GroupMembers"]
        3 LENGTH                           R0 R1
        4 JUMPIFNOTEQKN                    R0 K1 [0] ; [+8]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["OnLoadMore"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K3 ["GroupId"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOTEQ                      R0 R1 ; [+9]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["OnSearch"]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K2 ["GroupId"]
       12 GETUPVAL                         R2 3
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R2 R1 K0 ["current"]
        6 ADDK                             R2 R2 K1 [1]
        7 SETTABLEKS                       R2 R1 K0 ["current"]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K0 ["current"]
       12 JUMPIFNOTEQKS                    R0 K2 [""] ; [+2]
       14 RETURN                           R0 0
       15 GETIMPORT                        R2 K4 [delay]
       17 LOADK                            R3 K5 [0.4]
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R1
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R0
       23 CALL                             R2 2 0
       24 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnToggleSelection"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["OnLoadMoreSearchResults"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["GroupId"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R0 R0 K2 ["OnLoadMore"]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K1 ["GroupId"]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["Localization"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useState"]
        5 LOADK                            R3 K2 [""]
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K3 ["useRef"]
       10 LOADN                            R5 0
       11 CALL                             R4 1 1
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K4 ["useEffect"]
       15 NEWCLOSURE                       R6 P0
       16 CAPTURE                          VAL R0
       17 NEWTABLE                         R7 0 3
       19 GETTABLEKS                       R8 R0 K5 ["GroupId"]
       21 GETTABLEKS                       R9 R0 K6 ["GroupMembers"]
       23 GETTABLEKS                       R10 R0 K7 ["OnLoadMore"]
       25 SETLIST                          R7 R8 3 [1]
       27 CALL                             R5 2 0
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K8 ["useCallback"]
       31 NEWCLOSURE                       R6 P1
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R0
       35 NEWTABLE                         R7 0 2
       37 GETTABLEKS                       R8 R0 K5 ["GroupId"]
       39 GETTABLEKS                       R9 R0 K9 ["OnSearch"]
       41 SETLIST                          R7 R8 2 [1]
       43 CALL                             R5 2 1
       44 JUMPIFNOTEQKS                    R2 K2 [""] ; [+2]
       46 LOADB                            R6 0 +1
       47 LOADB                            R6 1
       48 GETTABLEKS                       R7 R0 K10 ["SearchSelection"]
       50 GETTABLEKS                       R8 R0 K11 ["ExcludeUserIds"]
       52 JUMPIF                           R8 ; [+2]
       53 NEWTABLE                         R8 0 0
       55 GETTABLEKS                       R9 R0 K12 ["MemberEligibility"]
       57 JUMPIF                           R9 ; [+2]
       58 NEWTABLE                         R9 0 0
       60 JUMPIFNOT                        R6 ; [+3]
       61 GETTABLEKS                       R10 R0 K13 ["SearchResults"]
       63 JUMP                             ; [+2]
       64 GETTABLEKS                       R10 R0 K6 ["GroupMembers"]
       66 NEWTABLE                         R11 0 0
       68 MOVE                             R12 R10
       69 LOADNIL                          R13
       70 LOADNIL                          R14
       71 FORGPREP                         R12
       72 GETTABLEKS                       R18 R16 K14 ["userId"]
       74 GETTABLE                         R17 R8 R18
       75 JUMPIF                           R17 ; [+7]
       76 FASTCALL2                        TABLE_INSERT R11 R16 ; [+5]
       78 MOVE                             R18 R11
       79 MOVE                             R19 R16
       80 GETIMPORT                        R17 K17 [table.insert]
       82 CALL                             R17 2 0
       83 FORGLOOP                         R12 2 ; [-12]
       85 NEWTABLE                         R12 0 0
       87 MOVE                             R13 R11
       88 LOADNIL                          R14
       89 LOADNIL                          R15
       90 FORGPREP                         R13
       91 GETTABLEKS                       R20 R17 K14 ["userId"]
       93 GETTABLE                         R19 R7 R20
       94 JUMPIFNOTEQKNIL                  R19 ; [+2]
       96 LOADB                            R18 0 +1
       97 LOADB                            R18 1
       98 GETTABLEKS                       R21 R17 K14 ["userId"]
      100 GETTABLE                         R20 R9 R21
      101 JUMPIFEQKB                       R20 FALSE ; [+2]
      103 LOADB                            R19 0 +1
      104 LOADB                            R19 1
      105 LOADK                            R21 K18 ["Member"]
      106 GETTABLEKS                       R22 R17 K14 ["userId"]
      108 CONCAT                           R20 R21 R22
      109 GETUPVAL                         R21 0
      110 GETTABLEKS                       R21 R21 K19 ["createElement"]
      112 GETUPVAL                         R22 1
      113 DUPTABLE                         R23 K25 [{"LayoutOrder", "Member", "IsSelected", "IsBlocked", "IsIneligible", "Localization", "OnActivated"}]
      114 SETTABLEKS                       R16 R23 K20 ["LayoutOrder"]
      116 SETTABLEKS                       R17 R23 K18 ["Member"]
      118 SETTABLEKS                       R18 R23 K21 ["IsSelected"]
      120 GETTABLEKS                       R25 R0 K26 ["IsAtCapacity"]
      122 JUMPIF                           R25 ; [+2]
      123 MOVE                             R24 R19
      124 JUMPIFNOT                        R24 ; [+1]
      125 NOT                              R24 R18
      126 SETTABLEKS                       R24 R23 K22 ["IsBlocked"]
      128 SETTABLEKS                       R19 R23 K23 ["IsIneligible"]
      130 SETTABLEKS                       R1 R23 K0 ["Localization"]
      132 NEWCLOSURE                       R24 P2
      133 CAPTURE                          VAL R0
      134 CAPTURE                          VAL R17
      135 SETTABLEKS                       R24 R23 K24 ["OnActivated"]
      137 CALL                             R21 2 1
      138 SETTABLE                         R21 R12 R20
      139 FORGLOOP                         R13 2 ; [-49]
      141 JUMPIFNOT                        R6 ; [+3]
      142 GETTABLEKS                       R13 R0 K27 ["SearchResultsLoading"]
      144 JUMP                             ; [+2]
      145 GETTABLEKS                       R13 R0 K28 ["GroupMembersLoading"]
      147 JUMPIFNOT                        R6 ; [+3]
      148 GETTABLEKS                       R14 R0 K29 ["SearchResultsExhausted"]
      150 JUMP                             ; [+2]
      151 GETTABLEKS                       R14 R0 K30 ["GroupMembersExhausted"]
      153 GETUPVAL                         R15 0
      154 GETTABLEKS                       R15 R15 K19 ["createElement"]
      156 GETUPVAL                         R16 2
      157 DUPTABLE                         R17 K33 [{["LayoutOrder"], ["tag"] = "col gap-small size-full-0 auto-y"}]
      158 GETTABLEKS                       R18 R0 K20 ["LayoutOrder"]
      160 SETTABLEKS                       R18 R17 K20 ["LayoutOrder"]
      162 DUPTABLE                         R18 K38 [{"SearchLabel", "SearchInput", "Results", "LoadMoreButton"}]
      163 GETUPVAL                         R19 0
      164 GETTABLEKS                       R19 R19 K19 ["createElement"]
      166 GETUPVAL                         R20 3
      167 DUPTABLE                         R21 K42 [{["LayoutOrder"] = 1, ["tag"] = "auto-xy text-caption-small content-default", ["Text"]}]
      168 LOADK                            R24 K43 ["SearchBar"]
      169 LOADK                            R25 K44 ["SearchGroupMembers"]
      170 NAMECALL                         R22 R1 K45 ["getText"]
      172 CALL                             R22 3 1
      173 SETTABLEKS                       R22 R21 K41 ["Text"]
      175 CALL                             R19 2 1
      176 SETTABLEKS                       R19 R18 K34 ["SearchLabel"]
      178 GETUPVAL                         R19 0
      179 GETTABLEKS                       R19 R19 K19 ["createElement"]
      181 GETUPVAL                         R20 4
      182 DUPTABLE                         R21 K56 [{["LayoutOrder"] = 2, ["label"] = "", ["placeholder"], ["text"], ["onChanged"], ["hasClearButton"] = True, ["size"], ["width"], ["isDisabled"]}]
      183 LOADK                            R24 K43 ["SearchBar"]
      184 LOADK                            R25 K57 ["AddMembers"]
      185 NAMECALL                         R22 R1 K45 ["getText"]
      187 CALL                             R22 3 1
      188 SETTABLEKS                       R22 R21 K48 ["placeholder"]
      190 SETTABLEKS                       R2 R21 K49 ["text"]
      192 SETTABLEKS                       R5 R21 K50 ["onChanged"]
      194 GETUPVAL                         R22 5
      195 GETTABLEKS                       R22 R22 K58 ["Medium"]
      197 SETTABLEKS                       R22 R21 K53 ["size"]
      199 GETIMPORT                        R22 K61 [UDim.new]
      201 LOADN                            R23 1
      202 LOADN                            R24 0
      203 CALL                             R22 2 1
      204 SETTABLEKS                       R22 R21 K54 ["width"]
      206 GETTABLEKS                       R22 R0 K26 ["IsAtCapacity"]
      208 SETTABLEKS                       R22 R21 K55 ["isDisabled"]
      210 CALL                             R19 2 1
      211 SETTABLEKS                       R19 R18 K35 ["SearchInput"]
      213 GETUPVAL                         R19 0
      214 GETTABLEKS                       R19 R19 K19 ["createElement"]
      216 GETUPVAL                         R20 2
      217 DUPTABLE                         R21 K64 [{["LayoutOrder"] = 3, ["tag"] = "col gap-xxsmall size-full-0 auto-y"}]
      218 MOVE                             R22 R12
      219 CALL                             R19 3 1
      220 SETTABLEKS                       R19 R18 K36 ["Results"]
      222 JUMPIF                           R14 ; [+33]
      223 GETUPVAL                         R19 0
      224 GETTABLEKS                       R19 R19 K19 ["createElement"]
      226 GETUPVAL                         R20 6
      227 DUPTABLE                         R21 K69 [{["LayoutOrder"] = 4, ["text"], ["variant"], ["size"] = "Small", ["isDisabled"], ["onActivated"]}]
      228 JUMPIFNOT                        R13 ; [+6]
      229 LOADK                            R24 K70 ["Description"]
      230 LOADK                            R25 K71 ["Loading"]
      231 NAMECALL                         R22 R1 K45 ["getText"]
      233 CALL                             R22 3 1
      234 JUMP                             ; [+5]
      235 LOADK                            R24 K72 ["Button"]
      236 LOADK                            R25 K73 ["LoadMore"]
      237 NAMECALL                         R22 R1 K45 ["getText"]
      239 CALL                             R22 3 1
      240 SETTABLEKS                       R22 R21 K49 ["text"]
      242 GETUPVAL                         R22 7
      243 GETTABLEKS                       R22 R22 K74 ["Utility"]
      245 SETTABLEKS                       R22 R21 K66 ["variant"]
      247 SETTABLEKS                       R13 R21 K55 ["isDisabled"]
      249 NEWCLOSURE                       R22 P3
      250 CAPTURE                          VAL R6
      251 CAPTURE                          VAL R0
      252 SETTABLEKS                       R22 R21 K68 ["onActivated"]
      254 CALL                             R19 2 1
      255 JUMP                             ; [+1]
      256 LOADNIL                          R19
      257 SETTABLEKS                       R19 R18 K37 ["LoadMoreButton"]
      259 CALL                             R15 3 -1
      260 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Bin"]
       15 GETTABLEKS                       R2 R2 K6 ["defineLuaFlags"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K7 ["Packages"]
       22 GETTABLEKS                       R3 R3 K8 ["React"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K7 ["Packages"]
       29 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K10 ["View"]
       34 GETTABLEKS                       R5 R3 K11 ["Text"]
       36 GETTABLEKS                       R6 R3 K12 ["Icon"]
       38 GETTABLEKS                       R7 R3 K13 ["Button"]
       40 GETTABLEKS                       R8 R3 K14 ["TextInput"]
       42 GETTABLEKS                       R9 R3 K15 ["Enums"]
       44 GETTABLEKS                       R9 R9 K16 ["ButtonVariant"]
       46 GETTABLEKS                       R10 R3 K15 ["Enums"]
       48 GETTABLEKS                       R10 R10 K17 ["InputSize"]
       50 GETIMPORT                        R11 K4 [require]
       52 GETTABLEKS                       R12 R0 K18 ["Src"]
       54 GETTABLEKS                       R12 R12 K19 ["Components"]
       56 GETTABLEKS                       R12 R12 K20 ["Thumbnails"]
       58 GETTABLEKS                       R12 R12 K21 ["UserHeadshotThumbnail"]
       60 CALL                             R11 1 1
       61 GETIMPORT                        R12 K4 [require]
       63 GETTABLEKS                       R13 R0 K18 ["Src"]
       65 GETTABLEKS                       R13 R13 K19 ["Components"]
       67 GETTABLEKS                       R13 R13 K22 ["EarlyTesters"]
       69 GETTABLEKS                       R13 R13 K23 ["CantInviteLabel"]
       71 CALL                             R12 1 1
       72 GETIMPORT                        R13 K26 [UDim2.fromOffset]
       74 LOADN                            R14 40
       75 LOADN                            R15 40
       76 CALL                             R13 2 1
       77 GETIMPORT                        R14 K4 [require]
       79 GETTABLEKS                       R15 R0 K18 ["Src"]
       81 GETTABLEKS                       R15 R15 K27 ["Types"]
       83 CALL                             R14 1 1
       84 DUPCLOSURE                       R15 K28 [PROTO_0]
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R13
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R12
       92 CAPTURE                          VAL R6
       93 DUPCLOSURE                       R16 K29 [PROTO_6]
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R15
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R7
      101 CAPTURE                          VAL R9
      102 RETURN                           R16 1
