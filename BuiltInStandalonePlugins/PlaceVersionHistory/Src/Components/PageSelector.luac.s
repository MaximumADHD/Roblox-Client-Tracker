PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onPageNumberChanged"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K2 ["pageNumber"]
        6 SUBK                             R1 R2 K1 [1]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 1
        9 GETUPVAL                         R2 2
       10 DUPTABLE                         R3 K6 [{["pageSize"], ["type"] = "Previous"}]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K3 ["pageSize"]
       14 SETTABLEKS                       R4 R3 K3 ["pageSize"]
       16 NAMECALL                         R0 R0 K7 ["logRobloxTelemetryEvent"]
       18 CALL                             R0 3 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onPageNumberChanged"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K2 ["pageNumber"]
        6 ADDK                             R1 R2 K1 [1]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 1
        9 GETUPVAL                         R2 2
       10 DUPTABLE                         R3 K6 [{["pageSize"], ["type"] = "Next"}]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K3 ["pageSize"]
       14 SETTABLEKS                       R4 R3 K3 ["pageSize"]
       16 NAMECALL                         R0 R0 K7 ["logRobloxTelemetryEvent"]
       18 CALL                             R0 3 0
       19 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onPageSizeChanged"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 NAMECALL                         R2 R2 K0 ["use"]
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R4 R0 K1 ["pageNumber"]
        8 JUMPIFEQKN                       R4 K2 [1] ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 GETTABLEKS                       R5 R0 K1 ["pageNumber"]
       14 GETTABLEKS                       R6 R0 K3 ["maxPageNumber"]
       16 JUMPIFEQ                         R5 R6 ; [+2]
       18 LOADB                            R4 0 +1
       19 LOADB                            R4 1
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R5 R5 K4 ["useCallback"]
       23 NEWCLOSURE                       R6 P0
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          UPVAL U4
       27 NEWTABLE                         R7 0 2
       29 GETTABLEKS                       R8 R0 K1 ["pageNumber"]
       31 GETTABLEKS                       R9 R0 K5 ["pageSize"]
       33 SETLIST                          R7 R8 2 [1]
       35 CALL                             R5 2 1
       36 GETUPVAL                         R6 2
       37 GETTABLEKS                       R6 R6 K4 ["useCallback"]
       39 NEWCLOSURE                       R7 P1
       40 CAPTURE                          VAL R0
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          UPVAL U4
       43 NEWTABLE                         R8 0 2
       45 GETTABLEKS                       R9 R0 K1 ["pageNumber"]
       47 GETTABLEKS                       R10 R0 K5 ["pageSize"]
       49 SETLIST                          R8 R9 2 [1]
       51 CALL                             R6 2 1
       52 GETUPVAL                         R7 2
       53 GETTABLEKS                       R7 R7 K4 ["useCallback"]
       55 NEWCLOSURE                       R8 P2
       56 CAPTURE                          VAL R0
       57 NEWTABLE                         R9 0 0
       59 CALL                             R7 2 1
       60 GETUPVAL                         R8 2
       61 GETTABLEKS                       R8 R8 K6 ["createElement"]
       63 GETUPVAL                         R9 5
       64 GETTABLEKS                       R9 R9 K7 ["View"]
       66 DUPTABLE                         R10 K13 [{["tag"] = "row align-y-center gap-small size-0-0 auto-xy padding-small", ["testId"] = "--page-selector", ["LayoutOrder"]}]
       67 GETTABLEKS                       R11 R0 K12 ["LayoutOrder"]
       69 SETTABLEKS                       R11 R10 K12 ["LayoutOrder"]
       71 DUPTABLE                         R11 K19 [{"PageSizeText", "PageSizeSelector", "PrevPageButton", "PageNumber", "NextPageButton"}]
       72 GETUPVAL                         R12 2
       73 GETTABLEKS                       R12 R12 K6 ["createElement"]
       75 GETUPVAL                         R13 5
       76 GETTABLEKS                       R13 R13 K20 ["Text"]
       78 DUPTABLE                         R14 K22 [{["tag"] = "size-0-0 auto-xy text-label-small text-no-wrap", ["Text"], ["LayoutOrder"]}]
       79 LOADK                            R17 K23 ["Label"]
       80 LOADK                            R18 K24 ["VersionsPerPage"]
       81 NAMECALL                         R15 R2 K25 ["getText"]
       83 CALL                             R15 3 1
       84 SETTABLEKS                       R15 R14 K20 ["Text"]
       86 MOVE                             R15 R1
       87 CALL                             R15 0 1
       88 SETTABLEKS                       R15 R14 K12 ["LayoutOrder"]
       90 CALL                             R12 2 1
       91 SETTABLEKS                       R12 R11 K14 ["PageSizeText"]
       93 GETUPVAL                         R12 2
       94 GETTABLEKS                       R12 R12 K6 ["createElement"]
       96 GETUPVAL                         R13 5
       97 GETTABLEKS                       R13 R13 K26 ["Dropdown"]
       99 GETTABLEKS                       R13 R13 K27 ["Root"]
      101 DUPTABLE                         R14 K35 [{["label"] = "", ["value"], ["width"], ["size"], ["onItemChanged"], ["items"], ["LayoutOrder"]}]
      102 GETTABLEKS                       R15 R0 K5 ["pageSize"]
      104 SETTABLEKS                       R15 R14 K30 ["value"]
      106 GETUPVAL                         R15 6
      107 SETTABLEKS                       R15 R14 K31 ["width"]
      109 GETUPVAL                         R15 5
      110 GETTABLEKS                       R15 R15 K36 ["Enums"]
      112 GETTABLEKS                       R15 R15 K37 ["InputSize"]
      114 GETTABLEKS                       R15 R15 K38 ["XSmall"]
      116 SETTABLEKS                       R15 R14 K32 ["size"]
      118 SETTABLEKS                       R7 R14 K33 ["onItemChanged"]
      120 GETUPVAL                         R15 7
      121 SETTABLEKS                       R15 R14 K34 ["items"]
      123 MOVE                             R15 R1
      124 CALL                             R15 0 1
      125 SETTABLEKS                       R15 R14 K12 ["LayoutOrder"]
      127 CALL                             R12 2 1
      128 SETTABLEKS                       R12 R11 K15 ["PageSizeSelector"]
      130 GETUPVAL                         R12 2
      131 GETTABLEKS                       R12 R12 K6 ["createElement"]
      133 GETUPVAL                         R13 5
      134 GETTABLEKS                       R13 R13 K39 ["Button"]
      136 DUPTABLE                         R14 K44 [{"icon", "variant", "onActivated", "isDisabled", "size", "LayoutOrder"}]
      137 GETUPVAL                         R15 5
      138 GETTABLEKS                       R15 R15 K36 ["Enums"]
      140 GETTABLEKS                       R15 R15 K45 ["IconName"]
      142 GETTABLEKS                       R15 R15 K46 ["ChevronLargeLeft"]
      144 SETTABLEKS                       R15 R14 K40 ["icon"]
      146 GETUPVAL                         R15 5
      147 GETTABLEKS                       R15 R15 K36 ["Enums"]
      149 GETTABLEKS                       R15 R15 K47 ["ButtonVariant"]
      151 GETTABLEKS                       R15 R15 K20 ["Text"]
      153 SETTABLEKS                       R15 R14 K41 ["variant"]
      155 SETTABLEKS                       R5 R14 K42 ["onActivated"]
      157 SETTABLEKS                       R3 R14 K43 ["isDisabled"]
      159 GETUPVAL                         R15 5
      160 GETTABLEKS                       R15 R15 K36 ["Enums"]
      162 GETTABLEKS                       R15 R15 K37 ["InputSize"]
      164 GETTABLEKS                       R15 R15 K38 ["XSmall"]
      166 SETTABLEKS                       R15 R14 K32 ["size"]
      168 MOVE                             R15 R1
      169 CALL                             R15 0 1
      170 SETTABLEKS                       R15 R14 K12 ["LayoutOrder"]
      172 CALL                             R12 2 1
      173 SETTABLEKS                       R12 R11 K16 ["PrevPageButton"]
      175 GETUPVAL                         R12 2
      176 GETTABLEKS                       R12 R12 K6 ["createElement"]
      178 GETUPVAL                         R13 5
      179 GETTABLEKS                       R13 R13 K20 ["Text"]
      181 DUPTABLE                         R14 K22 [{["tag"] = "size-0-0 auto-xy text-label-small text-no-wrap", ["Text"], ["LayoutOrder"]}]
      182 GETTABLEKS                       R16 R0 K1 ["pageNumber"]
      184 FASTCALL1                        TOSTRING R16 ; [+2]
      185 GETIMPORT                        R15 K49 [tostring]
      187 CALL                             R15 1 1
      188 SETTABLEKS                       R15 R14 K20 ["Text"]
      190 MOVE                             R15 R1
      191 CALL                             R15 0 1
      192 SETTABLEKS                       R15 R14 K12 ["LayoutOrder"]
      194 CALL                             R12 2 1
      195 SETTABLEKS                       R12 R11 K17 ["PageNumber"]
      197 GETUPVAL                         R12 2
      198 GETTABLEKS                       R12 R12 K6 ["createElement"]
      200 GETUPVAL                         R13 5
      201 GETTABLEKS                       R13 R13 K39 ["Button"]
      203 DUPTABLE                         R14 K44 [{"icon", "variant", "onActivated", "isDisabled", "size", "LayoutOrder"}]
      204 GETUPVAL                         R15 5
      205 GETTABLEKS                       R15 R15 K36 ["Enums"]
      207 GETTABLEKS                       R15 R15 K45 ["IconName"]
      209 GETTABLEKS                       R15 R15 K50 ["ChevronLargeRight"]
      211 SETTABLEKS                       R15 R14 K40 ["icon"]
      213 GETUPVAL                         R15 5
      214 GETTABLEKS                       R15 R15 K36 ["Enums"]
      216 GETTABLEKS                       R15 R15 K47 ["ButtonVariant"]
      218 GETTABLEKS                       R15 R15 K20 ["Text"]
      220 SETTABLEKS                       R15 R14 K41 ["variant"]
      222 SETTABLEKS                       R6 R14 K42 ["onActivated"]
      224 SETTABLEKS                       R4 R14 K43 ["isDisabled"]
      226 GETUPVAL                         R15 5
      227 GETTABLEKS                       R15 R15 K36 ["Enums"]
      229 GETTABLEKS                       R15 R15 K37 ["InputSize"]
      231 GETTABLEKS                       R15 R15 K38 ["XSmall"]
      233 SETTABLEKS                       R15 R14 K32 ["size"]
      235 MOVE                             R15 R1
      236 CALL                             R15 0 1
      237 SETTABLEKS                       R15 R14 K12 ["LayoutOrder"]
      239 CALL                             R12 2 1
      240 SETTABLEKS                       R12 R11 K18 ["NextPageButton"]
      242 CALL                             R8 3 -1
      243 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R6 K11 ["TelemetryProtocol"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R4 K12 ["ContextServices"]
       44 GETTABLEKS                       R7 R6 K13 ["Localization"]
       46 GETTABLEKS                       R8 R5 K14 ["new"]
       48 CALL                             R8 0 1
       49 GETTABLEKS                       R9 R0 K15 ["Src"]
       51 GETTABLEKS                       R9 R9 K16 ["Events"]
       53 GETIMPORT                        R10 K5 [require]
       55 GETTABLEKS                       R11 R9 K17 ["ChangePageEvent"]
       57 CALL                             R10 1 1
       58 GETTABLEKS                       R11 R2 K18 ["createNextOrder"]
       60 GETIMPORT                        R12 K20 [UDim.new]
       62 LOADN                            R13 0
       63 LOADN                            R14 60
       64 CALL                             R12 2 1
       65 NEWTABLE                         R13 0 3
       67 DUPTABLE                         R14 K25 [{["id"] = 10, ["text"] = "10"}]
       68 DUPTABLE                         R15 K28 [{["id"] = 25, ["text"] = "25"}]
       69 DUPTABLE                         R16 K31 [{["id"] = 50, ["text"] = "50"}]
       70 SETLIST                          R13 R14 3 [1]
       72 DUPCLOSURE                       R14 K32 [PROTO_3]
       73 CAPTURE                          VAL R11
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R12
       80 CAPTURE                          VAL R13
       81 RETURN                           R14 1
