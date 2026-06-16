PROTO_0:
        0 DUPTABLE                         R0 K7 [{"Save", "Add", "Cancel", "EnterMcpName", "McpNameLabel", "EnterMcpUrl", "UrlLabel"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K8 ["Settings"]
        3 LOADK                            R4 K0 ["Save"]
        4 NAMECALL                         R1 R1 K9 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Save"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K8 ["Settings"]
       11 LOADK                            R4 K1 ["Add"]
       12 NAMECALL                         R1 R1 K9 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Add"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K8 ["Settings"]
       19 LOADK                            R4 K2 ["Cancel"]
       20 NAMECALL                         R1 R1 K9 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["Cancel"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K10 ["IntegrationManagement"]
       27 LOADK                            R4 K11 ["MCPNamePlaceholder"]
       28 NAMECALL                         R1 R1 K9 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["EnterMcpName"]
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K10 ["IntegrationManagement"]
       35 LOADK                            R4 K12 ["MCPNameLabel"]
       36 NAMECALL                         R1 R1 K9 ["getText"]
       38 CALL                             R1 3 1
       39 SETTABLEKS                       R1 R0 K4 ["McpNameLabel"]
       41 GETUPVAL                         R1 0
       42 LOADK                            R3 K10 ["IntegrationManagement"]
       43 LOADK                            R4 K13 ["MCPUrlPlaceholder"]
       44 NAMECALL                         R1 R1 K9 ["getText"]
       46 CALL                             R1 3 1
       47 SETTABLEKS                       R1 R0 K5 ["EnterMcpUrl"]
       49 GETUPVAL                         R1 0
       50 LOADK                            R3 K10 ["IntegrationManagement"]
       51 LOADK                            R4 K14 ["MCPUrlLabel"]
       52 NAMECALL                         R1 R1 K9 ["getText"]
       54 CALL                             R1 3 1
       55 SETTABLEKS                       R1 R0 K6 ["UrlLabel"]
       57 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R0 K2 [{"label", "url"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["label"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["url"]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K3 ["checkError"]
       10 MOVE                             R2 R0
       11 GETUPVAL                         R3 3
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 4
       14 MOVE                             R3 R1
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["onSave"]
        6 DUPTABLE                         R1 K3 [{"label", "url"}]
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R2 R1 K1 ["label"]
       10 GETUPVAL                         R2 3
       11 SETTABLEKS                       R2 R1 K2 ["url"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["locale"]
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K3 ["initialIntegration"]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K4 ["useState"]
       18 GETTABLEKS                       R4 R2 K5 ["label"]
       20 CALL                             R3 1 2
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K4 ["useState"]
       24 GETTABLEKS                       R6 R2 K6 ["url"]
       26 CALL                             R5 1 2
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R7 R7 K4 ["useState"]
       30 LOADNIL                          R8
       31 CALL                             R7 1 2
       32 LOADB                            R9 0
       33 JUMPIFEQKS                       R3 K7 [""] ; [+5]
       35 JUMPIFNOTEQKS                    R5 K7 [""] ; [+2]
       37 LOADB                            R9 0 +1
       38 LOADB                            R9 1
       39 LOADB                            R10 1
       40 GETTABLEKS                       R11 R2 K5 ["label"]
       42 JUMPIFNOTEQ                      R3 R11 ; [+7]
       44 GETTABLEKS                       R11 R2 K6 ["url"]
       46 JUMPIFNOTEQ                      R5 R11 ; [+2]
       48 LOADB                            R10 0 +1
       49 LOADB                            R10 1
       50 LOADB                            R11 0
       51 GETTABLEKS                       R12 R2 K5 ["label"]
       53 JUMPIFEQKS                       R12 K7 [""] ; [+7]
       55 GETTABLEKS                       R12 R2 K6 ["url"]
       57 JUMPIFNOTEQKS                    R12 K7 [""] ; [+2]
       59 LOADB                            R11 0 +1
       60 LOADB                            R11 1
       61 MOVE                             R12 R9
       62 JUMPIFNOT                        R12 ; [+6]
       63 MOVE                             R12 R10
       64 JUMPIFNOT                        R12 ; [+4]
       65 JUMPIFEQKNIL                     R7 ; [+2]
       67 LOADB                            R12 0 +1
       68 LOADB                            R12 1
       69 GETUPVAL                         R13 0
       70 GETTABLEKS                       R13 R13 K8 ["useEffect"]
       72 NEWCLOSURE                       R14 P1
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R0
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R8
       78 NEWTABLE                         R15 0 3
       80 MOVE                             R16 R5
       81 MOVE                             R17 R3
       82 GETTABLEKS                       R18 R0 K9 ["checkError"]
       84 SETLIST                          R15 R16 3 [1]
       86 CALL                             R13 2 0
       87 NEWCLOSURE                       R13 P2
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R0
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R5
       92 NEWTABLE                         R14 0 2
       94 DUPTABLE                         R15 K15 [{"text", "variant", "onActivated", "isDisabled", "size"}]
       95 JUMPIFNOT                        R11 ; [+3]
       96 GETTABLEKS                       R16 R1 K16 ["Save"]
       98 JUMPIF                           R16 ; [+2]
       99 GETTABLEKS                       R16 R1 K17 ["Add"]
      101 SETTABLEKS                       R16 R15 K10 ["text"]
      103 GETUPVAL                         R16 2
      104 GETTABLEKS                       R16 R16 K18 ["Emphasis"]
      106 SETTABLEKS                       R16 R15 K11 ["variant"]
      108 SETTABLEKS                       R13 R15 K12 ["onActivated"]
      110 NOT                              R16 R12
      111 SETTABLEKS                       R16 R15 K13 ["isDisabled"]
      113 GETUPVAL                         R16 3
      114 GETTABLEKS                       R16 R16 K19 ["XSmall"]
      116 SETTABLEKS                       R16 R15 K14 ["size"]
      118 DUPTABLE                         R16 K20 [{"text", "variant", "onActivated", "size"}]
      119 GETTABLEKS                       R17 R1 K21 ["Cancel"]
      121 SETTABLEKS                       R17 R16 K10 ["text"]
      123 GETUPVAL                         R17 2
      124 GETTABLEKS                       R17 R17 K22 ["Standard"]
      126 SETTABLEKS                       R17 R16 K11 ["variant"]
      128 GETTABLEKS                       R17 R0 K23 ["onClose"]
      130 SETTABLEKS                       R17 R16 K12 ["onActivated"]
      132 GETUPVAL                         R17 3
      133 GETTABLEKS                       R17 R17 K19 ["XSmall"]
      135 SETTABLEKS                       R17 R16 K14 ["size"]
      137 SETLIST                          R14 R15 2 [1]
      139 LOADB                            R15 0
      140 JUMPIFEQKNIL                     R7 ; [+7]
      142 GETTABLEKS                       R16 R7 K24 ["urlError"]
      144 JUMPIFNOTEQKNIL                  R16 ; [+2]
      146 LOADB                            R15 0 +1
      147 LOADB                            R15 1
      148 LOADB                            R16 0
      149 JUMPIFEQKNIL                     R7 ; [+7]
      151 GETTABLEKS                       R17 R7 K25 ["nameError"]
      153 JUMPIFNOTEQKNIL                  R17 ; [+2]
      155 LOADB                            R16 0 +1
      156 LOADB                            R16 1
      157 GETUPVAL                         R17 4
      158 CALL                             R17 0 1
      159 GETUPVAL                         R18 5
      160 GETUPVAL                         R19 6
      161 GETTABLEKS                       R19 R19 K26 ["Root"]
      163 DUPTABLE                         R20 K30 [{"testId", "size", "hasBackdrop", "disablePortal"}]
      164 GETUPVAL                         R21 7
      165 GETTABLEKS                       R21 R21 K31 ["IntegrationItem"]
      167 GETTABLEKS                       R21 R21 K32 ["Dialog"]
      169 SETTABLEKS                       R21 R20 K27 ["testId"]
      171 GETUPVAL                         R21 8
      172 GETTABLEKS                       R21 R21 K33 ["Small"]
      174 SETTABLEKS                       R21 R20 K14 ["size"]
      176 LOADB                            R21 1
      177 SETTABLEKS                       R21 R20 K28 ["hasBackdrop"]
      179 LOADB                            R21 0
      180 SETTABLEKS                       R21 R20 K29 ["disablePortal"]
      182 DUPTABLE                         R21 K36 [{"DialogContent", "DialogActions"}]
      183 GETUPVAL                         R22 5
      184 GETUPVAL                         R23 6
      185 GETTABLEKS                       R23 R23 K37 ["Content"]
      187 DUPTABLE                         R24 K39 [{"LayoutOrder"}]
      188 MOVE                             R25 R17
      189 CALL                             R25 0 1
      190 SETTABLEKS                       R25 R24 K38 ["LayoutOrder"]
      192 DUPTABLE                         R25 K41 [{"Inputs"}]
      193 GETUPVAL                         R26 5
      194 GETUPVAL                         R27 9
      195 DUPTABLE                         R28 K43 [{"tag", "LayoutOrder"}]
      196 LOADK                            R29 K44 ["col size-full-0 auto-y gap-small padding-y-large"]
      197 SETTABLEKS                       R29 R28 K42 ["tag"]
      199 MOVE                             R29 R17
      200 CALL                             R29 0 1
      201 SETTABLEKS                       R29 R28 K38 ["LayoutOrder"]
      203 DUPTABLE                         R29 K47 [{"NameInput", "URLInput"}]
      204 GETUPVAL                         R30 5
      205 GETUPVAL                         R31 10
      206 DUPTABLE                         R32 K53 [{"LayoutOrder", "placeholder", "label", "onChanged", "text", "size", "width", "hasError", "hint"}]
      207 MOVE                             R33 R17
      208 CALL                             R33 0 1
      209 SETTABLEKS                       R33 R32 K38 ["LayoutOrder"]
      211 GETTABLEKS                       R33 R1 K54 ["EnterMcpName"]
      213 SETTABLEKS                       R33 R32 K48 ["placeholder"]
      215 GETTABLEKS                       R33 R1 K55 ["McpNameLabel"]
      217 SETTABLEKS                       R33 R32 K5 ["label"]
      219 SETTABLEKS                       R4 R32 K49 ["onChanged"]
      221 SETTABLEKS                       R3 R32 K10 ["text"]
      223 GETUPVAL                         R33 11
      224 GETTABLEKS                       R33 R33 K19 ["XSmall"]
      226 SETTABLEKS                       R33 R32 K14 ["size"]
      228 GETUPVAL                         R33 12
      229 SETTABLEKS                       R33 R32 K50 ["width"]
      231 SETTABLEKS                       R16 R32 K51 ["hasError"]
      233 JUMPIFNOT                        R16 ; [+3]
      234 GETTABLEKS                       R33 R7 K25 ["nameError"]
      236 JUMPIF                           R33 ; [+1]
      237 LOADNIL                          R33
      238 SETTABLEKS                       R33 R32 K52 ["hint"]
      240 CALL                             R30 2 1
      241 SETTABLEKS                       R30 R29 K45 ["NameInput"]
      243 GETUPVAL                         R30 5
      244 GETUPVAL                         R31 10
      245 DUPTABLE                         R32 K53 [{"LayoutOrder", "placeholder", "label", "onChanged", "text", "size", "width", "hasError", "hint"}]
      246 MOVE                             R33 R17
      247 CALL                             R33 0 1
      248 SETTABLEKS                       R33 R32 K38 ["LayoutOrder"]
      250 GETTABLEKS                       R33 R1 K56 ["EnterMcpUrl"]
      252 SETTABLEKS                       R33 R32 K48 ["placeholder"]
      254 GETTABLEKS                       R33 R1 K57 ["UrlLabel"]
      256 SETTABLEKS                       R33 R32 K5 ["label"]
      258 SETTABLEKS                       R6 R32 K49 ["onChanged"]
      260 SETTABLEKS                       R5 R32 K10 ["text"]
      262 GETUPVAL                         R33 11
      263 GETTABLEKS                       R33 R33 K19 ["XSmall"]
      265 SETTABLEKS                       R33 R32 K14 ["size"]
      267 GETUPVAL                         R33 12
      268 SETTABLEKS                       R33 R32 K50 ["width"]
      270 SETTABLEKS                       R15 R32 K51 ["hasError"]
      272 JUMPIFNOT                        R15 ; [+3]
      273 GETTABLEKS                       R33 R7 K24 ["urlError"]
      275 JUMPIF                           R33 ; [+1]
      276 LOADNIL                          R33
      277 SETTABLEKS                       R33 R32 K52 ["hint"]
      279 CALL                             R30 2 1
      280 SETTABLEKS                       R30 R29 K46 ["URLInput"]
      282 CALL                             R26 3 1
      283 SETTABLEKS                       R26 R25 K40 ["Inputs"]
      285 CALL                             R22 3 1
      286 SETTABLEKS                       R22 R21 K34 ["DialogContent"]
      288 GETUPVAL                         R22 5
      289 GETUPVAL                         R23 6
      290 GETTABLEKS                       R23 R23 K58 ["Actions"]
      292 DUPTABLE                         R24 K60 [{"LayoutOrder", "actions"}]
      293 MOVE                             R25 R17
      294 CALL                             R25 0 1
      295 SETTABLEKS                       R25 R24 K38 ["LayoutOrder"]
      297 SETTABLEKS                       R14 R24 K59 ["actions"]
      299 CALL                             R22 2 1
      300 SETTABLEKS                       R22 R21 K35 ["DialogActions"]
      302 CALL                             R18 3 -1
      303 RETURN                           R18 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["IntegrationTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Parent"]
       27 GETTABLEKS                       R4 R4 K9 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Parent"]
       34 GETTABLEKS                       R5 R5 K10 ["ReactUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K11 ["Util"]
       41 GETTABLEKS                       R6 R6 K12 ["TestIds"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K13 ["Resources"]
       48 GETTABLEKS                       R7 R7 K14 ["Localization"]
       50 GETTABLEKS                       R7 R7 K15 ["Translator"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R2 K16 ["Dialog"]
       55 GETTABLEKS                       R8 R2 K17 ["TextInput"]
       57 GETTABLEKS                       R9 R2 K18 ["Enums"]
       59 GETTABLEKS                       R9 R9 K19 ["ButtonVariant"]
       61 GETTABLEKS                       R10 R2 K18 ["Enums"]
       63 GETTABLEKS                       R10 R10 K20 ["ButtonSize"]
       65 GETTABLEKS                       R11 R2 K18 ["Enums"]
       67 GETTABLEKS                       R11 R11 K21 ["DialogSize"]
       69 GETTABLEKS                       R12 R2 K18 ["Enums"]
       71 GETTABLEKS                       R12 R12 K22 ["InputSize"]
       73 GETTABLEKS                       R13 R2 K23 ["View"]
       75 GETTABLEKS                       R14 R4 K24 ["createNextOrder"]
       77 GETTABLEKS                       R15 R3 K25 ["createElement"]
       79 GETIMPORT                        R16 K28 [UDim.new]
       81 LOADN                            R17 0
       82 LOADN                            R18 24
       83 CALL                             R16 2 1
       84 DUPCLOSURE                       R17 K29 [PROTO_3]
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R14
       90 CAPTURE                          VAL R15
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R11
       94 CAPTURE                          VAL R13
       95 CAPTURE                          VAL R8
       96 CAPTURE                          VAL R12
       97 CAPTURE                          VAL R16
       98 RETURN                           R17 1
