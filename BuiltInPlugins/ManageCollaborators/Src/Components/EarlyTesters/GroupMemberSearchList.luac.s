PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Member"]
        2 GETTABLEKS                       R2 R0 K1 ["IsSelected"]
        4 GETTABLEKS                       R3 R0 K2 ["IsBlocked"]
        6 GETTABLEKS                       R4 R0 K3 ["IsIneligible"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["createElement"]
       11 GETUPVAL                         R6 1
       12 DUPTABLE                         R7 K10 [{["LayoutOrder"], ["tag"] = "row align-y-center gap-medium size-full-0 auto-y padding-small radius-medium", ["isDisabled"], ["onActivated"]}]
       13 GETTABLEKS                       R8 R0 K5 ["LayoutOrder"]
       15 SETTABLEKS                       R8 R7 K5 ["LayoutOrder"]
       17 SETTABLEKS                       R3 R7 K8 ["isDisabled"]
       19 JUMPIFNOT                        R3 ; [+2]
       20 LOADNIL                          R8
       21 JUMP                             ; [+2]
       22 GETTABLEKS                       R8 R0 K11 ["OnActivated"]
       24 SETTABLEKS                       R8 R7 K9 ["onActivated"]
       26 DUPTABLE                         R8 K16 [{"Avatar", "Text", "CantInvite", "Checkmark"}]
       27 GETUPVAL                         R9 0
       28 GETTABLEKS                       R9 R9 K4 ["createElement"]
       30 GETUPVAL                         R10 1
       31 DUPTABLE                         R11 K20 [{["LayoutOrder"] = 1, ["tag"] = "auto-xy", ["GroupTransparency"]}]
       32 JUMPIFNOT                        R4 ; [+2]
       33 LOADK                            R12 K21 [0.5]
       34 JUMP                             ; [+1]
       35 LOADNIL                          R12
       36 SETTABLEKS                       R12 R11 K19 ["GroupTransparency"]
       38 DUPTABLE                         R12 K23 [{"Thumbnail"}]
       39 GETUPVAL                         R13 0
       40 GETTABLEKS                       R13 R13 K4 ["createElement"]
       42 GETUPVAL                         R14 2
       43 DUPTABLE                         R15 K26 [{"Id", "Size"}]
       44 GETTABLEKS                       R16 R1 K27 ["userId"]
       46 SETTABLEKS                       R16 R15 K24 ["Id"]
       48 GETUPVAL                         R16 3
       49 SETTABLEKS                       R16 R15 K25 ["Size"]
       51 CALL                             R13 2 1
       52 SETTABLEKS                       R13 R12 K22 ["Thumbnail"]
       54 CALL                             R9 3 1
       55 SETTABLEKS                       R9 R8 K12 ["Avatar"]
       57 GETUPVAL                         R9 0
       58 GETTABLEKS                       R9 R9 K4 ["createElement"]
       60 GETUPVAL                         R10 1
       61 DUPTABLE                         R11 K30 [{["LayoutOrder"] = 2, ["tag"] = "col grow gap-xxsmall auto-y", ["GroupTransparency"]}]
       62 JUMPIFNOT                        R4 ; [+2]
       63 LOADK                            R12 K21 [0.5]
       64 JUMP                             ; [+1]
       65 LOADNIL                          R12
       66 SETTABLEKS                       R12 R11 K19 ["GroupTransparency"]
       68 DUPTABLE                         R12 K33 [{"Title", "Username"}]
       69 GETUPVAL                         R13 0
       70 GETTABLEKS                       R13 R13 K4 ["createElement"]
       72 GETUPVAL                         R14 4
       73 DUPTABLE                         R15 K34 [{["LayoutOrder"] = 1, ["tag"], ["Text"]}]
       74 NEWTABLE                         R16 2 0
       76 MOVE                             R17 R3
       77 JUMPIFNOT                        R17 ; [+1]
       78 NOT                              R17 R4
       79 SETTABLEKS                       R17 R16 K35 ["auto-xy text-title-small content-muted"]
       81 NOT                              R18 R3
       82 OR                               R17 R18 R4
       83 SETTABLEKS                       R17 R16 K36 ["auto-xy text-title-small content-emphasis"]
       85 SETTABLEKS                       R16 R15 K6 ["tag"]
       87 GETTABLEKS                       R16 R1 K37 ["displayName"]
       89 JUMPIF                           R16 ; [+2]
       90 GETTABLEKS                       R16 R1 K38 ["username"]
       92 SETTABLEKS                       R16 R15 K13 ["Text"]
       94 CALL                             R13 2 1
       95 SETTABLEKS                       R13 R12 K31 ["Title"]
       97 GETUPVAL                         R13 0
       98 GETTABLEKS                       R13 R13 K4 ["createElement"]
      100 GETUPVAL                         R14 4
      101 DUPTABLE                         R15 K40 [{["LayoutOrder"] = 2, ["tag"] = "auto-xy text-body-small content-default", ["Text"]}]
      102 LOADK                            R17 K41 ["@"]
      103 GETTABLEKS                       R18 R1 K38 ["username"]
      105 CONCAT                           R16 R17 R18
      106 SETTABLEKS                       R16 R15 K13 ["Text"]
      108 CALL                             R13 2 1
      109 SETTABLEKS                       R13 R12 K32 ["Username"]
      111 CALL                             R9 3 1
      112 SETTABLEKS                       R9 R8 K13 ["Text"]
      114 JUMPIFNOT                        R4 ; [+11]
      115 GETUPVAL                         R9 0
      116 GETTABLEKS                       R9 R9 K4 ["createElement"]
      118 GETUPVAL                         R10 5
      119 DUPTABLE                         R11 K44 [{["Localization"], ["LayoutOrder"] = 3}]
      120 GETTABLEKS                       R12 R0 K42 ["Localization"]
      122 SETTABLEKS                       R12 R11 K42 ["Localization"]
      124 CALL                             R9 2 1
      125 JUMP                             ; [+1]
      126 LOADNIL                          R9
      127 SETTABLEKS                       R9 R8 K14 ["CantInvite"]
      129 JUMPIFNOT                        R2 ; [+7]
      130 GETUPVAL                         R9 0
      131 GETTABLEKS                       R9 R9 K4 ["createElement"]
      133 GETUPVAL                         R10 6
      134 DUPTABLE                         R11 K47 [{["LayoutOrder"] = 3, ["name"] = "check-large"}]
      135 CALL                             R9 2 1
      136 JUMP                             ; [+1]
      137 LOADNIL                          R9
      138 SETTABLEKS                       R9 R8 K15 ["Checkmark"]
      140 CALL                             R5 3 -1
      141 RETURN                           R5 -1

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
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["React"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["Foundation"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K8 ["View"]
       27 GETTABLEKS                       R4 R2 K9 ["Text"]
       29 GETTABLEKS                       R5 R2 K10 ["Icon"]
       31 GETTABLEKS                       R6 R2 K11 ["Button"]
       33 GETTABLEKS                       R7 R2 K12 ["TextInput"]
       35 GETTABLEKS                       R8 R2 K13 ["Enums"]
       37 GETTABLEKS                       R8 R8 K14 ["ButtonVariant"]
       39 GETTABLEKS                       R9 R2 K13 ["Enums"]
       41 GETTABLEKS                       R9 R9 K15 ["InputSize"]
       43 GETIMPORT                        R10 K4 [require]
       45 GETTABLEKS                       R11 R0 K16 ["Src"]
       47 GETTABLEKS                       R11 R11 K17 ["Components"]
       49 GETTABLEKS                       R11 R11 K18 ["Thumbnails"]
       51 GETTABLEKS                       R11 R11 K19 ["UserHeadshotThumbnail"]
       53 CALL                             R10 1 1
       54 GETIMPORT                        R11 K4 [require]
       56 GETTABLEKS                       R12 R0 K16 ["Src"]
       58 GETTABLEKS                       R12 R12 K17 ["Components"]
       60 GETTABLEKS                       R12 R12 K20 ["EarlyTesters"]
       62 GETTABLEKS                       R12 R12 K21 ["CantInviteLabel"]
       64 CALL                             R11 1 1
       65 GETIMPORT                        R12 K24 [UDim2.fromOffset]
       67 LOADN                            R13 40
       68 LOADN                            R14 40
       69 CALL                             R12 2 1
       70 GETIMPORT                        R13 K4 [require]
       72 GETTABLEKS                       R14 R0 K16 ["Src"]
       74 GETTABLEKS                       R14 R14 K25 ["Types"]
       76 CALL                             R13 1 1
       77 DUPCLOSURE                       R14 K26 [PROTO_0]
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R12
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R5
       85 DUPCLOSURE                       R15 K27 [PROTO_6]
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R14
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R8
       94 RETURN                           R15 1
