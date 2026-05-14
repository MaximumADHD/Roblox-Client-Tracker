PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onPageNumberChanged"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K2 ["pageNumber"]
        6 SUBK                             R1 R2 K1 [1]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 1
        9 GETUPVAL                         R2 2
       10 DUPTABLE                         R3 K5 [{"pageSize", "type"}]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K3 ["pageSize"]
       14 SETTABLEKS                       R4 R3 K3 ["pageSize"]
       16 LOADK                            R4 K6 ["Previous"]
       17 SETTABLEKS                       R4 R3 K4 ["type"]
       19 NAMECALL                         R0 R0 K7 ["logRobloxTelemetryEvent"]
       21 CALL                             R0 3 0
       22 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onPageNumberChanged"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K2 ["pageNumber"]
        6 ADDK                             R1 R2 K1 [1]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 1
        9 GETUPVAL                         R2 2
       10 DUPTABLE                         R3 K5 [{"pageSize", "type"}]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K3 ["pageSize"]
       14 SETTABLEKS                       R4 R3 K3 ["pageSize"]
       16 LOADK                            R4 K6 ["Next"]
       17 SETTABLEKS                       R4 R3 K4 ["type"]
       19 NAMECALL                         R0 R0 K7 ["logRobloxTelemetryEvent"]
       21 CALL                             R0 3 0
       22 RETURN                           R0 0

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
       66 DUPTABLE                         R10 K11 [{"tag", "testId", "LayoutOrder"}]
       67 LOADK                            R11 K12 ["size-0-0 auto-xy row align-y-center gap-small padding-small"]
       68 SETTABLEKS                       R11 R10 K8 ["tag"]
       70 LOADK                            R11 K13 ["--page-selector"]
       71 SETTABLEKS                       R11 R10 K9 ["testId"]
       73 GETTABLEKS                       R11 R0 K10 ["LayoutOrder"]
       75 SETTABLEKS                       R11 R10 K10 ["LayoutOrder"]
       77 DUPTABLE                         R11 K19 [{"PageSizeText", "PageSizeSelector", "PrevPageButton", "PageNumber", "NextPageButton"}]
       78 GETUPVAL                         R12 2
       79 GETTABLEKS                       R12 R12 K6 ["createElement"]
       81 GETUPVAL                         R13 5
       82 GETTABLEKS                       R13 R13 K20 ["Text"]
       84 DUPTABLE                         R14 K21 [{"tag", "Text", "LayoutOrder"}]
       85 LOADK                            R15 K22 ["size-0-0 auto-xy text-label-small text-no-wrap"]
       86 SETTABLEKS                       R15 R14 K8 ["tag"]
       88 LOADK                            R17 K23 ["Label"]
       89 LOADK                            R18 K24 ["VersionsPerPage"]
       90 NAMECALL                         R15 R2 K25 ["getText"]
       92 CALL                             R15 3 1
       93 SETTABLEKS                       R15 R14 K20 ["Text"]
       95 MOVE                             R15 R1
       96 CALL                             R15 0 1
       97 SETTABLEKS                       R15 R14 K10 ["LayoutOrder"]
       99 CALL                             R12 2 1
      100 SETTABLEKS                       R12 R11 K14 ["PageSizeText"]
      102 GETUPVAL                         R12 2
      103 GETTABLEKS                       R12 R12 K6 ["createElement"]
      105 GETUPVAL                         R13 5
      106 GETTABLEKS                       R13 R13 K26 ["Dropdown"]
      108 GETTABLEKS                       R13 R13 K27 ["Root"]
      110 DUPTABLE                         R14 K34 [{"label", "value", "width", "size", "onItemChanged", "items", "LayoutOrder"}]
      111 LOADK                            R15 K35 [""]
      112 SETTABLEKS                       R15 R14 K28 ["label"]
      114 GETTABLEKS                       R15 R0 K5 ["pageSize"]
      116 SETTABLEKS                       R15 R14 K29 ["value"]
      118 GETUPVAL                         R15 6
      119 SETTABLEKS                       R15 R14 K30 ["width"]
      121 GETUPVAL                         R15 5
      122 GETTABLEKS                       R15 R15 K36 ["Enums"]
      124 GETTABLEKS                       R15 R15 K37 ["InputSize"]
      126 GETTABLEKS                       R15 R15 K38 ["XSmall"]
      128 SETTABLEKS                       R15 R14 K31 ["size"]
      130 SETTABLEKS                       R7 R14 K32 ["onItemChanged"]
      132 GETUPVAL                         R15 7
      133 SETTABLEKS                       R15 R14 K33 ["items"]
      135 MOVE                             R15 R1
      136 CALL                             R15 0 1
      137 SETTABLEKS                       R15 R14 K10 ["LayoutOrder"]
      139 CALL                             R12 2 1
      140 SETTABLEKS                       R12 R11 K15 ["PageSizeSelector"]
      142 GETUPVAL                         R12 2
      143 GETTABLEKS                       R12 R12 K6 ["createElement"]
      145 GETUPVAL                         R13 5
      146 GETTABLEKS                       R13 R13 K39 ["Button"]
      148 DUPTABLE                         R14 K44 [{"icon", "variant", "onActivated", "isDisabled", "size", "LayoutOrder"}]
      149 GETUPVAL                         R15 5
      150 GETTABLEKS                       R15 R15 K36 ["Enums"]
      152 GETTABLEKS                       R15 R15 K45 ["IconName"]
      154 GETTABLEKS                       R15 R15 K46 ["ChevronLargeLeft"]
      156 SETTABLEKS                       R15 R14 K40 ["icon"]
      158 GETUPVAL                         R15 5
      159 GETTABLEKS                       R15 R15 K36 ["Enums"]
      161 GETTABLEKS                       R15 R15 K47 ["ButtonVariant"]
      163 GETTABLEKS                       R15 R15 K20 ["Text"]
      165 SETTABLEKS                       R15 R14 K41 ["variant"]
      167 SETTABLEKS                       R5 R14 K42 ["onActivated"]
      169 SETTABLEKS                       R3 R14 K43 ["isDisabled"]
      171 GETUPVAL                         R15 5
      172 GETTABLEKS                       R15 R15 K36 ["Enums"]
      174 GETTABLEKS                       R15 R15 K37 ["InputSize"]
      176 GETTABLEKS                       R15 R15 K38 ["XSmall"]
      178 SETTABLEKS                       R15 R14 K31 ["size"]
      180 MOVE                             R15 R1
      181 CALL                             R15 0 1
      182 SETTABLEKS                       R15 R14 K10 ["LayoutOrder"]
      184 CALL                             R12 2 1
      185 SETTABLEKS                       R12 R11 K16 ["PrevPageButton"]
      187 GETUPVAL                         R12 2
      188 GETTABLEKS                       R12 R12 K6 ["createElement"]
      190 GETUPVAL                         R13 5
      191 GETTABLEKS                       R13 R13 K20 ["Text"]
      193 DUPTABLE                         R14 K21 [{"tag", "Text", "LayoutOrder"}]
      194 LOADK                            R15 K22 ["size-0-0 auto-xy text-label-small text-no-wrap"]
      195 SETTABLEKS                       R15 R14 K8 ["tag"]
      197 GETTABLEKS                       R16 R0 K1 ["pageNumber"]
      199 FASTCALL1                        TOSTRING R16 ; [+2]
      200 GETIMPORT                        R15 K49 [tostring]
      202 CALL                             R15 1 1
      203 SETTABLEKS                       R15 R14 K20 ["Text"]
      205 MOVE                             R15 R1
      206 CALL                             R15 0 1
      207 SETTABLEKS                       R15 R14 K10 ["LayoutOrder"]
      209 CALL                             R12 2 1
      210 SETTABLEKS                       R12 R11 K17 ["PageNumber"]
      212 GETUPVAL                         R12 2
      213 GETTABLEKS                       R12 R12 K6 ["createElement"]
      215 GETUPVAL                         R13 5
      216 GETTABLEKS                       R13 R13 K39 ["Button"]
      218 DUPTABLE                         R14 K44 [{"icon", "variant", "onActivated", "isDisabled", "size", "LayoutOrder"}]
      219 GETUPVAL                         R15 5
      220 GETTABLEKS                       R15 R15 K36 ["Enums"]
      222 GETTABLEKS                       R15 R15 K45 ["IconName"]
      224 GETTABLEKS                       R15 R15 K50 ["ChevronLargeRight"]
      226 SETTABLEKS                       R15 R14 K40 ["icon"]
      228 GETUPVAL                         R15 5
      229 GETTABLEKS                       R15 R15 K36 ["Enums"]
      231 GETTABLEKS                       R15 R15 K47 ["ButtonVariant"]
      233 GETTABLEKS                       R15 R15 K20 ["Text"]
      235 SETTABLEKS                       R15 R14 K41 ["variant"]
      237 SETTABLEKS                       R6 R14 K42 ["onActivated"]
      239 SETTABLEKS                       R4 R14 K43 ["isDisabled"]
      241 GETUPVAL                         R15 5
      242 GETTABLEKS                       R15 R15 K36 ["Enums"]
      244 GETTABLEKS                       R15 R15 K37 ["InputSize"]
      246 GETTABLEKS                       R15 R15 K38 ["XSmall"]
      248 SETTABLEKS                       R15 R14 K31 ["size"]
      250 MOVE                             R15 R1
      251 CALL                             R15 0 1
      252 SETTABLEKS                       R15 R14 K10 ["LayoutOrder"]
      254 CALL                             R12 2 1
      255 SETTABLEKS                       R12 R11 K18 ["NextPageButton"]
      257 CALL                             R8 3 -1
      258 RETURN                           R8 -1

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
       67 DUPTABLE                         R14 K23 [{"id", "text"}]
       68 LOADN                            R15 10
       69 SETTABLEKS                       R15 R14 K21 ["id"]
       71 LOADK                            R15 K24 ["10"]
       72 SETTABLEKS                       R15 R14 K22 ["text"]
       74 DUPTABLE                         R15 K23 [{"id", "text"}]
       75 LOADN                            R16 25
       76 SETTABLEKS                       R16 R15 K21 ["id"]
       78 LOADK                            R16 K25 ["25"]
       79 SETTABLEKS                       R16 R15 K22 ["text"]
       81 DUPTABLE                         R16 K23 [{"id", "text"}]
       82 LOADN                            R17 50
       83 SETTABLEKS                       R17 R16 K21 ["id"]
       85 LOADK                            R17 K26 ["50"]
       86 SETTABLEKS                       R17 R16 K22 ["text"]
       88 SETLIST                          R13 R14 3 [1]
       90 DUPCLOSURE                       R14 K27 [PROTO_3]
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R13
       99 RETURN                           R14 1
