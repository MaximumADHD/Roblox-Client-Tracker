PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Member"]
        2 GETTABLEKS                       R2 R0 K1 ["IsSelected"]
        4 GETTABLEKS                       R3 R0 K2 ["IsBlocked"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K9 [{["LayoutOrder"], ["tag"] = "row align-y-center gap-medium size-full-0 auto-y padding-small radius-medium", ["isDisabled"], ["onActivated"]}]
       11 GETTABLEKS                       R7 R0 K4 ["LayoutOrder"]
       13 SETTABLEKS                       R7 R6 K4 ["LayoutOrder"]
       15 SETTABLEKS                       R3 R6 K7 ["isDisabled"]
       17 JUMPIFNOT                        R3 ; [+2]
       18 LOADNIL                          R7
       19 JUMP                             ; [+2]
       20 GETTABLEKS                       R7 R0 K10 ["OnActivated"]
       22 SETTABLEKS                       R7 R6 K8 ["onActivated"]
       24 DUPTABLE                         R7 K14 [{"Avatar", "Text", "Checkmark"}]
       25 GETUPVAL                         R8 0
       26 GETTABLEKS                       R8 R8 K3 ["createElement"]
       28 GETUPVAL                         R9 2
       29 DUPTABLE                         R10 K18 [{["LayoutOrder"] = 1, ["Id"], ["Size"]}]
       30 GETTABLEKS                       R11 R1 K19 ["userId"]
       32 SETTABLEKS                       R11 R10 K16 ["Id"]
       34 GETUPVAL                         R11 3
       35 SETTABLEKS                       R11 R10 K17 ["Size"]
       37 CALL                             R8 2 1
       38 SETTABLEKS                       R8 R7 K11 ["Avatar"]
       40 GETUPVAL                         R8 0
       41 GETTABLEKS                       R8 R8 K3 ["createElement"]
       43 GETUPVAL                         R9 1
       44 DUPTABLE                         R10 K22 [{["LayoutOrder"] = 2, ["tag"] = "col grow gap-xxsmall auto-y"}]
       45 DUPTABLE                         R11 K25 [{"Title", "Username"}]
       46 GETUPVAL                         R12 0
       47 GETTABLEKS                       R12 R12 K3 ["createElement"]
       49 GETUPVAL                         R13 4
       50 DUPTABLE                         R14 K26 [{["LayoutOrder"] = 1, ["tag"], ["Text"]}]
       51 NEWTABLE                         R15 2 0
       53 SETTABLEKS                       R3 R15 K27 ["auto-xy text-title-small content-muted"]
       55 NOT                              R16 R3
       56 SETTABLEKS                       R16 R15 K28 ["auto-xy text-title-small content-emphasis"]
       58 SETTABLEKS                       R15 R14 K5 ["tag"]
       60 GETTABLEKS                       R15 R1 K29 ["displayName"]
       62 JUMPIF                           R15 ; [+2]
       63 GETTABLEKS                       R15 R1 K30 ["username"]
       65 SETTABLEKS                       R15 R14 K12 ["Text"]
       67 CALL                             R12 2 1
       68 SETTABLEKS                       R12 R11 K23 ["Title"]
       70 GETUPVAL                         R12 0
       71 GETTABLEKS                       R12 R12 K3 ["createElement"]
       73 GETUPVAL                         R13 4
       74 DUPTABLE                         R14 K32 [{["LayoutOrder"] = 2, ["tag"] = "auto-xy text-body-small content-default", ["Text"]}]
       75 LOADK                            R16 K33 ["@"]
       76 GETTABLEKS                       R17 R1 K30 ["username"]
       78 CONCAT                           R15 R16 R17
       79 SETTABLEKS                       R15 R14 K12 ["Text"]
       81 CALL                             R12 2 1
       82 SETTABLEKS                       R12 R11 K24 ["Username"]
       84 CALL                             R8 3 1
       85 SETTABLEKS                       R8 R7 K12 ["Text"]
       87 JUMPIFNOT                        R2 ; [+7]
       88 GETUPVAL                         R8 0
       89 GETTABLEKS                       R8 R8 K3 ["createElement"]
       91 GETUPVAL                         R9 5
       92 DUPTABLE                         R10 K37 [{["LayoutOrder"] = 3, ["name"] = "check-large"}]
       93 CALL                             R8 2 1
       94 JUMP                             ; [+1]
       95 LOADNIL                          R8
       96 SETTABLEKS                       R8 R7 K13 ["Checkmark"]
       98 CALL                             R4 3 -1
       99 RETURN                           R4 -1

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
       55 JUMPIFNOT                        R6 ; [+3]
       56 GETTABLEKS                       R9 R0 K12 ["SearchResults"]
       58 JUMP                             ; [+2]
       59 GETTABLEKS                       R9 R0 K6 ["GroupMembers"]
       61 NEWTABLE                         R10 0 0
       63 MOVE                             R11 R9
       64 LOADNIL                          R12
       65 LOADNIL                          R13
       66 FORGPREP                         R11
       67 GETTABLEKS                       R17 R15 K13 ["userId"]
       69 GETTABLE                         R16 R8 R17
       70 JUMPIF                           R16 ; [+7]
       71 FASTCALL2                        TABLE_INSERT R10 R15 ; [+5]
       73 MOVE                             R17 R10
       74 MOVE                             R18 R15
       75 GETIMPORT                        R16 K16 [table.insert]
       77 CALL                             R16 2 0
       78 FORGLOOP                         R11 2 ; [-12]
       80 NEWTABLE                         R11 0 0
       82 MOVE                             R12 R10
       83 LOADNIL                          R13
       84 LOADNIL                          R14
       85 FORGPREP                         R12
       86 GETTABLEKS                       R19 R16 K13 ["userId"]
       88 GETTABLE                         R18 R7 R19
       89 JUMPIFNOTEQKNIL                  R18 ; [+2]
       91 LOADB                            R17 0 +1
       92 LOADB                            R17 1
       93 LOADK                            R19 K17 ["Member"]
       94 GETTABLEKS                       R20 R16 K13 ["userId"]
       96 CONCAT                           R18 R19 R20
       97 GETUPVAL                         R19 0
       98 GETTABLEKS                       R19 R19 K18 ["createElement"]
      100 GETUPVAL                         R20 1
      101 DUPTABLE                         R21 K23 [{"LayoutOrder", "Member", "IsSelected", "IsBlocked", "OnActivated"}]
      102 SETTABLEKS                       R15 R21 K19 ["LayoutOrder"]
      104 SETTABLEKS                       R16 R21 K17 ["Member"]
      106 SETTABLEKS                       R17 R21 K20 ["IsSelected"]
      108 GETTABLEKS                       R22 R0 K24 ["IsAtCapacity"]
      110 JUMPIFNOT                        R22 ; [+1]
      111 NOT                              R22 R17
      112 SETTABLEKS                       R22 R21 K21 ["IsBlocked"]
      114 NEWCLOSURE                       R22 P2
      115 CAPTURE                          VAL R0
      116 CAPTURE                          VAL R16
      117 SETTABLEKS                       R22 R21 K22 ["OnActivated"]
      119 CALL                             R19 2 1
      120 SETTABLE                         R19 R11 R18
      121 FORGLOOP                         R12 2 ; [-36]
      123 JUMPIFNOT                        R6 ; [+3]
      124 GETTABLEKS                       R12 R0 K25 ["SearchResultsLoading"]
      126 JUMP                             ; [+2]
      127 GETTABLEKS                       R12 R0 K26 ["GroupMembersLoading"]
      129 JUMPIFNOT                        R6 ; [+3]
      130 GETTABLEKS                       R13 R0 K27 ["SearchResultsExhausted"]
      132 JUMP                             ; [+2]
      133 GETTABLEKS                       R13 R0 K28 ["GroupMembersExhausted"]
      135 GETUPVAL                         R14 0
      136 GETTABLEKS                       R14 R14 K18 ["createElement"]
      138 GETUPVAL                         R15 2
      139 DUPTABLE                         R16 K31 [{["LayoutOrder"], ["tag"] = "col gap-small size-full-0 auto-y"}]
      140 GETTABLEKS                       R17 R0 K19 ["LayoutOrder"]
      142 SETTABLEKS                       R17 R16 K19 ["LayoutOrder"]
      144 DUPTABLE                         R17 K36 [{"SearchLabel", "SearchInput", "Results", "LoadMoreButton"}]
      145 GETUPVAL                         R18 0
      146 GETTABLEKS                       R18 R18 K18 ["createElement"]
      148 GETUPVAL                         R19 3
      149 DUPTABLE                         R20 K40 [{["LayoutOrder"] = 1, ["tag"] = "auto-xy text-caption-small content-default", ["Text"]}]
      150 LOADK                            R23 K41 ["SearchBar"]
      151 LOADK                            R24 K42 ["SearchGroupMembers"]
      152 NAMECALL                         R21 R1 K43 ["getText"]
      154 CALL                             R21 3 1
      155 SETTABLEKS                       R21 R20 K39 ["Text"]
      157 CALL                             R18 2 1
      158 SETTABLEKS                       R18 R17 K32 ["SearchLabel"]
      160 GETUPVAL                         R18 0
      161 GETTABLEKS                       R18 R18 K18 ["createElement"]
      163 GETUPVAL                         R19 4
      164 DUPTABLE                         R20 K54 [{["LayoutOrder"] = 2, ["label"] = "", ["placeholder"], ["text"], ["onChanged"], ["hasClearButton"] = True, ["size"], ["width"], ["isDisabled"]}]
      165 LOADK                            R23 K41 ["SearchBar"]
      166 LOADK                            R24 K55 ["AddMembers"]
      167 NAMECALL                         R21 R1 K43 ["getText"]
      169 CALL                             R21 3 1
      170 SETTABLEKS                       R21 R20 K46 ["placeholder"]
      172 SETTABLEKS                       R2 R20 K47 ["text"]
      174 SETTABLEKS                       R5 R20 K48 ["onChanged"]
      176 GETUPVAL                         R21 5
      177 GETTABLEKS                       R21 R21 K56 ["Medium"]
      179 SETTABLEKS                       R21 R20 K51 ["size"]
      181 GETIMPORT                        R21 K59 [UDim.new]
      183 LOADN                            R22 1
      184 LOADN                            R23 0
      185 CALL                             R21 2 1
      186 SETTABLEKS                       R21 R20 K52 ["width"]
      188 GETTABLEKS                       R21 R0 K24 ["IsAtCapacity"]
      190 SETTABLEKS                       R21 R20 K53 ["isDisabled"]
      192 CALL                             R18 2 1
      193 SETTABLEKS                       R18 R17 K33 ["SearchInput"]
      195 GETUPVAL                         R18 0
      196 GETTABLEKS                       R18 R18 K18 ["createElement"]
      198 GETUPVAL                         R19 2
      199 DUPTABLE                         R20 K62 [{["LayoutOrder"] = 3, ["tag"] = "col gap-xxsmall size-full-0 auto-y"}]
      200 MOVE                             R21 R11
      201 CALL                             R18 3 1
      202 SETTABLEKS                       R18 R17 K34 ["Results"]
      204 JUMPIF                           R13 ; [+33]
      205 GETUPVAL                         R18 0
      206 GETTABLEKS                       R18 R18 K18 ["createElement"]
      208 GETUPVAL                         R19 6
      209 DUPTABLE                         R20 K67 [{["LayoutOrder"] = 4, ["text"], ["variant"], ["size"] = "Small", ["isDisabled"], ["onActivated"]}]
      210 JUMPIFNOT                        R12 ; [+6]
      211 LOADK                            R23 K68 ["Description"]
      212 LOADK                            R24 K69 ["Loading"]
      213 NAMECALL                         R21 R1 K43 ["getText"]
      215 CALL                             R21 3 1
      216 JUMP                             ; [+5]
      217 LOADK                            R23 K70 ["Button"]
      218 LOADK                            R24 K71 ["LoadMore"]
      219 NAMECALL                         R21 R1 K43 ["getText"]
      221 CALL                             R21 3 1
      222 SETTABLEKS                       R21 R20 K47 ["text"]
      224 GETUPVAL                         R21 7
      225 GETTABLEKS                       R21 R21 K72 ["Utility"]
      227 SETTABLEKS                       R21 R20 K64 ["variant"]
      229 SETTABLEKS                       R12 R20 K53 ["isDisabled"]
      231 NEWCLOSURE                       R21 P3
      232 CAPTURE                          VAL R6
      233 CAPTURE                          VAL R0
      234 SETTABLEKS                       R21 R20 K66 ["onActivated"]
      236 CALL                             R18 2 1
      237 JUMP                             ; [+1]
      238 LOADNIL                          R18
      239 SETTABLEKS                       R18 R17 K35 ["LoadMoreButton"]
      241 CALL                             R14 3 -1
      242 RETURN                           R14 -1

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
       54 GETIMPORT                        R11 K22 [UDim2.fromOffset]
       56 LOADN                            R12 40
       57 LOADN                            R13 40
       58 CALL                             R11 2 1
       59 GETIMPORT                        R12 K4 [require]
       61 GETTABLEKS                       R13 R0 K16 ["Src"]
       63 GETTABLEKS                       R13 R13 K23 ["Types"]
       65 CALL                             R12 1 1
       66 DUPCLOSURE                       R13 K24 [PROTO_0]
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R5
       73 DUPCLOSURE                       R14 K25 [PROTO_6]
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R13
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R8
       82 RETURN                           R14 1
